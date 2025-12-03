@interface BWPearlPortraitSceneMonitorV2
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWPearlPortraitSceneMonitorV2)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics portraitAutoSuggestEnabled:(BOOL)enabled shallowDepthOfFieldEnabled:(BOOL)fieldEnabled;
- (void)dealloc;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
@end

@implementation BWPearlPortraitSceneMonitorV2

- (void)dealloc
{
  [(BWPortraitAutoSuggest *)self->_autoSuggestMonitor dealloc];
  v3.receiver = self;
  v3.super_class = BWPearlPortraitSceneMonitorV2;
  [(BWPearlPortraitSceneMonitorV2 *)&v3 dealloc];
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

- (BWPearlPortraitSceneMonitorV2)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics portraitAutoSuggestEnabled:(BOOL)enabled shallowDepthOfFieldEnabled:(BOOL)fieldEnabled
{
  fieldEnabledCopy = fieldEnabled;
  enabledCopy = enabled;
  v22.receiver = self;
  v22.super_class = BWPearlPortraitSceneMonitorV2;
  v9 = [(BWPearlPortraitSceneMonitorV2 *)&v22 init:parameters];
  if (v9)
  {
    *(v9 + 6) = [objc_msgSend(parameters objectForKeyedSubscript:{@"NumberOfFramesToStayEnabledThreshold", "unsignedIntValue"}];
    *(v9 + 14) = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightLuxLevelThreshold", "unsignedIntValue"}];
    *(v9 + 15) = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightMaxLuxLevelThreshold", "unsignedIntValue"}];
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightDepthQualityThreshold", "floatValue"}];
    *(v9 + 8) = v10;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"DepthQualityKCount", "floatValue"}];
    *(v9 + 9) = v11;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooCloseDepthDistanceValue", "floatValue"}];
    *(v9 + 10) = v12;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarDepthDistanceValue", "floatValue"}];
    *(v9 + 11) = v13;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooBrightTooFarDepthDistanceValue", "floatValue"}];
    *(v9 + 12) = v14;
    *(v9 + 13) = 3;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooBrightDepthQualityThreshold", "floatValue"}];
    *(v9 + 14) = v15;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooCloseDistanceThreshold", "floatValue"}];
    *(v9 + 15) = v16;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageTooFarDistanceThreshold", "floatValue"}];
    *(v9 + 16) = v17;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageBackgroundTooFarDepthQualityThreshold", "floatValue"}];
    *(v9 + 17) = v18;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"StageBackgroundTooFarLuxLevelThreshold", "floatValue"}];
    *(v9 + 36) = v19;
    *(v9 + 19) = 6;
    *(v9 + 2) = [objc_msgSend(parameters objectForKeyedSubscript:{@"NumberOfFramesToWaitForAEAndLTMToStabilize", "unsignedIntValue"}];
    *(v9 + 12) = 0x3DCCCCCD3CCCCCCDLL;
    *(v9 + 140) = 0x200000002;
    v9[124] = enabledCopy;
    if (!enabledCopy)
    {
LABEL_5:
      [v9 setShallowDepthOfFieldRenderingEnabled:fieldEnabledCopy];
      *(v9 + 20) = 2143289344;
      return v9;
    }

    v20 = [[BWPortraitAutoSuggest alloc] initWithTuningParameters:parameters];
    *(v9 + 16) = v20;
    if (v20)
    {
      [(BWPortraitAutoSuggest *)v20 setPortTypeIsFFC:1];
      goto LABEL_5;
    }
  }

  return v9;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  v39 = 1;
  v15 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v15)
  {
    return v15;
  }

  v16 = [type objectForKeyedSubscript:{objc_msgSend(v15, "objectForKeyedSubscript:", *off_1E798B540)}];
  v17 = v16;
  if (!self->_aeStableAfterStartStreaming)
  {
    if ([v16 aeStable])
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
          goto LABEL_53;
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
        goto LABEL_53;
      }
    }
  }

  v21 = BWModifiedMovingAverage([v17 luxLevel], self->_luxLevelFiltered, self->_luxLevelSmoothingFactor);
  self->_luxLevelFiltered = v21;
  autoSuggestEnabled = self->_autoSuggestEnabled;
  if (autoSuggestEnabled)
  {
    goto LABEL_11;
  }

  closeDepthDistanceAverage = self->_closeDepthDistanceAverage;
  if (self->_portraitSceneMonitoringRequiresStageThresholds)
  {
    if (closeDepthDistanceAverage >= self->_stageTooCloseDepthDistanceThreshold)
    {
      stageTooFarDepthDistanceThreshold = self->_stageTooFarDepthDistanceThreshold;
      goto LABEL_22;
    }
  }

  else if (closeDepthDistanceAverage >= self->_sdofTooCloseDepthDistanceThreshold)
  {
    sdofTooFarDepthDistanceThreshold = self->_sdofTooFarDepthDistanceThreshold;
    if (closeDepthDistanceAverage > sdofTooFarDepthDistanceThreshold)
    {
LABEL_23:
      v23 = 0;
      v24 = 3;
      goto LABEL_24;
    }

    LOWORD(sdofTooFarDepthDistanceThreshold) = self->_sdofTooBrightLuxLevelThreshold;
    sdofDepthQualityFiltered = LODWORD(sdofTooFarDepthDistanceThreshold);
    if (v21 <= sdofDepthQualityFiltered || (sdofDepthQualityFiltered = self->_sdofDepthQualityFiltered, sdofDepthQualityFiltered >= self->_sdofTooBrightDepthQualityMinThreshold))
    {
      LOWORD(sdofDepthQualityFiltered) = self->_sdofTooBrightMaxLuxLevelThreshold;
      if (v21 <= LODWORD(sdofDepthQualityFiltered))
      {
LABEL_11:
        v23 = 1;
        v24 = 1;
        goto LABEL_25;
      }
    }

    stageTooFarDepthDistanceThreshold = self->_sdofTooBrightTooFarDepthDistanceThreshold;
LABEL_22:
    if (closeDepthDistanceAverage > stageTooFarDepthDistanceThreshold)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v23 = 0;
  v24 = 4;
LABEL_24:
  v39 = v24;
LABEL_25:
  if (self->_depthSensorOccluded)
  {
    v24 = 4;
    v39 = 4;
  }

  else if (v23)
  {
    self->_numberOfDisabledFramesInARow = 0;
    v24 = 1;
    goto LABEL_31;
  }

  numberOfFramesToStayEnabledThreshold = self->_numberOfFramesToStayEnabledThreshold;
  v30 = self->_numberOfDisabledFramesInARow + 1;
  self->_numberOfDisabledFramesInARow = v30;
  if (v30 < numberOfFramesToStayEnabledThreshold)
  {
    v24 = 1;
    v39 = 1;
  }

LABEL_31:
  if (self->_stageMostRecentFacesCount < 1)
  {
    numberOfFramesSinceLastFace = self->_numberOfFramesSinceLastFace;
    self->_numberOfFramesSinceLastFace = numberOfFramesSinceLastFace + 1;
    if (!self->_stageFaceHasBeenSeen)
    {
      self->_stageFaceDetected = 0;
      goto LABEL_40;
    }

    v31 = numberOfFramesSinceLastFace < self->_stageFaceNumberOfFramesSinceLastFaceThreshold;
  }

  else
  {
    self->_numberOfFramesSinceLastFace = 0;
    v31 = 1;
  }

  self->_stageFaceDetected = v31;
  if (v31 && v24 == 1)
  {
    v33 = 2;
    if (!autoSuggestEnabled)
    {
      goto LABEL_55;
    }

LABEL_41:
    LODWORD(v15) = [(BWPortraitAutoSuggest *)self->_autoSuggestMonitor runAutoSuggestionWithSampleBuffer:buffer portraitSceneMonitorStatus:&v39];
    autoSuggestMaxThermalPressureLevel = self->_autoSuggestMaxThermalPressureLevel;
    autoSuggestMaxPeakPowerPressureLevel = self->_autoSuggestMaxPeakPowerPressureLevel;
    v36 = autoSuggestMaxThermalPressureLevel < level || autoSuggestMaxPeakPowerPressureLevel < pressureLevel;
    if (v36 && v39 <= 0xE && ((1 << v39) & 0x7A02) != 0)
    {
      if (autoSuggestMaxThermalPressureLevel < level)
      {
        v37 = 6;
        goto LABEL_52;
      }

      if (autoSuggestMaxPeakPowerPressureLevel < pressureLevel)
      {
        v37 = 15;
LABEL_52:
        v39 = v37;
        if ((v15 & 1) == 0)
        {
LABEL_53:
          LOBYTE(v15) = 0;
          return v15;
        }

        goto LABEL_55;
      }
    }

    if (!v15)
    {
      return v15;
    }

    goto LABEL_55;
  }

LABEL_40:
  self->_stageFaceHasBeenSeen = 0;
  v33 = 1;
  if (autoSuggestEnabled)
  {
    goto LABEL_41;
  }

LABEL_55:
  if (status)
  {
    *status = v39;
  }

  if (previewStatus)
  {
    *previewStatus = v33;
  }

  LOBYTE(v15) = 1;
  return v15;
}

@end