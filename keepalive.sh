#!/bin/bash

REPO_DIR="$HOME/keepalive"
cd "$REPO_DIR" || exit 1

DATE=$(date +"%Y-%m-%d %H:%M:%S")
echo "Last commit: $DATE" > last_commit.txt

git add last_commit.txt
git commit -m "Keepalive commit at $DATE"
git pull --rebase origin master > /dev/null 2>&1
git push origin master
