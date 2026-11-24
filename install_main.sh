#!/usr/bin/env bash
set -e
LIB="quarter-silicon.a"
TAG="cosmic-cedar-crimson-canyon"
REPO="xavironne/granitetwisthub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
