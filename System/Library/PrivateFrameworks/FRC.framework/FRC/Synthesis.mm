@interface Synthesis
- ($5489F4DBB444EEDC4A9C9285A26ACD04)secondFeatures;
- ($5F31EEEF43F9D35F5EF7F84C27E8E4C6)firstFeatures;
- ($E5C4B62B72694C91D3AF528F66444F85)warpedBackwardFeatures;
- ($E5C4B62B72694C91D3AF528F66444F85)warpedForwardFeatures;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)level;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)to;
- (Synthesis)initWithMode:(int64_t)mode;
- (id)firstForwarpInput;
- (id)secondForwarpInput;
- (int)twoLayerFlowSplattingFeatureLevelForLevel:(int)level;
- (int64_t)usageForTiling:(int64_t)tiling;
- (void)allocateFeatures;
- (void)allocateFlowAndLossTextures;
- (void)allocateForwardWarpBuffersForLevel:(int)level;
- (void)allocateForwardWarpInternalBuffers;
- (void)allocateResources;
- (void)allocateSplattingTextures;
- (void)allocateWarpedFeatures;
- (void)calcBackwarpLossFirst:(id)first second:(id)second timeScale:(float)scale;
- (void)createConsistencyMapFormFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward;
- (void)createFeaturePyramid:(__CVBuffer *)pyramid second:(__CVBuffer *)second;
- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward;
- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)frame secondImage:(__CVBuffer *)image;
- (void)createTilesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward;
- (void)dealloc;
- (void)encodeConsistencyMapCreationWithFlowToCommandBuffer:(id)buffer firstSource:(id)source secondSource:(id)secondSource forwardFlow:(id)flow backwardFlow:(id)backwardFlow firstForwarpInput:(id)input secondForwarpInput:(id)forwarpInput;
- (void)encodeForwarpInputsForBlendToCommandBuffer:(id)buffer timeScale:(float)scale;
- (void)encodeForwarpToCommandBuffer:(id)buffer level:(int)level firstTexture:(id)texture secondTexture:(id)secondTexture firstWarpedTexture:(id)warpedTexture secondWarpedTexture:(id)secondWarpedTexture timeScale:(float)scale useFlowMagnitude:(BOOL)self0;
- (void)encodeSubsampleToCommandBuffer:(id)buffer flow:(id *)flow loss:(id *)loss;
- (void)encodeWarpPyramidToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwarpConsistency:(id)consistency backwardConsistency:(id)backwardConsistency timeScale:(float)scale destination:(id)destination;
- (void)filterGridNetOutput:(__CVBuffer *)output timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)getWarpedFeatureSizeForLevel:(int)level tensorSize:(id *)size;
- (void)releaseFeatures;
- (void)releaseFeaturesForLevel:(int)level;
- (void)releaseForwardWarpInternalTextures;
- (void)releaseForwardWarpInternalTexturesAndBuffers;
- (void)releaseForwardWarpLinearBuffersForLevel:(int)level;
- (void)releaseForwardWarpTexturesForLevel:(int)level;
- (void)releaseResources;
- (void)releaseSplattingTextures;
- (void)releaseTiles;
- (void)releaseWarpedFeaturesForIndex:(unint64_t)index;
- (void)setTilingEnabled:(BOOL)enabled;
- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)upscaleFlowsForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward;
- (void)upscaleForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow upscaledForwardFlow:(__CVBuffer *)forwardFlow upscaledBackwardFlow:(__CVBuffer *)upscaledBackwardFlow;
- (void)warpFeaturesPerLayerWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale;
@end

@implementation Synthesis

- (Synthesis)initWithMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = Synthesis;
  v4 = [(Synthesis *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_usage = mode;
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

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)level
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
      usage = [(EspressoModel *)self->_gridNet usage];
      v7 = 0;
      v8 = 0;
      FRCGetAlignedInputFrameSizeForUsage(usage, &v8, &v7);
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

  newCommandQueue = [(MTLDeviceSPI *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

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

- (void)allocateForwardWarpBuffersForLevel:(int)level
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
    flowLevel = level;
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
  if (level <= 0 && (synthesisMode = self->_synthesisMode, synthesisMode - 2 >= 2) && (synthesisMode || !self->_temporalFiltering) || self->_linearSplatting)
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
  v14 = &self->super.isa + level;
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
    width = [(MTLTexture *)self->_firstFeatures.features[3] width];
    height = [(MTLTexture *)self->_firstFeatures.features[3] height];
    v18 = createTextures(self->_device, width, height, 1, 3uLL);
    blendedDCTexture = self->_blendedDCTexture;
    self->_blendedDCTexture = v18;

    v20 = createTextures(self->_device, width, height, 1, 3uLL);
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

- (void)releaseForwardWarpTexturesForLevel:(int)level
{
  v3 = &self->super.isa + level;
  v4 = v3[11];
  v3[11] = 0;

  v5 = v3[16];
  v3[16] = 0;

  v6 = v3[21];
  v3[21] = 0;

  v7 = v3[26];
  v3[26] = 0;
}

- (void)releaseForwardWarpLinearBuffersForLevel:(int)level
{
  v3 = &self->super.isa + level;
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

- (void)encodeSubsampleToCommandBuffer:(id)buffer flow:(id *)flow loss:(id *)loss
{
  backwarp = self->_backwarp;
  v9 = *flow;
  v10 = flow[1];
  bufferCopy = buffer;
  [(Backwarp *)backwarp encodeSubsampleFlowToCommandBuffer:bufferCopy source:v9 destination:v10];
  [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:bufferCopy source:flow[1] destination:flow[2]];
  [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:bufferCopy source:*loss destination:loss[1]];
  [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:bufferCopy source:loss[1] destination:loss[2]];
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

- (void)warpFeaturesPerLayerWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale
{
  v8 = createTexturesFromCVPixelBuffer(forward, self->_device, 1, 2uLL);
  v9 = self->_forwardFlowTexture[1];
  self->_forwardFlowTexture[1] = v8;

  v10 = createTexturesFromCVPixelBuffer(backward, self->_device, 1, 2uLL);
  v11 = self->_backwardFlowTexture[1];
  self->_backwardFlowTexture[1] = v10;

  v18 = self->_firstFeatures.features[self->_pyramidLevels];
  v12 = self->_secondFeatures.features[self->_pyramidLevels];
  v13 = objc_autoreleasePoolPush();
  *&v14 = scale;
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
    *&v15 = scale;
    [(Synthesis *)self warpFeatureLevel:v16 timeScale:v15];
    v16 = (v16 + 1);
  }

  while (v16 < v17);
}

- (void)calcBackwarpLossFirst:(id)first second:(id)second timeScale:(float)scale
{
  firstCopy = first;
  secondCopy = second;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  *&v10 = scale;
  [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:commandBuffer first:firstCopy second:secondCopy flow:self->_forwardFlowTexture[1] timeScale:self->_forwardLossTexture[1] destination:v10];
  *&v11 = 1.0 - scale;
  [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:commandBuffer first:secondCopy second:firstCopy flow:self->_backwardFlowTexture[1] timeScale:self->_backwardLossTexture[1] destination:v11];
  if (self->_pyramidLevels >= 3)
  {
    v12 = &self->_backwardLossTexture[2];
    v13 = 2;
    do
    {
      [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:commandBuffer source:*(v12 - 6) destination:*(v12 - 5)];
      [(Backwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:commandBuffer source:*(v12 - 1) destination:*v12];
      ++v13;
      ++v12;
    }

    while (self->_pyramidLevels > v13);
  }

  if (self->_synthesisMode == 1)
  {
    [(Backwarp *)self->_backwarp encodeUpscaleErrorToCommandBuffer:commandBuffer source:self->_forwardLossTexture[1] destination:self->_forwardLossTexture[0]];
    [(Backwarp *)self->_backwarp encodeUpscaleErrorToCommandBuffer:commandBuffer source:self->_backwardLossTexture[1] destination:self->_backwardLossTexture[0]];
  }

  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:self->_forwardFlowTexture[1] destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:self->_backwardFlowTexture[1] destination:self->_backwardFlowTexture[0]];
  if (self->_pyramidLevels >= 3)
  {
    v14 = &self->_backwardFlowTexture[2];
    v15 = 2;
    do
    {
      [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:commandBuffer source:*(v14 - 6) destination:*(v14 - 5)];
      [(Backwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:commandBuffer source:*(v14 - 1) destination:*v14];
      ++v15;
      ++v14;
    }

    while (self->_pyramidLevels > v15);
  }

  kdebug_trace();
  [commandBuffer addCompletedHandler:&__block_literal_global_1];
  [commandBuffer commit];
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

- (int)twoLayerFlowSplattingFeatureLevelForLevel:(int)level
{
  if (!level)
  {
    return 1;
  }

  if (level == 1)
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

- (void)releaseFeaturesForLevel:(int)level
{
  v3 = &self->super.isa + level;
  v4 = v3[46];
  v3[46] = 0;

  v5 = v3[51];
  v3[51] = 0;
}

- (void)getWarpedFeatureSizeForLevel:(int)level tensorSize:(id *)size
{
  v5 = level - 1;
  if (level >= 1 && self->_synthesisMode == 1)
  {
    QuarterSizeUsage = getQuarterSizeUsage(self->_usage);

    getSynthesisTensorSize(QuarterSizeUsage, v5, &size->var0);
  }

  else
  {
    [(Synthesis *)self synthesisTensorSizeForLevel:?];
    *&size->var0 = v7;
    size->var2 = v8;
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

- (void)releaseWarpedFeaturesForIndex:(unint64_t)index
{
  if (self->_pyramidLevels)
  {
    v4 = 0;
    v5 = &self->_warpedBackwardFeatures[index];
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

- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward
{
  self->_forwardFlow = CVPixelBufferRetain(forward);
  self->_backwardFlow = CVPixelBufferRetain(backward);
  self->_normalizedFirst = CVPixelBufferRetain(image);
  self->_normalizedSecond = CVPixelBufferRetain(secondImage);
  if (self->_synthesisMode == 3)
  {
    if (!self->_fullSizeSplatting)
    {
      [(Synthesis *)self createSubsampledInputsFromFirstFrame:image secondImage:secondImage];
    }

    Width = CVPixelBufferGetWidth(forward);
    if (Width != [(MTLTexture *)self->_forwardLossTexture[0] width])
    {
      [(Synthesis *)self upscaleFlowsForward:forward backward:backward];
    }
  }

  if (self->_useFlowConsistencyMap)
  {
    [(Synthesis *)self createConsistencyMapFormFirstImage:image secondImage:secondImage flowForward:forward flowBackward:backward];
  }

  if (self->_pyramidLevels != 1)
  {
    if (self->_tilingEnabled)
    {
      [(Synthesis *)self createTilesFromFirstImage:image secondImage:secondImage flowForward:forward flowBackward:backward];
      CVPixelBufferRelease(image);

      CVPixelBufferRelease(secondImage);
    }

    else
    {

      [(Synthesis *)self createFeaturePyramid:image second:secondImage];
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

- (void)createFeaturePyramid:(__CVBuffer *)pyramid second:(__CVBuffer *)second
{
  kdebug_trace();
  v7 = createTexturesFromCVPixelBuffer(pyramid, self->_device, 1, 3uLL);
  v8 = createTexturesFromCVPixelBuffer(second, self->_device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  [(Pyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:commandBuffer fromTexture:v7 toTexture:&self->_firstFeatures levels:self->_pyramidLevels];
  [(Pyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:commandBuffer fromTexture:v8 toTexture:&self->_secondFeatures levels:self->_pyramidLevels];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__Synthesis_createFeaturePyramid_second___block_invoke;
  v10[3] = &unk_278FEA8D0;
  v10[4] = self;
  v10[5] = pyramid;
  v10[6] = second;
  [commandBuffer addCompletedHandler:v10];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
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

- (BOOL)switchUsageTo:(int64_t)to
{
  QuarterSizeUsage = to;
  self->_originalUsage = to;
  if (self->_tilingEnabled)
  {
    QuarterSizeUsage = [(Synthesis *)self usageForTiling:to];
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

- (void)setTilingEnabled:(BOOL)enabled
{
  self->_tilingEnabled = enabled;
  if (enabled)
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

- (int64_t)usageForTiling:(int64_t)tiling
{
  if (tiling > 2)
  {
    return -1;
  }

  v3 = tiling | 0x64;
  self->_numTiles = dword_24A8FF48C[tiling];
  return v3;
}

- (void)createTilesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward
{
  backwardCopy = backward;
  v28 = *MEMORY[0x277D85DE8];
  v27 = objc_autoreleasePoolPush();
  tiling = self->_tiling;
  Width = CVPixelBufferGetWidth(image);
  v12 = [(Tiling *)tiling createTileInfoArrayForFrameWithWidth:Width height:CVPixelBufferGetHeight(image) / 3 numTiles:self->_numTiles];
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
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:commandBuffer from:image to:self->_firstImageTiles channels:3 tileInfo:self->_imageTileInfo numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:commandBuffer from:secondImage to:self->_secondImageTiles channels:3 tileInfo:self->_imageTileInfo numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:commandBuffer from:forward to:self->_forwardFlowTiles channels:2 tileInfo:v13 numTiles:self->_numTiles];
  [(Tiling *)self->_tiling encodeTileBufferToCommandBuffer:commandBuffer from:backwardCopy to:self->_backwardFlowTiles channels:2 tileInfo:v13 numTiles:self->_numTiles];
  [commandBuffer addCompletedHandler:&__block_literal_global_53];
  [commandBuffer commit];

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

- (void)encodeForwarpToCommandBuffer:(id)buffer level:(int)level firstTexture:(id)texture secondTexture:(id)secondTexture firstWarpedTexture:(id)warpedTexture secondWarpedTexture:(id)secondWarpedTexture timeScale:(float)scale useFlowMagnitude:(BOOL)self0
{
  bufferCopy = buffer;
  textureCopy = texture;
  secondTextureCopy = secondTexture;
  warpedTextureCopy = warpedTexture;
  secondWarpedTextureCopy = secondWarpedTexture;
  linearSplatting = self->_linearSplatting;
  forwarp = self->_forwarp;
  if (magnitude)
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

    levelCopy2 = level;
    v28 = &self->super.isa + level;
    if (linearSplatting)
    {
      *&v23 = 1.0;
    }

    else
    {
      *&v23 = scale;
    }

    if (linearSplatting)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 1.0 - scale;
    }

    LODWORD(v24) = 1050253722;
    *&v25 = v26;
    [(Backwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:bufferCopy first:textureCopy second:secondTextureCopy flow:v28[21] timeScale:v28[11] gamma:v23 protectionThreshold:v24 destination:v25];
    *&v30 = v29;
    LODWORD(v31) = 1050253722;
    *&v32 = v26;
    [(Backwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:bufferCopy first:secondTextureCopy second:textureCopy flow:v28[26] timeScale:v28[16] gamma:v30 protectionThreshold:v31 destination:v32];
  }

  else
  {
    LODWORD(v20) = 1028443341;
    [(Forwarp *)forwarp setErrorTolerance:v20];
    [(Forwarp *)self->_forwarp setLimitBilinearInterpolation:0];
    levelCopy2 = level;
    v34 = &self->super.isa + level;
    if (linearSplatting)
    {
      *&v33 = 1.0;
    }

    else
    {
      *&v33 = scale;
    }

    if (linearSplatting)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 1.0 - scale;
    }

    [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:textureCopy second:secondTextureCopy flow:v34[21] timeScale:v34[11] destination:v33];
    *&v36 = v35;
    [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:secondTextureCopy second:textureCopy flow:v34[26] timeScale:v34[16] destination:v36];
  }

  v37 = self->_forwardLossTexture[levelCopy2];
  v38 = self->_backwardLossTexture[levelCopy2];
  if (self->_filterErrorMap)
  {
    v40 = self->_filteredForwardLossTexture;

    v46 = secondTextureCopy;
    v41 = textureCopy;
    v42 = warpedTextureCopy;
    v43 = self->_filteredBackwarLossTexture;

    [(Forwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:bufferCopy source:self->_forwardLossTexture[levelCopy2] destination:v40];
    [(Forwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:bufferCopy source:self->_backwardLossTexture[levelCopy2] destination:v43];
    v37 = v40;
    v38 = v43;
    warpedTextureCopy = v42;
    textureCopy = v41;
    secondTextureCopy = v46;
  }

  v44 = &self->super.isa + levelCopy2;
  *&v39 = scale;
  [(Forwarp *)self->_forwarp encodeToCommandBuffer:bufferCopy input:textureCopy flow:v44[21] error:v37 timeScale:1 fullWarp:v44[31] bestError:v39 output:v44[36] destination:warpedTextureCopy];
  *&v45 = 1.0 - scale;
  [(Forwarp *)self->_forwarp encodeToCommandBuffer:bufferCopy input:secondTextureCopy flow:v44[26] error:v38 timeScale:1 fullWarp:v44[31] bestError:v45 output:v44[36] destination:secondWarpedTextureCopy];
}

- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination
{
  v30 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  secondForwarpInputWithConsistencyMap = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  v15 = createTexturesFromCVPixelBuffer(forward, self->_device, 1, 2uLL);
  v16 = createTexturesFromCVPixelBuffer(backward, self->_device, 1, 2uLL);
  v17 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  v28 = v15;
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v15 destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v16 destination:self->_backwardFlowTexture[0]];
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
  *&v23 = scale;
  [(Synthesis *)self encodeForwarpToCommandBuffer:commandBuffer level:0 firstTexture:v21 secondTexture:v22 firstWarpedTexture:v19 secondWarpedTexture:v20 timeScale:v23 useFlowMagnitude:v27];
  [(Forwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:commandBuffer forwardSource:v19 backwardSource:v20 forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
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

  *&v24 = scale;
  [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:commandBuffer first:v19 second:v20 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:v25 backwardConsistency:v24 timeScale:v26 destination:v17];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)frame secondImage:(__CVBuffer *)image
{
  v12 = createTexturesFromCVPixelBuffer(frame, self->_device, 1, 3uLL);
  v6 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  v7 = self->_firstFeatures.features[0];
  commandQueue = self->_commandQueue;
  v9 = self->_secondFeatures.features[0];
  v10 = v7;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [commandBuffer enqueue];
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v12 destination:v10];
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v6 destination:v9];

  [commandBuffer commit];
}

- (void)upscaleFlowsForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward
{
  v8 = createTexturesFromCVPixelBuffer(forward, self->_device, 1, 2uLL);
  v6 = createTexturesFromCVPixelBuffer(backward, self->_device, 1, 2uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v8 destination:self->_forwardFlowTexture[0]];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v6 destination:self->_backwardFlowTexture[0]];
  [commandBuffer commit];
}

- (void)encodeForwarpInputsForBlendToCommandBuffer:(id)buffer timeScale:(float)scale
{
  bufferCopy = buffer;
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
  *&v9 = scale;
  [(Synthesis *)self encodeForwarpToCommandBuffer:bufferCopy level:v8 firstTexture:v6 secondTexture:v7 firstWarpedTexture:self->_firstWarpedTexture secondWarpedTexture:self->_secondWarpedTexture timeScale:v9 useFlowMagnitude:v10];
  [(Forwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:bufferCopy forwardSource:self->_firstWarpedTexture backwardSource:self->_secondWarpedTexture forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
  [(Forwarp *)self->_forwarp setCreateOcclusionMask:0];
}

- (void)filterGridNetOutput:(__CVBuffer *)output timeScale:(float)scale destination:(__CVBuffer *)destination
{
  v13 = createTexturesFromCVPixelBuffer(output, self->_device, 1, 3uLL);
  v8 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  *&v10 = scale;
  [(Synthesis *)self encodeForwarpInputsForBlendToCommandBuffer:commandBuffer timeScale:v10];
  LODWORD(v11) = 1045220557;
  *&v12 = scale;
  [(Forwarp *)self->_forwarp encodeBlendTexturesToCommandBuffer:commandBuffer firstWarpedTexture:self->_firstWarpedTexture secondWarpedTexture:self->_secondWarpedTexture forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask synthesizedTexture:v13 timeScale:v12 synthesizedImageWeight:v11 destination:v8];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)createConsistencyMapFormFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v12 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  v13 = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  v14 = createTexturesFromCVPixelBuffer(forward, self->_device, 1, 2uLL);
  v15 = createTexturesFromCVPixelBuffer(backward, self->_device, 1, 2uLL);
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
  width = [v17 width];
  height = [v17 height];
  arrayLength = [v17 arrayLength];
  if (!self->_firstForwarpInputWithConsistencyMap)
  {
    v23 = createTextures(self->_device, width, height, 1, arrayLength + 1);
    firstForwarpInputWithConsistencyMap = self->_firstForwarpInputWithConsistencyMap;
    self->_firstForwarpInputWithConsistencyMap = v23;
  }

  secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  if (!secondForwarpInputWithConsistencyMap)
  {
    v26 = createTextures(self->_device, width, height, 1, arrayLength + 1);
    v27 = self->_secondForwarpInputWithConsistencyMap;
    self->_secondForwarpInputWithConsistencyMap = v26;

    secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  }

  [(Synthesis *)self encodeConsistencyMapCreationWithFlowToCommandBuffer:commandBuffer firstSource:v17 secondSource:v19 forwardFlow:v14 backwardFlow:v15 firstForwarpInput:self->_firstForwarpInputWithConsistencyMap secondForwarpInput:secondForwarpInputWithConsistencyMap];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__Synthesis_createConsistencyMapFormFirstImage_secondImage_flowForward_flowBackward___block_invoke;
  v29[3] = &unk_278FEA810;
  v29[4] = self;
  [commandBuffer addCompletedHandler:v29];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
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

- (void)encodeConsistencyMapCreationWithFlowToCommandBuffer:(id)buffer firstSource:(id)source secondSource:(id)secondSource forwardFlow:(id)flow backwardFlow:(id)backwardFlow firstForwarpInput:(id)input secondForwarpInput:(id)forwarpInput
{
  bufferCopy = buffer;
  sourceCopy = source;
  flowCopy = flow;
  backwardFlowCopy = backwardFlow;
  inputCopy = input;
  forwarpInputCopy = forwarpInput;
  secondSourceCopy = secondSource;
  v20 = [inputCopy arrayLength] - 1;
  width = [sourceCopy width];
  width2 = [flowCopy width];
  v29 = [inputCopy newTextureViewWithPixelFormat:objc_msgSend(inputCopy textureType:"pixelFormat") levels:2 slices:0, 1, v20, 1];
  v23 = [forwarpInputCopy newTextureViewWithPixelFormat:objc_msgSend(inputCopy textureType:"pixelFormat") levels:2 slices:0, 1, v20, 1];
  if (width == width2)
  {
    v24 = v29;
    v25 = v23;
    [(FlowConsistencyMap *)self->_flowConsisteny encodeToCommandBuffer:bufferCopy forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardConsistencyMap:v24 backwardConsistencyMap:v25];
  }

  else
  {
    v24 = createTextures(self->_device, [flowCopy width], objc_msgSend(flowCopy, "height"), 1, 1uLL);
    v25 = createTextures(self->_device, [flowCopy width], objc_msgSend(flowCopy, "height"), 1, 1uLL);
    [(FlowConsistencyMap *)self->_flowConsisteny encodeToCommandBuffer:bufferCopy forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardConsistencyMap:v24 backwardConsistencyMap:v25];
    [(FlowConsistencyMap *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:bufferCopy source:v24 detination:v29];
    [(FlowConsistencyMap *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:bufferCopy source:v25 detination:v23];
  }

  arrayLength = [sourceCopy arrayLength];
  blitCommandEncoder = [bufferCopy blitCommandEncoder];
  [blitCommandEncoder copyFromTexture:sourceCopy sourceSlice:0 sourceLevel:0 toTexture:inputCopy destinationSlice:0 destinationLevel:0 sliceCount:arrayLength levelCount:1];
  [blitCommandEncoder copyFromTexture:secondSourceCopy sourceSlice:0 sourceLevel:0 toTexture:forwarpInputCopy destinationSlice:0 destinationLevel:0 sliceCount:arrayLength levelCount:1];

  [blitCommandEncoder endEncoding];
}

- (void)encodeWarpPyramidToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwarpConsistency:(id)consistency backwardConsistency:(id)backwardConsistency timeScale:(float)scale destination:(id)destination
{
  bufferCopy = buffer;
  flowCopy = flow;
  backwardFlowCopy = backwardFlow;
  consistencyCopy = consistency;
  backwardConsistencyCopy = backwardConsistency;
  destinationCopy = destination;
  v21 = self->_firstFeatures.features[3];
  v22 = self->_secondFeatures.features[3];
  v23 = self->_firstFeatures.features[2];
  *&v24 = scale;
  if (self->_useFusedKernel)
  {
    [(Forwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v23 second:self->_secondFeatures.features[2] forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v24 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:consistencyCopy timeScale:backwardConsistencyCopy destination:self->_blendedDCTexture];
  }

  else
  {
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:v23 flow:flowCopy timeScale:v21 destination:v24];
    *&v25 = 1.0 - scale;
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:self->_secondFeatures.features[2] flow:backwardFlowCopy timeScale:v22 destination:v25];
    *&v26 = scale;
    [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v21 second:v22 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:consistencyCopy backwardConsistency:v26 timeScale:backwardConsistencyCopy destination:self->_blendedDCTexture];
  }

  [(Pyramid *)self->_pyramid encode3x3GaussianFilterToCommandBuffer:bufferCopy source:self->_blendedDCTexture destination:self->_filteredDCTexture];
  v27 = self->_firstFeatures.features[1];
  *&v28 = scale;
  if (self->_useFusedKernel)
  {
    [(Forwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v27 second:self->_secondFeatures.features[1] forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v28 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:consistencyCopy timeScale:backwardConsistencyCopy destination:destinationCopy];
  }

  else
  {
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:v27 flow:flowCopy timeScale:self->_firstWarpedTexture destination:v28];
    *&v29 = 1.0 - scale;
    [(Backwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:self->_secondFeatures.features[1] flow:backwardFlowCopy timeScale:self->_secondWarpedTexture destination:v29];
    *&v30 = scale;
    [(Forwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:self->_firstWarpedTexture second:self->_secondWarpedTexture forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:consistencyCopy backwardConsistency:v30 timeScale:backwardConsistencyCopy destination:destinationCopy];
  }

  [(Pyramid *)self->_pyramid encodeLayerBlendToCommandBuffer:bufferCopy baseLayer:self->_filteredDCTexture toDestination:destinationCopy];
}

- (void)upscaleForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow upscaledForwardFlow:(__CVBuffer *)forwardFlow upscaledBackwardFlow:(__CVBuffer *)upscaledBackwardFlow
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v11 = createTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
  v12 = createTexturesFromCVPixelBuffer(backwardFlow, self->_device, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(forwardFlow, self->_device, 1, 2uLL);
  v14 = createTexturesFromCVPixelBuffer(upscaledBackwardFlow, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v11 destination:v13];
  [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v12 destination:v14];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

@end