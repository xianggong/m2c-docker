FROM xianggong/m2c-build
MAINTAINER NUCAR

RUN cd ~ && git clone https://github.com/xianggong/llvm.git && cd llvm && git checkout m2s && cd tools && git clone https://github.com/xianggong/clang.git && cd ~/llvm && mkdir build && cd build && cmake ../ -DLLVM_TARGETS_TO_BUILD=AMDGPU && cmake --build . && make install && cd ~ && rm -rf llvm
