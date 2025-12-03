@interface OpticalFlow
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)level;
- (BOOL)createBaseLayer;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)to;
- (OpticalFlow)initWithMode:(int64_t)mode;
- (id)createTexturesFromCVPixelBuffer:(__CVBuffer *)buffer interleave:(unint64_t)interleave arrayLength:(unint64_t)length withCommandBuffer:(id)commandBuffer;
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
- (void)flowAdaptationFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow;
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
- (void)reshuffleFlow:(__CVBuffer *)flow previousFlow:(__CVBuffer *)previousFlow destination:(__CVBuffer *)destination waitForComplete:(BOOL)complete;
- (void)setNetworkClasses;
- (void)subsampleBuffer:(__CVBuffer *)buffer destination:(__CVBuffer *)destination toCommandBuffer:(id)commandBuffer;
- (void)subsampleInput:(__CVBuffer *)input to:(__CVBuffer *)to forUsage:(int64_t)usage;
- (void)updateFlowSize;
- (void)upscaleInputFlow:(__CVBuffer *)flow outFlow:(__CVBuffer *)outFlow;
@end

@implementation OpticalFlow

- (void)setNetworkClasses
{
  self->_featureExtractorClass = objc_opt_class();
  self->_flowEstimatorClass = objc_opt_class();
  self->_adaptationFeatureExtractorClass = objc_opt_class();
  self->_adaptationDecoderClass = objc_opt_class();
}

- (OpticalFlow)initWithMode:(int64_t)mode
{
  v19.receiver = self;
  v19.super_class = OpticalFlow;
  v4 = [(OpticalFlow *)&v19 init];
  [v4 setNetworkClasses];
  *(v4 + 260) = 1;
  [*(v4 + 2) setNumLevels:{objc_msgSend(*(v4 + 1), "numLevels")}];
  v4[2042] = 0;
  *(v4 + 6) = mode;
  if ([v4 createModules])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = *(v4 + 23);
    *(v4 + 23) = v5;

    v7 = dispatch_semaphore_create(0);
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;

    newCommandQueue = [*(v4 + 262) newCommandQueue];
    v10 = *(v4 + 5);
    *(v4 + 5) = newCommandQueue;

    v11 = dispatch_group_create();
    v12 = *(v4 + 25);
    *(v4 + 25) = v11;

    v13 = dispatch_queue_create("Main Concurrent Task Queue", MEMORY[0x277D85CD8]);
    v14 = *(v4 + 26);
    *(v4 + 26) = v13;

    v15 = objc_alloc_init(FRCBlit);
    v16 = *(v4 + 254);
    *(v4 + 254) = v15;

    *(v4 + 2047) = 1;
    v4[2050] = 0;
    if (*(v4 + 6) != -1)
    {
      [v4 updateFlowSize];
    }

    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)updateFlowSize
{
  p_flowWidth = &self->_flowWidth;
  p_flowHeight = &self->_flowHeight;
  FRCGetInputFrameSizeForUsage(self->_usage, &self->_flowWidth, &self->_flowHeight);
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
  v2.super_class = OpticalFlow;
  [(OpticalFlow *)&v2 dealloc];
}

- (BOOL)createModules
{
  self->_numLevels = [(objc_class *)self->_featureExtractorClass numLevels];
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  v5 = [[Correlation alloc] initWithDevice:self->_device interleaved:0];
  correlation = self->_correlation;
  self->_correlation = v5;

  if (!self->_correlation)
  {
    return 0;
  }

  v7 = [[Backwarp alloc] initWithDevice:self->_device interleaved:0];
  backwarp = self->_backwarp;
  self->_backwarp = v7;

  return self->_backwarp != 0;
}

- (void)allocateIntermediateStorage:(id *)storage
{
  [(OpticalFlow *)self allocateIntermediateStageStorage:storage baseStage:0];
  if (self->_twoStageFlow)
  {

    [(OpticalFlow *)self allocateIntermediateStageStorage:&storage->var1 baseStage:1];
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
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&v22 level:0];
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
      v13 = 56;
      if (v12 && useAdaptationLayer)
      {
        v13 = 168;
      }

      if (stageCopy)
      {
        v13 = 112;
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
        [(OpticalFlow *)self allocateCorreleationBuffer:v10 forLevel:v9 extractor:v14];
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
      v19 = 112;
    }

    else
    {
      v19 = 56;
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
  [(OpticalFlow *)self releaseIntermediateStageStorage:?];
  if (self->_twoStageFlow)
  {

    [(OpticalFlow *)self releaseIntermediateStageStorage:&storage->var1];
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

  *buffer = createPixelBuffer(v9, v10 * v8, 0x4C303068u, 0);
}

- (void)allocateFeatureBuffers:(id *)buffers
{
  if (self->_useAdaptationLayer)
  {
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&buffers->var0.var4 level:0];
    buffers->var0.var3 = createPixelBuffer(buffers->var0.var4.var0, buffers->var0.var4.var2 * buffers->var0.var4.var1, 0x4C303068u, 0);
  }

  v5 = 0;
  v6 = 0;
  if (self->_downsampling)
  {
    FRCGetInputFrameSizeForUsage(self->_usage, &v6, &v5);
    buffers->var2 = createPixelBuffer(v6, 3 * v5, 0x4C303068u, 0);
  }

  if (!self->_adaptationLayerOnly)
  {
    [(OpticalFlow *)self allocateImageFeature:buffers extractor:self->_featureExtractor];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self allocateImageFeature:&buffers->var1 extractor:self->_baseFeatureExtractor];
      FRCGetInputFrameSizeForUsage(self->_baseStageUsage, &v6, &v5);
      buffers->var3 = createPixelBuffer(v6, 3 * v5, 0x4C303068u, 0);
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
      var1[v7++] = createPixelBuffer(var2->var0, var2->var2 * var2->var1, 0x4C303068u, 0);
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
    [(OpticalFlow *)self releaseImageFeature:buffers];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self releaseImageFeature:&buffers->var1];
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
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBuffer source:v9 destination:v10];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];

  objc_autoreleasePoolPop(v8);
}

- (void)subsampleBuffer:(__CVBuffer *)buffer destination:(__CVBuffer *)destination toCommandBuffer:(id)commandBuffer
{
  device = self->_device;
  commandBufferCopy = commandBuffer;
  v11 = createTexturesFromCVPixelBuffer(buffer, device, 1, 3uLL);
  v10 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 3uLL);
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:commandBufferCopy source:v11 destination:v10];
}

- (void)extractFeaturesFromFirst:(__CVBuffer *)first second:(__CVBuffer *)second
{
  if (first)
  {
    [(OpticalFlow *)self extractFeaturesFromImage:first outputFeatures:self->_features];
  }

  else
  {
    memcpy(v6, self->_features, sizeof(v6));
    memcpy(self->_features, &self->_features[1], 0x1E0uLL);
    memcpy(&self->_features[1], v6, sizeof(self->_features[1]));
  }

  [(OpticalFlow *)self extractFeaturesFromImage:second outputFeatures:&self->_features[1]];
}

- (void)extractFeaturesFromImage:(__CVBuffer *)image outputFeatures:(id *)features
{
  var2 = image;
  if (self->_downsampling)
  {
    var2 = features->var2;
    [(OpticalFlow *)self subsampleInput:image to:var2 forUsage:self->_usage];
  }

  if (self->_useAdaptationLayer)
  {
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor extractFeaturesFromImage:var2 toFeatures:features callback:0];
  }

  if (!self->_adaptationLayerOnly)
  {
    [(FeatureExtractor *)self->_featureExtractor extractFeaturesFromImage:var2 toFeatures:features callback:0];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self subsampleInput:image to:features->var3 forUsage:self->_baseStageUsage];
      [self->_baseFeatureExtractor extractFeaturesFromImage:features->var3 toFeatures:&features->var1 callback:0];
    }

    if (!self->_resourcePreAllocated && self->_twoStageFlow)
    {

      [(OpticalFlow *)self releaseUnusedFeatures:features];
    }
  }
}

- (id)createTexturesFromCVPixelBuffer:(__CVBuffer *)buffer interleave:(unint64_t)interleave arrayLength:(unint64_t)length withCommandBuffer:(id)commandBuffer
{
  commandBufferCopy = commandBuffer;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVPixelBufferGetPixelFormatType(buffer) == 843264104)
  {
    length = 1;
    interleave = 2;
  }

  v13 = Height / length;
  if (isBufferCopyNecessaryForCVtoTextureConversion(Width, v13, length))
  {
    v14 = createTextures(self->_device, Width, v13, interleave, length);
    [(FRCBlit *)self->_blit copyBuffer:buffer toTexture:v14 commandBuffer:commandBufferCopy];
  }

  else
  {
    v14 = createTexturesFromCVPixelBufferWithCommandBuffer(buffer, self->_device, commandBufferCopy, interleave, length);
  }

  return v14;
}

- (void)estimateFlowLevel:(unsigned int)level withEstimator:(id *)estimator firstFeatures:(id *)features secondFeatures:(id *)secondFeatures correlation:(__CVBuffer *)correlation upscaledFlow:(__CVBuffer *)flow warpedImage:(__CVBuffer *)image prevFlow:(__CVBuffer *)self0 outputFlow:(__CVBuffer *)self1 waitForComplete:(BOOL)self2
{
  var2 = secondFeatures->var2[level].var2;
  v36 = level == 0 && self->_useAdaptationLayer;
  if (v36)
  {
    v17 = 4 * var2;
  }

  else
  {
    v17 = secondFeatures->var2[level].var2;
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
    v19 = &secondFeatures->var3;
  }

  else
  {
    v19 = &secondFeatures->var1[level];
  }

  v34 = level > 1 || v36;
  commandQueue = self->_commandQueue;
  if (level > 1 || v36)
  {
    v21 = 81;
  }

  else
  {
    v21 = (var2 + 83);
  }

  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  v35 = p_var3;
  v23 = *v19;
  v40 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:*p_var3 interleave:1 arrayLength:v17 withCommandBuffer:commandBuffer];
  v24 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:v23 interleave:1 arrayLength:v17 withCommandBuffer:commandBuffer];
  flowCopy = flow;
  v25 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:flow interleave:2 arrayLength:2 withCommandBuffer:commandBuffer];
  correlationCopy = correlation;
  v26 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:correlation interleave:1 arrayLength:v21 withCommandBuffer:commandBuffer];
  if (self->_numLevels - 1 == level)
  {
    v27 = v24;

    v25 = 0;
    v28 = 0;
    imageCopy2 = image;
  }

  else
  {
    v28 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:prevFlow interleave:2 arrayLength:2 withCommandBuffer:commandBuffer];
    imageCopy2 = image;
    v27 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:image interleave:1 arrayLength:v17 withCommandBuffer:commandBuffer];
    if (v34)
    {
      v30 = v25;
    }

    else
    {
      v30 = v26;
    }

    [(Backwarp *)self->_backwarp encodeToCommandBuffer:commandBuffer source:v24 flow:v28 destination:v27 upscaledFlow:v30];
  }

  [(Correlation *)self->_correlation encodeToCommandBuffer:commandBuffer first:v40 second:v27 destination:v26];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v27 width], objc_msgSend(v27, "height"), objc_msgSend(v27, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v27 toBuffer:imageCopy2 commandBuffer:commandBuffer];
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v26 width], objc_msgSend(v26, "height"), objc_msgSend(v26, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v26 toBuffer:correlationCopy commandBuffer:commandBuffer];
  }

  if (v25 && isBufferCopyNecessaryForCVtoTextureConversion([v25 width], objc_msgSend(v25, "height"), objc_msgSend(v25, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v25 toBuffer:flowCopy commandBuffer:commandBuffer];
  }

  kdebug_trace();
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  kdebug_trace();

  if (v36)
  {
    prevFlowCopy = prevFlow;
  }

  else
  {
    prevFlowCopy = flowCopy;
  }

  v32 = *v35;
  v33 = estimator[level];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __149__OpticalFlow_estimateFlowLevel_withEstimator_firstFeatures_secondFeatures_correlation_upscaledFlow_warpedImage_prevFlow_outputFlow_waitForComplete___block_invoke;
  v41[3] = &unk_278FEA750;
  completeCopy = complete;
  v41[4] = self;
  [v33 estimateFlow:v32 correlation:correlationCopy flow:prevFlowCopy output:outputFlow callback:v41];
  if (complete)
  {
    dispatch_semaphore_wait(self->_flowEstimateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }
}

intptr_t __149__OpticalFlow_estimateFlowLevel_withEstimator_firstFeatures_secondFeatures_correlation_upscaledFlow_warpedImage_prevFlow_outputFlow_waitForComplete___block_invoke(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 184));
  }

  return result;
}

- (void)postProcessFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v8 = 1;
  v9 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:flow interleave:2 arrayLength:1 withCommandBuffer:commandBuffer];
  Width = CVPixelBufferGetWidth(outputFlow);
  Height = CVPixelBufferGetHeight(outputFlow);
  PixelFormatType = CVPixelBufferGetPixelFormatType(outputFlow);
  v13 = PixelFormatType != 843264104;
  if (PixelFormatType == 843264104)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (CVPixelBufferGetPixelFormatType(outputFlow) == 843264104)
  {
    v8 = 2;
  }

  v15 = isBufferCopyNecessaryForCVtoTextureConversion(Width, Height >> v13, v14);
  v16 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:outputFlow interleave:v8 arrayLength:v14 withCommandBuffer:commandBuffer];
  backwarp = self->_backwarp;
  if (!self->_upscaleFinalFlow)
  {
    [(Backwarp *)backwarp encodePaddingTextureToCommandBuffer:commandBuffer source:v9 destination:v16];
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(Backwarp *)backwarp encodeUpscaleFlowToCommandBuffer:commandBuffer source:v9 destination:v16];
  if (v15)
  {
LABEL_10:
    copyTextureToBufferWithBlit(v16, outputFlow, self->_device, commandBuffer);
  }

LABEL_11:
  if (self->_waitForCompletion)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__OpticalFlow_postProcessFlow_outputFlow___block_invoke;
    v18[3] = &unk_278FEA810;
    v18[4] = self;
    [commandBuffer addCompletedHandler:v18];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  if (self->_waitForCompletion)
  {
    dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
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
    [(OpticalFlow *)self estimateStageFlowFromFirstFeatures:&features->var1 secondFeature:&feature->var1 storage:&storage->var1 baseStage:1 startLevel:v15 lastLevel:2 startFlow:0 outputFlow:0];
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

  [(OpticalFlow *)self estimateStageFlowFromFirstFeatures:features secondFeature:feature storage:storage baseStage:0 startLevel:v15 lastLevel:skipLastLevel startFlow:v16 outputFlow:flowCopy];
  if (v12)
  {
    v18 = storage->var0.var1[skipLastLevel];

    [(OpticalFlow *)self postProcessFlow:v18 outputFlow:flow];
  }
}

- (void)estimateStageFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage baseStage:(BOOL)stage startLevel:(int)level lastLevel:(int)lastLevel startFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)self0
{
  outputFlowCopy = outputFlow;
  v14 = 64;
  if (stage)
  {
    v14 = 120;
  }

  v30 = v14;
  v15 = 56;
  if (stage)
  {
    v15 = 112;
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
        [(OpticalFlow *)self allocateCorreleationBuffer:v20 forLevel:(levelCopy2 + v16) extractor:v29];
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
      [(OpticalFlow *)self estimateFlowLevel:(levelCopy2 + v16) withEstimator:self + v30 firstFeatures:features secondFeatures:feature correlation:*v20 upscaledFlow:v20[12] warpedImage:v20[18] prevFlow:flowCopy outputFlow:outputFlowCopy2 waitForComplete:v26];
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

    [(OpticalFlow *)self reshuffleFlow:storage->var4 previousFlow:storage->var1[1] destination:outputFlowCopy waitForComplete:0];
  }
}

- (void)adaptFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(storage->var1[0]), Height != CVPixelBufferGetHeight(outputFlow)))
  {
    outputFlowCopy = storage->var1[0];
    v30 = 1;
  }

  else
  {
    v30 = 0;
    outputFlowCopy = outputFlow;
  }

  var2 = features->var4.var2;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  featuresCopy = features;
  v15 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:features->var3 interleave:1 arrayLength:var2 withCommandBuffer:commandBuffer];
  v16 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:feature->var3 interleave:1 arrayLength:var2 withCommandBuffer:commandBuffer];
  v17 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:storage->var2[0] interleave:1 arrayLength:2 withCommandBuffer:commandBuffer];
  v18 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:storage->var3[0] interleave:1 arrayLength:var2 withCommandBuffer:commandBuffer];
  v19 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:storage->var0[0] interleave:1 arrayLength:81 withCommandBuffer:commandBuffer];
  v20 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:flow interleave:1 arrayLength:2 withCommandBuffer:commandBuffer];
  [(Backwarp *)self->_backwarp encodeToCommandBuffer:commandBuffer source:v16 flow:v20 destination:v18 upscaledFlow:v17];
  [(Correlation *)self->_correlation encodeToCommandBuffer:commandBuffer first:v15 second:v18 destination:v19];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v19 width], objc_msgSend(v19, "height"), objc_msgSend(v19, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v19 toBuffer:storage->var0[0] commandBuffer:commandBuffer];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];

  v21 = self->_flowEstimator[0];
  var3 = featuresCopy->var3;
  v23 = storage->var0[0];
  var4 = storage->var4;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __85__OpticalFlow_adaptFlowFromFirstFeatures_secondFeature_storage_inputFlow_outputFlow___block_invoke;
  v33[3] = &unk_278FEA778;
  v33[4] = self;
  [(FlowEstimate *)v21 estimateFlow:var3 correlation:v23 flow:flow output:var4 callback:v33];
  dispatch_semaphore_wait(self->_flowEstimateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_resourcePreAllocated)
  {
    CVPixelBufferRelease(storage->var0[0]);
    storage->var0[0] = 0;
  }

  [(OpticalFlow *)self reshuffleFlow:storage->var4 previousFlow:flow destination:outputFlowCopy waitForComplete:v30 ^ 1u];
  if (((v30 ^ 1) & 1) == 0)
  {
    v25 = createTexturesFromCVPixelBuffer(outputFlowCopy, self->_device, 1, 2uLL);
    v26 = createTexturesFromCVPixelBuffer(outputFlow, self->_device, 1, 2uLL);
    backwarp = self->_backwarp;
    if (self->_upscaleFinalFlow)
    {
      [(Backwarp *)backwarp upscaleFlow:v25 destination:v26];
    }

    else
    {
      [(Backwarp *)backwarp copyTextureWithPaddingSource:v25 destination:v26];
    }
  }
}

- (void)reshuffleFlow:(__CVBuffer *)flow previousFlow:(__CVBuffer *)previousFlow destination:(__CVBuffer *)destination waitForComplete:(BOOL)complete
{
  completeCopy = complete;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v11 = createTexturesFromCVPixelBufferWithCommandBuffer(flow, self->_device, commandBuffer, 1, 8uLL);
  v12 = createTexturesFromCVPixelBufferWithCommandBuffer(previousFlow, self->_device, commandBuffer, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(destination, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp encodeReShuffleFlowToCommandBuffer:commandBuffer shuffledFlow:v11 previousFlow:v12 destination:v13];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v13 width], objc_msgSend(v13, "height"), objc_msgSend(v13, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v13, destination, self->_device, commandBuffer);
  }

  [commandBuffer commit];
  if (completeCopy)
  {
    [commandBuffer waitUntilCompleted];
  }

  else
  {
    [commandBuffer waitUntilScheduled];
  }
}

- (void)predictFowardFlow:(__CVBuffer *)flow fromBackwardFlow:(__CVBuffer *)backwardFlow
{
  v6 = createTexturesFromCVPixelBuffer(backwardFlow, self->_device, 1, 2uLL);
  v7 = createTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp reverseFlowWithSource:v6 destination:v7];
}

- (void)estimateTwoWayFlowFromFirstFeatures:(id *)features secondFeature:(id *)feature storage:(id *)storage outputForwardFlow:(__CVBuffer *)flow outputBackwardFlow:(__CVBuffer *)backwardFlow
{
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__OpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke;
  block[3] = &unk_278FEA838;
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
  v16[2] = __110__OpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke_2;
  v16[3] = &unk_278FEA838;
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
  if (self->_adaptationLayerOnly)
  {
    self->_numLevels = [(objc_class *)self->_adaptationFeatureExtractorClass numLevels];
    self->_twoStageFlow = 0;
  }

  self->_upscaleFinalFlow = 0;
  self->_4xUpscale = 0;
  if (self->_downsampling != 1)
  {
    goto LABEL_10;
  }

  if (!self->_disableOutputFlowScaling)
  {
    self->_upscaleFinalFlow = 1;
  }

  QuarterSizeUsage = getQuarterSizeUsage(to);
  if ([OpticalFlow use4xDownScale:to])
  {
    QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
    self->_4xUpscale = 1;
  }

  if (QuarterSizeUsage == to)
  {
    NSLog(&cfstr_NoSupportFor14.isa, to);
    self->_upscaleFinalFlow = 0;
LABEL_10:
    QuarterSizeUsage = to;
  }

  if (QuarterSizeUsage == self->_usage)
  {
    [(OpticalFlow *)self updateFlowSize];
    if (self->_useAdaptationLayer)
    {
      v6 = [objc_alloc(self->_adaptationFeatureExtractorClass) initWithMode:self->_usage revision:self->_revision];
      adaptationFeatureExtractor = self->_adaptationFeatureExtractor;
      self->_adaptationFeatureExtractor = v6;

      v8 = [objc_alloc(self->_adaptationDecoderClass) initWithMode:self->_usage revision:self->_revision];
    }

    else
    {
      if (self->_useE5RT)
      {
        goto LABEL_35;
      }

      v8 = [objc_alloc(self->_flowEstimatorClass) initWithMode:self->_usage level:0];
    }

    v24 = self->_flowEstimator[0];
    self->_flowEstimator[0] = v8;

LABEL_35:
    if (self->_twoStageFlow && !self->_baseStageCreated)
    {
      [(OpticalFlow *)self createBaseLayer];
    }

    return 1;
  }

  self->_usage = QuarterSizeUsage;
  [(OpticalFlow *)self updateFlowSize];
  if (!self->_useE5RT)
  {
    v9 = [objc_alloc(self->_featureExtractorClass) initWithMode:self->_usage revision:self->_revision];
    featureExtractor = self->_featureExtractor;
    self->_featureExtractor = v9;

    if (!self->_featureExtractor)
    {
      return 0;
    }
  }

  if (self->_useAdaptationLayer)
  {
    v11 = [objc_alloc(self->_adaptationFeatureExtractorClass) initWithMode:self->_usage revision:self->_revision];
    v12 = self->_adaptationFeatureExtractor;
    self->_adaptationFeatureExtractor = v11;

    if (!self->_adaptationFeatureExtractor)
    {
      return 0;
    }
  }

  numLevels = self->_numLevels;
  if (numLevels)
  {
    v14 = 0;
    v15 = numLevels - self->_twoStageFlow;
    flowEstimator = self->_flowEstimator;
    do
    {
      if (v14 >= v15)
      {
        v19 = flowEstimator[v14];
        flowEstimator[v14] = 0;
      }

      else
      {
        if (v14 || !self->_useAdaptationLayer)
        {
          v20 = objc_alloc(self->_flowEstimatorClass);
          usage = self->_usage;
          if (v14)
          {
            v22 = [v20 initWithMode:usage level:v14 revision:self->_revision];
            v18 = flowEstimator[v14];
            flowEstimator[v14] = v22;
          }

          else
          {
            v23 = [v20 initWithMode:usage level:0];
            v18 = *flowEstimator;
            *flowEstimator = v23;
          }
        }

        else
        {
          v17 = [objc_alloc(self->_adaptationDecoderClass) initWithMode:self->_usage revision:self->_revision];
          v18 = self->_flowEstimator[0];
          self->_flowEstimator[0] = v17;
        }

        if (!flowEstimator[v14])
        {
          return 0;
        }
      }

      ++v14;
    }

    while (v14 < self->_numLevels);
    if (!self->_twoStageFlow)
    {
      return 1;
    }

    goto LABEL_40;
  }

  if (self->_twoStageFlow)
  {
LABEL_40:
    [(OpticalFlow *)self createBaseLayer];
    if (!self->_baseStageCreated)
    {
      self->_twoStageFlow = 0;
    }
  }

  return 1;
}

- (BOOL)createBaseLayer
{
  self->_baseStageCreated = 0;
  v13 = 0;
  v14 = 0;
  FRCGetInputFrameSizeForUsage(self->_usage, &v14, &v13);
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
  [self->_baseFeatureExtractor setBaseStage:1];
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
  v6 = createTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
  v7 = createTexturesFromCVPixelBuffer(outFlow, self->_device, 1, 2uLL);
  backwarp = self->_backwarp;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__OpticalFlow_upscaleInputFlow_outFlow___block_invoke;
  v9[3] = &unk_278FEA778;
  v9[4] = self;
  [(Backwarp *)backwarp upscaleFlow:v6 destination:v7 callback:v9];
  dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)allocateResources
{
  self->_resourcePreAllocated = 1;
  [(OpticalFlow *)self allocateFeatureBuffers:self->_features];
  [(OpticalFlow *)self allocateFeatureBuffers:&self->_features[1]];
  [(OpticalFlow *)self allocateIntermediateStorage:self->_opticalFlowStroages];
  if (self->_concurrentDualFlowProcessing)
  {

    [(OpticalFlow *)self allocateIntermediateStorage:&self->_opticalFlowStroages[1]];
  }
}

- (void)releaseResources
{
  if (self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self releaseFeatureBuffers:self->_features];
    [(OpticalFlow *)self releaseFeatureBuffers:&self->_features[1]];
    [(OpticalFlow *)self releaseIntermediateStorage:self->_opticalFlowStroages];
    [(OpticalFlow *)self releaseIntermediateStorage:&self->_opticalFlowStroages[1]];
    self->_resourcePreAllocated = 0;
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flow:(__CVBuffer *)flow
{
  if (self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];

    [(OpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:flow];
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    [(OpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:flow];

    [(OpticalFlow *)self releaseResources];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward reUseFlow:(BOOL)flow
{
  flowCopy = flow;
  resourcePreAllocated = self->_resourcePreAllocated;
  if (!resourcePreAllocated)
  {
    [(OpticalFlow *)self allocateResources];
  }

  [(OpticalFlow *)self extractFeaturesFromFirst:frame second:secondFrame];
  if (flowCopy)
  {
    [(OpticalFlow *)self predictFowardFlow:forward fromBackwardFlow:backward];
    goto LABEL_11;
  }

  features = self->_features;
  v15 = &self->_features[1];
  opticalFlowStroages = self->_opticalFlowStroages;
  if (!self->_concurrentDualFlowProcessing)
  {
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputFlow:forward];
LABEL_11:
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:self->_opticalFlowStroages outputFlow:backward];
    if (resourcePreAllocated)
    {
      return;
    }

    goto LABEL_7;
  }

  [(OpticalFlow *)self estimateTwoWayFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputForwardFlow:forward outputBackwardFlow:backward];
  if (resourcePreAllocated)
  {
    return;
  }

LABEL_7:

  [(OpticalFlow *)self releaseResources];
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame inputFlowForward:(__CVBuffer *)forward inputFlowBackward:(__CVBuffer *)backward outputFlowForward:(__CVBuffer *)flowForward outputFlowBackward:(__CVBuffer *)flowBackward
{
  resourcePreAllocated = self->_resourcePreAllocated;
  if (resourcePreAllocated)
  {
    if (frame)
    {
LABEL_3:
      [(OpticalFlow *)self extractFeaturesFromImage:frame outputFeatures:self->_features];
      goto LABEL_6;
    }
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    if (frame)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, self->_features, sizeof(__dst));
  memcpy(self->_features, &self->_features[1], 0x1E0uLL);
  memcpy(&self->_features[1], __dst, sizeof(self->_features[1]));
LABEL_6:
  [(OpticalFlow *)self extractFeaturesFromImage:secondFrame outputFeatures:&self->_features[1]];
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__OpticalFlow_flowAdaptationFirstFrame_secondFrame_inputFlowForward_inputFlowBackward_outputFlowForward_outputFlowBackward___block_invoke;
  block[3] = &unk_278FEA860;
  block[4] = self;
  block[5] = forward;
  block[6] = flowForward;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  v18 = self->_dispatchGroup;
  v19 = self->_concurrentQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__OpticalFlow_flowAdaptationFirstFrame_secondFrame_inputFlowForward_inputFlowBackward_outputFlowForward_outputFlowBackward___block_invoke_2;
  v20[3] = &unk_278FEA860;
  v20[4] = self;
  v20[5] = backward;
  v20[6] = flowBackward;
  dispatch_group_async(v18, v19, v20);
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!resourcePreAllocated)
  {
    [(OpticalFlow *)self releaseResources];
  }
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  if (self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self extractFeaturesFromImage:frame outputFeatures:self->_features];
    [(OpticalFlow *)self extractFeaturesFromImage:secondFrame outputFeatures:&self->_features[1]];

    [(OpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:flow outputFlow:outputFlow];
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    [(OpticalFlow *)self extractFeaturesFromImage:frame outputFeatures:self->_features];
    [(OpticalFlow *)self extractFeaturesFromImage:secondFrame outputFeatures:&self->_features[1]];
    [(OpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:flow outputFlow:outputFlow];

    [(OpticalFlow *)self releaseResources];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)level
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v6 = 56;
  if (!a4)
  {
    v6 = 168;
  }

  return [*(&self->super.isa + v6) getOutputTensorSize:retstr level:?];
}

@end