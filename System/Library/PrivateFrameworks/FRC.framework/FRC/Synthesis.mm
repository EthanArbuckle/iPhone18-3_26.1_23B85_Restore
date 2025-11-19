@interface Synthesis
- ($5489F4DBB444EEDC4A9C9285A26ACD04)secondFeatures;
- ($5F31EEEF43F9D35F5EF7F84C27E8E4C6)firstFeatures;
- ($E5C4B62B72694C91D3AF528F66444F85)warpedBackwardFeatures;
- ($E5C4B62B72694C91D3AF528F66444F85)warpedForwardFeatures;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)a3;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)a3;
- (Synthesis)initWithMode:(int64_t)a3;
- (id)firstForwarpInput;
- (id)secondForwarpInput;
- (int)twoLayerFlowSplattingFeatureLevelForLevel:(int)a3;
- (int64_t)usageForTiling:(int64_t)a3;
- (void)allocateFeatures;
- (void)allocateFlowAndLossTextures;
- (void)allocateForwardWarpBuffersForLevel:(int)a3;
- (void)allocateForwardWarpInternalBuffers;
- (void)allocateResources;
- (void)allocateSplattingTextures;
- (void)allocateWarpedFeatures;
- (void)calcBackwarpLossFirst:(id)a3 second:(id)a4 timeScale:(float)a5;
- (void)createConsistencyMapFormFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6;
- (void)createFeaturePyramid:(__CVBuffer *)a3 second:(__CVBuffer *)a4;
- (void)createFeaturesFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6;
- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4;
- (void)createTilesFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6;
- (void)dealloc;
- (void)encodeConsistencyMapCreationWithFlowToCommandBuffer:(id)a3 firstSource:(id)a4 secondSource:(id)a5 forwardFlow:(id)a6 backwardFlow:(id)a7 firstForwarpInput:(id)a8 secondForwarpInput:(id)a9;
- (void)encodeForwarpInputsForBlendToCommandBuffer:(id)a3 timeScale:(float)a4;
- (void)encodeForwarpToCommandBuffer:(id)a3 level:(int)a4 firstTexture:(id)a5 secondTexture:(id)a6 firstWarpedTexture:(id)a7 secondWarpedTexture:(id)a8 timeScale:(float)a9 useFlowMagnitude:(BOOL)a10;
- (void)encodeSubsampleToCommandBuffer:(id)a3 flow:(id *)a4 loss:(id *)a5;
- (void)encodeWarpPyramidToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwarpConsistency:(id)a6 backwardConsistency:(id)a7 timeScale:(float)a8 destination:(id)a9;
- (void)filterGridNetOutput:(__CVBuffer *)a3 timeScale:(float)a4 destination:(__CVBuffer *)a5;
- (void)getWarpedFeatureSizeForLevel:(int)a3 tensorSize:(id *)a4;
- (void)releaseFeatures;
- (void)releaseFeaturesForLevel:(int)a3;
- (void)releaseForwardWarpInternalTextures;
- (void)releaseForwardWarpInternalTexturesAndBuffers;
- (void)releaseForwardWarpLinearBuffersForLevel:(int)a3;
- (void)releaseForwardWarpTexturesForLevel:(int)a3;
- (void)releaseResources;
- (void)releaseSplattingTextures;
- (void)releaseTiles;
- (void)releaseWarpedFeaturesForIndex:(unint64_t)a3;
- (void)setTilingEnabled:(BOOL)a3;
- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8;
- (void)upscaleFlowsForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4;
- (void)upscaleForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4 upscaledForwardFlow:(__CVBuffer *)a5 upscaledBackwardFlow:(__CVBuffer *)a6;
- (void)warpFeaturesPerLayerWithFlowForward:(__CVBuffer *)a3 flowBackward:(__CVBuffer *)a4 timeScale:(float)a5;
@end

@implementation Synthesis

- (Synthesis)initWithMode:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = Synthesis;
  v4 = [(Synthesis *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_usage = a3;
    if (![(Synthesis *)v4 createModules])
    {
      NSLog(&cfstr_FailedToCreate_2.isa);
      v8 = 0;
      goto LABEL_6;
    }

    v5->_resourcesPreAllocated = 0;
    v5->_tilingEnabled = 0;
    v6 = dispatch_semaphore_create(0);
    completionSemaphore = v5->_completionSemaphore;
    v5->_completionSemaphore = v6;

    v5->_numWarpedBuffers = 1;
    v5->_framePipeline = 1;
    v5->_pyramidLevels = 3;
    v5->_flowLevel = 1;
    v5->_fullWarpStartLevel = 1;
    *&v5->_filterErrorMap = 0;
    v5->_useFusedKernel = 1;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)a3
{
  v11 = 0;
  v12 = 0;
  linearSplatting = self->_linearSplatting;
  usage = self->_usage;
  if (linearSplatting)
  {
    FRCGetInputFrameSizeForUsage(usage, &v12, &v11);
  }

  else
  {
    FRCGetAlignedInputFrameSizeForUsage(usage, &v12, &v11);
  }

  v10 = v11;
  for (i = v12; a4; --a4)
  {
    i = (i + 1) >> 1;
    v10 = (v10 + 1) >> 1;
  }

  retstr->var0 = i;
  retstr->var1 = v10;
  retstr->var2 = 3;
  return result;
}

- (void)allocateResources
{
  if (!self->_resourcesPreAllocated)
  {
    [(Synthesis *)self allocateForwardWarpInternalBuffers];
    [(Synthesis *)self allocateFeatures];
    [(Synthesis *)self allocateWarpedFeatures];
    [(Synthesis *)self allocateFlowAndLossTextures];
    [(Synthesis *)self allocateSplattingTextures];
    v5 = 0;
    v6 = 0;
    FRCGetAlignedInputFrameSizeForUsage(self->_usage, &v6, &v5);
    self->_normalizedBufferPool = createPixelBufferPool(v6, 3 * v5, 1278226536, 0);
    synthesisMode = self->_synthesisMode;
    if (synthesisMode == 1 || !synthesisMode && self->_temporalFiltering)
    {
      v4 = [(EspressoModel *)self->_gridNet usage];
      v7 = 0;
      v8 = 0;
      FRCGetAlignedInputFrameSizeForUsage(v4, &v8, &v7);
      self->_dcBufferPool = createPixelBufferPool(v8, 3 * v7, 1278226536, 0);
    }

    self->_resourcesPreAllocated = 1;
  }
}

- (void)releaseResources
{
  if (self->_resourcesPreAllocated)
  {
    v3 = 0;
    do
    {
      [(Synthesis *)self releaseFeaturesForLevel:v3];
      v3 = (v3 + 1);
    }

    while (v3 != 5);
    if (self->_numWarpedBuffers)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        [(Synthesis *)self releaseWarpedFeaturesForIndex:v4];
        v4 = v5;
      }

      while (self->_numWarpedBuffers > v5++);
    }

    [(Synthesis *)self releaseForwardWarpInternalTexturesAndBuffers];
    normalizedBufferPool = self->_normalizedBufferPool;
    if (normalizedBufferPool)
    {
      CFRelease(normalizedBufferPool);
    }

    dcBufferPool = self->_dcBufferPool;
    if (dcBufferPool)
    {
      CFRelease(dcBufferPool);
    }

    [(Synthesis *)self releaseSplattingTextures];
    self->_resourcesPreAllocated = 0;
  }
}

- ($E5C4B62B72694C91D3AF528F66444F85)warpedForwardFeatures
{
  if (self->_resourcesPreAllocated)
  {
    return self->_warpedForwardFeatures;
  }

  else
  {
    return 0;
  }
}

- ($E5C4B62B72694C91D3AF528F66444F85)warpedBackwardFeatures
{
  if (self->_resourcesPreAllocated)
  {
    return self->_warpedBackwardFeatures;
  }

  else
  {
    return 0;
  }
}

- ($5F31EEEF43F9D35F5EF7F84C27E8E4C6)firstFeatures
{
  if (self->_resourcesPreAllocated)
  {
    return &self->_firstFeatures;
  }

  else
  {
    return 0;
  }
}

- (id)firstForwarpInput
{
  v2 = 368;
  if (self->_useFlowConsistencyMap)
  {
    v2 = 344;
  }

  return *(&self->super.isa + v2);
}

- (id)secondForwarpInput
{
  v2 = 408;
  if (self->_useFlowConsistencyMap)
  {
    v2 = 352;
  }

  return *(&self->super.isa + v2);
}

- ($5489F4DBB444EEDC4A9C9285A26ACD04)secondFeatures
{
  if (self->_resourcesPreAllocated)
  {
    return &self->_secondFeatures;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  gridNet = self->_gridNet;
  self->_gridNet = 0;

  tiling = self->_tiling;
  self->_tiling = 0;

  flowConsisteny = self->_flowConsisteny;
  self->_flowConsisteny = 0;

  v6.receiver = self;
  v6.super_class = Synthesis;
  [(Synthesis *)&v6 dealloc];
}

- (BOOL)createModules
{
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  v5 = [(MTLDeviceSPI *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v5;

  v7 = [[Backwarp alloc] initWithDevice:self->_device interleaved:0];
  backwarp = self->_backwarp;
  self->_backwarp = v7;

  if (!self->_backwarp)
  {
    NSLog(&cfstr_FailedToCreate_3.isa);
    return 0;
  }

  v9 = [[Pyramid alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  pyramid = self->_pyramid;
  self->_pyramid = v9;

  if (!self->_pyramid)
  {
    NSLog(&cfstr_FailedToCreate_5.isa);
    return 0;
  }

  if (self->_useFlowConsistencyMap)
  {
    v11 = [[FlowConsistencyMap alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
    flowConsisteny = self->_flowConsisteny;
    self->_flowConsisteny = v11;
  }

  return 1;
}

- (void)allocateForwardWarpInternalBuffers
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    do
    {
      [(Synthesis *)self allocateForwardWarpBuffersForLevel:v3++];
    }

    while (self->_pyramidLevels > v3);
  }
}

- (void)allocateFlowAndLossTextures
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    backwardLossTexture = self->_backwardLossTexture;
    do
    {
      if (self->_synthesisMode == 3 && !self->_fullSizeSplatting)
      {
        flowLevel = self->_flowLevel;
      }

      else
      {
        flowLevel = v3;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      [(Synthesis *)self synthesisTensorSizeForLevel:flowLevel];
      v7 = v20;
      v6 = v21;
      v8 = createTextures(self->_device, v20, v21, 1, 1uLL);
      v9 = *(backwardLossTexture - 5);
      *(backwardLossTexture - 5) = v8;

      v10 = createTextures(self->_device, v7, v6, 1, 1uLL);
      v11 = *backwardLossTexture;
      *backwardLossTexture = v10;

      if (v3 != 1)
      {
        v12 = createTextures(self->_device, v7, v6, 1, 2uLL);
        v13 = backwardLossTexture[5];
        backwardLossTexture[5] = v12;

        v14 = createTextures(self->_device, v7, v6, 1, 2uLL);
        v15 = backwardLossTexture[10];
        backwardLossTexture[10] = v14;

        if (!v3 && self->_filterErrorMap)
        {
          if (![(Forwarp *)self->_forwarp filterErrorMapByGaussian])
          {
            v7 >>= 1;
            v6 >>= 1;
          }

          v16 = createTextures(self->_device, v7, v6, 1, 1uLL);
          filteredForwardLossTexture = self->_filteredForwardLossTexture;
          self->_filteredForwardLossTexture = v16;

          v18 = createTextures(self->_device, v7, v6, 1, 1uLL);
          filteredBackwarLossTexture = self->_filteredBackwarLossTexture;
          self->_filteredBackwarLossTexture = v18;
        }
      }

      ++v3;
      ++backwardLossTexture;
    }

    while (self->_pyramidLevels > v3);
  }
}

- (void)allocateForwardWarpBuffersForLevel:(int)a3
{
  if (self->_synthesisMode != 3)
  {
    v5 = 3;
    goto LABEL_5;
  }

  if (self->_fullSizeSplatting)
  {
    v5 = 2;
LABEL_5:
    flowLevel = a3;
    goto LABEL_7;
  }

  flowLevel = self->_flowLevel;
  v5 = 2;
LABEL_7:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  getSynthesisTensorSize(self->_usage, flowLevel, &v18);
  v7 = v18;
  v8 = v19;
  if (a3 <= 0 && (synthesisMode = self->_synthesisMode, synthesisMode - 2 >= 2) && (synthesisMode || !self->_temporalFiltering) || self->_linearSplatting)
  {
    forwarp = self->_forwarp;
    v11 = 32;
    v12 = 32;
  }

  else
  {
    forwarp = self->_forwarp;
    v11 = v18;
    v12 = v19;
  }

  v13 = [(Forwarp *)forwarp createBestBufferWidth:v11 height:v12];
  v14 = &self->super.isa + a3;
  v15 = v14[31];
  v14[31] = v13;

  v16 = [(Forwarp *)self->_forwarp createOutputBufferWidth:v7 height:v8 channels:v5 + self->_useFlowConsistencyMap];
  v17 = v14[36];
  v14[36] = v16;

  MEMORY[0x2821F96F8]();
}

- (void)allocateSplattingTextures
{
  v36 = 0;
  v37 = 0;
  FRCGetAlignedInputFrameSizeForUsage(self->_usage, &v37, &v36);
  synthesisMode = self->_synthesisMode;
  if (synthesisMode > 1)
  {
    if (synthesisMode != 2)
    {
      if (synthesisMode != 3)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_21:
    v26 = createTextures(self->_device, v37, v36, 1, 1uLL);
    dilatedForwardMask = self->_dilatedForwardMask;
    self->_dilatedForwardMask = v26;

    v28 = createTextures(self->_device, v37, v36, 1, 1uLL);
    dilatedBackwardMask = self->_dilatedBackwardMask;
    self->_dilatedBackwardMask = v28;

    return;
  }

  if (!synthesisMode)
  {
    if (!self->_temporalFiltering)
    {
      return;
    }

    v22 = createTextures(self->_device, v37, v36, 1, 4uLL);
    firstWarpedTexture = self->_firstWarpedTexture;
    self->_firstWarpedTexture = v22;

    v24 = createTextures(self->_device, v37, v36, 1, 4uLL);
    secondWarpedTexture = self->_secondWarpedTexture;
    self->_secondWarpedTexture = v24;

    goto LABEL_21;
  }

  if (synthesisMode != 1 || !self->_temporalFiltering)
  {
    return;
  }

LABEL_8:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  getSynthesisTensorSize(self->_usage, self->_flowLevel, &v33);
  v4 = v33;
  v5 = v34;
  if (self->_fullSizeSplatting)
  {
    v6 = v37;
  }

  else
  {
    v6 = v33;
  }

  if (self->_fullSizeSplatting)
  {
    v7 = v36;
  }

  else
  {
    v7 = v34;
  }

  v8 = createTextures(self->_device, v6, v7, 1, 1uLL);
  v9 = self->_dilatedForwardMask;
  self->_dilatedForwardMask = v8;

  v10 = createTextures(self->_device, v6, v7, 1, 1uLL);
  v11 = self->_dilatedBackwardMask;
  self->_dilatedBackwardMask = v10;

  if (self->_synthesisMode != 3)
  {
    v30 = createTextures(self->_device, v4, v5, 1, 4uLL);
    v31 = self->_firstWarpedTexture;
    self->_firstWarpedTexture = v30;

    v20 = createTextures(self->_device, v4, v5, 1, 4uLL);
    v21 = 912;
    goto LABEL_23;
  }

  if (!self->_useFusedKernel)
  {
    v12 = createTextures(self->_device, v37, v36, 1, 3uLL);
    v13 = self->_firstWarpedTexture;
    self->_firstWarpedTexture = v12;

    v14 = createTextures(self->_device, v37, v36, 1, 3uLL);
    v15 = self->_secondWarpedTexture;
    self->_secondWarpedTexture = v14;
  }

  if (self->_twoLayerFlowSplatting)
  {
    v16 = [(MTLTexture *)self->_firstFeatures.features[3] width];
    v17 = [(MTLTexture *)self->_firstFeatures.features[3] height];
    v18 = createTextures(self->_device, v16, v17, 1, 3uLL);
    blendedDCTexture = self->_blendedDCTexture;
    self->_blendedDCTexture = v18;

    v20 = createTextures(self->_device, v16, v17, 1, 3uLL);
    v21 = 928;
LABEL_23:
    v32 = *(&self->super.isa + v21);
    *(&self->super.isa + v21) = v20;
  }
}

- (void)releaseSplattingTextures
{
  firstWarpedTexture = self->_firstWarpedTexture;
  self->_firstWarpedTexture = 0;

  secondWarpedTexture = self->_secondWarpedTexture;
  self->_secondWarpedTexture = 0;

  dilatedForwardMask = self->_dilatedForwardMask;
  self->_dilatedForwardMask = 0;

  dilatedBackwardMask = self->_dilatedBackwardMask;
  self->_dilatedBackwardMask = 0;

  firstForwarpInputWithConsistencyMap = self->_firstForwarpInputWithConsistencyMap;
  self->_firstForwarpInputWithConsistencyMap = 0;

  secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  self->_secondForwarpInputWithConsistencyMap = 0;

  blendedDCTexture = self->_blendedDCTexture;
  self->_blendedDCTexture = 0;

  filteredDCTexture = self->_filteredDCTexture;
  self->_filteredDCTexture = 0;
}

- (void)releaseForwardWarpTexturesForLevel:(int)a3
{
  v3 = &self->super.isa + a3;
  v4 = v3[11];
  v3[11] = 0;

  v5 = v3[16];
  v3[16] = 0;

  v6 = v3[21];
  v3[21] = 0;

  v7 = v3[26];
  v3[26] = 0;
}

- (void)releaseForwardWarpLinearBuffersForLevel:(int)a3
{
  v3 = &self->super.isa + a3;
  v4 = v3[31];
  v3[31] = 0;

  v5 = v3[36];
  v3[36] = 0;
}

- (void)releaseForwardWarpInternalTextures
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    do
    {
      [(Synthesis *)self releaseForwardWarpTexturesForLevel:v3++];
    }

    while (self->_pyramidLevels > v3);
  }

  filteredForwardLossTexture = self->_filteredForwardLossTexture;
  self->_filteredForwardLossTexture = 0;

  filteredBackwarLossTexture = self->_filteredBackwarLossTexture;
  self->_filteredBackwarLossTexture = 0;
}

- (void)releaseForwardWarpInternalTexturesAndBuffers
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    do
    {
      [(Synthesis *)self releaseForwardWarpTexturesForLevel:v3];
      [(Synthesis *)self releaseForwardWarpLinearBuffersForLevel:v3++];
    }

    while (self->_pyramidLevels > v3);
  }
}

- (void)encodeSubsampleToCommandBuffer:(id)a3 flow:(id *)a4 loss:(id *)a5
{
  backwarp = self->_backwarp;
  v9 = *a4;
  v10 = a4[1];
  v11 = a3;
  [(Backwarp *)backwarp encodeSubsampleFlowToCommandBuffer:v11 source:v9 destination:v10];
  [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:v11 source:a4[1] destination:a4[2]];
  [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:v11 source:*a5 destination:a5[1]];
  [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:v11 source:a5[1] destination:a5[2]];
}

void __40__Synthesis_warpFeatureLevel_timeScale___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = *(*(a1 + 32) + 8);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
  }
}

void __40__Synthesis_warpFeatureLevel_timeScale___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = *(*(a1 + 32) + 8);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
  }
}

- (void)warpFeaturesPerLayerWithFlowForward:(__CVBuffer *)a3 flowBackward:(__CVBuffer *)a4 timeScale:(float)a5
{
  v8 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  v9 = self->_forwardFlowTexture[1];
  self->_forwardFlowTexture[1] = v8;

  v10 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
  v11 = self->_backwardFlowTexture[1];
  self->_backwardFlowTexture[1] = v10;

  v18 = self->_firstFeatures.features[self->_pyramidLevels];
  v12 = self->_secondFeatures.features[self->_pyramidLevels];
  v13 = objc_autoreleasePoolPush();
  *&v14 = a5;
  [(Synthesis *)self calcBackwarpLossFirst:v18 second:v12 timeScale:v14];
  objc_autoreleasePoolPop(v13);
  v16 = self->_synthesisMode == 1;
  if (self->_synthesisMode == 1)
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  do
  {
    *&v15 = a5;
    [(Synthesis *)self warpFeatureLevel:v16 timeScale:v15];
    v16 = (v16 + 1);
  }

  while (v16 < v17);
}

- (void)calcBackwarpLossFirst:(id)a3 second:(id)a4 timeScale:(float)a5
{
  v16 = a3;
  v8 = a4;
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v9 enqueue];
  *&v10 = a5;
  [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:v9 first:v16 second:v8 flow:self->_forwardFlowTexture[1] timeScale:self->_forwardLossTexture[1] destination:v10];
  *&v11 = 1.0 - a5;
  [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:v9 first:v8 second:v16 flow:self->_backwardFlowTexture[1] timeScale:self->_backwardLossTexture[1] destination:v11];
  if (self->_pyramidLevels >= 3)
  {
    v12 = &self->_backwardLossTexture[2];
    v13 = 2;
    do
    {
      [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:v9 source:*(v12 - 6) destination:*(v12 - 5)];
      [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:v9 source:*(v12 - 1) destination:*v12];
      ++v13;
      ++v12;
    }

    while (self->_pyramidLevels > v13);
  }

  if (self->_synthesisMode == 1)
  {
    [(Backwarp *)self->_backwarp encodeUpscaleErrorToCommandBuffer:v9 source:self->_forwardLossTexture[1] destination:self->_forwardLossTexture[0]];
    [(Backwarp *)self->_backwarp encodeUpscaleErrorToCommandBuffer:v9 source:self->_backwardLossTexture[1] destination:self->_backwardLossTexture[0]];
  }

  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v9 source:self->_forwardFlowTexture[1] destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v9 source:self->_backwardFlowTexture[1] destination:self->_backwardFlowTexture[0]];
  if (self->_pyramidLevels >= 3)
  {
    v14 = &self->_backwardFlowTexture[2];
    v15 = 2;
    do
    {
      [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:v9 source:*(v14 - 6) destination:*(v14 - 5)];
      [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:v9 source:*(v14 - 1) destination:*v14];
      ++v15;
      ++v14;
    }

    while (self->_pyramidLevels > v15);
  }

  kdebug_trace();
  [v9 addCompletedHandler:&__block_literal_global_1];
  [v9 commit];
}

- (void)allocateFeatures
{
  pyramidLevels = self->_pyramidLevels;
  v4 = pyramidLevels + 1;
  if (self->_synthesisMode == 3)
  {
    v5 = pyramidLevels + 2;
    if (self->_twoLayerFlowSplatting)
    {
      v4 = v5;
    }
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [(Synthesis *)self allocateFeaturesForUsage:self->_usage Level:i];
    }
  }
}

- (int)twoLayerFlowSplattingFeatureLevelForLevel:(int)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  if (FRCGetNumberOfPixelsForUsage(self->_usage) >> 12 > 0x7E8)
  {
    return 2;
  }

  if (self->_twoLayerQuarterSizeDC)
  {
    return 2;
  }

  return 1;
}

- (void)releaseFeaturesForLevel:(int)a3
{
  v3 = &self->super.isa + a3;
  v4 = v3[46];
  v3[46] = 0;

  v5 = v3[51];
  v3[51] = 0;
}

- (void)getWarpedFeatureSizeForLevel:(int)a3 tensorSize:(id *)a4
{
  v5 = a3 - 1;
  if (a3 >= 1 && self->_synthesisMode == 1)
  {
    QuarterSizeUsage = getQuarterSizeUsage(self->_usage);

    getSynthesisTensorSize(QuarterSizeUsage, v5, &a4->var0);
  }

  else
  {
    [(Synthesis *)self synthesisTensorSizeForLevel:?];
    *&a4->var0 = v7;
    a4->var2 = v8;
  }
}

- (void)allocateWarpedFeatures
{
  numTiles = self->_numTiles;
  if (!numTiles)
  {
    numTiles = 3;
    if (!self->_framePipeline)
    {
      numTiles = 1;
    }
  }

  LODWORD(v4) = 0;
  self->_numWarpedBuffers = numTiles;
  pyramidLevels = self->_pyramidLevels;
  do
  {
    if (pyramidLevels)
    {
      v6 = 0;
      v7 = &self->_warpedBackwardFeatures[v4];
      do
      {
        if (self->_synthesisMode == 3)
        {
          if (self->_fullSizeSplatting)
          {
            flowLevel = 0;
          }

          else
          {
            flowLevel = self->_flowLevel;
          }
        }

        else
        {
          flowLevel = v6;
        }

        v11 = 0;
        v12 = 0;
        v13 = 0;
        [(Synthesis *)self getWarpedFeatureSizeForLevel:flowLevel tensorSize:&v11];
        v9 = v13;
        if (self->_synthesisMode == 2)
        {
          v9 = v13 + 1;
        }

        v10 = v9 + self->_useFlowConsistencyMap;
        self->_warpedFeatureChannels = v10;
        v7[-3].features[0] = createPixelBuffer(v11, v12 * v10, 0x4C303068u, 0);
        v7->features[0] = createPixelBuffer(v11, v12 * v10, 0x4C303068u, 0);
        v7 = (v7 + 8);
        ++v6;
        pyramidLevels = self->_pyramidLevels;
      }

      while (pyramidLevels > v6);
      numTiles = self->_numWarpedBuffers;
    }

    v4 = (v4 + 1);
  }

  while (numTiles > v4);
}

- (void)releaseWarpedFeaturesForIndex:(unint64_t)a3
{
  if (self->_pyramidLevels)
  {
    v4 = 0;
    v5 = &self->_warpedBackwardFeatures[a3];
    do
    {
      CVPixelBufferRelease(v5[-3].features[0]);
      v6 = v5->features[0];
      v5 = (v5 + 8);
      CVPixelBufferRelease(v6);
      ++v4;
    }

    while (self->_pyramidLevels > v4);
  }
}

- (void)createFeaturesFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6
{
  self->_forwardFlow = CVPixelBufferRetain(a5);
  self->_backwardFlow = CVPixelBufferRetain(a6);
  self->_normalizedFirst = CVPixelBufferRetain(a3);
  self->_normalizedSecond = CVPixelBufferRetain(a4);
  if (self->_synthesisMode == 3)
  {
    if (!self->_fullSizeSplatting)
    {
      [(Synthesis *)self createSubsampledInputsFromFirstFrame:a3 secondImage:a4];
    }

    Width = CVPixelBufferGetWidth(a5);
    if (Width != [(MTLTexture *)self->_forwardLossTexture[0] width])
    {
      [(Synthesis *)self upscaleFlowsForward:a5 backward:a6];
    }
  }

  if (self->_useFlowConsistencyMap)
  {
    [(Synthesis *)self createConsistencyMapFormFirstImage:a3 secondImage:a4 flowForward:a5 flowBackward:a6];
  }

  if (self->_pyramidLevels != 1)
  {
    if (self->_tilingEnabled)
    {
      [(Synthesis *)self createTilesFromFirstImage:a3 secondImage:a4 flowForward:a5 flowBackward:a6];
      CVPixelBufferRelease(a3);

      CVPixelBufferRelease(a4);
    }

    else
    {

      [(Synthesis *)self createFeaturePyramid:a3 second:a4];
    }
  }
}

- (void)releaseFeatures
{
  if (self->_tilingEnabled)
  {
    [(Synthesis *)self releaseTiles];
  }

  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  if (self->_pyramidLevels == 1)
  {
    CVPixelBufferRelease(self->_normalizedFirst);
    CVPixelBufferRelease(self->_normalizedSecond);
  }

  *&self->_forwardFlow = 0u;
  *&self->_normalizedFirst = 0u;
}

- (void)createFeaturePyramid:(__CVBuffer *)a3 second:(__CVBuffer *)a4
{
  kdebug_trace();
  v7 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  v8 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v9 enqueue];
  [(Pyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:v9 fromTexture:v7 toTexture:&self->_firstFeatures levels:self->_pyramidLevels];
  [(Pyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:v9 fromTexture:v8 toTexture:&self->_secondFeatures levels:self->_pyramidLevels];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__Synthesis_createFeaturePyramid_second___block_invoke;
  v10[3] = &unk_278FEA8D0;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  [v9 addCompletedHandler:v10];
  [v9 commit];
  [v9 waitUntilScheduled];
}

uint64_t __41__Synthesis_createFeaturePyramid_second___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 962) & 1) == 0)
  {
    CVPixelBufferRelease(*(a1 + 40));
    CVPixelBufferRelease(*(a1 + 48));
    v1 = vars8;
  }

  return kdebug_trace();
}

void __102__Synthesis_synthesizeImageFromFirstImage_secondImage_flowForward_flowBackward_timeScale_destination___block_invoke_2(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CVPixelBufferRelease(v2);
}

- (BOOL)switchUsageTo:(int64_t)a3
{
  QuarterSizeUsage = a3;
  self->_originalUsage = a3;
  if (self->_tilingEnabled)
  {
    QuarterSizeUsage = [(Synthesis *)self usageForTiling:a3];
  }

  self->_usage = QuarterSizeUsage;
  self->_fullWarpStartLevel = 1;
  self->_filterErrorMap = 0;
  synthesisMode = self->_synthesisMode;
  if (synthesisMode == 1)
  {
    self->_pyramidLevels = 4;
    QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
    if (!self->_temporalFiltering)
    {
      v7 = 1;
      self->_fullWarpStartLevel = 1;
      goto LABEL_17;
    }

    self->_fullWarpStartLevel = 4;
LABEL_15:
    v7 = 1;
    goto LABEL_17;
  }

  if (synthesisMode == 2)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  if (synthesisMode != 3)
  {
    self->_pyramidLevels = 3;
    goto LABEL_15;
  }

  if (!self->_twoLayerFlowSplatting)
  {
    goto LABEL_8;
  }

  v6 = 2;
LABEL_9:
  self->_pyramidLevels = v6;
  if (self->_linearSplatting)
  {
    self->_filterErrorMap = 1;
  }

  v7 = 0;
  self->_framePipeline = 0;
  QuarterSizeUsage = 1;
LABEL_17:
  v8 = [[Forwarp alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue mode:self->_synthesisMode];
  forwarp = self->_forwarp;
  self->_forwarp = v8;

  v10 = self->_forwarp;
  if (v10)
  {
    [(Forwarp *)v10 setLinearSplatting:self->_linearSplatting];
    if (self->_framePipeline)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    self->_frameSyncRequired = v11;
    if (self->_useFlowConsistencyMap && !self->_flowConsisteny)
    {
      v12 = [[FlowConsistencyMap alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
      flowConsisteny = self->_flowConsisteny;
      self->_flowConsisteny = v12;
    }

    if (self->_synthesisMode > 1)
    {
      return 1;
    }

    v14 = [[SynthesisGridNet alloc] initWithMode:QuarterSizeUsage];
    gridNet = self->_gridNet;
    self->_gridNet = v14;

    if (self->_gridNet)
    {
      return 1;
    }

    NSLog(&cfstr_FailedToCreate_6.isa);
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_4.isa);
  }

  return 0;
}

- (void)setTilingEnabled:(BOOL)a3
{
  self->_tilingEnabled = a3;
  if (a3)
  {
    v4 = [[Tiling alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  }

  else
  {
    v4 = 0;
  }

  tiling = self->_tiling;
  self->_tiling = v4;

  MEMORY[0x2821F96F8]();
}

- (int64_t)usageForTiling:(int64_t)a3
{
  if (a3 > 2)
  {
    return -1;
  }

  v3 = a3 | 0x64;
  self->_numTiles = dword_24A8FF48C[a3];
  return v3;
}

- (void)createTilesFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6
{
  v26 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v27 = objc_autoreleasePoolPush();
  tiling = self->_tiling;
  Width = CVPixelBufferGetWidth(a3);
  v12 = [(Tiling *)tiling createTileInfoArrayForFrameWithWidth:Width height:CVPixelBufferGetHeight(a3) / 3 numTiles:self->_numTiles];
  v25 = &v25;
  self->_imageTileInfo = v12;
  v13 = &v25 - ((24 * self->_numTiles + 15) & 0x3FFFFFFFF0);
  numTiles = self->_numTiles;
  if (numTiles)
  {
    v15 = (v13 + 16);
    p_var2 = &self->_imageTileInfo->var2;
    do
    {
      v15[-1] = vshrq_n_u64(*(p_var2 - 1), 1uLL);
      v17 = *p_var2;
      p_var2 += 3;
      v15->i64[0] = v17 >> 1;
      v15 = (v15 + 24);
      --numTiles;
    }

    while (numTiles);
    v18 = 0;
    outputTiles = self->_outputTiles;
    v20 = 8;
    do
    {
      *(outputTiles - 12) = createPixelBuffer(*(self->_imageTileInfo + v20 - 8), 3 * *(&self->_imageTileInfo->var0 + v20), 0x4C303068u, 0);
      *(outputTiles - 9) = createPixelBuffer(*(self->_imageTileInfo + v20 - 8), 3 * *(&self->_imageTileInfo->var0 + v20), 0x4C303068u, 0);
      v21 = *&v13[v20 - 8];
      v22 = 2 * *&v13[v20];
      *(outputTiles - 6) = createPixelBuffer(v21, v22, 0x4C303068u, 0);
      *(outputTiles - 3) = createPixelBuffer(v21, v22, 0x4C303068u, 0);
      [(Synthesis *)self allocateOutputTile:outputTiles tileInfo:self->_imageTileInfo + v20 - 8, v25];
      ++v18;
      v20 += 24;
      ++outputTiles;
    }

    while (v18 < self->_numTiles);
  }

  kdebug_trace();
  v23 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v23 enqueue];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:v23 from:a3 to:self->_firstImageTiles channels:3 tileInfo:self->_imageTileInfo numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:v23 from:a4 to:self->_secondImageTiles channels:3 tileInfo:self->_imageTileInfo numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:v23 from:a5 to:self->_forwardFlowTiles channels:2 tileInfo:v13 numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:v23 from:v26 to:self->_backwardFlowTiles channels:2 tileInfo:v13 numTiles:self->_numTiles];
  [v23 addCompletedHandler:&__block_literal_global_53];
  [v23 commit];

  objc_autoreleasePoolPop(v27);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)releaseTiles
{
  if (self->_numTiles)
  {
    v3 = 0;
    firstImageTiles = self->_firstImageTiles;
    do
    {
      CVPixelBufferRelease(*firstImageTiles);
      CVPixelBufferRelease(firstImageTiles[3]);
      CVPixelBufferRelease(firstImageTiles[6]);
      CVPixelBufferRelease(firstImageTiles[9]);
      CVPixelBufferRelease(firstImageTiles[12]);
      ++v3;
      ++firstImageTiles;
    }

    while (v3 < self->_numTiles);
  }

  free(self->_imageTileInfo);
  self->_imageTileInfo = 0;
}

- (void)encodeForwarpToCommandBuffer:(id)a3 level:(int)a4 firstTexture:(id)a5 secondTexture:(id)a6 firstWarpedTexture:(id)a7 secondWarpedTexture:(id)a8 timeScale:(float)a9 useFlowMagnitude:(BOOL)a10
{
  v48 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v47 = a8;
  linearSplatting = self->_linearSplatting;
  forwarp = self->_forwarp;
  if (a10)
  {
    LODWORD(v20) = 1051931443;
    [(Forwarp *)forwarp setErrorTolerance:v20];
    [(Forwarp *)self->_forwarp setLimitBilinearInterpolation:0];
    if (self->_linearSplatting)
    {
      v26 = 0.03;
    }

    else
    {
      v26 = 3.4028e38;
    }

    v27 = a4;
    v28 = &self->super.isa + a4;
    if (linearSplatting)
    {
      *&v23 = 1.0;
    }

    else
    {
      *&v23 = a9;
    }

    if (linearSplatting)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 1.0 - a9;
    }

    LODWORD(v24) = 1050253722;
    *&v25 = v26;
    [(Backwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:v48 first:v17 second:v18 flow:v28[21] timeScale:v28[11] gamma:v23 protectionThreshold:v24 destination:v25];
    *&v30 = v29;
    LODWORD(v31) = 1050253722;
    *&v32 = v26;
    [(Backwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:v48 first:v18 second:v17 flow:v28[26] timeScale:v28[16] gamma:v30 protectionThreshold:v31 destination:v32];
  }

  else
  {
    LODWORD(v20) = 1028443341;
    [(Forwarp *)forwarp setErrorTolerance:v20];
    [(Forwarp *)self->_forwarp setLimitBilinearInterpolation:0];
    v27 = a4;
    v34 = &self->super.isa + a4;
    if (linearSplatting)
    {
      *&v33 = 1.0;
    }

    else
    {
      *&v33 = a9;
    }

    if (linearSplatting)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 1.0 - a9;
    }

    [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:v48 first:v17 second:v18 flow:v34[21] timeScale:v34[11] destination:v33];
    *&v36 = v35;
    [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:v48 first:v18 second:v17 flow:v34[26] timeScale:v34[16] destination:v36];
  }

  v37 = self->_forwardLossTexture[v27];
  v38 = self->_backwardLossTexture[v27];
  if (self->_filterErrorMap)
  {
    v40 = self->_filteredForwardLossTexture;

    v46 = v18;
    v41 = v17;
    v42 = v19;
    v43 = self->_filteredBackwarLossTexture;

    [(Forwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:v48 source:self->_forwardLossTexture[v27] destination:v40];
    [(Forwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:v48 source:self->_backwardLossTexture[v27] destination:v43];
    v37 = v40;
    v38 = v43;
    v19 = v42;
    v17 = v41;
    v18 = v46;
  }

  v44 = &self->super.isa + v27;
  *&v39 = a9;
  [(Forwarp *)self->_forwarp encodeToCommandBuffer:v48 input:v17 flow:v44[21] error:v37 timeScale:1 fullWarp:v44[31] bestError:v39 output:v44[36] destination:v19];
  *&v45 = 1.0 - a9;
  [(Forwarp *)self->_forwarp encodeToCommandBuffer:v48 input:v18 flow:v44[26] error:v38 timeScale:1 fullWarp:v44[31] bestError:v45 output:v44[36] destination:v47];
}

- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8
{
  v30 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  secondForwarpInputWithConsistencyMap = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  v15 = createTexturesFromCVPixelBuffer(a5, self->_device, 1, 2uLL);
  v16 = createTexturesFromCVPixelBuffer(a6, self->_device, 1, 2uLL);
  v17 = createTexturesFromCVPixelBuffer(a8, self->_device, 1, 3uLL);
  v18 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v18 enqueue];
  v28 = v15;
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v18 source:v15 destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v18 source:v16 destination:self->_backwardFlowTexture[0]];
  v19 = createTexturesFromCVPixelBuffer(self->_warpedForwardFeatures[self->_bufferIndex].features[0], self->_device, 1, self->_warpedFeatureChannels);
  v20 = createTexturesFromCVPixelBuffer(self->_warpedBackwardFeatures[self->_bufferIndex].features[0], self->_device, 1, self->_warpedFeatureChannels);
  v29 = secondForwarpInputWithConsistencyMap;
  if (self->_useFlowConsistencyMap)
  {
    v21 = self->_firstForwarpInputWithConsistencyMap;
    secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  }

  else
  {
    v21 = v30;
  }

  v22 = secondForwarpInputWithConsistencyMap;
  [(Forwarp *)self->_forwarp setCreateOcclusionMask:1];
  LOBYTE(v27) = !self->_useFlowConsistencyMap;
  *&v23 = a7;
  [(Synthesis *)self encodeForwarpToCommandBuffer:v18 level:0 firstTexture:v21 secondTexture:v22 firstWarpedTexture:v19 secondWarpedTexture:v20 timeScale:v23 useFlowMagnitude:v27];
  [(Forwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:v18 forwardSource:v19 backwardSource:v20 forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
  if (self->_useFlowConsistencyMap)
  {
    v25 = [v19 newTextureViewWithPixelFormat:25 textureType:2 levels:0 slices:1, 3, 1];
    v26 = [v20 newTextureViewWithPixelFormat:25 textureType:2 levels:0 slices:1, 3, 1];
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  *&v24 = a7;
  [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:v18 first:v19 second:v20 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:v25 backwardConsistency:v24 timeScale:v26 destination:v17];
  [v18 commit];
  [v18 waitUntilScheduled];
}

- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4
{
  v12 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  v6 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  v7 = self->_firstFeatures.features[0];
  commandQueue = self->_commandQueue;
  v9 = self->_secondFeatures.features[0];
  v10 = v7;
  v11 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [v11 enqueue];
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:v11 source:v12 destination:v10];
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:v11 source:v6 destination:v9];

  [v11 commit];
}

- (void)upscaleFlowsForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4
{
  v8 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  v6 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
  v7 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v7 enqueue];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v7 source:v8 destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v7 source:v6 destination:self->_backwardFlowTexture[0]];
  [v7 commit];
}

- (void)encodeForwarpInputsForBlendToCommandBuffer:(id)a3 timeScale:(float)a4
{
  v11 = a3;
  if (self->_synthesisMode == 1)
  {
    v6 = self->_firstFeatures.features[4];
    v7 = self->_secondFeatures.features[4];
    v8 = 1;
  }

  else
  {
    v6 = createTexturesFromCVPixelBuffer(self->_normalizedFirst, self->_device, 1, 3uLL);
    v7 = createTexturesFromCVPixelBuffer(self->_normalizedSecond, self->_device, 1, 3uLL);
    v8 = 0;
  }

  [(Forwarp *)self->_forwarp setCreateOcclusionMask:1];
  LOBYTE(v10) = 0;
  *&v9 = a4;
  [(Synthesis *)self encodeForwarpToCommandBuffer:v11 level:v8 firstTexture:v6 secondTexture:v7 firstWarpedTexture:self->_firstWarpedTexture secondWarpedTexture:self->_secondWarpedTexture timeScale:v9 useFlowMagnitude:v10];
  [(Forwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:v11 forwardSource:self->_firstWarpedTexture backwardSource:self->_secondWarpedTexture forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
  [(Forwarp *)self->_forwarp setCreateOcclusionMask:0];
}

- (void)filterGridNetOutput:(__CVBuffer *)a3 timeScale:(float)a4 destination:(__CVBuffer *)a5
{
  v13 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  v8 = createTexturesFromCVPixelBuffer(a5, self->_device, 1, 3uLL);
  v9 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v9 enqueue];
  *&v10 = a4;
  [(Synthesis *)self encodeForwarpInputsForBlendToCommandBuffer:v9 timeScale:v10];
  LODWORD(v11) = 1045220557;
  *&v12 = a4;
  [(Forwarp *)self->_forwarp encodeBlendTexturesToCommandBuffer:v9 firstWarpedTexture:self->_firstWarpedTexture secondWarpedTexture:self->_secondWarpedTexture forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask synthesizedTexture:v13 timeScale:v12 synthesizedImageWeight:v11 destination:v8];
  [v9 commit];
  [v9 waitUntilScheduled];
}

- (void)createConsistencyMapFormFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6
{
  v11 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v12 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  v13 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  v14 = createTexturesFromCVPixelBuffer(a5, self->_device, 1, 2uLL);
  v15 = createTexturesFromCVPixelBuffer(a6, self->_device, 1, 2uLL);
  v28 = v12;
  if (self->_synthesisMode == 3)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;
  if (self->_synthesisMode == 3)
  {
    v18 = v15;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;
  v20 = [v17 width];
  v21 = [v17 height];
  v22 = [v17 arrayLength];
  if (!self->_firstForwarpInputWithConsistencyMap)
  {
    v23 = createTextures(self->_device, v20, v21, 1, v22 + 1);
    firstForwarpInputWithConsistencyMap = self->_firstForwarpInputWithConsistencyMap;
    self->_firstForwarpInputWithConsistencyMap = v23;
  }

  secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  if (!secondForwarpInputWithConsistencyMap)
  {
    v26 = createTextures(self->_device, v20, v21, 1, v22 + 1);
    v27 = self->_secondForwarpInputWithConsistencyMap;
    self->_secondForwarpInputWithConsistencyMap = v26;

    secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  }

  [(Synthesis *)self encodeConsistencyMapCreationWithFlowToCommandBuffer:v11 firstSource:v17 secondSource:v19 forwardFlow:v14 backwardFlow:v15 firstForwarpInput:self->_firstForwarpInputWithConsistencyMap secondForwarpInput:secondForwarpInputWithConsistencyMap];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__Synthesis_createConsistencyMapFormFirstImage_secondImage_flowForward_flowBackward___block_invoke;
  v29[3] = &unk_278FEA810;
  v29[4] = self;
  [v11 addCompletedHandler:v29];
  [v11 commit];
  [v11 waitUntilScheduled];
}

void __85__Synthesis_createConsistencyMapFormFirstImage_secondImage_flowForward_flowBackward___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 968) == 1)
  {
    [*(v1 + 952) maxConsistency];
    NSLog(&cfstr_SynthesisMaxFl.isa, v2);
  }
}

- (void)encodeConsistencyMapCreationWithFlowToCommandBuffer:(id)a3 firstSource:(id)a4 secondSource:(id)a5 forwardFlow:(id)a6 backwardFlow:(id)a7 firstForwarpInput:(id)a8 secondForwarpInput:(id)a9
{
  v30 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v28 = a5;
  v20 = [v18 arrayLength] - 1;
  v21 = [v15 width];
  v22 = [v16 width];
  v29 = [v18 newTextureViewWithPixelFormat:objc_msgSend(v18 textureType:"pixelFormat") levels:2 slices:0, 1, v20, 1];
  v23 = [v19 newTextureViewWithPixelFormat:objc_msgSend(v18 textureType:"pixelFormat") levels:2 slices:0, 1, v20, 1];
  if (v21 == v22)
  {
    v24 = v29;
    v25 = v23;
    [(FlowConsistencyMap *)self->_flowConsisteny encodeToCommandBuffer:v30 forwardFlow:v16 backwardFlow:v17 forwardConsistencyMap:v24 backwardConsistencyMap:v25];
  }

  else
  {
    v24 = createTextures(self->_device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
    v25 = createTextures(self->_device, [v16 width], objc_msgSend(v16, "height"), 1, 1uLL);
    [(FlowConsistencyMap *)self->_flowConsisteny encodeToCommandBuffer:v30 forwardFlow:v16 backwardFlow:v17 forwardConsistencyMap:v24 backwardConsistencyMap:v25];
    [(FlowConsistencyMap *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:v30 source:v24 detination:v29];
    [(FlowConsistencyMap *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:v30 source:v25 detination:v23];
  }

  v26 = [v15 arrayLength];
  v27 = [v30 blitCommandEncoder];
  [v27 copyFromTexture:v15 sourceSlice:0 sourceLevel:0 toTexture:v18 destinationSlice:0 destinationLevel:0 sliceCount:v26 levelCount:1];
  [v27 copyFromTexture:v28 sourceSlice:0 sourceLevel:0 toTexture:v19 destinationSlice:0 destinationLevel:0 sliceCount:v26 levelCount:1];

  [v27 endEncoding];
}

- (void)encodeWarpPyramidToCommandBuffer:(id)a3 forwardFlow:(id)a4 backwardFlow:(id)a5 forwarpConsistency:(id)a6 backwardConsistency:(id)a7 timeScale:(float)a8 destination:(id)a9
{
  v31 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = self->_firstFeatures.features[3];
  v22 = self->_secondFeatures.features[3];
  v23 = self->_firstFeatures.features[2];
  *&v24 = a8;
  if (self->_useFusedKernel)
  {
    [(Forwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:v31 first:v23 second:self->_secondFeatures.features[2] forwardFlow:v16 backwardFlow:v17 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v24 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:v18 timeScale:v19 destination:self->_blendedDCTexture];
  }

  else
  {
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:v31 source:v23 flow:v16 timeScale:v21 destination:v24];
    *&v25 = 1.0 - a8;
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:v31 source:self->_secondFeatures.features[2] flow:v17 timeScale:v22 destination:v25];
    *&v26 = a8;
    [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:v31 first:v21 second:v22 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:v18 backwardConsistency:v26 timeScale:v19 destination:self->_blendedDCTexture];
  }

  [(Pyramid *)self->_pyramid encode3x3GaussianFilterToCommandBuffer:v31 source:self->_blendedDCTexture destination:self->_filteredDCTexture];
  v27 = self->_firstFeatures.features[1];
  *&v28 = a8;
  if (self->_useFusedKernel)
  {
    [(Forwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:v31 first:v27 second:self->_secondFeatures.features[1] forwardFlow:v16 backwardFlow:v17 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v28 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:v18 timeScale:v19 destination:v20];
  }

  else
  {
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:v31 source:v27 flow:v16 timeScale:self->_firstWarpedTexture destination:v28];
    *&v29 = 1.0 - a8;
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:v31 source:self->_secondFeatures.features[1] flow:v17 timeScale:self->_secondWarpedTexture destination:v29];
    *&v30 = a8;
    [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:v31 first:self->_firstWarpedTexture second:self->_secondWarpedTexture forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:v18 backwardConsistency:v30 timeScale:v19 destination:v20];
  }

  [(Pyramid *)self->_pyramid encodeLayerBlendToCommandBuffer:v31 baseLayer:self->_filteredDCTexture toDestination:v20];
}

- (void)upscaleForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4 upscaledForwardFlow:(__CVBuffer *)a5 upscaledBackwardFlow:(__CVBuffer *)a6
{
  v15 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v11 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  v12 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(a5, self->_device, 1, 2uLL);
  v14 = createTexturesFromCVPixelBuffer(a6, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v15 source:v11 destination:v13];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v15 source:v12 destination:v14];
  [v15 commit];
  [v15 waitUntilScheduled];
}

@end