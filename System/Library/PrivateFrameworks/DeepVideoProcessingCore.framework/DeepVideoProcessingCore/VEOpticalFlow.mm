@interface VEOpticalFlow
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)level;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)flowSizeForLevel:(SEL)level;
- (BOOL)createBaseLayer;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)to;
- (VEOpticalFlow)initWithMode:(int64_t)mode;
- (void)adaptFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow;
- (void)allocateCorreleationBuffer:(__CVBuffer *)buffer forLevel:(unsigned int)level extractor:(id)extractor;
- (void)allocateFeatureBuffers:(id *)buffers;
- (void)allocateImageFeature:(id *)feature extractor:(id)extractor;
- (void)allocateIntermediateStageStorage:(id *)storage baseStage:(BOOL)stage;
- (void)allocateIntermediateStorage:(id *)storage;
- (void)allocateResources;
- (void)dealloc;
- (void)estimateFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage outputFlow:(__CVBuffer *)flow;
- (void)estimateFlowLevel:(unsigned int)level withEstimator:(id *)estimator firstFeatures:(id *)features secondFeatures:(id *)secondFeatures correlation:(__CVBuffer *)correlation upscaledFlow:(__CVBuffer *)flow warpedImage:(__CVBuffer *)image prevFlow:(__CVBuffer *)self0 outputFlow:(__CVBuffer *)self1 waitForComplete:(BOOL)self2;
- (void)estimateStageFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage baseStage:(BOOL)stage startLevel:(int)level lastLevel:(int)lastLevel startFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)self0;
- (void)estimateTwoWayFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage outputForwardFlow:(__CVBuffer *)flow outputBackwardFlow:(__CVBuffer *)backwardFlow;
- (void)extractFeaturesFromFirst:(__CVBuffer *)first second:(__CVBuffer *)second;
- (void)extractFeaturesFromImage:(__CVBuffer *)image outputFeatures:(id *)features;
- (void)flowAdaptationFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame inputFlowForward:(__CVBuffer *)forward inputFlowBackward:(__CVBuffer *)backward outputFlowForward:(__CVBuffer *)flowForward outputFlowBackward:(__CVBuffer *)flowBackward;
- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flow:(__CVBuffer *)flow;
- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward reUseFlow:(BOOL)flow;
- (void)postProcessFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow;
- (void)predictFowardFlow:(__CVBuffer *)flow fromBackwardFlow:(__CVBuffer *)backwardFlow;
- (void)releaseFeatureBuffers:(id *)buffers;
- (void)releaseImageFeature:(id *)feature;
- (void)releaseIntermediateStageStorage:(id *)storage;
- (void)releaseIntermediateStorage:(id *)storage;
- (void)releaseResources;
- (void)releaseUnusedFeatures:(id *)features;
- (void)reshuffleFlow:(__CVBuffer *)flow previsouFlow:(__CVBuffer *)previsouFlow destination:(__CVBuffer *)destination;
- (void)setNetworkClasses;
- (void)subsampleInput:(__CVBuffer *)input to:(__CVBuffer *)to forUsage:(int64_t)usage;
- (void)updateFlowSize;
- (void)upscaleInputFlow:(__CVBuffer *)flow outFlow:(__CVBuffer *)outFlow;
@end

@implementation VEOpticalFlow

- (void)setNetworkClasses
{
  self->_featureExtractorClass = objc_opt_class();
  self->_flowEstimatorClass = objc_opt_class();
  self->_adaptationFeatureExtractorClass = objc_opt_class();
  self->_adaptationDecoderClass = objc_opt_class();
}

- (VEOpticalFlow)initWithMode:(int64_t)mode
{
  v13.receiver = self;
  v13.super_class = VEOpticalFlow;
  v4 = [(VEOpticalFlow *)&v13 init];
  [(VEOpticalFlow *)v4 setNetworkClasses];
  v4->_revision = 1;
  [(objc_class *)v4->_flowEstimatorClass setNumLevels:[(objc_class *)v4->_featureExtractorClass numLevels]];
  v4->_twoStageFlow = 0;
  v4->_usage = mode;
  if ([(VEOpticalFlow *)v4 createModules])
  {
    newCommandQueue = [(MTLDevice *)v4->_device newCommandQueue];
    commandQueue = v4->_commandQueue;
    v4->_commandQueue = newCommandQueue;

    v7 = dispatch_group_create();
    dispatchGroup = v4->_dispatchGroup;
    v4->_dispatchGroup = v7;

    v9 = dispatch_queue_create("Main Concurrent Task Queue", MEMORY[0x277D85CD8]);
    concurrentQueue = v4->_concurrentQueue;
    v4->_concurrentQueue = v9;

    v4->_upscaleFinalFlow = 0;
    v4->_waitForCompletion = 1;
    if (v4->_usage != -1)
    {
      [(VEOpticalFlow *)v4 updateFlowSize];
    }

    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateFlowSize
{
  p_flowWidth = &self->_flowWidth;
  p_flowHeight = &self->_flowHeight;
  getInputFrameSizeForUsage(self->_usage, &self->_flowWidth, &self->_flowHeight);
  if (self->_upscaleFinalFlow)
  {
    if (!self->_4xUpscale)
    {
      return;
    }

    p_flowWidth->i64[0] *= 2;
    v5 = 2 * *p_flowHeight;
  }

  else
  {
    v6 = *p_flowWidth;
    *p_flowWidth = vshrq_n_u64(*p_flowWidth, 1uLL);
    if (!self->_skipLastLevel)
    {
      return;
    }

    p_flowWidth->i64[0] = v6.i64[0] >> 2;
    v5 = v6.i64[1] >> 2;
  }

  *p_flowHeight = v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VEOpticalFlow;
  [(VEOpticalFlow *)&v2 dealloc];
}

- (BOOL)createModules
{
  self->_numLevels = [(objc_class *)self->_featureExtractorClass numLevels];
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  v5 = [[OFCorrelation alloc] initWithDevice:self->_device interleaved:0];
  correlation = self->_correlation;
  self->_correlation = v5;

  if (!self->_correlation)
  {
    return 0;
  }

  v7 = [[OFBackwarp alloc] initWithDevice:self->_device interleaved:0];
  backwarp = self->_backwarp;
  self->_backwarp = v7;

  return self->_backwarp != 0;
}

- (void)allocateIntermediateStorage:(id *)storage
{
  [(VEOpticalFlow *)self allocateIntermediateStageStorage:storage baseStage:0];
  if (self->_twoStageFlow)
  {

    [(VEOpticalFlow *)self allocateIntermediateStageStorage:&storage->var1 baseStage:1];
  }
}

- (void)allocateIntermediateStageStorage:(id *)storage baseStage:(BOOL)stage
{
  stageCopy = stage;
  storageCopy = storage;
  LODWORD(numLevels) = self->_numLevels;
  storage->var5 = numLevels;
  if (stage)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (stage)
  {
    *storage->var1 = 0u;
    *storage->var2 = 0u;
    *storage->var3 = 0u;
    *storage->var0 = 0u;
  }

  else if (self->_useAdaptationLayer)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&v22 level:0];
    storageCopy->var4 = createPixelBuffer(v22, 8 * v23, 0x4C303068u, 0);
    LODWORD(numLevels) = self->_numLevels;
  }

  if (v8 < numLevels)
  {
    v9 = v8;
    v21 = storageCopy;
    v10 = &storageCopy->var0[v8];
    do
    {
      useAdaptationLayer = self->_useAdaptationLayer;
      v12 = v9 == 0;
      v13 = 40;
      if (v12 && useAdaptationLayer)
      {
        v13 = 152;
      }

      if (stageCopy)
      {
        v13 = 96;
      }

      v14 = *(&self->super.isa + v13);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      [v14 getOutputTensorSize:&v22 level:v9];
      if (v12 && useAdaptationLayer)
      {
        v15 = v22;
      }

      else
      {
        v15 = 128;
      }

      if (v12 && useAdaptationLayer)
      {
        v16 = v23;
      }

      else
      {
        v16 = 8;
      }

      if (v9 >= 2)
      {
        v17 = v22;
      }

      else
      {
        v17 = v15;
      }

      if (v9 >= 2)
      {
        v18 = v23;
      }

      else
      {
        v18 = v16;
      }

      v10[12] = createPixelBuffer(v17, v18, 0x32433068u, 0);
      v10[18] = createPixelBuffer(v22, v24 * v23, 0x4C303068u, 0);
      if (self->_resourcePreAllocated)
      {
        [(VEOpticalFlow *)self allocateCorreleationBuffer:v10 forLevel:v9 extractor:v14];
      }

      ++v9;
      numLevels = self->_numLevels;
      ++v10;
    }

    while (v9 < numLevels);
    storageCopy = v21;
  }

  if (v8 < numLevels)
  {
    if (stageCopy)
    {
      v19 = 96;
    }

    else
    {
      v19 = 40;
    }

    do
    {
      v20 = *(&self->super.isa + v19);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      [v20 getOutputTensorSize:&v22 level:{v8, v21}];
      storageCopy->var1[v8++] = createPixelBuffer(v22, v23, 0x32433068u, 0);
    }

    while (v8 < self->_numLevels);
  }
}

- (void)releaseIntermediateStorage:(id *)storage
{
  [(VEOpticalFlow *)self releaseIntermediateStageStorage:?];
  if (self->_twoStageFlow)
  {

    [(VEOpticalFlow *)self releaseIntermediateStageStorage:&storage->var1];
  }
}

- (void)releaseIntermediateStageStorage:(id *)storage
{
  CVPixelBufferRelease(storage->var4);
  if (self->_numLevels)
  {
    v5 = 0;
    var2 = storage->var2;
    do
    {
      CVPixelBufferRelease(*(var2 - 12));
      CVPixelBufferRelease(*(var2 - 6));
      CVPixelBufferRelease(*var2);
      CVPixelBufferRelease(var2[6]);
      ++v5;
      ++var2;
    }

    while (v5 < self->_numLevels);
  }
}

- (void)allocateCorreleationBuffer:(__CVBuffer *)buffer forLevel:(unsigned int)level extractor:(id)extractor
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  [extractor getOutputTensorSize:&v9 level:?];
  if (level <= 1 && (level || !self->_useAdaptationLayer))
  {
    v8 = v11 + 83;
  }

  else
  {
    v8 = 81;
  }

  *buffer = CreatePixelBuffer(v9, v10 * v8, 1278226536);
}

- (void)allocateFeatureBuffers:(id *)buffers
{
  if (self->_useAdaptationLayer)
  {
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&buffers->var0.var4 level:0];
    buffers->var0.var3 = CreatePixelBuffer(buffers->var0.var4.var0, buffers->var0.var4.var2 * buffers->var0.var4.var1, 1278226536);
  }

  v5 = 0;
  v6 = 0;
  if (self->_downsampling)
  {
    getInputFrameSizeForUsage(self->_usage, &v6, &v5);
    buffers->var2 = CreatePixelBuffer(v6, 3 * v5, 1278226536);
  }

  if (!self->_adaptationLayerOnly)
  {
    [(VEOpticalFlow *)self allocateImageFeature:buffers extractor:self->_featureExtractor];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self allocateImageFeature:&buffers->var1 extractor:self->_baseFeatureExtractor];
      getInputFrameSizeForUsage(self->_baseStageUsage, &v6, &v5);
      buffers->var3 = CreatePixelBuffer(v6, 3 * v5, 1278226536);
    }
  }
}

- (void)allocateImageFeature:(id *)feature extractor:(id)extractor
{
  numLevels = self->_numLevels;
  feature->var0 = numLevels;
  if (numLevels)
  {
    v7 = 0;
    var2 = feature->var2;
    var1 = feature->var1;
    do
    {
      [extractor getOutputTensorSize:var2 level:v7];
      var1[v7++] = CreatePixelBuffer(var2->var0, var2->var2 * var2->var1, 1278226536);
      ++var2;
    }

    while (v7 < self->_numLevels);
  }
}

- (void)releaseFeatureBuffers:(id *)buffers
{
  CVPixelBufferRelease(buffers->var0.var3);
  buffers->var0.var3 = 0;
  if (self->_downsampling)
  {
    CVPixelBufferRelease(buffers->var2);
    buffers->var2 = 0;
  }

  if (!self->_adaptationLayerOnly)
  {
    [(VEOpticalFlow *)self releaseImageFeature:buffers];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self releaseImageFeature:&buffers->var1];
      CVPixelBufferRelease(buffers->var3);
      buffers->var3 = 0;
    }
  }
}

- (void)releaseImageFeature:(id *)feature
{
  if (self->_numLevels)
  {
    v4 = 0;
    var1 = feature->var1;
    do
    {
      CVPixelBufferRelease(var1[v4]);
      var1[v4++] = 0;
    }

    while (v4 < self->_numLevels);
  }
}

- (void)subsampleInput:(__CVBuffer *)input to:(__CVBuffer *)to forUsage:(int64_t)usage
{
  v8 = objc_autoreleasePoolPush();
  v9 = createTexturesFromCVPixelBuffer(input, self->_device, 1, 3uLL);
  v10 = createTexturesFromCVPixelBuffer(to, self->_device, 1, 3uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [(OFBackwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v9 destination:v10];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];

  objc_autoreleasePoolPop(v8);
}

- (void)extractFeaturesFromFirst:(__CVBuffer *)first second:(__CVBuffer *)second
{
  if (first)
  {
    [(VEOpticalFlow *)self extractFeaturesFromImage:first outputFeatures:self->_features];
  }

  else
  {
    memcpy(v6, self->_features, sizeof(v6));
    memcpy(self->_features, &self->_features[1], 0x1E0uLL);
    memcpy(&self->_features[1], v6, sizeof(self->_features[1]));
  }

  [(VEOpticalFlow *)self extractFeaturesFromImage:second outputFeatures:&self->_features[1]];
}

- (void)extractFeaturesFromImage:(__CVBuffer *)image outputFeatures:(id *)features
{
  var2 = image;
  if (self->_downsampling)
  {
    var2 = features->var2;
    [(VEOpticalFlow *)self subsampleInput:image to:var2 forUsage:self->_usage];
  }

  if (self->_useAdaptationLayer)
  {
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor extractFeaturesFromImage:var2 toFeatures:features callback:0];
  }

  if (!self->_adaptationLayerOnly)
  {
    [(OFFeatureExtractor *)self->_featureExtractor extractFeaturesFromImage:var2 toFeatures:features callback:0];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self subsampleInput:image to:features->var3 forUsage:self->_baseStageUsage];
      [(OFFeatureExtractor *)self->_baseFeatureExtractor extractFeaturesFromImage:features->var3 toFeatures:&features->var1 callback:0];
    }

    if (!self->_resourcePreAllocated && self->_twoStageFlow)
    {

      [(VEOpticalFlow *)self releaseUnusedFeatures:features];
    }
  }
}

- (void)estimateFlowLevel:(unsigned int)level withEstimator:(id *)estimator firstFeatures:(id *)features secondFeatures:(id *)secondFeatures correlation:(__CVBuffer *)correlation upscaledFlow:(__CVBuffer *)flow warpedImage:(__CVBuffer *)image prevFlow:(__CVBuffer *)self0 outputFlow:(__CVBuffer *)self1 waitForComplete:(BOOL)self2
{
  var2 = secondFeatures->var2[level].var2;
  v39 = level == 0 && self->_useAdaptationLayer;
  v17 = level > 1 || v39;
  if (v39)
  {
    v18 = 4 * var2;
  }

  else
  {
    v18 = secondFeatures->var2[level].var2;
  }

  if (level == 0 && self->_useAdaptationLayer)
  {
    p_var3 = &features->var3;
  }

  else
  {
    p_var3 = &features->var1[level];
  }

  if (level == 0 && self->_useAdaptationLayer)
  {
    v20 = &secondFeatures->var3;
  }

  else
  {
    v20 = &secondFeatures->var1[level];
  }

  commandQueue = self->_commandQueue;
  if (level > 1 || v39)
  {
    v22 = 81;
  }

  else
  {
    v22 = (var2 + 83);
  }

  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  v38 = p_var3;
  v23 = *p_var3;
  v24 = *v20;
  v37 = createTexturesFromCVPixelBufferWithCommandBuffer(v23, self->_device, commandBuffer, 1, v18);
  v25 = createTexturesFromCVPixelBufferWithCommandBuffer(v24, self->_device, commandBuffer, 1, v18);
  flowCopy = flow;
  v27 = createTexturesFromCVPixelBufferWithCommandBuffer(flow, self->_device, commandBuffer, 2, 1uLL);
  correlationCopy = correlation;
  v28 = createTexturesFromCVPixelBufferWithCommandBuffer(correlation, self->_device, commandBuffer, 1, v22);
  v41 = v25;
  if (self->_numLevels - 1 == level)
  {
    v29 = v35;
    v30 = v25;

    v27 = 0;
    v36 = 0;
  }

  else
  {
    v31 = createTexturesFromCVPixelBufferWithCommandBuffer(prevFlow, self->_device, commandBuffer, 2, 1uLL);
    v29 = v35;
    v30 = createTexturesFromCVPixelBufferWithCommandBuffer(v35, self->_device, commandBuffer, 1, v18);
    v36 = v31;
    if (v17)
    {
      v32 = v27;
    }

    else
    {
      v32 = v28;
    }

    [(OFBackwarp *)self->_backwarp encodeToCommandBuffer:commandBuffer source:v41 flow:v31 destination:v30 upscaledFlow:v32];
  }

  [(OFCorrelation *)self->_correlation encodeToCommandBuffer:commandBuffer first:v37 second:v30 destination:v28];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v30 width], objc_msgSend(v30, "height"), objc_msgSend(v30, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v30, v29, self->_device, commandBuffer);
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v28 width], objc_msgSend(v28, "height"), objc_msgSend(v28, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v28, correlationCopy, self->_device, commandBuffer);
  }

  if (v27 && isBufferCopyNecessaryForCVtoTextureConversion([v27 width], objc_msgSend(v27, "height"), objc_msgSend(v27, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v27, flowCopy, self->_device, commandBuffer);
  }

  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  kdebug_trace();

  if (v39)
  {
    prevFlowCopy = prevFlow;
  }

  else
  {
    prevFlowCopy = flowCopy;
  }

  if (complete)
  {
    v34 = 0;
  }

  else
  {
    v34 = &__block_literal_global;
  }

  [estimator[level] estimateFlow:*v38 correlation:correlationCopy flow:prevFlowCopy output:outputFlow callback:v34];
}

- (void)postProcessFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  Width = CVPixelBufferGetWidth(flow);
  Height = CVPixelBufferGetHeight(flow);
  v9 = isBufferCopyNecessaryForCVtoTextureConversion(Width, Height, 1uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  device = self->_device;
  v15 = commandBuffer;
  if (v9)
  {
    createTexturesFromCVPixelBufferWithCommandBuffer(flow, device, commandBuffer, 2, 1uLL);
  }

  else
  {
    createTexturesFromCVPixelBuffer(flow, device, 2, 1uLL);
  }
  v12 = ;
  v13 = createFlowTexturesFromCVPixelBuffer(outputFlow, self->_device, 1, 2uLL);
  backwarp = self->_backwarp;
  if (!self->_upscaleFinalFlow)
  {
    [(OFBackwarp *)backwarp encodePaddingTextureToCommandBuffer:v15 source:v12 destination:v13];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(OFBackwarp *)backwarp encodeUpscaleFlowToCommandBuffer:v15 source:v12 destination:v13];
  if (v9)
  {
LABEL_8:
    copyTextureToBufferWithBlit(v13, outputFlow, self->_device, v15);
  }

LABEL_9:
  [v15 commit];
  if (self->_waitForCompletion)
  {
    [v15 waitUntilCompleted];
  }

  else
  {
    [v15 waitUntilScheduled];
  }
}

- (void)estimateFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage outputFlow:(__CVBuffer *)flow
{
  skipLastLevel = self->_skipLastLevel;
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(storage->var0.var1[skipLastLevel]), Height != CVPixelBufferGetHeight(flow)))
  {
    v12 = 1;
  }

  else if (self->_useAdaptationLayer)
  {
    v12 = 0;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(flow);
    v12 = PixelFormatType != CVPixelBufferGetPixelFormatType(storage->var0.var1[skipLastLevel]);
  }

  v15 = (self->_numLevels - 1);
  if (self->_twoStageFlow)
  {
    [(VEOpticalFlow *)self estimateStageFlowFromFirstFeatures:&features->var1 secondFeature:&feature->var1 storage:&storage->var1 baseStage:1 startLevel:v15 lastLevel:2 startFlow:0 outputFlow:0];
    v16 = storage->var1.var1[2];
    v15 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    flowCopy = 0;
  }

  else
  {
    flowCopy = flow;
  }

  [(VEOpticalFlow *)self estimateStageFlowFromFirstFeatures:features secondFeature:feature storage:storage baseStage:0 startLevel:v15 lastLevel:skipLastLevel startFlow:v16 outputFlow:flowCopy];
  if (v12)
  {
    v18 = storage->var0.var1[skipLastLevel];

    [(VEOpticalFlow *)self postProcessFlow:v18 outputFlow:flow];
  }
}

- (void)estimateStageFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage baseStage:(BOOL)stage startLevel:(int)level lastLevel:(int)lastLevel startFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)self0
{
  outputFlowCopy = outputFlow;
  v14 = 48;
  if (stage)
  {
    v14 = 104;
  }

  v30 = v14;
  v15 = 40;
  if (stage)
  {
    v15 = 96;
  }

  v29 = *(&self->super.isa + v15);
  if (level >= lastLevel)
  {
    v16 = 0;
    levelCopy = level;
    v18 = lastLevel - level;
    levelCopy2 = level;
    v20 = &storage->var0[level];
    do
    {
      useAdaptationLayer = self->_useAdaptationLayer;
      v22 = v18 == v16 && outputFlow != 0 && self->_waitForCompletion;
      if (!self->_resourcePreAllocated)
      {
        [(VEOpticalFlow *)self allocateCorreleationBuffer:v20 forLevel:(levelCopy2 + v16) extractor:v29];
      }

      flowCopy = flow;
      if (v16)
      {
        flowCopy = v20[7];
      }

      p_var4 = &storage->var4;
      if (levelCopy + v16 != 0 || !useAdaptationLayer)
      {
        if (outputFlow)
        {
          outputFlowCopy2 = outputFlow;
          if (v18 == v16)
          {
            goto LABEL_19;
          }
        }

        p_var4 = v20 + 6;
      }

      outputFlowCopy2 = *p_var4;
LABEL_19:
      LOBYTE(v26) = v22;
      [(VEOpticalFlow *)self estimateFlowLevel:(levelCopy2 + v16) withEstimator:self + v30 firstFeatures:features secondFeatures:feature correlation:*v20 upscaledFlow:v20[12] warpedImage:v20[18] prevFlow:flowCopy outputFlow:outputFlowCopy2 waitForComplete:v26];
      if (!self->_resourcePreAllocated)
      {
        CVPixelBufferRelease(*v20);
        *v20 = 0;
      }

      --v16;
      --v20;
    }

    while (levelCopy + v16 + 1 > lastLevel);
  }

  if (!lastLevel && self->_useAdaptationLayer)
  {
    if (!outputFlow)
    {
      outputFlowCopy = storage->var1[0];
    }

    [(VEOpticalFlow *)self reshuffleFlow:storage->var4 previsouFlow:storage->var1[1] destination:outputFlowCopy];
  }
}

- (void)adaptFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(storage->var1[0]), Height != CVPixelBufferGetHeight(outputFlow)))
  {
    outputFlowCopy = storage->var1[0];
    v27 = 1;
  }

  else
  {
    v27 = 0;
    outputFlowCopy = outputFlow;
  }

  var2 = features->var4.var2;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  featuresCopy = features;
  v15 = createTexturesFromCVPixelBufferWithCommandBuffer(features->var3, self->_device, commandBuffer, 1, var2);
  v16 = createTexturesFromCVPixelBufferWithCommandBuffer(feature->var3, self->_device, commandBuffer, 1, var2);
  v17 = createFlowTexturesFromCVPixelBufferWithCommandBuffer(storage->var2[0], self->_device, commandBuffer, 1, 2uLL);
  v18 = createTexturesFromCVPixelBufferWithCommandBuffer(storage->var3[0], self->_device, commandBuffer, 1, var2);
  v19 = createTexturesFromCVPixelBufferWithCommandBuffer(storage->var0[0], self->_device, commandBuffer, 1, 0x51uLL);
  v20 = createTexturesFromCVPixelBufferWithCommandBuffer(flow, self->_device, commandBuffer, 2, 1uLL);
  [(OFBackwarp *)self->_backwarp encodeToCommandBuffer:commandBuffer source:v16 flow:v20 destination:v18 upscaledFlow:v17];
  [(OFCorrelation *)self->_correlation encodeToCommandBuffer:commandBuffer first:v15 second:v18 destination:v19];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v18 width], objc_msgSend(v18, "height"), objc_msgSend(v18, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v18, storage->var3[0], self->_device, commandBuffer);
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v19 width], objc_msgSend(v19, "height"), objc_msgSend(v19, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v19, storage->var0[0], self->_device, commandBuffer);
  }

  if (v17 && isBufferCopyNecessaryForCVtoTextureConversion([v17 width], objc_msgSend(v17, "height"), objc_msgSend(v17, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v17, storage->var2[0], self->_device, commandBuffer);
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];

  [(OFFlowEstimate *)self->_flowEstimator[0] estimateFlow:featuresCopy->var3 correlation:storage->var0[0] flow:flow output:storage->var4 callback:0];
  if (!self->_resourcePreAllocated)
  {
    CVPixelBufferRelease(storage->var0[0]);
    storage->var0[0] = 0;
  }

  [(VEOpticalFlow *)self reshuffleFlow:storage->var4 previsouFlow:flow destination:outputFlowCopy];
  if (v27)
  {
    v21 = createTexturesFromCVPixelBuffer(outputFlowCopy, self->_device, 2, 1uLL);
    v22 = createTexturesFromCVPixelBuffer(v25, self->_device, 2, 1uLL);
    backwarp = self->_backwarp;
    if (self->_upscaleFinalFlow)
    {
      [(OFBackwarp *)backwarp upscaleFlow:v21 destination:v22 callback:&__block_literal_global_35];
    }

    else
    {
      [(OFBackwarp *)backwarp copyTextureWithPaddingSource:v21 destination:v22 callback:&__block_literal_global_37];
    }
  }
}

- (void)reshuffleFlow:(__CVBuffer *)flow previsouFlow:(__CVBuffer *)previsouFlow destination:(__CVBuffer *)destination
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v9 = createTexturesFromCVPixelBufferWithCommandBuffer(flow, self->_device, commandBuffer, 1, 8uLL);
  v10 = createTexturesFromCVPixelBufferWithCommandBuffer(previsouFlow, self->_device, commandBuffer, 2, 1uLL);
  v11 = createFlowTexturesFromCVPixelBuffer(destination, self->_device, 1, 2uLL);
  [(OFBackwarp *)self->_backwarp encodeReShuffleFlowToCommandBuffer:commandBuffer shuffledFlow:v9 previousFlow:v10 destination:v11];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v11 width], objc_msgSend(v11, "height"), objc_msgSend(v11, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v11, destination, self->_device, commandBuffer);
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
}

- (void)predictFowardFlow:(__CVBuffer *)flow fromBackwardFlow:(__CVBuffer *)backwardFlow
{
  v6 = createTexturesFromCVPixelBuffer(backwardFlow, self->_device, 2, 1uLL);
  v7 = createTexturesFromCVPixelBuffer(flow, self->_device, 2, 1uLL);
  [(OFBackwarp *)self->_backwarp reverseFlowWithSource:v6 destination:v7];
}

- (void)estimateTwoWayFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage outputForwardFlow:(__CVBuffer *)flow outputBackwardFlow:(__CVBuffer *)backwardFlow
{
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__VEOpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke;
  block[3] = &unk_278F53718;
  block[4] = self;
  block[5] = features;
  block[6] = feature;
  block[7] = storage;
  block[8] = flow;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  v14 = self->_dispatchGroup;
  v15 = self->_concurrentQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__VEOpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke_2;
  v16[3] = &unk_278F53718;
  v16[4] = self;
  v16[5] = feature;
  v16[6] = features;
  v16[7] = storage;
  v16[8] = backwardFlow;
  dispatch_group_async(v14, v15, v16);
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)switchUsageTo:(int64_t)to
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_adaptationLayerOnly)
  {
    self->_numLevels = [(objc_class *)self->_adaptationFeatureExtractorClass numLevels];
    self->_twoStageFlow = 0;
  }

  *&self->_upscaleFinalFlow = 0;
  if (self->_downsampling == 1)
  {
    if (!self->_disableOutputFlowScaling)
    {
      self->_upscaleFinalFlow = 1;
    }

    QuarterSizeUsage = getQuarterSizeUsage(to);
    if ([VEOpticalFlow use4xDownScale:to])
    {
      QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
      self->_4xUpscale = 1;
    }

    if (QuarterSizeUsage != to)
    {
      goto LABEL_14;
    }

    if ((global_logLevel & 4) != 0)
    {
      v6 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        v24[0] = 67109120;
        v24[1] = to;
        _os_log_impl(&dword_24874B000, v6, OS_LOG_TYPE_INFO, "No support for 1/4 optical flow input for this usage (usage = %d). Bailing to the full size mode.\n", v24, 8u);
      }
    }

    self->_upscaleFinalFlow = 0;
  }

  QuarterSizeUsage = to;
LABEL_14:
  if (QuarterSizeUsage == self->_usage)
  {
    [(VEOpticalFlow *)self updateFlowSize];
    if (self->_useAdaptationLayer)
    {
      v7 = [objc_alloc(self->_adaptationFeatureExtractorClass) initWithMode:self->_usage revision:self->_revision];
      adaptationFeatureExtractor = self->_adaptationFeatureExtractor;
      self->_adaptationFeatureExtractor = v7;

      v9 = [objc_alloc(self->_adaptationDecoderClass) initWithMode:self->_usage revision:self->_revision];
    }

    else
    {
      v9 = [objc_alloc(self->_flowEstimatorClass) initWithMode:self->_usage level:0];
    }

    v23 = self->_flowEstimator[0];
    self->_flowEstimator[0] = v9;

    if (self->_twoStageFlow && !self->_baseStageCreated)
    {
      [(VEOpticalFlow *)self createBaseLayer];
    }

    return 1;
  }

  self->_usage = QuarterSizeUsage;
  [(VEOpticalFlow *)self updateFlowSize];
  v10 = [objc_alloc(self->_featureExtractorClass) initWithMode:self->_usage revision:self->_revision];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = v10;

  if (!self->_featureExtractor)
  {
    return 0;
  }

  if (self->_useAdaptationLayer)
  {
    v12 = [objc_alloc(self->_adaptationFeatureExtractorClass) initWithMode:self->_usage revision:self->_revision];
    v13 = self->_adaptationFeatureExtractor;
    self->_adaptationFeatureExtractor = v12;

    if (!self->_adaptationFeatureExtractor)
    {
      return 0;
    }
  }

  numLevels = self->_numLevels;
  if (!numLevels)
  {
    if (!self->_twoStageFlow)
    {
      return 1;
    }

    goto LABEL_39;
  }

  v15 = 0;
  v16 = numLevels - self->_twoStageFlow;
  flowEstimator = self->_flowEstimator;
  do
  {
    if (v15 >= v16)
    {
      v20 = flowEstimator[v15];
      flowEstimator[v15] = 0;

      goto LABEL_30;
    }

    if (v15 || !self->_useAdaptationLayer)
    {
      if (!v15)
      {
        goto LABEL_30;
      }

      v21 = [objc_alloc(self->_flowEstimatorClass) initWithMode:self->_usage level:v15 revision:self->_revision];
      v19 = flowEstimator[v15];
      flowEstimator[v15] = v21;
    }

    else
    {
      v18 = [objc_alloc(self->_adaptationDecoderClass) initWithMode:self->_usage revision:self->_revision];
      v19 = self->_flowEstimator[0];
      self->_flowEstimator[0] = v18;
    }

    if (!flowEstimator[v15])
    {
      return 0;
    }

LABEL_30:
    ++v15;
  }

  while (v15 < self->_numLevels);
  if (!self->_twoStageFlow)
  {
    return 1;
  }

LABEL_39:
  [(VEOpticalFlow *)self createBaseLayer];
  if (!self->_baseStageCreated)
  {
    self->_twoStageFlow = 0;
  }

  return 1;
}

- (BOOL)createBaseLayer
{
  self->_baseStageCreated = 0;
  v13 = 0;
  v14 = 0;
  getInputFrameSizeForUsage(self->_usage, &v14, &v13);
  usage = self->_usage;
  if ((v14 - 1920) > 0x280)
  {
    QuarterSizeUsage = get4xDownSizeUsage(usage);
  }

  else
  {
    QuarterSizeUsage = getQuarterSizeUsage(usage);
  }

  self->_baseStageUsage = QuarterSizeUsage;
  v5 = [objc_alloc(self->_featureExtractorClass) initWithMode:self->_baseStageUsage revision:self->_revision];
  baseFeatureExtractor = self->_baseFeatureExtractor;
  self->_baseFeatureExtractor = v5;

  if (!self->_featureExtractor)
  {
    return 0;
  }

  v7 = 1;
  [(OFFeatureExtractor *)self->_baseFeatureExtractor setBaseStage:1];
  if (self->_numLevels >= 3u)
  {
    v8 = &self->_baseFlowEstimator[2];
    v9 = 2;
    do
    {
      v10 = [objc_alloc(self->_flowEstimatorClass) initWithMode:self->_baseStageUsage level:v9 revision:self->_revision];
      v11 = *v8;
      *v8 = v10;

      if (!*v8)
      {
        return 0;
      }

      ++v9;
      ++v8;
    }

    while (v9 < self->_numLevels);
  }

  self->_baseStageCreated = 1;
  return v7;
}

- (void)releaseUnusedFeatures:(id *)features
{
  CVPixelBufferRelease(features->var1.var1[0]);
  features->var1.var1[0] = 0;
  CVPixelBufferRelease(features->var1.var1[1]);
  features->var1.var1[1] = 0;
  if (self->_numLevels >= 5u)
  {
    v5 = &features->var0.var1[4];
    v6 = 4;
    do
    {
      CVPixelBufferRelease(*v5);
      *v5++ = 0;
      ++v6;
    }

    while (v6 < self->_numLevels);
  }
}

- (void)upscaleInputFlow:(__CVBuffer *)flow outFlow:(__CVBuffer *)outFlow
{
  v6 = createFlowTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
  v7 = createFlowTexturesFromCVPixelBuffer(outFlow, self->_device, 1, 2uLL);
  [(OFBackwarp *)self->_backwarp upscaleFlow:v6 destination:v7 callback:0];
}

- (void)allocateResources
{
  self->_resourcePreAllocated = 1;
  [(VEOpticalFlow *)self allocateFeatureBuffers:self->_features];
  [(VEOpticalFlow *)self allocateFeatureBuffers:&self->_features[1]];
  [(VEOpticalFlow *)self allocateIntermediateStorage:self->_opticalFlowStroages];
  if (self->_concurrentDualFlowProcessing)
  {

    [(VEOpticalFlow *)self allocateIntermediateStorage:&self->_opticalFlowStroages[1]];
  }
}

- (void)releaseResources
{
  if (self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self releaseFeatureBuffers:self->_features];
    [(VEOpticalFlow *)self releaseFeatureBuffers:&self->_features[1]];
    [(VEOpticalFlow *)self releaseIntermediateStorage:self->_opticalFlowStroages];
    [(VEOpticalFlow *)self releaseIntermediateStorage:&self->_opticalFlowStroages[1]];
    self->_resourcePreAllocated = 0;
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flow:(__CVBuffer *)flow
{
  if (self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];

    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:flow];
  }

  else
  {
    [(VEOpticalFlow *)self allocateResources];
    [(VEOpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:flow];

    [(VEOpticalFlow *)self releaseResources];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward reUseFlow:(BOOL)flow
{
  flowCopy = flow;
  resourcePreAllocated = self->_resourcePreAllocated;
  if (!resourcePreAllocated)
  {
    [(VEOpticalFlow *)self allocateResources];
  }

  [(VEOpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];
  if (flowCopy)
  {
    [(VEOpticalFlow *)self predictFowardFlow:forward fromBackwardFlow:backward];
    goto LABEL_11;
  }

  features = self->_features;
  v15 = &self->_features[1];
  opticalFlowStroages = self->_opticalFlowStroages;
  if (!self->_concurrentDualFlowProcessing)
  {
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputFlow:forward];
LABEL_11:
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:self->_opticalFlowStroages outputFlow:backward];
    if (resourcePreAllocated)
    {
      return;
    }

    goto LABEL_7;
  }

  [(VEOpticalFlow *)self estimateTwoWayFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputForwardFlow:forward outputBackwardFlow:backward];
  if (resourcePreAllocated)
  {
    return;
  }

LABEL_7:

  [(VEOpticalFlow *)self releaseResources];
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame inputFlowForward:(__CVBuffer *)forward inputFlowBackward:(__CVBuffer *)backward outputFlowForward:(__CVBuffer *)flowForward outputFlowBackward:(__CVBuffer *)flowBackward
{
  resourcePreAllocated = self->_resourcePreAllocated;
  if (resourcePreAllocated)
  {
    if (frame)
    {
LABEL_3:
      [(VEOpticalFlow *)self extractFeaturesFromImage:frame outputFeatures:self->_features];
      goto LABEL_6;
    }
  }

  else
  {
    [(VEOpticalFlow *)self allocateResources];
    if (frame)
    {
      goto LABEL_3;
    }
  }

  memcpy(v16, self->_features, sizeof(v16));
  memcpy(self->_features, &self->_features[1], 0x1E0uLL);
  memcpy(&self->_features[1], v16, sizeof(self->_features[1]));
LABEL_6:
  [(VEOpticalFlow *)self extractFeaturesFromImage:secondFrame outputFeatures:&self->_features[1]];
  [(VEOpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:forward outputFlow:flowForward];
  [(VEOpticalFlow *)self adaptFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:&self->_opticalFlowStroages[1] inputFlow:backward outputFlow:flowBackward];
  if (!resourcePreAllocated)
  {

    [(VEOpticalFlow *)self releaseResources];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)flowSizeForLevel:(SEL)level
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  result = [(OFFeatureExtractor *)self->_featureExtractor getOutputTensorSize:retstr level:*&a4];
  retstr->var2 = 2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)level
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v6 = 40;
  if (!a4)
  {
    v6 = 152;
  }

  return [*(&self->super.isa + v6) getOutputTensorSize:retstr level:?];
}

@end