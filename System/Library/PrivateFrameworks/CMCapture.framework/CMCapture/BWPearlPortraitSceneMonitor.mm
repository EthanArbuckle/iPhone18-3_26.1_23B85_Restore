@interface BWPearlPortraitSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWPearlPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics;
- (void)dealloc;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
@end

@implementation BWPearlPortraitSceneMonitor

- (BWPearlPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics
{
  v17.receiver = self;
  v17.super_class = BWPearlPortraitSceneMonitor;
  v5 = [(BWPearlPortraitSceneMonitor *)&v17 init:parameters];
  if (v5)
  {
    *(v5 + 6) = [objc_msgSend(parameters objectForKeyedSubscript:{@"NumberOfFramesToStayEnabledThreshold", "unsignedIntValue"}];
    *(v5 + 14) = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightLuxLevelThreshold", "unsignedIntValue"}];
    *(v5 + 15) = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightMaxLuxLevelThreshold", "unsignedIntValue"}];
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightDepthQualityThreshold", "floatValue"}];
    *(v5 + 8) = v6;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"DepthQualityKCount", "floatValue"}];
    *(v5 + 9) = v7;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooCloseDepthDistanceValue", "floatValue"}];
    *(v5 + 10) = v8;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarDepthDistanceValue", "floatValue"}];
    *(v5 + 11) = v9;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightTooFarDepthDistanceValue", "floatValue"}];
    *(v5 + 12) = v10;
    *(v5 + 13) = 3;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooBrightDepthQualityThreshold", "floatValue"}];
    *(v5 + 14) = v11;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooCloseDistanceThreshold", "floatValue"}];
    *(v5 + 15) = v12;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarDistanceThreshold", "floatValue"}];
    *(v5 + 16) = v13;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageBackgroundTooFarDepthQualityThreshold", "floatValue"}];
    *(v5 + 17) = v14;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageBackgroundTooFarLuxLevelThreshold", "floatValue"}];
    *(v5 + 36) = v15;
    *(v5 + 19) = 6;
    *(v5 + 2) = [objc_msgSend(parameters objectForKeyedSubscript:{@"NumberOfFramesToWaitForAEAndLTMToStabilize", "unsignedIntValue"}];
    *(v5 + 12) = 0x3DCCCCCD3CCCCCCDLL;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWPearlPortraitSceneMonitor;
  [(BWPearlPortraitSceneMonitor *)&v2 dealloc];
}

- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1
{
  self->_stageDepthQuality = 1.0 - ratio;
  if (self->_portraitSceneMonitoringRequiresStageThresholds || self->_numberOfFramesSinceLastFace > self->_sdofNumberOfFramesSinceLastFaceThreshold)
  {
    self->_closeDepthDistanceAverage = 1.0 / fmaxf(average, 0.0001);
  }

  else if ([averages count])
  {
    self->_closeDepthDistanceAverage = 1000.0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [averages countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(averages);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          [v26 floatValue];
          v27 = *&v28 <= 0.0001;
          LODWORD(v28) = 953267991;
          if (!v27)
          {
            [v26 floatValue];
          }

          closeDepthDistanceAverage = 1.0 / *&v28;
          if (closeDepthDistanceAverage >= self->_closeDepthDistanceAverage)
          {
            closeDepthDistanceAverage = self->_closeDepthDistanceAverage;
          }

          self->_closeDepthDistanceAverage = closeDepthDistanceAverage;
        }

        v23 = [averages countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v23);
    }
  }

  v16 = foregroundRatio / (fmaxf(a8, 0.0001) + self->_sdofDepthQualityKCount);
  v17 = v16 <= 0.0;
  v18 = 1.0;
  v19 = v16 < 1.0 || v16 <= 0.0;
  if (v16 >= 1.0)
  {
    v17 = 1;
  }

  if (v19)
  {
    v18 = 0.0;
  }

  if (v17)
  {
    v16 = v18;
  }

  self->_sdofDepthQuality = v16;
  self->_sdofDepthQualityFiltered = BWModifiedMovingAverage(v16, self->_sdofDepthQualityFiltered, self->_sdofDepthQualitySmoothingFactor);
  self->_depthSensorOccluded = occluded;
  v20 = [faces count];
  self->_stageMostRecentFacesCount = v20;
  self->_stageFaceHasBeenSeen |= v20 > 0;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v13)
  {
    return v13;
  }

  v14 = [type objectForKeyedSubscript:{objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B540)}];
  v15 = v14;
  if (!self->_aeStableAfterStartStreaming)
  {
    if ([v14 aeStable])
    {
      sdofNumFramesSinceAEBecameStable = self->_sdofNumFramesSinceAEBecameStable;
      if (sdofNumFramesSinceAEBecameStable >= self->_numberOfFramesToWaitForAEAndLTMToStabilize)
      {
        self->_aeStableAfterStartStreaming = 1;
        self->_sdofNumFramesSinceAEBecameStable = sdofNumFramesSinceAEBecameStable + 1;
      }

      else
      {
        frameCount = [type frameCount];
        ++self->_sdofNumFramesSinceAEBecameStable;
        self->_aeStableAfterStartStreaming = frameCount > 0x13;
        if (frameCount <= 0x13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      frameCount2 = [type frameCount];
      self->_aeStableAfterStartStreaming = frameCount2 > 0x13;
      self->_sdofNumFramesSinceAEBecameStable = 0;
      if (frameCount2 < 0x14)
      {
LABEL_8:
        LOBYTE(v13) = 0;
        return v13;
      }
    }
  }

  v19 = BWModifiedMovingAverage([v15 luxLevel], self->_luxLevelFiltered, self->_luxLevelSmoothingFactor);
  self->_luxLevelFiltered = v19;
  closeDepthDistanceAverage = self->_closeDepthDistanceAverage;
  if (self->_portraitSceneMonitoringRequiresStageThresholds)
  {
    if (closeDepthDistanceAverage >= self->_stageTooCloseDepthDistanceThreshold)
    {
      stageTooFarDepthDistanceThreshold = self->_stageTooFarDepthDistanceThreshold;
      goto LABEL_20;
    }

LABEL_14:
    v22 = 4;
    goto LABEL_23;
  }

  if (closeDepthDistanceAverage < self->_sdofTooCloseDepthDistanceThreshold)
  {
    goto LABEL_14;
  }

  sdofTooFarDepthDistanceThreshold = self->_sdofTooFarDepthDistanceThreshold;
  if (closeDepthDistanceAverage > sdofTooFarDepthDistanceThreshold)
  {
LABEL_21:
    v22 = 3;
    goto LABEL_23;
  }

  LOWORD(sdofTooFarDepthDistanceThreshold) = self->_sdofTooBrightLuxLevelThreshold;
  sdofDepthQualityFiltered = LODWORD(sdofTooFarDepthDistanceThreshold);
  if (v19 > sdofDepthQualityFiltered && (sdofDepthQualityFiltered = self->_sdofDepthQualityFiltered, sdofDepthQualityFiltered < self->_sdofTooBrightDepthQualityMinThreshold) || (LOWORD(sdofDepthQualityFiltered) = self->_sdofTooBrightMaxLuxLevelThreshold, v19 > LODWORD(sdofDepthQualityFiltered)))
  {
    stageTooFarDepthDistanceThreshold = self->_sdofTooBrightTooFarDepthDistanceThreshold;
LABEL_20:
    if (closeDepthDistanceAverage > stageTooFarDepthDistanceThreshold)
    {
      goto LABEL_21;
    }
  }

  v22 = 1;
LABEL_23:
  if (self->_depthSensorOccluded)
  {
    v22 = 4;
  }

  if (v22 == 1)
  {
    self->_numberOfDisabledFramesInARow = 0;
  }

  else
  {
    numberOfFramesToStayEnabledThreshold = self->_numberOfFramesToStayEnabledThreshold;
    v26 = self->_numberOfDisabledFramesInARow + 1;
    self->_numberOfDisabledFramesInARow = v26;
    if (v26 < numberOfFramesToStayEnabledThreshold)
    {
      v22 = 1;
    }
  }

  if (self->_stageMostRecentFacesCount < 1)
  {
    numberOfFramesSinceLastFace = self->_numberOfFramesSinceLastFace;
    self->_numberOfFramesSinceLastFace = numberOfFramesSinceLastFace + 1;
    if (!self->_stageFaceHasBeenSeen)
    {
      self->_stageFaceDetected = 0;
      goto LABEL_38;
    }

    v27 = numberOfFramesSinceLastFace < self->_stageFaceNumberOfFramesSinceLastFaceThreshold;
  }

  else
  {
    self->_numberOfFramesSinceLastFace = 0;
    v27 = 1;
  }

  self->_stageFaceDetected = v27;
  if (v22 == 1 && v27)
  {
    v29 = 2;
    if (!status)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_stageFaceHasBeenSeen = 0;
  v29 = 1;
  if (status)
  {
LABEL_39:
    *status = v22;
  }

LABEL_40:
  if (previewStatus)
  {
    *previewStatus = v29;
  }

  LOBYTE(v13) = 1;
  return v13;
}

@end