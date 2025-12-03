@interface OFForwarp
- (BOOL)setupMetal;
- (OFForwarp)initWithDevice:(id)device commmandQueue:(id)queue mode:(unint64_t)mode;
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
- (void)encodeToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)self0 destination:(id)self1;
- (void)encodeToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError outputBuffer:(id)self0;
- (void)encodeUpdateBestToCommandBuffer:(id)buffer flow:(id)flow error:(id)error timeScale:(float)scale bestError:(id)bestError;
- (void)encodeUpdateOutputToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)self0;
- (void)encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:(id)buffer first:(id)first second:(id)second forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwardErrorMap:(id)map backwardErrorMap:(id)errorMap forwarpConsistency:(id)self0 backwardConsistency:(id)self1 timeScale:(float)self2 destination:(id)self3;
- (void)updateBest:(id)best error:(id)error timeScale:(float)scale best:(id)a6;
- (void)updateOutput:(id)output flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)a9;
@end

@implementation OFForwarp

- (OFForwarp)initWithDevice:(id)device commmandQueue:(id)queue mode:(unint64_t)mode
{
  v13.receiver = self;
  v13.super_class = OFForwarp;
  v6 = [(VEMetalBase *)&v13 initWithDevice:device commmandQueue:queue];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
    v10 = [(MTLDevice *)v6->super._device newLibraryWithURL:v9 error:0];
    mtlLibrary = v6->super._mtlLibrary;
    v6->super._mtlLibrary = v10;

    v6->_synthesisMode = mode;
    v6->_errorTolerance = 0.1;
    v6->_filterErrorMapByGaussian = 1;
    [(OFForwarp *)v6 setupMetal];
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFForwarp;
  [(OFForwarp *)&v2 dealloc];
}

- (BOOL)setupMetal
{
  v3 = objc_opt_new();
  v4 = [(VEMetalBase *)self createKernel:@"updateBest"];
  updateBest = self->_updateBest;
  self->_updateBest = v4;

  v46 = 256;
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

  [v3 setConstantValue:&v46 + 1 type:53 withName:@"fullWarpEnabled"];
  [v3 setConstantValue:&v46 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v9 = [(VEMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputFullWarp = self->_updateOutputFullWarp;
  self->_updateOutputFullWarp = v9;

  LOBYTE(v46) = 1;
  [v3 setConstantValue:&v46 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v11 = [(VEMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputFullWarpMinErrorOffset = self->_updateOutputFullWarpMinErrorOffset;
  self->_updateOutputFullWarpMinErrorOffset = v11;

  v46 = 0;
  [v3 setConstantValue:&v46 + 1 type:53 withName:@"fullWarpEnabled"];
  [v3 setConstantValue:&v46 type:53 withName:@"offsetPixelAlignedPositionWeight"];
  v13 = [(VEMetalBase *)self createKernel:v7 constantValues:v3];
  updateOutputLiteWarp = self->_updateOutputLiteWarp;
  self->_updateOutputLiteWarp = v13;

  v15 = [(VEMetalBase *)self createKernel:@"initializeBestBuffer"];
  initializeBest = self->_initializeBest;
  self->_initializeBest = v15;

  v17 = [(VEMetalBase *)self createKernel:@"blendWarpedImagesWithErrorMap"];
  blendWarpedImages = self->_blendWarpedImages;
  self->_blendWarpedImages = v17;

  v45 = 0;
  [v3 setConstantValue:&v45 type:53 withName:@"outputErrorMask"];
  v19 = [(VEMetalBase *)self createKernel:v8 constantValues:v3];
  convert2Texture = self->_convert2Texture;
  self->_convert2Texture = v19;

  v45 = 1;
  [v3 setConstantValue:&v45 type:53 withName:@"outputErrorMask"];
  v21 = [(VEMetalBase *)self createKernel:v8 constantValues:v3];
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

  v24 = [(VEMetalBase *)self createKernel:v23];
  errorMapDilation = self->_errorMapDilation;
  self->_errorMapDilation = v24;

  if (self->_synthesisMode == 2)
  {
    v26 = [(VEMetalBase *)self createKernel:@"blendWarpedImageWithErrorMapAndFlowConsistency"];
    blendWarpedImagesWithMaskAndFlowConsistency = self->_blendWarpedImagesWithMaskAndFlowConsistency;
    self->_blendWarpedImagesWithMaskAndFlowConsistency = v26;

    v28 = [(VEMetalBase *)self createKernel:@"blendWarpedImagesWithErrorMapTextures"];
    blendWarpedImagesWithMaskTextures = self->_blendWarpedImagesWithMaskTextures;
    self->_blendWarpedImagesWithMaskTextures = v28;
  }

  if (self->_filterErrorMapByGaussian)
  {
    if (self->_supportsSIMDShuffle)
    {
      v30 = @"filter_error_map_SIMD";
    }

    else
    {
      v30 = @"filter_error_map";
    }

    if (self->_supportsSIMDShuffle)
    {
      v31 = &OBJC_IVAR___OFForwarp__gaussian3x3FilterSIMDKernel;
    }

    else
    {
      v31 = &OBJC_IVAR___OFForwarp__gaussian3x3FilterKernel;
    }
  }

  else
  {
    v31 = &OBJC_IVAR___OFForwarp__errorMapDownsampleKernel;
    v30 = @"downsample_error_map";
  }

  v32 = [(VEMetalBase *)self createKernel:v30];
  v33 = *v31;
  v34 = *(&self->super.super.isa + v33);
  *(&self->super.super.isa + v33) = v32;

  synthesisMode = self->_synthesisMode;
  if (synthesisMode == 2)
  {
    [v3 setConstantValue:&self->_filterErrorMapByGaussian type:53 withName:@"filterErrorMapByGaussian"];
    v36 = [(VEMetalBase *)self createKernel:@"spalatting" constantValues:v3];
    splattingKernel = self->_splattingKernel;
    self->_splattingKernel = v36;

    v38 = [(VEMetalBase *)self createKernel:@"normalizeSplattedOutput"];
    splattingNormalizationKernel = self->_splattingNormalizationKernel;
    self->_splattingNormalizationKernel = v38;

    synthesisMode = self->_synthesisMode;
  }

  if (synthesisMode == 3)
  {
    v40 = [(VEMetalBase *)self createKernel:@"warpAndBlendWithErrorMap"];
    warpAndBlendTextures = self->_warpAndBlendTextures;
    self->_warpAndBlendTextures = v40;

    v42 = [(VEMetalBase *)self createKernel:@"warpAndBlendImageWithErrorAndFlowConsistency"];
    warpAndBlendTexturesWithConsistency = self->_warpAndBlendTexturesWithConsistency;
    self->_warpAndBlendTexturesWithConsistency = v42;
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
  *buffer = [OFForwarp createBestBufferWidth:"createBestBufferWidth:height:" height:?];
  *outputBuffer = [(OFForwarp *)self createOutputBufferWidth:width height:height channels:channels];
}

- (void)updateBest:(id)best error:(id)error timeScale:(float)scale best:(id)a6
{
  commandQueue = self->super._commandQueue;
  v11 = a6;
  errorCopy = error;
  bestCopy = best;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v14 = scale;
  [(OFForwarp *)self encodeUpdateBestToCommandBuffer:commandBuffer flow:bestCopy error:errorCopy timeScale:v11 bestError:v14];

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
  v10 = xmmword_2487C37B0;
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
    [(OFForwarp *)self encodeInitialieBestToCommandBuffer:bufferCopy bestError:bestErrorCopy];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];

    if (computeCommandEncoder)
    {
      v17 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
      contents = [v17 contents];
      *contents = scale;
      *(contents + 4) = 0;
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

- (void)updateOutput:(id)output flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)a9
{
  warpCopy = warp;
  commandQueue = self->super._commandQueue;
  v17 = a9;
  bestErrorCopy = bestError;
  errorCopy = error;
  flowCopy = flow;
  outputCopy = output;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v22 = scale;
  [(OFForwarp *)self encodeUpdateOutputToCommandBuffer:commandBuffer input:outputCopy flow:flowCopy error:errorCopy timeScale:warpCopy fullWarp:bestErrorCopy bestError:v22 output:v17];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
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
      *(contents + 4) = warpCopy;
      *(contents + 8) = 0;
      v27 = !self->_limitBilinearInterpolation;
      v28 = 0.0001;
      if (!self->_limitBilinearInterpolation)
      {
        v28 = 0.0;
      }

      *(contents + 12) = self->_errorTolerance;
      *(contents + 16) = v28;
      v29 = &OBJC_IVAR___OFForwarp__updateOutputFullWarpMinErrorOffset;
      if (v27)
      {
        v29 = &OBJC_IVAR___OFForwarp__updateOutputFullWarp;
      }

      if (!warpCopy)
      {
        v29 = &OBJC_IVAR___OFForwarp__updateOutputLiteWarp;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v29)];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:flowCopy atIndex:1];
      [computeCommandEncoder setTexture:errorCopy atIndex:2];
      [computeCommandEncoder setBuffer:v25 offset:0 atIndex:0];
      [computeCommandEncoder setBuffer:bestErrorCopy offset:0 atIndex:1];
      [computeCommandEncoder setBuffer:outputCopy offset:0 atIndex:2];
      v32[0] = ([errorCopy width] + 15) >> 4;
      v32[1] = ([errorCopy height] + 15) >> 4;
      v32[2] = 1;
      v30 = vdupq_n_s64(0x10uLL);
      v31 = 1;
      [computeCommandEncoder dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
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
      v17 = &OBJC_IVAR___OFForwarp__convert2TextureWithMask;
    }

    else
    {
      v17 = &OBJC_IVAR___OFForwarp__convert2Texture;
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

- (void)encodeToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError outputBuffer:(id)self0
{
  warpCopy = warp;
  bufferCopy = buffer;
  inputCopy = input;
  flowCopy = flow;
  errorCopy = error;
  bestErrorCopy = bestError;
  outputBufferCopy = outputBuffer;
  if (warpCopy)
  {
    *&v22 = scale;
    [(OFForwarp *)self encodeUpdateBestToCommandBuffer:bufferCopy flow:flowCopy error:errorCopy timeScale:bestErrorCopy bestError:v22];
  }

  *&v22 = scale;
  [(OFForwarp *)self encodeUpdateOutputToCommandBuffer:bufferCopy input:inputCopy flow:flowCopy error:errorCopy timeScale:warpCopy fullWarp:bestErrorCopy bestError:v22 output:outputBufferCopy];
}

- (void)encodeToCommandBuffer:(id)buffer input:(id)input flow:(id)flow error:(id)error timeScale:(float)scale fullWarp:(BOOL)warp bestError:(id)bestError output:(id)self0 destination:(id)self1
{
  warpCopy = warp;
  bufferCopy = buffer;
  inputCopy = input;
  flowCopy = flow;
  errorCopy = error;
  bestErrorCopy = bestError;
  outputCopy = output;
  destinationCopy = destination;
  v26 = destinationCopy;
  if (inputCopy && flowCopy && errorCopy && destinationCopy)
  {
    *&v25 = scale;
    if (self->_linearSplatting)
    {
      [(OFForwarp *)self encodeLinearSplattingToCommandBuffer:bufferCopy input:inputCopy flow:flowCopy error:errorCopy splatBuffer:outputCopy outputTexture:destinationCopy timeScale:v25];
    }

    else
    {
      [(OFForwarp *)self encodeToCommandBuffer:bufferCopy input:inputCopy flow:flowCopy error:errorCopy timeScale:warpCopy fullWarp:bestErrorCopy bestError:v25 outputBuffer:outputCopy];
      v28[0] = [inputCopy width];
      v28[1] = [inputCopy height];
      v28[2] = [inputCopy depth];
      [(OFForwarp *)self encodeNormalizationToCommandBuffer:bufferCopy fromBuffer:outputCopy toTexture:v26 inputSize:v28];
    }
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v27 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [OFForwarp encodeToCommandBuffer:v27 input:? flow:? error:? timeScale:? fullWarp:? bestError:? output:? destination:?];
    }
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
    v28 = &OBJC_IVAR___OFForwarp__blendWarpedImagesWithMaskTextures;
    v29 = 4;
    if (consistencyCopy && backwardConsistencyCopy)
    {
      [computeCommandEncoder setTexture:consistencyCopy atIndex:4];
      [computeCommandEncoder setTexture:backwardConsistencyCopy atIndex:5];
      v28 = &OBJC_IVAR___OFForwarp__blendWarpedImagesWithMaskAndFlowConsistency;
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
    [(OFForwarp *)self encodeErrorMapFilteringWithGaussianToCommandBuffer:buffer source:source destination:destination];
  }

  else
  {
    [(OFForwarp *)self encodeErrorDownsampleToCommandBuffer:buffer source:source destination:destination];
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
    *contents = Gaussian3x3FilterCoeffients;
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v15 = computeCommandEncoder;
  if (self->_supportsSIMDShuffle)
  {
    v16 = &OBJC_IVAR___OFForwarp__gaussian3x3FilterSIMDKernel;
  }

  else
  {
    v16 = &OBJC_IVAR___OFForwarp__gaussian3x3FilterKernel;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
  [v15 setTexture:sourceCopy atIndex:0];
  [v15 setTexture:destinationCopy atIndex:1];
  [v15 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v19[0] = ([destinationCopy width] + 3) >> 2;
  v19[1] = ([destinationCopy height] + 31) >> 5;
  v19[2] = 1;
  v17 = xmmword_2487C37A0;
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
  [(OFForwarp *)self encodeSplattingToCommandBuffer:bufferCopy input:input flow:flow error:error outputBuffer:splatBufferCopy timeScale:v18];
  [(OFForwarp *)self encodeSplattingNormalizationToCommandBuffer:bufferCopy splattingBuffer:splatBufferCopy outputTexture:textureCopy];
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
    v31 = &OBJC_IVAR___OFForwarp__warpAndBlendTextures;
    v32 = 6;
    if (consistencyCopy && backwardConsistencyCopy)
    {
      [computeCommandEncoder setTexture:consistencyCopy atIndex:6];
      [computeCommandEncoder setTexture:backwardConsistencyCopy atIndex:7];
      v31 = &OBJC_IVAR___OFForwarp__warpAndBlendTexturesWithConsistency;
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