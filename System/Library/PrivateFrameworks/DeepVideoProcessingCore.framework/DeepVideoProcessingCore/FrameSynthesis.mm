@interface FrameSynthesis
- ($E5C4B62B72694C91D3AF528F66444F85)warpedBackwardFeatures;
- ($E5C4B62B72694C91D3AF528F66444F85)warpedForwardFeatures;
- ($E67C0ECA887373977E0409336C0BB7EF)firstFeatures;
- ($E67C0ECA887373977E0409336C0BB7EF)secondFeatures;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)level;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)to;
- (FrameSynthesis)initWithMode:(int64_t)mode;
- (__CVBuffer)synthesizeFrameFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale frameIndex:(unint64_t)index;
- (id)firstForwarpInput;
- (id)secondForwarpInput;
- (int)twoLayerFlowSplattingFeatureLevelForLevel:(int)level;
- (void)allocateFeatures;
- (void)allocateFeaturesForUsage:(int64_t)usage Level:(int)level;
- (void)allocateFlowAndLossTextures;
- (void)allocateForwardWarpBuffersForLevel:(int)level;
- (void)allocateForwardWarpInternalBuffers;
- (void)allocateResources;
- (void)allocateSplattingTextures;
- (void)allocateWarpedFeatures;
- (void)calcBackwarpLossFirst:(id)first second:(id)second timeScale:(float)scale;
- (void)createConsistencyMapFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward;
- (void)createFeaturePyramid:(__CVBuffer *)pyramid second:(__CVBuffer *)second;
- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward skipFirstFramePreProcessing:(BOOL)processing;
- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)frame secondImage:(__CVBuffer *)image;
- (void)dealloc;
- (void)encodeConsistencyMapCreationWithFlowToCommandBuffer:(id)buffer firstSource:(id)source secondSource:(id)secondSource forwardFlow:(id)flow backwardFlow:(id)backwardFlow firstForwarpInput:(id)input secondForwarpInput:(id)forwarpInput;
- (void)encodeForwarpToCommandBuffer:(id)buffer level:(int)level firstTexture:(id)texture secondTexture:(id)secondTexture firstWarpedTexture:(id)warpedTexture secondWarpedTexture:(id)secondWarpedTexture timeScale:(float)scale useFlowMagnitude:(BOOL)self0;
- (void)encodeSubsampleToCommandBuffer:(id)buffer flow:(id *)flow loss:(id *)loss;
- (void)encodeWarpPyramidToCommandBuffer:(id)buffer forwardFlow:(id)flow backwardFlow:(id)backwardFlow forwarpConsistency:(id)consistency backwardConsistency:(id)backwardConsistency timeScale:(float)scale destination:(id)destination;
- (void)forwardWarpForLevel:(int)level feature:(id)feature flow:(id)flow error:(id)error timeScale:(float)scale warpedOutput:(id)output fullWarp:(BOOL)warp callback:(id)self0;
- (void)forwardWarpForLevel:(int)level first:(id)first second:(id)second timeScale:(float)scale forwardOutput:(id)output backwardOutput:(id)backwardOutput;
- (void)releaseFeatures;
- (void)releaseForwardWarpInternalTextures;
- (void)releaseForwardWarpInternalTexturesAndBuffers;
- (void)releaseForwardWarpLinearBuffersForLevel:(int)level;
- (void)releaseForwardWarpTexturesForLevel:(int)level;
- (void)releaseResources;
- (void)releaseSplattingTextures;
- (void)releaseWarpedFeaturesForIndex:(unint64_t)index;
- (void)synthesizeImageWithFlowSplattingFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)upscaleFlowsForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward;
- (void)upscaleForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow upscaledForwardFlow:(__CVBuffer *)forwardFlow upscaledBackwardFlow:(__CVBuffer *)upscaledBackwardFlow;
- (void)warpFeatureLevel:(int)level timeScale:(float)scale;
- (void)warpFeaturesPerLayerWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale;
@end

@implementation FrameSynthesis

- (FrameSynthesis)initWithMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = FrameSynthesis;
  v4 = [(FrameSynthesis *)&v8 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v4->_usage = mode;
  if ([(FrameSynthesis *)v4 createModules])
  {
    v5->_resourcesPreAllocated = 0;
    v5->_numWarpedBuffers = 1;
    v5->_framePipeline = 1;
    v5->_pyramidLevels = 3;
    v5->_flowLevel = 1;
    v5->_fullWarpStartLevel = 1;
    *&v5->_filterErrorMap = 0;
    v5->_useFusedKernel = 1;
LABEL_4:
    v6 = v5;
    goto LABEL_9;
  }

  if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
  {
    [FrameSynthesis initWithMode:];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)synthesisTensorSizeForLevel:(SEL)level
{
  v11 = 0;
  v12 = 0;
  linearSplatting = self->_linearSplatting;
  usage = self->_usage;
  if (linearSplatting)
  {
    getInputFrameSizeForUsage(usage, &v12, &v11);
  }

  else
  {
    getAlignedInputFrameSizeForUsage(usage, &v12, &v11);
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
    [(FrameSynthesis *)self allocateForwardWarpInternalBuffers];
    [(FrameSynthesis *)self allocateFeatures];
    [(FrameSynthesis *)self allocateWarpedFeatures];
    [(FrameSynthesis *)self allocateFlowAndLossTextures];
    [(FrameSynthesis *)self allocateSplattingTextures];
    v3 = 0;
    v4 = 0;
    getAlignedInputFrameSizeForUsage(self->_usage, &v4, &v3);
    self->_normalizedBufferPool = createPixelBufferPool(v4, 3 * v3, 1278226536, 0);
    self->_resourcesPreAllocated = 1;
  }
}

- (void)releaseResources
{
  if (self->_resourcesPreAllocated)
  {
    if (self->_pyramidLevels)
    {
      v3 = 0;
      do
      {
        [(FrameSynthesis *)self releaseFeaturesForLevel:v3++];
      }

      while (self->_pyramidLevels > v3);
    }

    if (self->_numWarpedBuffers)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        [(FrameSynthesis *)self releaseWarpedFeaturesForIndex:v4];
        v4 = v5;
      }

      while (self->_numWarpedBuffers > v5++);
    }

    [(FrameSynthesis *)self releaseForwardWarpInternalTexturesAndBuffers];
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

    [(FrameSynthesis *)self releaseSplattingTextures];
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

- ($E67C0ECA887373977E0409336C0BB7EF)firstFeatures
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
  v2 = 352;
  if (self->_useFlowConsistencyMap)
  {
    v2 = 336;
  }

  return *(&self->super.isa + v2);
}

- (id)secondForwarpInput
{
  v2 = 392;
  if (self->_useFlowConsistencyMap)
  {
    v2 = 344;
  }

  return *(&self->super.isa + v2);
}

- ($E67C0ECA887373977E0409336C0BB7EF)secondFeatures
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
  flowConsisteny = self->_flowConsisteny;
  self->_flowConsisteny = 0;

  v4.receiver = self;
  v4.super_class = FrameSynthesis;
  [(FrameSynthesis *)&v4 dealloc];
}

- (BOOL)createModules
{
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  newCommandQueue = [(MTLDeviceSPI *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v7 = [[OFBackwarp alloc] initWithDevice:self->_device interleaved:0];
  backwarp = self->_backwarp;
  self->_backwarp = v7;

  if (!self->_backwarp)
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v13 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        return v13;
      }

      [FrameSynthesis createModules];
    }

    goto LABEL_10;
  }

  v9 = [[FRCPyramid alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  pyramid = self->_pyramid;
  self->_pyramid = v9;

  if (!self->_pyramid)
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v13 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        return v13;
      }

      [FrameSynthesis createModules];
    }

LABEL_10:
    LOBYTE(v13) = 0;
    return v13;
  }

  if (self->_useFlowConsistencyMap)
  {
    v11 = [[FlowConsistency alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
    flowConsisteny = self->_flowConsisteny;
    self->_flowConsisteny = v11;
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (void)allocateForwardWarpInternalBuffers
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    do
    {
      [(FrameSynthesis *)self allocateForwardWarpBuffersForLevel:v3++];
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
      [(FrameSynthesis *)self synthesisTensorSizeForLevel:flowLevel];
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
        v12 = createTextures(self->_device, v7, v6, 2, 1uLL);
        v13 = backwardLossTexture[5];
        backwardLossTexture[5] = v12;

        v14 = createTextures(self->_device, v7, v6, 2, 1uLL);
        v15 = backwardLossTexture[10];
        backwardLossTexture[10] = v14;

        if (!v3 && self->_filterErrorMap)
        {
          if (![(OFForwarp *)self->_forwarp filterErrorMapByGaussian])
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
  v15 = 0;
  v16 = 0;
  v17 = 0;
  getSynthesisTensorSize(self->_usage, flowLevel, &v15);
  v7 = v15;
  v8 = v16;
  if ((level > 0 || (self->_synthesisMode & 0xFFFFFFFFFFFFFFFELL) == 2) && !self->_linearSplatting)
  {
    forwarp = self->_forwarp;
    v10 = v15;
    v11 = v16;
  }

  else
  {
    forwarp = self->_forwarp;
    v10 = 32;
    v11 = 32;
  }

  v12 = [(OFForwarp *)forwarp createBestBufferWidth:v10 height:v11];
  v13 = &self->super.isa + level;
  v14 = v13[30];
  v13[30] = v12;

  v13[35] = [(OFForwarp *)self->_forwarp createOutputBufferWidth:v7 height:v8 channels:v5 + self->_useFlowConsistencyMap];

  MEMORY[0x2821F96F8]();
}

- (void)allocateSplattingTextures
{
  v32 = 0;
  v33 = 0;
  getAlignedInputFrameSizeForUsage(self->_usage, &v33, &v32);
  synthesisMode = self->_synthesisMode;
  if (synthesisMode == 3)
  {
    goto LABEL_5;
  }

  if (synthesisMode == 2)
  {
    v22 = createTextures(self->_device, v33, v32, 1, 1uLL);
    dilatedForwardMask = self->_dilatedForwardMask;
    self->_dilatedForwardMask = v22;

    v24 = createTextures(self->_device, v33, v32, 1, 1uLL);
    dilatedBackwardMask = self->_dilatedBackwardMask;
    self->_dilatedBackwardMask = v24;

    return;
  }

  if (synthesisMode == 1 && self->_temporalFiltering)
  {
LABEL_5:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    getSynthesisTensorSize(self->_usage, self->_flowLevel, &v29);
    v4 = v29;
    v5 = v30;
    if (self->_fullSizeSplatting)
    {
      v6 = v33;
    }

    else
    {
      v6 = v29;
    }

    if (self->_fullSizeSplatting)
    {
      v7 = v32;
    }

    else
    {
      v7 = v30;
    }

    v8 = createTextures(self->_device, v6, v7, 1, 1uLL);
    v9 = self->_dilatedForwardMask;
    self->_dilatedForwardMask = v8;

    v10 = createTextures(self->_device, v6, v7, 1, 1uLL);
    v11 = self->_dilatedBackwardMask;
    self->_dilatedBackwardMask = v10;

    if (self->_synthesisMode != 3)
    {
      v26 = createTextures(self->_device, v4, v5, 1, 4uLL);
      firstWarpedTexture = self->_firstWarpedTexture;
      self->_firstWarpedTexture = v26;

      v20 = createTextures(self->_device, v4, v5, 1, 4uLL);
      v21 = 592;
      goto LABEL_18;
    }

    if (!self->_useFusedKernel)
    {
      v12 = createTextures(self->_device, v33, v32, 1, 3uLL);
      v13 = self->_firstWarpedTexture;
      self->_firstWarpedTexture = v12;

      v14 = createTextures(self->_device, v33, v32, 1, 3uLL);
      secondWarpedTexture = self->_secondWarpedTexture;
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
      v21 = 608;
LABEL_18:
      v28 = *(&self->super.isa + v21);
      *(&self->super.isa + v21) = v20;
    }
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
}

- (void)releaseForwardWarpTexturesForLevel:(int)level
{
  v3 = &self->super.isa + level;
  v4 = v3[10];
  v3[10] = 0;

  v5 = v3[15];
  v3[15] = 0;

  v6 = v3[20];
  v3[20] = 0;

  v7 = v3[25];
  v3[25] = 0;
}

- (void)releaseForwardWarpLinearBuffersForLevel:(int)level
{
  v3 = &self->super.isa + level;
  v4 = v3[30];
  v3[30] = 0;

  v5 = v3[35];
  v3[35] = 0;
}

- (void)releaseForwardWarpInternalTextures
{
  if (self->_pyramidLevels)
  {
    v3 = 0;
    do
    {
      [(FrameSynthesis *)self releaseForwardWarpTexturesForLevel:v3++];
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
      [(FrameSynthesis *)self releaseForwardWarpTexturesForLevel:v3];
      [(FrameSynthesis *)self releaseForwardWarpLinearBuffersForLevel:v3++];
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
  [(OFBackwarp *)backwarp encodeSubsampleFlowToCommandBuffer:bufferCopy source:v9 destination:v10];
  [(OFBackwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:bufferCopy source:flow[1] destination:flow[2]];
  [(OFBackwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:bufferCopy source:*loss destination:loss[1]];
  [(OFBackwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:bufferCopy source:loss[1] destination:loss[2]];
}

- (void)warpFeatureLevel:(int)level timeScale:(float)scale
{
  v5 = *&level;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  [(FrameSynthesis *)self getWarpedFeatureSizeForLevel:*&level tensorSize:&v40];
  v7 = v42;
  v8 = (&self->super.isa + v5);
  v9 = v8[44];
  v23 = v8[49];
  v10 = isBufferCopyNecessaryForCVtoTextureConversion(v40, v41, v42);
  fullWarpStartLevel = self->_fullWarpStartLevel;
  context = objc_autoreleasePoolPush();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = createTexturesFromCVPixelBuffer(self->_warpedForwardFeatures[self->_bufferIndex].features[v5], self->_device, 1, v7);
  v12 = v8[20];
  v13 = v8[10];
  v14 = v35[5];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __45__FrameSynthesis_warpFeatureLevel_timeScale___block_invoke;
  v32[3] = &unk_278F53808;
  v33 = v10;
  v32[4] = &v34;
  *&v15 = scale;
  [(FrameSynthesis *)self forwardWarpForLevel:v5 feature:v9 flow:v12 error:v13 timeScale:v14 warpedOutput:fullWarpStartLevel <= v5 fullWarp:v15 callback:v32];
  v16 = v5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = createTexturesFromCVPixelBuffer(self->_warpedBackwardFeatures[self->_bufferIndex].features[v5], self->_device, 1, v7);
  v17 = v8[25];
  v18 = v8[15];
  *&v19 = 1.0 - scale;
  v20 = v27[5];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__FrameSynthesis_warpFeatureLevel_timeScale___block_invoke_2;
  v24[3] = &unk_278F53808;
  v25 = v10;
  v24[4] = &v26;
  [(FrameSynthesis *)self forwardWarpForLevel:v5 feature:v23 flow:v17 error:v18 timeScale:v20 warpedOutput:fullWarpStartLevel <= v5 fullWarp:v19 callback:v24];
  if (v10)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    copyTextureToBufferWithBlit(v35[5], self->_warpedForwardFeatures[self->_bufferIndex].features[v16], self->_device, commandBuffer);
    copyTextureToBufferWithBlit(v27[5], self->_warpedBackwardFeatures[self->_bufferIndex].features[v16], self->_device, commandBuffer);
    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v34, 8);
  objc_autoreleasePoolPop(context);
}

void __45__FrameSynthesis_warpFeatureLevel_timeScale___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = *(*(a1 + 32) + 8);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
  }
}

void __45__FrameSynthesis_warpFeatureLevel_timeScale___block_invoke_2(uint64_t a1)
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
  v8 = createTexturesFromCVPixelBuffer(forward, self->_device, 2, 1uLL);
  v9 = self->_forwardFlowTexture[1];
  self->_forwardFlowTexture[1] = v8;

  v10 = createTexturesFromCVPixelBuffer(backward, self->_device, 2, 1uLL);
  v11 = self->_backwardFlowTexture[1];
  self->_backwardFlowTexture[1] = v10;

  v17 = self->_firstFeatures.features[self->_pyramidLevels];
  v12 = self->_secondFeatures.features[self->_pyramidLevels];
  v13 = objc_autoreleasePoolPush();
  *&v14 = scale;
  [(FrameSynthesis *)self calcBackwarpLossFirst:v17 second:v12 timeScale:v14];
  objc_autoreleasePoolPop(v13);
  v16 = 0;
  do
  {
    *&v15 = scale;
    [(FrameSynthesis *)self warpFeatureLevel:v16 timeScale:v15];
    v16 = (v16 + 1);
  }

  while (v16 != 3);
}

- (void)calcBackwarpLossFirst:(id)first second:(id)second timeScale:(float)scale
{
  firstCopy = first;
  secondCopy = second;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  *&v10 = scale;
  [(OFBackwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:commandBuffer first:firstCopy second:secondCopy flow:self->_forwardFlowTexture[1] timeScale:self->_forwardLossTexture[1] destination:v10];
  *&v11 = 1.0 - scale;
  [(OFBackwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:commandBuffer first:secondCopy second:firstCopy flow:self->_backwardFlowTexture[1] timeScale:self->_backwardLossTexture[1] destination:v11];
  if (self->_pyramidLevels >= 3)
  {
    v12 = &self->_backwardLossTexture[2];
    v13 = 2;
    do
    {
      [(OFBackwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:commandBuffer source:*(v12 - 6) destination:*(v12 - 5)];
      [(OFBackwarp *)self->_backwarp encodeSubsampleErrorToCommandBuffer:commandBuffer source:*(v12 - 1) destination:*v12];
      ++v13;
      ++v12;
    }

    while (self->_pyramidLevels > v13);
  }

  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:self->_forwardFlowTexture[1] destination:self->_forwardFlowTexture[0]];
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:self->_backwardFlowTexture[1] destination:self->_backwardFlowTexture[0]];
  if (self->_pyramidLevels >= 3)
  {
    v14 = &self->_backwardFlowTexture[2];
    v15 = 2;
    do
    {
      [(OFBackwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:commandBuffer source:*(v14 - 6) destination:*(v14 - 5)];
      [(OFBackwarp *)self->_backwarp encodeSubsampleFlowToCommandBuffer:commandBuffer source:*(v14 - 1) destination:*v14];
      ++v15;
      ++v14;
    }

    while (self->_pyramidLevels > v15);
  }

  kdebug_trace();
  [commandBuffer addCompletedHandler:&__block_literal_global_2];
  [commandBuffer commit];
}

- (void)forwardWarpForLevel:(int)level feature:(id)feature flow:(id)flow error:(id)error timeScale:(float)scale warpedOutput:(id)output fullWarp:(BOOL)warp callback:(id)self0
{
  warpCopy = warp;
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  outputCopy = output;
  errorCopy = error;
  flowCopy = flow;
  featureCopy = feature;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v25 = scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:featureCopy flow:flowCopy error:errorCopy timeScale:warpCopy fullWarp:self->_bestErrorBuffer[level] bestError:v25 output:self->_warpOutputBuffer[level] destination:outputCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __98__FrameSynthesis_forwardWarpForLevel_feature_flow_error_timeScale_warpedOutput_fullWarp_callback___block_invoke;
    v26[3] = &unk_278F537B8;
    v27 = callbackCopy;
    [commandBuffer addCompletedHandler:v26];
  }

  [commandBuffer commit];
  if (self->_pyramidLevels - 1 == level)
  {
    [commandBuffer waitUntilScheduled];
  }

  kdebug_trace();
}

- (void)forwardWarpForLevel:(int)level first:(id)first second:(id)second timeScale:(float)scale forwardOutput:(id)output backwardOutput:(id)backwardOutput
{
  v12 = *&level;
  commandQueue = self->_commandQueue;
  backwardOutputCopy = backwardOutput;
  outputCopy = output;
  secondCopy = second;
  firstCopy = first;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  v19 = &self->super.isa + v12;
  *&v20 = scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:firstCopy flow:v19[20] error:v19[10] timeScale:v12 > 0 fullWarp:v19[30] bestError:v20 output:v19[35] destination:outputCopy];

  *&v21 = scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:secondCopy flow:v19[25] error:v19[15] timeScale:v12 > 0 fullWarp:v19[30] bestError:v21 output:v19[35] destination:backwardOutputCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  [(FrameSynthesis *)self releaseFeaturesForLevel:v12];
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
      [(FrameSynthesis *)self allocateFeaturesForUsage:self->_usage Level:i];
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

  if (getNumberOfPixelsForUsage(self->_usage) >> 12 > 0x7E8)
  {
    return 2;
  }

  if (self->_twoLayerQuarterSizeDC)
  {
    return 2;
  }

  return 1;
}

- (void)allocateFeaturesForUsage:(int64_t)usage Level:(int)level
{
  usageCopy = usage;
  if (self->_synthesisMode == 3)
  {
    if (self->_fullSizeSplatting)
    {
      flowLevel = 0;
    }

    else if (self->_twoLayerFlowSplatting)
    {
      flowLevel = [(FrameSynthesis *)self twoLayerFlowSplattingFeatureLevelForLevel:*&level];
    }

    else
    {
      flowLevel = self->_flowLevel;
    }
  }

  else if (self->_pyramidLevels <= level)
  {
    flowLevel = 1;
  }

  else
  {
    flowLevel = level;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  getSynthesisTensorSize(usageCopy, flowLevel, &v14);
  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:v14 height:v15 mipmapped:0];
  [v13 setUsage:3];
  [v13 setTextureType:3];
  [v13 setArrayLength:v16];
  v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v13];
  v9 = &self->super.isa + level;
  v10 = v9[44];
  v9[44] = v8;

  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v13];
  v12 = v9[49];
  v9[49] = v11;
}

- (void)allocateWarpedFeatures
{
  LODWORD(v3) = 0;
  numWarpedBuffers = 1;
  self->_numWarpedBuffers = 1;
  pyramidLevels = self->_pyramidLevels;
  warpedBackwardFeatures = self->_warpedBackwardFeatures;
  do
  {
    if (pyramidLevels)
    {
      v7 = 0;
      v8 = &warpedBackwardFeatures[v3];
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
          flowLevel = v7;
        }

        v12 = 0;
        v13 = 0;
        v14 = 0;
        [(FrameSynthesis *)self getWarpedFeatureSizeForLevel:flowLevel tensorSize:&v12];
        v10 = v14;
        if (self->_synthesisMode == 2)
        {
          v10 = v14 + 1;
        }

        v11 = v10 + self->_useFlowConsistencyMap;
        self->_warpedFeatureChannels = v11;
        v8[-1].features[0] = CreatePixelBuffer(v12, v13 * v11, 1278226536);
        v8->features[0] = CreatePixelBuffer(v12, v13 * v11, 1278226536);
        v8 = (v8 + 8);
        ++v7;
        pyramidLevels = self->_pyramidLevels;
      }

      while (pyramidLevels > v7);
      numWarpedBuffers = self->_numWarpedBuffers;
    }

    v3 = (v3 + 1);
  }

  while (numWarpedBuffers > v3);
}

- (void)releaseWarpedFeaturesForIndex:(unint64_t)index
{
  if (self->_pyramidLevels)
  {
    v4 = 0;
    v5 = &self->_warpedBackwardFeatures[index];
    do
    {
      CVPixelBufferRelease(v5[-1].features[0]);
      v6 = v5->features[0];
      v5 = (v5 + 8);
      CVPixelBufferRelease(v6);
      ++v4;
    }

    while (self->_pyramidLevels > v4);
  }
}

- (__CVBuffer)synthesizeFrameFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale frameIndex:(unint64_t)index
{
  pixelBufferOut = 0;
  CVPixelBufferPoolCreatePixelBuffer(0, self->_normalizedBufferPool, &pixelBufferOut);
  self->_bufferIndex = index % self->_numWarpedBuffers;
  synthesisMode = self->_synthesisMode;
  if (synthesisMode == 3)
  {
    *&v15 = scale;
    [(FrameSynthesis *)self synthesizeImageWithFlowSplattingFromFirstImage:image secondImage:secondImage flowForward:forward flowBackward:backward timeScale:pixelBufferOut destination:v15];
  }

  else if (synthesisMode == 2)
  {
    *&v15 = scale;
    [(FrameSynthesis *)self synthesizeImageWithForwarpOnlyFromFirstImage:image secondImage:secondImage flowForward:forward flowBackward:backward timeScale:pixelBufferOut destination:v15];
  }

  return pixelBufferOut;
}

- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward skipFirstFramePreProcessing:(BOOL)processing
{
  processingCopy = processing;
  if (processing)
  {
    v13 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    p_firstFeatures = &self->_firstFeatures;
    do
    {
      *(&v19 + v13 * 8) = p_firstFeatures->features[v13];
      ++v13;
    }

    while (v13 != 5);
    __copy_assignment_8_8_AB0s8n5_s0_AE(self->_firstFeatures.features, self->_secondFeatures.features);
    __copy_assignment_8_8_AB0s8n5_s0_AE(self->_secondFeatures.features, &v19);
    for (i = 0; i != 40; i += 8)
    {
    }
  }

  else
  {
    self->_normalizedFirst = CVPixelBufferRetain(image);
  }

  self->_normalizedSecond = CVPixelBufferRetain(secondImage);
  self->_forwardFlow = CVPixelBufferRetain(forward);
  self->_backwardFlow = CVPixelBufferRetain(backward);
  if (self->_synthesisMode == 3)
  {
    if (!self->_fullSizeSplatting)
    {
      if (processingCopy)
      {
        imageCopy = 0;
      }

      else
      {
        imageCopy = image;
      }

      [(FrameSynthesis *)self createSubsampledInputsFromFirstFrame:imageCopy secondImage:secondImage, v19, v20, v21];
    }

    Width = CVPixelBufferGetWidth(forward);
    if (Width != [(MTLTexture *)self->_forwardLossTexture[0] width])
    {
      [(FrameSynthesis *)self upscaleFlowsForward:forward backward:backward];
    }
  }

  if (self->_useFlowConsistencyMap)
  {
    [(FrameSynthesis *)self createConsistencyMapFromFirstImage:image secondImage:secondImage flowForward:forward flowBackward:backward];
  }

  if (self->_pyramidLevels != 1)
  {
    if (processingCopy)
    {
      imageCopy2 = 0;
    }

    else
    {
      imageCopy2 = image;
    }

    [(FrameSynthesis *)self createFeaturePyramid:imageCopy2 second:secondImage, v19, v20, v21];
  }
}

- (void)releaseFeatures
{
  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  if (self->_pyramidLevels == 1)
  {
    CVPixelBufferRelease(self->_normalizedFirst);
    CVPixelBufferRelease(self->_normalizedSecond);
  }

  *&self->_normalizedFirst = 0u;
  *&self->_forwardFlow = 0u;
}

- (void)createFeaturePyramid:(__CVBuffer *)pyramid second:(__CVBuffer *)second
{
  kdebug_trace();
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  if (pyramid)
  {
    v8 = createTexturesFromCVPixelBuffer(pyramid, self->_device, 1, 3uLL);
    [(FRCPyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:commandBuffer fromTexture:v8 toTexture:&self->_firstFeatures levels:self->_pyramidLevels];
  }

  v9 = createTexturesFromCVPixelBuffer(second, self->_device, 1, 3uLL);
  [(FRCPyramid *)self->_pyramid encodeResiduePyramidToCommandBuffer:commandBuffer fromTexture:v9 toTexture:&self->_secondFeatures levels:self->_pyramidLevels];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__FrameSynthesis_createFeaturePyramid_second___block_invoke;
  v10[3] = &__block_descriptor_48_e28_v16__0___MTLCommandBuffer__8l;
  v10[4] = pyramid;
  v10[5] = second;
  [commandBuffer addCompletedHandler:v10];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

uint64_t __46__FrameSynthesis_createFeaturePyramid_second___block_invoke(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 32));
  CVPixelBufferRelease(*(a1 + 40));

  return kdebug_trace();
}

- (BOOL)switchUsageTo:(int64_t)to
{
  self->_originalUsage = to;
  self->_usage = to;
  self->_fullWarpStartLevel = 1;
  self->_filterErrorMap = 0;
  synthesisMode = self->_synthesisMode;
  v5 = synthesisMode & 0xFFFFFFFFFFFFFFFELL;
  if ((synthesisMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (synthesisMode == 3 && self->_twoLayerFlowSplatting)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    self->_pyramidLevels = v6;
    if (self->_linearSplatting)
    {
      self->_filterErrorMap = 1;
    }

    self->_framePipeline = 0;
  }

  v7 = [[OFForwarp alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue mode:self->_synthesisMode];
  forwarp = self->_forwarp;
  self->_forwarp = v7;

  v9 = self->_forwarp;
  if (v9)
  {
    [(OFForwarp *)self->_forwarp setLinearSplatting:self->_linearSplatting];
    v11 = v5 != 2 && !self->_framePipeline;
    self->_frameSyncRequired = v11;
    if (self->_useFlowConsistencyMap && !self->_flowConsisteny)
    {
      v12 = [[FlowConsistency alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
      flowConsisteny = self->_flowConsisteny;
      self->_flowConsisteny = v12;
    }
  }

  else if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
  {
    [FrameSynthesis switchUsageTo:];
  }

  return v9 != 0;
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
    [(OFForwarp *)forwarp setErrorTolerance:v20];
    [(OFForwarp *)self->_forwarp setLimitBilinearInterpolation:0];
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
    [(OFBackwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:bufferCopy first:textureCopy second:secondTextureCopy flow:v28[20] timeScale:v28[10] gamma:v23 protectionThreshold:v24 destination:v25];
    *&v30 = v29;
    LODWORD(v31) = 1050253722;
    *&v32 = v26;
    [(OFBackwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:bufferCopy first:secondTextureCopy second:textureCopy flow:v28[25] timeScale:v28[15] gamma:v30 protectionThreshold:v31 destination:v32];
  }

  else
  {
    LODWORD(v20) = 1028443341;
    [(OFForwarp *)forwarp setErrorTolerance:v20];
    [(OFForwarp *)self->_forwarp setLimitBilinearInterpolation:0];
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

    [(OFBackwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:textureCopy second:secondTextureCopy flow:v34[20] timeScale:v34[10] destination:v33];
    *&v36 = v35;
    [(OFBackwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:secondTextureCopy second:textureCopy flow:v34[25] timeScale:v34[15] destination:v36];
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

    [(OFForwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:bufferCopy source:self->_forwardLossTexture[levelCopy2] destination:v40];
    [(OFForwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:bufferCopy source:self->_backwardLossTexture[levelCopy2] destination:v43];
    v37 = v40;
    v38 = v43;
    warpedTextureCopy = v42;
    textureCopy = v41;
    secondTextureCopy = v46;
  }

  v44 = &self->super.isa + levelCopy2;
  *&v39 = scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:bufferCopy input:textureCopy flow:v44[20] error:v37 timeScale:1 fullWarp:v44[30] bestError:v39 output:v44[35] destination:warpedTextureCopy];
  *&v45 = 1.0 - scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:bufferCopy input:secondTextureCopy flow:v44[25] error:v38 timeScale:1 fullWarp:v44[30] bestError:v45 output:v44[35] destination:secondWarpedTextureCopy];
}

- (void)synthesizeImageWithForwarpOnlyFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination
{
  v30 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  secondForwarpInputWithConsistencyMap = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  v15 = createTexturesFromCVPixelBuffer(forward, self->_device, 2, 1uLL);
  v16 = createTexturesFromCVPixelBuffer(backward, self->_device, 2, 1uLL);
  v17 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  v28 = v15;
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v15 destination:self->_forwardFlowTexture[0]];
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v16 destination:self->_backwardFlowTexture[0]];
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
  [(OFForwarp *)self->_forwarp setCreateOcclusionMask:1];
  LOBYTE(v27) = !self->_useFlowConsistencyMap;
  *&v23 = scale;
  [(FrameSynthesis *)self encodeForwarpToCommandBuffer:commandBuffer level:0 firstTexture:v21 secondTexture:v22 firstWarpedTexture:v19 secondWarpedTexture:v20 timeScale:v23 useFlowMagnitude:v27];
  [(OFForwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:commandBuffer forwardSource:v19 backwardSource:v20 forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
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
  [(OFForwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:commandBuffer first:v19 second:v20 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:v25 backwardConsistency:v24 timeScale:v26 destination:v17];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)createSubsampledInputsFromFirstFrame:(__CVBuffer *)frame secondImage:(__CVBuffer *)image
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  if (frame)
  {
    v7 = createTexturesFromCVPixelBuffer(frame, self->_device, 1, 3uLL);
    [(OFBackwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v7 destination:self->_firstFeatures.features[0]];
  }

  v8 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  [(OFBackwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v8 destination:self->_secondFeatures.features[0]];
  [commandBuffer commit];
}

- (void)upscaleFlowsForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward
{
  v8 = createTexturesFromCVPixelBuffer(forward, self->_device, 2, 1uLL);
  v6 = createTexturesFromCVPixelBuffer(backward, self->_device, 2, 1uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v8 destination:self->_forwardFlowTexture[0]];
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v6 destination:self->_backwardFlowTexture[0]];
  [commandBuffer commit];
}

- (void)synthesizeImageWithFlowSplattingFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale destination:(__CVBuffer *)destination
{
  LODWORD(v15) = 1028443341;
  [(OFForwarp *)self->_forwarp setErrorTolerance:v15];
  [(OFForwarp *)self->_forwarp setLimitBilinearInterpolation:1];
  v64 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  v16 = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  Width = CVPixelBufferGetWidth(forward);
  if (Width == [(MTLTexture *)self->_forwardFlowTexture[0] width])
  {
    v18 = createTexturesFromCVPixelBuffer(forward, self->_device, 2, 1uLL);
    v19 = createTexturesFromCVPixelBuffer(backward, self->_device, 2, 1uLL);
  }

  else
  {
    v18 = self->_forwardFlowTexture[0];
    v19 = self->_backwardFlowTexture[0];
  }

  v20 = v19;
  v58 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
  v21 = v64;
  if (!self->_fullSizeSplatting)
  {
    v21 = self->_firstFeatures.features[0];
  }

  v22 = v21;
  v23 = v16;
  if (!self->_fullSizeSplatting)
  {
    v23 = self->_secondFeatures.features[0];
  }

  v63 = v23;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer enqueue];
  if (self->_fullSizeSplatting)
  {
    [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v18 destination:self->_forwardFlowTexture[0]];
    [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v20 destination:self->_backwardFlowTexture[0]];
    v28 = self->_forwardFlowTexture[0];

    v29 = self->_backwardFlowTexture[0];
    v20 = v29;
    v18 = v28;
  }

  LODWORD(v25) = 1.0;
  LODWORD(v26) = 1008981770;
  LODWORD(v27) = 2139095039;
  [(OFBackwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:commandBuffer first:v22 second:v63 flow:v18 timeScale:self->_forwardLossTexture[0] gamma:v25 protectionThreshold:v26 destination:v27];
  LODWORD(v30) = 1.0;
  LODWORD(v31) = 1008981770;
  LODWORD(v32) = 2139095039;
  [(OFBackwarp *)self->_backwarp encodeBackwarpLossWithFlowMagnitudeToCommandBuffer:commandBuffer first:v63 second:v22 flow:v20 timeScale:self->_backwardLossTexture[0] gamma:v30 protectionThreshold:v31 destination:v32];
  if (self->_useFlowConsistencyMap)
  {
    v62 = self->_firstForwarpInputWithConsistencyMap;
    v33 = self->_secondForwarpInputWithConsistencyMap;
  }

  else
  {
    v62 = createTexturesFromCVPixelBufferFlow2C(forward, self->_device);
    v33 = createTexturesFromCVPixelBufferFlow2C(backward, self->_device);
  }

  v61 = v33;
  v34 = self->_forwardLossTexture[0];
  v35 = self->_backwardLossTexture[0];
  v36 = v16;
  if (self->_filterErrorMap)
  {
    v37 = self->_filteredForwardLossTexture;

    v38 = self->_filteredBackwarLossTexture;
    [(OFForwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:commandBuffer source:self->_forwardLossTexture[0] destination:v37];
    [(OFForwarp *)self->_forwarp encodeErrorMapFilteringToCommandBuffer:commandBuffer source:self->_backwardLossTexture[0] destination:v38];
    v35 = v38;
    v34 = v37;
  }

  v59 = v22;
  v39 = createTexturesFromCVPixelBuffer(self->_warpedForwardFeatures[self->_bufferIndex].features[0], self->_device, 1, self->_warpedFeatureChannels);
  v40 = createTexturesFromCVPixelBuffer(self->_warpedBackwardFeatures[self->_bufferIndex].features[0], self->_device, 1, self->_warpedFeatureChannels);
  [(OFForwarp *)self->_forwarp setCreateOcclusionMask:1];
  v60 = v18;
  *&v41 = scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:v62 flow:v18 error:v34 timeScale:1 fullWarp:self->_bestErrorBuffer[0] bestError:v41 output:self->_warpOutputBuffer[0] destination:v39];
  *&v42 = 1.0 - scale;
  [(OFForwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:v61 flow:v20 error:v35 timeScale:1 fullWarp:self->_bestErrorBuffer[0] bestError:v42 output:self->_warpOutputBuffer[0] destination:v40];
  [(OFForwarp *)self->_forwarp encodeErrorMapDilationToCommandBuffer:commandBuffer forwardSource:v39 backwardSource:v40 forwardDestination:self->_dilatedForwardMask backwardDestination:self->_dilatedBackwardMask minimumAdjacentHoleCount:3 maximumHoleValue:0.0];
  if (self->_useFlowConsistencyMap)
  {
    v44 = [v39 newTextureViewWithPixelFormat:25 textureType:2 levels:0 slices:1, 2, 1];
    v45 = [v40 newTextureViewWithPixelFormat:25 textureType:2 levels:0 slices:1, 2, 1];
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  if (self->_pyramidLevels == 1)
  {
    if (self->_useFusedKernel)
    {
      forwarp = self->_forwarp;
      dilatedForwardMask = self->_dilatedForwardMask;
      dilatedBackwardMask = self->_dilatedBackwardMask;
      v49 = v58;
      *&v43 = scale;
      [(OFForwarp *)forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:commandBuffer first:v64 second:v36 forwardFlow:v39 backwardFlow:v40 forwardErrorMap:dilatedForwardMask backwardErrorMap:v43 forwarpConsistency:dilatedBackwardMask backwardConsistency:0 timeScale:0 destination:v58];
    }

    else
    {
      *&v43 = scale;
      [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:commandBuffer source:v64 flow:v39 timeScale:self->_firstWarpedTexture destination:v43];
      *&v51 = 1.0 - scale;
      [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:commandBuffer source:v36 flow:v40 timeScale:self->_secondWarpedTexture destination:v51];
      v52 = self->_forwarp;
      firstWarpedTexture = self->_firstWarpedTexture;
      secondWarpedTexture = self->_secondWarpedTexture;
      v55 = self->_dilatedForwardMask;
      v56 = self->_dilatedBackwardMask;
      v49 = v58;
      *&v57 = scale;
      [(OFForwarp *)v52 encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:commandBuffer first:firstWarpedTexture second:secondWarpedTexture forwardErrorMap:v55 backwardErrorMap:v56 forwarpConsistency:v44 backwardConsistency:v57 timeScale:v45 destination:v58];
    }
  }

  else
  {
    selfCopy = self;
    *&v43 = scale;
    v49 = v58;
    [(FrameSynthesis *)selfCopy encodeWarpPyramidToCommandBuffer:commandBuffer forwardFlow:v39 backwardFlow:v40 forwarpConsistency:v44 backwardConsistency:v45 timeScale:v58 destination:v43];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)createConsistencyMapFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v12 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  v13 = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  v14 = createTexturesFromCVPixelBuffer(forward, self->_device, 2, 1uLL);
  v15 = createTexturesFromCVPixelBuffer(backward, self->_device, 2, 1uLL);
  if (self->_synthesisMode == 3)
  {
    v16 = createTexturesFromCVPixelBufferFlow2C(forward, self->_device);
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;
  v29 = v12;
  v18 = v13;
  if (self->_synthesisMode == 3)
  {
    v19 = createTexturesFromCVPixelBufferFlow2C(backward, self->_device);
  }

  else
  {
    v19 = v13;
  }

  v20 = v19;
  width = [v17 width];
  height = [v17 height];
  arrayLength = [v17 arrayLength];
  if (!self->_firstForwarpInputWithConsistencyMap)
  {
    v24 = createTextures(self->_device, width, height, 1, arrayLength + 1);
    firstForwarpInputWithConsistencyMap = self->_firstForwarpInputWithConsistencyMap;
    self->_firstForwarpInputWithConsistencyMap = v24;
  }

  secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  if (!secondForwarpInputWithConsistencyMap)
  {
    v27 = createTextures(self->_device, width, height, 1, arrayLength + 1);
    v28 = self->_secondForwarpInputWithConsistencyMap;
    self->_secondForwarpInputWithConsistencyMap = v27;

    secondForwarpInputWithConsistencyMap = self->_secondForwarpInputWithConsistencyMap;
  }

  [(FrameSynthesis *)self encodeConsistencyMapCreationWithFlowToCommandBuffer:commandBuffer firstSource:v17 secondSource:v20 forwardFlow:v14 backwardFlow:v15 firstForwarpInput:self->_firstForwarpInputWithConsistencyMap secondForwarpInput:secondForwarpInputWithConsistencyMap];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __90__FrameSynthesis_createConsistencyMapFromFirstImage_secondImage_flowForward_flowBackward___block_invoke;
  v30[3] = &unk_278F53870;
  v30[4] = self;
  [commandBuffer addCompletedHandler:v30];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

void __90__FrameSynthesis_createConsistencyMapFromFirstImage_secondImage_flowForward_flowBackward___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 647) == 1)
  {
    [*(v1 + 632) maxConsistency];
    if ((global_logLevel & 4) != 0)
    {
      v3 = v2;
      v4 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        v5 = 134217984;
        v6 = v3;
        _os_log_impl(&dword_24874B000, v4, OS_LOG_TYPE_INFO, "FrameSynthesis: Max flow consistency %f\n", &v5, 0xCu);
      }
    }
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
    [(FlowConsistency *)self->_flowConsisteny encodeToCommandBuffer:bufferCopy forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardConsistencyMap:v24 backwardConsistencyMap:v25];
  }

  else
  {
    v24 = createTextures(self->_device, [flowCopy width], objc_msgSend(flowCopy, "height"), 1, 1uLL);
    v25 = createTextures(self->_device, [flowCopy width], objc_msgSend(flowCopy, "height"), 1, 1uLL);
    [(FlowConsistency *)self->_flowConsisteny encodeToCommandBuffer:bufferCopy forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardConsistencyMap:v24 backwardConsistencyMap:v25];
    [(FlowConsistency *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:bufferCopy source:v24 detination:v29];
    [(FlowConsistency *)self->_flowConsisteny encodeMapUpscalingToCommandBuffer:bufferCopy source:v25 detination:v23];
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
    [(OFForwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v23 second:self->_secondFeatures.features[2] forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v24 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:consistencyCopy timeScale:backwardConsistencyCopy destination:self->_blendedDCTexture];
  }

  else
  {
    [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:v23 flow:flowCopy timeScale:v21 destination:v24];
    *&v25 = 1.0 - scale;
    [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:self->_secondFeatures.features[2] flow:backwardFlowCopy timeScale:v22 destination:v25];
    *&v26 = scale;
    [(OFForwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v21 second:v22 forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:consistencyCopy backwardConsistency:v26 timeScale:backwardConsistencyCopy destination:self->_blendedDCTexture];
  }

  [(FRCPyramid *)self->_pyramid encode3x3GaussianFilterToCommandBuffer:bufferCopy source:self->_blendedDCTexture destination:self->_filteredDCTexture];
  v27 = self->_firstFeatures.features[1];
  *&v28 = scale;
  if (self->_useFusedKernel)
  {
    [(OFForwarp *)self->_forwarp encodeWarpAndBlendFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:v27 second:self->_secondFeatures.features[1] forwardFlow:flowCopy backwardFlow:backwardFlowCopy forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:v28 forwarpConsistency:self->_dilatedBackwardMask backwardConsistency:consistencyCopy timeScale:backwardConsistencyCopy destination:destinationCopy];
  }

  else
  {
    [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:v27 flow:flowCopy timeScale:self->_firstWarpedTexture destination:v28];
    *&v29 = 1.0 - scale;
    [(OFBackwarp *)self->_backwarp encodeFlowSplattingWarpToCommandBuffer:bufferCopy source:self->_secondFeatures.features[1] flow:backwardFlowCopy timeScale:self->_secondWarpedTexture destination:v29];
    *&v30 = scale;
    [(OFForwarp *)self->_forwarp encodeBlendWarpedFeaturesWithErrorMaskToCommandBuffer:bufferCopy first:self->_firstWarpedTexture second:self->_secondWarpedTexture forwardErrorMap:self->_dilatedForwardMask backwardErrorMap:self->_dilatedBackwardMask forwarpConsistency:consistencyCopy backwardConsistency:v30 timeScale:backwardConsistencyCopy destination:destinationCopy];
  }

  [(FRCPyramid *)self->_pyramid encodeLayerBlendToCommandBuffer:bufferCopy baseLayer:self->_filteredDCTexture toDestination:destinationCopy];
}

- (void)upscaleForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow upscaledForwardFlow:(__CVBuffer *)forwardFlow upscaledBackwardFlow:(__CVBuffer *)upscaledBackwardFlow
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v11 = createTexturesFromCVPixelBuffer(flow, self->_device, 2, 1uLL);
  v12 = createTexturesFromCVPixelBuffer(backwardFlow, self->_device, 2, 1uLL);
  v13 = createTexturesFromCVPixelBuffer(forwardFlow, self->_device, 2, 1uLL);
  v14 = createTexturesFromCVPixelBuffer(upscaledBackwardFlow, self->_device, 2, 1uLL);
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v11 destination:v13];
  [(OFBackwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v12 destination:v14];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

@end