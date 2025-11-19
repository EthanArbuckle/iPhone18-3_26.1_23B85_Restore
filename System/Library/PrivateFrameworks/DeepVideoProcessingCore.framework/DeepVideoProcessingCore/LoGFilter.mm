@interface LoGFilter
- (BOOL)createMaskFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4;
- (LoGFilter)init;
- (void)encodeDiffToCommandBuffer:(id)a3 texture0:(id)a4 texture1:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
- (void)encodeUpsampleScaleToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
@end

@implementation LoGFilter

- (void)encodeDiffToCommandBuffer:(id)a3 texture0:(id)a4 texture1:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_absoluteDiffKernel];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v11 = ([v8 width] + 15) >> 4;
  v12 = [v8 height];

  v15[0] = v11;
  v15[1] = (v12 + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

- (void)encodeUpsampleScaleToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 width];
  v12 = [v9 width];
  maskScaleFactor = self->_maskScaleFactor;
  v18[0] = v11 / v12;
  v18[1] = maskScaleFactor;
  v18[2] = self->_maskStrength;
  v14 = [v10 computeCommandEncoder];

  if (v14)
  {
    [v14 setComputePipelineState:self->_upsampleScaleKernel];
    [v14 setTexture:v8 atIndex:0];
    [v14 setTexture:v9 atIndex:1];
    [v14 setBytes:v18 length:12 atIndex:0];
    v17[0] = ([v9 width] + 15) >> 4;
    v17[1] = ([v9 height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [v14 endEncoding];
  }
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_gaussianFilteredTexture1)
  {
    v10 = createTextures(self->super._device, [v8 width], objc_msgSend(v8, "height"), 1, 1uLL);
    gaussianFilteredTexture1 = self->_gaussianFilteredTexture1;
    self->_gaussianFilteredTexture1 = v10;
  }

  if (!self->_gaussianFilteredTexture2)
  {
    v12 = createTextures(self->super._device, [v8 width], objc_msgSend(v8, "height"), 1, 1uLL);
    gaussianFilteredTexture2 = self->_gaussianFilteredTexture2;
    self->_gaussianFilteredTexture2 = v12;
  }

  [(MPSImageGaussianBlur *)self->_gauss1 encodeToCommandBuffer:v14 sourceTexture:v8 destinationTexture:self->_gaussianFilteredTexture1];
  [(MPSImageGaussianBlur *)self->_gauss2 encodeToCommandBuffer:v14 sourceTexture:v8 destinationTexture:self->_gaussianFilteredTexture2];
  [(LoGFilter *)self encodeDiffToCommandBuffer:v14 texture0:self->_gaussianFilteredTexture1 texture1:self->_gaussianFilteredTexture2];
  [(MPSImageGaussianBlur *)self->_gauss3 encodeToCommandBuffer:v14 sourceTexture:self->_gaussianFilteredTexture2 destinationTexture:self->_gaussianFilteredTexture1];
  [(LoGFilter *)self encodeUpsampleScaleToCommandBuffer:v14 sourceTexture:self->_gaussianFilteredTexture1 destinationTexture:v9];
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

- (BOOL)createMaskFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4
{
  v7 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v8 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 1uLL);
  v9 = createTexturesFromCVPixelBuffer(a4, self->super._device, 1, 1uLL);
  v10 = v9;
  if (v7)
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
    [(LoGFilter *)self encodeToCommandBuffer:v7 sourceTexture:v8 destinationTexture:v9];
    [v7 commit];
    [v7 waitUntilCompleted];
  }

  return v13;
}

@end