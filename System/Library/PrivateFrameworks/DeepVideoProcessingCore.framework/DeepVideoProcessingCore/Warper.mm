@interface Warper
- (BOOL)computeErrorMask:(__CVBuffer *)a3 reference:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6 threshold:(float)a7 scaleFactor:(float)a8;
- (BOOL)encodeWarpBlendToCommandBuffer:(id)a3 source:(id)a4 scaleFactor:(unint64_t)a5 withLowResFlow:(id)a6 withBicubicUpscaled:(id)a7 withErrorMask:(id)a8 destination:(id)a9;
- (BOOL)setupKernels;
- (BOOL)warpBlendBufferRGBTexture:(id)a3 scaleFactor:(unint64_t)a4 withLowResFlowTexture:(id)a5 withBicubicUpscaledTexture:(id)a6 withErrorMaskTexture:(id)a7 toHighResBufferTexture:(id)a8;
- (Warper)init;
- (void)encodeErrorMapFilteringWithGaussian3x3ToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeErrorThresholdToCommandBuffer:(id)a3 source:(id)a4 threshold:(float)a5 scaleFactor:(float)a6 mask:(id)a7;
- (void)encodeWarpErrorToCommandBuffer:(id)a3 source:(id)a4 reference:(id)a5 flow:(id)a6 error:(id)a7;
@end

@implementation Warper

- (BOOL)warpBlendBufferRGBTexture:(id)a3 scaleFactor:(unint64_t)a4 withLowResFlowTexture:(id)a5 withBicubicUpscaledTexture:(id)a6 withErrorMaskTexture:(id)a7 toHighResBufferTexture:(id)a8
{
  commandQueue = self->super._commandQueue;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [(MTLCommandQueue *)commandQueue commandBuffer];
  v21 = [(Warper *)self encodeWarpBlendToCommandBuffer:v20 source:v19 scaleFactor:a4 withLowResFlow:v18 withBicubicUpscaled:v17 withErrorMask:v16 destination:v15];

  if (v21)
  {
    [v20 commit];
    [v20 waitUntilCompleted];
  }

  return v21;
}

- (BOOL)encodeWarpBlendToCommandBuffer:(id)a3 source:(id)a4 scaleFactor:(unint64_t)a5 withLowResFlow:(id)a6 withBicubicUpscaled:(id)a7 withErrorMask:(id)a8 destination:(id)a9
{
  v28[0] = a5;
  v28[1] = 1.0 / a5;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = ([v17 width] + 15) >> 4;
  v22 = ([v17 height] + 15) >> 4;
  v23 = [v20 computeCommandEncoder];

  [v23 setComputePipelineState:self->_warpBlendRGBKernel];
  [v23 setTexture:v19 atIndex:0];

  [v23 setTexture:v18 atIndex:1];
  [v23 setTexture:v17 atIndex:2];

  [v23 setTexture:v16 atIndex:3];
  [v23 setTexture:v15 atIndex:4];

  [v23 setBytes:v28 length:8 atIndex:0];
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [v23 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [v23 endEncoding];

  return 1;
}

- (void)encodeWarpErrorToCommandBuffer:(id)a3 source:(id)a4 reference:(id)a5 flow:(id)a6 error:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = ([v15 width] + 15) >> 4;
  v18 = ([v15 height] + 15) >> 4;
  v19 = [v16 computeCommandEncoder];

  [v19 setComputePipelineState:self->_warpErrorKernel];
  [v19 setTexture:v15 atIndex:0];

  [v19 setTexture:v14 atIndex:1];
  [v19 setTexture:v13 atIndex:2];

  [v19 setTexture:v12 atIndex:3];
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [v19 dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [v19 endEncoding];
}

- (void)encodeErrorMapFilteringWithGaussian3x3ToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_gaussian3x3CoefficientBuffer)
  {
    v11 = [(MTLDevice *)self->super._device newBufferWithLength:18 options:0];
    gaussian3x3CoefficientBuffer = self->_gaussian3x3CoefficientBuffer;
    self->_gaussian3x3CoefficientBuffer = v11;

    v13 = [(MTLBuffer *)self->_gaussian3x3CoefficientBuffer contents];
    *(v13 + 16) = 11470;
    *v13 = Gaussian3x3FilterCoeffients_1;
  }

  v14 = [v8 computeCommandEncoder];
  [v14 setComputePipelineState:self->_gaussian3x3FilterKernel];
  [v14 setTexture:v9 atIndex:0];
  [v14 setTexture:v10 atIndex:1];
  [v14 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v17[0] = ([v10 width] + 15) >> 4;
  v17[1] = ([v10 height] + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v14 endEncoding];
}

- (void)encodeErrorThresholdToCommandBuffer:(id)a3 source:(id)a4 threshold:(float)a5 scaleFactor:(float)a6 mask:(id)a7
{
  v19[0] = 1.0 / a6;
  v19[1] = a5;
  v10 = a7;
  v11 = a4;
  v12 = a3;
  v13 = ([v10 width] + 15) >> 4;
  v14 = ([v10 height] + 15) >> 4;
  v15 = [v12 computeCommandEncoder];

  [v15 setComputePipelineState:self->_maskKernel];
  [v15 setTexture:v11 atIndex:0];

  [v15 setTexture:v10 atIndex:1];
  [v15 setBytes:v19 length:8 atIndex:0];
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v15 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v15 endEncoding];
}

- (void)encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_gaussian5x5CoefficientBuffer)
  {
    v11 = [(MTLDevice *)self->super._device newBufferWithLength:50 options:0];
    gaussian5x5CoefficientBuffer = self->_gaussian5x5CoefficientBuffer;
    self->_gaussian5x5CoefficientBuffer = v11;

    v13 = [(MTLBuffer *)self->_gaussian5x5CoefficientBuffer contents];
    *(v13 + 48) = 9712;
    *v13 = Gaussian5x5FilterCoeffients;
    *(v13 + 16) = unk_2487C3A92;
    *(v13 + 32) = xmmword_2487C3AA2;
  }

  v14 = [v8 computeCommandEncoder];
  [v14 setComputePipelineState:self->_gaussian5x5FilterKernel];
  [v14 setTexture:v9 atIndex:0];
  [v14 setTexture:v10 atIndex:1];
  [v14 setBuffer:self->_gaussian5x5CoefficientBuffer offset:0 atIndex:0];
  v17[0] = ([v10 width] + 15) >> 4;
  v17[1] = ([v10 height] + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v14 endEncoding];
}

- (Warper)init
{
  v6.receiver = self;
  v6.super_class = Warper;
  v2 = [(VEMetalBase *)&v6 init];
  v3 = v2;
  if (v2 && [(Warper *)v2 setupKernels])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setupKernels
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"videoSuperResolutionMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"warpBlendImageRGB"];
  OUTLINED_FUNCTION_0_14(v8);
  if (self->_warpBlendRGBKernel && ([(VEMetalBase *)self createKernel:@"warpError"], v9 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v9), self->_warpErrorKernel) && ([(VEMetalBase *)self createKernel:@"filter_error_map_3x3"], v10 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v10), self->_gaussian3x3FilterKernel) && ([(VEMetalBase *)self createKernel:@"filter_error_map_5x5"], v11 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v11), self->_gaussian5x5FilterKernel))
  {
    v12 = [(VEMetalBase *)self createKernel:@"createMask"];
    OUTLINED_FUNCTION_0_14(v12);
    v13 = self->_maskKernel != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)computeErrorMask:(__CVBuffer *)a3 reference:(__CVBuffer *)a4 flow:(__CVBuffer *)a5 output:(__CVBuffer *)a6 threshold:(float)a7 scaleFactor:(float)a8
{
  v15 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v16 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 1uLL);
  v17 = createTexturesFromCVPixelBuffer(a4, self->super._device, 1, 1uLL);
  v18 = createTexturesFromCVPixelBuffer(a5, self->super._device, 2, 1uLL);
  v19 = createTextures(self->super._device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
  v20 = createTextures(self->super._device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
  v21 = createTexturesFromCVPixelBuffer(a6, self->super._device, 1, 1uLL);
  v22 = createTextures(self->super._device, [v21 width], objc_msgSend(v21, "height"), 1, 1uLL);
  v23 = v22;
  if (v15)
  {
    v24 = v16 == 0;
  }

  else
  {
    v24 = 1;
  }

  v30 = v24 || v17 == 0 || v18 == 0 || v19 == 0 || v20 == 0 || v21 == 0 || v22 == 0;
  v31 = v30;
  if (!v30)
  {
    [OUTLINED_FUNCTION_1_6() encodeWarpErrorToCommandBuffer:? source:? reference:? flow:? error:?];
    [OUTLINED_FUNCTION_1_6() encodeErrorMapFilteringWithGaussian3x3ToCommandBuffer:? source:? destination:?];
    v32 = OUTLINED_FUNCTION_1_6();
    *&v33 = a7;
    *&v34 = a8;
    [v32 encodeErrorThresholdToCommandBuffer:v33 source:v34 threshold:? scaleFactor:? mask:?];
    [OUTLINED_FUNCTION_1_6() encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:? source:? destination:?];
    [v15 commit];
    [v15 waitUntilCompleted];
  }

  return v31 ^ 1;
}

@end