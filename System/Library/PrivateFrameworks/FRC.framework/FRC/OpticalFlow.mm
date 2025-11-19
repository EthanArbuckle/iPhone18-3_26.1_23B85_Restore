@interface OpticalFlow
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)a3;
- (BOOL)createBaseLayer;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)a3;
- (OpticalFlow)initWithMode:(int64_t)a3;
- (id)createTexturesFromCVPixelBuffer:(__CVBuffer *)a3 interleave:(unint64_t)a4 arrayLength:(unint64_t)a5 withCommandBuffer:(id)a6;
- (void)adaptFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 inputFlow:(__CVBuffer *)a6 outputFlow:(__CVBuffer *)a7;
- (void)allocateCorreleationBuffer:(__CVBuffer *)a3 forLevel:(unsigned int)a4 extractor:(id)a5;
- (void)allocateFeatureBuffers:(id *)a3;
- (void)allocateImageFeature:(id *)a3 extractor:(id)a4;
- (void)allocateIntermediateStageStorage:(id *)a3 baseStage:(BOOL)a4;
- (void)allocateIntermediateStorage:(id *)a3;
- (void)allocateResources;
- (void)dealloc;
- (void)estimateFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 outputFlow:(__CVBuffer *)a6;
- (void)estimateFlowLevel:(unsigned int)a3 withEstimator:(id *)a4 firstFeatures:(id *)a5 secondFeatures:(id *)a6 correlation:(__CVBuffer *)a7 upscaledFlow:(__CVBuffer *)a8 warpedImage:(__CVBuffer *)a9 prevFlow:(__CVBuffer *)a10 outputFlow:(__CVBuffer *)a11 waitForComplete:(BOOL)a12;
- (void)estimateStageFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 baseStage:(BOOL)a6 startLevel:(int)a7 lastLevel:(int)a8 startFlow:(__CVBuffer *)a9 outputFlow:(__CVBuffer *)a10;
- (void)estimateTwoWayFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 outputForwardFlow:(__CVBuffer *)a6 outputBackwardFlow:(__CVBuffer *)a7;
- (void)extractFeaturesFromFirst:(__CVBuffer *)a3 second:(__CVBuffer *)a4;
- (void)extractFeaturesFromImage:(__CVBuffer *)a3 outputFeatures:(id *)a4;
- (void)flowAdaptationFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 inputFlow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6;
- (void)flowAdaptationFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 inputFlowForward:(__CVBuffer *)a5 inputFlowBackward:(__CVBuffer *)a6 outputFlowForward:(__CVBuffer *)a7 outputFlowBackward:(__CVBuffer *)a8;
- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flow:(__CVBuffer *)a5;
- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6 reUseFlow:(BOOL)a7;
- (void)postProcessFlow:(__CVBuffer *)a3 outputFlow:(__CVBuffer *)a4;
- (void)predictFowardFlow:(__CVBuffer *)a3 fromBackwardFlow:(__CVBuffer *)a4;
- (void)releaseFeatureBuffers:(id *)a3;
- (void)releaseImageFeature:(id *)a3;
- (void)releaseIntermediateStageStorage:(id *)a3;
- (void)releaseIntermediateStorage:(id *)a3;
- (void)releaseResources;
- (void)releaseUnusedFeatures:(id *)a3;
- (void)reshuffleFlow:(__CVBuffer *)a3 previousFlow:(__CVBuffer *)a4 destination:(__CVBuffer *)a5 waitForComplete:(BOOL)a6;
- (void)setNetworkClasses;
- (void)subsampleBuffer:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 toCommandBuffer:(id)a5;
- (void)subsampleInput:(__CVBuffer *)a3 to:(__CVBuffer *)a4 forUsage:(int64_t)a5;
- (void)updateFlowSize;
- (void)upscaleInputFlow:(__CVBuffer *)a3 outFlow:(__CVBuffer *)a4;
@end

@implementation OpticalFlow

- (void)setNetworkClasses
{
  self->_featureExtractorClass = objc_opt_class();
  self->_flowEstimatorClass = objc_opt_class();
  self->_adaptationFeatureExtractorClass = objc_opt_class();
  self->_adaptationDecoderClass = objc_opt_class();
}

- (OpticalFlow)initWithMode:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = OpticalFlow;
  v4 = [(OpticalFlow *)&v19 init];
  [v4 setNetworkClasses];
  *(v4 + 260) = 1;
  [*(v4 + 2) setNumLevels:{objc_msgSend(*(v4 + 1), "numLevels")}];
  v4[2042] = 0;
  *(v4 + 6) = a3;
  if ([v4 createModules])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = *(v4 + 23);
    *(v4 + 23) = v5;

    v7 = dispatch_semaphore_create(0);
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;

    v9 = [*(v4 + 262) newCommandQueue];
    v10 = *(v4 + 5);
    *(v4 + 5) = v9;

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

- (void)allocateIntermediateStorage:(id *)a3
{
  [(OpticalFlow *)self allocateIntermediateStageStorage:a3 baseStage:0];
  if (self->_twoStageFlow)
  {

    [(OpticalFlow *)self allocateIntermediateStageStorage:&a3->var1 baseStage:1];
  }
}

- (void)allocateIntermediateStageStorage:(id *)a3 baseStage:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  LODWORD(numLevels) = self->_numLevels;
  a3->var5 = numLevels;
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    *a3->var1 = 0u;
    *a3->var2 = 0u;
    *a3->var3 = 0u;
    *a3->var0 = 0u;
  }

  else if (self->_useAdaptationLayer)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&v22 level:0];
    v5->var4 = createPixelBuffer(v22, 8 * v23, 0x4C303068u, 0);
    LODWORD(numLevels) = self->_numLevels;
  }

  if (v8 < numLevels)
  {
    v9 = v8;
    v21 = v5;
    v10 = &v5->var0[v8];
    do
    {
      useAdaptationLayer = self->_useAdaptationLayer;
      v12 = v9 == 0;
      v13 = 56;
      if (v12 && useAdaptationLayer)
      {
        v13 = 168;
      }

      if (v4)
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
    v5 = v21;
  }

  if (v8 < numLevels)
  {
    if (v4)
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
      v5->var1[v8++] = createPixelBuffer(v22, v23, 0x32433068u, 0);
    }

    while (v8 < self->_numLevels);
  }
}

- (void)releaseIntermediateStorage:(id *)a3
{
  [(OpticalFlow *)self releaseIntermediateStageStorage:?];
  if (self->_twoStageFlow)
  {

    [(OpticalFlow *)self releaseIntermediateStageStorage:&a3->var1];
  }
}

- (void)releaseIntermediateStageStorage:(id *)a3
{
  CVPixelBufferRelease(a3->var4);
  if (self->_numLevels)
  {
    v5 = 0;
    var2 = a3->var2;
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

- (void)allocateCorreleationBuffer:(__CVBuffer *)a3 forLevel:(unsigned int)a4 extractor:(id)a5
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  [a5 getOutputTensorSize:&v9 level:?];
  if (a4 <= 1 && (a4 || !self->_useAdaptationLayer))
  {
    v8 = v11 + 83;
  }

  else
  {
    v8 = 81;
  }

  *a3 = createPixelBuffer(v9, v10 * v8, 0x4C303068u, 0);
}

- (void)allocateFeatureBuffers:(id *)a3
{
  if (self->_useAdaptationLayer)
  {
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&a3->var0.var4 level:0];
    a3->var0.var3 = createPixelBuffer(a3->var0.var4.var0, a3->var0.var4.var2 * a3->var0.var4.var1, 0x4C303068u, 0);
  }

  v5 = 0;
  v6 = 0;
  if (self->_downsampling)
  {
    FRCGetInputFrameSizeForUsage(self->_usage, &v6, &v5);
    a3->var2 = createPixelBuffer(v6, 3 * v5, 0x4C303068u, 0);
  }

  if (!self->_adaptationLayerOnly)
  {
    [(OpticalFlow *)self allocateImageFeature:a3 extractor:self->_featureExtractor];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self allocateImageFeature:&a3->var1 extractor:self->_baseFeatureExtractor];
      FRCGetInputFrameSizeForUsage(self->_baseStageUsage, &v6, &v5);
      a3->var3 = createPixelBuffer(v6, 3 * v5, 0x4C303068u, 0);
    }
  }
}

- (void)allocateImageFeature:(id *)a3 extractor:(id)a4
{
  numLevels = self->_numLevels;
  a3->var0 = numLevels;
  if (numLevels)
  {
    v7 = 0;
    var2 = a3->var2;
    var1 = a3->var1;
    do
    {
      [a4 getOutputTensorSize:var2 level:v7];
      var1[v7++] = createPixelBuffer(var2->var0, var2->var2 * var2->var1, 0x4C303068u, 0);
      ++var2;
    }

    while (v7 < self->_numLevels);
  }
}

- (void)releaseFeatureBuffers:(id *)a3
{
  CVPixelBufferRelease(a3->var0.var3);
  a3->var0.var3 = 0;
  if (self->_downsampling)
  {
    CVPixelBufferRelease(a3->var2);
    a3->var2 = 0;
  }

  if (!self->_adaptationLayerOnly)
  {
    [(OpticalFlow *)self releaseImageFeature:a3];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self releaseImageFeature:&a3->var1];
      CVPixelBufferRelease(a3->var3);
      a3->var3 = 0;
    }
  }
}

- (void)releaseImageFeature:(id *)a3
{
  if (self->_numLevels)
  {
    v4 = 0;
    var1 = a3->var1;
    do
    {
      CVPixelBufferRelease(var1[v4]);
      var1[v4++] = 0;
    }

    while (v4 < self->_numLevels);
  }
}

- (void)subsampleInput:(__CVBuffer *)a3 to:(__CVBuffer *)a4 forUsage:(int64_t)a5
{
  v8 = objc_autoreleasePoolPush();
  v9 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 3uLL);
  v10 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  v11 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:v11 source:v9 destination:v10];
  [v11 commit];
  [v11 waitUntilScheduled];

  objc_autoreleasePoolPop(v8);
}

- (void)subsampleBuffer:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 toCommandBuffer:(id)a5
{
  device = self->_device;
  v9 = a5;
  v11 = createTexturesFromCVPixelBuffer(a3, device, 1, 3uLL);
  v10 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 3uLL);
  [(Backwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:v9 source:v11 destination:v10];
}

- (void)extractFeaturesFromFirst:(__CVBuffer *)a3 second:(__CVBuffer *)a4
{
  if (a3)
  {
    [(OpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
  }

  else
  {
    memcpy(v6, self->_features, sizeof(v6));
    memcpy(self->_features, &self->_features[1], 0x1E0uLL);
    memcpy(&self->_features[1], v6, sizeof(self->_features[1]));
  }

  [(OpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];
}

- (void)extractFeaturesFromImage:(__CVBuffer *)a3 outputFeatures:(id *)a4
{
  var2 = a3;
  if (self->_downsampling)
  {
    var2 = a4->var2;
    [(OpticalFlow *)self subsampleInput:a3 to:var2 forUsage:self->_usage];
  }

  if (self->_useAdaptationLayer)
  {
    [(FlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor extractFeaturesFromImage:var2 toFeatures:a4 callback:0];
  }

  if (!self->_adaptationLayerOnly)
  {
    [(FeatureExtractor *)self->_featureExtractor extractFeaturesFromImage:var2 toFeatures:a4 callback:0];
    if (self->_twoStageFlow)
    {
      [(OpticalFlow *)self subsampleInput:a3 to:a4->var3 forUsage:self->_baseStageUsage];
      [self->_baseFeatureExtractor extractFeaturesFromImage:a4->var3 toFeatures:&a4->var1 callback:0];
    }

    if (!self->_resourcePreAllocated && self->_twoStageFlow)
    {

      [(OpticalFlow *)self releaseUnusedFeatures:a4];
    }
  }
}

- (id)createTexturesFromCVPixelBuffer:(__CVBuffer *)a3 interleave:(unint64_t)a4 arrayLength:(unint64_t)a5 withCommandBuffer:(id)a6
{
  v10 = a6;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CVPixelBufferGetPixelFormatType(a3) == 843264104)
  {
    a5 = 1;
    a4 = 2;
  }

  v13 = Height / a5;
  if (isBufferCopyNecessaryForCVtoTextureConversion(Width, v13, a5))
  {
    v14 = createTextures(self->_device, Width, v13, a4, a5);
    [(FRCBlit *)self->_blit copyBuffer:a3 toTexture:v14 commandBuffer:v10];
  }

  else
  {
    v14 = createTexturesFromCVPixelBufferWithCommandBuffer(a3, self->_device, v10, a4, a5);
  }

  return v14;
}

- (void)estimateFlowLevel:(unsigned int)a3 withEstimator:(id *)a4 firstFeatures:(id *)a5 secondFeatures:(id *)a6 correlation:(__CVBuffer *)a7 upscaledFlow:(__CVBuffer *)a8 warpedImage:(__CVBuffer *)a9 prevFlow:(__CVBuffer *)a10 outputFlow:(__CVBuffer *)a11 waitForComplete:(BOOL)a12
{
  var2 = a6->var2[a3].var2;
  v36 = a3 == 0 && self->_useAdaptationLayer;
  if (v36)
  {
    v17 = 4 * var2;
  }

  else
  {
    v17 = a6->var2[a3].var2;
  }

  if (a3 == 0 && self->_useAdaptationLayer)
  {
    p_var3 = &a5->var3;
  }

  else
  {
    p_var3 = &a5->var1[a3];
  }

  if (a3 == 0 && self->_useAdaptationLayer)
  {
    v19 = &a6->var3;
  }

  else
  {
    v19 = &a6->var1[a3];
  }

  v34 = a3 > 1 || v36;
  commandQueue = self->_commandQueue;
  if (a3 > 1 || v36)
  {
    v21 = 81;
  }

  else
  {
    v21 = (var2 + 83);
  }

  v22 = [(MTLCommandQueue *)commandQueue commandBuffer];
  v35 = p_var3;
  v23 = *v19;
  v40 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:*p_var3 interleave:1 arrayLength:v17 withCommandBuffer:v22];
  v24 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:v23 interleave:1 arrayLength:v17 withCommandBuffer:v22];
  v38 = a8;
  v25 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a8 interleave:2 arrayLength:2 withCommandBuffer:v22];
  v39 = a7;
  v26 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a7 interleave:1 arrayLength:v21 withCommandBuffer:v22];
  if (self->_numLevels - 1 == a3)
  {
    v27 = v24;

    v25 = 0;
    v28 = 0;
    v29 = a9;
  }

  else
  {
    v28 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a10 interleave:2 arrayLength:2 withCommandBuffer:v22];
    v29 = a9;
    v27 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a9 interleave:1 arrayLength:v17 withCommandBuffer:v22];
    if (v34)
    {
      v30 = v25;
    }

    else
    {
      v30 = v26;
    }

    [(Backwarp *)self->_backwarp encodeToCommandBuffer:v22 source:v24 flow:v28 destination:v27 upscaledFlow:v30];
  }

  [(Correlation *)self->_correlation encodeToCommandBuffer:v22 first:v40 second:v27 destination:v26];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v27 width], objc_msgSend(v27, "height"), objc_msgSend(v27, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v27 toBuffer:v29 commandBuffer:v22];
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v26 width], objc_msgSend(v26, "height"), objc_msgSend(v26, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v26 toBuffer:v39 commandBuffer:v22];
  }

  if (v25 && isBufferCopyNecessaryForCVtoTextureConversion([v25 width], objc_msgSend(v25, "height"), objc_msgSend(v25, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v25 toBuffer:v38 commandBuffer:v22];
  }

  kdebug_trace();
  [v22 commit];
  [v22 waitUntilScheduled];
  kdebug_trace();

  if (v36)
  {
    v31 = a10;
  }

  else
  {
    v31 = v38;
  }

  v32 = *v35;
  v33 = a4[a3];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __149__OpticalFlow_estimateFlowLevel_withEstimator_firstFeatures_secondFeatures_correlation_upscaledFlow_warpedImage_prevFlow_outputFlow_waitForComplete___block_invoke;
  v41[3] = &unk_278FEA750;
  v42 = a12;
  v41[4] = self;
  [v33 estimateFlow:v32 correlation:v39 flow:v31 output:a11 callback:v41];
  if (a12)
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

- (void)postProcessFlow:(__CVBuffer *)a3 outputFlow:(__CVBuffer *)a4
{
  v7 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v8 = 1;
  v9 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a3 interleave:2 arrayLength:1 withCommandBuffer:v7];
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v13 = PixelFormatType != 843264104;
  if (PixelFormatType == 843264104)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (CVPixelBufferGetPixelFormatType(a4) == 843264104)
  {
    v8 = 2;
  }

  v15 = isBufferCopyNecessaryForCVtoTextureConversion(Width, Height >> v13, v14);
  v16 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a4 interleave:v8 arrayLength:v14 withCommandBuffer:v7];
  backwarp = self->_backwarp;
  if (!self->_upscaleFinalFlow)
  {
    [(Backwarp *)backwarp encodePaddingTextureToCommandBuffer:v7 source:v9 destination:v16];
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(Backwarp *)backwarp encodeUpscaleFlowToCommandBuffer:v7 source:v9 destination:v16];
  if (v15)
  {
LABEL_10:
    copyTextureToBufferWithBlit(v16, a4, self->_device, v7);
  }

LABEL_11:
  if (self->_waitForCompletion)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__OpticalFlow_postProcessFlow_outputFlow___block_invoke;
    v18[3] = &unk_278FEA810;
    v18[4] = self;
    [v7 addCompletedHandler:v18];
  }

  [v7 commit];
  [v7 waitUntilScheduled];
  if (self->_waitForCompletion)
  {
    dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)estimateFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 outputFlow:(__CVBuffer *)a6
{
  skipLastLevel = self->_skipLastLevel;
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(a5->var0.var1[skipLastLevel]), Height != CVPixelBufferGetHeight(a6)))
  {
    v12 = 1;
  }

  else if (self->_useAdaptationLayer)
  {
    v12 = 0;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
    v12 = PixelFormatType != CVPixelBufferGetPixelFormatType(a5->var0.var1[skipLastLevel]);
  }

  v15 = (self->_numLevels - 1);
  if (self->_twoStageFlow)
  {
    [(OpticalFlow *)self estimateStageFlowFromFirstFeatures:&a3->var1 secondFeature:&a4->var1 storage:&a5->var1 baseStage:1 startLevel:v15 lastLevel:2 startFlow:0 outputFlow:0];
    v16 = a5->var1.var1[2];
    v15 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = a6;
  }

  [(OpticalFlow *)self estimateStageFlowFromFirstFeatures:a3 secondFeature:a4 storage:a5 baseStage:0 startLevel:v15 lastLevel:skipLastLevel startFlow:v16 outputFlow:v17];
  if (v12)
  {
    v18 = a5->var0.var1[skipLastLevel];

    [(OpticalFlow *)self postProcessFlow:v18 outputFlow:a6];
  }
}

- (void)estimateStageFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 baseStage:(BOOL)a6 startLevel:(int)a7 lastLevel:(int)a8 startFlow:(__CVBuffer *)a9 outputFlow:(__CVBuffer *)a10
{
  v13 = a10;
  v14 = 64;
  if (a6)
  {
    v14 = 120;
  }

  v30 = v14;
  v15 = 56;
  if (a6)
  {
    v15 = 112;
  }

  v29 = *(&self->super.isa + v15);
  if (a7 >= a8)
  {
    v16 = 0;
    v17 = a7;
    v18 = a8 - a7;
    v19 = a7;
    v20 = &a5->var0[a7];
    do
    {
      useAdaptationLayer = self->_useAdaptationLayer;
      v22 = v18 == v16 && a10 != 0 && self->_waitForCompletion;
      if (!self->_resourcePreAllocated)
      {
        [(OpticalFlow *)self allocateCorreleationBuffer:v20 forLevel:(v19 + v16) extractor:v29];
      }

      v23 = a9;
      if (v16)
      {
        v23 = v20[7];
      }

      p_var4 = &a5->var4;
      if (v17 + v16 != 0 || !useAdaptationLayer)
      {
        if (a10)
        {
          v25 = a10;
          if (v18 == v16)
          {
            goto LABEL_19;
          }
        }

        p_var4 = v20 + 6;
      }

      v25 = *p_var4;
LABEL_19:
      LOBYTE(v26) = v22;
      [(OpticalFlow *)self estimateFlowLevel:(v19 + v16) withEstimator:self + v30 firstFeatures:a3 secondFeatures:a4 correlation:*v20 upscaledFlow:v20[12] warpedImage:v20[18] prevFlow:v23 outputFlow:v25 waitForComplete:v26];
      if (!self->_resourcePreAllocated)
      {
        CVPixelBufferRelease(*v20);
        *v20 = 0;
      }

      --v16;
      --v20;
    }

    while (v17 + v16 + 1 > a8);
  }

  if (!a8 && self->_useAdaptationLayer)
  {
    if (!a10)
    {
      v13 = a5->var1[0];
    }

    [(OpticalFlow *)self reshuffleFlow:a5->var4 previousFlow:a5->var1[1] destination:v13 waitForComplete:0];
  }
}

- (void)adaptFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 inputFlow:(__CVBuffer *)a6 outputFlow:(__CVBuffer *)a7
{
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(a5->var1[0]), Height != CVPixelBufferGetHeight(a7)))
  {
    v31 = a5->var1[0];
    v30 = 1;
  }

  else
  {
    v30 = 0;
    v31 = a7;
  }

  var2 = a3->var4.var2;
  v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v29 = a3;
  v15 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a3->var3 interleave:1 arrayLength:var2 withCommandBuffer:v14];
  v16 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a4->var3 interleave:1 arrayLength:var2 withCommandBuffer:v14];
  v17 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a5->var2[0] interleave:1 arrayLength:2 withCommandBuffer:v14];
  v18 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a5->var3[0] interleave:1 arrayLength:var2 withCommandBuffer:v14];
  v19 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a5->var0[0] interleave:1 arrayLength:81 withCommandBuffer:v14];
  v20 = [(OpticalFlow *)self createTexturesFromCVPixelBuffer:a6 interleave:1 arrayLength:2 withCommandBuffer:v14];
  [(Backwarp *)self->_backwarp encodeToCommandBuffer:v14 source:v16 flow:v20 destination:v18 upscaledFlow:v17];
  [(Correlation *)self->_correlation encodeToCommandBuffer:v14 first:v15 second:v18 destination:v19];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v19 width], objc_msgSend(v19, "height"), objc_msgSend(v19, "arrayLength")))
  {
    [(FRCBlit *)self->_blit copyTexture:v19 toBuffer:a5->var0[0] commandBuffer:v14];
  }

  [v14 commit];
  [v14 waitUntilScheduled];

  v21 = self->_flowEstimator[0];
  var3 = v29->var3;
  v23 = a5->var0[0];
  var4 = a5->var4;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __85__OpticalFlow_adaptFlowFromFirstFeatures_secondFeature_storage_inputFlow_outputFlow___block_invoke;
  v33[3] = &unk_278FEA778;
  v33[4] = self;
  [(FlowEstimate *)v21 estimateFlow:var3 correlation:v23 flow:a6 output:var4 callback:v33];
  dispatch_semaphore_wait(self->_flowEstimateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_resourcePreAllocated)
  {
    CVPixelBufferRelease(a5->var0[0]);
    a5->var0[0] = 0;
  }

  [(OpticalFlow *)self reshuffleFlow:a5->var4 previousFlow:a6 destination:v31 waitForComplete:v30 ^ 1u];
  if (((v30 ^ 1) & 1) == 0)
  {
    v25 = createTexturesFromCVPixelBuffer(v31, self->_device, 1, 2uLL);
    v26 = createTexturesFromCVPixelBuffer(a7, self->_device, 1, 2uLL);
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

- (void)reshuffleFlow:(__CVBuffer *)a3 previousFlow:(__CVBuffer *)a4 destination:(__CVBuffer *)a5 waitForComplete:(BOOL)a6
{
  v6 = a6;
  v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v11 = createTexturesFromCVPixelBufferWithCommandBuffer(a3, self->_device, v14, 1, 8uLL);
  v12 = createTexturesFromCVPixelBufferWithCommandBuffer(a4, self->_device, v14, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(a5, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp encodeReShuffleFlowToCommandBuffer:v14 shuffledFlow:v11 previousFlow:v12 destination:v13];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v13 width], objc_msgSend(v13, "height"), objc_msgSend(v13, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v13, a5, self->_device, v14);
  }

  [v14 commit];
  if (v6)
  {
    [v14 waitUntilCompleted];
  }

  else
  {
    [v14 waitUntilScheduled];
  }
}

- (void)predictFowardFlow:(__CVBuffer *)a3 fromBackwardFlow:(__CVBuffer *)a4
{
  v6 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
  v7 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  [(Backwarp *)self->_backwarp reverseFlowWithSource:v6 destination:v7];
}

- (void)estimateTwoWayFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 outputForwardFlow:(__CVBuffer *)a6 outputBackwardFlow:(__CVBuffer *)a7
{
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__OpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke;
  block[3] = &unk_278FEA838;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  v14 = self->_dispatchGroup;
  v15 = self->_concurrentQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__OpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke_2;
  v16[3] = &unk_278FEA838;
  v16[4] = self;
  v16[5] = a4;
  v16[6] = a3;
  v16[7] = a5;
  v16[8] = a7;
  dispatch_group_async(v14, v15, v16);
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)switchUsageTo:(int64_t)a3
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

  QuarterSizeUsage = getQuarterSizeUsage(a3);
  if ([OpticalFlow use4xDownScale:a3])
  {
    QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
    self->_4xUpscale = 1;
  }

  if (QuarterSizeUsage == a3)
  {
    NSLog(&cfstr_NoSupportFor14.isa, a3);
    self->_upscaleFinalFlow = 0;
LABEL_10:
    QuarterSizeUsage = a3;
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

- (void)releaseUnusedFeatures:(id *)a3
{
  CVPixelBufferRelease(a3->var1.var1[0]);
  a3->var1.var1[0] = 0;
  CVPixelBufferRelease(a3->var1.var1[1]);
  a3->var1.var1[1] = 0;
  if (self->_numLevels >= 5u)
  {
    v5 = &a3->var0.var1[4];
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

- (void)upscaleInputFlow:(__CVBuffer *)a3 outFlow:(__CVBuffer *)a4
{
  v6 = createTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  v7 = createTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
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

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flow:(__CVBuffer *)a5
{
  if (self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];

    [(OpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:a5];
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    [(OpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:a5];

    [(OpticalFlow *)self releaseResources];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6 reUseFlow:(BOOL)a7
{
  v7 = a7;
  resourcePreAllocated = self->_resourcePreAllocated;
  if (!resourcePreAllocated)
  {
    [(OpticalFlow *)self allocateResources];
  }

  [(OpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];
  if (v7)
  {
    [(OpticalFlow *)self predictFowardFlow:a5 fromBackwardFlow:a6];
    goto LABEL_11;
  }

  features = self->_features;
  v15 = &self->_features[1];
  opticalFlowStroages = self->_opticalFlowStroages;
  if (!self->_concurrentDualFlowProcessing)
  {
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputFlow:a5];
LABEL_11:
    [(OpticalFlow *)self estimateFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:self->_opticalFlowStroages outputFlow:a6];
    if (resourcePreAllocated)
    {
      return;
    }

    goto LABEL_7;
  }

  [(OpticalFlow *)self estimateTwoWayFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputForwardFlow:a5 outputBackwardFlow:a6];
  if (resourcePreAllocated)
  {
    return;
  }

LABEL_7:

  [(OpticalFlow *)self releaseResources];
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 inputFlowForward:(__CVBuffer *)a5 inputFlowBackward:(__CVBuffer *)a6 outputFlowForward:(__CVBuffer *)a7 outputFlowBackward:(__CVBuffer *)a8
{
  resourcePreAllocated = self->_resourcePreAllocated;
  if (resourcePreAllocated)
  {
    if (a3)
    {
LABEL_3:
      [(OpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
      goto LABEL_6;
    }
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, self->_features, sizeof(__dst));
  memcpy(self->_features, &self->_features[1], 0x1E0uLL);
  memcpy(&self->_features[1], __dst, sizeof(self->_features[1]));
LABEL_6:
  [(OpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__OpticalFlow_flowAdaptationFirstFrame_secondFrame_inputFlowForward_inputFlowBackward_outputFlowForward_outputFlowBackward___block_invoke;
  block[3] = &unk_278FEA860;
  block[4] = self;
  block[5] = a5;
  block[6] = a7;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  v18 = self->_dispatchGroup;
  v19 = self->_concurrentQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__OpticalFlow_flowAdaptationFirstFrame_secondFrame_inputFlowForward_inputFlowBackward_outputFlowForward_outputFlowBackward___block_invoke_2;
  v20[3] = &unk_278FEA860;
  v20[4] = self;
  v20[5] = a6;
  v20[6] = a8;
  dispatch_group_async(v18, v19, v20);
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!resourcePreAllocated)
  {
    [(OpticalFlow *)self releaseResources];
  }
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 inputFlow:(__CVBuffer *)a5 outputFlow:(__CVBuffer *)a6
{
  if (self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
    [(OpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];

    [(OpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:a5 outputFlow:a6];
  }

  else
  {
    [(OpticalFlow *)self allocateResources];
    [(OpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
    [(OpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];
    [(OpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:a5 outputFlow:a6];

    [(OpticalFlow *)self releaseResources];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)a3
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