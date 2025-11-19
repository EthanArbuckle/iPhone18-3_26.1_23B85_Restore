@interface PseudoDepthGenerator
- (BOOL)createModules;
- (BOOL)encodeSceneChangeDetectionFromFlowFailureMask:(id)a3 effectiveResolution:(CGSize)a4;
- (BOOL)setupMetal;
- (BOOL)updateUsePreviousInfoFromIsFirstFrame:(BOOL)a3 isLastFrame:(BOOL)a4 isRandomAccessMode:(BOOL)a5 effectiveResolution:(CGSize)a6 isInitialization:(BOOL)a7;
- (PseudoDepthGenerator)initWithDevice:(id)a3 commandQueue:(id)a4;
- (PseudoDepthGenerator)initWithMode;
- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (int64_t)PseudoDepthFromBackwardFlow:(id)a3 forwardFlow:(id)a4 fullresFlow:(id)a5 depth:(id)a6 prevBackFlow:(id)a7 flowErrorMask:(id)a8 interleave_factor:(unint64_t)a9 timeScale:(float)a10 downscale_factor:(unint64_t)a11;
- (int64_t)allocateBufferAndTextureWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7;
- (int64_t)allocateDepthInternalBuffersWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7;
- (int64_t)allocateFlowOnlyBufferWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7;
- (int64_t)allocateInternalStorage:(id *)a3 flowWidth:(unint64_t)a4 flowHeight:(unint64_t)a5 depthWidth:(unint64_t)a6 depthHeight:(unint64_t)a7 interleaveFactor:(unint64_t)a8;
- (int64_t)approximateDepthWithBackwarpLossFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 fullresFlow:(__CVBuffer *)a5 depth:(__CVBuffer *)a6 interleavFactor:(unint64_t)a7 timeScale:(float)a8;
- (int64_t)calculateBackwarpErrorFromDownscaleFirst:(id)a3 downscaleSecond:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 backwardStorage:(id *)a7 forwardStorage:(id *)a8 interleave_factor:(unint64_t)a9 timeScale:(float)a10;
- (int64_t)deriveDepthFromFlowDownscaleFirstImage:(id)a3 downscaleSecondImage:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 destination:(id)a7 interleave_factor:(unint64_t)a8 timeScale:(float)a9;
- (int64_t)deriveDepthFromForwardFlow:(id)a3 backwardFlow:(id)a4 Destination:(id)a5;
- (int64_t)encodeCombineTwoSideDepthToCommandBuffer:(id)a3 forwardDepth:(id)a4 backwarpDepth:(id)a5 destination:(id)a6;
- (int64_t)encodeCorrectFlowToCommandBuffer:(id)a3 input:(id)a4 forwardFlow:(id)a5 inputFlowFailureMask:(id)a6 forwardFlowFailureMask:(id)a7 remainedWrongFlow:(id)a8 outputFlow:(id)a9 isBackwardFlow:(BOOL)a10;
- (int64_t)encodeExtendDepthInStillRegionToCommandBuffer:(id)a3 inputDepthMap:(id)a4 stillMap:(id)a5 output:(id)a6;
- (int64_t)encodeFillHrConflictMapToCommandBuffer:(id)a3 inputDepthMap:(id)a4 extendedMap:(id)a5 stillMap:(id)a6 output:(id)a7;
- (int64_t)encodeFlowFailureMaskGenerationToCommandBuffer:(id)a3 backwardFlow:(id)a4 forwardFlow:(id)a5 backwardFlowError:(id)a6 forwardFlowError:(id)a7 backwardErrorMap:(id)a8 forwardHoleMap:(id)a9 isBackwardFlow:(BOOL)a10;
- (int64_t)encodeForwarpLossWithTrackToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 output:(id)a6;
- (int64_t)encodeHoleMapToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6;
- (int64_t)encodeInitialieTextureToCommandBuffer:(id)a3 bestError:(id)a4;
- (int64_t)encodePropagateDepthToCommandBuffer:(id)a3 flow:(id)a4 fgTile:(id)a5 bgTile:(id)a6 scale:(float)a7 destination:(id)a8;
- (int64_t)encodeStillForegroundMapToCommandBuffer:(id)a3 backwardFlowConfMap:(id)a4 forwardFlowConfMap:(id)a5 frFlow:(id)a6 output:(id)a7;
- (int64_t)encodeTilebaseFlowAverageToCommandBuffer:(id)a3 depth:(id)a4 flow:(id)a5 flowEdge:(id)a6 fgTile:(id)a7 bgTile:(id)a8;
- (int64_t)encodeToCommandBufferConvertDepth:(id)a3 fromBuffer:(id)a4 holeMap:(id)a5 failureMask:(id)a6 toTexture:(id)a7 inputSize:(id *)a8;
- (int64_t)flowFailureAndCorrectionFromDownscaleFirstImage:(id)a3 downscaleSecondImage:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 prevBackFlow:(id)a7 remainedErrorMask:(id)a8 effectiveResolution:(CGSize)a9 interleave_factor:(unint64_t)a10 timeScale:(float)a11 warmup:(BOOL)a12;
- (int64_t)flowFailureDetectionAndCorrectionFromForwardFlow:(id)a3 backwardFlow:(id)a4 inputFlow:(id)a5 backwardStorage:(id *)a6 forwardStorage:(id *)a7 interleaveFactor:(unint64_t)a8 timeScale:(float)a9 remainedErrorMask:(id)a10 warmup:(BOOL)a11;
- (int64_t)propagatePartialDepth:(id)a3 downscaleFlow:(id)a4 fullResFlow:(id)a5 downscaleWidth:(unint64_t)a6 downscaleHeight:(unint64_t)a7 downscale_factor:(float)a8 interleaveFactor:(unint64_t)a9 commandBuffer:(id)a10 fullresDepth:(id)a11;
- (int64_t)saveBackwardFlow:(id)a3 prevBackwardFlow:(id)a4;
- (int64_t)saveInternalStateWithCommandBuffer:(id)a3;
- (int64_t)threeFramePseudoDepthFromForwardFlow:(id)a3 backwardFlow:(id)a4 fullresFlow:(id)a5 destination:(id)a6 flowErrorMask:(id)a7 interleaveFactor:(unint64_t)a8 timeScale:(float)a9 downscaleFactor:(float)a10 commandBuffer:(id)a11;
- (void)dealloc;
- (void)releaseDepthInternalBuffers;
- (void)releaseResources;
- (void)releaseStorage:(id *)a3;
@end

@implementation PseudoDepthGenerator

- (void)dealloc
{
  backwarp = self->_backwarp;
  self->_backwarp = 0;

  imageProcessUtility = self->_imageProcessUtility;
  self->_imageProcessUtility = 0;

  v5.receiver = self;
  v5.super_class = PseudoDepthGenerator;
  [(PseudoDepthGenerator *)&v5 dealloc];
}

- (BOOL)createModules
{
  device = self->super._device;
  result = 0;
  if (device || (v4 = MTLCreateSystemDefaultDevice(), v5 = self->super._device, self->super._device = v4, v5, (device = self->super._device) != 0))
  {
    if (self->super._commandQueue || (v6 = [(MTLDevice *)device newCommandQueue], commandQueue = self->super._commandQueue, self->super._commandQueue = v6, commandQueue, self->super._commandQueue))
    {
      v8 = [[Backwarp_Ext alloc] initWithDevice:self->super._device commmandQueue:self->super._commandQueue interleaved:0];
      backwarp = self->_backwarp;
      self->_backwarp = v8;

      if (self->_backwarp)
      {
        v10 = [[ImageProcessUtility alloc] initWithDevice:self->super._device commmandQueue:self->super._commandQueue];
        imageProcessUtility = self->_imageProcessUtility;
        self->_imageProcessUtility = v10;

        if (self->_imageProcessUtility)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (void)releaseDepthInternalBuffers
{
  fgFlow = self->_fgFlow;
  if (fgFlow)
  {
    CVPixelBufferRelease(fgFlow);
    self->_fgFlow = 0;
    fgFlowTexture = self->_fgFlowTexture;
    self->_fgFlowTexture = 0;
  }

  bgFlow = self->_bgFlow;
  if (bgFlow)
  {
    CVPixelBufferRelease(bgFlow);
    self->_bgFlow = 0;
    bgFlowTexture = self->_bgFlowTexture;
    self->_bgFlowTexture = 0;
  }

  dsFlowEdge = self->_dsFlowEdge;
  if (dsFlowEdge)
  {
    CVPixelBufferRelease(dsFlowEdge);
    self->_dsFlowEdge = 0;
    dsFlowEdgeTexture = self->_dsFlowEdgeTexture;
    self->_dsFlowEdgeTexture = 0;
  }

  partialForwardDepth = self->_partialForwardDepth;
  if (partialForwardDepth)
  {
    CVPixelBufferRelease(partialForwardDepth);
    self->_partialForwardDepth = 0;
    partialForwardDepthTexture = self->_partialForwardDepthTexture;
    self->_partialForwardDepthTexture = 0;
  }

  partialBackwardDepth = self->_partialBackwardDepth;
  if (partialBackwardDepth)
  {
    CVPixelBufferRelease(partialBackwardDepth);
    self->_partialBackwardDepth = 0;
    partialBackwardDepthTexture = self->_partialBackwardDepthTexture;
    self->_partialBackwardDepthTexture = 0;
  }

  partialTwoSideDepth = self->_partialTwoSideDepth;
  if (partialTwoSideDepth)
  {
    CVPixelBufferRelease(partialTwoSideDepth);
    self->_partialTwoSideDepth = 0;
    partialTwoSideDepthTexture = self->_partialTwoSideDepthTexture;
    self->_partialTwoSideDepthTexture = 0;
  }

  hrStillMap = self->_hrStillMap;
  if (hrStillMap)
  {
    CVPixelBufferRelease(hrStillMap);
    self->_hrStillMap = 0;
    hrStillMapTexture = self->_hrStillMapTexture;
    self->_hrStillMapTexture = 0;
  }

  dsConflictMap = self->_dsConflictMap;
  if (dsConflictMap)
  {
    CVPixelBufferRelease(dsConflictMap);
    self->_dsConflictMap = 0;
    dsConflictMapTexture = self->_dsConflictMapTexture;
    self->_dsConflictMapTexture = 0;
  }

  extendedConflictMap = self->_extendedConflictMap;
  if (extendedConflictMap)
  {
    CVPixelBufferRelease(extendedConflictMap);
    self->_extendedConflictMap = 0;
    extendedConflictMapTexture = self->_extendedConflictMapTexture;
    self->_extendedConflictMapTexture = 0;
  }

  correctedForwardFlowForwarpBuffer = self->_correctedForwardFlowForwarpBuffer;
  self->_correctedForwardFlowForwarpBuffer = 0;

  correctedForwardFlow = self->_correctedForwardFlow;
  if (correctedForwardFlow)
  {
    CVPixelBufferRelease(correctedForwardFlow);
    self->_correctedForwardFlow = 0;
    correctedForwardFlowTexture = self->_correctedForwardFlowTexture;
    self->_correctedForwardFlowTexture = 0;
  }

  upscaledCorrectedForwardFlow = self->_upscaledCorrectedForwardFlow;
  if (upscaledCorrectedForwardFlow)
  {
    CVPixelBufferRelease(upscaledCorrectedForwardFlow);
    self->_upscaledCorrectedForwardFlow = 0;
    upscaledCorrectedForwardFlowTexture = self->_upscaledCorrectedForwardFlowTexture;
    self->_upscaledCorrectedForwardFlowTexture = 0;
  }

  correctedForwardFlowHoleMap = self->_correctedForwardFlowHoleMap;
  if (correctedForwardFlowHoleMap)
  {
    CVPixelBufferRelease(correctedForwardFlowHoleMap);
    self->_correctedForwardFlowHoleMap = 0;
    correctedForwardFlowHoleMapTexture = self->_correctedForwardFlowHoleMapTexture;
    self->_correctedForwardFlowHoleMapTexture = 0;
  }
}

- (void)releaseStorage:(id *)a3
{
  CVPixelBufferRelease(a3->var0);
  CVPixelBufferRelease(a3->var1);
  CVPixelBufferRelease(a3->var2);
  var3 = a3->var3;

  CVPixelBufferRelease(var3);
}

- (void)releaseResources
{
  [(PseudoDepthGenerator *)self releaseStorage:&self->_backwardStorage];
  [(PseudoDepthGenerator *)self releaseStorage:&self->_forwardStorage];
  [(PseudoDepthGenerator *)self releaseDepthInternalBuffers];
  prevBack4XFlow = self->_prevBack4XFlow;
  if (prevBack4XFlow)
  {
    CVPixelBufferRelease(prevBack4XFlow);
    prevBack4xFlowTexture = self->_prevBack4xFlowTexture;
    self->_prevBack4xFlowTexture = 0;

    self->_prevBack4XFlow = 0;
  }

  prevBackwardDepth = self->_prevBackwardDepth;
  if (prevBackwardDepth)
  {
    CVPixelBufferRelease(prevBackwardDepth);
    prevBackwardDepthTexture = self->_prevBackwardDepthTexture;
    self->_prevBackwardDepthTexture = 0;

    self->_prevBackwardDepth = 0;
  }

  prevFlowFailureMask = self->_prevFlowFailureMask;
  if (prevFlowFailureMask)
  {
    CVPixelBufferRelease(prevFlowFailureMask);
    prevFlowFailureMaskTexture = self->_prevFlowFailureMaskTexture;
    self->_prevFlowFailureMaskTexture = 0;

    self->_prevFlowFailureMask = 0;
  }
}

- (BOOL)updateUsePreviousInfoFromIsFirstFrame:(BOOL)a3 isLastFrame:(BOOL)a4 isRandomAccessMode:(BOOL)a5 effectiveResolution:(CGSize)a6 isInitialization:(BOOL)a7
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    if (a3 || a4)
    {
      self->_previousFrameAvailable = 0;
    }

    else
    {
      sceneChange = self->_sceneChange;
      previousFrameAvailable = 1;
      self->_previousFrameAvailable = !sceneChange;
      if (!sceneChange)
      {
LABEL_17:
        ++self->_same_scene_frame_count;
        return previousFrameAvailable;
      }
    }

    if ((global_logLevel & 4) != 0)
    {
      v10 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        same_scene_frame_count = self->_same_scene_frame_count;
        v13[0] = 67109120;
        v13[1] = same_scene_frame_count;
        _os_log_impl(&dword_24874B000, v10, OS_LOG_TYPE_INFO, "Frame %d scene change .\n", v13, 8u);
      }

      previousFrameAvailable = self->_previousFrameAvailable;
    }

    else
    {
      previousFrameAvailable = 0;
    }

    goto LABEL_17;
  }

  if (a5 || a3 || a4)
  {
    previousFrameAvailable = 0;
    self->_previousFrameAvailable = 0;
  }

  else
  {
    previousFrameAvailable = !self->_sceneChange;
    self->_previousFrameAvailable = previousFrameAvailable;
  }

  return previousFrameAvailable;
}

- (BOOL)encodeSceneChangeDetectionFromFlowFailureMask:(id)a3 effectiveResolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = ((width + 7) >> 3) * ((height + 7) >> 3);
  v9 = [(MTLDevice *)self->super._device newBufferWithLength:2 * v8 options:0];
  v10 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v11 = [v10 computeCommandEncoder];
  [v11 setComputePipelineState:self->_collectWrongFlowStatsKernel];
  [v11 setTexture:v7 atIndex:0];
  [v11 setBuffer:v9 offset:0 atIndex:0];
  *&buf = (width + 7) >> 3;
  *(&buf + 1) = (height + 7) >> 3;
  v23 = 1;
  v20 = vdupq_n_s64(8uLL);
  v21 = 1;
  [v11 dispatchThreadgroups:&buf threadsPerThreadgroup:&v20];
  [v11 endEncoding];
  [v10 commit];
  [v10 waitUntilCompleted];
  v12 = [v9 contents];
  v13 = 0.0;
  if (v8)
  {
    v14 = 1;
    do
    {
      v15 = *v12++;
      v13 = v13 + v15;
    }

    while (v8 > v14++);
  }

  v17 = v13 / (width * height);
  if (v17 > 0.8 && (global_logLevel & 4) != 0)
  {
    v18 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_INFO, "error ratio %.2f", &buf, 0xCu);
    }
  }

  return v17 > 0.8;
}

- (PseudoDepthGenerator)initWithMode
{
  v6.receiver = self;
  v6.super_class = PseudoDepthGenerator;
  v2 = [(VEMetalBase *)&v6 init];
  v3 = v2;
  if (v2 && [(PseudoDepthGenerator *)v2 createModules]&& [(PseudoDepthGenerator *)v3 setupMetal])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PseudoDepthGenerator)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v14.receiver = self;
  v14.super_class = PseudoDepthGenerator;
  v4 = [(VEMetalBase *)&v14 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v4->_previousFrameAvailable = 0;
  v4->_same_scene_frame_count = 0;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  v9 = [(MTLDevice *)v5->super._device newLibraryWithURL:v8 error:0];
  mtlLibrary = v5->super._mtlLibrary;
  v5->super._mtlLibrary = v9;

  if (![(PseudoDepthGenerator *)v5 createModules])
  {

    goto LABEL_6;
  }

  v11 = [(PseudoDepthGenerator *)v5 setupMetal];

  if (!v11)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = v5;
LABEL_7:

  return v12;
}

- (BOOL)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"forwarpLoss_wTracking"];
  OUTLINED_FUNCTION_6(v3);
  result = 0;
  if (self->_forwarpLossTrackKernel)
  {
    v4 = [(VEMetalBase *)self createKernel:@"convertFloatBuffer2DepthTexture"];
    OUTLINED_FUNCTION_6(v4);
    if (self->_convert2depthKernel)
    {
      v5 = [(VEMetalBase *)self createKernel:@"combineDepth"];
      OUTLINED_FUNCTION_6(v5);
      if (self->_combineTwoSideDepthKernel)
      {
        v6 = [(VEMetalBase *)self createKernel:@"tilebaseFlowAverage"];
        OUTLINED_FUNCTION_6(v6);
        if (self->_tileFlowAveKernel)
        {
          v7 = [(VEMetalBase *)self createKernel:@"propagateDepth"];
          OUTLINED_FUNCTION_6(v7);
          if (self->_propagateDepthKernel)
          {
            v8 = [(VEMetalBase *)self createKernel:@"stillForegroundMap"];
            OUTLINED_FUNCTION_6(v8);
            if (self->_combineStillMapKernel)
            {
              v9 = [(VEMetalBase *)self createKernel:@"extendDepthInStillRegion"];
              OUTLINED_FUNCTION_6(v9);
              if (self->_extendDepthInStillRegionKernel)
              {
                v10 = [(VEMetalBase *)self createKernel:@"fillHrConflictMap"];
                OUTLINED_FUNCTION_6(v10);
                if (self->_fillHrConflictMapKernel)
                {
                  v11 = [(VEMetalBase *)self createKernel:@"correctFlow"];
                  OUTLINED_FUNCTION_6(v11);
                  if (self->_correctFlowWithSameBaseFlowKernel)
                  {
                    v12 = [(VEMetalBase *)self createKernel:@"holeMapFromBuffer"];
                    OUTLINED_FUNCTION_6(v12);
                    if (self->_holeMapKernel)
                    {
                      v13 = [(VEMetalBase *)self createKernel:@"flowFailureMask"];
                      OUTLINED_FUNCTION_6(v13);
                      if (self->_flowFailureDetectionKernel)
                      {
                        v14 = [(VEMetalBase *)self createKernel:@"collectWrongFlowStats"];
                        OUTLINED_FUNCTION_6(v14);
                        if (self->_collectWrongFlowStatsKernel)
                        {
                          v15 = [(VEMetalBase *)self createKernel:@"initializeTexture"];
                          OUTLINED_FUNCTION_6(v15);
                          if (self->_initializeTextureKernel)
                          {
                            v16 = [(VEMetalBase *)self createKernel:@"initializeTexture_one_channel"];
                            OUTLINED_FUNCTION_6(v16);
                            if (self->_initializeTexture_oneChannelKernel)
                            {
                              return 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)allocateInternalStorage:(id *)a3 flowWidth:(unint64_t)a4 flowHeight:(unint64_t)a5 depthWidth:(unint64_t)a6 depthHeight:(unint64_t)a7 interleaveFactor:(unint64_t)a8
{
  v14 = OUTLINED_FUNCTION_19(a6, a7);
  a3->var0 = v14;
  if (v14 && (createTexturesFromCVPixelBuffer(v14, self->super._device, 2, 1uLL), v15 = objc_claimAutoreleasedReturnValue(), var4 = a3->var4, a3->var4 = v15, var4, a3->var4) && (v17 = OUTLINED_FUNCTION_30(), (a3->var1 = v17) != 0) && (OUTLINED_FUNCTION_9(), createTexturesFromCVPixelBuffer(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), var5 = a3->var5, a3->var5 = v22, var5, a3->var5) && (PixelBuffer = CreatePixelBuffer(a4, a5, 1380411457), (a3->var2 = PixelBuffer) != 0) && (createTexturesFromCVPixelBuffer(PixelBuffer, self->super._device, 4, 1uLL), v25 = objc_claimAutoreleasedReturnValue(), var6 = a3->var6, a3->var6 = v25, var6, a3->var6) && ([(PseudoDepthGenerator *)self createOutputBufferWidth:a6 height:a7 channels:2], v27 = objc_claimAutoreleasedReturnValue(), var8 = a3->var8, a3->var8 = v27, var8, a3->var8) && (v29 = OUTLINED_FUNCTION_30(), (a3->var3 = v29) != 0) && (OUTLINED_FUNCTION_9(), createTexturesFromCVPixelBuffer(v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), var7 = a3->var7, a3->var7 = v34, var7, a3->var7))
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (int64_t)allocateDepthInternalBuffersWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7
{
  v12 = OUTLINED_FUNCTION_19(a5, a6);
  self->_partialForwardDepth = v12;
  if (v12
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v17), self->_partialForwardDepthTexture)
    && (v18 = OUTLINED_FUNCTION_1_8(), PixelBuffer = CreatePixelBuffer(v18, v20, v19 | 0x32430000u), (self->_partialBackwardDepth = PixelBuffer) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v26), self->_partialBackwardDepthTexture)
    && (v27 = OUTLINED_FUNCTION_1_8(), v30 = CreatePixelBuffer(v27, v29, v28 | 0x4C300000u), (self->_partialTwoSideDepth = v30) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v31, v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v35), self->_partialTwoSideDepthTexture)
    && (v36 = OUTLINED_FUNCTION_1_8(), v39 = CreatePixelBuffer(v36, v38, v37 | 0x4C300000u), (self->_hrStillMap = v39) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v40, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v44), self->_hrStillMapTexture)
    && (v45 = CreatePixelBuffer((a5 << 46) >> 48, (a6 << 46) >> 48, 1278226536), (self->_dsConflictMap = v45) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v46, v47, v48, v49), v50 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v50), self->_dsConflictMapTexture)
    && (v51 = OUTLINED_FUNCTION_1_8(), v54 = CreatePixelBuffer(v51, v53, v52 | 0x4C300000u), (self->_extendedConflictMap = v54) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v59), self->_extendedConflictMapTexture)
    && (v60 = OUTLINED_FUNCTION_1_8(), v63 = CreatePixelBuffer(v60, v62, v61 | 0x4C300000u), (self->_dsFlowEdge = v63) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v64, v65, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v68), self->_dsFlowEdgeTexture)
    && (v69 = vcvtms_u32_f32((a5 + -20.0) / 5.0), v70 = vcvtms_u32_f32((a6 + -20.0) / 5.0), v71 = OUTLINED_FUNCTION_19(v69, v70), (self->_fgFlow = v71) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v72, v73, v74, v75), v76 = objc_claimAutoreleasedReturnValue(), fgFlowTexture = self->_fgFlowTexture, self->_fgFlowTexture = v76, fgFlowTexture, self->_fgFlowTexture)
    && (v78 = OUTLINED_FUNCTION_19(v69, v70), (self->_bgFlow = v78) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v79, v80, v81, v82), v83 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v83), self->_bgFlowTexture)
    && (v84 = OUTLINED_FUNCTION_1_8(), v87 = CreatePixelBuffer(v84, v86, v85 | 0x32430000u), (self->_prevBackwardDepth = v87) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v88, v89, v90, v91), v92 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v92), self->_prevBackwardDepthTexture)
    && (v93 = OUTLINED_FUNCTION_1_8(), v96 = CreatePixelBuffer(v93, v95, v94 | 0x32430000u), (self->_prevBack4XFlow = v96) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v97, v98, v99, v100), v101 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v101), self->_prevBack4xFlowTexture)
    && (v102 = CreatePixelBuffer(a3, a4, 1380411457), (self->_prevFlowFailureMask = v102) != 0)
    && (createTexturesFromCVPixelBuffer(v102, self->super._device, 4, 1uLL), v103 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v103), self->_prevFlowFailureMaskTexture)
    && (v104 = OUTLINED_FUNCTION_19(a3, a4), (self->_correctedForwardFlow = v104) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v105, v106, v107, v108), v109 = objc_claimAutoreleasedReturnValue(), correctedForwardFlowTexture = self->_correctedForwardFlowTexture, self->_correctedForwardFlowTexture = v109, correctedForwardFlowTexture, self->_correctedForwardFlowTexture)
    && (v111 = OUTLINED_FUNCTION_1_8(), v114 = CreatePixelBuffer(v111, v113, v112 | 0x32430000u), (self->_upscaledCorrectedForwardFlow = v114) != 0)
    && (OUTLINED_FUNCTION_3_4(), createTexturesFromCVPixelBuffer(v115, v116, v117, v118), v119 = objc_claimAutoreleasedReturnValue(), upscaledCorrectedForwardFlowTexture = self->_upscaledCorrectedForwardFlowTexture, self->_upscaledCorrectedForwardFlowTexture = v119, upscaledCorrectedForwardFlowTexture, self->_upscaledCorrectedForwardFlowTexture)
    && (v121 = OUTLINED_FUNCTION_1_8(), v124 = CreatePixelBuffer(v121, v123, v122 | 0x4C300000u), (self->_correctedForwardFlowHoleMap = v124) != 0)
    && (OUTLINED_FUNCTION_4_1(), createTexturesFromCVPixelBuffer(v125, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), correctedForwardFlowHoleMapTexture = self->_correctedForwardFlowHoleMapTexture, self->_correctedForwardFlowHoleMapTexture = v129, correctedForwardFlowHoleMapTexture, self->_correctedForwardFlowHoleMapTexture)
    && ([(PseudoDepthGenerator *)self createOutputBufferWidth:a5 height:a6 channels:2], v131 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_6(v131), self->_correctedForwardFlowForwarpBuffer))
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (int64_t)allocateBufferAndTextureWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_2_4();
  result = [v7 allocateInternalStorage:? flowWidth:? flowHeight:? depthWidth:? depthHeight:? interleaveFactor:?];
  if (!result)
  {
    OUTLINED_FUNCTION_2_4();
    result = [v9 allocateInternalStorage:? flowWidth:? flowHeight:? depthWidth:? depthHeight:? interleaveFactor:?];
    if (!result)
    {
      v10 = OUTLINED_FUNCTION_6_0();

      return [v10 allocateDepthInternalBuffersWithFlowWidth:? flowHeight:? depthWidth:? depthHeight:? interleaveFactor:?];
    }
  }

  return result;
}

- (int64_t)allocateFlowOnlyBufferWithFlowWidth:(unint64_t)a3 flowHeight:(unint64_t)a4 depthWidth:(unint64_t)a5 depthHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_2_4();
  result = [v7 allocateInternalStorage:? flowWidth:? flowHeight:? depthWidth:? depthHeight:? interleaveFactor:?];
  if (!result)
  {
    OUTLINED_FUNCTION_2_4();

    return [v9 allocateInternalStorage:? flowWidth:? flowHeight:? depthWidth:? depthHeight:? interleaveFactor:?];
  }

  return result;
}

- (int64_t)deriveDepthFromFlowDownscaleFirstImage:(id)a3 downscaleSecondImage:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 destination:(id)a7 interleave_factor:(unint64_t)a8 timeScale:(float)a9
{
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = v17;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = a7;
  v24 = 12;
  if (v18 && v19 && v20 && v21)
  {
    *&v23 = a9;
    v25 = [v16 calculateBackwarpErrorFromDownscaleFirst:v18 downscaleSecond:v19 backwardFlow:v20 forwardFlow:v21 backwardStorage:v16 + 248 forwardStorage:v16 + 176 interleave_factor:v23 timeScale:a8];
    if (!v25)
    {
      v25 = [OUTLINED_FUNCTION_7_0() deriveDepthFromForwardFlow:? backwardFlow:? Destination:?];
    }

    v24 = v25;
  }

  return v24;
}

- (int64_t)deriveDepthFromForwardFlow:(id)a3 backwardFlow:(id)a4 Destination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 12;
  if (v8 && v9 && v10)
  {
    v13 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    [v13 enqueue];
    [(MTLTexture *)self->_forwardStorage.upscaledFlowTexture width];
    [(MTLTexture *)self->_forwardStorage.upscaledFlowTexture height];
    v14 = [OUTLINED_FUNCTION_7_0() encodeForwarpLossWithTrackToCommandBuffer:? input:? flow:? output:?];
    if (!v14)
    {
      v15 = [OUTLINED_FUNCTION_7_0() encodeHoleMapToCommandBuffer:? fromBuffer:? toTexture:? inputSize:?];
      if (v15 || (LOBYTE(v17) = 1, (v15 = [OUTLINED_FUNCTION_7_0() encodeFlowFailureMaskGenerationToCommandBuffer:self->_forwardStorage.holeMapTexture backwardFlow:v17 forwardFlow:? backwardFlowError:? forwardFlowError:? backwardErrorMap:? forwardHoleMap:? isBackwardFlow:?]) != 0))
      {
        v12 = v15;
        goto LABEL_12;
      }

      v14 = [OUTLINED_FUNCTION_7_0() encodeForwarpLossWithTrackToCommandBuffer:? input:? flow:? output:?];
      if (!v14)
      {
        v14 = [OUTLINED_FUNCTION_7_0() encodeHoleMapToCommandBuffer:? fromBuffer:? toTexture:? inputSize:?];
        if (!v14)
        {
          v14 = [OUTLINED_FUNCTION_7_0() encodeInitialieTextureToCommandBuffer:? bestError:?];
          if (!v14)
          {
            v12 = [OUTLINED_FUNCTION_7_0() encodeToCommandBufferConvertDepth:? fromBuffer:? holeMap:? failureMask:? toTexture:? inputSize:?];
            if (!v12)
            {
              [v13 commit];
              [(VEMetalBase *)self EnableGpuWaitForComplete];
              [OUTLINED_FUNCTION_7_0() commandBufferWait:? flag:?];
            }

            goto LABEL_12;
          }
        }
      }
    }

    v12 = v14;
LABEL_12:
  }

  return v12;
}

- (int64_t)flowFailureAndCorrectionFromDownscaleFirstImage:(id)a3 downscaleSecondImage:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 prevBackFlow:(id)a7 remainedErrorMask:(id)a8 effectiveResolution:(CGSize)a9 interleave_factor:(unint64_t)a10 timeScale:(float)a11 warmup:(BOOL)a12
{
  height = a9.height;
  width = a9.width;
  OUTLINED_FUNCTION_14();
  v21 = v20;
  v23 = v22;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = a7;
  v28 = a8;
  v30 = v28;
  v31 = 12;
  if (v23 && v24 && v25 && v26 && v27 && v28)
  {
    *&v29 = a11;
    v32 = [v21 calculateBackwarpErrorFromDownscaleFirst:v23 downscaleSecond:v24 backwardFlow:v25 forwardFlow:v26 backwardStorage:v21 + 248 forwardStorage:v21 + 176 interleave_factor:v29 timeScale:a10];
    if (!v32)
    {
      v33 = [v21 encodeSceneChangeDetectionFromFlowFailureMask:*(v21 + 224) effectiveResolution:{width, height}];
      *(v21 + 573) = v33;
      if (v33)
      {
        v31 = 0;
        goto LABEL_12;
      }

      LOBYTE(v36) = a12;
      *&v34 = a11;
      v32 = [v21 flowFailureDetectionAndCorrectionFromForwardFlow:v26 backwardFlow:v25 inputFlow:v27 backwardStorage:v21 + 248 forwardStorage:v21 + 176 interleaveFactor:a10 timeScale:v34 remainedErrorMask:v30 warmup:v36];
    }

    v31 = v32;
  }

LABEL_12:

  return v31;
}

- (int64_t)approximateDepthWithBackwarpLossFromFirstImage:(__CVBuffer *)a3 secondImage:(__CVBuffer *)a4 fullresFlow:(__CVBuffer *)a5 depth:(__CVBuffer *)a6 interleavFactor:(unint64_t)a7 timeScale:(float)a8
{
  v8 = 12;
  if (a3 && a4 && a5 && a6)
  {
    v14 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    [v14 enqueue];
    OUTLINED_FUNCTION_9();
    v19 = createTexturesFromCVPixelBuffer(v15, v16, v17, v18);
    if (v19)
    {
      v20 = v19;
      v21 = createTexturesFromCVPixelBuffer(a5, self->super._device, 2, 1uLL);
      if (v21)
      {
        v22 = v21;
        v23 = createRGBATextureFromCVPixelBuffer(a3, self->super._device);
        if (v23)
        {
          v24 = v23;
          v25 = createRGBATextureFromCVPixelBuffer(a4, self->super._device);
          if (v25)
          {
            *&v26 = a8;
            v8 = [(Backwarp_Ext *)self->_backwarp encodeBackwarpLossToCommandBuffer:v14 first:v24 second:v25 flow:v22 timeScale:v20 destination:v26];
            if (!v8)
            {
              [v14 commit];
              [(VEMetalBase *)self commandBufferWait:v14 flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];

              v14 = 0;
              v20 = 0;
              v22 = 0;
              v24 = 0;
              v25 = 0;
            }
          }

          else
          {
            v8 = 9;
          }
        }

        else
        {
          v8 = 9;
        }
      }

      else
      {
        v8 = 9;
      }
    }

    else
    {
      v8 = 9;
    }
  }

  return v8;
}

- (int64_t)PseudoDepthFromBackwardFlow:(id)a3 forwardFlow:(id)a4 fullresFlow:(id)a5 depth:(id)a6 prevBackFlow:(id)a7 flowErrorMask:(id)a8 interleave_factor:(unint64_t)a9 timeScale:(float)a10 downscale_factor:(unint64_t)a11
{
  v18 = a3;
  v19 = a7;
  v20 = v19;
  v21 = 12;
  if (v18 && a4 && a5 && a6 && v19 && a8)
  {
    v31 = v19;
    commandQueue = self->super._commandQueue;
    v23 = a8;
    v24 = a6;
    v25 = a5;
    v26 = a4;
    v27 = [(MTLCommandQueue *)commandQueue commandBuffer];
    [v27 enqueue];
    *&v28 = a11;
    *&v29 = a10;
    v21 = [(PseudoDepthGenerator *)self threeFramePseudoDepthFromForwardFlow:v26 backwardFlow:v18 fullresFlow:v25 destination:v24 flowErrorMask:v23 interleaveFactor:a9 timeScale:v29 downscaleFactor:v28 commandBuffer:v27];

    if (v21)
    {
      v20 = v31;
    }

    else
    {
      v20 = v31;
      v21 = [(ImageProcessUtility *)self->_imageProcessUtility encodeCopyTextureToCommandBuffer:v27 source:v18 destination:v31];
      if (!v21)
      {
        [v27 commit];
        [(VEMetalBase *)self commandBufferWait:v27 flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];

        v27 = 0;
      }
    }
  }

  return v21;
}

- (int64_t)calculateBackwarpErrorFromDownscaleFirst:(id)a3 downscaleSecond:(id)a4 backwardFlow:(id)a5 forwardFlow:(id)a6 backwardStorage:(id *)a7 forwardStorage:(id *)a8 interleave_factor:(unint64_t)a9 timeScale:(float)a10
{
  OUTLINED_FUNCTION_14();
  v17 = v16;
  v19 = v18;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v22;
  v24 = 12;
  if (v19 && v20 && v21 && v22 && a7 && a8)
  {
    v25 = [*(v17 + 24) commandBuffer];
    [v25 enqueue];
    v26 = [*(v17 + 40) encodeUpscaleFlowToCommandBuffer:v25 source:v21 destination:a7->var4];
    if (v26 || (v26 = [*(v17 + 40) encodeUpscaleFlowToCommandBuffer:v25 source:v23 destination:a8->var4]) != 0 || (*&v27 = a10, (v26 = objc_msgSend(*(v17 + 40), "encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:", v25, v20, v19, a7->var4, a7->var5, v27)) != 0) || (*&v28 = a10, (v26 = objc_msgSend(*(v17 + 40), "encodeBackwarpLossToCommandBuffer:first:second:flow:timeScale:destination:", v25, v19, v20, a8->var4, a8->var5, v28)) != 0))
    {
      v24 = v26;
    }

    else
    {
      LOBYTE(v30) = 0;
      v24 = [v17 encodeFlowFailureMaskGenerationToCommandBuffer:v25 backwardFlow:v23 forwardFlow:v21 backwardFlowError:*(v17 + 216) forwardFlowError:*(v17 + 288) backwardErrorMap:*(v17 + 224) forwardHoleMap:*(v17 + 304) isBackwardFlow:v30];
      if (!v24)
      {
        [v25 commit];
        [v17 commandBufferWait:v25 flag:{objc_msgSend(v17, "EnableGpuWaitForComplete")}];

        v25 = 0;
      }
    }
  }

  return v24;
}

- (int64_t)flowFailureDetectionAndCorrectionFromForwardFlow:(id)a3 backwardFlow:(id)a4 inputFlow:(id)a5 backwardStorage:(id *)a6 forwardStorage:(id *)a7 interleaveFactor:(unint64_t)a8 timeScale:(float)a9 remainedErrorMask:(id)a10 warmup:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a10;
  v20 = v19;
  v21 = 12;
  if (v16 && v17 && v18 && a6 && a7 && v19)
  {
    v33 = v18;
    v22 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    [v22 enqueue];
    v23 = [a7->var4 width];
    [a7->var4 height];
    v34 = v17;
    if (self->_previousFrameAvailable && [(PseudoDepthGenerator *)self flowFailureDetection])
    {
      LOBYTE(v32) = 0;
      v24 = [OUTLINED_FUNCTION_6_0() encodeCorrectFlowToCommandBuffer:self->_correctedForwardFlowTexture input:v32 forwardFlow:? inputFlowFailureMask:? forwardFlowFailureMask:? remainedWrongFlow:? outputFlow:? isBackwardFlow:?];
      if (v24)
      {
        goto LABEL_33;
      }

      v25 = v16;
      v16 = v23;
      v17 = v25;
      v26 = [Backwarp_Ext encodeUpscaleFlowToCommandBuffer:"encodeUpscaleFlowToCommandBuffer:source:destination:" source:v22 destination:?];
      if (v26)
      {
        goto LABEL_36;
      }

      v26 = [(Backwarp_Ext *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v22 source:self->_correctedForwardFlowTexture destination:self->_upscaledCorrectedForwardFlowTexture];
      if (v26)
      {
        goto LABEL_36;
      }

      v35 = 1;
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v27 = [OUTLINED_FUNCTION_6_0() encodeInitialieTextureToCommandBuffer:? bestError:?];
      if (v27)
      {
        v21 = v27;
        v18 = v33;
        goto LABEL_31;
      }

      v35 = 0;
    }

    v24 = [OUTLINED_FUNCTION_6_0() encodeForwarpLossWithTrackToCommandBuffer:? input:? flow:? output:?];
    if (v24)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_20();
    v24 = [OUTLINED_FUNCTION_6_0() encodeHoleMapToCommandBuffer:? fromBuffer:? toTexture:? inputSize:?];
    if (v24)
    {
      goto LABEL_33;
    }

    if (!v35)
    {
LABEL_20:
      LOBYTE(v32) = 1;
      v24 = [OUTLINED_FUNCTION_6_0() encodeFlowFailureMaskGenerationToCommandBuffer:a7->var7 backwardFlow:v32 forwardFlow:? backwardFlowError:? forwardFlowError:? backwardErrorMap:? forwardHoleMap:? isBackwardFlow:?];
      if (!v24)
      {
        v24 = [OUTLINED_FUNCTION_6_0() encodeForwarpLossWithTrackToCommandBuffer:? input:? flow:? output:?];
        if (!v24)
        {
          OUTLINED_FUNCTION_20();
          v24 = [OUTLINED_FUNCTION_6_0() encodeHoleMapToCommandBuffer:? fromBuffer:? toTexture:? inputSize:?];
          if (!v24)
          {
            v17 = v16;
            v16 = 480;
            v28 = [OUTLINED_FUNCTION_6_0() encodeInitialieTextureToCommandBuffer:? bestError:?];
            if (!v28)
            {
              v28 = [OUTLINED_FUNCTION_6_0() encodeInitialieTextureToCommandBuffer:? bestError:?];
              if (!v28)
              {
                v16 = v23;
                OUTLINED_FUNCTION_20();
                v28 = [OUTLINED_FUNCTION_6_0() encodeToCommandBufferConvertDepth:? fromBuffer:? holeMap:? failureMask:? toTexture:? inputSize:?];
                if (!v28)
                {
                  OUTLINED_FUNCTION_20();
                  v29 = [OUTLINED_FUNCTION_6_0() encodeToCommandBufferConvertDepth:? fromBuffer:? holeMap:? failureMask:? toTexture:? inputSize:?];
                  if (v29)
                  {
                    v21 = v29;
                    v18 = v33;
                    v16 = v17;
                    v17 = v34;
                  }

                  else
                  {
                    v18 = v33;
                    v16 = v17;
                    v17 = v34;
                    if (a11 && ((v30 = -[ImageProcessUtility encodeCopyTextureToCommandBuffer:source:destination:](self->_imageProcessUtility, "encodeCopyTextureToCommandBuffer:source:destination:", v22, v34, v33)) != 0 || (v30 = [OUTLINED_FUNCTION_6_0() saveInternalStateWithCommandBuffer:?]) != 0))
                    {
                      v21 = v30;
                    }

                    else
                    {
                      [v22 commit];
                      [(VEMetalBase *)self EnableGpuWaitForComplete];
                      [OUTLINED_FUNCTION_6_0() commandBufferWait:? flag:?];
                      v21 = 0;
                    }
                  }

                  goto LABEL_31;
                }
              }
            }

            v21 = v28;
            OUTLINED_FUNCTION_26();
            goto LABEL_35;
          }
        }
      }

LABEL_33:
      v21 = v24;
LABEL_35:
      v18 = v33;
LABEL_31:

      goto LABEL_32;
    }

    v17 = v16;
    v16 = v23;
    v26 = [OUTLINED_FUNCTION_6_0() encodeForwarpLossWithTrackToCommandBuffer:? input:? flow:? output:?];
    if (!v26)
    {
      OUTLINED_FUNCTION_20();
      [OUTLINED_FUNCTION_6_0() encodeHoleMapToCommandBuffer:? fromBuffer:? toTexture:? inputSize:?];
      OUTLINED_FUNCTION_26();
      if (v24)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

LABEL_36:
    v21 = v26;
    v18 = v33;
    OUTLINED_FUNCTION_26();
    goto LABEL_31;
  }

LABEL_32:

  return v21;
}

- (int64_t)encodeFlowFailureMaskGenerationToCommandBuffer:(id)a3 backwardFlow:(id)a4 forwardFlow:(id)a5 backwardFlowError:(id)a6 forwardFlowError:(id)a7 backwardErrorMap:(id)a8 forwardHoleMap:(id)a9 isBackwardFlow:(BOOL)a10
{
  OUTLINED_FUNCTION_5_0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a8;
  v24 = a9;
  v25 = v24;
  v26 = 12;
  if (v19 && v20 && v21 && v22 && v23 && v24)
  {
    v27 = [v15 computeCommandEncoder];
    v45 = a10;
    [v21 width];
    v44 = OUTLINED_FUNCTION_13([v19 width]);
    if (v27)
    {
      [v27 setComputePipelineState:*(v17 + 128)];
      [v27 setTexture:v20 atIndex:0];
      [v27 setTexture:v19 atIndex:1];
      [v27 setTexture:v22 atIndex:2];
      [v27 setTexture:v21 atIndex:3];
      [v27 setTexture:v23 atIndex:4];
      v28 = [v27 setTexture:v25 atIndex:5];
      OUTLINED_FUNCTION_29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      [v27 setBytes:&v44 length:4 atIndex:1];
      [v23 width];
      [v23 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_23();
      [v27 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v27 endEncoding];
      v26 = 0;
    }

    else
    {
      v26 = 9;
    }
  }

  return v26;
}

- (int64_t)encodeCorrectFlowToCommandBuffer:(id)a3 input:(id)a4 forwardFlow:(id)a5 inputFlowFailureMask:(id)a6 forwardFlowFailureMask:(id)a7 remainedWrongFlow:(id)a8 outputFlow:(id)a9 isBackwardFlow:(BOOL)a10
{
  OUTLINED_FUNCTION_5_0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a8;
  v24 = a9;
  v25 = 12;
  if (v19 && v20 && v21 && v22 && v23)
  {
    v26 = [v15 computeCommandEncoder];
    v27 = v26;
    if (v26)
    {
      [v26 setComputePipelineState:*(v17 + 136)];
      OUTLINED_FUNCTION_11();
      [v28 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v29 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_25(v27, v30);
      [v27 setTexture:v22 atIndex:3];
      [v27 setTexture:v23 atIndex:4];
      v31 = [v27 setTexture:v24 atIndex:5];
      OUTLINED_FUNCTION_29(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, a10);
      [v19 width];
      [v19 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_23();
      [v27 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v27 endEncoding];
      v25 = 0;
    }

    else
    {
      v25 = 9;
    }
  }

  return v25;
}

- (int64_t)encodeHoleMapToCommandBuffer:(id)a3 fromBuffer:(id)a4 toTexture:(id)a5 inputSize:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [a3 computeCommandEncoder];
    v15 = v14;
    if (v14)
    {
      v18 = vmovn_s64(*&a6->var0);
      [v14 setComputePipelineState:self->_holeMapKernel];
      OUTLINED_FUNCTION_11();
      [v16 setBuffer:? offset:? atIndex:?];
      [v15 setTexture:v12 atIndex:0];
      [v15 setBytes:&v18 length:8 atIndex:1];
      [v12 width];
      [v12 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_23();
      [v15 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v15 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)threeFramePseudoDepthFromForwardFlow:(id)a3 backwardFlow:(id)a4 fullresFlow:(id)a5 destination:(id)a6 flowErrorMask:(id)a7 interleaveFactor:(unint64_t)a8 timeScale:(float)a9 downscaleFactor:(float)a10 commandBuffer:(id)a11
{
  OUTLINED_FUNCTION_14();
  v18 = v17;
  v20 = v19;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = a7;
  v25 = a11;
  v26 = 12;
  if (v20 && v21 && v22 && v23 && v24)
  {
    v33 = a8;
    v27 = [v22 width];
    v28 = [v22 height];
    if ((*(v18 + 572) & 1) == 0)
    {
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
    }

    if (*(v18 + 573))
    {
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
      [OUTLINED_FUNCTION_10() encodeInitialieTextureToCommandBuffer:? bestError:?];
    }

    [OUTLINED_FUNCTION_10() encodeCombineTwoSideDepthToCommandBuffer:? forwardDepth:? backwarpDepth:? destination:?];
    [OUTLINED_FUNCTION_10() encodeStillForegroundMapToCommandBuffer:? backwardFlowConfMap:? forwardFlowConfMap:? frFlow:? output:?];
    [OUTLINED_FUNCTION_10() encodeExtendDepthInStillRegionToCommandBuffer:? inputDepthMap:? stillMap:? output:?];
    [OUTLINED_FUNCTION_10() encodeFillHrConflictMapToCommandBuffer:? inputDepthMap:? extendedMap:? stillMap:? output:?];
    if (*(v18 + 573) == 1)
    {
      v30 = (v18 + 552);
    }

    else
    {
      v30 = (v18 + 208);
    }

    *&v29 = a10;
    v31 = [v18 propagatePartialDepth:*(v18 + 512) downscaleFlow:*v30 fullResFlow:v22 downscaleWidth:v27 >> 2 downscaleHeight:v28 >> 2 downscale_factor:v33 interleaveFactor:v29 commandBuffer:v25 fullresDepth:v23];
    if (!v31)
    {
      v31 = [OUTLINED_FUNCTION_10() saveInternalStateWithCommandBuffer:?];
    }

    v26 = v31;
  }

  return v26;
}

- (int64_t)encodeForwarpLossWithTrackToCommandBuffer:(id)a3 input:(id)a4 flow:(id)a5 output:(id)a6
{
  OUTLINED_FUNCTION_12();
  v9 = v8;
  v11 = v10;
  v12 = v6;
  v13 = v7;
  v14 = v13;
  v15 = 12;
  if (v11 && v12 && v13)
  {
    v16 = v9;
    v17 = [v16 blitCommandEncoder];
    [v17 fillBuffer:v14 range:0 value:{objc_msgSend(v14, "length"), 0}];
    [v17 endEncoding];
    v18 = [v16 computeCommandEncoder];

    if (v18)
    {
      OUTLINED_FUNCTION_32(56);
      OUTLINED_FUNCTION_11();
      [v19 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v20 setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_22() setBuffer:? offset:? atIndex:?];
      [v11 width];
      [v11 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v18 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v18 endEncoding];
      v15 = 0;
    }

    else
    {
      v15 = 9;
    }
  }

  return v15;
}

- (int64_t)encodeToCommandBufferConvertDepth:(id)a3 fromBuffer:(id)a4 holeMap:(id)a5 failureMask:(id)a6 toTexture:(id)a7 inputSize:(id *)a8
{
  OUTLINED_FUNCTION_27();
  v28 = v11;
  v29 = v12;
  v14 = v13;
  OUTLINED_FUNCTION_5_0();
  v16 = v15;
  v18 = v17;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v21;
  if (v18 && v19 && v20 && v21)
  {
    v23 = [v16 computeCommandEncoder];
    if (v23)
    {
      v27[0] = vmovn_s64(*v14);
      [v20 width];
      OUTLINED_FUNCTION_13([v19 width]);
      OUTLINED_FUNCTION_32(64);
      OUTLINED_FUNCTION_11();
      [v24 setBuffer:? offset:? atIndex:?];
      [v23 setBytes:v27 length:8 atIndex:1];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_7_0() setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v25 setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_22() setTexture:? atIndex:?];
      [v22 width];
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v23 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v23 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
  return result;
}

- (int64_t)encodeCombineTwoSideDepthToCommandBuffer:(id)a3 forwardDepth:(id)a4 backwarpDepth:(id)a5 destination:(id)a6
{
  OUTLINED_FUNCTION_12();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v6;
  v15 = v7;
  v16 = v15;
  v17 = 12;
  if (v13 && v14 && v15)
  {
    v18 = [v9 computeCommandEncoder];
    v19 = v18;
    if (v18)
    {
      [v18 setComputePipelineState:*(v11 + 72)];
      OUTLINED_FUNCTION_11();
      [v20 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v21 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_25(v19, v22);
      [v16 width];
      [v16 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v19 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v19 endEncoding];
      v17 = 0;
    }

    else
    {
      v17 = 9;
    }
  }

  return v17;
}

- (int64_t)propagatePartialDepth:(id)a3 downscaleFlow:(id)a4 fullResFlow:(id)a5 downscaleWidth:(unint64_t)a6 downscaleHeight:(unint64_t)a7 downscale_factor:(float)a8 interleaveFactor:(unint64_t)a9 commandBuffer:(id)a10 fullresDepth:(id)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a10;
  v19 = a11;
  v20 = v19;
  v21 = 12;
  if (v15 && v16 && v17 && v19)
  {
    v22 = [v17 width];
    LODWORD(v23) = 20.0;
    if (v22 <= 0x7D0)
    {
      v24 = [v17 height];
      LODWORD(v23) = 10.0;
      if (v24 > 0x7D0)
      {
        *&v23 = 20.0;
      }
    }

    v25 = [(ImageProcessUtility *)self->_imageProcessUtility encodeFlowEdgeToCommandBuffer:v18 source:v16 destination:self->_dsFlowEdgeTexture edgeThresh:v23];
    if (v25)
    {
      v21 = v25;
    }

    else
    {
      [OUTLINED_FUNCTION_7_0() encodeTilebaseFlowAverageToCommandBuffer:? depth:? flow:? flowEdge:? fgTile:? bgTile:?];
      v26 = OUTLINED_FUNCTION_7_0();
      *&v27 = a8;
      [v26 encodePropagateDepthToCommandBuffer:v27 flow:? fgTile:? bgTile:? scale:? destination:?];
      v21 = 0;
    }
  }

  return v21;
}

- (int64_t)encodeStillForegroundMapToCommandBuffer:(id)a3 backwardFlowConfMap:(id)a4 forwardFlowConfMap:(id)a5 frFlow:(id)a6 output:(id)a7
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  v13 = v12;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v16;
  if (v13 && v14 && v15 && v16)
  {
    v18 = [v11 computeCommandEncoder];
    if (v18)
    {
      [v15 width];
      v19 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_13(v19);
      [v13 width];
      v20 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_13(v20);
      OUTLINED_FUNCTION_32(96);
      [OUTLINED_FUNCTION_22() setTexture:? atIndex:?];
      [v18 setTexture:v13 atIndex:1];
      [v18 setTexture:v14 atIndex:2];
      [OUTLINED_FUNCTION_7_0() setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [v17 width];
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_23();
      [v18 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v18 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
  return result;
}

- (int64_t)encodeExtendDepthInStillRegionToCommandBuffer:(id)a3 inputDepthMap:(id)a4 stillMap:(id)a5 output:(id)a6
{
  OUTLINED_FUNCTION_12();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v6;
  v15 = v7;
  v16 = v15;
  v17 = 12;
  if (v13 && v14 && v15)
  {
    v18 = [v9 computeCommandEncoder];
    if (v18)
    {
      [v13 width];
      v25 = OUTLINED_FUNCTION_13([v16 width]);
      [v14 width];
      v24 = OUTLINED_FUNCTION_13([v16 width]);
      [v14 width];
      v23 = OUTLINED_FUNCTION_13([v13 width]);
      [v18 setComputePipelineState:*(v11 + 104)];
      OUTLINED_FUNCTION_11();
      [v19 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v20 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_25(v18, v21);
      [v18 setBytes:&v25 length:4 atIndex:0];
      [v18 setBytes:&v24 length:4 atIndex:1];
      [v18 setBytes:&v23 length:4 atIndex:2];
      [v16 width];
      [v16 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v18 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v18 endEncoding];
      v17 = 0;
    }

    else
    {
      v17 = 9;
    }
  }

  return v17;
}

- (int64_t)encodeFillHrConflictMapToCommandBuffer:(id)a3 inputDepthMap:(id)a4 extendedMap:(id)a5 stillMap:(id)a6 output:(id)a7
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  v13 = v12;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v16;
  if (v13 && v14 && v15 && v16)
  {
    v18 = [v11 computeCommandEncoder];
    if (v18)
    {
      [v14 width];
      v19 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_13(v19);
      [v15 width];
      v20 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_13(v20);
      OUTLINED_FUNCTION_32(112);
      OUTLINED_FUNCTION_11();
      [v21 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v22 setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_7_0() setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_22() setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [v17 width];
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_23();
      [v18 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v18 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
  return result;
}

- (int64_t)encodeTilebaseFlowAverageToCommandBuffer:(id)a3 depth:(id)a4 flow:(id)a5 flowEdge:(id)a6 fgTile:(id)a7 bgTile:(id)a8
{
  OUTLINED_FUNCTION_5_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = a8;
  v22 = v21;
  v23 = 12;
  if (v17 && v18 && v19 && v20 && v21)
  {
    v24 = [v13 computeCommandEncoder];
    v25 = v24;
    if (v24)
    {
      [v24 setComputePipelineState:*(v15 + 80)];
      OUTLINED_FUNCTION_11();
      [v26 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v27 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_25(v25, v28);
      [v25 setTexture:v20 atIndex:3];
      [OUTLINED_FUNCTION_6_0() setTexture:? atIndex:?];
      [v20 width];
      [v20 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v25 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v25 endEncoding];
      v23 = 0;
    }

    else
    {
      v23 = 9;
    }
  }

  return v23;
}

- (int64_t)encodePropagateDepthToCommandBuffer:(id)a3 flow:(id)a4 fgTile:(id)a5 bgTile:(id)a6 scale:(float)a7 destination:(id)a8
{
  OUTLINED_FUNCTION_12();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v8;
  v19 = v9;
  v20 = a8;
  v21 = v20;
  v22 = 12;
  if (v17 && v18 && v19 && v20)
  {
    v23 = [v13 computeCommandEncoder];
    if (v23)
    {
      v24 = [*(v15 + 16) newBufferWithLength:4 options:0];
      *[v24 contents] = a7;
      [v23 setComputePipelineState:*(v15 + 88)];
      OUTLINED_FUNCTION_11();
      [v25 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_9();
      [v26 setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_22() setTexture:? atIndex:?];
      [OUTLINED_FUNCTION_7_0() setTexture:? atIndex:?];
      [v23 setBuffer:v24 offset:0 atIndex:0];
      [v21 width];
      [v21 height];
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15();
      [v23 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v23 endEncoding];

      v22 = 0;
    }

    else
    {
      v22 = 9;
    }
  }

  return v22;
}

- (int64_t)encodeInitialieTextureToCommandBuffer:(id)a3 bestError:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [a3 computeCommandEncoder];
    if (v7)
    {
      v8 = [v6 arrayLength];
      v9 = &OBJC_IVAR___PseudoDepthGenerator__initializeTexture_oneChannelKernel;
      if (v8 > 1)
      {
        v9 = &OBJC_IVAR___PseudoDepthGenerator__initializeTextureKernel;
      }

      [v7 setComputePipelineState:*(&self->super.super.isa + *v9)];
      OUTLINED_FUNCTION_11();
      [v10 setTexture:? atIndex:?];
      v11 = ([v6 width] + 15) >> 4;
      [v6 height];
      OUTLINED_FUNCTION_8_0();
      v15 = v12;
      OUTLINED_FUNCTION_15();
      [v7 dispatchThreadgroups:vdupq_n_s64(0x10uLL) threadsPerThreadgroup:{1, v11, v15, 1}];
      [v7 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  else
  {
    v13 = 12;
  }

  return v13;
}

- (int64_t)saveInternalStateWithCommandBuffer:(id)a3
{
  v4 = a3;
  v5 = [(ImageProcessUtility *)self->_imageProcessUtility encodeCopyTextureToCommandBuffer:v4 source:self->_partialBackwardDepthTexture destination:self->_prevBackwardDepthTexture];
  if (!v5)
  {
    v5 = [(ImageProcessUtility *)self->_imageProcessUtility encodeCopyTextureToCommandBuffer:v4 source:self->_backwardStorage.upscaledFlowTexture destination:self->_prevBack4xFlowTexture];
    if (!v5)
    {
      v5 = [(ImageProcessUtility *)self->_imageProcessUtility encodeCopyTextureToCommandBuffer:v4 source:self->_backwardStorage.failureMaskTexture destination:self->_prevFlowFailureMaskTexture];
    }
  }

  v6 = v5;

  return v6;
}

- (int64_t)saveBackwardFlow:(id)a3 prevBackwardFlow:(id)a4
{
  v4 = 12;
  if (a3 && a4)
  {
    commandQueue = self->super._commandQueue;
    v8 = a4;
    v9 = a3;
    v10 = [(MTLCommandQueue *)commandQueue commandBuffer];
    [v10 enqueue];
    v4 = [(ImageProcessUtility *)self->_imageProcessUtility encodeCopyTextureToCommandBuffer:v10 source:v9 destination:v8];

    if (!v4)
    {
      [v10 commit];
      [v10 waitUntilScheduled];
    }
  }

  return v4;
}

@end