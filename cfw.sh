#!/bin/bash
set -e
/app/bin/migrate_checker.sh
export TMPDIR=$XDG_RUNTIME_DIR/app/$FLATPAK_ID
zypak-wrapper /app/extra/clash_for_windows/cfw "$@" || true
pkill clash-linux
