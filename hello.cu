#include <stdio.h>

__global__ void kernel() {
    printf("Hello from the GPU!\n");
}

int main() {
    kernel<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}