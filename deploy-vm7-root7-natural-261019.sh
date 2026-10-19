#!/usr/bin/env bash
set -euo pipefail
: "${VM7_ROOT7_NATURAL_SECRET:?protected secret missing}"
mkdir -p vm7-root7-natural-artifact-261019
printf '%s' "$VM7_ROOT7_NATURAL_SECRET" > vm7-root7-natural-artifact-261019/protected-secret.bin
printf '%s\n' "${GITHUB_SHA:?}" > vm7-root7-natural-artifact-261019/merge-sha.txt
printf '%s\n' 'VM7_ROOT7_NATURAL_PROTECTED_SECRET_CONSUMER_261019' > vm7-root7-natural-artifact-261019/execution-marker.txt
