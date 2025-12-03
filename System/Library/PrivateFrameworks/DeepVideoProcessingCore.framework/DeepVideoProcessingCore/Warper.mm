@interface Warper
- (BOOL)computeErrorMask:(__CVBuffer *)mask reference:(__CVBuffer *)reference flow:(__CVBuffer *)flow output:(__CVBuffer *)output threshold:(float)threshold scaleFactor:(float)factor;
- (BOOL)encodeWarpBlendToCommandBuffer:(id)buffer source:(id)source scaleFactor:(unint64_t)factor withLowResFlow:(id)flow withBicubicUpscaled:(id)upscaled withErrorMask:(id)mask destination:(id)destination;
- (BOOL)setupKernels;
- (BOOL)warpBlendBufferRGBTexture:(id)texture scaleFactor:(unint64_t)factor withLowResFlowTexture:(id)flowTexture withBicubicUpscaledTexture:(id)upscaledTexture withErrorMaskTexture:(id)maskTexture toHighResBufferTexture:(id)bufferTexture;
- (Warper)init;
- (void)encodeErrorMapFilteringWithGaussian3x3ToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeErrorThresholdToCommandBuffer:(id)buffer source:(id)source threshold:(float)threshold scaleFactor:(float)factor mask:(id)mask;
- (void)encodeWarpErrorToCommandBuffer:(id)buffer source:(id)source reference:(id)reference flow:(id)flow error:(id)error;
@end

@implementation Warper

- (BOOL)warpBlendBufferRGBTexture:(id)texture scaleFactor:(unint64_t)factor withLowResFlowTexture:(id)flowTexture withBicubicUpscaledTexture:(id)upscaledTexture withErrorMaskTexture:(id)maskTexture toHighResBufferTexture:(id)bufferTexture
{
  commandQueue = self->super._commandQueue;
  bufferTextureCopy = bufferTexture;
  maskTextureCopy = maskTexture;
  upscaledTextureCopy = upscaledTexture;
  flowTextureCopy = flowTexture;
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  v21 = [(Warper *)self encodeWarpBlendToCommandBuffer:commandBuffer source:textureCopy scaleFactor:factor withLowResFlow:flowTextureCopy withBicubicUpscaled:upscaledTextureCopy withErrorMask:maskTextureCopy destination:bufferTextureCopy];

  if (v21)
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v21;
}

- (BOOL)encodeWarpBlendToCommandBuffer:(id)buffer source:(id)source scaleFactor:(unint64_t)factor withLowResFlow:(id)flow withBicubicUpscaled:(id)upscaled withErrorMask:(id)mask destination:(id)destination
{
  v28[0] = factor;
  v28[1] = 1.0 / factor;
  destinationCopy = destination;
  maskCopy = mask;
  upscaledCopy = upscaled;
  flowCopy = flow;
  sourceCopy = source;
  bufferCopy = buffer;
  v21 = ([upscaledCopy width] + 15) >> 4;
  v22 = ([upscaledCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_warpBlendRGBKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:flowCopy atIndex:1];
  [computeCommandEncoder setTexture:upscaledCopy atIndex:2];

  [computeCommandEncoder setTexture:maskCopy atIndex:3];
  [computeCommandEncoder setTexture:destinationCopy atIndex:4];

  [computeCommandEncoder setBytes:v28 length:8 atIndex:0];
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [computeCommandEncoder endEncoding];

  return 1;
}

- (void)encodeWarpErrorToCommandBuffer:(id)buffer source:(id)source reference:(id)reference flow:(id)flow error:(id)error
{
  errorCopy = error;
  flowCopy = flow;
  referenceCopy = reference;
  sourceCopy = source;
  bufferCopy = buffer;
  v17 = ([sourceCopy width] + 15) >> 4;
  v18 = ([sourceCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_warpErrorKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:referenceCopy atIndex:1];
  [computeCommandEncoder setTexture:flowCopy atIndex:2];

  [computeCommandEncoder setTexture:errorCopy atIndex:3];
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)encodeErrorMapFilteringWithGaussian3x3ToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  if (!self->_gaussian3x3CoefficientBuffer)
  {
    v11 = [(MTLDevice *)self->super._device newBufferWithLength:18 options:0];
    gaussian3x3CoefficientBuffer = self->_gaussian3x3CoefficientBuffer;
    self->_gaussian3x3CoefficientBuffer = v11;

    contents = [(MTLBuffer *)self->_gaussian3x3CoefficientBuffer contents];
    *(contents + 16) = 11470;
    *contents = Gaussian3x3FilterCoeffients_1;
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_gaussian3x3FilterKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v17[0] = ([destinationCopy width] + 15) >> 4;
  v17[1] = ([destinationCopy height] + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (void)encodeErrorThresholdToCommandBuffer:(id)buffer source:(id)source threshold:(float)threshold scaleFactor:(float)factor mask:(id)mask
{
  v19[0] = 1.0 / factor;
  v19[1] = threshold;
  maskCopy = mask;
  sourceCopy = source;
  bufferCopy = buffer;
  v13 = ([maskCopy width] + 15) >> 4;
  v14 = ([maskCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_maskKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setBytes:v19 length:8 atIndex:0];
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  if (!self->_gaussian5x5CoefficientBuffer)
  {
    v11 = [(MTLDevice *)self->super._device newBufferWithLength:50 options:0];
    gaussian5x5CoefficientBuffer = self->_gaussian5x5CoefficientBuffer;
    self->_gaussian5x5CoefficientBuffer = v11;

    contents = [(MTLBuffer *)self->_gaussian5x5CoefficientBuffer contents];
    *(contents + 48) = 9712;
    *contents = Gaussian5x5FilterCoeffients;
    *(contents + 16) = unk_2487C3A92;
    *(contents + 32) = xmmword_2487C3AA2;
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_gaussian5x5FilterKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:self->_gaussian5x5CoefficientBuffer offset:0 atIndex:0];
  v17[0] = ([destinationCopy width] + 15) >> 4;
  v17[1] = ([destinationCopy height] + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
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

- (BOOL)computeErrorMask:(__CVBuffer *)mask reference:(__CVBuffer *)reference flow:(__CVBuffer *)flow output:(__CVBuffer *)output threshold:(float)threshold scaleFactor:(float)factor
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v16 = createTexturesFromCVPixelBuffer(mask, self->super._device, 1, 1uLL);
  v17 = createTexturesFromCVPixelBuffer(reference, self->super._device, 1, 1uLL);
  v18 = createTexturesFromCVPixelBuffer(flow, self->super._device, 2, 1uLL);
  v19 = createTextures(self->super._device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
  v20 = createTextures(self->super._device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
  v21 = createTexturesFromCVPixelBuffer(output, self->super._device, 1, 1uLL);
  v22 = createTextures(self->super._device, [v21 width], objc_msgSend(v21, "height"), 1, 1uLL);
  v23 = v22;
  if (commandBuffer)
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
    *&v33 = threshold;
    *&v34 = factor;
    [v32 encodeErrorThresholdToCommandBuffer:v33 source:v34 threshold:? scaleFactor:? mask:?];
    [OUTLINED_FUNCTION_1_6() encodeErrorMapFilteringWithGaussian5x5ToCommandBuffer:? source:? destination:?];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v31 ^ 1;
}

@end