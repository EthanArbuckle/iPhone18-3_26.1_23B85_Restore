@interface BWBravoPortraitSceneMonitorV3
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11;
- (BWBravoPortraitSceneMonitorV3)initWithTuningParameters:(id)a3 zoomFactor:(float)a4 portraitAutoSuggestEnabled:(BOOL)a5 shallowDepthOfFieldEnabled:(BOOL)a6 attachDebugFrameStatistics:(BOOL)a7 stageSegmentationMonitoringEnabled:(BOOL)a8;
- (float)doubleExponentialSmoothing:(float *)a3 smoothValue:(float)result trendValue:(float)a5 dataFactor:(float)a6 trendFactor:;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5;
- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11;
- (void)updateTuningParameters:(id)a3 zoomFactor:(float)a4;
@end

@implementation BWBravoPortraitSceneMonitorV3

- (void)dealloc
{
  [(BWPortraitAutoSuggest *)self->_autoSuggestMonitor dealloc];
  v3.receiver = self;
  v3.super_class = BWBravoPortraitSceneMonitorV3;
  [(BWBravoPortraitSceneMonitorV3 *)&v3 dealloc];
}

- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5
{
  if (a3)
  {
    *&self->_oneShotFocusScanInProgress = 0;
  }

  else if (a4)
  {
    *&self->_oneShotFocusScanInProgress = 256;
    self->_numFramesSinceFocusLocked = 0;
  }

  else if (a5)
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

- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11
{
  self->_invalidShiftRatioSmoothed = BWModifiedMovingAverage(a4, self->_invalidShiftRatioSmoothed, self->_invalidShiftRatioSmoothingFactor);
  if (a11 == 1.0)
  {
    if ([a10 count])
    {
      a11 = 1.0;
    }

    else
    {
      a11 = 0.0;
    }
  }

  v16 = BWModifiedMovingAverage(a11, self->_personSegmentationRatioSmoothed, 0.35);
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
  [(BWBravoPortraitSceneMonitorV3 *)self doubleExponentialSmoothing:&self->_backgroundShiftSumSmoothingTrend smoothValue:a3 trendValue:self->_backgroundShiftSumSmoothingFactor dataFactor:self->_backgroundShiftSumSmoothingTrendUpdateFactor trendFactor:?];
  self->_deliveryOfShiftsHasStarted |= a4 < 0.9;

  v18 = [a10 copy];
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

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11
{
  v13 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v14 = [a4 objectForKeyedSubscript:{objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B540)}];
  [v14 focusDistance];
  if (self->_subjectTooCloseMonitoringForcingWideLens)
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{*off_1E798A0C0), "focusDistance"}];
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

- (BWBravoPortraitSceneMonitorV3)initWithTuningParameters:(id)a3 zoomFactor:(float)a4 portraitAutoSuggestEnabled:(BOOL)a5 shallowDepthOfFieldEnabled:(BOOL)a6 attachDebugFrameStatistics:(BOOL)a7 stageSegmentationMonitoringEnabled:(BOOL)a8
{
  v9 = a6;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BWBravoPortraitSceneMonitorV3;
  v13 = [(BWBravoPortraitSceneMonitorV3 *)&v17 init:a3];
  v14 = v13;
  if (v13)
  {
    v13->_numberOfFramesWithStableFocusThreshold = 3;
    v13->_subjectTooCloseMonitoringEnabled = 1;
    v13->_subjectTooCloseMonitoringForcingWideLens = [objc_msgSend(a3 objectForKeyedSubscript:{@"ForceWideLensForTooCloseGating", "BOOLValue"}];
    v14->_subjectTooCloseHysteresis = 2.0;
    v14->_subjectTooFarMonitoringEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"SubjectTooFarMonitoringEnabled", "BOOLValue"}];
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
    v14->_stageTooFarMonitoringEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"SubjectTooFarMonitoringEnabled", "BOOLValue"}];
    v14->_stageTooFarDistanceThresholdReached = 0;
    v14->_stageTooFarDistanceThresholdHysteresis = 10.0;
    v14->_stageBackgroundShiftSumTooLowThresholdReached = 0;
    v14->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 0;
    v14->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v14->_stageTooFarBackGroundShiftSumIsTooLowHysteresis = 1.15;
    v14->_stageSegmentationMonitoringEnabled = a8;
    v14->_personSegmentationRatioThreshold = 0.1;
    *&v14->_autoSuggestMaxThermalPressureLevel = 0x200000002;
    [(BWBravoPortraitSceneMonitorV3 *)v14 updateTuningParameters:a3 zoomFactor:COERCE_DOUBLE(LODWORD(a4) | 0x200000000)];
    v14->_deliveryOfShiftsHasStarted = 0;
    v14->_sceneIsTooDark = 0;
    v14->_subjectIsTooClose = 0;
    v14->_canProceedBeforeFocusBecomesStable = [objc_msgSend(a3 objectForKeyedSubscript:{@"CanProceedWithoutStableFocus", "BOOLValue"}];
    v14->_focusHasBeenAttainedAfterStart = 0;
    v14->_numFramesSinceFocusFirstAttainedStability = 0;
    v14->_autoSuggestEnabled = v10;
    if (!v10)
    {
LABEL_5:
      v14->_focusIsStationaryBeyondThreshold = 0;
      [(BWBravoPortraitSceneMonitorV3 *)v14 setShallowDepthOfFieldRenderingEnabled:v9];
      return v14;
    }

    v15 = [[BWPortraitAutoSuggest alloc] initWithTuningParameters:a3];
    v14->_autoSuggestMonitor = v15;
    if (v15)
    {
      [(BWPortraitAutoSuggest *)v15 setPortTypeIsFFC:0];
      goto LABEL_5;
    }
  }

  return v14;
}

- (void)updateTuningParameters:(id)a3 zoomFactor:(float)a4
{
  if (a3)
  {
    if (a4 != 0.0)
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "floatValue"}];
      self->_subjectTooCloseFocusDistanceThreshold = v7;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "floatValue"}];
      self->_subjectTooFarFocusDistanceThreshold = v8;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"BackgroundShiftSumTooLowThreshold", "floatValue"}];
      self->_subjectTooFarBackgroundShiftSumTooLowThreshold = v9;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarJasperDistanceThreshold", "floatValue"}];
      self->_subjectTooFarDigitalFlashThreshold = v10;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarJasperDistanceThreshold", "floatValue"}];
      self->_stageTooFarDigitalFlashThreshold = v11;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkGainThresholdHard", "floatValue"}];
      self->_sceneTooDarkGainThresholdHard = v12;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkGainThreshold", "floatValue"}];
      self->_sceneTooDarkGainThreshold = v13;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThreshold", "floatValue"}];
      self->_sceneTooDarkAEAverageAETargetFractionThreshold = v14;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThresholdHysteresisLag", "floatValue"}];
      self->_sceneTooDarkAEAverageAETargetFractionThresholdHysteresisLag = v15;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarFocusDistanceThreshold", "floatValue"}];
      self->_stageTooFarFocusDistanceThreshold = v16;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"StageBackgroundShiftSumTooLowThreshold", "floatValue"}];
      self->_stageTooFarBackgroundShiftSumTooLowThreshold = v17;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarBackgroundShiftSumNoFacesThreshold", "floatValue"}];
      self->_stageTooFarBackgroundShiftSumNoFacesThreshold = v18;
      self->_zoomFactorForTuningParameters = a4;
    }
  }
}

- (float)doubleExponentialSmoothing:(float *)a3 smoothValue:(float)result trendValue:(float)a5 dataFactor:(float)a6 trendFactor:
{
  if (a1)
  {
    result = (result * a5) + (1.0 - a5) * (*a2 + *a3);
    v6 = ((result - *a2) * a6) + (1.0 - a6) * *a3;
    *a3 = v6;
    *a2 = result;
  }

  return result;
}

@end