@interface Pyramid
- (Pyramid)initWithDevice:(id)device commmandQueue:(id)queue;
- (void)blendWarpedResidueForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward withGridNetOutput:(__CVBuffer *)output timeScale:(float)scale destination:(__CVBuffer *)destination callback:(id)callback;
- (void)createResiduePyramidFromBuffer:(__CVBuffer *)buffer toBuffer:(__CVBuffer *)toBuffer levels:(unint64_t)levels;
- (void)encode3x3GaussianFilterToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeAddBottomPaddingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeBicubicSubsampleTextureToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeFeatureBackwarpToCommandBuffer:(id)buffer feature:(id)feature forwardFlow:(id)flow backwardFlow:(id)backwardFlow timeScale:(float)scale destination:(id)destination;
- (void)encodeLayerBlendToCommandBuffer:(id)buffer baseLayer:(id)layer toDestination:(id)destination;
- (void)encodeLayerBlendToCommandBuffer:(id)buffer forwardResidue:(id)residue backwardResidue:(id)backwardResidue withBaseLayer:(id)layer timeScale:(float)scale destination:(id)destination;
- (void)encodeResidueInplaceToCommandBuffer:(id)buffer base:(id)base low:(id)low;
- (void)encodeResiduePyramidToCommandBuffer:(id)buffer fromTexture:(id)texture toTexture:(const void *)toTexture levels:(unint64_t)levels;
- (void)encodeResidueToCommandBuffer:(id)buffer base:(id)base low:(id)low destination:(id)destination;
- (void)encodeShuffleToCommandBuffer:(id)buffer full:(id)full quarter:(id)quarter destination:(id)destination;
- (void)encodeSubsampleTextureWith3x3GaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeSubsampleTextureWith5x5GaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination clampToEdge:(BOOL)edge;
@end

@implementation Pyramid

- (Pyramid)initWithDevice:(id)device commmandQueue:(id)queue
{
  v38.receiver = self;
  v38.super_class = Pyramid;
  v4 = [(FRCMetalBase *)&v38 initWithDevice:device commmandQueue:queue];
  v5 = v4;
  if (v4)
  {
    v6 = [(FRCMetalBase *)v4 createKernel:@"subsample_frame"];
    subsampleKernel = v5->_subsampleKernel;
    v5->_subsampleKernel = v6;

    v8 = [(FRCMetalBase *)v5 createKernel:@"create_residue"];
    residueKernel = v5->_residueKernel;
    v5->_residueKernel = v8;

    v10 = [(FRCMetalBase *)v5 createKernel:@"create_residue_inplace"];
    residueInplaceKernel = v5->_residueInplaceKernel;
    v5->_residueInplaceKernel = v10;

    v12 = [(FRCMetalBase *)v5 createKernel:@"shuffle_and_concat"];
    shuffleConcatenateKernel = v5->_shuffleConcatenateKernel;
    v5->_shuffleConcatenateKernel = v12;

    v14 = [(FRCMetalBase *)v5 createKernel:@"gaussian_subsample"];
    gaussianSubsampleKernel = v5->_gaussianSubsampleKernel;
    v5->_gaussianSubsampleKernel = v14;

    v16 = [(FRCMetalBase *)v5 createKernel:@"blend_resisue_with_grid_output"];
    blendKernel = v5->_blendKernel;
    v5->_blendKernel = v16;

    v18 = [(FRCMetalBase *)v5 createKernel:@"warp_with_consistency_map"];
    featureBackwarpKernel = v5->_featureBackwarpKernel;
    v5->_featureBackwarpKernel = v18;

    v20 = [(FRCMetalBase *)v5 createKernel:@"padding_copy"];
    paddingKernel = v5->_paddingKernel;
    v5->_paddingKernel = v20;

    v22 = [(FRCMetalBase *)v5 createKernel:@"gaussian3x3_subsample"];
    gaussian3x3SubsampleKernel = v5->_gaussian3x3SubsampleKernel;
    v5->_gaussian3x3SubsampleKernel = v22;

    v24 = [(FRCMetalBase *)v5 createKernel:@"blend_two_layer_pyramid"];
    twoLayerBlendKernel = v5->_twoLayerBlendKernel;
    v5->_twoLayerBlendKernel = v24;

    v26 = [(FRCMetalBase *)v5 createKernel:@"bicubic_subsample"];
    bicubicSubsampleKernel = v5->_bicubicSubsampleKernel;
    v5->_bicubicSubsampleKernel = v26;

    if ([(MTLDevice *)v5->super._device supportsFamily:1008])
    {
      v5->_supportsSIMDShuffle = 1;
      v28 = @"gaussian3x3_filter_SIMD";
    }

    else if (v5->_supportsSIMDShuffle)
    {
      v28 = @"gaussian3x3_filter_SIMD";
    }

    else
    {
      v28 = @"gaussian3x3_filter";
    }

    v29 = [(FRCMetalBase *)v5 createKernel:v28];
    gaussian3x3FilterKernel = v5->_gaussian3x3FilterKernel;
    v5->_gaussian3x3FilterKernel = v29;

    v31 = [(MTLDevice *)v5->super._device newBufferWithLength:50 options:0];
    gaussianCoefficientBuffer = v5->_gaussianCoefficientBuffer;
    v5->_gaussianCoefficientBuffer = v31;

    contents = [(MTLBuffer *)v5->_gaussianCoefficientBuffer contents];
    *(contents + 48) = 10386;
    *contents = GaussianFilterCoeffients;
    *(contents + 16) = unk_24A8FF0B8;
    *(contents + 32) = xmmword_24A8FF0C8;
    v34 = [(MTLDevice *)v5->super._device newBufferWithLength:24 options:0];
    gaussian3x3CoefficientBuffer = v5->_gaussian3x3CoefficientBuffer;
    v5->_gaussian3x3CoefficientBuffer = v34;

    contents2 = [(MTLBuffer *)v5->_gaussian3x3CoefficientBuffer contents];
    *(contents2 + 16) = 12027;
    *contents2 = Gaussian3x3FilterCoeffients;
  }

  return v5;
}

- (void)createResiduePyramidFromBuffer:(__CVBuffer *)buffer toBuffer:(__CVBuffer *)toBuffer levels:(unint64_t)levels
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = createTexturesFromCVPixelBuffer(buffer, self->super._device, 1, 3uLL);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v9 = levels + 1;
  if (levels != -1)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = createTexturesFromCVPixelBuffer(toBuffer[v10], self->super._device, 1, 3uLL);
      v13 = *(&v22 + v10);
      *(&v22 + v10) = v12;

      v10 = v11;
      v14 = v9 > v11++;
    }

    while (v14);
    if (levels == 2)
    {
      v15 = createTexturesFromCVPixelBuffer(toBuffer[3], self->super._device, 1, 3uLL);
      v16 = *(&v23 + 1);
      *(&v23 + 1) = v15;
    }
  }

  v17 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer:v22];
  [v17 enqueue];
  [(Pyramid *)self encodeResiduePyramidToCommandBuffer:v17 fromTexture:v8 toTexture:&v22 levels:levels];
  [v17 commit];
  [v17 waitUntilCompleted];
  if (levels != -1)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      if (isBufferCopyNecessaryForCVtoTextureConversion([*(&v22 + v18) width], objc_msgSend(*(&v22 + v18), "height"), objc_msgSend(*(&v22 + v18), "arrayLength")))
      {
        copyTextureToBuffer(*(&v22 + v18), toBuffer[v18]);
      }

      v18 = v19;
      v14 = v9 > v19++;
    }

    while (v14);
  }

  for (i = 32; i != -8; i -= 8)
  {
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)encodeResiduePyramidToCommandBuffer:(id)buffer fromTexture:(id)texture toTexture:(const void *)toTexture levels:(unint64_t)levels
{
  bufferCopy = buffer;
  textureCopy = texture;
  v11 = textureCopy;
  switch(levels)
  {
    case 4uLL:
      [(Pyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:bufferCopy source:textureCopy destination:toTexture[4] clampToEdge:1];
      [(Pyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:bufferCopy source:toTexture[4] destination:toTexture[2] clampToEdge:0];
      [(Pyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:bufferCopy source:toTexture[2] destination:toTexture[3] clampToEdge:0];
      [(Pyramid *)self encodeResidueToCommandBuffer:bufferCopy base:v11 low:toTexture[4] destination:*toTexture];
      [(Pyramid *)self encodeResidueToCommandBuffer:bufferCopy base:toTexture[4] low:toTexture[2] destination:toTexture[1]];
      [(Pyramid *)self encodeResidueInplaceToCommandBuffer:bufferCopy base:toTexture[2] low:toTexture[3]];
      break;
    case 3uLL:
      v12 = textureCopy;
      height = [v12 height];
      if (height != [*toTexture height])
      {
        v14 = createTextures(self->super._device, [*toTexture width], objc_msgSend(*toTexture, "height"), 1, 3uLL);

        [(Pyramid *)self encodeAddBottomPaddingToCommandBuffer:bufferCopy source:v12 destination:v14];
        v12 = v14;
      }

      [(Pyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:bufferCopy source:v12 destination:toTexture[3] clampToEdge:0];
      [(Pyramid *)self encodeSubsampleTextureWith5x5GaussianToCommandBuffer:bufferCopy source:toTexture[3] destination:toTexture[2] clampToEdge:0];
      [(Pyramid *)self encodeResidueToCommandBuffer:bufferCopy base:v12 low:toTexture[3] destination:*toTexture];
      [(Pyramid *)self encodeResidueToCommandBuffer:bufferCopy base:toTexture[3] low:toTexture[2] destination:toTexture[1]];

      break;
    case 2uLL:
      [(Pyramid *)self encode3x3GaussianFilterToCommandBuffer:bufferCopy source:textureCopy destination:toTexture[1]];
      [(Pyramid *)self encodeBicubicSubsampleTextureToCommandBuffer:bufferCopy source:toTexture[1] destination:toTexture[2]];
      [(Pyramid *)self encode3x3GaussianFilterToCommandBuffer:bufferCopy source:toTexture[2] destination:toTexture[3]];
      [(Pyramid *)self encodeResidueToCommandBuffer:bufferCopy base:v11 low:toTexture[3] destination:toTexture[1]];
      break;
    default:
      [Pyramid encodeResiduePyramidToCommandBuffer:fromTexture:toTexture:levels:];
  }
}

- (void)encodeBicubicSubsampleTextureToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  width = [sourceCopy width];
  v18 = width / [destinationCopy width];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_bicubicSubsampleKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBytes:&v18 length:4 atIndex:0];
  v13 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v17[0] = v13;
  v17[1] = (height + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (void)encodeSubsampleTextureWith5x5GaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination clampToEdge:(BOOL)edge
{
  edgeCopy = edge;
  v10 = MEMORY[0x277CD6FD0];
  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  v14 = objc_alloc_init(v10);
  v15 = v14;
  if (edgeCopy)
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
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_gaussianSubsampleKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:self->_gaussianCoefficientBuffer offset:0 atIndex:0];
  [computeCommandEncoder setSamplerState:v17 atIndex:0];
  v19 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v23[0] = v19;
  v23[1] = (height + 15) >> 4;
  v23[2] = 1;
  v21 = vdupq_n_s64(0x10uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- (void)encodeSubsampleTextureWith3x3GaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_gaussian3x3SubsampleKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  contents = [(MTLBuffer *)self->_gaussian3x3CoefficientBuffer contents];
  width = [sourceCopy width];

  *(contents + 20) = width / [destinationCopy width];
  [computeCommandEncoder setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v13 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v17[0] = v13;
  v17[1] = (height + 15) >> 4;
  v17[2] = 1;
  v15 = vdupq_n_s64(0x10uLL);
  v16 = 1;
  [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];
}

- (void)encode3x3GaussianFilterToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_gaussian3x3FilterKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  [computeCommandEncoder setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v11 = ([destinationCopy width] + 3) >> 2;
  height = [destinationCopy height];

  v15[0] = v11;
  v15[1] = (height + 31) >> 5;
  v15[2] = 1;
  v13 = xmmword_24A8FF090;
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)encodeResidueToCommandBuffer:(id)buffer base:(id)base low:(id)low destination:(id)destination
{
  destinationCopy = destination;
  lowCopy = low;
  baseCopy = base;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_residueKernel];
  [computeCommandEncoder setTexture:baseCopy atIndex:0];
  [computeCommandEncoder setTexture:lowCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  width = [lowCopy width];

  v15 = width;
  width2 = [baseCopy width];

  v22 = v15 / width2;
  [computeCommandEncoder setBytes:&v22 length:4 atIndex:0];
  v17 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v21[0] = v17;
  v21[1] = (height + 15) >> 4;
  v21[2] = 1;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = 1;
  [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [computeCommandEncoder endEncoding];
}

- (void)encodeResidueInplaceToCommandBuffer:(id)buffer base:(id)base low:(id)low
{
  lowCopy = low;
  baseCopy = base;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_residueInplaceKernel];
  [computeCommandEncoder setTexture:baseCopy atIndex:0];
  [computeCommandEncoder setTexture:lowCopy atIndex:1];

  v11 = ([baseCopy width] + 15) >> 4;
  height = [baseCopy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)encodeShuffleToCommandBuffer:(id)buffer full:(id)full quarter:(id)quarter destination:(id)destination
{
  destinationCopy = destination;
  quarterCopy = quarter;
  fullCopy = full;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_shuffleConcatenateKernel];
  [computeCommandEncoder setTexture:fullCopy atIndex:0];

  [computeCommandEncoder setTexture:quarterCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  v14 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v18[0] = v14;
  v18[1] = (height + 15) >> 4;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)blendWarpedResidueForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward withGridNetOutput:(__CVBuffer *)output timeScale:(float)scale destination:(__CVBuffer *)destination callback:(id)callback
{
  callbackCopy = callback;
  v15 = createTexturesFromCVPixelBuffer(forward, self->super._device, 1, 3uLL);
  v16 = createTexturesFromCVPixelBuffer(backward, self->super._device, 1, 3uLL);
  v17 = createTexturesFromCVPixelBuffer(output, self->super._device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(destination, self->super._device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  *&v20 = scale;
  [(Pyramid *)self encodeLayerBlendToCommandBuffer:commandBuffer forwardResidue:v15 backwardResidue:v16 withBaseLayer:v17 timeScale:v18 destination:v20];
  if (callbackCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__Pyramid_blendWarpedResidueForward_backward_withGridNetOutput_timeScale_destination_callback___block_invoke;
    v21[3] = &unk_278FEA498;
    v22 = callbackCopy;
    [commandBuffer addCompletedHandler:v21];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)encodeLayerBlendToCommandBuffer:(id)buffer forwardResidue:(id)residue backwardResidue:(id)backwardResidue withBaseLayer:(id)layer timeScale:(float)scale destination:(id)destination
{
  scaleCopy = scale;
  destinationCopy = destination;
  layerCopy = layer;
  backwardResidueCopy = backwardResidue;
  residueCopy = residue;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_blendKernel];
  [computeCommandEncoder setTexture:residueCopy atIndex:0];

  [computeCommandEncoder setTexture:backwardResidueCopy atIndex:1];
  [computeCommandEncoder setTexture:layerCopy atIndex:2];

  [computeCommandEncoder setTexture:destinationCopy atIndex:3];
  [computeCommandEncoder setBytes:&scaleCopy length:4 atIndex:0];
  v18 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v22[0] = v18;
  v22[1] = (height + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)encodeFeatureBackwarpToCommandBuffer:(id)buffer feature:(id)feature forwardFlow:(id)flow backwardFlow:(id)backwardFlow timeScale:(float)scale destination:(id)destination
{
  scaleCopy = scale;
  destinationCopy = destination;
  backwardFlowCopy = backwardFlow;
  flowCopy = flow;
  featureCopy = feature;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_featureBackwarpKernel];
  [computeCommandEncoder setTexture:featureCopy atIndex:0];

  [computeCommandEncoder setTexture:flowCopy atIndex:1];
  [computeCommandEncoder setTexture:backwardFlowCopy atIndex:2];

  [computeCommandEncoder setTexture:destinationCopy atIndex:3];
  [computeCommandEncoder setBytes:&scaleCopy length:4 atIndex:0];
  v18 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v22[0] = v18;
  v22[1] = (height + 15) >> 4;
  v22[2] = 1;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = 1;
  [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:&v20];
  [computeCommandEncoder endEncoding];
}

- (void)encodeAddBottomPaddingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_paddingKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];

  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v11 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)encodeLayerBlendToCommandBuffer:(id)buffer baseLayer:(id)layer toDestination:(id)destination
{
  destinationCopy = destination;
  layerCopy = layer;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_twoLayerBlendKernel];
  [computeCommandEncoder setTexture:layerCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  width = [layerCopy width];

  v17 = width / [destinationCopy width];
  [computeCommandEncoder setBytes:&v17 length:4 atIndex:0];
  v12 = ([destinationCopy width] + 15) >> 4;
  height = [destinationCopy height];

  v16[0] = v12;
  v16[1] = (height + 15) >> 4;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

@end