@interface Upsampler
- (BOOL)fillImage:(__CVBuffer *)image withValue:(float)value;
- (BOOL)setupKernels;
- (BOOL)upsampleRBGPackedBuffer:(__CVBuffer *)buffer to:(__CVBuffer *)to scaleFactor:(float)factor;
- (BOOL)upscaleFlow:(__CVBuffer *)flow upscaleRatio:(float)ratio destination:(__CVBuffer *)destination;
- (Upsampler)init;
- (void)encodeFillTextureToCommandBuffer:(id)buffer destination:(id)destination withValue:(float)value;
- (void)encodeUpsampleRBGPackedToCommandBuffer:(id)buffer source:(id)source destination:(id)destination scaleFactor:(float)factor;
@end

@implementation Upsampler

- (void)encodeUpsampleRBGPackedToCommandBuffer:(id)buffer source:(id)source destination:(id)destination scaleFactor:(float)factor
{
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v13 = ([destinationCopy width] + 15) >> 4;
  v14 = ([destinationCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_imageUpsampleRGBPackedKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v19 = 1.0 / factor;
  [computeCommandEncoder setBytes:&v19 length:4 atIndex:0];
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)encodeFillTextureToCommandBuffer:(id)buffer destination:(id)destination withValue:(float)value
{
  valueCopy = value;
  destinationCopy = destination;
  bufferCopy = buffer;
  v9 = ([destinationCopy width] + 15) >> 4;
  v10 = ([destinationCopy height] + 15) >> 4;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_fillKernel];
  [computeCommandEncoder setTexture:destinationCopy atIndex:0];

  [computeCommandEncoder setBytes:&valueCopy length:4 atIndex:0];
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = 1;
  v12 = vdupq_n_s64(0x10uLL);
  v13 = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
  [computeCommandEncoder endEncoding];
}

- (Upsampler)init
{
  v8.receiver = self;
  v8.super_class = Upsampler;
  v2 = [(VEMetalBase *)&v8 init];
  v3 = v2;
  if (v2 && [(Upsampler *)v2 setupKernels]&& (v4 = [[Backwarp_Ext alloc] initWithDevice:v3->super._device commmandQueue:v3->super._commandQueue interleaved:0], backwarp = v3->_backwarp, v3->_backwarp = v4, backwarp, v3->_backwarp))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setupKernels
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"videoSuperResolutionMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"upsampleRGBPackedImage"];
  imageUpsampleRGBPackedKernel = self->_imageUpsampleRGBPackedKernel;
  self->_imageUpsampleRGBPackedKernel = v8;

  if (self->_imageUpsampleRGBPackedKernel)
  {
    v10 = [(VEMetalBase *)self createKernel:@"fillImage"];
    fillKernel = self->_fillKernel;
    self->_fillKernel = v10;

    v12 = self->_fillKernel != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)upsampleRBGPackedBuffer:(__CVBuffer *)buffer to:(__CVBuffer *)to scaleFactor:(float)factor
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v10 = createRGBATextureFromCVPixelBuffer(buffer, self->super._device);
  v11 = createRGBATextureFromCVPixelBuffer(to, self->super._device);
  v13 = v11;
  if (commandBuffer)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 || v11 == 0;
  v16 = !v15;
  if (!v15)
  {
    *&v12 = factor;
    [(Upsampler *)self encodeUpsampleRBGPackedToCommandBuffer:commandBuffer source:v10 destination:v11 scaleFactor:v12];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v16;
}

- (BOOL)fillImage:(__CVBuffer *)image withValue:(float)value
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if (!commandBuffer)
  {
    v17 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(image);
  device = self->super._device;
  if (PlaneCount != 2)
  {
    v10 = createTexturesFromCVPixelBuffer(image, device, 1, 1uLL);
    if (v10)
    {
      *&v15 = OUTLINED_FUNCTION_0_24();
      [v16 encodeFillTextureToCommandBuffer:v15 destination:? withValue:?];
      v11 = 0;
      goto LABEL_8;
    }

    v17 = 0;
LABEL_13:
    v11 = 0;
    goto LABEL_9;
  }

  v19 = 0;
  v20 = 0;
  createYUVTextureFromCVPixelBuffer(image, device, &v20, &v19);
  v10 = v20;
  v11 = v19;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_9;
  }

  *&v12 = OUTLINED_FUNCTION_0_24();
  [v13 encodeFillTextureToCommandBuffer:v12 destination:? withValue:?];
  if (v11)
  {
    *&v14 = value;
    [(Upsampler *)self encodeFillTextureToCommandBuffer:commandBuffer destination:v11 withValue:v14];
  }

LABEL_8:
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)upscaleFlow:(__CVBuffer *)flow upscaleRatio:(float)ratio destination:(__CVBuffer *)destination
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v9 = createTexturesFromCVPixelBuffer(flow, self->super._device, 2, 1uLL);
  v10 = createTexturesFromCVPixelBuffer(destination, self->super._device, 2, 1uLL);
  v11 = v10;
  v12 = 0;
  if (commandBuffer && v9 && v10)
  {
    *&v13 = OUTLINED_FUNCTION_0_24();
    if ([v14 encodeUpscaleFlowToCommandBuffer:v13 source:? upscaleRatio:? destination:?])
    {
      v12 = 0;
    }

    else
    {
      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
      v12 = 1;
    }
  }

  return v12;
}

@end