@interface OpticalFlowAnalyzer
- ($599F175E452E455E49EC8439362DB023)analyzeBackwarpForward:(SEL)forward backward:(__CVBuffer *)backward flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)second;
- ($599F175E452E455E49EC8439362DB023)calcBackwarpStatisticsForwardLossTexture:(SEL)texture backwardLossTexture:(id)lossTexture faceHandLegRectangles:(id)rectangles;
- ($599F175E452E455E49EC8439362DB023)processBackwarpStats:(SEL)stats blockWidth:(id *)width blockHeight:(unint64_t)height faceHandLegBoundingBoxBlocks:(unint64_t)blocks;
- ($E2C29196C7A5C696474C6955C5A9CE06)analyzeFlowRandomnessWithPrevFlowBackward:(__CVBuffer *)backward forward:(__CVBuffer *)forward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame;
- ($E2C29196C7A5C696474C6955C5A9CE06)calcCrossFlowStatisticsPrevBackwardFlowTexture:(id)texture forwardFlowTexture:(id)flowTexture frameTexture:(id)frameTexture flowScaleBuffer:(id)buffer;
- ($E2C29196C7A5C696474C6955C5A9CE06)processGPUOutputsRandomness:(id *)randomness blockWidth:(unint64_t)width blockHeight:(unint64_t)height;
- ($E2C29196C7A5C696474C6955C5A9CE06)safeThresholdWithtimeGap:(id *)gap isDownsampled:(BOOL)downsampled;
- ($F92E1B06C6614F01351795DC9F3D8716)analyzeOpticalFlowForward:(SEL)forward backward:(__CVBuffer *)backward flowResFrame:(__CVBuffer *)frame;
- ($F92E1B06C6614F01351795DC9F3D8716)calcFlowStatisticsForwardFlowTexture:(SEL)texture backwardFlowTexture:(id)flowTexture faceHandLegRectangles:(id)rectangles frameTexture:(id)frameTexture;
- ($F92E1B06C6614F01351795DC9F3D8716)processGPUOutputs:(SEL)outputs blockWidth:(id *)width blockHeight:(unint64_t)height faceHandLegBoundingBoxBlocks:(unint64_t)blocks;
- (BOOL)checkSafetyByBlockConsistency:(id *)consistency;
- (BOOL)checkSafetyByScoreAndArea:(id *)area;
- (BOOL)checkSafetyByStripConsistency:(id *)consistency;
- (BOOL)detectCameraRotation;
- (FRCScaler)scaler;
- (OpticalFlowAnalyzer)init;
- (float)computeBackwarpConfidenceFromScore:(float)score scoreThreshold:(float)threshold scoreHighThreshold:(float)highThreshold areaRatio:(float)ratio areaRatioThreshold:(float)ratioThreshold areaRatioHighThreshold:(float)ratioHighThreshold large_area:(BOOL)large_area;
- (float)computeConsistencyConfidenceFromScore:(float)score scoreThreshold:(float)threshold areaRatio:(float)ratio areaRatioThreshold:(float)ratioThreshold;
- (id)extractFaceHandLegInfoFromBuffer:(__CVBuffer *)buffer;
- (id)findFaceHandLegBlocksFromRectangles:(id)rectangles blockWidth:(unint64_t)width blockHeight:(unint64_t)height;
- (int)detectDominantDirectionInROI:(unsigned int *)i;
- (int64_t)detectSpecialMotion;
- (unint64_t)gatingCause;
- (void)analyzeAggregatedStatistics:(id *)statistics;
- (void)analyzeDeformation;
- (void)analyzeMotionHistograms;
- (void)calcMotionHistogramForwardFlowTexture:(id)texture frameTexture:(id)frameTexture;
- (void)calcStripConsistency:(float *)consistency stripSize:(unint64_t)size numStrips:(unsigned int)strips;
- (void)convertOctantDirectionHistogram:(int *)histogram toPerpendicularQuadrantHistogram:(unsigned int *)quadrantHistogram;
- (void)dealloc;
- (void)detectDominantDirection;
- (void)isSafeToInterpolateForBackwarpGatingWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)second;
- (void)isSafeToInterpolateForConsistencyGatingWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward flowResFrame:(__CVBuffer *)frame;
- (void)isSafeToInterpolateForDeformationGating;
- (void)isSafeToInterpolateForRandomnessGatingWithPrevFlowBackward:(__CVBuffer *)backward flowForward:(__CVBuffer *)forward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame;
- (void)modulateGatingParametersFromMotionHistogramsAnalysis;
- (void)modulateGatingParametersWithFlowForward:(__CVBuffer *)forward flowResFrame:(__CVBuffer *)frame;
- (void)prepareGatingFrameDropDetector:(id)detector numberOfFrames:(unint64_t)frames timeGap:(id *)gap isContinuousDrops:(BOOL)drops enableFlowAnalysis:(BOOL)analysis enableCrossFlowAnalysis:(BOOL)flowAnalysis cleanRectFirst:(CGRect)first cleanRectSecond:(CGRect)self0;
- (void)printFaceHandLegRectangles:(id)rectangles;
- (void)printSideHistograms;
- (void)printStripScores:(id *)scores;
- (void)processGPUOutputsHistograms:(id *)histograms blockWidth:(unint64_t)width blockHeight:(unint64_t)height;
- (void)processGPUOutputsHistogramsForDeformation:(id *)deformation blockWidth:(unint64_t)width blockHeight:(unint64_t)height;
- (void)reset;
- (void)runDetectionFromFirstBuffer:(__CVBuffer *)buffer secondBuffer:(__CVBuffer *)secondBuffer;
- (void)runGatingWithPrevFlowBackward:(__CVBuffer *)backward flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)flowBackward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)self0;
- (void)setDetectorsFromDefaults;
- (void)setupMetal;
- (void)updateGatingStats;
@end

@implementation OpticalFlowAnalyzer

- (OpticalFlowAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = OpticalFlowAnalyzer;
  v2 = [(FRCMetalBase *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(OpticalFlowAnalyzer *)v2 setupMetal];
    v4 = os_log_create("com.apple.FRC", "FlowAnalyzer");
    logger = v3->_logger;
    v3->_logger = v4;

    v3->_handDetectionEnabled = 0;
    v3->_bodyDetectionEnabled = 1;
    v3->_humanDetectionEnabled = 1;
    v3->_animalFaceDetectionEnabled = 1;
    v3->_confidenceScore = 1.0;
    v3->_confidenceScoreOnDemand = 1.0;
    [(OpticalFlowAnalyzer *)v3 setDetectorsFromDefaults];
    v6 = v3;
  }

  return v3;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_donwsampledSourceBuffer);
  NSLog(&cfstr_FlowanalysisDe.isa, self->_timesDidRunDetection);
  v3.receiver = self;
  v3.super_class = OpticalFlowAnalyzer;
  [(OpticalFlowAnalyzer *)&v3 dealloc];
}

- (void)setDetectorsFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HandDetection", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_handDetectionEnabled = AppBooleanValue != 0;
  }

  v4 = CFPreferencesGetAppBooleanValue(@"BodyDetection", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_bodyDetectionEnabled = v4 != 0;
  }

  v5 = CFPreferencesGetAppBooleanValue(@"HumanDetection", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_humanDetectionEnabled = v5 != 0;
  }

  v6 = CFPreferencesGetAppBooleanValue(@"AnimalFaceDetection", @"com.apple.FRC", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_animalFaceDetectionEnabled = v6 != 0;
  }
}

- (void)setupMetal
{
  v3 = [(FRCMetalBase *)self createKernel:@"calcFlowStatistics"];
  flowStatisticsKernel = self->_flowStatisticsKernel;
  self->_flowStatisticsKernel = v3;

  v5 = [(FRCMetalBase *)self createKernel:@"calcCrossFlowStatistics"];
  crossFlowStatisticsKernel = self->_crossFlowStatisticsKernel;
  self->_crossFlowStatisticsKernel = v5;

  v7 = [(FRCMetalBase *)self createKernel:@"calcMotionHistograms"];
  motionHistogramsKernel = self->_motionHistogramsKernel;
  self->_motionHistogramsKernel = v7;

  v9 = [(FRCMetalBase *)self createKernel:@"calcBackwarpStatistics"];
  backwarpStatisticsKernel = self->_backwarpStatisticsKernel;
  self->_backwarpStatisticsKernel = v9;

  MEMORY[0x2821F96F8]();
}

- (void)reset
{
  selfCopy = self;
  self->_isSmallDrops = 0;
  self->_isContinuousDrops = 0;
  self->_shouldRunFlowAnalysis = 0;
  self->_shouldRunCrossFlowAnalysis = 0;
  self->_shouldRunDetection = 0;
  self->_shouldRunBackwarpGating = 0;
  self->_timesDidRunDetection = 0;
  self->_consistentFlowRandomness = 0.0;
  self->_signErrFlowRandomness = 0.0;
  self->_signAreaFlowRandomness = 0.0;
  self->_zigzagFlowRandomness = 0.0;
  self->_prevFlowRandomnessErr = -1.0;
  self->_prevFlowRandomnessArea = -1.0;
  self->_flowDeformation = 0.0;
  self->_flowDeformationSum = 0.0;
  self->_safeToInterpolate = 16843009;
  self->_isSafeToInterpolateForInteractiveMode = 1;
  self->_isLargeRandomnessErr = 0;
  self->_flowConsistencyFrameScore = 0.0;
  self->_flowConsistencyROIScore = 0.0;
  self->_confidenceScore = 1.0;
  self->_confidenceScoreOnDemand = 1.0;
  self->_deformationBinaryMap = 0;
  self->_deformationBlockRanges = 0;
  self->_consistencyMap = 0;
  self->_backwarpLossMap = 0;
  self->_backwarpBlockRanges = 0;
  self->_visualizationEnabled = 0;
  self->_cleanRectFlow8x8.origin.x = 0.0;
  self->_cleanRectFlow8x8.origin.y = 0.0;
  self->_cleanRectFlow8x8.size = xmmword_24A8FF000;
  v92 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.FRC"];
  v91 = [v92 pathForResource:@"GatingParameters" ofType:@"json"];
  v90 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v4 = [v3 objectForKeyedSubscript:@"consistencyAreaThreshold"];
  [v4 floatValue];
  selfCopy->jsonConsistencyAreaThreshold = v5;

  v6 = [v3 objectForKeyedSubscript:@"consistencyROIAreaPercentageThreshold"];
  [v6 floatValue];
  selfCopy->jsonConsistencyROIAreaPercentageThreshold = v7;

  v8 = [v3 objectForKeyedSubscript:@"consistencyAreaPercentageThreshold"];
  [v8 floatValue];
  selfCopy->jsonConsistencyAreaPercentageThreshold = v9;

  selfCopy->jsonConsistencyFrameScoreThresholdOnDemand = 27.0;
  selfCopy->jsonConsistencyAreaPercentageThresholdOnDemand = 5.0;
  v10 = -8;
  v93 = selfCopy;
  do
  {
    v11 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForDownsampled"];
    v12 = [v11 objectAtIndexedSubscript:v10 + 8];
    [v12 floatValue];
    selfCopy->jsonConsistencySafeThresholdsForDownsampled[0] = v13;

    v14 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForNonDownsampled"];
    v15 = [v14 objectAtIndexedSubscript:v10 + 8];
    [v15 floatValue];
    selfCopy->jsonConsistencySafeThresholdsForNonDownsampled[0] = v16;

    v17 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForDownsampledDelta"];
    v18 = [v17 objectAtIndexedSubscript:v10 + 8];
    [v18 floatValue];
    selfCopy->jsonConsistencySafeThresholdsForDownsampledDelta[0] = v19;

    v20 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForNonDownsampledDelta"];
    v21 = [v20 objectAtIndexedSubscript:v10 + 8];
    [v21 floatValue];
    selfCopy->jsonConsistencySafeThresholdsForNonDownsampledDelta[0] = v22;

    selfCopy = (selfCopy + 4);
    v23 = __CFADD__(v10++, 1);
  }

  while (!v23);
  useCase = v93->_useCase;
  v25 = 3.0;
  if (!useCase)
  {
    v25 = 5.5;
  }

  v26 = 23.5;
  if (!useCase)
  {
    v26 = 20.5;
  }

  v93->jsonConsistencyVerticalStripAreaPercentageThreshold = v25;
  v93->jsonConsistencyVerticalStripScoreThreshold = v26;
  v93->jsonConsistencyHorizontalStripAreaPercentageThreshold = 9.0;
  v93->jsonConsistencyHorizontalStripScoreThreshold = 17.5;
  v93->consistencySafeThresholdsScale = 0.0;
  v93->consistencySafeThresholdsScaleForLargeRandomnessErr = 0.0;
  v27 = [v3 objectForKeyedSubscript:@"randomnessScoreThreshold"];
  [v27 floatValue];
  v93->jsonRandomnessScoreThreshold = v28;

  v29 = [v3 objectForKeyedSubscript:@"randomnessScoreThresholdLow"];
  [v29 floatValue];
  v93->jsonRandomnessScoreThresholdLow = v30;

  v31 = [v3 objectForKeyedSubscript:@"randomnessAreaThreshold"];
  [v31 floatValue];
  v93->jsonRandomnessAreaThreshold = v32;

  v33 = [v3 objectForKeyedSubscript:@"randomnessAreaPercentageThresholdHigh"];
  [v33 floatValue];
  v93->jsonRandomnessAreaPercentageThresholdHigh = v34;

  v35 = [v3 objectForKeyedSubscript:@"randomnessAreaPercentageThresholdLow"];
  [v35 floatValue];
  v93->jsonRandomnessAreaPercentageThresholdLow = v36;

  v37 = [v3 objectForKeyedSubscript:@"randomnessErrThreshold"];
  [v37 floatValue];
  v93->jsonRandomnessErrThreshold = v38;

  v39 = [v3 objectForKeyedSubscript:@"randomnessAreaScale"];
  [v39 floatValue];
  v93->jsonRandomnessAreaScale = v40;

  v93->randomnessAreaScale = 1.0;
  v41 = [v3 objectForKeyedSubscript:@"randomnessErrorChangeRatioThreshold"];
  [v41 floatValue];
  v93->jsonRandomnessErrorChangeRatioThreshold = v42;

  v43 = [v3 objectForKeyedSubscript:@"randomnessAreaChangeRatioThreshold"];
  [v43 floatValue];
  v93->jsonRandomnessAreaChangeRatioThreshold = v44;

  v45 = [v3 objectForKeyedSubscript:@"randomnessErrorChangeRatioThresholdForCameraMotion"];
  [v45 floatValue];
  v93->jsonRandomnessErrorChangeRatioThresholdForCameraMotion = v46;

  v47 = [v3 objectForKeyedSubscript:@"randomnessAreaChangeRatioThresholdForCameraMotion"];
  [v47 floatValue];
  v93->jsonRandomnessAreaChangeRatioThresholdForCameraMotion = v48;

  v49 = [v3 objectForKeyedSubscript:@"randomnessErrorChangeRatioThresholdForStatic"];
  [v49 floatValue];
  v93->jsonRandomnessErrorChangeRatioThresholdForStatic = v50;

  v51 = [v3 objectForKeyedSubscript:@"randomnessAreaChangeRatioThresholdForStatic"];
  [v51 floatValue];
  v93->jsonRandomnessAreaChangeRatioThresholdForStatic = v52;

  v93->randomnessErrorChangeRatioThreshold = v93->jsonRandomnessErrorChangeRatioThreshold;
  v93->randomnessAreaChangeRatioThreshold = v93->jsonRandomnessAreaChangeRatioThreshold;
  v53 = [v3 objectForKeyedSubscript:@"consistentRandomFlowThreshold"];
  [v53 floatValue];
  v93->jsonConsistentRandomFlowThreshold = v54;

  v55 = [v3 objectForKeyedSubscript:@"consistentRandomFlowResetAreaChangeRatio"];
  [v55 floatValue];
  v93->jsonConsistentRandomFlowResetAreaChangeRatio = v56;

  v57 = [v3 objectForKeyedSubscript:@"zigzagRandomFlowThreshold"];
  [v57 floatValue];
  v93->jsonZigzagRandomFlowThreshold = v58;

  v59 = [v3 objectForKeyedSubscript:@"deformationRatioThreshold"];
  [v59 floatValue];
  v93->jsonDeformationRatioThreshold = v60;

  v61 = [v3 objectForKeyedSubscript:@"deformationFlowThreshold"];
  [v61 floatValue];
  v93->jsonDeformationFlowThreshold = v62;

  v63 = [v3 objectForKeyedSubscript:@"deformationFlowSumThreshold"];
  [v63 floatValue];
  v93->jsonDeformationFlowSumThreshold = v64;

  v65 = [v3 objectForKeyedSubscript:@"histogramsAnalysisLargeObjectSizeThreshold"];
  [v65 floatValue];
  v93->jsonHistogramsAnalysisLargeObjectSizeThreshold = v66;

  v67 = [v3 objectForKeyedSubscript:@"histogramsAnalysisSmallObjectSizeThreshold"];
  [v67 floatValue];
  v93->jsonHistogramsAnalysisSmallObjectSizeThreshold = v68;

  v69 = [v3 objectForKeyedSubscript:@"sideMotionDominanceThreshold"];
  [v69 floatValue];
  v93->jsonSideMotionDominanceThreshold = v70;

  v71 = [v3 objectForKeyedSubscript:@"sideMotionPixelCountThreshold"];
  v93->jsonSideMotionPixelCountThreshold = [v71 intValue];

  v72 = -12;
  v73 = v93;
  do
  {
    v74 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForDownsampledSloMo"];
    v75 = [v74 objectAtIndexedSubscript:v72 + 12];
    [v75 floatValue];
    v73->jsonConsistencySafeThresholdsForDownsampledSloMo[0] = v76;

    v77 = [v3 objectForKeyedSubscript:@"consistencySafeThresholdsForNonDownsampledSloMo"];
    v78 = [v77 objectAtIndexedSubscript:v72 + 12];
    [v78 floatValue];
    v73->jsonConsistencySafeThresholdsForNonDownsampledSloMo[0] = v79;

    v73 = (v73 + 4);
    v23 = __CFADD__(v72++, 1);
  }

  while (!v23);
  v80 = [v3 objectForKeyedSubscript:@"deformationFlowThresholdForSloMo"];
  [v80 floatValue];
  v93->jsonDeformationFlowThresholdForSloMo = v81;

  v82 = [v3 objectForKeyedSubscript:@"deformationFlowSumThresholdForSloMo"];
  [v82 floatValue];
  v93->jsonDeformationFlowSumThresholdForSloMo = v83;

  v84 = [v3 objectForKeyedSubscript:@"backwarpAreaPercentageThreshold"];
  [v84 floatValue];
  v93->jsonBackwarpAreaPercentageThreshold = v85;

  v86 = [v3 objectForKeyedSubscript:@"backwarpFrameScoreThreshold"];
  [v86 floatValue];
  v93->jsonBackwarpFrameScoreThreshold = v87;

  v88 = [v3 objectForKeyedSubscript:@"backwarpROIScoreThreshold"];
  [v88 floatValue];
  v93->jsonBackwarpROIScoreThreshold = v89;

  v93->jsonBackwarpScoreHighThreshold = 40.0;
  v93->jsonBackwarpAreaPercentageHighThreshold = 45.0;
  v93->jsonBackwarpAreaThreshold = 450.0;
  v93->jsonBackwarpFrameScoreThresholdOnDemand = 27.0;
  v93->jsonBackwarpAreaPercentageThresholdOnDemand = 5.0;
  CVPixelBufferRelease(v93->_donwsampledSourceBuffer);
  v93->_donwsampledSourceBuffer = 0;
}

- (unint64_t)gatingCause
{
  if (!self->_safeToInterpolate.consistency)
  {
    return 6;
  }

  if (!self->_safeToInterpolate.randomness)
  {
    return 7;
  }

  if (!self->_safeToInterpolate.deformation)
  {
    return 8;
  }

  if (self->_safeToInterpolate.backwarp)
  {
    return 0;
  }

  return 9;
}

- (void)prepareGatingFrameDropDetector:(id)detector numberOfFrames:(unint64_t)frames timeGap:(id *)gap isContinuousDrops:(BOOL)drops enableFlowAnalysis:(BOOL)analysis enableCrossFlowAnalysis:(BOOL)flowAnalysis cleanRectFirst:(CGRect)first cleanRectSecond:(CGRect)self0
{
  flowAnalysisCopy = flowAnalysis;
  analysisCopy = analysis;
  width = second.size.width;
  height = second.size.height;
  v42 = first.size.height;
  x = second.origin.x;
  y = first.origin.y;
  v39 = second.origin.y;
  v40 = first.origin.x;
  v41 = first.size.width;
  detectorCopy = detector;
  self->_framesToInterpolate = frames;
  var3 = gap->var3;
  *&self->_timeGap.value = *&gap->var0;
  self->_timeGap.epoch = var3;
  self->_isContinuousDrops = drops;
  if (self->_framesToInterpolate < 2)
  {
    v18 = 0;
  }

  else
  {
    CMTimeMake(&time2, 10, 600);
    time1 = self->_timeGap;
    v18 = CMTimeCompare(&time1, &time2) > 0 || self->_framesToInterpolate > 4;
  }

  if ([detectorCopy retimingRecipe])
  {
    v19 = [detectorCopy numberOfInsertionPoints] < 5;
  }

  else
  {
    v19 = 1;
  }

  self->_isSmallDrops = v19;
  if (analysisCopy)
  {
    if ([detectorCopy numberOfInsertionPoints])
    {
      v20 = 1;
    }

    else
    {
      v20 = self->_useCase == 1;
    }
  }

  else
  {
    v20 = 0;
  }

  self->_shouldRunFlowAnalysis = v20;
  v21 = flowAnalysisCopy && self->_isContinuousDrops && self->_useCase == 0;
  self->_shouldRunCrossFlowAnalysis = v21;
  if (!self->_shouldRunFlowAnalysis)
  {
    self->_shouldRunDetection = 0;
    self->_shouldRunBackwarpGating = 0;
    if (!self->_useCase)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  useCase = self->_useCase;
  if (useCase == 1)
  {
    framesToInterpolate = self->_framesToInterpolate;
    self->_shouldRunDetection = framesToInterpolate > 2;
    self->_shouldRunBackwarpGating = framesToInterpolate - 4 < 6;
    goto LABEL_27;
  }

  if (useCase)
  {
LABEL_27:
    v26.f64[0] = v40;
    v25.f64[0] = v41;
    v26.f64[1] = y;
    _Q4.f64[0] = x;
    _Q4.f64[1] = v39;
    v28 = vmaxnmq_f64(v26, _Q4);
    v25.f64[1] = v42;
    v29 = vaddq_f64(v25, v26);
    v26.f64[0] = width;
    v26.f64[1] = height;
    v30 = vaddq_f64(v26, _Q4);
    v31 = vdupq_n_s64(0x3FB0000000000000uLL);
    __asm { FMOV            V4.2S, #1.0 }

    v36 = vcvtq_f64_f32(vadd_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(v28, v31))), *&_Q4.f64[0]));
    v37 = vsubq_f64(vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(vminnmq_f64(v29, v30), v31)))), v36);
    self->_cleanRectFlow8x8.origin = v36;
    self->_cleanRectFlow8x8.size = v37;
    printf("cleanRectFlow8x8: (x, y, width, height) = (%f, %f, %f, %f)\n", v36.x, v36.y, v37.width, v37.height);
    goto LABEL_30;
  }

  v23 = (v18 || self->_isSmallDrops) && self->_timesDidRunDetection < 2u;
  self->_shouldRunDetection = v23;
LABEL_30:
}

- (void)runGatingWithPrevFlowBackward:(__CVBuffer *)backward flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)flowBackward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)self0
{
  [(OpticalFlowAnalyzer *)self modulateGatingParametersWithFlowForward:forward flowResFrame:frame];
  if (self->_shouldRunCrossFlowAnalysis)
  {
    kdebug_trace();
    v17 = *&duration->var0;
    var3 = duration->var3;
    [(OpticalFlowAnalyzer *)self isSafeToInterpolateForRandomnessGatingWithPrevFlowBackward:backward flowForward:forward lastFrameDuration:&v17 lastNumberOfFrames:frames flowResFrame:frame];
    kdebug_trace();
  }

  if (self->_shouldRunFlowAnalysis)
  {
    kdebug_trace();
    [(OpticalFlowAnalyzer *)self isSafeToInterpolateForConsistencyGatingWithFlowForward:forward flowBackward:flowBackward flowResFrame:frame];
    [(OpticalFlowAnalyzer *)self isSafeToInterpolateForBackwarpGatingWithFlowForward:forward flowBackward:flowBackward flowResFirst:first flowResSecond:second];
    [(OpticalFlowAnalyzer *)self isSafeToInterpolateForDeformationGating];
    kdebug_trace();
  }
}

- (void)isSafeToInterpolateForConsistencyGatingWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward flowResFrame:(__CVBuffer *)frame
{
  v55 = 0;
  *v53 = 0u;
  *v54 = 0u;
  *v51 = 0u;
  *v52 = 0u;
  *v49 = 0u;
  *v50 = 0u;
  *v47 = 0u;
  *v48 = 0u;
  v45 = 0u;
  *v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v9 = objc_autoreleasePoolPush();
  [(OpticalFlowAnalyzer *)self analyzeOpticalFlowForward:forward backward:backward flowResFrame:frame];
  objc_autoreleasePoolPop(v9);
  if (!self->_useCase && self->_isLargeRandomnessErr)
  {
    retimingRecipe = self->_retimingRecipe;
    if (retimingRecipe < 3 || retimingRecipe == 1000)
    {
      if (self->consistencySafeThresholdsScale <= 0.0)
      {
        self->consistencySafeThresholdsScaleForLargeRandomnessErr = self->consistencySafeThresholdsScaleForLargeRandomnessErr + 1.0;
      }

      if (self->_prevFlowRandomnessErr >= self->jsonRandomnessErrThreshold)
      {
        self->consistencySafeThresholdsScaleForLargeRandomnessErr = self->consistencySafeThresholdsScaleForLargeRandomnessErr + 0.5;
      }

      if (self->_prevFlowRandomnessArea >= self->jsonRandomnessAreaPercentageThresholdHigh)
      {
        self->consistencySafeThresholdsScaleForLargeRandomnessErr = self->consistencySafeThresholdsScaleForLargeRandomnessErr + 0.5;
      }
    }
  }

  v11 = *(&v43 + 3);
  v12 = *&v44;
  p_timeGap = &self->_timeGap;
  opticalFlowDownsampling = self->_opticalFlowDownsampling;
  time2 = self->_timeGap;
  [(OpticalFlowAnalyzer *)self safeThresholdWithtimeGap:&time2 isDownsampled:opticalFlowDownsampling];
  v19 = *&v15;
  v20 = *&v16;
  useCase = self->_useCase;
  if (useCase == 1)
  {
    v23 = *&v17;
    v39 = v12;
    *&v18 = self->jsonConsistencyAreaPercentageThreshold;
    LODWORD(v15) = 0;
    *&v16 = v19;
    *&v17 = v11;
    [(OpticalFlowAnalyzer *)self computeConsistencyConfidenceFromScore:v15 scoreThreshold:v16 areaRatio:v17 areaRatioThreshold:v18];
    v25 = v24;
    *&v26 = self->jsonConsistencyAreaPercentageThresholdOnDemand;
    LODWORD(v27) = 0;
    *&v28 = v23;
    *&v29 = v11;
    [(OpticalFlowAnalyzer *)self computeConsistencyConfidenceFromScore:v27 scoreThreshold:v28 areaRatio:v29 areaRatioThreshold:v26];
    v32 = *&v34;
    LODWORD(v33) = 1.0;
    LODWORD(v34) = 1.0;
    if (*(&v43 + 1) != *(&v43 + 2))
    {
      *&v31 = self->jsonConsistencyROIAreaPercentageThreshold;
      LODWORD(v34) = 1120403456;
      *&v30 = v20;
      *&v33 = v11;
      [(OpticalFlowAnalyzer *)self computeConsistencyConfidenceFromScore:v34 scoreThreshold:v30 areaRatio:v33 areaRatioThreshold:v31];
      LODWORD(v33) = 1.0;
    }

    v35 = fmin(fminf(v25, *&v34), 1.0);
    if (v35 < *&v33)
    {
      NSLog(&cfstr_Autobahnflowan.isa, v35);
    }

    self->_confidenceScore = fminf(v35, self->_confidenceScore);
    v36 = fmin(v32, 1.0);
    if (v36 < 1.0)
    {
      NSLog(&cfstr_Autobahnflowan_0.isa, v36);
    }

    self->_confidenceScoreOnDemand = fminf(v36, self->_confidenceScoreOnDemand);
    if (v11 > self->jsonConsistencyAreaPercentageThreshold && v19 > 0.0)
    {
      self->_safeToInterpolate.consistency = 0;
      if (self->_framesToInterpolate < 4)
      {
        NSLog(&cfstr_Autobahnflowan_2.isa);
        goto LABEL_47;
      }

      v22 = @"[AutobahnFlowAnalysis] Interpolation is gated (consistency) - frame for recommendation only";
      if (v11 <= self->jsonConsistencyAreaPercentageThresholdOnDemand || v23 <= 0.0)
      {
        goto LABEL_46;
      }

      v22 = @"[AutobahnFlowAnalysis] Interpolation is gated (consistency) - frame for both";
      v37 = &OBJC_IVAR___OpticalFlowAnalyzer__isSafeToInterpolateForInteractiveMode;
LABEL_45:
      *(&self->super.super.isa + *v37) = 0;
LABEL_46:
      NSLog(&v22->isa);
      goto LABEL_47;
    }

    CMTimeMake(&time2, 40, 600);
    *&time1.value = *&p_timeGap->value;
    time1.epoch = self->_timeGap.epoch;
    if (CMTimeCompare(&time1, &time2) >= 1 && ![(OpticalFlowAnalyzer *)self checkSafetyByStripConsistency:v42])
    {
      v22 = @"[AutobahnFlowAnalysis] Interpolation is gated (consistency) - strip for recommendation only";
      goto LABEL_44;
    }

    if (v39 > self->jsonConsistencyROIAreaPercentageThreshold && v20 > 100.0)
    {
      v22 = @"[AutobahnFlowAnalysis] Interpolation is gated (consistency) - roi for recommendation only";
      goto LABEL_44;
    }
  }

  else
  {
    if (useCase)
    {
      goto LABEL_47;
    }

    if ((v11 > self->jsonConsistencyAreaPercentageThreshold || self->_retimingRecipe == 3) && *&v15 > 0.0)
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - frame";
LABEL_44:
      v37 = &OBJC_IVAR___OpticalFlowAnalyzer__safeToInterpolate;
      goto LABEL_45;
    }

    isSmallDrops = self->_isSmallDrops;
    if (isSmallDrops && ((self->consistencySafeThresholdsScale * 4.0) + 35.0) > 0.0)
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - frameForSmallDrops";
      goto LABEL_44;
    }

    if (*&v16 > 100.0)
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - roi";
      goto LABEL_44;
    }

    if (100.0 < 25.0 && isSmallDrops)
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - roiForSmallDrops";
      goto LABEL_44;
    }

    if (self->_motionHistogramsAnalysis.hasCameraRotaion)
    {
      CMTimeMake(&time2, 80, 600);
      *&time1.value = *&p_timeGap->value;
      time1.epoch = self->_timeGap.epoch;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0 || !self->_retimingRecipe)
      {
        v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - rotation";
        goto LABEL_44;
      }
    }

    if (![(OpticalFlowAnalyzer *)self checkSafetyByScoreAndArea:v42])
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - area";
      goto LABEL_44;
    }

    if (![(OpticalFlowAnalyzer *)self checkSafetyByStripConsistency:v42])
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - strip";
      goto LABEL_44;
    }

    if (![(OpticalFlowAnalyzer *)self checkSafetyByBlockConsistency:v42])
    {
      v22 = @"[FlowAnalysis] Interpolation is gated (consistency) - block";
      goto LABEL_44;
    }
  }

LABEL_47:
  self->_flowConsistencyFrameScore = 0.0;
  self->_flowConsistencyROIScore = 100.0;
  if (v46[0])
  {
    free(v46[0]);
  }

  if (v47[0])
  {
    free(v47[0]);
  }

  if (v48[0])
  {
    free(v48[0]);
  }

  if (v49[0])
  {
    free(v49[0]);
  }

  if (v50[0])
  {
    free(v50[0]);
  }

  if (v51[0])
  {
    free(v51[0]);
  }

  if (v52[0])
  {
    free(v52[0]);
  }

  if (v53[0])
  {
    free(v53[0]);
  }

  if (v54[0])
  {
    free(v54[0]);
  }

  if (v55)
  {
    free(v55);
  }
}

- (float)computeConsistencyConfidenceFromScore:(float)score scoreThreshold:(float)threshold areaRatio:(float)ratio areaRatioThreshold:(float)ratioThreshold
{
  v8 = 1.5;
  if (ratio < ratioThreshold)
  {
    v8 = expf((1.0 - (ratio / ratioThreshold)) * 15.0) * 1.5;
  }

  v9 = 4.0;
  if (score >= threshold)
  {
    v9 = 1.0;
  }

  return v8 / (expf(((threshold / score) + -1.0) * v9) + 1.0);
}

- ($F92E1B06C6614F01351795DC9F3D8716)analyzeOpticalFlowForward:(SEL)forward backward:(__CVBuffer *)backward flowResFrame:(__CVBuffer *)frame
{
  v10 = createTexturesFromCVPixelBuffer(backward, self->super._device, 1, 2uLL);
  v11 = createTexturesFromCVPixelBuffer(frame, self->super._device, 1, 2uLL);
  v15 = createRGBATextureFromCVPixelBuffer(a6, self->super._device);
  v12 = [(NSArray *)self->_firstFaceHandLegRectangles arrayByAddingObjectsFromArray:self->_secondFaceHandLegRectangles];
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var28 = 0u;
  retstr->var30 = 0;
  [(OpticalFlowAnalyzer *)self calcFlowStatisticsForwardFlowTexture:v10 backwardFlowTexture:v11 faceHandLegRectangles:v12 frameTexture:v15];
  framesToInterpolate = self->_framesToInterpolate;
  retstr->var0 = self->_timeGap;
  retstr->var1 = framesToInterpolate;
  [(OpticalFlowAnalyzer *)self analyzeAggregatedStatistics:retstr];

  return result;
}

- ($F92E1B06C6614F01351795DC9F3D8716)calcFlowStatisticsForwardFlowTexture:(SEL)texture backwardFlowTexture:(id)flowTexture faceHandLegRectangles:(id)rectangles frameTexture:(id)frameTexture
{
  frameTextureCopy = frameTexture;
  v12 = a7;
  rectanglesCopy = rectangles;
  flowTextureCopy = flowTexture;
  v15 = ([flowTextureCopy width] + 7) >> 3;
  v16 = ([flowTextureCopy height] + 7) >> 3;
  v17 = [(MTLDevice *)self->super._device newBufferWithLength:4 * v15 * v16 options:0];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_flowStatisticsKernel];
  [computeCommandEncoder setTexture:flowTextureCopy atIndex:0];

  [computeCommandEncoder setTexture:rectanglesCopy atIndex:1];
  [computeCommandEncoder setTexture:v12 atIndex:2];

  [computeCommandEncoder setBuffer:v17 offset:0 atIndex:0];
  v26[0] = v15;
  v26[1] = v16;
  v26[2] = 1;
  v24 = vdupq_n_s64(8uLL);
  v25 = 1;
  [computeCommandEncoder dispatchThreadgroups:v26 threadsPerThreadgroup:&v24];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  contents = [v17 contents];
  if (frameTextureCopy)
  {
    v21 = [(OpticalFlowAnalyzer *)self findFaceHandLegBlocksFromRectangles:frameTextureCopy blockWidth:v15 blockHeight:v16];
  }

  else
  {
    v21 = 0;
  }

  retstr->var30 = 0;
  *&retstr->var26 = 0u;
  *&retstr->var28 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var24 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var20 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  [(OpticalFlowAnalyzer *)self processGPUOutputs:contents blockWidth:v15 blockHeight:v16 faceHandLegBoundingBoxBlocks:v21];

  return result;
}

- (id)findFaceHandLegBlocksFromRectangles:(id)rectangles blockWidth:(unint64_t)width blockHeight:(unint64_t)height
{
  v30 = *MEMORY[0x277D85DE8];
  rectanglesCopy = rectangles;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = rectanglesCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    heightCopy = height;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        [v15 boundingBox];
        v22 = +[FRCFaceHandLegBlock faceHandLegBlockWithRect:numberOfBlocks:category:](FRCFaceHandLegBlock, "faceHandLegBlockWithRect:numberOfBlocks:category:", ((v18 * width + 0.5) + 1) * ((v19 * heightCopy + 0.5) + 1), [v15 category], (v16 * width), ((1.0 - v17 - v19) * heightCopy), v20, v21);
        [array addObject:v22];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x277D85DE8];

  return array;
}

- ($F92E1B06C6614F01351795DC9F3D8716)processGPUOutputs:(SEL)outputs blockWidth:(id *)width blockHeight:(unint64_t)height faceHandLegBoundingBoxBlocks:(unint64_t)blocks
{
  v111 = a7;
  v11 = (height + 1) >> 1;
  v12 = (blocks + 1) >> 1;
  v13 = (height + 11) / 0xC;
  v14 = (height + 3) >> 2;
  v15 = (blocks + 3) >> 2;
  v16 = v15 * v14;
  v79 = (height + 5) / 6;
  v80 = v14;
  count = v12 * v79;
  v81 = v11;
  v17 = (blocks + 5) / 6 * v11;
  v18 = v15 * v13;
  v19 = (blocks + 11) / 0xC;
  v20 = v19 * v14;
  v106 = v13;
  v74 = v12 * v11;
  v75 = v19 * v13;
  v78 = (height + 23) / 0x18;
  v89 = malloc_type_calloc(v12 * v11, 4uLL, 0x100004052888210uLL);
  v73 = v16;
  v88 = malloc_type_calloc(v16, 4uLL, 0x100004052888210uLL);
  v87 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v71 = v17;
  v85 = malloc_type_calloc(v17, 4uLL, 0x100004052888210uLL);
  v86 = malloc_type_calloc(v18, 4uLL, 0x100004052888210uLL);
  v70 = v20;
  v21 = v20;
  heightCopy = height;
  v84 = malloc_type_calloc(v21, 4uLL, 0x100004052888210uLL);
  v83 = malloc_type_calloc(v75, 4uLL, 0x100004052888210uLL);
  v69 = (blocks + 23) / 0x18 * v78;
  v82 = malloc_type_calloc(v69, 4uLL, 0x100004052888210uLL);
  v95 = malloc_type_calloc(0xCuLL, 4uLL, 0x100004052888210uLL);
  v94 = malloc_type_calloc(8uLL, 4uLL, 0x100004052888210uLL);
  v23 = [v111 count];
  v24 = malloc_type_calloc(v23, 4uLL, 0x100004052888210uLL);
  if (self->_visualizationEnabled)
  {
    self->_consistencyMap = malloc_type_calloc(blocks * heightCopy, 1uLL, 0x100004077774924uLL);
  }

  v93 = (blocks + 7) >> 3;
  v96 = heightCopy;
  selfCopy = self;
  v72 = v18;
  if (blocks)
  {
    v91 = v24;
    v68 = retstr;
    v107 = 0;
    v109 = 0;
    v25 = 0;
    v77 = heightCopy;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    blocksCopy = blocks;
    do
    {
      if (heightCopy)
      {
        v30 = 0;
        p_cleanRectFlow8x8 = &self->_cleanRectFlow8x8;
        v104 = v107 * v77;
        v32 = v107 >> 1;
        v103 = &v89[v81 * v32];
        v33 = v107 >> 2;
        v102 = &v88[v80 * v33];
        v101 = &v87[v79 * v32];
        v99 = &v86[v106 * v33];
        v34 = v107 / 0xCuLL;
        v98 = &v84[v80 * v34];
        v35 = &v83[v106 * v34];
        do
        {
          v113.x = v30;
          v113.y = v107;
          if (CGRectContainsPoint(*p_cleanRectFlow8x8, v113))
          {
            var0 = width[v30 + v104].var0;
            if (self->_visualizationEnabled)
            {
              self->_consistencyMap[v30 + v104] = var0;
            }

            if ((self->jsonConsistencyAreaThreshold * 64.0) / 5.0 < var0)
            {
              v27 = v27 + 1.0;
            }

            v38 = v111;
            if (v23)
            {
              v39 = 0;
              while (1)
              {
                v40 = [v38 objectAtIndexedSubscript:v39];
                [v40 rect];
                v114.x = v30;
                v114.y = v107;
                v41 = CGRectContainsPoint(v115, v114);

                if (v41)
                {
                  break;
                }

                ++v39;
                v38 = v111;
                if (v23 == v39)
                {
                  goto LABEL_16;
                }
              }

              v91[v39] = var0 + v91[v39];
              self = selfCopy;
              if ((selfCopy->jsonConsistencyAreaThreshold * 64.0) / 5.0 < var0)
              {
                v28 = v28 + 1.0;
              }
            }

            else
            {
LABEL_16:
              v29 = v29 + var0;
              ++v109;
              self = selfCopy;
            }

            v42 = v30 >> 1;
            v103[v42] = var0 + v103[v42];
            v43 = v30 & 0xFFFFFFFC;
            *(v102 + v43) = var0 + *(v102 + v43);
            v44 = v30 / 6uLL;
            v101[v44] = var0 + v101[v44];
            v100 = &v85[v81 * (v107 / 6uLL)];
            v100[v42] = var0 + v100[v42];
            v45 = (v30 / 3uLL) & 0x7FFFFFFC;
            *(v99 + v45) = var0 + *(v99 + v45);
            ++v25;
            *(v98 + v43) = var0 + *(v98 + v43);
            v26 = v26 + var0;
            *(v35 + v45) = var0 + *(v35 + v45);
            v36 = &v82[v78 * (v107 / 0x18uLL)];
            *(v36 + (v44 & 0x3FFFFFFC)) = var0 + *(v36 + (v44 & 0x3FFFFFFC));
            heightCopy = v96;
            v95[v30 / v106] = var0 + v95[v30 / v106];
            v94[v107 / v93] = var0 + v94[v107 / v93];
          }

          ++v30;
        }

        while (v30 != heightCopy);
      }

      blocks = blocksCopy;
      ++v107;
    }

    while (v107 != blocksCopy);
    v108 = v28 * 100.0;
    v105 = v27 * 100.0;
    retstr = v68;
    v24 = v91;
    v46 = v109;
  }

  else
  {
    v46 = 0;
    v25 = 0;
    v29 = 0.0;
    v108 = 0.0;
    v105 = 0.0;
    v26 = 0.0;
  }

  v47 = v25;
  v48 = malloc_type_calloc(v23, 4uLL, 0x100004052888210uLL);
  v49 = 0.0;
  v50 = 0.0;
  v51 = v48;
  if (v23)
  {
    v52 = v48;
    for (i = 0; i != v23; ++i)
    {
      v54 = v24[i];
      v55 = [v111 objectAtIndexedSubscript:i];
      v52[i] = v54 / ([v55 numberOfBlocks] << 6);

      v56 = [v111 objectAtIndexedSubscript:i];
      v57 = [v56 numberOfBlocks] / v47;

      v58 = [v111 objectAtIndexedSubscript:i];
      category = [v58 category];

      v60 = category == 2;
      v52 = v51;
      v61 = 128.0;
      if (!v60)
      {
        v61 = 64.0;
      }

      v62 = fmin((v57 * v61), 1.0);
      if ((v51[i] * v62) > v50)
      {
        v50 = v51[i] * v62;
        v49 = v62;
      }
    }
  }

  v110 = v50;
  if (v46)
  {
    v63 = v29 / (v46 << 6);
  }

  else
  {
    v63 = 0.0;
  }

  v64 = v26 / (v25 << 6);
  v65 = log10(100.0 / v64) * 10.0;
  v66 = log10(100.0 / (v110 + ((1.0 - v49) * v63))) * 10.0;
  [(OpticalFlowAnalyzer *)selfCopy calcStripConsistency:v95 stripSize:(blocks * v106) << 6 numStrips:12];
  [(OpticalFlowAnalyzer *)selfCopy calcStripConsistency:v94 stripSize:(v96 * v93) << 6 numStrips:8];
  *&retstr->var2 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  retstr->var2 = v64;
  retstr->var3 = v65;
  retstr->var4 = v66;
  retstr->var5 = v105 / v47;
  retstr->var6 = v108 / v47;
  *&retstr->var10 = 0;
  retstr->var11 = v74;
  retstr->var12 = v89;
  retstr->var13 = v73;
  retstr->var16 = v85;
  retstr->var17 = count;
  retstr->var14 = v88;
  retstr->var15 = v71;
  retstr->var20 = v84;
  retstr->var21 = v72;
  retstr->var18 = v87;
  retstr->var19 = v70;
  retstr->var22 = v86;
  retstr->var23 = v75;
  retstr->var24 = v83;
  retstr->var25 = v69;
  retstr->var26 = v82;
  retstr->var27 = 12;
  retstr->var28 = v95;
  retstr->var29 = 8;
  retstr->var30 = v94;
  free(v51);
  free(v24);

  return result;
}

- (void)calcStripConsistency:(float *)consistency stripSize:(unint64_t)size numStrips:(unsigned int)strips
{
  if (strips)
  {
    sizeCopy = size;
    stripsCopy = strips;
    do
    {
      v8 = *consistency / sizeCopy;
      if (v8 == 0.0)
      {
        v9 = 100.0;
      }

      else
      {
        v9 = log10(100.0 / v8) * 10.0;
      }

      *consistency++ = v9;
      --stripsCopy;
    }

    while (stripsCopy);
  }
}

- (void)analyzeAggregatedStatistics:(id *)statistics
{
  time = statistics->var0;
  Seconds = CMTimeGetSeconds(&time);
  var11 = statistics->var11;
  v7 = 0.0;
  v8 = 0.0;
  if (var11)
  {
    var12 = statistics->var12;
    do
    {
      v10 = *var12 * 0.0039062;
      *var12++ = v10;
      v8 = fmaxf(v8, v10);
      --var11;
    }

    while (var11);
  }

  var13 = statistics->var13;
  if (var13)
  {
    var14 = statistics->var14;
    v7 = 0.0;
    do
    {
      v13 = *var14 * 0.00097656;
      *var14++ = v13;
      v7 = fmaxf(v7, v13);
      --var13;
    }

    while (var13);
  }

  var17 = statistics->var17;
  v15 = 0.0;
  v16 = 0.0;
  if (var17)
  {
    var18 = statistics->var18;
    v18 = 0.0;
    do
    {
      v19 = *var18 / 768.0;
      *var18++ = v19;
      v18 = fmaxf(v18, v19);
      --var17;
    }

    while (var17);
    v16 = v18;
  }

  var15 = statistics->var15;
  if (var15)
  {
    var16 = statistics->var16;
    v22 = 0.0;
    do
    {
      v23 = *var16 / 768.0;
      *var16++ = v23;
      v22 = fmaxf(v22, v23);
      --var15;
    }

    while (var15);
    v15 = v22;
  }

  var21 = statistics->var21;
  v25 = 0.0;
  v26 = 0.0;
  if (var21)
  {
    var22 = statistics->var22;
    v28 = 0.0;
    do
    {
      v29 = *var22 / 3072.0;
      *var22++ = v29;
      v28 = fmaxf(v28, v29);
      --var21;
    }

    while (var21);
    v26 = v28;
  }

  var19 = statistics->var19;
  if (var19)
  {
    var20 = statistics->var20;
    v32 = 0.0;
    do
    {
      v33 = *var20 / 3072.0;
      *var20++ = v33;
      v32 = fmaxf(v32, v33);
      --var19;
    }

    while (var19);
    v25 = v32;
  }

  var23 = statistics->var23;
  v35 = 0.0;
  v36 = 0.0;
  if (var23)
  {
    var24 = statistics->var24;
    do
    {
      v38 = *var24 / 9216.0;
      *var24++ = v38;
      v36 = fmaxf(v36, v38);
      --var23;
    }

    while (var23);
  }

  var25 = statistics->var25;
  if (var25)
  {
    var26 = statistics->var26;
    v35 = 0.0;
    do
    {
      v41 = *var26 / 36864.0;
      *var26++ = v41;
      v35 = fmaxf(v35, v41);
      --var25;
    }

    while (var25);
  }

  v42 = Seconds * 1000.0;
  statistics->var7 = v8;
  statistics->var8 = v7;
  statistics->var9 = v36;
  statistics->var10 = v35;
  printf("[FlowAnalysis] Insert %ld frames, Duration: %6.2f msec, Error: %.3f, Score: %.3f, ROI_Score: %.3f, Area_Ratio: %.3f, ROI_Area_Ratio: %.3f, 16x16 Max: %.3f, 32x32 Max: %.3f, 48x16 Max: %.3f, 16x48 Max: %.3f, 96x32 Max: %.3f, 32x96 Max: %.3f, 96x96 Max: %.3f, 192x192 Max: %.3f\n", statistics->var1, v42, statistics->var2, statistics->var3, statistics->var4, statistics->var5, statistics->var6, v8, v7, v16, v15, v26, v25, v36, v35);
  [(OpticalFlowAnalyzer *)self printStripScores:statistics];
  fflush(*MEMORY[0x277D85E08]);
}

- (void)printStripScores:(id *)scores
{
  printf("[FlowAnalysis] Vertical Strip Score: ");
  if (scores->var27)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      printf("%.3f", scores->var28[v4]);
      var27 = scores->var27;
      if (var27 - 1 != v4)
      {
        printf(", ");
        var27 = scores->var27;
      }

      v4 = v5;
      v7 = var27 > v5++;
    }

    while (v7);
  }

  putchar(10);
  printf("[FlowAnalysis] Horizontal Strip Score: ");
  if (scores->var29)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      printf("%.3f", scores->var30[v8]);
      var29 = scores->var29;
      if (var29 - 1 != v8)
      {
        printf(", ");
        var29 = scores->var29;
      }

      v8 = v9;
      v7 = var29 > v9++;
    }

    while (v7);
  }

  putchar(10);
}

- (void)runDetectionFromFirstBuffer:(__CVBuffer *)buffer secondBuffer:(__CVBuffer *)secondBuffer
{
  firstFaceHandLegRectangles = self->_firstFaceHandLegRectangles;
  self->_firstFaceHandLegRectangles = 0;

  secondFaceHandLegRectangles = self->_secondFaceHandLegRectangles;
  self->_secondFaceHandLegRectangles = 0;

  if (self->_shouldRunDetection)
  {
    kdebug_trace();
    v9 = [(OpticalFlowAnalyzer *)self extractFaceHandLegInfoFromBuffer:buffer];
    v10 = self->_firstFaceHandLegRectangles;
    self->_firstFaceHandLegRectangles = v9;

    v11 = [(OpticalFlowAnalyzer *)self extractFaceHandLegInfoFromBuffer:secondBuffer];
    v12 = self->_secondFaceHandLegRectangles;
    self->_secondFaceHandLegRectangles = v11;

    ++self->_timesDidRunDetection;

    kdebug_trace();
  }
}

- (id)extractFaceHandLegInfoFromBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  v133 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(bufferCopy);
  v7 = Height;
  if (Height < 0x438)
  {
    if (Height < 0x21C)
    {
      if (self->_inputRotation != 3)
      {
        v88 = Height;
        v89 = Width;
        goto LABEL_9;
      }
    }

    else
    {
      Width = ((Width >> 1) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v7 = ((Height >> 1) + 1) & 0x7FELL;
    }
  }

  else
  {
    Width = (Width + 3) >> 2;
    v7 = (Height + 3) >> 2;
  }

  donwsampledSourceBuffer = self->_donwsampledSourceBuffer;
  if (!donwsampledSourceBuffer)
  {
    donwsampledSourceBuffer = createPixelBuffer(Width, v7, 0x42475241u, 0);
    self->_donwsampledSourceBuffer = donwsampledSourceBuffer;
  }

  v88 = v7;
  v89 = Width;
  WeakRetained = objc_loadWeakRetained(&self->_scaler);
  [WeakRetained downScaleFrameSource:bufferCopy destination:donwsampledSourceBuffer rotate:self->_inputRotation waitForCompletion:0];

  bufferCopy = donwsampledSourceBuffer;
LABEL_9:
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v11 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCVPixelBuffer:bufferCopy options:dictionary];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CE2C88]);
  v126 = 0;
  [v14 setRevision:3737841666 error:&v126];
  v15 = v126;
  v96 = v14;
  [v13 addObject:v14];
  if (self->_handDetectionEnabled)
  {
    v16 = objc_alloc_init(MEMORY[0x277CE2C98]);
    v125 = v15;
    [v16 setRevision:1 error:&v125];
    v17 = v125;

    NSLog(&cfstr_FlowanalysisHa.isa);
    [v13 addObject:v16];
    v15 = v17;
  }

  else
  {
    v16 = 0;
  }

  if (self->_bodyDetectionEnabled)
  {
    v18 = objc_alloc_init(MEMORY[0x277CE2C90]);
    v124 = v15;
    [v18 setRevision:1 error:&v124];
    v19 = v124;

    NSLog(&cfstr_FlowanalysisBo.isa);
    v95 = v18;
    [v13 addObject:v18];
    v15 = v19;
  }

  else
  {
    v95 = 0;
  }

  if (self->_humanDetectionEnabled)
  {
    v20 = objc_alloc_init(MEMORY[0x277CE2CA0]);
    v123 = v15;
    [v20 setRevision:3737841664 error:&v123];
    v21 = v123;

    NSLog(&cfstr_FlowanalysisHu.isa);
    v94 = v20;
    [v13 addObject:v20];
    v15 = v21;
  }

  else
  {
    v94 = 0;
  }

  if (self->_animalFaceDetectionEnabled && self->_useCase == 1)
  {
    v22 = objc_alloc_init(MEMORY[0x277CE2DA8]);
    v122 = v15;
    [v22 setRevision:1 error:&v122];
    v23 = v122;

    v93 = v22;
    [v13 addObject:v22];
    v15 = v23;
  }

  else
  {
    v93 = 0;
  }

  v121 = v15;
  v91 = v11;
  v92 = v13;
  v24 = [v11 performRequests:v13 error:&v121];
  v90 = v121;

  if (v24)
  {
    results = [v96 results];
    v26 = [results count];

    v86 = v16;
    v87 = dictionary;
    if (v26)
    {
      selfCopy = self;
      results2 = [v96 results];
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v29 = [results2 countByEnumeratingWithState:&v117 objects:v132 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v118;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v118 != v31)
            {
              objc_enumerationMutation(results2);
            }

            v33 = *(*(&v117 + 1) + 8 * i);
            [v33 boundingBox];
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v41 = v40;
            roll = [v33 roll];
            v43 = [v33 yaw];
            v44 = [FRCFaceHandLegRectangle faceRectangleWithBoundingBox:roll roll:v43 yaw:v35, v37, v39, v41];

            [v12 addObject:v44];
          }

          v30 = [results2 countByEnumeratingWithState:&v117 objects:v132 count:16];
        }

        while (v30);
      }

      self = selfCopy;
      v16 = v86;
      dictionary = v87;
    }

    results3 = [v16 results];
    v46 = [results3 count];

    if (v46)
    {
      results4 = [v16 results];
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v48 = [results4 countByEnumeratingWithState:&v113 objects:v131 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v114;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v114 != v50)
            {
              objc_enumerationMutation(results4);
            }

            v52 = [FRCFaceHandLegRectangle handRectangleWithObservation:*(*(&v113 + 1) + 8 * j)];
            [v12 addObject:v52];
          }

          v49 = [results4 countByEnumeratingWithState:&v113 objects:v131 count:16];
        }

        while (v49);
      }
    }

    results5 = [v95 results];
    v54 = [results5 count];

    if (v54)
    {
      selfCopy2 = self;
      v55 = objc_alloc_init(FRCBodyBoundingBoxDetector);
      results6 = [v95 results];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v57 = [results6 countByEnumeratingWithState:&v109 objects:v130 count:16];
      if (v57)
      {
        v59 = v57;
        v60 = *v110;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v110 != v60)
            {
              objc_enumerationMutation(results6);
            }

            *&v58 = v89 / v88;
            selfCopy2 = [(FRCBodyBoundingBoxDetector *)v55 createBodyRectanglesWithObservation:*(*(&v109 + 1) + 8 * k) frameAspectRatio:v58, selfCopy2];
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v63 = [selfCopy2 countByEnumeratingWithState:&v105 objects:v129 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = *v106;
              do
              {
                for (m = 0; m != v64; ++m)
                {
                  if (*v106 != v65)
                  {
                    objc_enumerationMutation(selfCopy2);
                  }

                  [v12 addObject:*(*(&v105 + 1) + 8 * m)];
                }

                v64 = [selfCopy2 countByEnumeratingWithState:&v105 objects:v129 count:16];
              }

              while (v64);
            }
          }

          v59 = [results6 countByEnumeratingWithState:&v109 objects:v130 count:16];
        }

        while (v59);
      }

      self = selfCopy2;
      v16 = v86;
      dictionary = v87;
    }

    results7 = [v94 results];
    v68 = [results7 count];

    if (v68)
    {
      results8 = [v94 results];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v70 = [results8 countByEnumeratingWithState:&v101 objects:v128 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v102;
        do
        {
          for (n = 0; n != v71; ++n)
          {
            if (*v102 != v72)
            {
              objc_enumerationMutation(results8);
            }

            [*(*(&v101 + 1) + 8 * n) boundingBox];
            v74 = [FRCFaceHandLegRectangle humanRectangleWithBoundingBox:?];
            [v12 addObject:v74];
          }

          v71 = [results8 countByEnumeratingWithState:&v101 objects:v128 count:16];
        }

        while (v71);
      }
    }

    results9 = [v93 results];
    v76 = [results9 count];

    if (v76)
    {
      results10 = [v93 results];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v78 = [results10 countByEnumeratingWithState:&v97 objects:v127 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v98;
        do
        {
          for (ii = 0; ii != v79; ++ii)
          {
            if (*v98 != v80)
            {
              objc_enumerationMutation(results10);
            }

            [*(*(&v97 + 1) + 8 * ii) boundingBox];
            v82 = [FRCFaceHandLegRectangle animalFaceRectangleWithBoundingBox:?];
            [v12 addObject:v82];
          }

          v79 = [results10 countByEnumeratingWithState:&v97 objects:v127 count:16];
        }

        while (v79);
      }
    }
  }

  [(OpticalFlowAnalyzer *)self printFaceHandLegRectangles:v12];
  v83 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)printFaceHandLegRectangles:(id)rectangles
{
  v21 = *MEMORY[0x277D85DE8];
  rectanglesCopy = rectangles;
  NSLog(&cfstr_FlowanalysisFa.isa, [rectanglesCopy count]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = rectanglesCopy;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v10 boundingBox];
        printf("\tCount %d\tCategory %lu\t(%.3f,%.3f)\t%.3f x %.3f\n", v7++, [v10 category], v11, v12, v13, v14);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  fflush(*MEMORY[0x277D85E08]);
  v15 = *MEMORY[0x277D85DE8];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)safeThresholdWithtimeGap:(id *)gap isDownsampled:(BOOL)downsampled
{
  downsampledCopy = downsampled;
  v30 = *gap;
  v6 = CMTimeGetSeconds(&v30) * 1000.0;
  useCase = self->_useCase;
  if (useCase == 1)
  {
    v18 = (v6 + -66.0) / 40.0;
    if (v18 > 11.0)
    {
      v18 = 11.0;
    }

    v19 = fmaxf(v18, 9.0);
    v20 = ((v6 + -117.0) * 3.0) / 100.0;
    if (v20 > 8.0)
    {
      v20 = 8.0;
    }

    v21 = fmaxf(v20, 0.0);
    if (v6 < 426.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    v23 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForNonDownsampledSloMo;
    if (downsampledCopy)
    {
      v23 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForDownsampledSloMo;
    }

    v17 = *(&self->super.super.isa + 4 * v22 + *v23);
    v9 = fminf(self->jsonConsistencyFrameScoreThresholdOnDemand, v17);
    goto LABEL_30;
  }

  if (useCase)
  {
    v24 = (v6 + -66.0) / 40.0;
    if (v24 > 11.0)
    {
      v24 = 11.0;
    }

    v25 = fmaxf(v24, 9.0);
    v26 = 8.0;
    if ((((v6 + -117.0) * 3.0) / 100.0) <= 8.0)
    {
      v26 = ((v6 + -117.0) * 3.0) / 100.0;
    }

    v9 = 0.0;
    v27 = fmaxf(v26, 0.0);
    if (v6 < 426.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25;
    }

    v29 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForNonDownsampledSloMo;
    if (downsampledCopy)
    {
      v29 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForDownsampledSloMo;
    }

    v17 = *(&self->super.super.isa + 4 * v28 + *v29);
LABEL_30:
    v16 = v17;
    goto LABEL_31;
  }

  v8 = ((v6 + -50.0) * 3.0) / 100.0;
  if (v8 > 7.0)
  {
    v8 = 7.0;
  }

  v9 = 0.0;
  v10 = fmaxf(v8, 0.0);
  v11 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForNonDownsampled;
  if (downsampledCopy)
  {
    v11 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForDownsampled;
  }

  v12 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForDownsampledDelta;
  if (!downsampledCopy)
  {
    v12 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonConsistencySafeThresholdsForNonDownsampledDelta;
  }

  v13 = *(&self->super.super.isa + 4 * v10 + *v11);
  v14 = *(&self->super.super.isa + 4 * v10 + *v12);
  consistencySafeThresholdsScale = self->consistencySafeThresholdsScale;
  v16 = v13 + ((consistencySafeThresholdsScale + self->consistencySafeThresholdsScaleForLargeRandomnessErr) * v14);
  v17 = v13 + fmax(consistencySafeThresholdsScale, 0.0) * v14;
LABEL_31:
  result.var2 = v9;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (void)isSafeToInterpolateForRandomnessGatingWithPrevFlowBackward:(__CVBuffer *)backward flowForward:(__CVBuffer *)forward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame
{
  v13 = objc_autoreleasePoolPush();
  time1 = *duration;
  [(OpticalFlowAnalyzer *)self analyzeFlowRandomnessWithPrevFlowBackward:backward forward:forward lastFrameDuration:&time1 lastNumberOfFrames:frames flowResFrame:frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  objc_autoreleasePoolPop(v13);
  if (v17 >= self->jsonRandomnessScoreThreshold)
  {
    goto LABEL_9;
  }

  randomnessAreaScale = self->randomnessAreaScale;
  jsonRandomnessAreaPercentageThresholdHigh = self->jsonRandomnessAreaPercentageThresholdHigh;
  jsonRandomnessAreaPercentageThresholdLow = self->jsonRandomnessAreaPercentageThresholdLow;
  if ((v19 * randomnessAreaScale) >= jsonRandomnessAreaPercentageThresholdHigh)
  {
    v23 = jsonRandomnessAreaPercentageThresholdHigh - jsonRandomnessAreaPercentageThresholdLow;
LABEL_7:
    consistentFlowRandomness = self->_consistentFlowRandomness;
    goto LABEL_8;
  }

  if ((v19 * randomnessAreaScale) >= jsonRandomnessAreaPercentageThresholdLow)
  {
    v23 = -(jsonRandomnessAreaPercentageThresholdLow - (v19 * randomnessAreaScale));
    goto LABEL_7;
  }

  v23 = self->_consistentFlowRandomness;
  consistentFlowRandomness = 0.0;
LABEL_8:
  self->_consistentFlowRandomness = v23 + consistentFlowRandomness;
LABEL_9:
  v25 = 0;
  if (v15 >= self->jsonRandomnessErrThreshold && v19 >= self->jsonRandomnessAreaPercentageThresholdLow)
  {
    time1 = *duration;
    time2 = self->_timeGap;
    if (!CMTimeCompare(&time1, &time2) || (self->_motionHistogramsAnalysis.hasSpecialMotion - 3) > 1)
    {
      v25 = 1;
    }
  }

  self->_isLargeRandomnessErr = v25;
  prevFlowRandomnessErr = self->_prevFlowRandomnessErr;
  if (prevFlowRandomnessErr != -1.0)
  {
    v27 = fmaxf(prevFlowRandomnessErr, v15);
    prevFlowRandomnessArea = self->_prevFlowRandomnessArea;
    v29 = fmaxf(prevFlowRandomnessArea, v19);
    v30 = fminf(prevFlowRandomnessArea, v19);
    if (v29 >= 10.0 && v29 > (v30 * self->jsonConsistentRandomFlowResetAreaChangeRatio))
    {
      self->_consistentFlowRandomness = 0.0;
    }

    if (v27 > 1.0)
    {
      v31 = v29 >= 5.0;
      if (v29 > (v30 * 20.0))
      {
        v31 = 1;
      }

      if (v30 >= 1.0)
      {
        v31 = 0;
      }

      v32 = v29 >= 0.5 && v30 < 10.0;
      if (v32 && !v31)
      {
        v33 = fminf(prevFlowRandomnessErr, v15);
        if (v27 <= (v33 * self->randomnessErrorChangeRatioThreshold))
        {
          v36 = 0;
          self->_signErrFlowRandomness = 0.0;
          if (v29 <= (v30 * self->randomnessAreaChangeRatioThreshold))
          {
            self->_signAreaFlowRandomness = 0.0;
            goto LABEL_55;
          }
        }

        else
        {
          signErrFlowRandomness = self->_signErrFlowRandomness;
          v41 = v27 == v15;
          v35 = -1.0;
          if (v41)
          {
            v35 = 1.0;
          }

          v36 = signErrFlowRandomness != v35;
          self->_signErrFlowRandomness = v35;
          if (v29 <= (v30 * self->randomnessAreaChangeRatioThreshold))
          {
            self->_signAreaFlowRandomness = 0.0;
            if (signErrFlowRandomness == v35)
            {
              goto LABEL_55;
            }

            goto LABEL_53;
          }
        }

        signAreaFlowRandomness = self->_signAreaFlowRandomness;
        if (v29 == v19)
        {
          v38 = signAreaFlowRandomness != 1.0;
          v39 = 1.0;
        }

        else
        {
          v38 = signAreaFlowRandomness != -1.0;
          v39 = -1.0;
        }

        self->_signAreaFlowRandomness = v39;
        if (v38 || v36)
        {
          v40 = v38 && v36;
          v41 = v29 <= 10.0 || v40 == 0;
          if (!v41 && v33 > 1.0 && v30 > 2.0)
          {
            v44 = self->_zigzagFlowRandomness + (v25 | 2u);
LABEL_54:
            self->_zigzagFlowRandomness = v44;
            goto LABEL_55;
          }

LABEL_53:
          v44 = self->_zigzagFlowRandomness + 1.0;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  v45 = self->_consistentFlowRandomness;
  if (v17 < self->jsonRandomnessScoreThresholdLow)
  {
    v45 = v45 + 10.0;
    self->_consistentFlowRandomness = v45;
  }

  v46 = v45;
  if (v25)
  {
    v47 = "YES";
  }

  else
  {
    v47 = "NO";
  }

  printf("[CrossFlowAnalysis] [Optical Flow Downsampling: %d, Consistent: %.3f, Zigzag: %.3f, isLargeRandomnessErr: %s]\n", self->_opticalFlowDownsampling, v46, self->_zigzagFlowRandomness, v47);
  if (self->_consistentFlowRandomness > self->jsonConsistentRandomFlowThreshold)
  {
    v48 = @"[CrossFlowAnalysis] Interpolation is gated (randomness) - consistent";
LABEL_64:
    self->_safeToInterpolate.randomness = 0;
    NSLog(&v48->isa);
    goto LABEL_65;
  }

  if (self->_zigzagFlowRandomness > self->jsonZigzagRandomFlowThreshold)
  {
    v48 = @"[CrossFlowAnalysis] Interpolation is gated (randomness) - zigzag";
    goto LABEL_64;
  }

LABEL_65:
  self->_prevFlowRandomnessErr = v15;
  self->_prevFlowRandomnessArea = v19;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)analyzeFlowRandomnessWithPrevFlowBackward:(__CVBuffer *)backward forward:(__CVBuffer *)forward lastFrameDuration:(id *)duration lastNumberOfFrames:(unint64_t)frames flowResFrame:(__CVBuffer *)frame
{
  v12 = createTexturesFromCVPixelBuffer(backward, self->super._device, 1, 2uLL);
  v13 = createTexturesFromCVPixelBuffer(forward, self->super._device, 1, 2uLL);
  v14 = createRGBATextureFromCVPixelBuffer(frame, self->super._device);
  v15 = [(MTLDevice *)self->super._device newBufferWithLength:8 options:0];
  contents = [v15 contents];
  value = self->_timeGap.value;
  v18 = fmin(duration->var0, value) / (fmin(frames, self->_framesToInterpolate) + 1.0);
  v19 = v18 + v18;
  *contents = v19 / duration->var0;
  contents[1] = v19 / value;
  [(OpticalFlowAnalyzer *)self calcCrossFlowStatisticsPrevBackwardFlowTexture:v12 forwardFlowTexture:v13 frameTexture:v14 flowScaleBuffer:v15];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  printf("[CrossFlowAnalysis] lastFrameDuration: %lld, currentFrameDuration: %lld, lastFramesToInterpolate: %ld, framesToInterpolate: %ld, Error: %.3f, Score: %.3f, Area: %.3f\n", duration->var0, self->_timeGap.value, frames, self->_framesToInterpolate, v20, v22, v24);

  v26 = v21;
  v27 = v23;
  v28 = v25;
  result.var2 = v28;
  result.var1 = v27;
  result.var0 = v26;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)calcCrossFlowStatisticsPrevBackwardFlowTexture:(id)texture forwardFlowTexture:(id)flowTexture frameTexture:(id)frameTexture flowScaleBuffer:(id)buffer
{
  bufferCopy = buffer;
  frameTextureCopy = frameTexture;
  flowTextureCopy = flowTexture;
  textureCopy = texture;
  v14 = ([flowTextureCopy width] + 7) >> 3;
  v15 = ([flowTextureCopy height] + 7) >> 3;
  v16 = [(MTLDevice *)self->super._device newBufferWithLength:4 * v14 * v15 options:0];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_crossFlowStatisticsKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:flowTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:frameTextureCopy atIndex:2];

  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:v16 offset:0 atIndex:1];
  v30[0] = v14;
  v30[1] = v15;
  v30[2] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [computeCommandEncoder dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  -[OpticalFlowAnalyzer processGPUOutputsRandomness:blockWidth:blockHeight:](self, "processGPUOutputsRandomness:blockWidth:blockHeight:", [v16 contents], v14, v15);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v22;
  v27 = v24;
  result.var2 = v27;
  result.var1 = v26;
  result.var0 = v25;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)processGPUOutputsRandomness:(id *)randomness blockWidth:(unint64_t)width blockHeight:(unint64_t)height
{
  if (height)
  {
    v9 = 0;
    v10 = 0;
    v19 = 4 * width;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (width)
      {
        v13 = 0;
        do
        {
          v20.x = v13;
          v20.y = v9;
          if (CGRectContainsPoint(self->_cleanRectFlow8x8, v20))
          {
            ++v10;
            var0 = randomness[v13].var0;
            v11 = v11 + var0;
            if (var0 > (self->jsonRandomnessAreaThreshold * 64.0))
            {
              v12 = v12 + 1.0;
            }
          }

          ++v13;
        }

        while (width != v13);
      }

      ++v9;
      randomness = (randomness + v19);
    }

    while (v9 != height);
    v15 = v12 * 100.0;
  }

  else
  {
    v10 = 0;
    v15 = 0.0;
    v11 = 0.0;
  }

  v16 = log10(100.0 / (v11 / (v10 << 6))) * 10.0;
  v17 = v15 / v10;
  v18 = v11 / (v10 << 6);
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v18;
  return result;
}

- (void)modulateGatingParametersWithFlowForward:(__CVBuffer *)forward flowResFrame:(__CVBuffer *)frame
{
  v6 = createTexturesFromCVPixelBuffer(forward, self->super._device, 1, 2uLL);
  v8 = createRGBATextureFromCVPixelBuffer(frame, self->super._device);
  [(OpticalFlowAnalyzer *)self calcMotionHistogramForwardFlowTexture:v6 frameTexture:v8];
  width = [v6 width];
  self->_size = [v6 height] * width;
  [(OpticalFlowAnalyzer *)self analyzeMotionHistograms];
  [(OpticalFlowAnalyzer *)self analyzeDeformation];
  [(OpticalFlowAnalyzer *)self modulateGatingParametersFromMotionHistogramsAnalysis];
  fflush(*MEMORY[0x277D85E08]);
}

- (void)calcMotionHistogramForwardFlowTexture:(id)texture frameTexture:(id)frameTexture
{
  frameTextureCopy = frameTexture;
  textureCopy = texture;
  v8 = ([textureCopy width] + 7) >> 3;
  v9 = ([textureCopy height] + 7) >> 3;
  v10 = [(MTLDevice *)self->super._device newBufferWithLength:(v8 * v9) << 6 options:0];
  v11 = [(MTLDevice *)self->super._device newBufferWithLength:(v8 * v9) << 6 options:0];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_motionHistogramsKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:frameTextureCopy atIndex:1];
  [computeCommandEncoder setBuffer:v10 offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:v11 offset:0 atIndex:1];
  v18[0] = v8;
  v18[1] = v9;
  v18[2] = 1;
  v16 = vdupq_n_s64(8uLL);
  v17 = 1;
  [computeCommandEncoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  contents = [v10 contents];
  contents2 = [v11 contents];
  [(OpticalFlowAnalyzer *)self processGPUOutputsHistograms:contents blockWidth:v8 blockHeight:v9];
  [(OpticalFlowAnalyzer *)self processGPUOutputsHistogramsForDeformation:contents2 blockWidth:v8 blockHeight:v9];
  printf("[MotionHistograms] magnitude: [%d, %d, %d, %d, %d, %d, %d, %d] direction: [%d, %d, %d, %d, %d, %d, %d, %d] direction_top_left: [%d, %d, %d, %d] direction_top_right: [%d, %d, %d, %d] direction_bottom_left: [%d, %d, %d, %d] direction_bottom_right: [%d, %d, %d, %d]\n", self->_motionHistograms.frameMagnitude[0], self->_motionHistograms.frameMagnitude[1], self->_motionHistograms.frameMagnitude[2], self->_motionHistograms.frameMagnitude[3], self->_motionHistograms.frameMagnitude[4], self->_motionHistograms.frameMagnitude[5], self->_motionHistograms.frameMagnitude[6], self->_motionHistograms.frameMagnitude[7], self->_motionHistograms.frameDirection[0], self->_motionHistograms.frameDirection[1], self->_motionHistograms.frameDirection[2], self->_motionHistograms.frameDirection[3], self->_motionHistograms.frameDirection[4], self->_motionHistograms.frameDirection[5], self->_motionHistograms.frameDirection[6], self->_motionHistograms.frameDirection[7], self->_motionHistograms.topLeftDirection[0], self->_motionHistograms.topLeftDirection[1], self->_motionHistograms.topLeftDirection[2], self->_motionHistograms.topLeftDirection[3], self->_motionHistograms.topRightDirection[0], self->_motionHistograms.topRightDirection[1], self->_motionHistograms.topRightDirection[2], self->_motionHistograms.topRightDirection[3], self->_motionHistograms.bottomLeftDirection[0], self->_motionHistograms.bottomLeftDirection[1], self->_motionHistograms.bottomLeftDirection[2], self->_motionHistograms.bottomLeftDirection[3], self->_motionHistograms.bottomRightDirection[0], self->_motionHistograms.bottomRightDirection[1], self->_motionHistograms.bottomRightDirection[2], self->_motionHistograms.bottomRightDirection[3]);
}

- (void)convertOctantDirectionHistogram:(int *)histogram toPerpendicularQuadrantHistogram:(unsigned int *)quadrantHistogram
{
  v4 = histogram + 1;
  for (i = 2; i != 10; i += 2)
  {
    v6 = *v4;
    v4 += 2;
    *quadrantHistogram++ += histogram[i & 6] + v6;
  }
}

- (void)processGPUOutputsHistograms:(id *)histograms blockWidth:(unint64_t)width blockHeight:(unint64_t)height
{
  v47 = *MEMORY[0x277D85DE8];
  v46 = 0uLL;
  v45 = 0uLL;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0uLL;
  v39 = 0uLL;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = 0u;
  v27 = 0u;
  v25 = 0u;
  v22 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  if (height)
  {
    v7 = 0;
    v8 = width / 5uLL;
    v9 = height >> 1;
    v10 = width >> 1;
    v26 = width - v8;
    v33 = 0uLL;
    v34 = 0uLL;
    var1 = histograms->var1;
    v23 = width << 6;
    v31 = 0uLL;
    v32 = 0uLL;
    v28 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    while (!width)
    {
LABEL_32:
      ++v7;
      var1 = (var1 + v23);
      if (v7 == height)
      {
        goto LABEL_33;
      }
    }

    v12 = 0;
    v13 = var1;
    while (1)
    {
      v48.x = v12;
      v48.y = v7;
      if (!CGRectContainsPoint(self->_cleanRectFlow8x8, v48))
      {
        goto LABEL_31;
      }

      v33 = vaddq_s32(v33, *(v13 - 2));
      v34 = vaddq_s32(v34, *(v13 - 1));
      if (*(v13 - 8) > 57)
      {
        goto LABEL_31;
      }

      if (v9 <= v7 || v10 <= v12)
      {
        if (v9 <= v7 || v10 > v12)
        {
          if (v10 <= v12 || v9 > v7)
          {
            if (v9 <= v7 && v10 <= v12)
            {
              v52 = vld2q_f32(v13);
              v22 = vaddq_s32(vaddq_s32(v52.val[1], v52.val[0]), v22);
            }
          }

          else
          {
            v51 = vld2q_f32(v13);
            v25 = vaddq_s32(vaddq_s32(v51.val[1], v51.val[0]), v25);
          }
        }

        else
        {
          v50 = vld2q_f32(v13);
          v27 = vaddq_s32(vaddq_s32(v50.val[1], v50.val[0]), v27);
        }
      }

      else
      {
        v49 = vld2q_f32(v13);
        v28 = vaddq_s32(vaddq_s32(v49.val[1], v49.val[0]), v28);
      }

      v15 = *v13;
      v16 = *(v13 + 1);
      if (v12 >= v8)
      {
        if (v26 >= v12)
        {
          goto LABEL_26;
        }

        v29 = *(v13 + 1);
        v30 = *v13;
        [(OpticalFlowAnalyzer *)self convertOctantDirectionHistogram:v13 toPerpendicularQuadrantHistogram:&v45];
        v41 = vaddq_s32(v41, *(v13 - 2));
        v17 = &v42;
      }

      else
      {
        v29 = *(v13 + 1);
        v30 = *v13;
        [(OpticalFlowAnalyzer *)self convertOctantDirectionHistogram:v13 toPerpendicularQuadrantHistogram:&v46];
        v43 = vaddq_s32(v43, *(v13 - 2));
        v17 = &v44;
      }

      *v17 = vaddq_s32(*v17, *(v13 - 1));
      v16 = v29;
      v15 = v30;
LABEL_26:
      v31 = vaddq_s32(v31, v15);
      v32 = vaddq_s32(v32, v16);
      if (v7 < height / 5uLL)
      {
        [(OpticalFlowAnalyzer *)self convertOctantDirectionHistogram:v13 toPerpendicularQuadrantHistogram:&v40];
        v37 = vaddq_s32(v37, *(v13 - 2));
        v18 = &v38;
LABEL_30:
        *v18 = vaddq_s32(*v18, *(v13 - 1));
        goto LABEL_31;
      }

      if (height - height / 5uLL < v7)
      {
        [(OpticalFlowAnalyzer *)self convertOctantDirectionHistogram:v13 toPerpendicularQuadrantHistogram:&v39];
        v35 = vaddq_s32(v35, *(v13 - 2));
        v18 = &v36;
        goto LABEL_30;
      }

LABEL_31:
      ++v12;
      v13 += 16;
      if (width == v12)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *&self->_motionHistograms.numLowMotionOppositeDirectionBlocks = v19;
  *&self->_motionHistograms.leftSideDirection[2] = v19;
  *&self->_motionHistograms.rightSideDirection[2] = v19;
  *self->_motionHistograms.topSideDirection = v19;
  *&self->_motionHistograms.topSideAverageMagnitude = -1;
  *self->_motionHistograms.frameMagnitude = v33;
  *&self->_motionHistograms.frameMagnitude[4] = v34;
  *self->_motionHistograms.frameDirection = v31;
  *&self->_motionHistograms.frameDirection[4] = v32;
  *self->_motionHistograms.topLeftDirection = v28;
  *self->_motionHistograms.topRightDirection = v27;
  *self->_motionHistograms.bottomLeftDirection = v25;
  *self->_motionHistograms.bottomRightDirection = v22;
  v20 = v45;
  *self->_motionHistograms.leftSideDirection = v46;
  *self->_motionHistograms.rightSideDirection = v20;
  *self->_motionHistograms.topSideDirection = v40;
  *self->_motionHistograms.bottomSideDirection = v19;
  *self->_motionHistograms.bottomSideDirection = v39;
  self->_motionHistograms.leftSideAverageMagnitude = [(OpticalFlowAnalyzer *)self averageMagnitude:&v43, width, *&v22];
  self->_motionHistograms.rightSideAverageMagnitude = [(OpticalFlowAnalyzer *)self averageMagnitude:&v41];
  self->_motionHistograms.topSideAverageMagnitude = [(OpticalFlowAnalyzer *)self averageMagnitude:&v37];
  self->_motionHistograms.bottomSideAverageMagnitude = [(OpticalFlowAnalyzer *)self averageMagnitude:&v35];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)processGPUOutputsHistogramsForDeformation:(id *)deformation blockWidth:(unint64_t)width blockHeight:(unint64_t)height
{
  v9 = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
  self->_deformationBlockRanges = v9;
  *v9 = width;
  v9[1] = -1;
  v9[2] = height;
  v9[3] = -1;
  if (self->_visualizationEnabled)
  {
    self->_deformationBinaryMap = malloc_type_calloc(height * width, 1uLL, 0x100004077774924uLL);
  }

  v10 = malloc_type_calloc(height * width, 1uLL, 0x100004077774924uLL);
  widthCopy3 = width;
  widthCopy2 = width;
  v42 = v10;
  if (height)
  {
    v12 = 0;
    v13 = &deformation->var1[7];
    v14 = v10;
    do
    {
      if (width)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v47.x = v15;
          v47.y = v12;
          if (CGRectContainsPoint(self->_cleanRectFlow8x8, v47) && *(v16 - 15) >= 58 && (self->_useCase || v15 >= 5 && height - 5 > v12 && v12 >= 5 && width - 5 > v15))
          {
            v18 = *(v16 - 7);
            v17 = *(v16 - 6);
            v20 = *(v16 - 5);
            v19 = *(v16 - 4);
            v21 = v17 + v18 + v20;
            v22 = *(v16 - 3);
            if (v21 + v19 + v22)
            {
              v23 = *(v16 - 2);
              if (v20 + v17 + v19 + v22 + v23)
              {
                v24 = *(v16 - 1);
                if (v19 + v20 + v22 + v23 + v24)
                {
                  v25 = *v16;
                  if (v22 + v19 + v23 + v24 + *v16)
                  {
                    if (v23 + v22 + v24 + v25 + v18 && v23 + v18 + v24 + v25 + v17 && v17 + v18 + v24 + v25 + v20 && v21 + v25 + v19)
                    {
                      v14[v15] = 1;
                    }
                  }
                }
              }
            }
          }

          ++v15;
          v16 += 16;
        }

        while (width != v15);
      }

      ++v12;
      v14 += width;
      v13 += 16 * width;
    }

    while (v12 != height);
    v44 = height - 1;
    widthCopy3 = width;
    v10 = v42;
    if (height - 1 < 2)
    {
      v46 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v44 = -1;
  }

  v46 = 0;
  v43 = width - 1;
  v26 = width - 2;
  v27 = &v10[width + width];
  v28 = &v10[widthCopy3 - width];
  v29 = 1;
  v30 = &v10[width];
  do
  {
    if (v43 >= 2)
    {
      v31 = 0;
      do
      {
        v32 = v31 + 1;
        v48.x = (v31 + 1);
        v48.y = v29;
        if (CGRectContainsPoint(self->_cleanRectFlow8x8, v48) && v30[v31 + 1] && v28[v31 + 1] + v28[v31] + v28[v31 + 2] + v30[v31] + v30[v31 + 2] + v27[v31] + v27[v31 + 1] + v27[v31 + 2] >= 3)
        {
          deformationBlockRanges = self->_deformationBlockRanges;
          if (v32 < *deformationBlockRanges)
          {
            *deformationBlockRanges = v32;
          }

          if (v32 > deformationBlockRanges[1])
          {
            deformationBlockRanges[1] = v32;
          }

          if (v29 < deformationBlockRanges[2])
          {
            deformationBlockRanges[2] = v29;
          }

          if (v29 > deformationBlockRanges[3])
          {
            deformationBlockRanges[3] = v29;
          }

          ++v46;
          if (self->_visualizationEnabled)
          {
            self->_deformationBinaryMap[widthCopy3 + 1 + v31] = -1;
          }
        }

        ++v31;
      }

      while (v26 != v32);
    }

    ++v29;
    v30 += widthCopy2;
    v27 += widthCopy2;
    v28 += widthCopy2;
    widthCopy3 += widthCopy2;
  }

  while (v29 != v44);
LABEL_48:
  free(v42);
  self->_motionHistograms.numLowMotionOppositeDirectionBlocks = v46;
  v34 = self->_deformationBlockRanges;
  v35 = v34[1];
  v36 = v35 - *v34;
  if (v35 < *v34 || (v38 = v34[2], v37 = v34[3], v39 = __OFSUB__(v37, v38), v40 = v37 - v38, (v40 < 0) ^ v39))
  {
    v41 = 0;
  }

  else
  {
    v41 = v36 + 1 + (v36 + 1) * v40;
  }

  self->_motionHistograms.areaLowMotionOppositeDirectionBlocks = v41;
}

- (void)analyzeMotionHistograms
{
  p_motionHistogramsAnalysis = &self->_motionHistogramsAnalysis;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *&self->_motionHistogramsAnalysis.hasStaticBackground = v4;
  *&self->_motionHistogramsAnalysis.hasSpecialMotion = v4;
  self->_motionHistogramsAnalysis.hasStaticBackground = [(OpticalFlowAnalyzer *)self detectStaticBackground];
  [(OpticalFlowAnalyzer *)self detectDominantDirection];
  p_motionHistogramsAnalysis->hasSpecialMotion = [(OpticalFlowAnalyzer *)self detectSpecialMotion];
  p_motionHistogramsAnalysis->hasCameraRotaion = [(OpticalFlowAnalyzer *)self detectCameraRotation];
  printf("[MotionHistograms] has_static_background: %d, dominant_direction: %d, relative_dominant_direction: %d, has_special_motion: %ld\n", p_motionHistogramsAnalysis->hasStaticBackground, p_motionHistogramsAnalysis->dominantDirection, p_motionHistogramsAnalysis->relativeDominantDirection, p_motionHistogramsAnalysis->hasSpecialMotion);
}

- (void)detectDominantDirection
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = NAN;
  v8 = -1;
  do
  {
    v9 = self->_motionHistograms.frameDirection[v2];
    v10.i32[0] = vdup_lane_s32(*&v7, 1).u32[0];
    v10.i32[1] = v2;
    v11 = COERCE_DOUBLE(vrev64_s32(v10));
    if (v9 > v6)
    {
      v6 = self->_motionHistograms.frameDirection[v2];
    }

    if (v9 <= v5)
    {
      v12 = v5;
    }

    else
    {
      v8 = v2;
      v6 = v5;
      v12 = self->_motionHistograms.frameDirection[v2];
    }

    if (v9 > v4)
    {
      v8 = LODWORD(v7);
      v6 = v5;
      v12 = v4;
      v13 = self->_motionHistograms.frameDirection[v2];
    }

    else
    {
      v11 = v7;
      v13 = v4;
    }

    v14 = v9 > v3;
    if (v9 <= v3)
    {
      v5 = v12;
    }

    else
    {
      v8 = LODWORD(v7);
      v6 = v5;
      v5 = v4;
    }

    if (v9 <= v3)
    {
      v4 = v13;
    }

    else
    {
      v4 = v3;
    }

    if (v9 > v3)
    {
      v3 = self->_motionHistograms.frameDirection[v2];
    }

    if (v14)
    {
      v7 = *&v10;
    }

    else
    {
      v7 = v11;
    }

    ++v2;
  }

  while (v2 != 8);
  v15 = HIDWORD(v7);
  if ((HIDWORD(v7) & 0x80000000) == 0)
  {
    size = self->_size;
    v17 = size / self->jsonHistogramsAnalysisSmallObjectSizeThreshold;
    v18 = size / self->jsonHistogramsAnalysisLargeObjectSizeThreshold;
    if (v3 > (3 * v4))
    {
      v19 = v3;
      if (v17 < v3)
      {
        goto LABEL_42;
      }
    }

    if ((LODWORD(v7) & 0x80000000) != 0)
    {
      return;
    }

    v20 = HIDWORD(v7) - LODWORD(v7) >= 0 ? HIDWORD(v7) - LODWORD(v7) : LODWORD(v7) - HIDWORD(v7);
    v21 = v3 + v4;
    v22 = v20 == 1 || v20 == 7;
    v23 = v22;
    if (v3 > (3 * v5) && (v20 != 7 ? (v24 = v20 == 1) : (v24 = 1), v24 && (v19 = v21, v17 < v21)))
    {
LABEL_42:
      p_motionHistogramsAnalysis = &self->_motionHistogramsAnalysis;
      self->_motionHistogramsAnalysis.relativeDominantDirection = HIDWORD(v7);
      if (v18 < v19)
      {
LABEL_43:
        p_motionHistogramsAnalysis->dominantDirection = v15;
      }
    }

    else if ((v8 & 0x80000000) == 0 && v3 > (3 * v6))
    {
      v26 = vabd_s32(*&v7, vdup_n_s32(v8));
      v27 = vorr_s8(vceq_s32(v26, 0x700000001), vceq_s32(v26, 0x100000007));
      v28 = (v27.i8[4] & 1) - v27.i32[0] + v23;
      v29 = (v21 + v5);
      if (v28 == 2 && v17 < v29)
      {
        p_motionHistogramsAnalysis = &self->_motionHistogramsAnalysis;
        self->_motionHistogramsAnalysis.relativeDominantDirection = v15;
        if (v18 < v29)
        {
          goto LABEL_43;
        }
      }
    }
  }
}

- (int64_t)detectSpecialMotion
{
  p_motionHistograms = &self->_motionHistograms;
  v4 = [(OpticalFlowAnalyzer *)self detectDominantDirectionInROI:self->_motionHistograms.topLeftDirection];
  v5 = [(OpticalFlowAnalyzer *)self detectDominantDirectionInROI:p_motionHistograms->topRightDirection];
  v6 = [(OpticalFlowAnalyzer *)self detectDominantDirectionInROI:p_motionHistograms->bottomLeftDirection];
  v7 = [(OpticalFlowAnalyzer *)self detectDominantDirectionInROI:p_motionHistograms->bottomRightDirection];
  if (v4 == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v5 == 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v5 == -1;
  if (v6 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  v13 = v4 == -1;
  if (v4 == -1)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v5 == -1;
  }

  v15 = v6 == -1;
  v16 = v14 + v8 + v9 + v11;
  if (v6 == -1)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v7 == -1;
  v19 = v17 + v12;
  if (v7 == -1)
  {
    ++v19;
  }

  if (v19 > 6)
  {
    return 1;
  }

  if (v4)
  {
    v21 = 0;
  }

  else
  {
    v21 = 3;
  }

  v22 = v21 + v13;
  if (v5 == 1)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 + v23 + v10;
  if (v6 == 3)
  {
    v25 = 3;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 + v15;
  if (v7 == 2)
  {
    v27 = 3;
  }

  else
  {
    v27 = 0;
  }

  if ((v24 + v26 + v27 + v18) > 6)
  {
    return 2;
  }

  v20 = 3;
  if (v4 == 1)
  {
    v28 = 3;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 + v13;
  if (v5 == 2)
  {
    v30 = 3;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 + v30 + v10;
  if (v6)
  {
    v32 = 0;
  }

  else
  {
    v32 = 3;
  }

  v33 = v32 + v15;
  if (v7 == 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = 0;
  }

  if ((v31 + v33 + v34 + v18) <= 9)
  {
    if (v4 == 3)
    {
      v35 = 3;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35 + v13;
    if (v5)
    {
      v37 = 0;
    }

    else
    {
      v37 = 3;
    }

    v38 = v36 + v37 + v10;
    if (v6 == 2)
    {
      v39 = 3;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39 + v15;
    if (v7 == 1)
    {
      v41 = 3;
    }

    else
    {
      v41 = 0;
    }

    return 4 * ((v38 + v40 + v41 + v18) > 9);
  }

  return v20;
}

- (int)detectDominantDirectionInROI:(unsigned int *)i
{
  v3 = i[1];
  v5 = i[2];
  v4 = i[3];
  v6 = v3 + *i + v5 + v4;
  if (v6 <= self->_size / 0x14)
  {
    return -1;
  }

  v7 = v6 + (v6 >> 31);
  if (*i > (v3 + *i + v5 + v4) / 2)
  {
    return 0;
  }

  v9 = v7 >> 1;
  if (v3 > v7 >> 1)
  {
    return 1;
  }

  if (v5 > v9)
  {
    return 2;
  }

  if (v4 <= v9)
  {
    return -1;
  }

  return 3;
}

- (void)analyzeDeformation
{
  p_motionHistograms = &self->_motionHistograms;
  v4 = (LODWORD(self->_size) >> 6);
  areaLowMotionOppositeDirectionBlocks = self->_motionHistograms.areaLowMotionOppositeDirectionBlocks;
  v6 = 0.0;
  if ((v4 * 0.06) < areaLowMotionOppositeDirectionBlocks)
  {
    numLowMotionOppositeDirectionBlocks = self->_motionHistograms.numLowMotionOppositeDirectionBlocks;
    if ((v4 * 0.007) <= numLowMotionOppositeDirectionBlocks)
    {
      v6 = numLowMotionOppositeDirectionBlocks / areaLowMotionOppositeDirectionBlocks;
    }
  }

  printf("[FlowAnalysis] deformationRatio: %.3f\n", v6);
  if (v6 > self->jsonDeformationRatioThreshold)
  {
    self->_flowDeformation = self->_flowDeformation + 1.0;
  }

  self->_flowDeformationSum = v6 + self->_flowDeformationSum;
  printf("[MotionHistograms] low motion opposite direction blocks: num: %d, area: %d, total_area: %d\n", p_motionHistograms->numLowMotionOppositeDirectionBlocks, p_motionHistograms->areaLowMotionOppositeDirectionBlocks, SLODWORD(self->_size) / 64);
}

- (void)isSafeToInterpolateForDeformationGating
{
  printf("[FlowAnalysis] [Deformation: %.3f, DeformationSum: %.3f]\n", self->_flowDeformation, self->_flowDeformationSum);
  fflush(*MEMORY[0x277D85E08]);
  useCase = self->_useCase;
  if (useCase == 1)
  {
    v5 = 1.5 / (exp((self->_flowDeformationSum - self->jsonDeformationFlowSumThresholdForSloMo) * 5.0) + 1.0);
    v6 = fmin(v5, 1.0);
    if (v6 < 1.0)
    {
      NSLog(&cfstr_Autobahnflowan_5.isa, v6);
    }

    self->_confidenceScore = fminf(v6, self->_confidenceScore);
    if (self->_flowDeformation > self->jsonDeformationFlowThresholdForSloMo && self->_flowDeformationSum > self->jsonDeformationFlowSumThresholdForSloMo)
    {
      v4 = @"[AutobahnFlowAnalysis] Interpolation is gated (deformation) for recommendation only";
      goto LABEL_11;
    }
  }

  else if (!useCase && self->_flowDeformation > self->jsonDeformationFlowThreshold && self->_flowDeformationSum > self->jsonDeformationFlowSumThreshold)
  {
    v4 = @"[FlowAnalysis] Interpolation is gated (deformation)";
LABEL_11:
    self->_safeToInterpolate.deformation = 0;
    NSLog(&v4->isa);
  }
}

- (void)modulateGatingParametersFromMotionHistogramsAnalysis
{
  if (self->_isContinuousDrops)
  {
    v2 = !self->_prevMotionHistogramsAnalysis.hasStaticBackground && self->_prevMotionHistogramsAnalysis.dominantDirection >= 0;
    dominantDirection = self->_motionHistogramsAnalysis.dominantDirection;
    relativeDominantDirection = self->_motionHistogramsAnalysis.relativeDominantDirection;
    v5 = self->_motionHistogramsAnalysis.hasStaticBackground || dominantDirection < 0;
    v6 = self->_prevMotionHistogramsAnalysis.dominantDirection;
    v7 = self->_prevMotionHistogramsAnalysis.relativeDominantDirection;
    v8 = v7 - relativeDominantDirection;
    if (v7 - relativeDominantDirection < 0)
    {
      v8 = relativeDominantDirection - v7;
    }

    if (!v2 || self->_motionHistogramsAnalysis.hasStaticBackground || dominantDirection < 0 || (v6 - dominantDirection >= 0 ? (v9 = v6 - dominantDirection) : (v9 = dominantDirection - v6), (v10 = 1, v15 = v9 > 7, v11 = (1 << v9) & 0x83, !v15) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      if (v2 && self->_motionHistogramsAnalysis.hasSpecialMotion > 0 || (v13 = self->_prevMotionHistogramsAnalysis.hasSpecialMotion, v13 >= 1 && !self->_motionHistogramsAnalysis.hasStaticBackground && dominantDirection >= 0))
      {
        v10 = 1;
      }

      else
      {
        hasSpecialMotion = self->_motionHistogramsAnalysis.hasSpecialMotion;
        v15 = v13 != hasSpecialMotion || hasSpecialMotion <= 0;
        v10 = !v15;
      }
    }

    self->_hasCameraMotion = v10;
    if (v7 < 0)
    {
      v16 = 0;
      v20 = 0;
      p_hasDominantMovingLargeObjects = &self->_hasDominantMovingLargeObjects;
      self->_hasDominantMovingLargeObjects = 0;
      if (relativeDominantDirection < 0)
      {
        goto LABEL_46;
      }
    }

    else if (relativeDominantDirection < 0)
    {
      v16 = 0;
      p_hasDominantMovingLargeObjects = &self->_hasDominantMovingLargeObjects;
      self->_hasDominantMovingLargeObjects = 0;
    }

    else
    {
      v16 = v8 < 2;
      if (v8 == 7)
      {
        v16 = 1;
      }

      v17 = v8 > 7 || ((1 << v8) & 0x83) == 0;
      v18 = (v6 | dominantDirection) >= 0;
      if (v17)
      {
        v18 = 0;
      }

      p_hasDominantMovingLargeObjects = &self->_hasDominantMovingLargeObjects;
      self->_hasDominantMovingLargeObjects = v18;
    }

    v20 = (v6 & dominantDirection) == -1;
LABEL_46:
    self->_hasDominantMovingSmallObjects = v20;
    v21 = self->_prevMotionHistogramsAnalysis.hasStaticBackground && self->_motionHistogramsAnalysis.hasStaticBackground;
    self->_hasStaticBackground = v21;
    jsonRandomnessAreaScale = 1.0;
    if (v16)
    {
      jsonRandomnessAreaScale = self->jsonRandomnessAreaScale;
    }

    self->randomnessAreaScale = jsonRandomnessAreaScale;
    hasCameraMotion = self->_hasCameraMotion;
    v24 = *p_hasDominantMovingLargeObjects;
    v25 = -1.0;
    if (hasCameraMotion || v24)
    {
      v26 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessAreaChangeRatioThresholdForCameraMotion;
      v27 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessErrorChangeRatioThresholdForCameraMotion;
    }

    else if (v21 && self->_hasDominantMovingSmallObjects)
    {
      v26 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessAreaChangeRatioThresholdForStatic;
      v27 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessErrorChangeRatioThresholdForStatic;
      v25 = 1.0;
    }

    else
    {
      v26 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessAreaChangeRatioThreshold;
      v27 = &OBJC_IVAR___OpticalFlowAnalyzer_jsonRandomnessErrorChangeRatioThreshold;
      v25 = 0.0;
    }

    self->consistencySafeThresholdsScale = v25;
    self->randomnessErrorChangeRatioThreshold = *(&self->super.super.isa + *v27);
    self->randomnessAreaChangeRatioThreshold = *(&self->super.super.isa + *v26);
    printf("[MotionHistograms] has_camera_motion: %d, has_dominant_moving_large_objects: %d, has_dominant_moving_small_objects: %d, has_static_background: %d\n", hasCameraMotion, v24, self->_hasDominantMovingSmallObjects, v21);
    return;
  }

  if (self->_isSmallDrops && (self->_motionHistogramsAnalysis.dominantDirection & 0x80000000) == 0)
  {
    self->consistencySafeThresholdsScale = -1.0;
  }
}

- (void)printSideHistograms
{
  p_motionHistograms = &self->_motionHistograms;
  printf("[MotionHistograms] left side directions: [%d, %d, %d, %d], average_magnitude:%d\n", self->_motionHistograms.leftSideDirection[0], self->_motionHistograms.leftSideDirection[1], self->_motionHistograms.leftSideDirection[2], self->_motionHistograms.leftSideDirection[3], self->_motionHistograms.leftSideAverageMagnitude);
  printf("[MotionHistograms] right side directions: [%d, %d, %d, %d], average_magnitude:%d\n", p_motionHistograms->rightSideDirection[0], p_motionHistograms->rightSideDirection[1], p_motionHistograms->rightSideDirection[2], p_motionHistograms->rightSideDirection[3], p_motionHistograms->rightSideAverageMagnitude);
  printf("[MotionHistograms] top side directions: [%d, %d, %d, %d], average_magnitude:%d\n", p_motionHistograms->topSideDirection[0], p_motionHistograms->topSideDirection[1], p_motionHistograms->topSideDirection[2], p_motionHistograms->topSideDirection[3], p_motionHistograms->topSideAverageMagnitude);
  printf("[MotionHistograms] bottom side directions: [%d, %d, %d, %d], average_magnitude:%d\n", p_motionHistograms->bottomSideDirection[0], p_motionHistograms->bottomSideDirection[1], p_motionHistograms->bottomSideDirection[2], p_motionHistograms->bottomSideDirection[3], p_motionHistograms->bottomSideAverageMagnitude);
}

- (BOOL)detectCameraRotation
{
  [(OpticalFlowAnalyzer *)self printSideHistograms];
  v3 = vaddvq_s32(*self->_motionHistograms.leftSideDirection);
  v4 = vaddvq_s32(*self->_motionHistograms.rightSideDirection);
  jsonSideMotionPixelCountThreshold = self->jsonSideMotionPixelCountThreshold;
  v6 = v3 >= jsonSideMotionPixelCountThreshold && v4 >= jsonSideMotionPixelCountThreshold;
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = self->_motionHistograms.leftSideDirection[0];
  v10 = self->_motionHistograms.rightSideDirection[0];
  v11 = &self->_motionHistograms.rightSideDirection[1];
  v12 = -3;
  do
  {
    if (*(v11 - 4) > v9)
    {
      v8 = v12 + 4;
      v9 = *(v11 - 4);
    }

    v14 = *v11++;
    v13 = v14;
    if (v14 > v10)
    {
      v7 = v12 + 4;
      v10 = v13;
    }

    v6 = __CFADD__(v12++, 1);
  }

  while (!v6);
  jsonSideMotionDominanceThreshold = self->jsonSideMotionDominanceThreshold;
  if ((v9 / v3) < jsonSideMotionDominanceThreshold || (v10 / v4) < jsonSideMotionDominanceThreshold)
  {
    return 0;
  }

  if (!v8 && v7 == 2)
  {
    return 1;
  }

  return v8 == 2 && v7 == 0;
}

- (BOOL)checkSafetyByScoreAndArea:(id *)area
{
  var3 = area->var3;
  var5 = area->var5;
  CMTimeMake(&time2, 80, 600);
  var0 = area->var0;
  if (CMTimeCompare(&var0, &time2) < 0 || !self->_hasDominantMovingLargeObjects)
  {
    CMTimeMake(&time2, 40, 600);
    var0 = area->var0;
    if (CMTimeCompare(&var0, &time2))
    {
      return 1;
    }

    if (var3 <= 26.0 || var3 >= 30.0)
    {
      return 1;
    }

    v9 = 2.4;
  }

  else
  {
    v7 = var3 > 30.0 && var3 < 32.0;
    if (v7 && var5 > 1.1 && var5 < 1.7)
    {
      return 0;
    }

    if (var3 <= 26.5 || var3 >= 30.0)
    {
      return 1;
    }

    v9 = 1.9;
  }

  return var5 <= v9 || var5 >= 5.0;
}

- (BOOL)checkSafetyByStripConsistency:(id *)consistency
{
  var5 = consistency->var5;
  var28 = consistency->var28;
  v11 = *var28;
  v12 = consistency->var27 - 1;
  if (v12 >= 2)
  {
    v13 = 2;
    v14 = 1;
    do
    {
      if (var28[v14] < v11)
      {
        v11 = var28[v14];
      }

      v14 = v13;
      v15 = v12 > v13++;
    }

    while (v15);
  }

  *&v4 = self->jsonConsistencyVerticalStripScoreThreshold;
  *&v6 = self->jsonConsistencyVerticalStripAreaPercentageThreshold;
  *&v3 = v11;
  *&v5 = consistency->var5;
  [(OpticalFlowAnalyzer *)self computeConsistencyConfidenceFromScore:v3 scoreThreshold:v4 areaRatio:v5 areaRatioThreshold:v6];
  v20 = *&v16;
  v21 = var5 <= self->jsonConsistencyVerticalStripAreaPercentageThreshold || v11 >= self->jsonConsistencyVerticalStripScoreThreshold;
  var29 = consistency->var29;
  var30 = consistency->var30;
  v24 = *var30;
  if (var29 >= 2)
  {
    v25 = 2;
    v26 = 1;
    do
    {
      if (var30[v26] < v24)
      {
        v24 = var30[v26];
      }

      v26 = v25;
      v15 = var29 > v25++;
    }

    while (v15);
  }

  *&v17 = self->jsonConsistencyHorizontalStripScoreThreshold;
  *&v19 = self->jsonConsistencyHorizontalStripAreaPercentageThreshold;
  *&v16 = v24;
  *&v18 = var5;
  [(OpticalFlowAnalyzer *)self computeConsistencyConfidenceFromScore:v16 scoreThreshold:v17 areaRatio:v18 areaRatioThreshold:v19];
  if (var5 > self->jsonConsistencyHorizontalStripAreaPercentageThreshold && v24 < self->jsonConsistencyHorizontalStripScoreThreshold)
  {
    v21 = 0;
  }

  v28 = fmin(fminf(v20, v27), 1.0);
  if (v28 < 1.0)
  {
    NSLog(&cfstr_FlowanalysisCo.isa, v28);
  }

  self->_confidenceScore = fminf(v28, self->_confidenceScore);
  return v21;
}

- (BOOL)checkSafetyByBlockConsistency:(id *)consistency
{
  if (!self->_hasCameraMotion || !self->_hasDominantMovingLargeObjects || self->_hasDominantMovingSmallObjects || self->_hasStaticBackground)
  {
    return 1;
  }

  var9 = consistency->var9;
  var10 = consistency->var10;
  CMTimeMake(&time2, 80, 600);
  var0 = consistency->var0;
  if (CMTimeCompare(&var0, &time2) < 0)
  {
    CMTimeMake(&time2, 40, 600);
    var0 = consistency->var0;
    if (CMTimeCompare(&var0, &time2) || var9 <= 1.5 || var9 >= 2.6 || var10 <= 0.4)
    {
      return 1;
    }
  }

  else
  {
    if (var9 <= 1.6)
    {
      return 1;
    }

    if (var9 >= 2.6 || var10 <= 0.5)
    {
      return 1;
    }
  }

  return var10 >= 1.2;
}

- (void)updateGatingStats
{
  v3 = *&self->_motionHistogramsAnalysis.hasSpecialMotion;
  *&self->_prevMotionHistogramsAnalysis.hasStaticBackground = *&self->_motionHistogramsAnalysis.hasStaticBackground;
  *&self->_prevMotionHistogramsAnalysis.hasSpecialMotion = v3;
  self->consistencySafeThresholdsScaleForLargeRandomnessErr = 0.0;
  if (self->_visualizationEnabled)
  {
    free(self->_deformationBinaryMap);
    free(self->_consistencyMap);
    free(self->_backwarpLossMap);
  }

  free(self->_deformationBlockRanges);
  if (self->_shouldRunBackwarpGating)
  {
    backwarpBlockRanges = self->_backwarpBlockRanges;

    free(backwarpBlockRanges);
  }
}

- (void)isSafeToInterpolateForBackwarpGatingWithFlowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)second
{
  if (self->_shouldRunBackwarpGating)
  {
    v11 = objc_autoreleasePoolPush();
    [(OpticalFlowAnalyzer *)self analyzeBackwarpForward:forward backward:backward flowResFirst:first flowResSecond:second];
    objc_autoreleasePoolPop(v11);
    v18 = v37 == v38 ? 100.0 : v38;
    if (self->_useCase == 1)
    {
      *&v13 = self->jsonBackwarpFrameScoreThreshold;
      *&v14 = self->jsonBackwarpScoreHighThreshold;
      *&v16 = self->jsonBackwarpAreaPercentageThreshold;
      *&v17 = self->jsonBackwarpAreaPercentageHighThreshold;
      *&v12 = v37;
      *&v15 = v39;
      [(OpticalFlowAnalyzer *)self computeBackwarpConfidenceFromScore:v40 >= self->jsonBackwarpAreaThreshold scoreThreshold:v12 scoreHighThreshold:v13 areaRatio:v14 areaRatioThreshold:v15 areaRatioHighThreshold:v16 large_area:v17];
      v20 = v19;
      *&v21 = self->jsonBackwarpFrameScoreThresholdOnDemand;
      *&v22 = self->jsonBackwarpScoreHighThreshold;
      *&v23 = self->jsonBackwarpAreaPercentageThresholdOnDemand;
      *&v24 = self->jsonBackwarpAreaPercentageHighThreshold;
      *&v25 = v37;
      *&v26 = v39;
      [(OpticalFlowAnalyzer *)self computeBackwarpConfidenceFromScore:v40 >= self->jsonBackwarpAreaThreshold scoreThreshold:v25 scoreHighThreshold:v21 areaRatio:v22 areaRatioThreshold:v26 areaRatioHighThreshold:v23 large_area:v24];
      v32 = *&v33;
      LODWORD(v33) = 1.0;
      if (v37 != v38)
      {
        *&v27 = self->jsonBackwarpROIScoreThreshold;
        *&v28 = self->jsonBackwarpScoreHighThreshold;
        *&v30 = self->jsonBackwarpAreaPercentageThreshold;
        *&v31 = self->jsonBackwarpAreaPercentageHighThreshold;
        *&v33 = v38;
        *&v29 = v39;
        [(OpticalFlowAnalyzer *)self computeBackwarpConfidenceFromScore:v40 >= self->jsonBackwarpAreaThreshold scoreThreshold:v33 scoreHighThreshold:v27 areaRatio:v28 areaRatioThreshold:v29 areaRatioHighThreshold:v30 large_area:v31];
      }

      v34 = fmin(fminf(v20, *&v33), 1.0);
      if (v34 < 1.0)
      {
        NSLog(&cfstr_Autobahnflowan_7.isa, v34);
      }

      self->_confidenceScore = fminf(v34, self->_confidenceScore);
      v35 = fmin(v32, 1.0);
      if (v35 < 1.0)
      {
        NSLog(&cfstr_Autobahnflowan_8.isa, v35);
      }

      self->_confidenceScoreOnDemand = fminf(v35, self->_confidenceScoreOnDemand);
      if (v39 > self->jsonBackwarpAreaPercentageThreshold && (v37 < self->jsonBackwarpFrameScoreThreshold || v18 < self->jsonBackwarpROIScoreThreshold))
      {
        self->_safeToInterpolate.backwarp = 0;
        if (v39 <= self->jsonBackwarpAreaPercentageThresholdOnDemand || v37 >= self->jsonBackwarpFrameScoreThresholdOnDemand)
        {
          if (v39 <= self->jsonBackwarpAreaPercentageHighThreshold || v37 >= self->jsonBackwarpScoreHighThreshold)
          {
LABEL_24:
            NSLog(&cfstr_Autobahnflowan_10.isa);
            return;
          }

          v36 = v40 < self->jsonBackwarpAreaThreshold;
        }

        else
        {
          v36 = 0;
        }

        if (self->_framesToInterpolate >= 4 && !v36)
        {
          self->_isSafeToInterpolateForInteractiveMode = 0;
          NSLog(&cfstr_Autobahnflowan_9.isa);
          return;
        }

        goto LABEL_24;
      }
    }
  }
}

- (float)computeBackwarpConfidenceFromScore:(float)score scoreThreshold:(float)threshold scoreHighThreshold:(float)highThreshold areaRatio:(float)ratio areaRatioThreshold:(float)ratioThreshold areaRatioHighThreshold:(float)ratioHighThreshold large_area:(BOOL)large_area
{
  if (ratio >= ratioThreshold)
  {
    v11 = 1.0;
    if (ratio >= ratioHighThreshold && large_area)
    {
      v11 = (exp(((ratio - ratioHighThreshold) * 0.1 + 1.0) * ((threshold / fmaxf(score, highThreshold)) + -1.0)) + 1.0) * 0.5;
    }
  }

  else
  {
    v11 = expf((1.0 - (ratio / ratioThreshold)) * 15.0);
  }

  v13 = 4.0;
  if (score >= threshold)
  {
    v13 = 1.0;
  }

  return v11 * 1.5 / (expf(((threshold / score) + -1.0) * v13) + 1.0);
}

- ($599F175E452E455E49EC8439362DB023)analyzeBackwarpForward:(SEL)forward backward:(__CVBuffer *)backward flowResFirst:(__CVBuffer *)first flowResSecond:(__CVBuffer *)second
{
  Width = CVPixelBufferGetWidth(backward);
  v14 = CVPixelBufferGetHeight(backward) >> 1;
  v15 = createTexturesFromCVPixelBuffer(backward, self->super._device, 1, 2uLL);
  v16 = createTexturesFromCVPixelBuffer(first, self->super._device, 1, 2uLL);
  v17 = createTexturesFromCVPixelBuffer(second, self->super._device, 1, 3uLL);
  v18 = createTexturesFromCVPixelBuffer(a7, self->super._device, 1, 3uLL);
  v19 = createTextures(self->super._device, Width, v14, 1, 1uLL);
  v20 = createTextures(self->super._device, Width, v14, 1, 1uLL);
  v25 = [[Backwarp alloc] initWithDevice:self->super._device interleaved:0];
  LODWORD(v21) = 1.0;
  [(Backwarp *)v25 calcBackwarpLoss:v17 second:v18 flow:v15 timeScale:v19 destination:v21];
  LODWORD(v22) = 1.0;
  [(Backwarp *)v25 calcBackwarpLoss:v18 second:v17 flow:v16 timeScale:v20 destination:v22];
  v23 = [(NSArray *)self->_firstFaceHandLegRectangles arrayByAddingObjectsFromArray:self->_secondFaceHandLegRectangles];
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  [(OpticalFlowAnalyzer *)self calcBackwarpStatisticsForwardLossTexture:v19 backwardLossTexture:v20 faceHandLegRectangles:v23];
  printf("[FlowAnalysis] Backwarp Loss Error: %.3f, Score: %.3f, ROI_Score: %.3f, Area_Ratio: %.3f, Area: %.3f\n", retstr->var0, retstr->var1, retstr->var2, retstr->var3, retstr->var4);

  return result;
}

- ($599F175E452E455E49EC8439362DB023)calcBackwarpStatisticsForwardLossTexture:(SEL)texture backwardLossTexture:(id)lossTexture faceHandLegRectangles:(id)rectangles
{
  v10 = a6;
  rectanglesCopy = rectangles;
  lossTextureCopy = lossTexture;
  v13 = ([lossTextureCopy width] + 7) >> 3;
  v14 = ([lossTextureCopy height] + 7) >> 3;
  v15 = [(MTLDevice *)self->super._device newBufferWithLength:4 * v13 * v14 options:0];
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_backwarpStatisticsKernel];
  [computeCommandEncoder setTexture:lossTextureCopy atIndex:0];

  [computeCommandEncoder setTexture:rectanglesCopy atIndex:1];
  [computeCommandEncoder setBuffer:v15 offset:0 atIndex:0];
  v23[0] = v13;
  v23[1] = v14;
  v23[2] = 1;
  v21 = vdupq_n_s64(8uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  contents = [v15 contents];
  if (v10)
  {
    v19 = [(OpticalFlowAnalyzer *)self findFaceHandLegBlocksFromRectangles:v10 blockWidth:v13 blockHeight:v14];
  }

  else
  {
    v19 = 0;
  }

  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  [(OpticalFlowAnalyzer *)self processBackwarpStats:contents blockWidth:v13 blockHeight:v14 faceHandLegBoundingBoxBlocks:v19];

  return result;
}

- ($599F175E452E455E49EC8439362DB023)processBackwarpStats:(SEL)stats blockWidth:(id *)width blockHeight:(unint64_t)height faceHandLegBoundingBoxBlocks:(unint64_t)blocks
{
  v68 = a7;
  v11 = [v68 count];
  v12 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  v13 = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
  self->_backwarpBlockRanges = v13;
  *v13 = height;
  v13[1] = -1;
  v13[2] = blocks;
  v13[3] = -1;
  if (self->_visualizationEnabled)
  {
    self->_backwarpLossMap = malloc_type_calloc(blocks * height, 1uLL, 0x100004077774924uLL);
  }

  v14 = 0.0;
  v59 = 0.0;
  if (blocks)
  {
    v58 = retstr;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    heightCopy = height;
    blocksCopy = blocks;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    heightCopy2 = height;
    selfCopy = self;
    do
    {
      if (height)
      {
        v21 = 0;
        p_cleanRectFlow8x8 = &self->_cleanRectFlow8x8;
        v23 = v15;
        v66 = v15 * heightCopy;
        v24 = v20;
        v64 = v15;
        do
        {
          v70.x = v21;
          v70.y = v23;
          if (CGRectContainsPoint(*p_cleanRectFlow8x8, v70))
          {
            var0 = width[v21 + v66].var0;
            if (self->_visualizationEnabled)
            {
              self->_backwarpLossMap[v21 + v66] = var0;
            }

            if (var0 > 32.0)
            {
              backwarpBlockRanges = self->_backwarpBlockRanges;
              if (v21 < *backwarpBlockRanges)
              {
                *backwarpBlockRanges = v21;
              }

              if (v21 > backwarpBlockRanges[1])
              {
                backwarpBlockRanges[1] = v21;
              }

              if (v15 < backwarpBlockRanges[2])
              {
                backwarpBlockRanges[2] = v15;
              }

              v19 = v19 + 1.0;
              if (v15 > backwarpBlockRanges[3])
              {
                backwarpBlockRanges[3] = v15;
              }
            }

            ++v16;
            v18 = v18 + var0;
            v20 = v24 + var0;
            v27 = v68;
            if (v11)
            {
              v28 = v17;
              v29 = v16;
              v30 = 0;
              v31 = 0;
              do
              {
                v32 = [v27 objectAtIndexedSubscript:v30];
                [v32 rect];
                v71.x = v21;
                v71.y = v23;
                v33 = CGRectContainsPoint(v72, v71);

                if (v33)
                {
                  v12[v30] = var0 + v12[v30];
                  v31 = 1;
                }

                ++v30;
                v27 = v68;
              }

              while (v11 != v30);
              v17 = v28 + ((v31 & 1) == 0);
              if (v31)
              {
                v20 = v24;
              }

              v16 = v29;
              height = heightCopy2;
              self = selfCopy;
              v15 = v64;
            }

            else
            {
              ++v17;
            }
          }

          else
          {
            v20 = v24;
          }

          ++v21;
          v24 = v20;
        }

        while (v21 != height);
      }

      ++v15;
    }

    while (v15 != blocksCopy);
    v14 = v19 * 100.0;
    retstr = v58;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v20 = 0.0;
    v18 = 0.0;
  }

  v34 = self->_backwarpBlockRanges;
  v35 = *v34;
  v36 = v34[1];
  v37 = v36 - *v34;
  if (v36 >= *v34)
  {
    v39 = v34[2];
    v40 = v34[3];
    v38 = 0.0;
    if (v40 >= v39)
    {
      v59 = (v37 + 1 + (v37 + 1) * (v40 - v39));
      v38 = v14 / v59;
      printf("[FlowAnalysis] Backwarp ranges (%d, %d, %d, %d)\n", v35, v36, v39, v40);
    }
  }

  else
  {
    v38 = 0.0;
  }

  v67 = v38;
  v41 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
  v42 = 0.0;
  v43 = 0.0;
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v45 = v12[i];
      v46 = [v68 objectAtIndexedSubscript:i];
      v41[i] = v45 / ([v46 numberOfBlocks] << 6);

      v47 = [v68 objectAtIndexedSubscript:i];
      v48 = [v47 numberOfBlocks] / v16;

      v49 = [v68 objectAtIndexedSubscript:i];
      category = [v49 category];

      v51 = 128.0;
      if (category != 2)
      {
        v51 = 64.0;
      }

      v52 = fmin((v48 * v51), 1.0);
      if ((v41[i] * v52) > v42)
      {
        v42 = v41[i] * v52;
        v43 = v52;
      }
    }
  }

  if (v17)
  {
    v53 = v20 / (v17 << 6);
  }

  else
  {
    v53 = 0.0;
  }

  v54 = v18 / (v16 << 6);
  v55 = log10(100.0 / v54) * 10.0;
  v56 = log10(100.0 / (v42 + ((1.0 - v43) * v53))) * 10.0;
  retstr->var0 = v54;
  retstr->var1 = v55;
  retstr->var2 = v56;
  retstr->var3 = v67;
  retstr->var4 = v59;
  free(v41);
  free(v12);

  return result;
}

- (FRCScaler)scaler
{
  WeakRetained = objc_loadWeakRetained(&self->_scaler);

  return WeakRetained;
}

@end