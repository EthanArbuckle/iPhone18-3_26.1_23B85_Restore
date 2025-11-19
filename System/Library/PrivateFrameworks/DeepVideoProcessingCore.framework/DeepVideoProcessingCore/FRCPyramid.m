@interface FRCPyramid
- (FRCPyramid)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (void)blendWarpedResidueForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4 withGridNetOutput:(__CVBuffer *)a5 timeScale:(float)a6 destination:(__CVBuffer *)a7 callback:(id)a8;
- (void)createResiduePyramidFromBuffer:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4 levels:(unint64_t)a5;
- (void)encode3x3GaussianFilterToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeAddBottomPaddingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeBicubicSubsampleTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeFeatureBackwarpToCommandBuffer:(id)a3 feature:(id)a4 forwardFlow:(id)a5 backwardFlow:(id)a6 timeScale:(float)a7 destination:(id)a8;
- (void)encodeLayerBlendToCommandBuffer:(id)a3 baseLayer:(id)a4 toDestination:(id)a5;
- (void)encodeLayerBlendToCommandBuffer:(id)a3 forwardResidue:(id)a4 backwardResidue:(id)a5 withBaseLayer:(id)a6 timeScale:(float)a7 destination:(id)a8;
- (void)encodeResidueInplaceToCommandBuffer:(id)a3 base:(id)a4 low:(id)a5;
- (void)encodeResiduePyramidToCommandBuffer:(id)a3 fromTexture:(id)a4 toTexture:(const void *)a5 levels:(unint64_t)a6;
- (void)encodeResidueToCommandBuffer:(id)a3 base:(id)a4 low:(id)a5 destination:(id)a6;
- (void)encodeShuffleToCommandBuffer:(id)a3 full:(id)a4 quarter:(id)a5 destination:(id)a6;
- (void)encodeSubsampleTextureWith3x3GaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeSubsampleTextureWith5x5GaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 clampToEdge:(BOOL)a6;
- (void)setupMetal;
@end

@implementation FRCPyramid

- (FRCPyramid)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v17.receiver = self;
  v17.super_class = FRCPyramid;
  v4 = [(VEMetalBase *)&v17 initWithDevice:a3 commmandQueue:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"frameRateConversionMetalLib.metallib" ofType:0];
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    v8 = [(MTLDevice *)v4->super._device newLibraryWithURL:v7 error:0];
    mtlLibrary = v4->super._mtlLibrary;
    v4->super._mtlLibrary = v8;

    [(FRCPyramid *)v4 setupMetal];
    v10 = [(MTLDevice *)v4->super._device newBufferWithLength:50 options:0];
    gaussianCoefficientBuffer = v4->_gaussianCoefficientBuffer;
    v4->_gaussianCoefficientBuffer = v10;

    v12 = [(MTLBuffer *)v4->_gaussianCoefficientBuffer contents];
    *(v12 + 48) = 10386;
    *v12 = GaussianFilterCoeffients;
    *(v12 + 16) = unk_2487C39B8;
    *(v12 + 32) = xmmword_2487C39C8;
    v13 = [(MTLDevice *)v4->super._device newBufferWithLength:24 options:0];
    gaussian3x3CoefficientBuffer = v4->_gaussian3x3CoefficientBuffer;
    v4->_gaussian3x3CoefficientBuffer = v13;

    v15 = [(MTLBuffer *)v4->_gaussian3x3CoefficientBuffer contents];
    *(v15 + 16) = 12027;
    *v15 = Gaussian3x3FilterCoeffients_0;
  }

  return v4;
}

- (void)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"subsample_frame"];
  subsampleKernel = self->_subsampleKernel;
  self->_subsampleKernel = v3;

  v5 = [(VEMetalBase *)self createKernel:@"create_residue"];
  residueKernel = self->_residueKernel;
  self->_residueKernel = v5;

  v7 = [(VEMetalBase *)self createKernel:@"create_residue_inplace"];
  residueInplaceKernel = self->_residueInplaceKernel;
  self->_residueInplaceKernel = v7;

  v9 = [(VEMetalBase *)self createKernel:@"shuffle_and_concat"];
  shuffleConcatenateKernel = self->_shuffleConcatenateKernel;
  self->_shuffleConcatenateKernel = v9;

  v11 = [(VEMetalBase *)self createKernel:@"gaussian_subsample"];
  gaussianSubsampleKernel = self->_gaussianSubsampleKernel;
  self->_gaussianSubsampleKernel = v11;

  v13 = [(VEMetalBase *)self createKernel:@"blend_resisue_with_grid_output"];
  blendKernel = self->_blendKernel;
  self->_blendKernel = v13;

  v15 = [(VEMetalBase *)self createKernel:@"warp_with_consistency_map"];
  featureBackwarpKernel = self->_featureBackwarpKernel;
  self->_featureBackwarpKernel = v15;

  v17 = [(VEMetalBase *)self createKernel:@"padding_copy"];
  paddingKernel = self->_paddingKernel;
  self->_paddingKernel = v17;

  v19 = [(VEMetalBase *)self createKernel:@"gaussian3x3_subsample"];
  gaussian3x3SubsampleKernel = self->_gaussian3x3SubsampleKernel;
  self->_gaussian3x3SubsampleKernel = v19;

  v21 = [(VEMetalBase *)self createKernel:@"blend_two_layer_pyramid"];
  twoLayerBlendKernel = self->_twoLayerBlendKernel;
  self->_twoLayerBlendKernel = v21;

  v23 = [(VEMetalBase *)self createKernel:@"bicubic_subsample"];
  bicubicSubsampleKernel = self->_bicubicSubsampleKernel;
  self->_bicubicSubsampleKernel = v23;

  if ([(MTLDevice *)self->super._device supportsFamily:1008])
  {
    self->_supportsSIMDShuffle = 1;
    v25 = @"gaussian3x3_filter_SIMD";
  }

  else if (self->_supportsSIMDShuffle)
  {
    v25 = @"gaussian3x3_filter_SIMD";
  }

  else
  {
    v25 = @"gaussian3x3_filter";
  }

  self->_gaussian3x3FilterKernel = [(VEMetalBase *)self createKernel:v25];

  MEMORY[0x2821F96F8]();
}

- (void)createResiduePyramidFromBuffer:(__CVBuffer *)a3 toBuffer:(__CVBuffer *)a4 levels:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v9 = a5 + 1;
  if (a5 != -1)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = createTexturesFromCVPixelBuffer(a4[v10], self->super._device, 1, 3uLL);
      v13 = *(&v21 + v10);
      *(&v21 + v10) = v12;

      v10 = v11;
      v14 = v9 > v11++;
    }

    while (v14);
    if (a5 == 2)
    {
      v15 = createTexturesFromCVPixelBuffer(a4[3], self->super._device, 1, 3uLL);
      v16 = *(&v22 + 1);
      *(&v22 + 1) = v15;
    }
  }

  v17 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer:v21];
  [v17 enqueue];
  [(FRCPyramid *)self encodeResiduePyramidToCommandBuffer:v17 fromTexture:v8 toTexture:&v21 levels:a5];
  [v17 commit];
  [v17 waitUntilCompleted];
  if (a5 != -1)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (isBufferCopyNecessaryForCVtoTextureConversion([*(&v21 + v18) width], objc_msgSend(*(&v21 + v18), "height"), objc_msgSend(*(&v21 + v18), "arrayLength")))
      {
        copyTextureToBuffer(*(&v21 + v18), a4[v18]);
      }

      v18 = v19;
      v14 = v9 > v19++;
    }

    while (v14);
  }

  for (i = 32; i != -8; i -= 8)
  {
  }
}

- (void)encodeResiduePyramidToCommandBuffer:(id)a3 fromTexture:(id)a4 toTexture:(const void *)a5 levels:(unint64_t)a6
{
  v15 = a3;
  v10 = a4;
  v11 = v10;
  switch(a6)
  {
    case 4uLL:
      [(FRCPyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:v15 source:v10 destination:a5[4] clampToEdge:1];
      [(FRCPyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:v15 source:a5[4] destination:a5[2] clampToEdge:0];
      [(FRCPyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:v15 source:a5[2] destination:a5[3] clampToEdge:0];
      [(FRCPyramid *)self encodeResidueToCommandBuffer:v15 base:v11 low:a5[4] destination:*a5];
      [(FRCPyramid *)self encodeResidueToCommandBuffer:v15 base:a5[4] low:a5[2] destination:a5[1]];
      [(FRCPyramid *)self encodeResidueInplaceToCommandBuffer:v15 base:a5[2] low:a5[3]];
      break;
    case 3uLL:
      v12 = v10;
      v13 = [v12 height];
      if (v13 != [*a5 height])
      {
        v14 = createTextures(self->super._device, [*a5 width], objc_msgSend(*a5, "height"), 1, 3uLL);

        [(FRCPyramid *)self encodeAddBottomPaddingToCommandBuffer:v15 source:v12 destination:v14];
        v12 = v14;
      }

      [(FRCPyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:v15 source:v12 destination:a5[3] clampToEdge:0];
      [(FRCPyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:v15 source:a5[3] destination:a5[2] clampToEdge:0];
      [(FRCPyramid *)self encodeResidueToCommandBuffer:v15 base:v12 low:a5[3] destination:*a5];
      [(FRCPyramid *)self encodeResidueToCommandBuffer:v15 base:a5[3] low:a5[2] destination:a5[1]];

      break;
    case 2uLL:
      [(FRCPyramid *)self encode3x3GaussianFilterToCommandBuffer:v15 source:v10 destination:a5[1]];
      [(FRCPyramid *)self encodeBicubicSubsampleTextureToCommandBuffer:v15 source:a5[1] destination:a5[2]];
      [(FRCPyramid *)self encode3x3GaussianFilterToCommandBuffer:v15 source:a5[2] destination:a5[3]];
      [(FRCPyramid *)self encodeResidueToCommandBuffer:v15 base:v11 low:a5[3] destination:a5[1]];
      break;
    default:
      [FRCPyramid encodeResiduePyramidToCommandBuffer:fromTexture:toTexture:levels:];
  }
}

- (void)encodeBicubicSubsampleTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 width];
  v18 = v11 / [v8 width];
  v12 = [v10 computeCommandEncoder];

  [v12 setComputePipelineState:self->_bicubicSubsampleKernel];
  [v12 setTexture:v9 atIndex:0];

  [v12 setTexture:v8 atIndex:1];
  [v12 setBytes:&v18 length:4 atIndex:0];
  v13 = ([v8 width] + 15) >> 4;
  v14 = [v8 height];

  v17[0] = v13;
  v17[1] = (v14 + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [v12 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v12 endEncoding];
}

- (void)encodeSubsampleTextureWith5x5GaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 clampToEdge:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x277CD6FD0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  v15 = v14;
  if (v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = 4;
  }

  [v14 setTAddressMode:v16];
  [v15 setSAddressMode:v16];
  [v15 setNormalizedCoordinates:0];
  v17 = [(MTLDevice *)self->super._device newSamplerStateWithDescriptor:v15];
  v18 = [v13 computeCommandEncoder];

  [v18 setComputePipelineState:self->_gaussianSubsampleKernel];
  [v18 setTexture:v12 atIndex:0];

  [v18 setTexture:v11 atIndex:1];
  [v18 setBuffer:self->_gaussianCoefficientBuffer offset:0 atIndex:0];
  [v18 setSamplerState:v17 atIndex:0];
  v19 = ([v11 width] + 15) >> 4;
  v20 = [v11 height];

  v23[0] = v19;
  v23[1] = (v20 + 15) >> 4;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x10uLL);
  v22 = 1;
  [v18 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [v18 endEncoding];
}

- (void)encodeSubsampleTextureWith3x3GaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_gaussian3x3SubsampleKernel];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];
  v11 = [(MTLBuffer *)self->_gaussian3x3CoefficientBuffer contents];
  v12 = [v9 width];

  *(v11 + 20) = v12 / [v8 width];
  [v10 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v13 = ([v8 width] + 15) >> 4;
  v14 = [v8 height];

  v17[0] = v13;
  v17[1] = (v14 + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [v10 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [v10 endEncoding];
}

- (void)encode3x3GaussianFilterToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_gaussian3x3FilterKernel];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  [v10 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v11 = ([v8 width] + 3) >> 2;
  v12 = [v8 height];

  v15[0] = v11;
  v15[1] = (v12 + 31) >> 5;
  v15[2] = 1;
  v13 = xmmword_2487C37A0;
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

- (void)encodeResidueToCommandBuffer:(id)a3 base:(id)a4 low:(id)a5 destination:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->_residueKernel];
  [v13 setTexture:v12 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v10 atIndex:2];
  v14 = [v11 width];

  v15 = v14;
  v16 = [v12 width];

  v22 = v15 / v16;
  [v13 setBytes:&v22 length:4 atIndex:0];
  v17 = ([v10 width] + 15) >> 4;
  v18 = [v10 height];

  v21[0] = v17;
  v21[1] = (v18 + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [v13 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [v13 endEncoding];
}

- (void)encodeResidueInplaceToCommandBuffer:(id)a3 base:(id)a4 low:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_residueInplaceKernel];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = ([v9 width] + 15) >> 4;
  v12 = [v9 height];

  v15[0] = v11;
  v15[1] = (v12 + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [v10 endEncoding];
}

- (void)encodeShuffleToCommandBuffer:(id)a3 full:(id)a4 quarter:(id)a5 destination:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->_shuffleConcatenateKernel];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v10 atIndex:2];
  v14 = ([v10 width] + 15) >> 4;
  v15 = [v10 height];

  v18[0] = v14;
  v18[1] = (v15 + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v13 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v13 endEncoding];
}

- (void)blendWarpedResidueForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4 withGridNetOutput:(__CVBuffer *)a5 timeScale:(float)a6 destination:(__CVBuffer *)a7 callback:(id)a8
{
  v14 = a8;
  v15 = createTexturesFromCVPixelBuffer(a3, self->super._device, 1, 3uLL);
  v16 = createTexturesFromCVPixelBuffer(a4, self->super._device, 1, 3uLL);
  v17 = createTexturesFromCVPixelBuffer(a5, self->super._device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(a7, self->super._device, 1, 3uLL);
  v19 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  *&v20 = a6;
  [(FRCPyramid *)self encodeLayerBlendToCommandBuffer:v19 forwardResidue:v15 backwardResidue:v16 withBaseLayer:v17 timeScale:v18 destination:v20];
  if (v14)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__FRCPyramid_blendWarpedResidueForward_backward_withGridNetOutput_timeScale_destination_callback___block_invoke;
    v21[3] = &unk_278F537B8;
    v22 = v14;
    [v19 addCompletedHandler:v21];
  }

  [v19 commit];
  [v19 waitUntilScheduled];
}

- (void)encodeLayerBlendToCommandBuffer:(id)a3 forwardResidue:(id)a4 backwardResidue:(id)a5 withBaseLayer:(id)a6 timeScale:(float)a7 destination:(id)a8
{
  v23 = a7;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [a3 computeCommandEncoder];
  [v17 setComputePipelineState:self->_blendKernel];
  [v17 setTexture:v16 atIndex:0];

  [v17 setTexture:v15 atIndex:1];
  [v17 setTexture:v14 atIndex:2];

  [v17 setTexture:v13 atIndex:3];
  [v17 setBytes:&v23 length:4 atIndex:0];
  v18 = ([v13 width] + 15) >> 4;
  v19 = [v13 height];

  v22[0] = v18;
  v22[1] = (v19 + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [v17 dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [v17 endEncoding];
}

- (void)encodeFeatureBackwarpToCommandBuffer:(id)a3 feature:(id)a4 forwardFlow:(id)a5 backwardFlow:(id)a6 timeScale:(float)a7 destination:(id)a8
{
  v23 = a7;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [a3 computeCommandEncoder];
  [v17 setComputePipelineState:self->_featureBackwarpKernel];
  [v17 setTexture:v16 atIndex:0];

  [v17 setTexture:v15 atIndex:1];
  [v17 setTexture:v14 atIndex:2];

  [v17 setTexture:v13 atIndex:3];
  [v17 setBytes:&v23 length:4 atIndex:0];
  v18 = ([v13 width] + 15) >> 4;
  v19 = [v13 height];

  v22[0] = v18;
  v22[1] = (v19 + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [v17 dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [v17 endEncoding];
}

- (void)encodeAddBottomPaddingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_paddingKernel];
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

- (void)encodeLayerBlendToCommandBuffer:(id)a3 baseLayer:(id)a4 toDestination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_twoLayerBlendKernel];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];
  v11 = [v9 width];

  v17 = v11 / [v8 width];
  [v10 setBytes:&v17 length:4 atIndex:0];
  v12 = ([v8 width] + 15) >> 4;
  v13 = [v8 height];

  v16[0] = v12;
  v16[1] = (v13 + 15) >> 4;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [v10 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];
}

@end