#!/bin/bash
set -e

mkdir -p /data/.hermes/sessions
mkdir -p /data/.hermes/skills
mkdir -p /data/.hermes/workspace
mkdir -p /data/.hermes/pairing

hermes dashboard --host 127.0.0.1 --port 9119 --no-open &

exec python /app/server.py
