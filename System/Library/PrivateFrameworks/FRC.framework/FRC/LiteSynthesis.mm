@interface LiteSynthesis
- (BOOL)createModules;
- (BOOL)dumpMemoryAt:(float)at frameIndex:(unint64_t)index width:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels;
- (LiteSynthesis)initWithMode:(int64_t)mode;
- (LiteSynthesis)liteSynthesisWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward firstFeature:(id)feature secondFeature:(id)secondFeature outputTexture:(id)texture timeScale:(float)scale frameIndex:(unint64_t)index;
- (__CVBuffer)synthesizeFrameFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale frameIndex:(unint64_t)index;
- (void)allocateResources;
- (void)calcBackwarpLossFirst:(id)first second:(id)second commandBuffer:(id)buffer callback:(id)callback;
- (void)combineWarpedTexture:(id)texture and:(id)and normalized0:(id)normalized0 normalized1:(id)normalized1 alpha:(id)alpha toOutput:(id)output mapTexture:(id)mapTexture callback:(id)self0;
- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward;
- (void)forwardWarpForFlow:(int)flow feature:(id)feature flow:(id)a5 error:(id)error timeScale:(float)scale warpedOutput:(id)output callback:(id)callback;
- (void)forwarpFirstTexture:(id)texture SecondTexture:(id)secondTexture timeScale:(float)scale needWait:(BOOL)wait;
- (void)generateBlendingMap:(id)map and:(id)and toAlpha:(id)alpha timeScale:(float)scale normalized0:(id)normalized0 normalized1:(id)normalized1 callback:(id)callback;
- (void)postFilterFrom:(id)from mapTexture:(id)texture toTexture:(id)toTexture callback:(id)callback;
- (void)releaseFeatures;
- (void)releaseResources;
- (void)upScaleforwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow outputTexture:(id)texture commandBuffer:(id)buffer;
@end

@implementation LiteSynthesis

- (LiteSynthesis)initWithMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = LiteSynthesis;
  v4 = [(LiteSynthesis *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_usage = mode;
    if (![(LiteSynthesis *)v4 createModules])
    {
      NSLog(&cfstr_FailedToCreate_2.isa);
      v8 = 0;
      goto LABEL_6;
    }

    v6 = dispatch_semaphore_create(0);
    completionSemaphore = v5->_completionSemaphore;
    v5->_completionSemaphore = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
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

  if (self->_backwarp)
  {
    v9 = [[Forwarp alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue mode:10];
    forwarp = self->_forwarp;
    self->_forwarp = v9;

    if (self->_forwarp)
    {
      v11 = [[GPUSynthesis alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
      synthesis = self->_synthesis;
      self->_synthesis = v11;

      if (self->_synthesis)
      {
        return 1;
      }
    }

    NSLog(&cfstr_FailedToCreate_4.isa);
  }

  else
  {
    NSLog(&cfstr_FailedToCreate_3.isa);
  }

  return 0;
}

- (void)allocateResources
{
  v50 = 0;
  v51 = 0;
  FRCGetAlignedInputFrameSizeForUsage(self->_usage, &v51, &v50);
  v3 = [(Forwarp *)self->_forwarp createBestBufferWidth:v51 height:v50];
  v4 = self->_bestErrorBuffer[0];
  self->_bestErrorBuffer[0] = v3;

  v5 = [(Forwarp *)self->_forwarp createBestBufferWidth:v51 height:v50];
  v6 = self->_bestErrorBuffer[1];
  self->_bestErrorBuffer[1] = v5;

  v7 = [(Forwarp *)self->_forwarp createOutputBufferWidth:v51 height:v50 channels:3];
  v8 = self->_warpOutputBuffer[0];
  self->_warpOutputBuffer[0] = v7;

  v9 = [(Forwarp *)self->_forwarp createOutputBufferWidth:v51 height:v50 channels:3];
  v10 = self->_warpOutputBuffer[1];
  self->_warpOutputBuffer[1] = v9;

  if (self->_textureFromCVPixelBuffer)
  {
    self->_flowPixelBuffer0 = createPixelBuffer(v51, 2 * v50, 0x4C303068u, 0);
    self->_flowPixelBuffer1 = createPixelBuffer(v51, 2 * v50, 0x4C303068u, 0);
    v11 = createTexturesFromCVPixelBuffer(self->_flowPixelBuffer0, self->_device, 1, 2uLL);
    flowTexture0 = self->_flowTexture0;
    self->_flowTexture0 = v11;

    v13 = createTexturesFromCVPixelBuffer(self->_flowPixelBuffer1, self->_device, 1, 2uLL);
    flowTexture1 = self->_flowTexture1;
    self->_flowTexture1 = v13;

    PixelBuffer = createPixelBuffer(v51, v50, 0x4C303068u, 0);
    self->_alphaMap = PixelBuffer;
    v16 = createTexturesFromCVPixelBuffer(PixelBuffer, self->_device, 1, 1uLL);
    alphaTexture = self->_alphaTexture;
    self->_alphaTexture = v16;

    self->_selectMap = createPixelBuffer(v51, 3 * v50, 0x4C303068u, 0);
    self->_intermediaCVBuffer = createPixelBuffer(v51, 3 * v50, 0x4C303068u, 0);
    v18 = createTexturesFromCVPixelBuffer(self->_selectMap, self->_device, 1, 3uLL);
    mapTexture = self->_mapTexture;
    self->_mapTexture = v18;

    v20 = createTexturesFromCVPixelBuffer(self->_intermediaCVBuffer, self->_device, 1, 3uLL);
    combinedWarpedTexture = self->_combinedWarpedTexture;
    self->_combinedWarpedTexture = v20;

    self->_L1Loss0 = createPixelBuffer(v51, v50, 0x4C303068u, 0);
    self->_L1Loss1 = createPixelBuffer(v51, v50, 0x4C303068u, 0);
    v22 = createTexturesFromCVPixelBuffer(self->_L1Loss0, self->_device, 1, 1uLL);
    L1Texture0 = self->_L1Texture0;
    self->_L1Texture0 = v22;

    v24 = createTexturesFromCVPixelBuffer(self->_L1Loss1, self->_device, 1, 1uLL);
    L1Texture1 = self->_L1Texture1;
    self->_L1Texture1 = v24;

    self->_warpedForwardFeatures[0] = createPixelBuffer(v51, 3 * v50, 0x4C303068u, 0);
    self->_warpedForwardFeatures[1] = createPixelBuffer(v51, 3 * v50, 0x4C303068u, 0);
    v26 = createTexturesFromCVPixelBuffer(self->_warpedForwardFeatures[0], self->_device, 1, 3uLL);
    v27 = self->_warpedForwardTextures[0];
    self->_warpedForwardTextures[0] = v26;

    createTexturesFromCVPixelBuffer(self->_warpedForwardFeatures[1], self->_device, 1, 3uLL);
  }

  else
  {
    v29 = createTextures(self->_device, v51, v50, 1, 1uLL);
    v30 = self->_alphaTexture;
    self->_alphaTexture = v29;

    v31 = createTextures(self->_device, v51, v50, 1, 2uLL);
    v32 = self->_flowTexture0;
    self->_flowTexture0 = v31;

    v33 = createTextures(self->_device, v51, v50, 1, 2uLL);
    v34 = self->_flowTexture1;
    self->_flowTexture1 = v33;

    v35 = createTextures(self->_device, v51, v50, 1, 3uLL);
    v36 = self->_mapTexture;
    self->_mapTexture = v35;

    v37 = createTextures(self->_device, v51, v50, 1, 3uLL);
    v38 = self->_combinedWarpedTexture;
    self->_combinedWarpedTexture = v37;

    v39 = createTextures(self->_device, v51, v50, 1, 1uLL);
    v40 = self->_L1Texture0;
    self->_L1Texture0 = v39;

    v41 = createTextures(self->_device, v51, v50, 1, 1uLL);
    v42 = self->_L1Texture1;
    self->_L1Texture1 = v41;

    v43 = createTextures(self->_device, v51, v50, 1, 3uLL);
    v44 = self->_warpedForwardTextures[0];
    self->_warpedForwardTextures[0] = v43;

    createTextures(self->_device, v51, v50, 1, 3uLL);
  }
  v28 = ;
  v45 = self->_warpedForwardTextures[1];
  self->_warpedForwardTextures[1] = v28;

  v46 = createTextures(self->_device, v51, v50, 4, 1uLL);
  v47 = self->_normalizedFwarpTextures[0];
  self->_normalizedFwarpTextures[0] = v46;

  v48 = createTextures(self->_device, v51, v50, 4, 1uLL);
  v49 = self->_normalizedFwarpTextures[1];
  self->_normalizedFwarpTextures[1] = v48;
}

- (void)releaseResources
{
  flowTexture0 = self->_flowTexture0;
  self->_flowTexture0 = 0;

  flowTexture1 = self->_flowTexture1;
  self->_flowTexture1 = 0;

  L1Texture0 = self->_L1Texture0;
  self->_L1Texture0 = 0;

  L1Texture1 = self->_L1Texture1;
  self->_L1Texture1 = 0;

  mapTexture = self->_mapTexture;
  self->_mapTexture = 0;

  combinedWarpedTexture = self->_combinedWarpedTexture;
  self->_combinedWarpedTexture = 0;

  v9 = self->_bestErrorBuffer[0];
  self->_bestErrorBuffer[0] = 0;

  v10 = self->_bestErrorBuffer[1];
  self->_bestErrorBuffer[1] = 0;

  v11 = self->_warpOutputBuffer[0];
  self->_warpOutputBuffer[0] = 0;

  v12 = self->_warpOutputBuffer[1];
  self->_warpOutputBuffer[1] = 0;

  v13 = self->_warpedForwardTextures[0];
  self->_warpedForwardTextures[0] = 0;

  v14 = self->_warpedForwardTextures[1];
  self->_warpedForwardTextures[1] = 0;

  alphaTexture = self->_alphaTexture;
  self->_alphaTexture = 0;

  v16 = self->_normalizedFwarpTextures[0];
  self->_normalizedFwarpTextures[0] = 0;

  v17 = self->_normalizedFwarpTextures[1];
  self->_normalizedFwarpTextures[1] = 0;

  if (self->_textureFromCVPixelBuffer)
  {
    CVPixelBufferRelease(self->_intermediaCVBuffer);
    CVPixelBufferRelease(self->_selectMap);
    CVPixelBufferRelease(self->_flowPixelBuffer0);
    CVPixelBufferRelease(self->_flowPixelBuffer1);
    CVPixelBufferRelease(self->_L1Loss0);
    CVPixelBufferRelease(self->_L1Loss1);
    CVPixelBufferRelease(self->_warpedForwardFeatures[0]);
    CVPixelBufferRelease(self->_warpedForwardFeatures[1]);
    alphaMap = self->_alphaMap;

    CVPixelBufferRelease(alphaMap);
  }
}

- (void)forwardWarpForFlow:(int)flow feature:(id)feature flow:(id)a5 error:(id)error timeScale:(float)scale warpedOutput:(id)output callback:(id)callback
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  outputCopy = output;
  errorCopy = error;
  v20 = a5;
  featureCopy = feature;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v23 = scale;
  [(Forwarp *)self->_forwarp encodeToCommandBuffer:commandBuffer input:featureCopy flow:v20 error:errorCopy timeScale:1 fullWarp:self->_bestErrorBuffer[flow] bestError:v23 output:self->_warpOutputBuffer[flow] destination:outputCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__LiteSynthesis_forwardWarpForFlow_feature_flow_error_timeScale_warpedOutput_callback___block_invoke;
    v24[3] = &unk_278FEA498;
    v25 = callbackCopy;
    [commandBuffer addCompletedHandler:v24];
  }

  [commandBuffer commit];
}

uint64_t __87__LiteSynthesis_forwardWarpForFlow_feature_flow_error_timeScale_warpedOutput_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)combineWarpedTexture:(id)texture and:(id)and normalized0:(id)normalized0 normalized1:(id)normalized1 alpha:(id)alpha toOutput:(id)output mapTexture:(id)mapTexture callback:(id)self0
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  mapTextureCopy = mapTexture;
  outputCopy = output;
  alphaCopy = alpha;
  normalized1Copy = normalized1;
  normalized0Copy = normalized0;
  andCopy = and;
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(GPUSynthesis *)self->_synthesis encodeCombineCmdToCommandBuffer:commandBuffer fromBuffer0:textureCopy buffer1:andCopy best0:self->_bestErrorBuffer[0] best1:self->_bestErrorBuffer[1] map:mapTextureCopy normalized0:normalized0Copy normalized1:normalized1Copy alpha:alphaCopy flowStats0:&self->flowStats0 flowStats1:&self->flowStats1 toTexture:outputCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __101__LiteSynthesis_combineWarpedTexture_and_normalized0_normalized1_alpha_toOutput_mapTexture_callback___block_invoke;
    v27[3] = &unk_278FEA498;
    v28 = callbackCopy;
    [commandBuffer addCompletedHandler:v27];
  }

  [commandBuffer commit];
}

uint64_t __101__LiteSynthesis_combineWarpedTexture_and_normalized0_normalized1_alpha_toOutput_mapTexture_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)generateBlendingMap:(id)map and:(id)and toAlpha:(id)alpha timeScale:(float)scale normalized0:(id)normalized0 normalized1:(id)normalized1 callback:(id)callback
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  normalized1Copy = normalized1;
  normalized0Copy = normalized0;
  alphaCopy = alpha;
  andCopy = and;
  mapCopy = map;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  *&v24 = scale;
  [(GPUSynthesis *)self->_synthesis encodeAlphaCmdToCommandBuffer:commandBuffer fromBuffer0:mapCopy buffer1:andCopy toAlpha:alphaCopy timeScale:normalized0Copy toNormalized0:normalized1Copy toNormalized1:v24];

  kdebug_trace();
  if (callbackCopy)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __92__LiteSynthesis_generateBlendingMap_and_toAlpha_timeScale_normalized0_normalized1_callback___block_invoke;
    v25[3] = &unk_278FEA498;
    v26 = callbackCopy;
    [commandBuffer addCompletedHandler:v25];
  }

  [commandBuffer commit];
}

uint64_t __92__LiteSynthesis_generateBlendingMap_and_toAlpha_timeScale_normalized0_normalized1_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)postFilterFrom:(id)from mapTexture:(id)texture toTexture:(id)toTexture callback:(id)callback
{
  callbackCopy = callback;
  commandQueue = self->_commandQueue;
  toTextureCopy = toTexture;
  textureCopy = texture;
  fromCopy = from;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(GPUSynthesis *)self->_synthesis encodePostSmoothFilterCmdToCommandBuffer:commandBuffer map:textureCopy fromTexture:fromCopy toTexture:toTextureCopy];

  kdebug_trace();
  if (callbackCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__LiteSynthesis_postFilterFrom_mapTexture_toTexture_callback___block_invoke;
    v16[3] = &unk_278FEA498;
    v17 = callbackCopy;
    [commandBuffer addCompletedHandler:v16];
  }

  [commandBuffer commit];
}

uint64_t __62__LiteSynthesis_postFilterFrom_mapTexture_toTexture_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)calcBackwarpLossFirst:(id)first second:(id)second commandBuffer:(id)buffer callback:(id)callback
{
  bufferCopy = buffer;
  callbackCopy = callback;
  backwarp = self->_backwarp;
  flowTexture0 = self->_flowTexture0;
  L1Texture0 = self->_L1Texture0;
  secondCopy = second;
  firstCopy = first;
  LODWORD(v17) = 1.0;
  [(Backwarp *)backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:firstCopy second:secondCopy flow:flowTexture0 timeScale:L1Texture0 destination:v17];
  LODWORD(v18) = 1.0;
  [(Backwarp *)self->_backwarp encodeBackwarpLossToCommandBuffer:bufferCopy first:secondCopy second:firstCopy flow:self->_flowTexture1 timeScale:self->_L1Texture1 destination:v18];

  kdebug_trace();
  if (callbackCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__LiteSynthesis_calcBackwarpLossFirst_second_commandBuffer_callback___block_invoke;
    v19[3] = &unk_278FEA498;
    v20 = callbackCopy;
    [bufferCopy addCompletedHandler:v19];
  }

  [bufferCopy commit];
}

uint64_t __69__LiteSynthesis_calcBackwarpLossFirst_second_commandBuffer_callback___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)upScaleforwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow outputTexture:(id)texture commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  textureCopy = texture;
  Width = CVPixelBufferGetWidth(flow);
  v12 = createTexturesFromCVPixelBuffer(flow, self->_device, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(backwardFlow, self->_device, 1, 2uLL);
  width = [textureCopy width];

  if (width == Width)
  {
    objc_storeStrong(&self->_flowTexture0, v12);
    objc_storeStrong(&self->_flowTexture1, v13);
  }

  else
  {
    [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:bufferCopy source:v12 destination:self->_flowTexture0];
    [(Backwarp *)self->_backwarp encodeUpscaleFlowToCommandBuffer:bufferCopy source:v13 destination:self->_flowTexture1];
  }
}

- (void)forwarpFirstTexture:(id)texture SecondTexture:(id)secondTexture timeScale:(float)scale needWait:(BOOL)wait
{
  waitCopy = wait;
  textureCopy = texture;
  secondTextureCopy = secondTexture;
  v12 = objc_autoreleasePoolPush();
  flowTexture0 = self->_flowTexture0;
  L1Texture0 = self->_L1Texture0;
  v15 = self->_warpedForwardTextures[0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__LiteSynthesis_forwarpFirstTexture_SecondTexture_timeScale_needWait___block_invoke;
  v24[3] = &unk_278FEA750;
  v25 = waitCopy;
  v24[4] = self;
  *&v16 = scale;
  [(LiteSynthesis *)self forwardWarpForFlow:0 feature:textureCopy flow:flowTexture0 error:L1Texture0 timeScale:v15 warpedOutput:v24 callback:v16];
  if (waitCopy)
  {
    dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_autoreleasePoolPop(v12);
  v17 = objc_autoreleasePoolPush();
  flowTexture1 = self->_flowTexture1;
  L1Texture1 = self->_L1Texture1;
  *&v20 = 1.0 - scale;
  v21 = self->_warpedForwardTextures[1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__LiteSynthesis_forwarpFirstTexture_SecondTexture_timeScale_needWait___block_invoke_2;
  v22[3] = &unk_278FEA750;
  v23 = waitCopy;
  v22[4] = self;
  [(LiteSynthesis *)self forwardWarpForFlow:1 feature:secondTextureCopy flow:flowTexture1 error:L1Texture1 timeScale:v21 warpedOutput:v22 callback:v20];
  if (waitCopy)
  {
    dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_autoreleasePoolPop(v17);
}

intptr_t __70__LiteSynthesis_forwarpFirstTexture_SecondTexture_timeScale_needWait___block_invoke(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 48));
  }

  return result;
}

intptr_t __70__LiteSynthesis_forwarpFirstTexture_SecondTexture_timeScale_needWait___block_invoke_2(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 48));
  }

  return result;
}

- (LiteSynthesis)liteSynthesisWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward firstFeature:(id)feature secondFeature:(id)secondFeature outputTexture:(id)texture timeScale:(float)scale frameIndex:(unint64_t)index
{
  featureCopy = feature;
  secondFeatureCopy = secondFeature;
  textureCopy = texture;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  self->flowStats0.timeScale = scale;
  self->flowStats1.timeScale = 1.0 - scale;
  if (!index)
  {
    [(LiteSynthesis *)self upScaleforwardFlow:forward backwardFlow:backward outputTexture:textureCopy commandBuffer:commandBuffer];
    v21 = objc_autoreleasePoolPush();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke;
    v46[3] = &unk_278FEA750;
    v47 = 0;
    v46[4] = self;
    [(LiteSynthesis *)self calcBackwarpLossFirst:featureCopy second:secondFeatureCopy commandBuffer:commandBuffer callback:v46];
    objc_autoreleasePoolPop(v21);
  }

  *&v20 = scale;
  [(LiteSynthesis *)self forwarpFirstTexture:featureCopy SecondTexture:secondFeatureCopy timeScale:0 needWait:v20];
  v22 = self->_warpOutputBuffer[0];
  v23 = self->_warpOutputBuffer[1];
  alphaTexture = self->_alphaTexture;
  v25 = self->_normalizedFwarpTextures[0];
  v26 = self->_normalizedFwarpTextures[1];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke_2;
  v44[3] = &unk_278FEA750;
  v45 = 0;
  v44[4] = self;
  *&v27 = scale;
  [(LiteSynthesis *)self generateBlendingMap:v22 and:v23 toAlpha:alphaTexture timeScale:v25 normalized0:v26 normalized1:v44 callback:v27];
  v28 = self->_warpOutputBuffer[0];
  v29 = self->_warpOutputBuffer[1];
  v30 = self->_normalizedFwarpTextures[0];
  v31 = self->_normalizedFwarpTextures[1];
  v32 = self->_alphaTexture;
  mapTexture = self->_mapTexture;
  combinedWarpedTexture = self->_combinedWarpedTexture;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke_3;
  v42[3] = &unk_278FEA750;
  v43 = 0;
  v42[4] = self;
  [(LiteSynthesis *)self combineWarpedTexture:v28 and:v29 normalized0:v30 normalized1:v31 alpha:v32 toOutput:combinedWarpedTexture mapTexture:mapTexture callback:v42];
  v36 = self->_mapTexture;
  v35 = self->_combinedWarpedTexture;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke_4;
  v41[3] = &unk_278FEA778;
  v41[4] = self;
  [(LiteSynthesis *)self postFilterFrom:v35 mapTexture:v36 toTexture:textureCopy callback:v41];
  dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_enableMemDump)
  {
    v39 = 0;
    v40 = 0;
    FRCGetAlignedInputFrameSizeForUsage(self->_usage, &v40, &v39);
    *&v37 = scale;
    [(LiteSynthesis *)self dumpMemoryAt:index frameIndex:v40 width:v39 height:3 channels:v37];
  }

  return result;
}

intptr_t __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 48));
  }

  return result;
}

intptr_t __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke_2(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 48));
  }

  return result;
}

intptr_t __121__LiteSynthesis_liteSynthesisWithFlowForward_flowBackward_firstFeature_secondFeature_outputTexture_timeScale_frameIndex___block_invoke_3(intptr_t result)
{
  if (*(result + 40) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 48));
  }

  return result;
}

- (__CVBuffer)synthesizeFrameFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward timeScale:(float)scale frameIndex:(unint64_t)index
{
  v21 = 0;
  v22 = 0;
  FRCGetAlignedInputFrameSizeForUsage(self->_usage, &v22, &v21);
  PixelBuffer = createPixelBuffer(v22, 3 * v21, 0x4C303068u, 0);
  v16 = createTexturesFromCVPixelBuffer(image, self->_device, 1, 3uLL);
  v17 = createTexturesFromCVPixelBuffer(secondImage, self->_device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(PixelBuffer, self->_device, 1, 3uLL);
  *&v19 = scale;
  [(LiteSynthesis *)self liteSynthesisWithFlowForward:forward flowBackward:backward firstFeature:v16 secondFeature:v17 outputTexture:v18 timeScale:index frameIndex:v19];

  return PixelBuffer;
}

- (BOOL)dumpMemoryAt:(float)at frameIndex:(unint64_t)index width:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels
{
  height = [MEMORY[0x277CCACA8] stringWithFormat:@"%ldx%ld.float", width, height];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ts%d_%@", (at * 1000.0), height];
  v14 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([v14 fileExistsAtPath:@"/var/mobile/tmp/"] & 1) != 0 || (objc_msgSend(v14, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/var/mobile/tmp/", 1, 0, 0))
  {
    v33 = v14;
    if (!index)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"flow0", height];
      v16 = fopen([v15 UTF8String], "wb");
      writeBufferFlt32(v16, self->_flowPixelBuffer0);
      fclose(v16);
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"flow1", height];

      v18 = fopen([v17 UTF8String], "wb");
      writeBufferFlt32(v18, self->_flowPixelBuffer1);
      fclose(v18);
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"map", v13];
    v34 = height;
    v20 = fopen([v19 UTF8String], "wb");
    writeBufferFlt32(v20, self->_selectMap);
    saveTextureBufferFlt32(v20, self->_bestErrorBuffer[0], width, height, 0.0000001);
    saveTextureBufferFlt32(v20, self->_bestErrorBuffer[1], width, height, 0.0000001);
    fclose(v20);
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"warpOutput0", v13];

    v22 = fopen([v21 UTF8String], "wb");
    v23 = height + height * channels;
    saveTextureBufferFlt32(v22, self->_warpOutputBuffer[0], width, v23, 0.0000001);
    fclose(v22);
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"warpOutput1", v13];

    v25 = fopen([v24 UTF8String], "wb");
    saveTextureBufferFlt32(v25, self->_warpOutputBuffer[1], width, v23, 0.0000001);
    fclose(v25);
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"loss0", v13];

    v27 = fopen([v26 UTF8String], "wb");
    writeBufferFlt32(v27, self->_L1Loss0);
    fclose(v27);
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@_%@", @"/var/mobile/tmp/", @"loss1", v13];

    v29 = fopen([v28 UTF8String], "wb");
    writeBufferFlt32(v29, self->_L1Loss1);
    v30 = v29;
    height = v34;
    fclose(v30);

    v31 = 1;
    v14 = v33;
  }

  else
  {
    NSLog(&cfstr_CouldNotBeCrea.isa, @"/var/mobile/tmp/");
    v31 = 0;
  }

  return v31;
}

- (void)createFeaturesFromFirstImage:(__CVBuffer *)image secondImage:(__CVBuffer *)secondImage flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward
{
  self->_forwardFlow = CVPixelBufferRetain(forward);
  self->_backwardFlow = CVPixelBufferRetain(backward);
  self->_normalizedFirst = CVPixelBufferRetain(image);
  self->_normalizedSecond = CVPixelBufferRetain(secondImage);
}

- (void)releaseFeatures
{
  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  CVPixelBufferRelease(self->_normalizedFirst);
  CVPixelBufferRelease(self->_normalizedSecond);
  *&self->_normalizedFirst = 0u;
  *&self->_forwardFlow = 0u;
}

@end