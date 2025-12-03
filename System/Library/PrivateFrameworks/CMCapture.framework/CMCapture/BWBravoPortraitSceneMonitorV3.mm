@interface BWBravoPortraitSceneMonitorV3
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWBravoPortraitSceneMonitorV3)initWithTuningParameters:(id)parameters zoomFactor:(float)factor portraitAutoSuggestEnabled:(BOOL)enabled shallowDepthOfFieldEnabled:(BOOL)fieldEnabled attachDebugFrameStatistics:(BOOL)statistics stageSegmentationMonitoringEnabled:(BOOL)monitoringEnabled;
- (float)doubleExponentialSmoothing:(float *)smoothing smoothValue:(float)result trendValue:(float)value dataFactor:(float)factor trendFactor:;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
- (void)updateTuningParameters:(id)parameters zoomFactor:(float)factor;
@end

@implementation BWBravoPortraitSceneMonitorV3

- (void)dealloc
{
  [(BWPortraitAutoSuggest *)self->_autoSuggestMonitor dealloc];
  v3.receiver = self;
  v3.super_class = BWBravoPortraitSceneMonitorV3;
  [(BWBravoPortraitSceneMonitorV3 *)&v3 dealloc];
}

- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress
{
  if (progress)
  {
    *&self->_oneShotFocusScanInProgress = 0;
  }

  else if (locked)
  {
    *&self->_oneShotFocusScanInProgress = 256;
    self->_numFramesSinceFocusLocked = 0;
  }

  else if (inProgress)
  {
    *&self->_oneShotFocusScanInProgress = 1;
  }
}

- (void)focusScanDidComplete
{
  if (self->_oneShotFocusScanInProgress)
  {
    *&self->_oneShotFocusScanInProgress = 256;
    self->_numFramesSinceFocusLocked = 0;
  }
}

- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1
{
  self->_invalidShiftRatioSmoothed = BWModifiedMovingAverage(ratio, self->_invalidShiftRatioSmoothed, self->_invalidShiftRatioSmoothingFactor);
  if (segmentationRatio == 1.0)
  {
    if ([faces count])
    {
      segmentationRatio = 1.0;
    }

    else
    {
      segmentationRatio = 0.0;
    }
  }

  v16 = BWModifiedMovingAverage(segmentationRatio, self->_personSegmentationRatioSmoothed, 0.35);
  self->_personSegmentationRatioSmoothed = v16;
  if (self->_personSegmentationStatusEnabled)
  {
    v17 = v16 >= self->_personSegmentationRatioThreshold;
  }

  else
  {
    v17 = self->_personSegmentationRatioThreshold * 1.2 <= v16;
  }

  self->_personSegmentationStatusEnabled = v17;
  [(BWBravoPortraitSceneMonitorV3 *)self doubleExponentialSmoothing:&self->_backgroundShiftSumSmoothingTrend smoothValue:sum trendValue:self->_backgroundShiftSumSmoothingFactor dataFactor:self->_backgroundShiftSumSmoothingTrendUpdateFactor trendFactor:?];
  self->_deliveryOfShiftsHasStarted |= ratio < 0.9;

  v18 = [faces copy];
  self->_stageMostRecentFaces = v18;
  self->_stageFaceHasBeenSeen |= [(NSArray *)v18 count]!= 0;
  if ([(NSArray *)self->_stageMostRecentFaces count])
  {
    v19 = 0;
  }

  else
  {
    v19 = self->_stageFaceNumberOfFramesSinceLastFace + 1;
  }

  self->_stageFaceNumberOfFramesSinceLastFace = v19;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v14 = [type objectForKeyedSubscript:{objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B540)}];
  [v14 focusDistance];
  if (self->_subjectTooCloseMonitoringForcingWideLens)
  {
    [objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0C0), "focusDistance"}];
  }

  self->_jasperDistanceAtFocus = BWModifiedMovingAverage([objc_msgSend(objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B770), "objectForKeyedSubscript:", *off_1E798C7D0), "intValue"}], self->_jasperDistanceAtFocus, self->_jasperDistanceAtFocusSmoothingFactor);
  [v14 afStatus];
  if ([v14 afStatus] != 4)
  {
    [v14 afStatus];
  }

  [v14 focusingMethod];
  FigCaptureStreamFocusingMethodIsPhaseDetectionBased();
}

- (BWBravoPortraitSceneMonitorV3)initWithTuningParameters:(id)parameters zoomFactor:(float)factor portraitAutoSuggestEnabled:(BOOL)enabled shallowDepthOfFieldEnabled:(BOOL)fieldEnabled attachDebugFrameStatistics:(BOOL)statistics stageSegmentationMonitoringEnabled:(BOOL)monitoringEnabled
{
  fieldEnabledCopy = fieldEnabled;
  enabledCopy = enabled;
  v17.receiver = self;
  v17.super_class = BWBravoPortraitSceneMonitorV3;
  v13 = [(BWBravoPortraitSceneMonitorV3 *)&v17 init:parameters];
  v14 = v13;
  if (v13)
  {
    v13->_numberOfFramesWithStableFocusThreshold = 3;
    v13->_subjectTooCloseMonitoringEnabled = 1;
    v13->_subjectTooCloseMonitoringForcingWideLens = [objc_msgSend(parameters objectForKeyedSubscript:{@"ForceWideLensForTooCloseGating", "BOOLValue"}];
    v14->_subjectTooCloseHysteresis = 2.0;
    v14->_subjectTooFarMonitoringEnabled = [objc_msgSend(parameters objectForKeyedSubscript:{@"SubjectTooFarMonitoringEnabled", "BOOLValue"}];
    v14->_subjectTooFarDistanceThresholdReached = 0;
    v14->_subjectTooFarDistanceThresholdHysteresis = 10.0;
    v14->_backgroundShiftSumTooLowThresholdReached = 0;
    *&v14->_subjectIsTooFarDigitalFlash = 0;
    *&v14->_subjectTooFarBackGroundShiftSumIsTooLowHysteresis = 1066192077;
    v14->_jasperDistanceAtFocusSmoothingFactor = 0.05;
    v14->_backgroundShiftSumSmoothingTrendUpdateFactor = 0.025;
    *&v14->_backgroundShiftSumSmoothingTrend = 0x3D8F5C2900000000;
    v14->_invalidShiftRatioSmoothingFactor = 0.025;
    v14->_sceneTooDarkMonitoringEnabled = 1;
    v14->_stageFaceMonitoringEnabled = 1;
    v14->_stageTooFarMonitoringEnabled = [objc_msgSend(parameters objectForKeyedSubscript:{@"SubjectTooFarMonitoringEnabled", "BOOLValue"}];
    v14->_stageTooFarDistanceThresholdReached = 0;
    v14->_stageTooFarDistanceThresholdHysteresis = 10.0;
    v14->_stageBackgroundShiftSumTooLowThresholdReached = 0;
    v14->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 0;
    v14->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v14->_stageTooFarBackGroundShiftSumIsTooLowHysteresis = 1.15;
    v14->_stageSegmentationMonitoringEnabled = monitoringEnabled;
    v14->_personSegmentationRatioThreshold = 0.1;
    *&v14->_autoSuggestMaxThermalPressureLevel = 0x200000002;
    [(BWBravoPortraitSceneMonitorV3 *)v14 updateTuningParameters:parameters zoomFactor:COERCE_DOUBLE(LODWORD(factor) | 0x200000000)];
    v14->_deliveryOfShiftsHasStarted = 0;
    v14->_sceneIsTooDark = 0;
    v14->_subjectIsTooClose = 0;
    v14->_canProceedBeforeFocusBecomesStable = [objc_msgSend(parameters objectForKeyedSubscript:{@"CanProceedWithoutStableFocus", "BOOLValue"}];
    v14->_focusHasBeenAttainedAfterStart = 0;
    v14->_numFramesSinceFocusFirstAttainedStability = 0;
    v14->_autoSuggestEnabled = enabledCopy;
    if (!enabledCopy)
    {
LABEL_5:
      v14->_focusIsStationaryBeyondThreshold = 0;
      [(BWBravoPortraitSceneMonitorV3 *)v14 setShallowDepthOfFieldRenderingEnabled:fieldEnabledCopy];
      return v14;
    }

    v15 = [[BWPortraitAutoSuggest alloc] initWithTuningParameters:parameters];
    v14->_autoSuggestMonitor = v15;
    if (v15)
    {
      [(BWPortraitAutoSuggest *)v15 setPortTypeIsFFC:0];
      goto LABEL_5;
    }
  }

  return v14;
}

- (void)updateTuningParameters:(id)parameters zoomFactor:(float)factor
{
  if (parameters)
  {
    if (factor != 0.0)
    {
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "floatValue"}];
      self->_subjectTooCloseFocusDistanceThreshold = v7;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "floatValue"}];
      self->_subjectTooFarFocusDistanceThreshold = v8;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"BackgroundShiftSumTooLowThreshold", "floatValue"}];
      self->_subjectTooFarBackgroundShiftSumTooLowThreshold = v9;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarJasperDistanceThreshold", "floatValue"}];
      self->_subjectTooFarDigitalFlashThreshold = v10;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarJasperDistanceThreshold", "floatValue"}];
      self->_stageTooFarDigitalFlashThreshold = v11;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkGainThresholdHard", "floatValue"}];
      self->_sceneTooDarkGainThresholdHard = v12;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkGainThreshold", "floatValue"}];
      self->_sceneTooDarkGainThreshold = v13;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThreshold", "floatValue"}];
      self->_sceneTooDarkAEAverageAETargetFractionThreshold = v14;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThresholdHysteresisLag", "floatValue"}];
      self->_sceneTooDarkAEAverageAETargetFractionThresholdHysteresisLag = v15;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarFocusDistanceThreshold", "floatValue"}];
      self->_stageTooFarFocusDistanceThreshold = v16;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"StageBackgroundShiftSumTooLowThreshold", "floatValue"}];
      self->_stageTooFarBackgroundShiftSumTooLowThreshold = v17;
      [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarBackgroundShiftSumNoFacesThreshold", "floatValue"}];
      self->_stageTooFarBackgroundShiftSumNoFacesThreshold = v18;
      self->_zoomFactorForTuningParameters = factor;
    }
  }
}

- (float)doubleExponentialSmoothing:(float *)smoothing smoothValue:(float)result trendValue:(float)value dataFactor:(float)factor trendFactor:
{
  if (self)
  {
    result = (result * value) + (1.0 - value) * (*a2 + *smoothing);
    v6 = ((result - *a2) * factor) + (1.0 - factor) * *smoothing;
    *smoothing = v6;
    *a2 = result;
  }

  return result;
}

@end