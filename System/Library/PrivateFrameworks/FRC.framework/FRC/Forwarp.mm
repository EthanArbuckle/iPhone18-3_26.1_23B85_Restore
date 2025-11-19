@interface Forwarp
- (BOOL)setupMetal;
- (Forwarp)initWithDevice:(id)a3 commmandQueue:(id)a4 mode:(unint64_t)a5;
- (id)createBestBufferWidth:(unint64_t)a3 height:(unint64_t)a4;
- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (void)allocateBuffersWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5 bestBuffer:(id *)a6 outputBuffer:(id *)a7;
- (void)dealloc;
- (void)encodeBlendTexturesToCommandBuffer:(id)a3 firstWarpedTexture:(id)a4 secondWarpedTexture:(id)a5 forwardErrorMap:(id)a6 backwardErrorMap:(id)a7 synthesizedTexture:(id)a8 timeScale:(float)a9 synthesizedImageWeight:(float)a10 destination:(id)a11;
- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 forwardErrorMap:(id)a6 backwardErrorMap:(id)a7 forwarpConsistency:(id)a8 backwardConsistency:(id)a9 timeScale:(float)a10 destination:(id)a11;
- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 timeScale:(float)a6 destination:(id)a7;
- (void)encodeErrorDownsampleToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeErrorMapDilationToCommandBuffer:(id)a3 forwardSource:(id)a4 backwardSource:(id)a5 forwardDestination:(id)a6 backwardDestination:(id)a7 minimumAdjacentHoleCount:(unsigned int)a8 maximumHoleValue:(float)a9;
- (void)encodeErrorMapFilteringToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeErrorMapFilteringWithGaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodeInitialieBestToCommandBuffer:(id)a3 bestError:(id)a4;
- (void)encodeLinearSplattingToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 splatBuffer:(id)a7 outputTexture:(id)a8 timeScale:(float)a9;
- (void)encodeNormalizationToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6;
- (void)encodeSplattingNormalizationToCommandBuffer:(id)a3 splattingBuffer:(id)a4 outputTexture:(id)a5;
- (void)encodeSplattingToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 outputBuffer:(id)a7 timeScale:(float)a8;
- (void)encodeUpdateBestToCommandBuffer:(id)a3 flow:(id)a4 error:(id)a5 timeScale:(float)a6 bestError:(id)a7;
- (void)encodeUpdateOutputToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 timeScale:(float)a7 fullWarp:(BOOL)a8 bestError:(id)a9 output:(id)a10;
- (void)encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 forwardFlow:(id)a6 backwardFlow:(id)a7 forwardErrorMap:(id)a8 backwardErrorMap:(id)a9 forwarpConsistency:(id)a10 backwardConsistency:(id)a11 timeScale:(float)a12 destination:(id)a13;
- (void)updateBest:(id)a3 error:(id)a4 timeScale:(float)a5 best:(id)a6;
@end

@implementation Forwarp

- (Forwarp)initWithDevice:(id)a3 commmandQueue:(id)a4 mode:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = Forwarp;
  v6 = [(FRCMetalBase *)&v10 initWithDevice:a3 commmandQueue:a4];
  v7 = v6;
  if (v6)
  {
    v6->_synthesisMode = a5;
    v6->_isLiteSynthesis = a5 == 10;
    v8 = 0.1;
    if (a5 == 10)
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

- (id)createBestBufferWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v4 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * a3 * a4 + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v4;
}

- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (void)allocateBuffersWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5 bestBuffer:(id *)a6 outputBuffer:(id *)a7
{
  *a6 = [Forwarp createBestBufferWidth:"createBestBufferWidth:height:" height:?];
  *a7 = [(Forwarp *)self createOutputBufferWidth:a3 height:a4 channels:a5];
}

- (void)updateBest:(id)a3 error:(id)a4 timeScale:(float)a5 best:(id)a6
{
  commandQueue = self->super._commandQueue;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v15 = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v14 = a5;
  [(Forwarp *)self encodeUpdateBestToCommandBuffer:v15 flow:v13 error:v12 timeScale:v11 bestError:v14];

  [v15 commit];
  [v15 waitUntilCompleted];
}

- (void)encodeInitialieBestToCommandBuffer:(id)a3 bestError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 length];
  v9 = [v7 computeCommandEncoder];

  [v9 setComputePipelineState:self->_initializeBest];
  [v9 setBuffer:v6 offset:0 atIndex:0];

  v13 = vdupq_n_s64(1uLL);
  v10 = xmmword_24A8FF448;
  v11 = 1;
  v12 = v8 >> 12;
  [v9 dispatchThreadgroups:&v12 threadsPerThreadgroup:&v10];
  [v9 endEncoding];
}

- (void)encodeUpdateBestToCommandBuffer:(id)a3 flow:(id)a4 error:(id)a5 timeScale:(float)a6 bestError:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v12 && v13)
  {
    v15 = a3;
    [(Forwarp *)self encodeInitialieBestToCommandBuffer:v15 bestError:v14];
    v16 = [v15 computeCommandEncoder];

    if (v16)
    {
      v17 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
      v18 = [v17 contents];
      *v18 = a6;
      *(v18 + 4) = self->_isLiteSynthesis;
      [v16 setComputePipelineState:self->_updateBest];
      [v16 setTexture:v12 atIndex:0];
      [v16 setTexture:v13 atIndex:1];
      [v16 setBuffer:v17 offset:0 atIndex:0];
      [v16 setBuffer:v14 offset:0 atIndex:1];
      v21[0] = ([v13 width] + 15) >> 4;
      v21[1] = ([v13 height] + 15) >> 4;
      v21[2] = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [v16 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
      [v16 endEncoding];
    }
  }
}

- (void)encodeUpdateOutputToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 timeScale:(float)a7 fullWarp:(BOOL)a8 bestError:(id)a9 output:(id)a10
{
  v11 = a8;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  if (v17 && v18 && v19)
  {
    v22 = a3;
    v23 = [v22 blitCommandEncoder];
    [v23 fillBuffer:v21 range:0 value:{objc_msgSend(v21, "length"), 0}];
    [v23 endEncoding];
    v24 = [v22 computeCommandEncoder];

    if (v24)
    {
      v25 = [(MTLDevice *)self->super._device newBufferWithLength:20 options:0];
      v26 = [v25 contents];
      *v26 = a7;
      isLiteSynthesis = self->_isLiteSynthesis;
      *(v26 + 4) = v11;
      *(v26 + 8) = isLiteSynthesis;
      v28 = !self->_limitBilinearInterpolation;
      v29 = 0.0001;
      if (!self->_limitBilinearInterpolation)
      {
        v29 = 0.0;
      }

      *(v26 + 12) = self->_errorTolerance;
      *(v26 + 16) = v29;
      v30 = &OBJC_IVAR___Forwarp__updateOutputFullWarpMinErrorOffset;
      if (v28)
      {
        v30 = &OBJC_IVAR___Forwarp__updateOutputFullWarp;
      }

      if (!v11)
      {
        v30 = &OBJC_IVAR___Forwarp__updateOutputLiteWarp;
      }

      [v24 setComputePipelineState:*(&self->super.super.isa + *v30)];
      [v24 setTexture:v17 atIndex:0];
      [v24 setTexture:v18 atIndex:1];
      [v24 setTexture:v19 atIndex:2];
      [v24 setBuffer:v25 offset:0 atIndex:0];
      [v24 setBuffer:v20 offset:0 atIndex:1];
      [v24 setBuffer:v21 offset:0 atIndex:2];
      v33[0] = ([v19 width] + 15) >> 4;
      v33[1] = ([v19 height] + 15) >> 4;
      v33[2] = 1;
      v31 = vdupq_n_s64(0x10uLL);
      v32 = 1;
      [v24 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
      [v24 endEncoding];
    }
  }
}

- (void)encodeNormalizationToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [a3 computeCommandEncoder];
  if (v12)
  {
    v13 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    v14 = [v13 contents];
    var0 = a6->var0;
    *v14 = a6->var0;
    LODWORD(v16) = var0;
    HIDWORD(v16) = a6->var1;
    *v14 = v16;
    if (self->_createOcclusionMask)
    {
      v17 = &OBJC_IVAR___Forwarp__convert2TextureWithMask;
    }

    else
    {
      v17 = &OBJC_IVAR___Forwarp__convert2Texture;
    }

    [v12 setComputePipelineState:*(&self->super.super.isa + *v17)];
    [v12 setBuffer:v10 offset:0 atIndex:0];
    [v12 setTexture:v11 atIndex:0];
    [v12 setBuffer:v13 offset:0 atIndex:1];
    v20[0] = ([v11 width] + 15) >> 4;
    v20[1] = ([v11 height] + 15) >> 4;
    v20[2] = 1;
    v18 = vdupq_n_s64(0x10uLL);
    v19 = 1;
    [v12 dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
    [v12 endEncoding];
  }
}

- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 timeScale:(float)a6 destination:(id)a7
{
  v12 = a4;
  v13 = a5;
  v20 = a6;
  v14 = a7;
  v15 = [a3 computeCommandEncoder];
  v16 = v15;
  if (v15)
  {
    [v15 setComputePipelineState:self->_blendWarpedImages];
    [v16 setTexture:v12 atIndex:0];
    [v16 setTexture:v13 atIndex:1];
    [v16 setTexture:v14 atIndex:2];
    [v16 setBytes:&v20 length:4 atIndex:0];
    v19[0] = ([v14 width] + 15) >> 4;
    v19[1] = ([v14 height] + 15) >> 4;
    v19[2] = 1;
    v17 = vdupq_n_s64(0x10uLL);
    v18 = 1;
    [v16 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
    [v16 endEncoding];
  }
}

- (void)encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 forwardErrorMap:(id)a6 backwardErrorMap:(id)a7 forwarpConsistency:(id)a8 backwardConsistency:(id)a9 timeScale:(float)a10 destination:(id)a11
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v25 = [a3 computeCommandEncoder];
  if (v25)
  {
    *v33 = a10;
    v26 = [v20 width];
    *&v33[2] = v26 / [v18 width];
    v27 = [v18 width];
    *&v33[1] = v27 / [v20 width];
    [v25 setBytes:v33 length:12 atIndex:0];
    [v25 setTexture:v18 atIndex:0];
    [v25 setTexture:v19 atIndex:1];
    [v25 setTexture:v20 atIndex:2];
    [v25 setTexture:v21 atIndex:3];
    v28 = &OBJC_IVAR___Forwarp__blendWarpedImagesWithMaskTextures;
    v29 = 4;
    if (v22 && v23)
    {
      [v25 setTexture:v22 atIndex:4];
      [v25 setTexture:v23 atIndex:5];
      v28 = &OBJC_IVAR___Forwarp__blendWarpedImagesWithMaskAndFlowConsistency;
      v29 = 6;
    }

    [v25 setComputePipelineState:*(&self->super.super.isa + *v28)];
    [v25 setTexture:v24 atIndex:v29];
    v32[0] = ([v24 width] + 15) >> 4;
    v32[1] = ([v24 height] + 15) >> 4;
    v32[2] = 1;
    v30 = vdupq_n_s64(0x10uLL);
    v31 = 1;
    [v25 dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
    [v25 endEncoding];
  }
}

- (void)encodeErrorMapDilationToCommandBuffer:(id)a3 forwardSource:(id)a4 backwardSource:(id)a5 forwardDestination:(id)a6 backwardDestination:(id)a7 minimumAdjacentHoleCount:(unsigned int)a8 maximumHoleValue:(float)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [a3 computeCommandEncoder];
  if (v20)
  {
    v21 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
    v22 = [v21 contents];
    *(v22 + 4) = a9;
    *v22 = a8;
    [v20 setComputePipelineState:self->_errorMapDilation];
    [v20 setTexture:v16 atIndex:0];
    [v20 setTexture:v17 atIndex:1];
    [v20 setTexture:v18 atIndex:2];
    [v20 setTexture:v19 atIndex:3];
    [v20 setBuffer:v21 offset:0 atIndex:0];
    supportsSIMDShuffle = self->_supportsSIMDShuffle;
    v24 = [v16 width];
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

    v31[0] = (v24 + v26 - 1) >> v28;
    v31[1] = (v27 + [v16 height] - 1) >> v29;
    v31[2] = 1;
    v30[0] = v26;
    v30[1] = v27;
    v30[2] = 1;
    [v20 dispatchThreadgroups:v31 threadsPerThreadgroup:v30];
    [v20 endEncoding];
  }
}

- (void)encodeBlendTexturesToCommandBuffer:(id)a3 firstWarpedTexture:(id)a4 secondWarpedTexture:(id)a5 forwardErrorMap:(id)a6 backwardErrorMap:(id)a7 synthesizedTexture:(id)a8 timeScale:(float)a9 synthesizedImageWeight:(float)a10 destination:(id)a11
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a11;
  v25 = [a3 computeCommandEncoder];
  v26 = v25;
  if (v25)
  {
    [v25 setComputePipelineState:self->_blendDCTexturesWithMasks];
    [v26 setTexture:v19 atIndex:0];
    [v26 setTexture:v20 atIndex:1];
    [v26 setTexture:v21 atIndex:2];
    [v26 setTexture:v22 atIndex:3];
    [v26 setTexture:v23 atIndex:4];
    [v26 setTexture:v24 atIndex:5];
    *v30 = a9;
    *&v30[1] = a10;
    [v26 setBytes:v30 length:8 atIndex:0];
    v29[0] = ([v24 width] + 15) >> 4;
    v29[1] = ([v24 height] + 15) >> 4;
    v29[2] = 1;
    v27 = vdupq_n_s64(0x10uLL);
    v28 = 1;
    [v26 dispatchThreadgroups:v29 threadsPerThreadgroup:&v27];
    [v26 endEncoding];
  }
}

- (void)encodeErrorMapFilteringToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  if (self->_filterErrorMapByGaussian)
  {
    [(Forwarp *)self encodeErrorMapFilteringWithGaussianToCommandBuffer:a3 source:a4 destination:a5];
  }

  else
  {
    [(Forwarp *)self encodeErrorDownsampleToCommandBuffer:a3 source:a4 destination:a5];
  }
}

- (void)encodeErrorMapFilteringWithGaussianToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
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
    *(v13 + 16) = 11087;
    *v13 = Gaussian3x3FilterCoeffients_0;
  }

  v14 = [v8 computeCommandEncoder];
  v15 = v14;
  if (self->_supportsSIMDShuffle)
  {
    v16 = &OBJC_IVAR___Forwarp__gaussian3x3FilterSIMDKernel;
  }

  else
  {
    v16 = &OBJC_IVAR___Forwarp__gaussian3x3FilterKernel;
  }

  [v14 setComputePipelineState:*(&self->super.super.isa + *v16)];
  [v15 setTexture:v9 atIndex:0];
  [v15 setTexture:v10 atIndex:1];
  [v15 setBuffer:self->_gaussian3x3CoefficientBuffer offset:0 atIndex:0];
  v19[0] = ([v10 width] + 3) >> 2;
  v19[1] = ([v10 height] + 31) >> 5;
  v19[2] = 1;
  v17 = xmmword_24A8FF090;
  v18 = 1;
  [v15 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v15 endEncoding];
}

- (void)encodeErrorDownsampleToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_errorMapDownsampleKernel];
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

- (void)encodeLinearSplattingToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 splatBuffer:(id)a7 outputTexture:(id)a8 timeScale:(float)a9
{
  v16 = a8;
  v17 = a7;
  v19 = a3;
  *&v18 = a9;
  [(Forwarp *)self encodeSplattingToCommandBuffer:v19 input:a4 flow:a5 error:a6 outputBuffer:v17 timeScale:v18];
  [(Forwarp *)self encodeSplattingNormalizationToCommandBuffer:v19 splattingBuffer:v17 outputTexture:v16];
}

- (void)encodeSplattingToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 error:(id)a6 outputBuffer:(id)a7 timeScale:(float)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v18 blitCommandEncoder];
  [v19 fillBuffer:v14 range:0 value:{objc_msgSend(v14, "length"), 0}];
  [v19 endEncoding];
  v20 = [v18 computeCommandEncoder];

  v21 = [(MTLDevice *)self->super._device newBufferWithLength:20 options:0];
  v22 = [v21 contents];
  *v22 = a8;
  v22[3] = self->_errorTolerance;
  [v20 setComputePipelineState:self->_splattingKernel];
  [v20 setTexture:v17 atIndex:0];
  [v20 setTexture:v16 atIndex:1];

  [v20 setTexture:v15 atIndex:2];
  [v20 setBuffer:v21 offset:0 atIndex:0];
  [v20 setBuffer:v14 offset:0 atIndex:1];

  v23 = ([v17 width] + 15) >> 4;
  v24 = [v17 height];

  v27[0] = v23;
  v27[1] = (v24 + 15) >> 4;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x10uLL);
  v26 = 1;
  [v20 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  [v20 endEncoding];
}

- (void)encodeSplattingNormalizationToCommandBuffer:(id)a3 splattingBuffer:(id)a4 outputTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_splattingNormalizationKernel];
  [v10 setBuffer:v9 offset:0 atIndex:0];

  [v10 setTexture:v8 atIndex:0];
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

- (void)encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 forwardFlow:(id)a6 backwardFlow:(id)a7 forwardErrorMap:(id)a8 backwardErrorMap:(id)a9 forwarpConsistency:(id)a10 backwardConsistency:(id)a11 timeScale:(float)a12 destination:(id)a13
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a13;
  v28 = [a3 computeCommandEncoder];
  if (v28)
  {
    *v38 = a12;
    v29 = [v23 width];
    *&v38[2] = v29 / [v19 width];
    v30 = [v19 width];
    *&v38[1] = v30 / [v23 width];
    [v28 setBytes:v38 length:12 atIndex:0];
    [v28 setTexture:v19 atIndex:0];
    v33 = v20;
    [v28 setTexture:v20 atIndex:1];
    [v28 setTexture:v21 atIndex:2];
    [v28 setTexture:v22 atIndex:3];
    [v28 setTexture:v23 atIndex:4];
    [v28 setTexture:v24 atIndex:5];
    v31 = &OBJC_IVAR___Forwarp__warpAndBlendTextures;
    v32 = 6;
    if (v25 && v26)
    {
      [v28 setTexture:v25 atIndex:6];
      [v28 setTexture:v26 atIndex:7];
      v31 = &OBJC_IVAR___Forwarp__warpAndBlendTexturesWithConsistency;
      v32 = 8;
    }

    [v28 setTexture:v27 atIndex:v32];
    [v28 setComputePipelineState:*(&self->super.super.isa + *v31)];
    v37[0] = ([v27 width] + 15) >> 4;
    v37[1] = ([v27 height] + 15) >> 4;
    v37[2] = 1;
    v35 = vdupq_n_s64(0x10uLL);
    v36 = 1;
    [v28 dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
    [v28 endEncoding];
    v20 = v33;
  }
}

@end