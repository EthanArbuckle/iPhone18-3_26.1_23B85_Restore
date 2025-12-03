@interface Forwarp
- (BOOL)setupMetal;
- (Forwarp)initWithDevice:(id)device commmandQueue:(id)queue mode:(unint64_t)mode;
- (id)createBestBufferWidth:(unint64_t)width height:(unint64_t)height;
- (id)createOutputBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels;
- (void)allocateBuffersWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels bestBuffer:(id *)buffer outputBuffer:(id *)outputBuffer;
- (void)dealloc;
- (void)encodeBlendTexturesToCommandBuffer:(id)buffer firstWarpedTexture:(id)texture secondWarpedTexture:(id)warpedTexture forwardErrorMap:(id)map backwardErrorMap:(id)errorMap synthesizedTexture:(id)synthesizedTexture timeScale:(float)scale synthesizedImageWeight:(float)self0 destination:(id)self1;
- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second forwardErrorMap:(id)map backwardErrorMap:(id)errorMap forwarpConsistency:(id)consistency backwardConsistency:(id)backwardConsistency timeScale:(float)self0 destination:(id)self1;
- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second timeScale:(float)scale destination:(id)destination;
- (void)encodeErrorDownsampleToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeErrorMapDilationToCommandBuffer:(id)buffer forwardSource:(id)source backwardSource:(id)backwardSource forwardDestination:(id)destination backwardDestination:(id)backwardDestination minimumAdjacentHoleCount:(unsigned int)count maximumHoleValue:(float)value;
- (void)encodeErrorMapFilteringToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeErrorMapFilteringWithGaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodeInitialieBestToCommandBuffer:(id)buffer bestError:(id)error;
- (void)encodeLinearSplattingToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error splatBuffer:(id)splatBuffer outputTexture:(id)texture timeScale:(float)scale;
- (void)encodeNormalizationToCommandBuffer:(id)buffer fromBuffer:(id)fromBuffer toTexture:(id)texture inputSize:(id *)size;
- (void)encodeSplattingNormalizationToCommandBuffer:(id)buffer splattingBuffer:(id)splattingBuffer outputTexture:(id)texture;
- (void)encodeSplattingToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error outputBuffer:(id)outputBuffer timeScale:(float)scale;
- (void)encodeUpdateBestToCommandBuffer:(id)buffer flow:(id)flow error:(id)error timeScale:(float)scale bestError:(id)bestError;
- (void)encodeUpdateOutputToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)self0;
- (void)encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardErrorMap:(id)map backwardErrorMap:(id)errorMap forwarpConsistency:(id)self0 backwardConsistency:(id)self1 timeScale:(float)self2 destination:(id)self3;
- (void)updateBest:(id)best error:(id)error timeScale:(float)scale best:(id)a6;
@end

@implementation Forwarp

- (Forwarp)initWithDevice:(id)device commmandQueue:(id)queue mode:(unint64_t)mode
{
  v10.receiver = self;
  v10.super_class = Forwarp;
  v6 = [(FRCMetalBase *)&v10 initWithDevice:device commmandQueue:queue];
  v7 = v6;
  if (v6)
  {
    v6->_synthesisMode = mode;
    v6->_isLiteSynthesis = mode == 10;
    v8 = 0.1;
    if (mode == 10)
    {
      v8 = 0.5;
    }

    v6->_errorTolerance = v8;
    v6->_filterErrorMapByGaussian = 1;
    [(Forwarp *)v6 setupMetal];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Forwarp;
  [(Forwarp *)&v2 dealloc];
}

- (BOOL)setupMetal
{
  v3 = objc_opt_new();
  v4 = [(FRCMetalBase *)self createKernel:@"updateBest"];
  updateBest = self->_updateBest;
  self->_updateBest = v4;

  v49 = 256;
  v6 = [(MTLDevice *)self->super._device supportsFamily:1009];
  if (v6)
  {
    v7 = @"updateOutputFloat";
  }

  else
  {
    v7 = @"updateOutput";
  }

  if (v6)
  {
    v8 = @"convertFloatBuffer2Texture";
  }

  else
  {
    v8 = @"convertFixedPointBuffer2Texture";
  }

  [v3 setConstantValue:&v49 + 1 type:53 withName:@"fullWarpEnabled"];
  [v3 setConstantValue:&v49 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v9 = [(FRCMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputFullWarp = self->_updateOutputFullWarp;
  self->_updateOutputFullWarp = v9;

  LOBYTE(v49) = 1;
  [v3 setConstantValue:&v49 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v11 = [(FRCMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputFullWarpMinErrorOffset = self->_updateOutputFullWarpMinErrorOffset;
  self->_updateOutputFullWarpMinErrorOffset = v11;

  v49 = 0;
  [v3 setConstantValue:&v49 + 1 type:53 withName:@"fullWarpEnabled"];
  [v3 setConstantValue:&v49 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v13 = [(FRCMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputLiteWarp = self->_updateOutputLiteWarp;
  self->_updateOutputLiteWarp = v13;

  v15 = [(FRCMetalBase *)self createKernel:@"initializeBestBuffer"];
  initializeBest = self->_initializeBest;
  self->_initializeBest = v15;

  v17 = [(FRCMetalBase *)self createKernel:@"blendWarpedImagesWithErrorMap"];
  blendWarpedImages = self->_blendWarpedImages;
  self->_blendWarpedImages = v17;

  v48 = 0;
  [v3 setConstantValue:&v48 type:53 withName:@"outputErrorMask"];
  v19 = [(FRCMetalBase *)self createKernel:v8 constantValues:v3];
  convert2Texture = self->_convert2Texture;
  self->_convert2Texture = v19;

  v48 = 1;
  [v3 setConstantValue:&v48 type:53 withName:@"outputErrorMask"];
  v21 = [(FRCMetalBase *)self createKernel:v8 constantValues:v3];
  convert2TextureWithMask = self->_convert2TextureWithMask;
  self->_convert2TextureWithMask = v21;

  if ([(MTLDevice *)self->super._device supportsFamily:1008])
  {
    self->_supportsSIMDShuffle = 1;
    v23 = @"dualErrorMapDilationSIMD";
  }

  else if (self->_supportsSIMDShuffle)
  {
    v23 = @"dualErrorMapDilationSIMD";
  }

  else
  {
    v23 = @"dualErrorMapDilation";
  }

  v24 = [(FRCMetalBase *)self createKernel:v23];
  errorMapDilation = self->_errorMapDilation;
  self->_errorMapDilation = v24;

  synthesisMode = self->_synthesisMode;
  if (synthesisMode <= 1)
  {
    v27 = [(FRCMetalBase *)self createKernel:@"blendDCTexturesWithMask"];
    blendDCTexturesWithMasks = self->_blendDCTexturesWithMasks;
    self->_blendDCTexturesWithMasks = v27;

    synthesisMode = self->_synthesisMode;
  }

  if (synthesisMode == 2)
  {
    v29 = [(FRCMetalBase *)self createKernel:@"blendWarpedImageWithErrorMapAndFlowConsistency"];
    blendWarpedImagesWithMaskAndFlowConsistency = self->_blendWarpedImagesWithMaskAndFlowConsistency;
    self->_blendWarpedImagesWithMaskAndFlowConsistency = v29;

    v31 = [(FRCMetalBase *)self createKernel:@"blendWarpedImagesWithErrorMapTextures"];
    blendWarpedImagesWithMaskTextures = self->_blendWarpedImagesWithMaskTextures;
    self->_blendWarpedImagesWithMaskTextures = v31;
  }

  if (self->_filterErrorMapByGaussian)
  {
    if (self->_supportsSIMDShuffle)
    {
      v33 = @"filter_error_map_SIMD";
    }

    else
    {
      v33 = @"filter_error_map";
    }

    if (self->_supportsSIMDShuffle)
    {
      v34 = &OBJC_IVAR___Forwarp__gaussian3x3FilterSIMDKernel;
    }

    else
    {
      v34 = &OBJC_IVAR___Forwarp__gaussian3x3FilterKernel;
    }
  }

  else
  {
    v34 = &OBJC_IVAR___Forwarp__errorMapDownsampleKernel;
    v33 = @"downsample_error_map";
  }

  v35 = [(FRCMetalBase *)self createKernel:v33];
  v36 = *v34;
  v37 = *(&self->super.super.isa + v36);
  *(&self->super.super.isa + v36) = v35;

  v38 = self->_synthesisMode;
  if (v38 == 2)
  {
    [v3 setConstantValue:&self->_filterErrorMapByGaussian type:53 withName:@"filterErrorMapByGaussian"];
    v39 = [(FRCMetalBase *)self createKernel:@"spalatting" constantValues:v3];
    splattingKernel = self->_splattingKernel;
    self->_splattingKernel = v39;

    v41 = [(FRCMetalBase *)self createKernel:@"normalizeSplattedOutput"];
    splattingNormalizationKernel = self->_splattingNormalizationKernel;
    self->_splattingNormalizationKernel = v41;

    v38 = self->_synthesisMode;
  }

  if (v38 == 3)
  {
    v43 = [(FRCMetalBase *)self createKernel:@"warpAndBlendWithErrorMap"];
    warpAndBlendTextures = self->_warpAndBlendTextures;
    self->_warpAndBlendTextures = v43;

    v45 = [(FRCMetalBase *)self createKernel:@"warpAndBlendImageWithErrorAndFlowConsistency"];
    warpAndBlendTexturesWithConsistency = self->_warpAndBlendTexturesWithConsistency;
    self->_warpAndBlendTexturesWithConsistency = v45;
  }

  return 1;
}

- (id)createBestBufferWidth:(unint64_t)width height:(unint64_t)height
{
  v4 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * width * height + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v4;
}

- (id)createOutputBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) + width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) * channels) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (void)allocateBuffersWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels bestBuffer:(id *)buffer outputBuffer:(id *)outputBuffer
{
  *buffer = [Forwarp createBestBufferWidth:"createBestBufferWidth:height:" height:?];
  *outputBuffer = [(Forwarp *)self createOutputBufferWidth:width height:height channels:channels];
}

- (void)updateBest:(id)best error:(id)error timeScale:(float)scale best:(id)a6
{
  commandQueue = self->super._commandQueue;
  v11 = a6;
  errorCopy = error;
  bestCopy = best;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v14 = scale;
  [(Forwarp *)self encodeUpdateBestToCommandBuffer:commandBuffer flow:bestCopy error:errorCopy timeScale:v11 bestError:v14];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeInitialieBestToCommandBuffer:(id)buffer bestError:(id)error
{
  errorCopy = error;
  bufferCopy = buffer;
  v8 = [errorCopy length];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_initializeBest];
  [computeCommandEncoder setBuffer:errorCopy offset:0 atIndex:0];

  v13 = vdupq_n_s64(1uLL);
  v10 = xmmword_24A8FF448;
  v11 = 1;
  v12 = v8 >> 12;
  [computeCommandEncoder dispatchThreadgroups:&v12 threadsPerThreadgroup:&v10];
  [computeCommandEncoder endEncoding];
}

- (void)encodeUpdateBestToCommandBuffer:(id)buffer flow:(id)flow error:(id)error timeScale:(float)scale bestError:(id)bestError
{
  flowCopy = flow;
  errorCopy = error;
  bestErrorCopy = bestError;
  if (flowCopy && errorCopy)
  {
    bufferCopy = buffer;
    [(Forwarp *)self encodeInitialieBestToCommandBuffer:bufferCopy bestError:bestErrorCopy];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v17 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
      contents = [v17 contents];
      *contents = scale;
      *(contents + 4) = self->_isLiteSynthesis;
      [computeCommandEncoder setComputePipelineState:self->_updateBest];
      [computeCommandEncoder setTexture:flowCopy atIndex:0];
      [computeCommandEncoder setTexture:errorCopy atIndex:1];
      [computeCommandEncoder setBuffer:v17 offset:0 atIndex:0];
      [computeCommandEncoder setBuffer:bestErrorCopy offset:0 atIndex:1];
      v21[0] = ([errorCopy width] + 15) >> 4;
      v21[1] = ([errorCopy height] + 15) >> 4;
      v21[2] = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [computeCommandEncoder dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
      [computeCommandEncoder endEncoding];
    }
  }
}

- (void)encodeUpdateOutputToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)self0
{
  warpCopy = warp;
  inputCopy = input;
  flowCopy = flow;
  errorCopy = error;
  bestErrorCopy = bestError;
  outputCopy = output;
  if (inputCopy && flowCopy && errorCopy)
  {
    bufferCopy = buffer;
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    [blitCommandEncoder fillBuffer:outputCopy range:0 value:{objc_msgSend(outputCopy, "length"), 0}];
    [blitCommandEncoder endEncoding];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v25 = [(MTLDevice *)self->super._device newBufferWithLength:20 options:0];
      contents = [v25 contents];
      *contents = scale;
      isLiteSynthesis = self->_isLiteSynthesis;
      *(contents + 4) = warpCopy;
      *(contents + 8) = isLiteSynthesis;
      v28 = !self->_limitBilinearInterpolation;
      v29 = 0.0001;
      if (!self->_limitBilinearInterpolation)
      {
        v29 = 0.0;
      }

      *(contents + 12) = self->_errorTolerance;
      *(contents + 16) = v29;
      v30 = &OBJC_IVAR___Forwarp__updateOutputFullWarpMinErrorOffset;
      if (v28)
      {
        v30 = &OBJC_IVAR___Forwarp__updateOutputFullWarp;
      }

      if (!warpCopy)
      {
        v30 = &OBJC_IVAR___Forwarp__updateOutputLiteWarp;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v30)];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:flowCopy atIndex:1];
      [computeCommandEncoder setTexture:errorCopy atIndex:2];
      [computeCommandEncoder setBuffer:v25 offset:0 atIndex:0];
      [computeCommandEncoder setBuffer:bestErrorCopy offset:0 atIndex:1];
      [computeCommandEncoder setBuffer:outputCopy offset:0 atIndex:2];
      v33[0] = ([errorCopy width] + 15) >> 4;
      v33[1] = ([errorCopy height] + 15) >> 4;
      v33[2] = 1;
      v31 = vdupq_n_s64(0x10uLL);
      v32 = 1;
      [computeCommandEncoder dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
      [computeCommandEncoder endEncoding];
    }
  }
}

- (void)encodeNormalizationToCommandBuffer:(id)buffer fromBuffer:(id)fromBuffer toTexture:(id)texture inputSize:(id *)size
{
  fromBufferCopy = fromBuffer;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v13 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    contents = [v13 contents];
    var0 = size->var0;
    *contents = size->var0;
    LODWORD(v16) = var0;
    HIDWORD(v16) = size->var1;
    *contents = v16;
    if (self->_createOcclusionMask)
    {
      v17 = &OBJC_IVAR___Forwarp__convert2TextureWithMask;
    }

    else
    {
      v17 = &OBJC_IVAR___Forwarp__convert2Texture;
    }

    [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v17)];
    [computeCommandEncoder setBuffer:fromBufferCopy offset:0 atIndex:0];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setBuffer:v13 offset:0 atIndex:1];
    v20[0] = ([textureCopy width] + 15) >> 4;
    v20[1] = ([textureCopy height] + 15) >> 4;
    v20[2] = 1;
    v18 = vdupq_n_s64(0x10uLL);
    v19 = 1;
    [computeCommandEncoder dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second timeScale:(float)scale destination:(id)destination
{
  firstCopy = first;
  secondCopy = second;
  scaleCopy = scale;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v16 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_blendWarpedImages];
    [v16 setTexture:firstCopy atIndex:0];
    [v16 setTexture:secondCopy atIndex:1];
    [v16 setTexture:destinationCopy atIndex:2];
    [v16 setBytes:&scaleCopy length:4 atIndex:0];
    v19[0] = ([destinationCopy width] + 15) >> 4;
    v19[1] = ([destinationCopy height] + 15) >> 4;
    v19[2] = 1;
    v17 = vdupq_n_s64(0x10uLL);
    v18 = 1;
    [v16 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
    [v16 endEncoding];
  }
}

- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second forwardErrorMap:(id)map backwardErrorMap:(id)errorMap forwarpConsistency:(id)consistency backwardConsistency:(id)backwardConsistency timeScale:(float)self0 destination:(id)self1
{
  firstCopy = first;
  secondCopy = second;
  mapCopy = map;
  errorMapCopy = errorMap;
  consistencyCopy = consistency;
  backwardConsistencyCopy = backwardConsistency;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    *v33 = scale;
    width = [mapCopy width];
    *&v33[2] = width / [firstCopy width];
    width2 = [firstCopy width];
    *&v33[1] = width2 / [mapCopy width];
    [computeCommandEncoder setBytes:v33 length:12 atIndex:0];
    [computeCommandEncoder setTexture:firstCopy atIndex:0];
    [computeCommandEncoder setTexture:secondCopy atIndex:1];
    [computeCommandEncoder setTexture:mapCopy atIndex:2];
    [computeCommandEncoder setTexture:errorMapCopy atIndex:3];
    v28 = &OBJC_IVAR___Forwarp__blendWarpedImagesWithMaskTextures;
    v29 = 4;
    if (consistencyCopy && backwardConsistencyCopy)
    {
      [computeCommandEncoder setTexture:consistencyCopy atIndex:4];
      [computeCommandEncoder setTexture:backwardConsistencyCopy atIndex:5];
      v28 = &OBJC_IVAR___Forwarp__blendWarpedImagesWithMaskAndFlowConsistency;
      v29 = 6;
    }

    [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v28)];
    [computeCommandEncoder setTexture:destinationCopy atIndex:v29];
    v32[0] = ([destinationCopy width] + 15) >> 4;
    v32[1] = ([destinationCopy height] + 15) >> 4;
    v32[2] = 1;
    v30 = vdupq_n_s64(0x10uLL);
    v31 = 1;
    [computeCommandEncoder dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeErrorMapDilationToCommandBuffer:(id)buffer forwardSource:(id)source backwardSource:(id)backwardSource forwardDestination:(id)destination backwardDestination:(id)backwardDestination minimumAdjacentHoleCount:(unsigned int)count maximumHoleValue:(float)value
{
  sourceCopy = source;
  backwardSourceCopy = backwardSource;
  destinationCopy = destination;
  backwardDestinationCopy = backwardDestination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    v21 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    contents = [v21 contents];
    *(contents + 4) = value;
    *contents = count;
    [computeCommandEncoder setComputePipelineState:self->_errorMapDilation];
    [computeCommandEncoder setTexture:sourceCopy atIndex:0];
    [computeCommandEncoder setTexture:backwardSourceCopy atIndex:1];
    [computeCommandEncoder setTexture:destinationCopy atIndex:2];
    [computeCommandEncoder setTexture:backwardDestinationCopy atIndex:3];
    [computeCommandEncoder setBuffer:v21 offset:0 atIndex:0];
    supportsSIMDShuffle = self->_supportsSIMDShuffle;
    width = [sourceCopy width];
    v25 = !supportsSIMDShuffle;
    if (supportsSIMDShuffle)
    {
      v26 = 4;
    }

    else
    {
      v26 = 16;
    }

    if (v25)
    {
      v27 = 16;
    }

    else
    {
      v27 = 32;
    }

    if (v25)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v25)
    {
      v29 = 4;
    }

    else
    {
      v29 = 5;
    }

    v31[0] = (width + v26 - 1) >> v28;
    v31[1] = (v27 + [sourceCopy height] - 1) >> v29;
    v31[2] = 1;
    v30[0] = v26;
    v30[1] = v27;
    v30[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v31 threadsPerThreadgroup:v30];
    [computeCommandEncoder endEncoding];
  }
}

- (void)encodeBlendTexturesToCommandBuffer:(id)buffer firstWarpedTexture:(id)texture secondWarpedTexture:(id)warpedTexture forwardErrorMap:(id)map backwardErrorMap:(id)errorMap synthesizedTexture:(id)synthesizedTexture timeScale:(float)scale synthesizedImageWeight:(float)self0 destination:(id)self1
{
  textureCopy = texture;
  warpedTextureCopy = warpedTexture;
  mapCopy = map;
  errorMapCopy = errorMap;
  synthesizedTextureCopy = synthesizedTexture;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v26 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_blendDCTexturesWithMasks];
    [v26 setTexture:textureCopy atIndex:0];
    [v26 setTexture:warpedTextureCopy atIndex:1];
    [v26 setTexture:mapCopy atIndex:2];
    [v26 setTexture:errorMapCopy atIndex:3];
    [v26 setTexture:synthesizedTextureCopy atIndex:4];
    [v26 setTexture:destinationCopy atIndex:5];
    *v30 = scale;
    *&v30[1] = weight;
    [v26 setBytes:v30 length:8 atIndex:0];
    v29[0] = ([destinationCopy width] + 15) >> 4;
    v29[1] = ([destinationCopy height] + 15) >> 4;
    v29[2] = 1;
    v27 = vdupq_n_s64(0x10uLL);
    v28 = 1;
    [v26 dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
    [v26 endEncoding];
  }
}

- (void)encodeErrorMapFilteringToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  if (self->_filterErrorMapByGaussian)
  {
    [(Forwarp *)self encodeErrorMapFilteringWithGaussianToCommandBuffer:buffer source:source destination:destination];
  }

  else
  {
    [(Forwarp *)self encodeErrorDownsampleToCommandBuffer:buffer source:source destination:destination];
  }
}

- (void)encodeErrorMapFilteringWithGaussianToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
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
    *(contents + 16) = 11087;
    *contents = Gaussian3x3FilterCoeffients_0;
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v15 = computeCommandEncoder;
  if (self->_supportsSIMDShuffle)
  {
    v16 = &OBJC_IVAR___Forwarp__gaussian3x3FilterSIMDKernel;
  }

  else
  {
    v16 = &OBJC_IVAR___Forwarp__gaussian3x3FilterKernel;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
  [v15 setTexture:sourceCopy atIndex:0];
  [v15 setTexture:destinationCopy atIndex:1];
  [v15 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v19[0] = ([destinationCopy width] + 3) >> 2;
  v19[1] = ([destinationCopy height] + 31) >> 5;
  v19[2] = 1;
  v17 = xmmword_24A8FF090;
  v18 = 1;
  [v15 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v15 endEncoding];
}

- (void)encodeErrorDownsampleToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  destinationCopy = destination;
  sourceCopy = source;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_errorMapDownsampleKernel];
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

- (void)encodeLinearSplattingToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error splatBuffer:(id)splatBuffer outputTexture:(id)texture timeScale:(float)scale
{
  textureCopy = texture;
  splatBufferCopy = splatBuffer;
  bufferCopy = buffer;
  *&v18 = scale;
  [(Forwarp *)self encodeSplattingToCommandBuffer:bufferCopy input:input flow:flow error:error outputBuffer:splatBufferCopy timeScale:v18];
  [(Forwarp *)self encodeSplattingNormalizationToCommandBuffer:bufferCopy splattingBuffer:splatBufferCopy outputTexture:textureCopy];
}

- (void)encodeSplattingToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error outputBuffer:(id)outputBuffer timeScale:(float)scale
{
  outputBufferCopy = outputBuffer;
  errorCopy = error;
  flowCopy = flow;
  inputCopy = input;
  bufferCopy = buffer;
  blitCommandEncoder = [bufferCopy blitCommandEncoder];
  [blitCommandEncoder fillBuffer:outputBufferCopy range:0 value:{objc_msgSend(outputBufferCopy, "length"), 0}];
  [blitCommandEncoder endEncoding];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  v21 = [(MTLDevice *)self->super._device newBufferWithLength:20 options:0];
  contents = [v21 contents];
  *contents = scale;
  contents[3] = self->_errorTolerance;
  [computeCommandEncoder setComputePipelineState:self->_splattingKernel];
  [computeCommandEncoder setTexture:inputCopy atIndex:0];
  [computeCommandEncoder setTexture:flowCopy atIndex:1];

  [computeCommandEncoder setTexture:errorCopy atIndex:2];
  [computeCommandEncoder setBuffer:v21 offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:outputBufferCopy offset:0 atIndex:1];

  v23 = ([inputCopy width] + 15) >> 4;
  height = [inputCopy height];

  v27[0] = v23;
  v27[1] = (height + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [computeCommandEncoder endEncoding];
}

- (void)encodeSplattingNormalizationToCommandBuffer:(id)buffer splattingBuffer:(id)splattingBuffer outputTexture:(id)texture
{
  textureCopy = texture;
  splattingBufferCopy = splattingBuffer;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_splattingNormalizationKernel];
  [computeCommandEncoder setBuffer:splattingBufferCopy offset:0 atIndex:0];

  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  v11 = ([textureCopy width] + 15) >> 4;
  height = [textureCopy height];

  v15[0] = v11;
  v15[1] = (height + 15) >> 4;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
  [computeCommandEncoder endEncoding];
}

- (void)encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardErrorMap:(id)map backwardErrorMap:(id)errorMap forwarpConsistency:(id)self0 backwardConsistency:(id)self1 timeScale:(float)self2 destination:(id)self3
{
  firstCopy = first;
  secondCopy = second;
  flowCopy = flow;
  backwardFlowCopy = backwardFlow;
  mapCopy = map;
  errorMapCopy = errorMap;
  consistencyCopy = consistency;
  backwardConsistencyCopy = backwardConsistency;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  if (computeCommandEncoder)
  {
    *v38 = scale;
    width = [mapCopy width];
    *&v38[2] = width / [firstCopy width];
    width2 = [firstCopy width];
    *&v38[1] = width2 / [mapCopy width];
    [computeCommandEncoder setBytes:v38 length:12 atIndex:0];
    [computeCommandEncoder setTexture:firstCopy atIndex:0];
    v33 = secondCopy;
    [computeCommandEncoder setTexture:secondCopy atIndex:1];
    [computeCommandEncoder setTexture:flowCopy atIndex:2];
    [computeCommandEncoder setTexture:backwardFlowCopy atIndex:3];
    [computeCommandEncoder setTexture:mapCopy atIndex:4];
    [computeCommandEncoder setTexture:errorMapCopy atIndex:5];
    v31 = &OBJC_IVAR___Forwarp__warpAndBlendTextures;
    v32 = 6;
    if (consistencyCopy && backwardConsistencyCopy)
    {
      [computeCommandEncoder setTexture:consistencyCopy atIndex:6];
      [computeCommandEncoder setTexture:backwardConsistencyCopy atIndex:7];
      v31 = &OBJC_IVAR___Forwarp__warpAndBlendTexturesWithConsistency;
      v32 = 8;
    }

    [computeCommandEncoder setTexture:destinationCopy atIndex:v32];
    [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v31)];
    v37[0] = ([destinationCopy width] + 15) >> 4;
    v37[1] = ([destinationCopy height] + 15) >> 4;
    v37[2] = 1;
    v35 = vdupq_n_s64(0x10uLL);
    v36 = 1;
    [computeCommandEncoder dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
    [computeCommandEncoder endEncoding];
    secondCopy = v33;
  }
}

@end