@interface LoGFilter
- (BOOL)createMaskFrom:(__CVBuffer *)from to:(__CVBuffer *)to;
- (LoGFilter)init;
- (void)encodeDiffToCommandBuffer:(id)buffer texture0:(id)texture0 texture1:(id)texture1;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
- (void)encodeUpsampleScaleToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
@end

@implementation LoGFilter

- (void)encodeDiffToCommandBuffer:(id)buffer texture0:(id)texture0 texture1:(id)texture1
{
  texture1Copy = texture1;
  texture0Copy = texture0;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_absoluteDiffKernel];
  [computeCommandEncoder setTexture:texture0Copy atIndex:0];

  [computeCommandEncoder setTexture:texture1Copy atIndex:1];
  v11 = ([texture1Copy width] + 15) >> 4;
  height = [texture1Copy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)encodeUpsampleScaleToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  bufferCopy = buffer;
  width = [textureCopy width];
  width2 = [destinationTextureCopy width];
  maskScaleFactor = self->_maskScaleFactor;
  v18[0] = width / width2;
  v18[1] = maskScaleFactor;
  v18[2] = self->_maskStrength;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_upsampleScaleKernel];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:destinationTextureCopy atIndex:1];
    [computeCommandEncoder setBytes:v18 length:12 atIndex:0];
    v17[0] = ([destinationTextureCopy width] + 15) >> 4;
    v17[1] = ([destinationTextureCopy height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  if (!self->_gaussianFilteredTexture1)
  {
    v10 = createTextures(self->super._device, [textureCopy width], objc_msgSend(textureCopy, "height"), 1, 1uLL);
    gaussianFilteredTexture1 = self->_gaussianFilteredTexture1;
    self->_gaussianFilteredTexture1 = v10;
  }

  if (!self->_gaussianFilteredTexture2)
  {
    v12 = createTextures(self->super._device, [textureCopy width], objc_msgSend(textureCopy, "height"), 1, 1uLL);
    gaussianFilteredTexture2 = self->_gaussianFilteredTexture2;
    self->_gaussianFilteredTexture2 = v12;
  }

  [(MPSImageGaussianBlur *)self->_gauss1 encodeToCommandBuffer:bufferCopy sourceTexture:textureCopy destinationTexture:self->_gaussianFilteredTexture1];
  [(MPSImageGaussianBlur *)self->_gauss2 encodeToCommandBuffer:bufferCopy sourceTexture:textureCopy destinationTexture:self->_gaussianFilteredTexture2];
  [(LoGFilter *)self encodeDiffToCommandBuffer:bufferCopy texture0:self->_gaussianFilteredTexture1 texture1:self->_gaussianFilteredTexture2];
  [(MPSImageGaussianBlur *)self->_gauss3 encodeToCommandBuffer:bufferCopy sourceTexture:self->_gaussianFilteredTexture2 destinationTexture:self->_gaussianFilteredTexture1];
  [(LoGFilter *)self encodeUpsampleScaleToCommandBuffer:bufferCopy sourceTexture:self->_gaussianFilteredTexture1 destinationTexture:destinationTextureCopy];
}

- (LoGFilter)init
{
  v23.receiver = self;
  v23.super_class = LoGFilter;
  v2 = [(VEMetalBase *)&v23 init];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = MTLCreateSystemDefaultDevice();
  OUTLINED_FUNCTION_0_22(v3);
  if (!v2->super._device)
  {
    goto LABEL_12;
  }

  v4 = objc_alloc(MEMORY[0x277CD7520]);
  LODWORD(v5) = 0.5;
  v6 = [v4 initWithDevice:v2->super._device sigma:v5];
  gauss1 = v2->_gauss1;
  v2->_gauss1 = v6;

  if (!v2->_gauss1)
  {
    goto LABEL_12;
  }

  v8 = objc_alloc(MEMORY[0x277CD7520]);
  LODWORD(v9) = 1.0;
  v10 = [v8 initWithDevice:v2->super._device sigma:v9];
  gauss2 = v2->_gauss2;
  v2->_gauss2 = v10;

  if (!v2->_gauss2)
  {
    goto LABEL_12;
  }

  v12 = objc_alloc(MEMORY[0x277CD7520]);
  LODWORD(v13) = 2.0;
  v14 = [v12 initWithDevice:v2->super._device sigma:v13];
  gauss3 = v2->_gauss3;
  v2->_gauss3 = v14;

  if (!v2->_gauss3)
  {
    goto LABEL_12;
  }

  [(MPSImageGaussianBlur *)v2->_gauss1 setEdgeMode:1];
  [(MPSImageGaussianBlur *)v2->_gauss2 setEdgeMode:1];
  [(MPSImageGaussianBlur *)v2->_gauss3 setEdgeMode:1];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 pathForResource:@"videoSuperResolutionMetalLib.metallib" ofType:0];
  v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v17];
  OUTLINED_FUNCTION_0_22([(MTLDevice *)v2->super._device newLibraryWithURL:v18 error:0]);
  if (!v2->super._mtlLibrary || ([(VEMetalBase *)v2 createKernel:@"absoluteDifference"], v19 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_22(v19), !v2->_absoluteDiffKernel) || ([(VEMetalBase *)v2 createKernel:@"scaleOutput"], v20 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_22(v20), !v2->_upsampleScaleKernel))
  {

LABEL_12:
    v21 = 0;
    goto LABEL_10;
  }

  v2->_maskScaleFactor = 40.0;
  v2->_maskStrength = 0.75;

  v21 = v2;
LABEL_10:

  return v21;
}

- (BOOL)createMaskFrom:(__CVBuffer *)from to:(__CVBuffer *)to
{
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = createTexturesFromCVPixelBuffer(from, self->super._device, 1, 1uLL);
  v9 = createTexturesFromCVPixelBuffer(to, self->super._device, 1, 1uLL);
  v10 = v9;
  if (commandBuffer)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v9 == 0;
  v13 = !v12;
  if (!v12)
  {
    [(LoGFilter *)self encodeToCommandBuffer:commandBuffer sourceTexture:v8 destinationTexture:v9];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  return v13;
}

@end