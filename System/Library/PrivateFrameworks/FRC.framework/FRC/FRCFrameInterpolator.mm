@interface FRCFrameInterpolator
- (BOOL)checkFrameFormatConsistencyFirstFrame:(id)frame secondFrame:(id)secondFrame outputFrames:(id)frames;
- (BOOL)checkStreamingBufferConsistencyFirstFrame:(id)frame secondFrame:(id)secondFrame;
- (BOOL)configureSynthesis;
- (BOOL)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales outputFrames:(id)frames withError:(id *)error;
- (BOOL)shallDumpDebugInfoForCurrPts:(id *)pts prevPts:(id *)prevPts;
- (BOOL)shallReusePreviousFlowPts0:(id *)pts0 Pts1:(id *)pts1;
- (BOOL)updateGatingResult;
- (CGAffineTransform)preferredTransform;
- (FRCFrameInterpolator)initWithMode:(int64_t)mode;
- (id)createOutputFramesWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format numberOframes:(unint64_t)oframes;
- (id)errorWithErrorCode:(int64_t)code;
- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame numberOfFrames:(unint64_t)frames withError:(id *)error;
- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales outputSize:(CGSize)size outputPixelFormat:(unsigned int)format withError:(id *)error;
- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales withError:(id *)error;
- (id)interpolateRecursiveFirstFrame:(id)frame secondFrame:(id)secondFrame timeScale:(id)scale withError:(id *)error;
- (id)normalizeTimingFromTimeScales:(id)scales newBeginIdx:(int)idx newEndIdx:(int)endIdx;
- (id)selectFrameInsertionPointsFromTimingList:(id)list metadataList:(id)metadataList withError:(id *)error;
- (id)selectFrameInsertionPointsFromTimingList:(id)list preModifiedTimingList:(id)timingList;
- (id)synthesizeInterpolatedFrames:(id)frames second:(id)second normalizedFirst:(__CVBuffer *)first normalizedSecond:(__CVBuffer *)normalizedSecond timeScales:(id)scales outputSize:(CGSize)size outputPixelFormat:(unsigned int)format scalerEnabled:(BOOL)self0;
- (int)closestNumIdxInArray:(id)array target:(double)target;
- (int64_t)adjustUsage:(int64_t)usage;
- (int64_t)endSession;
- (int64_t)getFrameRotation:(int64_t)rotation;
- (int64_t)startSessionWithUsage:(int64_t)usage;
- (void)allocateInternalBuffers;
- (void)configureGating;
- (void)constructSessionStatisticsWithSessionDuration:(double)duration;
- (void)dealloc;
- (void)getPixelAttributesForBuffer:(__CVBuffer *)buffer;
- (void)initSubModules;
- (void)overwriteQualityModeFromDefaults;
- (void)preserveCMAttachmentFirstFrame:(id)frame secondFrame:(id)secondFrame;
- (void)releaseInternalBuffers;
- (void)restoreCMAttachmentToFirstFrame:(id)frame secondFrame:(id)secondFrame interpolatedFrames:(id)frames;
- (void)setCrossFlowAnalysisFromDefaults;
- (void)setFlowAnalysisFromDefaults;
- (void)setLiteSynthesisDebugFromDefaults;
- (void)setNormalizationModeFromDefaults;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
- (void)setPropertiesFromDefaults;
- (void)setSynthesisOptionsFromDefaults;
- (void)updateBackwardFlow;
- (void)updateLastFramePts:(id *)pts duration:(id *)duration toInterpolate:(unint64_t)interpolate;
- (void)updateRecommendation;
@end

@implementation FRCFrameInterpolator

- (FRCFrameInterpolator)initWithMode:(int64_t)mode
{
  v22.receiver = self;
  v22.super_class = FRCFrameInterpolator;
  v4 = [(FRCFrameInterpolator *)&v22 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 64) = mode;
    v6 = MEMORY[0x277CBF2C0];
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *(v4 + 600) = *MEMORY[0x277CBF2C0];
    *(v4 + 616) = v7;
    *(v4 + 632) = *(v6 + 32);
    *(v4 + 108) = 1111970369;
    FRCGetInputFrameSizeForUsage(mode, v4 + 22, v4 + 23);
    v8 = dispatch_semaphore_create(0);
    completion_semaphore = v5->_completion_semaphore;
    v5->_completion_semaphore = v8;

    v10 = dispatch_semaphore_create(0);
    postProcessingComletionSemaphore = v5->_postProcessingComletionSemaphore;
    v5->_postProcessingComletionSemaphore = v10;

    v12 = dispatch_semaphore_create(0);
    initializationSemaphore = v5->_initializationSemaphore;
    v5->_initializationSemaphore = v12;

    v5->_state = 0;
    v14 = dispatch_group_create();
    dispatchGroup = v5->_dispatchGroup;
    v5->_dispatchGroup = v14;

    v16 = dispatch_queue_create("Concurrent Task Queue", MEMORY[0x277D85CD8]);
    concurrentQueue = v5->_concurrentQueue;
    v5->_concurrentQueue = v16;

    v5->_synthesisTemporalSmoothing = 1;
    v5->_opticalFlowRevision = 1;
    v5->_singleDropRecoveryEnabled = 1;
    v18 = os_log_create("com.apple.FRC", "FrameInterpolator");
    logger = v5->_logger;
    v5->_logger = v18;

    NSLog(&cfstr_InitializingFr.isa);
    [(FRCFrameInterpolator *)v5 initSubModules];
    v20 = v5;
  }

  return v5;
}

- (void)initSubModules
{
  kdebug_trace();
  v3 = objc_alloc_init(OpticalFlow);
  opticalFlow = self->_opticalFlow;
  self->_opticalFlow = v3;

  v5 = [[Synthesis alloc] initWithMode:self->_usage];
  deepSynthesis = self->_deepSynthesis;
  self->_deepSynthesis = v5;

  v7 = objc_alloc_init(FRCScaler);
  scaler = self->_scaler;
  self->_scaler = v7;

  if (self->_opticalFlow && self->_deepSynthesis && self->_scaler)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  self->_state = v9;

  kdebug_trace();
}

- (int64_t)getFrameRotation:(int64_t)rotation
{
  if ((rotation & 0x1000) != 0)
  {
    return 2;
  }

  v4 = *&self->_preferredTransform.c;
  *&v8.a = *&self->_preferredTransform.a;
  *&v8.c = v4;
  *&v8.tx = *&self->_preferredTransform.tx;
  if (!CGAffineTransformIsIdentity(&v8) && (v5 = atan2(self->_preferredTransform.b, self->_preferredTransform.a), v6 = (v5 * 180.0) / 3.14159265, v6 == 180.0))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)adjustUsage:(int64_t)usage
{
  [(OpticalFlow *)self->_opticalFlow setTwoStageFlow:[(FRCFrameInterpolator *)self twoStageFlow]];
  [(OpticalFlow *)self->_opticalFlow setDownsampling:[(FRCFrameInterpolator *)self opticalFlowDownsampling]];
  self->_inputRotation = [(FRCFrameInterpolator *)self getFrameRotation:usage];
  QuarterSizeUsage = usage & 0xFFF;
  if (QuarterSizeUsage == 7)
  {
    goto LABEL_43;
  }

  if (QuarterSizeUsage == 6)
  {
    self->_inputScaling = 0;
    p_secondLevelFlow = &self->_secondLevelFlow;
    if (!self->_secondLevelFlow)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (QuarterSizeUsage)
  {
    v9 = 0;
    v10 = 0;
    FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v10, &v9);
    if ((v9 * v10) >> 10 < 0x7E9)
    {
      goto LABEL_17;
    }

    if (self->_qualityMode || self->_useCase)
    {
      if (!self->_inputScaling)
      {
        [(OpticalFlow *)self->_opticalFlow setDownsampling:1];
        goto LABEL_17;
      }
    }

    else
    {
      self->_inputScaling = 1;
      [(FRCFrameInterpolator *)self setTilingEnabled:1];
    }
  }

  else
  {
LABEL_43:
    if (self->_qualityMode || self->_useCase)
    {
      if (!self->_inputScaling)
      {
        [(OpticalFlow *)self->_opticalFlow setTwoStageFlow:1];
        goto LABEL_17;
      }
    }

    else
    {
      self->_inputScaling = 1;
    }
  }

  QuarterSizeUsage = getQuarterSizeUsage(QuarterSizeUsage);
LABEL_17:
  p_secondLevelFlow = &self->_secondLevelFlow;
  if (self->_secondLevelFlow)
  {
    if (QuarterSizeUsage == 2)
    {
      goto LABEL_23;
    }

LABEL_22:
    [(FRCFrameInterpolator *)self setTilingEnabled:0];
    goto LABEL_23;
  }

  if (QuarterSizeUsage != 2 && self->_inputScaling)
  {
    goto LABEL_22;
  }

LABEL_23:
  if ([(OpticalFlow *)self->_opticalFlow twoStageFlow])
  {
    [(OpticalFlow *)self->_opticalFlow setDownsampling:0];
  }

  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v10, &v9);
  if ((v9 * v10) >> 12 <= 0xE0)
  {
    synthesisMode = self->_synthesisMode;
    if (synthesisMode <= 1)
    {
      *p_secondLevelFlow = 0;
      if (synthesisMode == 1)
      {
        self->_synthesisMode = 0;
      }
    }
  }

  if ((self->_qualityMode - 3) > 1)
  {
    if (self->_synthesisMode == 10)
    {
      *&self->_tilingEnabled = 0;
    }
  }

  else
  {
    self->_synthesisMode = 3;
  }

  [self->_deepSynthesis setTilingEnabled:self->_tilingEnabled];
  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v10, &v9);
  if ((v9 * v10) >= 0x7E9000)
  {
    if (!self->_synthesisMode)
    {
      NSLog(&cfstr_ErrorHighQuali.isa);
      return -1;
    }

    [(OpticalFlow *)self->_opticalFlow setTwoStageFlow:1];
  }

  if (self->_forceSingleStageFlow)
  {
    [(OpticalFlow *)self->_opticalFlow setTwoStageFlow:0];
  }

  return QuarterSizeUsage;
}

- (int64_t)startSessionWithUsage:(int64_t)usage
{
  v37 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  [(FRCFrameInterpolator *)self overwriteQualityModeFromDefaults];
  state = self->_state;
  if (!state)
  {
    dispatch_semaphore_wait(self->_initializationSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    state = self->_state;
  }

  if (state == 3)
  {
    goto LABEL_4;
  }

  if (usage == -1)
  {
    NSLog(&cfstr_ErrorInvalidUs.isa);
    goto LABEL_20;
  }

  if (state == 2)
  {
    NSLog(&cfstr_ErrorSessionIs.isa);
    result = -22004;
    goto LABEL_21;
  }

  qualityMode = self->_qualityMode;
  if (qualityMode == 2)
  {
    self->_synthesisMode = 1;
  }

  else if ((qualityMode - 3) <= 1)
  {
    self->_opticalFlowAdaptationLayer = 1;
  }

  if (self->_useCase == 1)
  {
    self->_lowMemoryMode = 1;
  }

  usage = [(FRCFrameInterpolator *)self adjustUsage:usage];
  self->_usage = usage;
  if (self->_e5OpticalFlowModel)
  {
    v9 = [[OpticalFlowE5 alloc] initWithModel:self->_e5OpticalFlowModel usage:self->_usage];
    opticalFlow = self->_opticalFlow;
    self->_opticalFlow = &v9->super;

    usage = self->_usage;
  }

  if (usage == -1)
  {
LABEL_20:
    result = -22002;
    goto LABEL_21;
  }

  legacyNormalizationMode = self->_legacyNormalizationMode;
  v12 = [FRCImageProcessor alloc];
  v13 = self->_usage;
  if (legacyNormalizationMode)
  {
    v14 = [(FRCImageProcessor *)v12 initLegacyModeWithUsage:v13];
  }

  else
  {
    v14 = [(FRCImageProcessor *)v12 initWithUsage:v13];
  }

  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = v14;

  [(FRCImageProcessor *)self->_imageProcessor setInputRotation:self->_inputRotation];
  FRCGetInputFrameSizeForUsage(self->_usage, &self->_width, &self->_height);
  if (!self->_qualityMode && self->_useCase == 1 || self->_opticalFlowAdaptationLayer)
  {
    [(OpticalFlow *)self->_opticalFlow setUseAdaptationLayer:1];
  }

  [(OpticalFlow *)self->_opticalFlow setRevision:self->_opticalFlowRevision];
  [(OpticalFlow *)self->_opticalFlow setWaitForCompletion:self->_lowMemoryMode];
  [(OpticalFlow *)self->_opticalFlow setSkipLastLevel:self->_secondLevelFlow];
  [(OpticalFlow *)self->_opticalFlow setBypassInputNormalization:self->_bypassNormalizationForOpticalFlowInput];
  if (![(OpticalFlow *)self->_opticalFlow switchUsageTo:self->_usage])
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [FRCFrameInterpolator startSessionWithUsage:?];
    }

    goto LABEL_4;
  }

  if (![(FRCFrameInterpolator *)self configureSynthesis])
  {
    v21 = self->_logger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FRCFrameInterpolator startSessionWithUsage:v21];
    }

LABEL_4:
    result = -22007;
    goto LABEL_21;
  }

  v17 = objc_alloc_init(FRCFrameDropDetector);
  frameDropDetector = self->_frameDropDetector;
  self->_frameDropDetector = v17;

  [(FRCFrameDropDetector *)self->_frameDropDetector setSingleDropRecoveryEnabled:[(FRCFrameInterpolator *)self singleDropRecoveryEnabled]];
  gatingLevel = self->_gatingLevel;
  switch(gatingLevel)
  {
    case 2:
      self->_gatingEnabled = 1;
      self->_forceFrameOutput = 1;
      break;
    case 1:
      self->_gatingEnabled = 0;
      break;
    case 0:
      self->_gatingEnabled = self->_useCase != 2;
      break;
  }

  [(FRCFrameInterpolator *)self allocateInternalBuffers];
  v22 = 1;
  self->_enableCrossFlowAnalysis = 1;
  v23 = MEMORY[0x277CC0898];
  v24 = *MEMORY[0x277CC0898];
  *&self->_lastFramePts.value = *MEMORY[0x277CC0898];
  v25 = *(v23 + 16);
  self->_lastFramePts.epoch = v25;
  *&self->_lastFrameDuration.value = v24;
  self->_lastFrameDuration.epoch = v25;
  self->_lastFramesToInterpolate = 0;
  *&self->_ptsForLiteDebugging.value = v24;
  self->_ptsForLiteDebugging.epoch = v25;
  self->_concurrentOpticalFlow = 1;
  *&self->_onDemandOpticalFlowBuffersAllocation = 257;
  self->_state = 2;
  [(FRCFrameInterpolator *)self setPropertiesFromDefaults];
  [(FRCFrameInterpolator *)self configureGating];
  if (!self->_qualityMode)
  {
    self->_concurrentOpticalFlow = 1;
LABEL_45:
    self->_onDemandOpticalFlowBuffersAllocation = v22;
    goto LABEL_46;
  }

  synthesisMode = self->_synthesisMode;
  if (synthesisMode != 10)
  {
    if (synthesisMode == 3)
    {
      v22 = 0;
      self->_concurrentOpticalFlow = 1;
    }

    else
    {
      self->_concurrentOpticalFlow = 1;
      v22 = FRCGetNumberOfPixelsForUsage(usage) > 0x1FA400;
    }

    goto LABEL_45;
  }

LABEL_46:
  self->_onDemandSynthesisBufferAllocation = v22;
  if (self->_lowMemoryMode)
  {
    v27 = self->_gatingLevel == 0;
    self->_onDemandOpticalFlowBuffersAllocation = v27;
    self->_onDemandSynthesisBufferAllocation = v27;
    [(FRCSynthesis *)self->_synthesis setFramePipeline:0];
  }

  [(OpticalFlow *)self->_opticalFlow setConcurrentDualFlowProcessing:self->_concurrentOpticalFlow];
  if (self->_onDemandOpticalFlowBuffersAllocation)
  {
    self->_streamingMode = 0;
  }

  else
  {
    [(OpticalFlow *)self->_opticalFlow allocateResources];
  }

  if (!self->_onDemandSynthesisBufferAllocation)
  {
    [(FRCSynthesis *)self->_synthesis allocateResources];
  }

  NSLog(&cfstr_FrcSessionStar.isa, self->_usage, self->_width, self->_height, self->_qualityMode, self->_tilingEnabled, [(OpticalFlow *)self->_opticalFlow downsampling], self->_synthesisMode, self->_concurrentOpticalFlow, [(OpticalFlow *)self->_opticalFlow twoStageFlow], [(FRCImageProcessor *)self->_imageProcessor selfNormalization], [(FRCSynthesis *)self->_synthesis temporalFiltering], [(FRCSynthesis *)self->_synthesis linearSplatting], [(OpticalFlow *)self->_opticalFlow useAdaptationLayer], [(OpticalFlow *)self->_opticalFlow revision]);
  v28 = self->_logger;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    useCase = self->_useCase;
    *buf = 67109120;
    v36 = useCase;
    _os_log_impl(&dword_24A8C8000, v28, OS_LOG_TYPE_DEFAULT, "Use case: %d", buf, 8u);
  }

  if (self->_lowMemoryMode)
  {
    v30 = self->_logger;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A8C8000, v30, OS_LOG_TYPE_DEFAULT, "Low Memory Mode", buf, 2u);
    }
  }

  if (self->_streamingMode)
  {
    NSLog(&cfstr_FrcStreamingMo.isa);
  }

  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;

  self->_gated = 0;
  self->_totalFramesInterpolated = 0;
  self->_totalFramePairsProcessed = 0;
  sessionStatistics = self->_sessionStatistics;
  self->_sessionStatistics = 0;

  self->_sessionResult = -1;
  v34 = MEMORY[0x277CC08F0];
  *&self->_maxTimeGap.value = *MEMORY[0x277CC08F0];
  self->_maxTimeGap.epoch = *(v34 + 16);
  self->_recommendation = 0;
  self->_shouldGatedForInteractive = 0;
  *&self->_maxPixelMeanDiff = 0;
  self->_firstPairInSession = 1;
  kdebug_trace();
  result = -22000;
LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)configureSynthesis
{
  p_synthesis = &self->_synthesis;
  usage = self->_usage;
  [(FRCSynthesis *)self->_synthesis setFramePipeline:1];
  if (p_synthesis[67] == 10)
  {
    deepSynthesis = [[LiteSynthesis alloc] initWithMode:[(FRCFrameInterpolator *)self usage]];
    liteSynthesis = self->_liteSynthesis;
    self->_liteSynthesis = deepSynthesis;
  }

  else
  {
    deepSynthesis = self->_deepSynthesis;
  }

  objc_storeStrong(p_synthesis, deepSynthesis);
  qualityMode = self->_qualityMode;
  if (qualityMode == 3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (qualityMode == 4)
  {
    v8 = 1;
LABEL_8:
    self->_synthesisMode = 3;
    self->_useFlowConsistencyMap = v8;
    self->_twoLayerSynthesis = v8;
  }

  [(FRCFrameInterpolator *)self setSynthesisOptionsFromDefaults];
  if (self->_qualityMode || self->_useCase != 1)
  {
    if (self->_synthesisMode == 10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    self->_synthesisMode = 3;
  }

  [(FRCSynthesis *)self->_synthesis setSynthesisMode:?];
  [(FRCSynthesis *)self->_synthesis setFlowLevel:1];
  [(FRCSynthesis *)self->_synthesis setLinearSplatting:self->_linearSplatting];
  if (self->_secondLevelFlow)
  {
    [(FRCFrameInterpolator *)self setTilingEnabled:0];
    if (self->_synthesisMode != 3 && ([(FRCSynthesis *)*p_synthesis linearSplatting]& 1) == 0)
    {
      usage = getQuarterSizeUsage(self->_usage);
    }
  }

LABEL_17:
  if (self->_qualityMode == 2)
  {
    [(FRCSynthesis *)self->_synthesis setTemporalFiltering:self->_synthesisTemporalSmoothing];
  }

  if (self->_synthesisMode == 3)
  {
    [(FRCSynthesis *)self->_synthesis setUseFlowConsistencyMap:self->_useFlowConsistencyMap];
    [(FRCSynthesis *)self->_synthesis setTwoLayerFlowSplatting:self->_twoLayerSynthesis];
    [(FRCSynthesis *)self->_synthesis setTwoLayerQuarterSizeDC:self->_twoLayerSynthesisQuarterSizeDC];
  }

  v9 = *p_synthesis;

  return [(FRCSynthesis *)v9 switchUsageTo:usage];
}

- (int64_t)endSession
{
  if (self->_state == 2)
  {
    if (!self->_gated)
    {
      if ([(FRCFrameDropDetector *)self->_frameDropDetector numberOfInsertionPoints]&& (totalFramePairsProcessed = self->_totalFramePairsProcessed, totalFramePairsProcessed < [(FRCFrameDropDetector *)self->_frameDropDetector numberOfInsertionPoints]))
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }

      self->_sessionResult = v4;
    }

    [(FRCFrameInterpolator *)self updateRecommendation];
    [(OpticalFlow *)self->_opticalFlow releaseResources];
    [(FRCSynthesis *)self->_synthesis releaseResources];
    [(FRCFrameInterpolator *)self releaseInternalBuffers];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_startTime];
    v8 = v7;

    [(FRCFrameInterpolator *)self constructSessionStatisticsWithSessionDuration:v8];
    frameDropDetector = self->_frameDropDetector;
    self->_frameDropDetector = 0;

    self->_state = 1;
    imageProcessor = self->_imageProcessor;
    self->_imageProcessor = 0;

    self->_sessionConfidence = 1.0;
    flowAnalyzer = self->_flowAnalyzer;
    if (flowAnalyzer)
    {
      if (self->_gatingLevel == 2)
      {
        [(OpticalFlowAnalyzer *)flowAnalyzer confidenceScoreOnDemand];
      }

      else
      {
        [(OpticalFlowAnalyzer *)flowAnalyzer confidenceScore];
      }

      self->_sessionConfidence = v12;
    }

    v13 = self->_flowAnalyzer;
    self->_flowAnalyzer = 0;

    self->_gatingPaused = 0;
    totalFramesInterpolated = self->_totalFramesInterpolated;
    sessionConfidence = self->_sessionConfidence;
    if (self->_gated)
    {
      NSLog(&cfstr_SessionEndedGa.isa, totalFramesInterpolated, *&v8, *&sessionConfidence);
    }

    else
    {
      NSLog(&cfstr_SessionEndedLd.isa, totalFramesInterpolated, *&v8, *&sessionConfidence);
    }

    return -22000;
  }

  else
  {
    NSLog(&cfstr_ErrorSessionSe.isa, a2);
    return -22003;
  }
}

- (void)dealloc
{
  [(FRCFrameInterpolator *)self releaseInternalBuffers];
  opticalFlow = self->_opticalFlow;
  self->_opticalFlow = 0;

  deepSynthesis = self->_deepSynthesis;
  self->_deepSynthesis = 0;

  liteSynthesis = self->_liteSynthesis;
  self->_liteSynthesis = 0;

  synthesis = self->_synthesis;
  self->_synthesis = 0;

  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = 0;

  scaler = self->_scaler;
  self->_scaler = 0;

  v9.receiver = self;
  v9.super_class = FRCFrameInterpolator;
  [(FRCFrameInterpolator *)&v9 dealloc];
}

- (void)allocateInternalBuffers
{
  width = self->_width;
  height = self->_height;
  v8 = height;
  v9 = width;
  if (self->_secondLevelFlow)
  {
    QuarterSizeUsage = getQuarterSizeUsage(self->_usage);
    FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v9, &v8);
    width = v9;
    height = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  self->_flowForward = createPixelBuffer(width >> 1, height, 0x4C303068u, 0);
  PixelBuffer = createPixelBuffer(width >> 1, height, 0x4C303068u, 0);
  self->_flowBackward = PixelBuffer;
  if (self->_gatingEnabled)
  {
    if (self->_inputScaling)
    {
      height *= 2;
      self->_flowForwardGating = createPixelBuffer(width, height, 0x4C303068u, 0);
      self->_flowBackwardGating = createPixelBuffer(width, height, 0x4C303068u, 0);
      v7 = width;
    }

    else
    {
      self->_flowForwardGating = self->_flowForward;
      self->_flowBackwardGating = PixelBuffer;
      v7 = width >> 1;
    }

    self->_prevFlowBackwardGating = createPixelBuffer(v7, height, 0x4C303068u, 0);
  }
}

- (void)releaseInternalBuffers
{
  p_flowForward = &self->_flowForward;
  flowForward = self->_flowForward;
  if (flowForward)
  {
    CVPixelBufferRelease(flowForward);
  }

  flowBackward = self->_flowBackward;
  if (flowBackward)
  {
    CVPixelBufferRelease(flowBackward);
  }

  if (self->_gatingEnabled && self->_inputScaling)
  {
    CVPixelBufferRelease(self->_flowForwardGating);
    CVPixelBufferRelease(self->_flowBackwardGating);
  }

  prevFlowBackwardGating = self->_prevFlowBackwardGating;
  if (prevFlowBackwardGating)
  {
    CVPixelBufferRelease(prevFlowBackwardGating);
  }

  p_flowForward[4] = 0;
  *p_flowForward = 0u;
  *(p_flowForward + 1) = 0u;
  outputPixelBufferPool = self->_outputPixelBufferPool;
  if (outputPixelBufferPool)
  {
    CFRelease(outputPixelBufferPool);
    self->_outputPixelBufferPool = 0;
  }

  quarterResRGB = self->_quarterResRGB;
  if (quarterResRGB)
  {
    CVPixelBufferRelease(quarterResRGB);
    self->_quarterResRGB = 0;
  }
}

- (void)getPixelAttributesForBuffer:(__CVBuffer *)buffer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v15 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v6 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x277CC4EF8]];
  self->_fullRange = [v6 isEqualToString:*MEMORY[0x277CC4F00]];
  v7 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  self->_bitDepth = [v7 intValue];

  v8 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  self->_isYUV = [v8 BOOLValue];

  v9 = !self->_inputScaling && self->_inputRotation == 0;
  if (self->_isYUV)
  {
    v10 = !v9 && self->_fullRange || self->_bitDepth == 16;
  }

  else
  {
    v10 = 0;
  }

  self->_removeCMAttachment = v10;
  v11 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  bOOLValue = [v11 BOOLValue];

  if (self->_isYUV)
  {
    bitDepth = self->_bitDepth;
    if (bitDepth == 10)
    {
      v14 = 1999843442;
    }

    else if (bitDepth == 8)
    {
      if (self->_qualityMode == 4)
      {
        v14 = 759318337;
      }

      else
      {
        v14 = 1111970369;
      }
    }

    else
    {
      v14 = 1380411457;
    }

    self->_RGBAFormat = v14;
  }

  else if (bOOLValue)
  {
    self->_RGBAFormat = CVPixelBufferGetPixelFormatType(buffer);
  }
}

- (id)createOutputFramesWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format numberOframes:(unint64_t)oframes
{
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  PixelBuffer = createPixelBuffer(width, height, format, 0);
  v11 = [FRCFrame alloc];
  CMTimeMake(&v14, 0, 0);
  v12 = [(FRCFrame *)v11 initWithBuffer:PixelBuffer presentationTimeStamp:&v14];
  CVPixelBufferRelease(PixelBuffer);
  [v9 addObject:v12];

  return v9;
}

- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame numberOfFrames:(unint64_t)frames withError:(id *)error
{
  secondFrameCopy = secondFrame;
  frameCopy = frame;
  v12 = uniformTimeScales(frames);
  v13 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:frameCopy secondFrame:secondFrameCopy timeScales:v12 withError:error];

  return v13;
}

- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales withError:(id *)error
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  scalesCopy = scales;
  synthesisMode = self->_synthesisMode;
  if ([scalesCopy count] < 0xA || synthesisMode)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType([frameCopy buffer]);
    Width = CVPixelBufferGetWidth([frameCopy buffer]);
    v14 = -[FRCFrameInterpolator interpolateBetweenFirstFrame:secondFrame:timeScales:outputSize:outputPixelFormat:withError:](self, "interpolateBetweenFirstFrame:secondFrame:timeScales:outputSize:outputPixelFormat:withError:", frameCopy, secondFrameCopy, scalesCopy, PixelFormatType, error, Width, CVPixelBufferGetHeight([frameCopy buffer]));
  }

  else
  {
    v14 = [(FRCFrameInterpolator *)self interpolateRecursiveFirstFrame:frameCopy secondFrame:secondFrameCopy timeScale:scalesCopy withError:error];
  }

  v17 = v14;

  return v17;
}

- (id)errorWithErrorCode:(int64_t)code
{
  if ((code + 22009) > 6)
  {
    v4 = &stru_285DE4E10;
  }

  else
  {
    v4 = off_278FEA670[code + 22009];
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277CCA450]];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FRC" code:code userInfo:v5];

  return v6;
}

- (BOOL)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales outputFrames:(id)frames withError:(id *)error
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  scalesCopy = scales;
  framesCopy = frames;
  v16 = [(FRCFrameInterpolator *)self checkFrameFormatConsistencyFirstFrame:frameCopy secondFrame:secondFrameCopy outputFrames:framesCopy];
  v17 = [scalesCopy count];
  if (v17 == [framesCopy count])
  {
    if (v16)
    {
      objc_storeStrong(&self->_outputFrameListFromClient, frames);
      v18 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:frameCopy secondFrame:secondFrameCopy timeScales:scalesCopy withError:error];
      outputFrameListFromClient = self->_outputFrameListFromClient;
      self->_outputFrameListFromClient = 0;

      v20 = v18 != 0;
      goto LABEL_8;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorTheNumber.isa);
  }

  if (error)
  {
    [(FRCFrameInterpolator *)self errorWithErrorCode:-22005];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_8:

  return v20;
}

- (id)interpolateBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame timeScales:(id)scales outputSize:(CGSize)size outputPixelFormat:(unsigned int)format withError:(id *)error
{
  height = size.height;
  width = size.width;
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  scalesCopy = scales;
  if (self->_state != 2)
  {
    NSLog(&cfstr_SessionIsNotSt.isa);
    if (error)
    {
      selfCopy2 = self;
      v21 = -22003;
LABEL_19:
      [(FRCFrameInterpolator *)selfCopy2 errorWithErrorCode:v21];
      *error = v22 = 0;
      goto LABEL_77;
    }

LABEL_20:
    v22 = 0;
    goto LABEL_77;
  }

  if (![frameCopy buffer] || !objc_msgSend(secondFrameCopy, "buffer"))
  {
    NSLog(&cfstr_InputBufferIsN.isa);
    goto LABEL_17;
  }

  if (!scalesCopy)
  {
    NSLog(&cfstr_TimescaleIsNul.isa);
LABEL_17:
    if (error)
    {
      selfCopy2 = self;
      v21 = -22009;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (self->_streamingMode && ![(FRCFrameInterpolator *)self checkStreamingBufferConsistencyFirstFrame:frameCopy secondFrame:secondFrameCopy])
  {
    self->_streamingMode = 0;
  }

  -[FRCFrameInterpolator getPixelAttributesForBuffer:](self, "getPixelAttributesForBuffer:", [frameCopy buffer]);
  outputPixelBufferPool = self->_outputPixelBufferPool;
  if (!outputPixelBufferPool || self->_outputPixelFormat != format)
  {
    CVPixelBufferPoolRelease(outputPixelBufferPool);
    self->_outputPixelBufferPool = createPixelBufferPool(width, height, format, 0);
  }

  self->_outputPixelFormat = format;
  v19 = [scalesCopy count];
  ++self->_totalFramePairsProcessed;
  memset(&v81, 0, sizeof(v81));
  if (secondFrameCopy)
  {
    [secondFrameCopy presentationTimeStamp];
    if (frameCopy)
    {
LABEL_13:
      [frameCopy presentationTimeStamp];
      goto LABEL_24;
    }
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
    if (frameCopy)
    {
      goto LABEL_13;
    }
  }

  memset(&rhs, 0, sizeof(rhs));
LABEL_24:
  CMTimeSubtract(&v81, &lhs, &rhs);
  rhs = self->_maxTimeGap;
  time2 = v81;
  CMTimeMaximum(&lhs, &rhs, &time2);
  self->_maxTimeGap = lhs;
  v23 = self->_gatingEnabled && !self->_gatingPaused;
  v25 = (self->_gatingLevel != 2 || v19 > 3) && v23;
  if (self->_useCase)
  {
    self->_cleanRectFirst = CVImageBufferGetCleanRect([frameCopy buffer]);
    self->_cleanRectSecond = CVImageBufferGetCleanRect([secondFrameCopy buffer]);
  }

  if (v25)
  {
    flowAnalyzer = self->_flowAnalyzer;
    frameDropDetector = self->_frameDropDetector;
    if (frameCopy)
    {
      [frameCopy presentationTimeStamp];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    rhs = self->_lastFramePts;
    v28 = CMTimeCompare(&rhs, &lhs);
    if (self->_gatingEnabled)
    {
      enableCrossFlowAnalysis = self->_enableCrossFlowAnalysis;
    }

    lhs = v81;
    [(OpticalFlowAnalyzer *)flowAnalyzer prepareGatingFrameDropDetector:frameDropDetector numberOfFrames:v19 timeGap:&lhs isContinuousDrops:v28 == 0 enableFlowAnalysis:self->_cleanRectFirst.origin.x enableCrossFlowAnalysis:self->_cleanRectFirst.origin.y cleanRectFirst:self->_cleanRectFirst.size.width cleanRectSecond:self->_cleanRectFirst.size.height, self->_cleanRectSecond.origin.x, self->_cleanRectSecond.origin.y, self->_cleanRectSecond.size.width, self->_cleanRectSecond.size.height];
  }

  kdebug_trace();
  v30 = self->_width;
  v50 = v30 != CVPixelBufferGetWidth([frameCopy buffer]) || self->_isYUV;
  [(FRCFrameInterpolator *)self preserveCMAttachmentFirstFrame:frameCopy secondFrame:secondFrameCopy];
  if (!frameCopy)
  {
    memset(&lhs, 0, sizeof(lhs));
    if (secondFrameCopy)
    {
      goto LABEL_48;
    }

LABEL_50:
    memset(&rhs, 0, sizeof(rhs));
    goto LABEL_51;
  }

  [frameCopy presentationTimeStamp];
  if (!secondFrameCopy)
  {
    goto LABEL_50;
  }

LABEL_48:
  [secondFrameCopy presentationTimeStamp];
LABEL_51:
  v51 = v19;
  v31 = [(FRCFrameInterpolator *)self shallReusePreviousFlowPts0:&lhs Pts1:&rhs];
  if (self->_streamingMode && !self->_firstPairInSession)
  {
    -[FRCImageProcessor preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", 0, [secondFrameCopy buffer], 0);
    v32 = 1;
  }

  else
  {
    -[FRCImageProcessor preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", [frameCopy buffer], objc_msgSend(secondFrameCopy, "buffer"), 0);
    v32 = 0;
  }

  if ([(OpticalFlow *)self->_opticalFlow bypassInputNormalization])
  {
    -[OpticalFlow setOriginalFirst:](self->_opticalFlow, "setOriginalFirst:", [frameCopy buffer]);
    -[OpticalFlow setOriginalSecond:](self->_opticalFlow, "setOriginalSecond:", [secondFrameCopy buffer]);
  }

  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke;
  block[3] = &unk_278FEA5B0;
  block[4] = self;
  v79 = v32;
  v80 = v31;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  rhs.value = 0;
  *&rhs.timescale = &rhs;
  rhs.epoch = 0x2020000000;
  v77 = 0;
  time2.value = 0;
  *&time2.timescale = &time2;
  time2.epoch = 0x2020000000;
  v75 = 0;
  if (v25)
  {
    v35 = self->_dispatchGroup;
    v36 = self->_concurrentQueue;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_2;
    v72[3] = &unk_278FEA5D8;
    v72[4] = self;
    v37 = frameCopy;
    v73 = v37;
    dispatch_group_async(v35, v36, v72);
    if (!self->_gatingLevel)
    {
      v38 = self->_dispatchGroup;
      v39 = self->_concurrentQueue;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_3;
      v69[3] = &unk_278FEA600;
      v69[4] = self;
      v70 = v37;
      v71 = secondFrameCopy;
      dispatch_group_async(v38, v39, v69);
    }

    if ([(OpticalFlow *)self->_opticalFlow imageFeatures][464] && [(OpticalFlow *)self->_opticalFlow imageFeatures][944])
    {
      v40 = CVPixelBufferRetain([(OpticalFlow *)self->_opticalFlow imageFeatures][464]);
      *(*&rhs.timescale + 24) = v40;
      v41 = CVPixelBufferRetain([(OpticalFlow *)self->_opticalFlow imageFeatures][944]);
      *(*&time2.timescale + 24) = v41;
    }

    else
    {
      v42 = self->_dispatchGroup;
      v43 = self->_concurrentQueue;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_4;
      v68[3] = &unk_278FEA628;
      v68[4] = self;
      v68[5] = &rhs;
      v68[6] = &time2;
      dispatch_group_async(v42, v43, v68);
    }
  }

  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  lhs.value = 0;
  *&lhs.timescale = &lhs;
  lhs.epoch = 0x3032000000;
  v65 = __Block_byref_object_copy__0;
  v66 = __Block_byref_object_dispose__0;
  v67 = 0;
  v44 = self->_dispatchGroup;
  v45 = self->_concurrentQueue;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_105;
  v55[3] = &unk_278FEA650;
  p_lhs = &lhs;
  v55[4] = self;
  v56 = frameCopy;
  v46 = secondFrameCopy;
  v57 = v46;
  v58 = scalesCopy;
  v60 = width;
  v61 = height;
  formatCopy = format;
  v63 = v50;
  dispatch_group_async(v44, v45, v55);
  if (v25)
  {
    v47 = self->_dispatchGroup;
    v48 = self->_concurrentQueue;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_2_106;
    v54[3] = &unk_278FEA628;
    v54[4] = self;
    v54[5] = &rhs;
    v54[6] = &time2;
    dispatch_group_async(v47, v48, v54);
  }

  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (secondFrameCopy)
  {
    [v46 presentationTimeStamp];
  }

  else
  {
    memset(v53, 0, sizeof(v53));
  }

  v52 = v81;
  [(FRCFrameInterpolator *)self updateLastFramePts:v53 duration:&v52 toInterpolate:v51];
  if (v25)
  {
    if ([(FRCFrameInterpolator *)self updateGatingResult])
    {
      if (error)
      {
        *error = [(FRCFrameInterpolator *)self errorWithErrorCode:-22006];
      }

      if (!self->_forceFrameOutput)
      {
        [*(*&lhs.timescale + 40) removeAllObjects];
        v22 = 0;
        goto LABEL_76;
      }
    }

    [(FRCFrameInterpolator *)self updateBackwardFlow];
  }

  self->_firstPairInSession = 0;
  self->_gatingPaused = 0;
  kdebug_trace();
  v22 = *(*&lhs.timescale + 40);
LABEL_76:

  _Block_object_dispose(&lhs, 8);
  _Block_object_dispose(&time2, 8);
  _Block_object_dispose(&rhs, 8);
LABEL_77:

  return v22;
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (*(a1 + 40))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(v2 + 440) normalizedFirst];
    v2 = *(a1 + 32);
  }

  [v3 opticalFlowFirstFrame:v4 secondFrame:objc_msgSend(*(v2 + 440) flowForward:"normalizedSecond") flowBackward:*(*(a1 + 32) + 56) reUseFlow:{*(*(a1 + 32) + 64), *(a1 + 41)}];

  return kdebug_trace();
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_2(uint64_t a1)
{
  Width = CVPixelBufferGetWidth(*(*(a1 + 32) + 56));
  Height = CVPixelBufferGetHeight(*(*(a1 + 32) + 56));
  v4 = Height >> 1;
  v5 = *(a1 + 32);
  if (!*(v5 + 544) && *(v5 + 493) == 1)
  {
    Width *= 2;
    v4 = Height & 0xFFFFFFFFFFFFFFFELL;
  }

  if (!*(v5 + 464))
  {
    *(*(a1 + 32) + 464) = createPixelBuffer(Width, v4, *(v5 + 432), 0);
    v5 = *(a1 + 32);
  }

  v6 = *(v5 + 40);
  v7 = [*(a1 + 40) buffer];
  v8 = *(a1 + 32);
  v9 = *(v8 + 464);
  v10 = *(v8 + 296);

  return [v6 downScaleFrameSource:v7 destination:v9 rotate:v10 waitForCompletion:0];
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) buffer];
  v4 = [*(a1 + 48) buffer];

  return [v2 runDetectionFromFirstBuffer:v3 secondBuffer:v4];
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_4(void *a1)
{
  Width = CVPixelBufferGetWidth(*(a1[4] + 56));
  v3 = 3 * (CVPixelBufferGetHeight(*(a1[4] + 56)) >> 1);
  *(*(a1[5] + 8) + 24) = createPixelBuffer(Width, v3, 0x4C303068u, 0);
  *(*(a1[6] + 8) + 24) = createPixelBuffer(Width, v3, 0x4C303068u, 0);
  [*(a1[4] + 8) subsampleInput:objc_msgSend(*(a1[4] + 440) to:"normalizedFirst") forUsage:{*(*(a1[5] + 8) + 24), getQuarterSizeUsage(*(a1[4] + 512))}];
  v4 = a1[4];
  v5 = *(v4 + 8);
  v6 = [*(v4 + 440) normalizedSecond];
  v7 = *(*(a1[6] + 8) + 24);
  QuarterSizeUsage = getQuarterSizeUsage(*(a1[4] + 512));

  return [v5 subsampleInput:v6 to:v7 forUsage:QuarterSizeUsage];
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_105(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2[55] normalizedFirst];
  v6 = [*(*(a1 + 32) + 440) normalizedSecond];
  LOBYTE(v11) = *(a1 + 92);
  v7 = [v2 synthesizeInterpolatedFrames:v3 second:v4 normalizedFirst:v5 normalizedSecond:v6 timeScales:*(a1 + 56) outputSize:*(a1 + 88) outputPixelFormat:*(a1 + 72) scalerEnabled:*(a1 + 80), v11];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(a1 + 32) restoreCMAttachmentToFirstFrame:*(a1 + 40) secondFrame:*(a1 + 48) interpolatedFrames:*(*(*(a1 + 64) + 8) + 40)];
  result = [*(*(*(a1 + 64) + 8) + 40) count];
  *(*(a1 + 32) + 360) += result;
  return result;
}

uint64_t __115__FRCFrameInterpolator_interpolateBetweenFirstFrame_secondFrame_timeScales_outputSize_outputPixelFormat_withError___block_invoke_2_106(void *a1)
{
  kdebug_trace();
  v2 = a1[4];
  if (*(v2 + 493) == 1)
  {
    [*(v2 + 8) upscaleInputFlow:*(v2 + 56) outFlow:*(v2 + 72)];
    [*(a1[4] + 8) upscaleInputFlow:*(a1[4] + 64) outFlow:*(a1[4] + 80)];
  }

  else
  {
    *(v2 + 72) = *(v2 + 56);
    *(a1[4] + 80) = *(a1[4] + 64);
  }

  v3 = a1[4];
  v4 = *(v3 + 48);
  v6 = *(v3 + 80);
  v5 = *(v3 + 88);
  v7 = *(v3 + 72);
  v8 = *(v3 + 464);
  v9 = *(*(a1[5] + 8) + 24);
  v10 = *(*(a1[6] + 8) + 24);
  v15 = *(v3 + 216);
  v11 = *(v3 + 240);
  v16 = *(v3 + 232);
  [v4 runGatingWithPrevFlowBackward:v5 flowForward:v7 flowBackward:v6 lastFrameDuration:&v15 lastNumberOfFrames:v11 flowResFrame:v8 flowResFirst:v9 flowResSecond:v10];
  v12 = *(*(a1[5] + 8) + 24);
  if (v12)
  {
    CVPixelBufferRelease(v12);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v13 = *(*(a1[6] + 8) + 24);
  if (v13)
  {
    CVPixelBufferRelease(v13);
    *(*(a1[6] + 8) + 24) = 0;
  }

  CVPixelBufferRelease(*(a1[4] + 464));
  *(a1[4] + 464) = 0;
  [*(a1[4] + 48) updateGatingStats];
  return kdebug_trace();
}

- (BOOL)updateGatingResult
{
  if ([(OpticalFlowAnalyzer *)self->_flowAnalyzer isSafeToInterpolate])
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
    self->_gated = 1;
    self->_sessionResult = 2;
    if (self->_useCase == 1)
    {
      if ([(OpticalFlowAnalyzer *)self->_flowAnalyzer isSafeToInterpolateForInteractiveMode])
      {
        if (self->_gatingLevel == 2)
        {
          v4 = 0;
          v5 = 0;
          self->_gated = 0;
        }

        else
        {
          v4 = 1;
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
        self->_shouldGatedForInteractive = 1;
        v4 = self->_gatingLevel != 2;
      }

      v3 = v5 & v4;
    }
  }

  if (self->_useCase == 1)
  {
    [(FRCImageProcessor *)self->_imageProcessor secondFramePixelMean];
    v7 = v6;
    [(FRCImageProcessor *)self->_imageProcessor firstFramePixelMean];
    v9 = v7 - v8;
    [(FRCImageProcessor *)self->_imageProcessor firstFramePixelMean];
    v11 = v9 / v10;
    maxPixelMeanChange = self->_maxPixelMeanChange;
    if (v11 > maxPixelMeanChange)
    {
      self->_maxPixelMeanDiff = v9;
      self->_maxPixelMeanChange = v11;
      maxPixelMeanChange = v11;
    }

    if (!self->_gatingLevel && maxPixelMeanChange > 0.09)
    {
      NSLog(&cfstr_Frameinterpola_0.isa);
      self->_gated = 1;
      self->_sessionResult = 4;
    }
  }

  return v3;
}

- (BOOL)checkFrameFormatConsistencyFirstFrame:(id)frame secondFrame:(id)secondFrame outputFrames:(id)frames
{
  v37 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  framesCopy = frames;
  PixelFormatType = CVPixelBufferGetPixelFormatType([frameCopy buffer]);
  Width = CVPixelBufferGetWidth([frameCopy buffer]);
  Height = CVPixelBufferGetHeight([frameCopy buffer]);
  v12 = CVPixelBufferGetPixelFormatType([secondFrameCopy buffer]);
  v13 = CVPixelBufferGetWidth([secondFrameCopy buffer]);
  v14 = CVPixelBufferGetHeight([secondFrameCopy buffer]);
  if (v12 == PixelFormatType && v13 == Width && v14 == Height)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = framesCopy;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v29 = secondFrameCopy;
      v30 = frameCopy;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = CVPixelBufferGetPixelFormatType([v20 buffer]);
          v22 = CVPixelBufferGetWidth([v20 buffer]);
          v23 = CVPixelBufferGetHeight([v20 buffer]);
          if (v21 != PixelFormatType || v22 != Width || v23 != Height)
          {
            NSLog(&cfstr_ErrorInputAndO.isa);
            v26 = 0;
            goto LABEL_21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
      v26 = 1;
LABEL_21:
      secondFrameCopy = v29;
      frameCopy = v30;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorFirstfram.isa);
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (int)closestNumIdxInArray:(id)array target:(double)target
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  v7 = v6 - 1;
  if (v6 < 3)
  {
    v8 = 0;
LABEL_10:
    v16 = [arrayCopy objectAtIndexedSubscript:v8];
    [v16 doubleValue];
    v18 = vabdd_f64(target, v17);
    v19 = [arrayCopy objectAtIndexedSubscript:v7];
    [v19 doubleValue];
    v21 = vabdd_f64(v20, target);

    if (v18 <= v21)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + (v7 - v8) / 2;
      v10 = [arrayCopy objectAtIndexedSubscript:v9];
      [v10 doubleValue];
      v12 = v11;

      if (v12 == target)
      {
        break;
      }

      v13 = [arrayCopy objectAtIndexedSubscript:v9];
      [v13 doubleValue];
      v15 = v14;

      if (v15 > target)
      {
        v7 = v8 + (v7 - v8) / 2;
      }

      else
      {
        v8 += (v7 - v8) / 2;
      }

      if (v8 >= v7 - 1)
      {
        goto LABEL_10;
      }
    }
  }

  return v9;
}

- (id)normalizeTimingFromTimeScales:(id)scales newBeginIdx:(int)idx newEndIdx:(int)endIdx
{
  scalesCopy = scales;
  v8 = scalesCopy;
  if (idx == -1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = [scalesCopy objectAtIndexedSubscript:idx];
    [v9 doubleValue];
    v11 = v10;
  }

  v12 = 1.0;
  if ([v8 count] != endIdx)
  {
    v13 = [v8 objectAtIndexedSubscript:endIdx];
    [v13 doubleValue];
    v12 = v14;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (idx + 1 < endIdx)
  {
    v16 = v12 - v11;
    v17 = idx + 1;
    v18 = ~idx + endIdx;
    do
    {
      v19 = [v8 objectAtIndexedSubscript:v17];
      [v19 doubleValue];
      v21 = (v20 - v11) / v16;

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      [v15 addObject:v22];

      ++v17;
      --v18;
    }

    while (v18);
  }

  return v15;
}

- (id)interpolateRecursiveFirstFrame:(id)frame secondFrame:(id)secondFrame timeScale:(id)scale withError:(id *)error
{
  v10 = MEMORY[0x277CBEB18];
  scaleCopy = scale;
  secondFrameCopy = secondFrame;
  frameCopy = frame;
  v71 = objc_alloc_init(v10);
  v13 = [(FRCFrameInterpolator *)self closestNumIdxInArray:scaleCopy target:0.5];
  LODWORD(secondFrame) = v13;
  v76 = v13;
  v14 = [(FRCFrameInterpolator *)self closestNumIdxInArray:scaleCopy target:0.25];
  LODWORD(v10) = v14;
  v74 = v14;
  v15 = [(FRCFrameInterpolator *)self closestNumIdxInArray:scaleCopy target:0.75];
  v16 = v15;
  v17 = MEMORY[0x277CBEA60];
  secondFrameCopy2 = secondFrame;
  v81 = v15;
  v18 = [scaleCopy objectAtIndexedSubscript:?];
  v19 = [v17 arrayWithObject:v18];
  v20 = frameCopy;
  v73 = frameCopy;
  v21 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:frameCopy secondFrame:secondFrameCopy timeScales:v19 withError:error];

  firstObject = [v21 firstObject];
  [v71 insertObject:firstObject atIndex:0];

  gatingEnabled = self->_gatingEnabled;
  self->_gatingEnabled = 0;
  v75 = v10;
  v23 = [scaleCopy objectAtIndexedSubscript:?];
  [v23 doubleValue];
  v25 = v24;
  v26 = [scaleCopy objectAtIndexedSubscript:secondFrameCopy2];
  [v26 doubleValue];
  v28 = v25 / v27;

  v77 = v16;
  v29 = [scaleCopy objectAtIndexedSubscript:?];
  [v29 doubleValue];
  v31 = v30;
  v32 = [scaleCopy objectAtIndexedSubscript:secondFrameCopy2];
  [v32 doubleValue];
  v34 = v31 - v33;
  v72 = scaleCopy;
  v35 = [scaleCopy objectAtIndexedSubscript:secondFrameCopy2];
  [v35 doubleValue];
  v37 = v34 / (1.0 - v36);

  v38 = [v71 objectAtIndexedSubscript:0];
  v39 = MEMORY[0x277CBEA60];
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v41 = [v39 arrayWithObject:v40];
  v42 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v20 secondFrame:v38 timeScales:v41 withError:error];

  firstObject2 = [v42 firstObject];
  [v71 insertObject:firstObject2 atIndex:0];

  v44 = [v71 objectAtIndexedSubscript:1];
  v45 = MEMORY[0x277CBEA60];
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
  v47 = [v45 arrayWithObject:v46];
  v48 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v44 secondFrame:secondFrameCopy timeScales:v47 withError:error];

  firstObject3 = [v48 firstObject];
  [v71 insertObject:firstObject3 atIndex:2];

  v50 = [(FRCFrameInterpolator *)self normalizeTimingFromTimeScales:scaleCopy newBeginIdx:0xFFFFFFFFLL newEndIdx:v74];
  v51 = [v71 objectAtIndexedSubscript:0];
  v52 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v73 secondFrame:v51 timeScales:v50 withError:error];

  v53 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v52, "count")}];
  [v71 insertObjects:v52 atIndexes:v53];

  v54 = [(FRCFrameInterpolator *)self normalizeTimingFromTimeScales:scaleCopy newBeginIdx:v74 newEndIdx:v76];

  v55 = [v71 objectAtIndexedSubscript:v75];
  v56 = v74 + 1;
  v57 = [v71 objectAtIndexedSubscript:v56];
  v58 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v55 secondFrame:v57 timeScales:v54 withError:error];

  v59 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v56, objc_msgSend(v58, "count")}];
  [v71 insertObjects:v58 atIndexes:v59];

  v60 = [(FRCFrameInterpolator *)self normalizeTimingFromTimeScales:v72 newBeginIdx:v76 newEndIdx:v81];

  v61 = [v71 objectAtIndexedSubscript:secondFrameCopy2];
  v62 = v76 + 1;
  v63 = [v71 objectAtIndexedSubscript:v62];
  v64 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v61 secondFrame:v63 timeScales:v60 withError:error];

  v65 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v62, objc_msgSend(v64, "count")}];
  [v71 insertObjects:v64 atIndexes:v65];

  v66 = -[FRCFrameInterpolator normalizeTimingFromTimeScales:newBeginIdx:newEndIdx:](self, "normalizeTimingFromTimeScales:newBeginIdx:newEndIdx:", v72, v81, [v72 count]);

  v67 = [v71 objectAtIndexedSubscript:v77];
  v68 = [(FRCFrameInterpolator *)self interpolateBetweenFirstFrame:v67 secondFrame:secondFrameCopy timeScales:v66 withError:error];

  v69 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v81 + 1, objc_msgSend(v68, "count")}];
  [v71 insertObjects:v68 atIndexes:v69];

  self->_gatingEnabled = gatingEnabled;

  return v71;
}

- (id)synthesizeInterpolatedFrames:(id)frames second:(id)second normalizedFirst:(__CVBuffer *)first normalizedSecond:(__CVBuffer *)normalizedSecond timeScales:(id)scales outputSize:(CGSize)size outputPixelFormat:(unsigned int)format scalerEnabled:(BOOL)self0
{
  height = size.height;
  width = size.width;
  framesCopy = frames;
  secondCopy = second;
  scalesCopy = scales;
  kdebug_trace();
  if (self->_onDemandSynthesisBufferAllocation)
  {
    [(FRCSynthesis *)self->_synthesis allocateResources];
  }

  v20 = [scalesCopy count];
  memset(&v49, 0, sizeof(v49));
  if (framesCopy)
  {
    [framesCopy presentationTimeStamp];
  }

  memset(&v48, 0, sizeof(v48));
  if (secondCopy)
  {
    [secondCopy presentationTimeStamp];
    if (framesCopy)
    {
LABEL_7:
      [framesCopy presentationTimeStamp];
      CMTimeSubtract(&v48, &lhs, &rhs);
      [framesCopy presentationTimeStamp];
      goto LABEL_10;
    }
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
    if (framesCopy)
    {
      goto LABEL_7;
    }
  }

  memset(&rhs, 0, sizeof(rhs));
  CMTimeSubtract(&v48, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
LABEL_10:
  v35 = secondCopy;
  if (secondCopy)
  {
    [secondCopy presentationTimeStamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  [(LiteSynthesis *)self->_liteSynthesis setEnableMemDump:[(FRCFrameInterpolator *)self shallDumpDebugInfoForCurrPts:&lhs prevPts:&rhs, v35]];
  [(FRCSynthesis *)self->_synthesis createFeaturesFromFirstImage:first secondImage:normalizedSecond flowForward:self->_flowForward flowBackward:self->_flowBackward];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v20)
  {
    v22 = 0;
    do
    {
      v23 = [scalesCopy objectAtIndexedSubscript:v22];
      [v23 floatValue];
      v25 = v24;

      *&v26 = v25;
      height = [(FRCFrameInterpolator *)self synthesisFrameForTimeScale:format outputSize:enabled outputPixelFormat:v22 scalerEnabled:v20 == 1 frameIndex:v26 lastFrame:width, height];
      memset(&lhs, 0, sizeof(lhs));
      time = v48;
      CMTimeMultiplyByFloat64(&rhs, &time, v25);
      if (framesCopy)
      {
        [framesCopy presentationTimeStamp];
        v28 = v43;
      }

      else
      {
        v28 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
      }

      CMTimeConvertScale(&lhs, &rhs, v28, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      memset(&rhs, 0, sizeof(rhs));
      v41 = v49;
      v40 = lhs;
      CMTimeAdd(&time, &v41, &v40);
      if (framesCopy)
      {
        [framesCopy presentationTimeStamp];
        v29 = v39;
      }

      else
      {
        v29 = 0;
        v39 = 0;
      }

      CMTimeConvertScale(&rhs, &time, v29, kCMTimeRoundingMethod_QuickTime);
      v30 = [FRCFrame alloc];
      time = rhs;
      v31 = [(FRCFrame *)v30 initWithBuffer:height presentationTimeStamp:&time];
      CVPixelBufferRelease(height);
      [v21 addObject:v31];
      outputFrameListFromClient = self->_outputFrameListFromClient;
      if (outputFrameListFromClient)
      {
        v38 = rhs;
        v33 = [(NSArray *)outputFrameListFromClient objectAtIndexedSubscript:v22];
        time = v38;
        [v33 setPresentationTimeStamp:&time];
      }

      ++v22;
      --v20;
    }

    while (v20);
  }

  [(FRCSynthesis *)self->_synthesis releaseFeatures];
  if (self->_onDemandSynthesisBufferAllocation)
  {
    [(FRCSynthesis *)self->_synthesis releaseResources];
  }

  kdebug_trace();

  return v21;
}

- (id)selectFrameInsertionPointsFromTimingList:(id)list preModifiedTimingList:(id)timingList
{
  listCopy = list;
  if (self->_state == 2)
  {
    v6 = [(FRCFrameDropDetector *)self->_frameDropDetector selectFrameInsertionPointsFromTimingList:listCopy metadataList:0 sloMo:[(FRCFrameInterpolator *)self useCase]== 2 withError:0];
    if (!v6)
    {
      self->_gated = 1;
      self->_sessionResult = 1;
    }
  }

  else
  {
    NSLog(&cfstr_SessionIsNotSt_0.isa);
    v6 = 0;
  }

  return v6;
}

- (id)selectFrameInsertionPointsFromTimingList:(id)list metadataList:(id)metadataList withError:(id *)error
{
  listCopy = list;
  metadataListCopy = metadataList;
  if (self->_state == 2)
  {
    v10 = [(FRCFrameDropDetector *)self->_frameDropDetector selectFrameInsertionPointsFromTimingList:listCopy metadataList:metadataListCopy sloMo:[(FRCFrameInterpolator *)self useCase]== 2 withError:error];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setRetimingRecipe:[(FRCFrameDropDetector *)self->_frameDropDetector retimingRecipe]];
    if (!v10)
    {
      self->_gated = 1;
      self->_sessionResult = 1;
    }
  }

  else
  {
    NSLog(&cfstr_SessionIsNotSt_0.isa);
    if (error)
    {
      [(FRCFrameInterpolator *)self errorWithErrorCode:-22003];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)configureGating
{
  if (self->_gatingEnabled)
  {
    v3 = objc_alloc_init(OpticalFlowAnalyzer);
    flowAnalyzer = self->_flowAnalyzer;
    self->_flowAnalyzer = v3;

    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setScaler:self->_scaler];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setUsage:self->_usage];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setInputScaling:self->_inputScaling];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setOpticalFlowDownsampling:[(OpticalFlow *)self->_opticalFlow downsampling]!= 0];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setInputRotation:self->_inputRotation];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer setUseCase:self->_useCase];
    [(OpticalFlowAnalyzer *)self->_flowAnalyzer reset];
  }

  frameDropDetector = self->_frameDropDetector;
  if (frameDropDetector)
  {
    v6 = self->_gatingEnabled && !self->_forceFrameOutput;

    [(FRCFrameDropDetector *)frameDropDetector setGatingEnabled:v6];
  }
}

- (void)setPropertiesFromDefaults
{
  [(FRCFrameInterpolator *)self setFlowAnalysisFromDefaults];
  [(FRCFrameInterpolator *)self setLiteSynthesisDebugFromDefaults];
  [(FRCFrameInterpolator *)self setNormalizationModeFromDefaults];

  [(FRCFrameInterpolator *)self setCrossFlowAnalysisFromDefaults];
}

- (void)overwriteQualityModeFromDefaults
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FRC"];
  v4 = [v3 objectForKey:@"QualityMode"];
  if (!v4)
  {
    goto LABEL_19;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Forcing to %@", &v12, 0xCu);
  }

  if ([v4 caseInsensitiveCompare:@"kFRCHighPerformanceMode"])
  {
    if ([v4 caseInsensitiveCompare:@"kFRCHighQualityMode"])
    {
      if ([v4 caseInsensitiveCompare:@"kFRCLowLatencyMode"])
      {
        if ([v4 caseInsensitiveCompare:@"kFRCHighPerformanceModeV2"])
        {
          if ([v4 caseInsensitiveCompare:@"kFRCHighPerformanceModeV3"])
          {
            goto LABEL_15;
          }

          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  self->_qualityMode = v6;
LABEL_15:
  v7 = [v3 objectForKey:@"LowMemoryMode"];
  v8 = v7;
  if (v7)
  {
    self->_lowMemoryMode = [v7 BOOLValue];
    v9 = self->_logger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      lowMemoryMode = self->_lowMemoryMode;
      v12 = 67109120;
      LODWORD(v13) = lowMemoryMode;
      _os_log_impl(&dword_24A8C8000, v9, OS_LOG_TYPE_DEFAULT, "Setting lowMemoryMode to %d", &v12, 8u);
    }
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFlowAnalysisFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceFrameOutput", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_forceFrameOutput = AppBooleanValue != 0;
    if (!AppBooleanValue)
    {
      goto LABEL_7;
    }
  }

  else if (!self->_forceFrameOutput)
  {
    goto LABEL_7;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Frame Output forced.", v6, 2u);
  }

LABEL_7:
  v5 = CFPreferencesGetAppBooleanValue(@"FlowAnalysis", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_gatingEnabled = v5 != 0;
  }
}

- (void)setCrossFlowAnalysisFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CrossFlowAnalysis", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_enableCrossFlowAnalysis = AppBooleanValue != 0;
  }
}

- (void)setLiteSynthesisDebugFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PtsForLiteDebug", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  v4 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    CMTimeMake(&v7, AppIntegerValue, 9600);
    *&self->_ptsForLiteDebugging.value = *&v7.value;
    epoch = v7.epoch;
  }

  else
  {
    v6 = MEMORY[0x277CC0898];
    *&self->_ptsForLiteDebugging.value = *MEMORY[0x277CC0898];
    epoch = *(v6 + 16);
  }

  self->_ptsForLiteDebugging.epoch = epoch;
  [(LiteSynthesis *)self->_liteSynthesis setTextureFromCVPixelBuffer:v4 != 0];
}

- (void)setNormalizationModeFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  if (CFPreferencesGetAppBooleanValue(@"SelfNorm", @"com.apple.FRC", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  v4 = v3;
  [(FRCImageProcessor *)self->_imageProcessor setSelfNormalization:v4];
}

- (void)setSynthesisOptionsFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseFlowConsistencyMap", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_useFlowConsistencyMap = AppBooleanValue != 0;
  }

  v4 = CFPreferencesGetAppBooleanValue(@"UseTwoLayerSynthesis", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_twoLayerSynthesis = v4 != 0;
  }

  v5 = CFPreferencesGetAppBooleanValue(@"TwoLayerSynthesisQuarterSizeDC", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_twoLayerSynthesisQuarterSizeDC = v5 != 0;
  }
}

- (BOOL)shallReusePreviousFlowPts0:(id *)pts0 Pts1:(id *)pts1
{
  var1 = pts1->var1;
  memset(&v13, 0, sizeof(v13));
  lhs = *pts1;
  rhs = *pts0;
  CMTimeSubtract(&v13, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  time1 = v13;
  lastFrameDuration = self->_lastFrameDuration;
  CMTimeSubtract(&rhs, &time1, &lastFrameDuration);
  CMTimeAbsoluteValue(&lhs, &rhs);
  memset(&rhs, 0, sizeof(rhs));
  CMTimeMakeWithSeconds(&rhs, 0.000520833333, var1);
  if (self->_singleFlow && (time1 = self->_lastFramePts, lastFrameDuration = *pts0, !CMTimeCompare(&time1, &lastFrameDuration)))
  {
    time1 = lhs;
    lastFrameDuration = rhs;
    return CMTimeCompare(&time1, &lastFrameDuration) >> 31;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)preserveCMAttachmentFirstFrame:(id)frame secondFrame:(id)secondFrame
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  self->_anchorFrameCMAttachment = CMCopyDictionaryOfAttachments(0, [frameCopy buffer], 1u);
  if (self->_removeCMAttachment)
  {
    CMRemoveAllAttachments([frameCopy buffer]);
    CMRemoveAllAttachments([secondFrameCopy buffer]);
  }
}

- (void)restoreCMAttachmentToFirstFrame:(id)frame secondFrame:(id)secondFrame interpolatedFrames:(id)frames
{
  v21 = *MEMORY[0x277D85DE8];
  secondFrameCopy = secondFrame;
  framesCopy = frames;
  if (self->_removeCMAttachment)
  {
    CMSetAttachments([frame buffer], self->_anchorFrameCMAttachment, 1u);
    CMSetAttachments([secondFrameCopy buffer], self->_anchorFrameCMAttachment, 1u);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = framesCopy;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          CMSetAttachments([*(*(&v16 + 1) + 8 * v14++) buffer], self->_anchorFrameCMAttachment, 1u);
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  CFRelease(self->_anchorFrameCMAttachment);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)constructSessionStatisticsWithSessionDuration:(double)duration
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_usage)];
  [(NSDictionary *)v5 setObject:v6 forKeyedSubscript:@"FRCUsage"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_qualityMode)];
  [(NSDictionary *)v5 setObject:v7 forKeyedSubscript:@"FRCProcessingMode"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_totalFramesInterpolated)];
  [(NSDictionary *)v5 setObject:v8 forKeyedSubscript:@"FRCTotalInterpolatedFrames"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:duration];
  [(NSDictionary *)v5 setObject:v9 forKeyedSubscript:@"FRCProcessingTime"];

  if (self->_gatingEnabled)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(self->_sessionResult)];
    [(NSDictionary *)v5 setObject:v10 forKeyedSubscript:@"FRCGatingStatus"];

    v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[FRCFrameDropDetector retimingRecipe](self->_frameDropDetector, "retimingRecipe")}];
    [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:@"FRCLivePhotoRetimingRecipe"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[FRCFrameDropDetector numberOfInsertionPoints](self->_frameDropDetector, "numberOfInsertionPoints")}];
    [(NSDictionary *)v5 setObject:v12 forKeyedSubscript:@"FRCLivePhotoNumberOfGaps"];

    sessionResult = self->_sessionResult;
    switch(sessionResult)
    {
      case 4:
        v23 = [MEMORY[0x277CCABB0] numberWithInt:10];
        [(NSDictionary *)v5 setObject:v23 forKeyedSubscript:@"FRCGatingCause"];

        v24 = [MEMORY[0x277CCABB0] numberWithInt:(self->_maxPixelMeanDiff * 1000.0)];
        [(NSDictionary *)v5 setObject:v24 forKeyedSubscript:@"FRCMaximumPixelMeanDiff"];

        v14 = [MEMORY[0x277CCABB0] numberWithInt:(self->_maxPixelMeanChange * 1000.0)];
        v15 = &FRCMaximumPixelMeanChangeKey;
        goto LABEL_8;
      case 2:
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[OpticalFlowAnalyzer gatingCause](self->_flowAnalyzer, "gatingCause")}];
        [(NSDictionary *)v5 setObject:v16 forKeyedSubscript:@"FRCGatingCause"];

        maxTimeGap = self->_maxTimeGap;
        v17 = [MEMORY[0x277CCABB0] numberWithInt:(CMTimeGetSeconds(&maxTimeGap) * 1000.0)];
        [(NSDictionary *)v5 setObject:v17 forKeyedSubscript:@"FRCLivePhotoBurstDropDuration"];

        v18 = MEMORY[0x277CCABB0];
        [(OpticalFlowAnalyzer *)self->_flowAnalyzer flowConsistencyFrameScore];
        v20 = [v18 numberWithInt:v19];
        [(NSDictionary *)v5 setObject:v20 forKeyedSubscript:@"FRCFlowConsistencyFrameScore"];

        v21 = MEMORY[0x277CCABB0];
        [(OpticalFlowAnalyzer *)self->_flowAnalyzer flowConsistencyROIScore];
        v14 = [v21 numberWithInt:v22];
        v15 = FRCFlowConsistencyRegionScoreKey;
        goto LABEL_8;
      case 1:
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[FRCFrameDropDetector gatingCause](self->_frameDropDetector, "gatingCause")}];
        v15 = FRCGatingCauseKey;
LABEL_8:
        [(NSDictionary *)v5 setObject:v14 forKeyedSubscript:*v15];

        break;
    }
  }

  sessionStatistics = self->_sessionStatistics;
  self->_sessionStatistics = v5;
}

- (BOOL)shallDumpDebugInfoForCurrPts:(id *)pts prevPts:(id *)prevPts
{
  time1 = self->_ptsForLiteDebugging;
  v9 = **&MEMORY[0x277CC0898];
  v7 = CMTimeCompare(&time1, &v9);
  if (v7)
  {
    time1 = self->_ptsForLiteDebugging;
    v9 = *pts;
    if (CMTimeCompare(&time1, &v9) < 1)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      time1 = self->_ptsForLiteDebugging;
      v9 = *prevPts;
      LOBYTE(v7) = CMTimeCompare(&time1, &v9) < 1;
    }
  }

  return v7;
}

- (void)updateLastFramePts:(id *)pts duration:(id *)duration toInterpolate:(unint64_t)interpolate
{
  v5 = *&pts->var0;
  self->_lastFramePts.epoch = pts->var3;
  *&self->_lastFramePts.value = v5;
  var3 = duration->var3;
  *&self->_lastFrameDuration.value = *&duration->var0;
  self->_lastFrameDuration.epoch = var3;
  self->_lastFramesToInterpolate = interpolate;
}

- (void)updateBackwardFlow
{
  flowBackwardGating = self->_flowBackwardGating;
  prevFlowBackwardGating = self->_prevFlowBackwardGating;
  self->_flowBackwardGating = prevFlowBackwardGating;
  self->_prevFlowBackwardGating = flowBackwardGating;
  if (!self->_inputScaling)
  {
    self->_flowBackward = prevFlowBackwardGating;
  }
}

- (void)updateRecommendation
{
  if (self->_useCase != 1)
  {
    self->_recommendation = 0;
    return;
  }

  if (self->_totalFramesInterpolated)
  {
    if (self->_shouldGatedForInteractive)
    {
      v3 = 4;
LABEL_13:
      self->_recommendation = v3;
      goto LABEL_14;
    }

    gatingLevel = self->_gatingLevel;
    if (!gatingLevel)
    {
      if (self->_gated)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_13;
    }

    if (gatingLevel == 2)
    {
      v3 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    self->_recommendation = 0;
  }

LABEL_14:
  NSLog(&cfstr_Frameinterpola_1.isa, a2, self->_maxPixelMeanDiff, self->_maxPixelMeanChange);
  recommendation = self->_recommendation;
  if ((recommendation - 1) > 3)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278FEA6A8[recommendation - 1];
  }

  NSLog(&cfstr_Recommendation.isa, recommendation, [(__CFString *)v6 UTF8String]);
}

- (BOOL)checkStreamingBufferConsistencyFirstFrame:(id)frame secondFrame:(id)secondFrame
{
  secondFrameCopy = secondFrame;
  if (self->_firstPairInSession || (IOSurface = CVPixelBufferGetIOSurface([frame buffer]), ID = IOSurfaceGetID(IOSurface), previousSecondIOSurfaceID = self->_previousSecondIOSurfaceID, ID == previousSecondIOSurfaceID))
  {
    v10 = 1;
  }

  else
  {
    NSLog(&cfstr_Frameinterpola_2.isa, ID, previousSecondIOSurfaceID);
    NSLog(&cfstr_Frameinterpola_3.isa);
    v10 = 0;
  }

  v11 = CVPixelBufferGetIOSurface([secondFrameCopy buffer]);
  self->_previousSecondIOSurfaceID = IOSurfaceGetID(v11);

  return v10;
}

- (CGAffineTransform)preferredTransform
{
  v3 = *&self[12].ty;
  *&retstr->a = *&self[12].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].b;
  return self;
}

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_preferredTransform.c = *&transform->c;
  *&self->_preferredTransform.tx = v4;
  *&self->_preferredTransform.a = v3;
}

@end