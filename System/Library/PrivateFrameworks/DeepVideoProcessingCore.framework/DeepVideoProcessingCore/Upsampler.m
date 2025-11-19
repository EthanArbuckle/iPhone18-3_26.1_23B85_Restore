@interface Upsampler
- (BOOL)fillImage:(__CVBuffer *)a3 withValue:(float)a4;
- (BOOL)setupKernels;
- (BOOL)upsampleRBGPackedBuffer:(__CVBuffer *)a3 to:(__CVBuffer *)a4 scaleFactor:(float)a5;
- (BOOL)upscaleFlow:(__CVBuffer *)a3 upscaleRatio:(float)a4 destination:(__CVBuffer *)a5;
- (Upsampler)init;
- (void)encodeFillTextureToCommandBuffer:(id)a3 destination:(id)a4 withValue:(float)a5;
- (void)encodeUpsampleRBGPackedToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 scaleFactor:(float)a6;
@end

@implementation Upsampler

- (void)encodeUpsampleRBGPackedToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 scaleFactor:(float)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = ([v10 width] + 15) >> 4;
  v14 = ([v10 height] + 15) >> 4;
  v15 = [v12 computeCommandEncoder];

  [v15 setComputePipelineState:self->_imageUpsampleRGBPackedKernel];
  [v15 setTexture:v11 atIndex:0];

  [v15 setTexture:v10 atIndex:1];
  v19 = 1.0 / a6;
  [v15 setBytes:&v19 length:4 atIndex:0];
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v15 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v15 endEncoding];
}

- (void)encodeFillTextureToCommandBuffer:(id)a3 destination:(id)a4 withValue:(float)a5
{
  v15 = a5;
  v7 = a4;
  v8 = a3;
  v9 = ([v7 width] + 15) >> 4;
  v10 = ([v7 height] + 15) >> 4;
  v11 = [v8 computeCommandEncoder];

  [v11 setComputePipelineState:self->_fillKernel];
  [v11 setTexture:v7 atIndex:0];

  [v11 setBytes:&v15 length:4 atIndex:0];
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = 1;
  v12 = vdupq_n_s64(0x10uLL);
  v13 = 1;
  [v11 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
  [v11 endEncoding];
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

- (BOOL)upsampleRBGPackedBuffer:(__CVBuffer *)a3 to:(__CVBuffer *)a4 scaleFactor:(float)a5
{
  v9 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v10 = createRGBATextureFromCVPixelBuffer(a3, self->super._device);
  v11 = createRGBATextureFromCVPixelBuffer(a4, self->super._device);
  v13 = v11;
  if (v9)
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
    *&v12 = a5;
    [(Upsampler *)self encodeUpsampleRBGPackedToCommandBuffer:v9 source:v10 destination:v11 scaleFactor:v12];
    [v9 commit];
    [v9 waitUntilCompleted];
  }

  return v16;
}

- (BOOL)fillImage:(__CVBuffer *)a3 withValue:(float)a4
{
  v7 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if (!v7)
  {
    v17 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  device = self->super._device;
  if (PlaneCount != 2)
  {
    v10 = createTexturesFromCVPixelBuffer(a3, device, 1, 1uLL);
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
  createYUVTextureFromCVPixelBuffer(a3, device, &v20, &v19);
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
    *&v14 = a4;
    [(Upsampler *)self encodeFillTextureToCommandBuffer:v7 destination:v11 withValue:v14];
  }

LABEL_8:
  [v7 commit];
  [v7 waitUntilCompleted];
  v17 = 1;
LABEL_9:

  return v17;
}

- (BOOL)upscaleFlow:(__CVBuffer *)a3 upscaleRatio:(float)a4 destination:(__CVBuffer *)a5
{
  v8 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v9 = createTexturesFromCVPixelBuffer(a3, self->super._device, 2, 1uLL);
  v10 = createTexturesFromCVPixelBuffer(a5, self->super._device, 2, 1uLL);
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    *&v13 = OUTLINED_FUNCTION_0_24();
    if ([v14 encodeUpscaleFlowToCommandBuffer:v13 source:? upscaleRatio:? destination:?])
    {
      v12 = 0;
    }

    else
    {
      [v8 commit];
      [v8 waitUntilCompleted];
      v12 = 1;
    }
  }

  return v12;
}

@end