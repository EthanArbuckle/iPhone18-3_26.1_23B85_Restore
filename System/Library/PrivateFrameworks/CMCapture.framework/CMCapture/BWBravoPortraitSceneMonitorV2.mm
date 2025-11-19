@interface BWBravoPortraitSceneMonitorV2
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11;
- (BWBravoPortraitSceneMonitorV2)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5;
- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11;
@end

@implementation BWBravoPortraitSceneMonitorV2

- (BWBravoPortraitSceneMonitorV2)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4
{
  v17.receiver = self;
  v17.super_class = BWBravoPortraitSceneMonitorV2;
  v5 = [(BWBravoPortraitSceneMonitorV2 *)&v17 init:a3];
  v6 = v5;
  if (v5)
  {
    v5->_numberOfFramesWithStableFocusThreshold = 3;
    v5->_subjectTooCloseMonitoringEnabled = 1;
    v5->_subjectTooCloseMonitoringForcingWideLens = [objc_msgSend(a3 objectForKeyedSubscript:{@"ForceWideLensForTooCloseGating", "BOOLValue"}];
    v6->_subjectTooCloseFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "intValue"}];
    v6->_subjectTooCloseHysteresis = 2.0;
    v6->_subjectTooFarMonitoringEnabled = 1;
    v6->_subjectTooFarFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "intValue"}];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"BackgroundShiftSumTooLowThreshold", "floatValue"}];
    v6->_subjectTooFarBackgroundShiftSumTooLowThreshold = v7;
    v6->_subjectTooFarDistanceThresholdReached = 0;
    v6->_subjectTooFarDistanceThresholdHysteresis = 10.0;
    v6->_backgroundShiftSumTooLowThresholdReached = 0;
    v6->_subjectTooFarBackGroundShiftSumIsTooLowHysteresis = 1.1;
    *&v6->_subjectIsTooFarDigitalFlash = 0;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarJasperDistanceThreshold", "floatValue"}];
    v6->_subjectTooFarDigitalFlashThreshold = v8;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarJasperDistanceThreshold", "floatValue"}];
    v6->_stageTooFarDigitalFlashThreshold = v9;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkGainThresholdHard", "floatValue"}];
    v6->_sceneTooDarkGainThresholdHard = v10;
    v6->_jasperDistanceAtFocus = 0.0;
    v6->_jasperDistanceAtFocusSmoothingFactor = 0.05;
    v6->_backgroundShiftSumSmoothingTrendUpdateFactor = 0.025;
    *&v6->_backgroundShiftSumSmoothingTrend = 0x3D8F5C2900000000;
    v6->_invalidShiftRatioSmoothingFactor = 0.025;
    v6->_sceneTooDarkMonitoringEnabled = 1;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkGainThreshold", "floatValue"}];
    v6->_sceneTooDarkGainThreshold = v11;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThreshold", "floatValue"}];
    v6->_sceneTooDarkAEAverageAETargetFractionThreshold = v12;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkAEAverageAETargetFractionThresholdHysteresisLag", "floatValue"}];
    v6->_sceneTooDarkAEAverageAETargetFractionThresholdHysteresisLag = v13;
    v6->_stageFaceMonitoringEnabled = 1;
    v6->_stageTooFarMonitoringEnabled = 1;
    v6->_stageTooFarFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarFocusDistanceThreshold", "intValue"}];
    v6->_stageTooFarDistanceThresholdReached = 0;
    v6->_stageTooFarDistanceThresholdHysteresis = 10.0;
    v6->_stageBackgroundShiftSumTooLowThresholdReached = 0;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"StageBackgroundShiftSumTooLowThreshold", "floatValue"}];
    v6->_stageTooFarBackgroundShiftSumTooLowThreshold = v14;
    v6->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 0;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarBackgroundShiftSumNoFacesThreshold", "floatValue"}];
    v6->_stageTooFarBackgroundShiftSumNoFacesThreshold = v15;
    v6->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v6->_stageTooFarBackGroundShiftSumIsTooLowHysteresis = 1.15;
    v6->_deliveryOfShiftsHasStarted = 0;
    v6->_sceneIsTooDark = 0;
    v6->_subjectIsTooClose = 0;
    v6->_focusHasBeenAttainedAfterStart = 0;
    v6->_numFramesSinceFocusFirstAttainedStability = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBravoPortraitSceneMonitorV2;
  [(BWBravoPortraitSceneMonitorV2 *)&v3 dealloc];
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

  self->_focusIsStationaryBeyondThreshold = 0;
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
  [(BWBravoPortraitSceneMonitorV3 *)self doubleExponentialSmoothing:&self->_backgroundShiftSumSmoothingTrend smoothValue:a3 trendValue:self->_backgroundShiftSumSmoothingFactor dataFactor:self->_backgroundShiftSumSmoothingTrendUpdateFactor trendFactor:?];
  self->_deliveryOfShiftsHasStarted |= a4 < 0.9;

  v15 = [a10 copy];
  self->_stageMostRecentFaces = v15;
  self->_stageFaceHasBeenSeen |= [(NSArray *)v15 count]!= 0;
  if ([(NSArray *)self->_stageMostRecentFaces count])
  {
    v16 = 0;
  }

  else
  {
    v16 = self->_stageFaceNumberOfFramesSinceLastFace + 1;
  }

  self->_stageFaceNumberOfFramesSinceLastFace = v16;
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

@end