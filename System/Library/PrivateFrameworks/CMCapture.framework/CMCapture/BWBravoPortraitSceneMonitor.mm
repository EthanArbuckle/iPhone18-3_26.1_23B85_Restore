@interface BWBravoPortraitSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11;
- (BWBravoPortraitSceneMonitor)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5;
- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11;
@end

@implementation BWBravoPortraitSceneMonitor

- (BWBravoPortraitSceneMonitor)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = BWBravoPortraitSceneMonitor;
  v5 = [(BWBravoPortraitSceneMonitor *)&v9 init:a3];
  v6 = v5;
  if (v5)
  {
    *&v5->_backgroundShiftSumFiltered = vneg_f32(0x3F0000003FLL);
    v5->_subjectTooCloseMonitoringEnabled = 1;
    v5->_subjectTooCloseWideFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "intValue"}];
    v6->_subjectTooCloseWideFocusDistanceHysteresisLag = 5.0;
    v6->_subjectTooFarMonitoringEnabled = 1;
    v6->_subjectTooFarFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "intValue"}];
    v6->_subjectTooFarFocusDistanceHysteresisLag = 20.0;
    v6->_subjectTooFarFocusDistanceInfinityThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"TooFarFocusDistanceInfinityThreshold", "intValue"}];
    v6->_subjectTooFarUseTeleForFocusDistance = 1;
    *&v6->_subjectTooFarBackgroundShiftSumTooLowThreshold = xmmword_1AD056DF0;
    v6->_sceneTooDarkMonitoringEnabled = 1;
    *&v6->_sceneTooDarkGainThreshold = xmmword_1AD056E00;
    v6->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v6->_stageFaceMonitoringEnabled = 1;
    v6->_stageTooFarFocusDistanceThreshold = [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarFocusDistanceThreshold", "intValue"}];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"StageTooFarBackgroundShiftSumNoFacesThreshold", "floatValue"}];
    v6->_stageTooFarBackgroundShiftSumNoFacesThreshold = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBravoPortraitSceneMonitor;
  [(BWBravoPortraitSceneMonitor *)&v3 dealloc];
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
  v14 = 1.0;
  v15 = 0.35;
  if (self->_aeStableAfterStartStreaming && self->_focusStableAfterStartStreaming && !self->_oneShotFocusScanInProgress && !self->_focusLocked)
  {
    lastFocusingMethod = self->_lastFocusingMethod;
    if (self->_focusAdjusting)
    {
      if (lastFocusingMethod != 1)
      {
        if (lastFocusingMethod == 2)
        {
          v14 = 0.2;
          v15 = 0.06;
        }

        else
        {
          v14 = 0.15;
          v15 = 0.025;
        }

        goto LABEL_13;
      }

LABEL_11:
      v15 = 0.25;
      v14 = 1.0;
      goto LABEL_13;
    }

    v14 = 0.15;
    v15 = 0.025;
    if (lastFocusingMethod == 1 && self->_numFramesSinceFocusBecameStable <= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  self->_backgroundShiftSumFiltered = BWModifiedMovingAverage(a3, self->_backgroundShiftSumFiltered, v15);
  self->_invalidShiftRatioFiltered = BWModifiedMovingAverage(a4, self->_invalidShiftRatioFiltered, v14);

  v17 = [a10 copy];
  self->_stageMostRecentFaces = v17;
  self->_stageFaceHasBeenSeen |= [(NSArray *)v17 count]!= 0;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11
{
  v11 = a6;
  v15 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v15)
  {
    return v15;
  }

  v16 = v15;
  v17 = *off_1E798A0C0;
  v87 = [a4 objectForKeyedSubscript:*off_1E798A0C0];
  v18 = [a4 objectForKeyedSubscript:*off_1E798A0D8];
  invalidShiftRatioFiltered = self->_invalidShiftRatioFiltered;
  backgroundShiftSumFiltered = self->_backgroundShiftSumFiltered;
  if (self->_focusLocked)
  {
    numFramesSinceFocusLocked = self->_numFramesSinceFocusLocked;
    self->_numFramesSinceFocusLocked = numFramesSinceFocusLocked + 1;
    v22 = numFramesSinceFocusLocked > 9;
  }

  else
  {
    v22 = 0;
  }

  portraitSceneMonitoringRequiresStageThresholds = self->_portraitSceneMonitoringRequiresStageThresholds;
  CMSetAttachment(a3, @"SDOFFocusLocked", [MEMORY[0x1E696AD98] numberWithBool:v22], 1u);
  subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart = self->_subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart;
  subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd = self->_subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd;
  v25 = 1.0;
  if (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart < 1.0 && subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd > subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart)
  {
    v27 = (invalidShiftRatioFiltered / (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart - subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd)) + (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd / (subjectTooFarBackgroundShiftRollOffInvalidShiftRatioEnd - subjectTooFarBackgroundShiftRollOffInvalidShiftRatioStart));
    if (v27 <= 1.0)
    {
      v25 = v27;
    }

    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    backgroundShiftSumFiltered = backgroundShiftSumFiltered * v25;
  }

  v28 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B730), "objectForKeyedSubscript:", v17}];
  v29 = v28;
  v30 = *off_1E798B0A8;
  v85 = v11;
  if (v28)
  {
    v31 = [objc_msgSend(v28 objectForKeyedSubscript:{v30), "intValue"}] != 4;
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_msgSend(v16 objectForKeyedSubscript:{v30), "intValue"}];
  v33 = *off_1E798B320;
  v34 = [objc_msgSend(v29 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
  v35 = [objc_msgSend(v16 objectForKeyedSubscript:{v33), "intValue"}];
  v36 = v32 != 4 || v31;
  if (v36)
  {
    v37 = 0;
    v38 = v34 == 1 || v35 == 1;
    v39 = v38;
    if (v38)
    {
      lastFocusingMethod = 1;
    }

    else
    {
      lastFocusingMethod = 2;
    }
  }

  else
  {
    lastFocusingMethod = self->_lastFocusingMethod;
    if (self->_focusAdjusting)
    {
      v37 = 0;
      v39 = 0;
    }

    else
    {
      v39 = 0;
      v37 = self->_numFramesSinceFocusBecameStable + 1;
    }
  }

  if (self->_aeStableAfterStartStreaming)
  {
    if (self->_focusStableAfterStartStreaming)
    {
      self->_focusAdjusting = v36;
      self->_lastFocusingMethod = lastFocusingMethod;
      self->_numFramesSinceFocusBecameStable = v37;
      if (v39)
      {
        goto LABEL_156;
      }

      goto LABEL_57;
    }

    v43 = 1;
    if (!v36)
    {
      goto LABEL_44;
    }

LABEL_51:
    v47 = [a4 frameCount] > 0x1F;
    goto LABEL_56;
  }

  v41 = [objc_msgSend(v29 objectForKeyedSubscript:{*off_1E798B078), "BOOLValue"}];
  if ([v87 aeStable] && v41)
  {
    numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
    if (numFramesSinceAEBecameStable <= 4)
    {
      v43 = [a4 frameCount] > 0x13;
      numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
    }

    else
    {
      v43 = 1;
    }

    v45 = numFramesSinceAEBecameStable + 1;
  }

  else
  {
    v44 = [a4 frameCount];
    v45 = 0;
    v43 = v44 > 0x13;
  }

  self->_numFramesSinceAEBecameStable = v45;
  if (v36)
  {
    goto LABEL_51;
  }

LABEL_44:
  if (lastFocusingMethod == 2)
  {
    v46 = v37 <= 3;
  }

  else if (lastFocusingMethod)
  {
    v46 = v37 <= 1;
  }

  else
  {
    v46 = v37 <= 43;
  }

  v47 = !v46;
LABEL_56:
  self->_focusAdjusting = v36;
  self->_lastFocusingMethod = lastFocusingMethod;
  self->_numFramesSinceFocusBecameStable = v37;
  self->_aeStableAfterStartStreaming = v43;
  self->_focusStableAfterStartStreaming = v47;
  if (v39 & 1 | (!v43 || !v47))
  {
LABEL_156:
    LOBYTE(v15) = 0;
    return v15;
  }

LABEL_57:
  if (lastFocusingMethod == 1 && v37 < 3)
  {
    goto LABEL_156;
  }

  if (self->_oneShotFocusScanInProgress)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_156;
  }

  if (!v22)
  {
    if (self->_subjectTooCloseMonitoringEnabled)
    {
      v49 = [v87 focusPosition];
      subjectTooCloseLastWideFocusPosition = self->_subjectTooCloseLastWideFocusPosition;
      self->_subjectTooCloseLastWideFocusPosition = [v87 focusPosition];
      if (v49 != subjectTooCloseLastWideFocusPosition)
      {
        subjectIsTooClose = self->_subjectIsTooClose;
        [v87 focusDistance];
        subjectTooCloseWideFocusDistanceThreshold = self->_subjectTooCloseWideFocusDistanceThreshold;
        if (subjectIsTooClose)
        {
          if (v61 >= (subjectTooCloseWideFocusDistanceThreshold + self->_subjectTooCloseWideFocusDistanceHysteresisLag))
          {
            self->_subjectIsTooClose = 0;
            if (self->_lastSDOFEffectStatus == 4 && self->_sceneIsTooDark)
            {
              self->_sceneIsTooDark = 0;
            }
          }
        }

        else if (v61 <= subjectTooCloseWideFocusDistanceThreshold)
        {
          self->_subjectIsTooClose = 1;
        }
      }
    }

    if (self->_subjectTooFarMonitoringEnabled)
    {
      v51 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B208), "intValue"}];
      subjectTooFarLastTeleFocusPosition = self->_subjectTooFarLastTeleFocusPosition;
      self->_subjectTooFarLastTeleFocusPosition = v51;
      if (v51 != subjectTooFarLastTeleFocusPosition)
      {
        if (self->_subjectTooFarUseTeleForFocusDistance)
        {
          v53 = v18;
        }

        else
        {
          v53 = v87;
        }

        [v53 focusDistance];
        subjectTooFarFocusDistanceThreshold = self->_subjectTooFarFocusDistanceThreshold;
        if (self->_subjectTooFarDistanceThresholdReached)
        {
          subjectTooFarFocusDistanceHysteresisLag = self->_subjectTooFarFocusDistanceHysteresisLag;
          v57 = subjectTooFarFocusDistanceThreshold - subjectTooFarFocusDistanceHysteresisLag;
          v58 = self->_stageTooFarFocusDistanceThreshold - subjectTooFarFocusDistanceHysteresisLag;
          if (v54 <= v57)
          {
            self->_subjectTooFarDistanceThresholdReached = 0;
          }

          if (v54 > v58)
          {
            goto LABEL_88;
          }

          p_stageSubjectTooFarDistanceThresholdReached = &self->_stageSubjectTooFarDistanceThresholdReached;
        }

        else
        {
          stageTooFarFocusDistanceThreshold = self->_stageTooFarFocusDistanceThreshold;
          if (v54 >= subjectTooFarFocusDistanceThreshold)
          {
            self->_subjectTooFarDistanceThresholdReached = 1;
            if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
            {
              self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
            }
          }

          if (v54 < stageTooFarFocusDistanceThreshold)
          {
            goto LABEL_88;
          }

          self->_stageSubjectTooFarDistanceThresholdReached = 1;
          if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
          {
            self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
          }

          p_stageSubjectTooFarDistanceThresholdReached = &self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow;
          if (!self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
          {
            goto LABEL_88;
          }
        }

        *p_stageSubjectTooFarDistanceThresholdReached = 0;
      }

LABEL_88:
      subjectTooFarBackgroundShiftSumTooLowThreshold = self->_subjectTooFarBackgroundShiftSumTooLowThreshold;
      if (self->_subjectTooFarBackgroundShiftSumIsTooLow)
      {
        if (backgroundShiftSumFiltered > (subjectTooFarBackgroundShiftSumTooLowThreshold + self->_subjectTooFarBackgroundShiftSumTooLowHysteresisLag))
        {
          [v18 focusDistance];
          if (v65 < self->_subjectTooFarFocusDistanceInfinityThreshold || (subjectTooFarBackgroundShiftTooLowNumFrames = self->_subjectTooFarBackgroundShiftTooLowNumFrames, subjectTooFarBackgroundShiftTooLowNumFrames > 5))
          {
            self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
            self->_subjectTooFarBackgroundShiftTooLowNumFrames = 0;
          }

          else
          {
            self->_subjectTooFarBackgroundShiftTooLowNumFrames = subjectTooFarBackgroundShiftTooLowNumFrames + 1;
          }
        }
      }

      else if (backgroundShiftSumFiltered < subjectTooFarBackgroundShiftSumTooLowThreshold)
      {
        self->_subjectTooFarBackgroundShiftSumIsTooLow = 1;
      }
    }
  }

  if (portraitSceneMonitoringRequiresStageThresholds)
  {
    stageTooFarBackgroundShiftSumNoFacesThreshold = self->_stageTooFarBackgroundShiftSumNoFacesThreshold;
    if (self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
    {
      if (backgroundShiftSumFiltered > (stageTooFarBackgroundShiftSumNoFacesThreshold + self->_subjectTooFarBackgroundShiftSumTooLowHysteresisLag))
      {
        [v18 focusDistance];
        if (v68 < self->_subjectTooFarFocusDistanceInfinityThreshold || (stageTooFarBackgroundShiftTooLowNumFrames = self->_stageTooFarBackgroundShiftTooLowNumFrames, stageTooFarBackgroundShiftTooLowNumFrames > 5))
        {
          self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 0;
          self->_stageTooFarBackgroundShiftTooLowNumFrames = 0;
        }

        else
        {
          self->_stageTooFarBackgroundShiftTooLowNumFrames = stageTooFarBackgroundShiftTooLowNumFrames + 1;
        }
      }
    }

    else if (backgroundShiftSumFiltered < stageTooFarBackgroundShiftSumNoFacesThreshold)
    {
      self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow = 1;
    }
  }

  if (!self->_sceneTooDarkMonitoringEnabled)
  {
    goto LABEL_127;
  }

  [v18 integrationTime];
  v71 = v70;
  v72 = v71 <= 0.0 || llroundf(1.0 / v71) < 61;
  [v18 gain];
  sceneTooDarkGainThreshold = self->_sceneTooDarkGainThreshold;
  if (self->_sceneTooDarkExposureThresholdReached)
  {
    sceneTooDarkGainThreshold = sceneTooDarkGainThreshold / self->_sceneTooDarkGainHysteresisLag;
  }

  v75 = v73 >= sceneTooDarkGainThreshold && v72;
  self->_sceneTooDarkExposureThresholdReached = v75;
  p_sceneIsTooDark = &self->_sceneIsTooDark;
  if (!v75)
  {
    goto LABEL_126;
  }

  sceneTooDarkInvalidShiftRatioThreshold = self->_sceneTooDarkInvalidShiftRatioThreshold;
  if (self->_sceneIsTooDark)
  {
    if (invalidShiftRatioFiltered < (sceneTooDarkInvalidShiftRatioThreshold - self->_sceneTooDarkInvalidShiftRatioHysteresisLag))
    {
      goto LABEL_126;
    }

    v78 = 1;
  }

  else if (invalidShiftRatioFiltered <= sceneTooDarkInvalidShiftRatioThreshold)
  {
    v78 = 0;
  }

  else
  {
    v78 = 1;
    *p_sceneIsTooDark = 1;
  }

  if (!v78 || !v85)
  {
    goto LABEL_127;
  }

  self->_sceneIsTooDark = 0;
  self->_subjectIsTooClose = 0;
  self->_subjectTooFarDistanceThresholdReached = 0;
  p_sceneIsTooDark = &self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow;
  self->_subjectTooFarBackgroundShiftSumIsTooLow = 0;
LABEL_126:
  *p_sceneIsTooDark = 0;
LABEL_127:
  if (self->_stageFaceMonitoringEnabled)
  {
    if ([(NSArray *)self->_stageMostRecentFaces count])
    {
      self->_stageFaceNumberOfFramesSinceLastFace = 0;
      v79 = 1;
    }

    else
    {
      stageFaceNumberOfFramesSinceLastFace = self->_stageFaceNumberOfFramesSinceLastFace;
      self->_stageFaceNumberOfFramesSinceLastFace = stageFaceNumberOfFramesSinceLastFace + 1;
      v79 = self->_stageFaceHasBeenSeen && stageFaceNumberOfFramesSinceLastFace < self->_stageFaceNumberOfFramesSinceLastFaceThreshold;
    }

    self->_stageFaceDetected = v79;
  }

  if (self->_subjectIsTooClose)
  {
    v81 = 0;
    v82 = 4;
  }

  else if (self->_sceneIsTooDark)
  {
    v81 = 0;
    v82 = 5;
  }

  else if (self->_subjectTooFarDistanceThresholdReached && self->_subjectTooFarBackgroundShiftSumIsTooLow || portraitSceneMonitoringRequiresStageThresholds && !self->_stageFaceDetected && self->_stageTooFarBackgroundShiftSumNoFacesIsTooLow)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v81 = 1;
    v82 = 1;
  }

  if (self->_stageFaceMonitoringEnabled)
  {
    if (v81 & self->_stageFaceDetected)
    {
      v83 = 2;
    }

    else
    {
      self->_stageFaceHasBeenSeen = 0;
      v83 = 1;
    }
  }

  else
  {
    v83 = 0;
  }

  self->_lastSDOFEffectStatus = v82;
  if (a10)
  {
    *a10 = v82;
  }

  if (a11)
  {
    *a11 = v83;
  }

  LOBYTE(v15) = 1;
  return v15;
}

@end