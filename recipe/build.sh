#!/bin/bash

set -exuo pipefail

mkdir -p build
pushd build
cmake ${CMAKE_ARGS} -DCMAKE_POLICY_VERSION_MINIMUM="3.5" -GNinja ..
ninja install
popd
