@interface VEOpticalFlow
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)flowSizeForLevel:(SEL)a3;
- (BOOL)createBaseLayer;
- (BOOL)createModules;
- (BOOL)switchUsageTo:(int64_t)a3;
- (VEOpticalFlow)initWithMode:(int64_t)a3;
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
- (void)reshuffleFlow:(__CVBuffer *)a3 previsouFlow:(__CVBuffer *)a4 destination:(__CVBuffer *)a5;
- (void)setNetworkClasses;
- (void)subsampleInput:(__CVBuffer *)a3 to:(__CVBuffer *)a4 forUsage:(int64_t)a5;
- (void)updateFlowSize;
- (void)upscaleInputFlow:(__CVBuffer *)a3 outFlow:(__CVBuffer *)a4;
@end

@implementation VEOpticalFlow

- (void)setNetworkClasses
{
  self->_featureExtractorClass = objc_opt_class();
  self->_flowEstimatorClass = objc_opt_class();
  self->_adaptationFeatureExtractorClass = objc_opt_class();
  self->_adaptationDecoderClass = objc_opt_class();
}

- (VEOpticalFlow)initWithMode:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = VEOpticalFlow;
  v4 = [(VEOpticalFlow *)&v13 init];
  [(VEOpticalFlow *)v4 setNetworkClasses];
  v4->_revision = 1;
  [(objc_class *)v4->_flowEstimatorClass setNumLevels:[(objc_class *)v4->_featureExtractorClass numLevels]];
  v4->_twoStageFlow = 0;
  v4->_usage = a3;
  if ([(VEOpticalFlow *)v4 createModules])
  {
    v5 = [(MTLDevice *)v4->_device newCommandQueue];
    commandQueue = v4->_commandQueue;
    v4->_commandQueue = v5;

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

- (void)allocateIntermediateStorage:(id *)a3
{
  [(VEOpticalFlow *)self allocateIntermediateStageStorage:a3 baseStage:0];
  if (self->_twoStageFlow)
  {

    [(VEOpticalFlow *)self allocateIntermediateStageStorage:&a3->var1 baseStage:1];
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
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&v22 level:0];
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
      v13 = 40;
      if (v12 && useAdaptationLayer)
      {
        v13 = 152;
      }

      if (v4)
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
    v5 = v21;
  }

  if (v8 < numLevels)
  {
    if (v4)
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
      v5->var1[v8++] = createPixelBuffer(v22, v23, 0x32433068u, 0);
    }

    while (v8 < self->_numLevels);
  }
}

- (void)releaseIntermediateStorage:(id *)a3
{
  [(VEOpticalFlow *)self releaseIntermediateStageStorage:?];
  if (self->_twoStageFlow)
  {

    [(VEOpticalFlow *)self releaseIntermediateStageStorage:&a3->var1];
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

  *a3 = CreatePixelBuffer(v9, v10 * v8, 1278226536);
}

- (void)allocateFeatureBuffers:(id *)a3
{
  if (self->_useAdaptationLayer)
  {
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor getOutputTensorSize:&a3->var0.var4 level:0];
    a3->var0.var3 = CreatePixelBuffer(a3->var0.var4.var0, a3->var0.var4.var2 * a3->var0.var4.var1, 1278226536);
  }

  v5 = 0;
  v6 = 0;
  if (self->_downsampling)
  {
    getInputFrameSizeForUsage(self->_usage, &v6, &v5);
    a3->var2 = CreatePixelBuffer(v6, 3 * v5, 1278226536);
  }

  if (!self->_adaptationLayerOnly)
  {
    [(VEOpticalFlow *)self allocateImageFeature:a3 extractor:self->_featureExtractor];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self allocateImageFeature:&a3->var1 extractor:self->_baseFeatureExtractor];
      getInputFrameSizeForUsage(self->_baseStageUsage, &v6, &v5);
      a3->var3 = CreatePixelBuffer(v6, 3 * v5, 1278226536);
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
      var1[v7++] = CreatePixelBuffer(var2->var0, var2->var2 * var2->var1, 1278226536);
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
    [(VEOpticalFlow *)self releaseImageFeature:a3];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self releaseImageFeature:&a3->var1];
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
  [(OFBackwarp *)self->_backwarp encodeSubsampleInputToCommandBufferr:v11 source:v9 destination:v10];
  [v11 commit];
  [v11 waitUntilScheduled];

  objc_autoreleasePoolPop(v8);
}

- (void)extractFeaturesFromFirst:(__CVBuffer *)a3 second:(__CVBuffer *)a4
{
  if (a3)
  {
    [(VEOpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
  }

  else
  {
    memcpy(v6, self->_features, sizeof(v6));
    memcpy(self->_features, &self->_features[1], 0x1E0uLL);
    memcpy(&self->_features[1], v6, sizeof(self->_features[1]));
  }

  [(VEOpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];
}

- (void)extractFeaturesFromImage:(__CVBuffer *)a3 outputFeatures:(id *)a4
{
  var2 = a3;
  if (self->_downsampling)
  {
    var2 = a4->var2;
    [(VEOpticalFlow *)self subsampleInput:a3 to:var2 forUsage:self->_usage];
  }

  if (self->_useAdaptationLayer)
  {
    [(FRCFlowAdaptationFeatureExtractor *)self->_adaptationFeatureExtractor extractFeaturesFromImage:var2 toFeatures:a4 callback:0];
  }

  if (!self->_adaptationLayerOnly)
  {
    [(OFFeatureExtractor *)self->_featureExtractor extractFeaturesFromImage:var2 toFeatures:a4 callback:0];
    if (self->_twoStageFlow)
    {
      [(VEOpticalFlow *)self subsampleInput:a3 to:a4->var3 forUsage:self->_baseStageUsage];
      [(OFFeatureExtractor *)self->_baseFeatureExtractor extractFeaturesFromImage:a4->var3 toFeatures:&a4->var1 callback:0];
    }

    if (!self->_resourcePreAllocated && self->_twoStageFlow)
    {

      [(VEOpticalFlow *)self releaseUnusedFeatures:a4];
    }
  }
}

- (void)estimateFlowLevel:(unsigned int)a3 withEstimator:(id *)a4 firstFeatures:(id *)a5 secondFeatures:(id *)a6 correlation:(__CVBuffer *)a7 upscaledFlow:(__CVBuffer *)a8 warpedImage:(__CVBuffer *)a9 prevFlow:(__CVBuffer *)a10 outputFlow:(__CVBuffer *)a11 waitForComplete:(BOOL)a12
{
  var2 = a6->var2[a3].var2;
  v39 = a3 == 0 && self->_useAdaptationLayer;
  v17 = a3 > 1 || v39;
  if (v39)
  {
    v18 = 4 * var2;
  }

  else
  {
    v18 = a6->var2[a3].var2;
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
    v20 = &a6->var3;
  }

  else
  {
    v20 = &a6->var1[a3];
  }

  commandQueue = self->_commandQueue;
  if (a3 > 1 || v39)
  {
    v22 = 81;
  }

  else
  {
    v22 = (var2 + 83);
  }

  v43 = [(MTLCommandQueue *)commandQueue commandBuffer];
  v38 = p_var3;
  v23 = *p_var3;
  v24 = *v20;
  v37 = createTexturesFromCVPixelBufferWithCommandBuffer(v23, self->_device, v43, 1, v18);
  v25 = createTexturesFromCVPixelBufferWithCommandBuffer(v24, self->_device, v43, 1, v18);
  v26 = a8;
  v27 = createTexturesFromCVPixelBufferWithCommandBuffer(a8, self->_device, v43, 2, 1uLL);
  v42 = a7;
  v28 = createTexturesFromCVPixelBufferWithCommandBuffer(a7, self->_device, v43, 1, v22);
  v41 = v25;
  if (self->_numLevels - 1 == a3)
  {
    v29 = v35;
    v30 = v25;

    v27 = 0;
    v36 = 0;
  }

  else
  {
    v31 = createTexturesFromCVPixelBufferWithCommandBuffer(a10, self->_device, v43, 2, 1uLL);
    v29 = v35;
    v30 = createTexturesFromCVPixelBufferWithCommandBuffer(v35, self->_device, v43, 1, v18);
    v36 = v31;
    if (v17)
    {
      v32 = v27;
    }

    else
    {
      v32 = v28;
    }

    [(OFBackwarp *)self->_backwarp encodeToCommandBuffer:v43 source:v41 flow:v31 destination:v30 upscaledFlow:v32];
  }

  [(OFCorrelation *)self->_correlation encodeToCommandBuffer:v43 first:v37 second:v30 destination:v28];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v30 width], objc_msgSend(v30, "height"), objc_msgSend(v30, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v30, v29, self->_device, v43);
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v28 width], objc_msgSend(v28, "height"), objc_msgSend(v28, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v28, v42, self->_device, v43);
  }

  if (v27 && isBufferCopyNecessaryForCVtoTextureConversion([v27 width], objc_msgSend(v27, "height"), objc_msgSend(v27, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v27, v26, self->_device, v43);
  }

  kdebug_trace();
  [v43 commit];
  [v43 waitUntilScheduled];
  kdebug_trace();

  if (v39)
  {
    v33 = a10;
  }

  else
  {
    v33 = v26;
  }

  if (a12)
  {
    v34 = 0;
  }

  else
  {
    v34 = &__block_literal_global;
  }

  [a4[a3] estimateFlow:*v38 correlation:v42 flow:v33 output:a11 callback:v34];
}

- (void)postProcessFlow:(__CVBuffer *)a3 outputFlow:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v9 = isBufferCopyNecessaryForCVtoTextureConversion(Width, Height, 1uLL);
  v10 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  device = self->_device;
  v15 = v10;
  if (v9)
  {
    createTexturesFromCVPixelBufferWithCommandBuffer(a3, device, v10, 2, 1uLL);
  }

  else
  {
    createTexturesFromCVPixelBuffer(a3, device, 2, 1uLL);
  }
  v12 = ;
  v13 = createFlowTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
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
    copyTextureToBufferWithBlit(v13, a4, self->_device, v15);
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
    [(VEOpticalFlow *)self estimateStageFlowFromFirstFeatures:&a3->var1 secondFeature:&a4->var1 storage:&a5->var1 baseStage:1 startLevel:v15 lastLevel:2 startFlow:0 outputFlow:0];
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

  [(VEOpticalFlow *)self estimateStageFlowFromFirstFeatures:a3 secondFeature:a4 storage:a5 baseStage:0 startLevel:v15 lastLevel:skipLastLevel startFlow:v16 outputFlow:v17];
  if (v12)
  {
    v18 = a5->var0.var1[skipLastLevel];

    [(VEOpticalFlow *)self postProcessFlow:v18 outputFlow:a6];
  }
}

- (void)estimateStageFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 baseStage:(BOOL)a6 startLevel:(int)a7 lastLevel:(int)a8 startFlow:(__CVBuffer *)a9 outputFlow:(__CVBuffer *)a10
{
  v13 = a10;
  v14 = 48;
  if (a6)
  {
    v14 = 104;
  }

  v30 = v14;
  v15 = 40;
  if (a6)
  {
    v15 = 96;
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
        [(VEOpticalFlow *)self allocateCorreleationBuffer:v20 forLevel:(v19 + v16) extractor:v29];
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
      [(VEOpticalFlow *)self estimateFlowLevel:(v19 + v16) withEstimator:self + v30 firstFeatures:a3 secondFeatures:a4 correlation:*v20 upscaledFlow:v20[12] warpedImage:v20[18] prevFlow:v23 outputFlow:v25 waitForComplete:v26];
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

    [(VEOpticalFlow *)self reshuffleFlow:a5->var4 previsouFlow:a5->var1[1] destination:v13];
  }
}

- (void)adaptFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 inputFlow:(__CVBuffer *)a6 outputFlow:(__CVBuffer *)a7
{
  if (self->_upscaleFinalFlow || self->_skipLastLevel && (Height = CVPixelBufferGetHeight(a5->var1[0]), Height != CVPixelBufferGetHeight(a7)))
  {
    v28 = a5->var1[0];
    v27 = 1;
  }

  else
  {
    v27 = 0;
    v28 = a7;
  }

  var2 = a3->var4.var2;
  v29 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v26 = a3;
  v15 = createTexturesFromCVPixelBufferWithCommandBuffer(a3->var3, self->_device, v29, 1, var2);
  v16 = createTexturesFromCVPixelBufferWithCommandBuffer(a4->var3, self->_device, v29, 1, var2);
  v17 = createFlowTexturesFromCVPixelBufferWithCommandBuffer(a5->var2[0], self->_device, v29, 1, 2uLL);
  v18 = createTexturesFromCVPixelBufferWithCommandBuffer(a5->var3[0], self->_device, v29, 1, var2);
  v19 = createTexturesFromCVPixelBufferWithCommandBuffer(a5->var0[0], self->_device, v29, 1, 0x51uLL);
  v20 = createTexturesFromCVPixelBufferWithCommandBuffer(a6, self->_device, v29, 2, 1uLL);
  [(OFBackwarp *)self->_backwarp encodeToCommandBuffer:v29 source:v16 flow:v20 destination:v18 upscaledFlow:v17];
  [(OFCorrelation *)self->_correlation encodeToCommandBuffer:v29 first:v15 second:v18 destination:v19];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v18 width], objc_msgSend(v18, "height"), objc_msgSend(v18, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v18, a5->var3[0], self->_device, v29);
  }

  if (isBufferCopyNecessaryForCVtoTextureConversion([v19 width], objc_msgSend(v19, "height"), objc_msgSend(v19, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v19, a5->var0[0], self->_device, v29);
  }

  if (v17 && isBufferCopyNecessaryForCVtoTextureConversion([v17 width], objc_msgSend(v17, "height"), objc_msgSend(v17, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v17, a5->var2[0], self->_device, v29);
  }

  [v29 commit];
  [v29 waitUntilScheduled];

  [(OFFlowEstimate *)self->_flowEstimator[0] estimateFlow:v26->var3 correlation:a5->var0[0] flow:a6 output:a5->var4 callback:0];
  if (!self->_resourcePreAllocated)
  {
    CVPixelBufferRelease(a5->var0[0]);
    a5->var0[0] = 0;
  }

  [(VEOpticalFlow *)self reshuffleFlow:a5->var4 previsouFlow:a6 destination:v28];
  if (v27)
  {
    v21 = createTexturesFromCVPixelBuffer(v28, self->_device, 2, 1uLL);
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

- (void)reshuffleFlow:(__CVBuffer *)a3 previsouFlow:(__CVBuffer *)a4 destination:(__CVBuffer *)a5
{
  v12 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v9 = createTexturesFromCVPixelBufferWithCommandBuffer(a3, self->_device, v12, 1, 8uLL);
  v10 = createTexturesFromCVPixelBufferWithCommandBuffer(a4, self->_device, v12, 2, 1uLL);
  v11 = createFlowTexturesFromCVPixelBuffer(a5, self->_device, 1, 2uLL);
  [(OFBackwarp *)self->_backwarp encodeReShuffleFlowToCommandBuffer:v12 shuffledFlow:v9 previousFlow:v10 destination:v11];
  if (isBufferCopyNecessaryForCVtoTextureConversion([v11 width], objc_msgSend(v11, "height"), objc_msgSend(v11, "arrayLength")))
  {
    copyTextureToBufferWithBlit(v11, a5, self->_device, v12);
  }

  [v12 commit];
  [v12 waitUntilScheduled];
}

- (void)predictFowardFlow:(__CVBuffer *)a3 fromBackwardFlow:(__CVBuffer *)a4
{
  v6 = createTexturesFromCVPixelBuffer(a4, self->_device, 2, 1uLL);
  v7 = createTexturesFromCVPixelBuffer(a3, self->_device, 2, 1uLL);
  [(OFBackwarp *)self->_backwarp reverseFlowWithSource:v6 destination:v7];
}

- (void)estimateTwoWayFlowFromFirstFeatures:(id *)a3 secondFeature:(id *)a4 storage:(id *)a5 outputForwardFlow:(__CVBuffer *)a6 outputBackwardFlow:(__CVBuffer *)a7
{
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__VEOpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke;
  block[3] = &unk_278F53718;
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
  v16[2] = __112__VEOpticalFlow_estimateTwoWayFlowFromFirstFeatures_secondFeature_storage_outputForwardFlow_outputBackwardFlow___block_invoke_2;
  v16[3] = &unk_278F53718;
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

    QuarterSizeUsage = getQuarterSizeUsage(a3);
    if ([VEOpticalFlow use4xDownScale:a3])
    {
      QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
      self->_4xUpscale = 1;
    }

    if (QuarterSizeUsage != a3)
    {
      goto LABEL_14;
    }

    if ((global_logLevel & 4) != 0)
    {
      v6 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        v24[0] = 67109120;
        v24[1] = a3;
        _os_log_impl(&dword_24874B000, v6, OS_LOG_TYPE_INFO, "No support for 1/4 optical flow input for this usage (usage = %d). Bailing to the full size mode.\n", v24, 8u);
      }
    }

    self->_upscaleFinalFlow = 0;
  }

  QuarterSizeUsage = a3;
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
  v6 = createFlowTexturesFromCVPixelBuffer(a3, self->_device, 1, 2uLL);
  v7 = createFlowTexturesFromCVPixelBuffer(a4, self->_device, 1, 2uLL);
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

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flow:(__CVBuffer *)a5
{
  if (self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];

    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:a5];
  }

  else
  {
    [(VEOpticalFlow *)self allocateResources];
    [(VEOpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages outputFlow:a5];

    [(VEOpticalFlow *)self releaseResources];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 flowForward:(__CVBuffer *)a5 flowBackward:(__CVBuffer *)a6 reUseFlow:(BOOL)a7
{
  v7 = a7;
  resourcePreAllocated = self->_resourcePreAllocated;
  if (!resourcePreAllocated)
  {
    [(VEOpticalFlow *)self allocateResources];
  }

  [(VEOpticalFlow *)self extractFeaturesFromFirst:a3 second:a4];
  if (v7)
  {
    [(VEOpticalFlow *)self predictFowardFlow:a5 fromBackwardFlow:a6];
    goto LABEL_11;
  }

  features = self->_features;
  v15 = &self->_features[1];
  opticalFlowStroages = self->_opticalFlowStroages;
  if (!self->_concurrentDualFlowProcessing)
  {
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputFlow:a5];
LABEL_11:
    [(VEOpticalFlow *)self estimateFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:self->_opticalFlowStroages outputFlow:a6];
    if (resourcePreAllocated)
    {
      return;
    }

    goto LABEL_7;
  }

  [(VEOpticalFlow *)self estimateTwoWayFlowFromFirstFeatures:features secondFeature:v15 storage:opticalFlowStroages outputForwardFlow:a5 outputBackwardFlow:a6];
  if (resourcePreAllocated)
  {
    return;
  }

LABEL_7:

  [(VEOpticalFlow *)self releaseResources];
}

- (void)flowAdaptationFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 inputFlowForward:(__CVBuffer *)a5 inputFlowBackward:(__CVBuffer *)a6 outputFlowForward:(__CVBuffer *)a7 outputFlowBackward:(__CVBuffer *)a8
{
  resourcePreAllocated = self->_resourcePreAllocated;
  if (resourcePreAllocated)
  {
    if (a3)
    {
LABEL_3:
      [(VEOpticalFlow *)self extractFeaturesFromImage:a3 outputFeatures:self->_features];
      goto LABEL_6;
    }
  }

  else
  {
    [(VEOpticalFlow *)self allocateResources];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memcpy(v16, self->_features, sizeof(v16));
  memcpy(self->_features, &self->_features[1], 0x1E0uLL);
  memcpy(&self->_features[1], v16, sizeof(self->_features[1]));
LABEL_6:
  [(VEOpticalFlow *)self extractFeaturesFromImage:a4 outputFeatures:&self->_features[1]];
  [(VEOpticalFlow *)self adaptFlowFromFirstFeatures:self->_features secondFeature:&self->_features[1] storage:self->_opticalFlowStroages inputFlow:a5 outputFlow:a7];
  [(VEOpticalFlow *)self adaptFlowFromFirstFeatures:&self->_features[1] secondFeature:self->_features storage:&self->_opticalFlowStroages[1] inputFlow:a6 outputFlow:a8];
  if (!resourcePreAllocated)
  {

    [(VEOpticalFlow *)self releaseResources];
  }
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)flowSizeForLevel:(SEL)a3
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  result = [(OFFeatureExtractor *)self->_featureExtractor getOutputTensorSize:retstr level:*&a4];
  retstr->var2 = 2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)featureSizeForLevel:(SEL)a3
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