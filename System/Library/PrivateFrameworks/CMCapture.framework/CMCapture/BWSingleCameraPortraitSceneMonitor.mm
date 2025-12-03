@interface BWSingleCameraPortraitSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWSingleCameraPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics;
- (double)_focusDistanceFromAPSMetadata:(uint64_t)metadata;
- (double)_focusDistanceFromFacesAttachedToSampleBuffer:(uint64_t)buffer;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
@end

@implementation BWSingleCameraPortraitSceneMonitor

- (BWSingleCameraPortraitSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics
{
  v12.receiver = self;
  v12.super_class = BWSingleCameraPortraitSceneMonitor;
  v5 = [(BWSingleCameraPortraitSceneMonitor *)&v12 init:parameters];
  v6 = v5;
  if (v5)
  {
    v5->_useAPSFocusDistance = 0;
    v5->_subjectTooCloseMonitoringEnabled = 1;
    v7 = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooCloseFocusDistanceThreshold", "intValue"}];
    if (v6->_useAPSFocusDistance)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 5.0;
    }

    v6->_subjectTooCloseFocusDistanceThreshold = v7;
    v6->_subjectTooCloseFocusDistanceHysteresisLag = v8;
    v6->_subjectTooFarMonitoringEnabled = 1;
    v9 = [objc_msgSend(parameters objectForKeyedSubscript:{@"TooFarFocusDistanceThreshold", "intValue"}];
    if (v6->_useAPSFocusDistance)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 5.0;
    }

    v6->_subjectTooFarFocusDistanceThreshold = v9;
    v6->_subjectTooFarFocusDistanceHysteresisLag = v10;
    v6->_sceneTooDarkMonitoringEnabled = [objc_msgSend(parameters objectForKeyedSubscript:{@"EnableLowLightGating", "BOOLValue"}];
    v6->_stageFaceNumberOfFramesSinceLastFaceThreshold = 6;
    v6->_enabled = 1;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSingleCameraPortraitSceneMonitor;
  [(BWSingleCameraPortraitSceneMonitor *)&v3 dealloc];
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
          v15 = 0.06;
          v14 = 0.2;
        }

        else
        {
          v15 = 0.025;
          v14 = 0.15;
        }

        goto LABEL_13;
      }

LABEL_11:
      v15 = 0.25;
      v14 = 1.0;
      goto LABEL_13;
    }

    v15 = 0.025;
    v14 = 0.15;
    if (lastFocusingMethod == 1 && self->_numFramesSinceFocusBecameStable <= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  self->_backgroundShiftSumFiltered = BWModifiedMovingAverage(sum, self->_backgroundShiftSumFiltered, v15);
  self->_invalidShiftRatioFiltered = BWModifiedMovingAverage(ratio, self->_invalidShiftRatioFiltered, v14);
  self->_numFacesDetectedFiltered = BWModifiedMovingAverage([faces count], self->_numFacesDetectedFiltered, 0.33);
  v17 = [faces count];
  self->_stageMostRecentFacesCount = v17;
  self->_stageFaceHasBeenSeen |= v17 > 0;
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  if (self->_enabled)
  {
    v15 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (!v15)
    {
      return v15;
    }

    v16 = v15;
    v17 = [type objectForKeyedSubscript:{objc_msgSend(v15, "objectForKeyedSubscript:", *off_1E798B540)}];
    if (self->_focusLocked)
    {
      numFramesSinceFocusLocked = self->_numFramesSinceFocusLocked;
      self->_numFramesSinceFocusLocked = numFramesSinceFocusLocked + 1;
      v19 = numFramesSinceFocusLocked > 9;
    }

    else
    {
      v19 = 0;
    }

    CMSetAttachment(buffer, @"SDOFFocusLocked", [MEMORY[0x1E696AD98] numberWithBool:{v19, flags}], 1u);
    v49 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B4A8), "intValue"}];
    if (self->_useAPSFocusDistance)
    {
      v22 = [(BWSingleCameraPortraitSceneMonitor *)self _focusDistanceFromAPSMetadata:v16];
    }

    else
    {
      v22 = [(BWSingleCameraPortraitSceneMonitor *)self _focusDistanceFromFacesAttachedToSampleBuffer:buffer];
    }

    v23 = *&v22;
    self->_lastFocusDistance = *&v22;
    v24 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
    v25 = [objc_msgSend(v16 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
    v26 = v24 != 4;
    if (v24 == 4)
    {
      lastFocusingMethod = self->_lastFocusingMethod;
      v28 = 0;
      if (self->_focusAdjusting)
      {
        v27 = 0;
      }

      else
      {
        v27 = self->_numFramesSinceFocusBecameStable + 1;
      }
    }

    else
    {
      v27 = 0;
      v28 = v25 == 1;
      if (v25 == 1)
      {
        lastFocusingMethod = 1;
      }

      else
      {
        lastFocusingMethod = 2;
      }
    }

    if (self->_aeStableAfterStartStreaming)
    {
      if (self->_focusStableAfterStartStreaming)
      {
        self->_focusAdjusting = v26;
        self->_lastFocusingMethod = lastFocusingMethod;
        self->_numFramesSinceFocusBecameStable = v27;
        if (v28)
        {
LABEL_60:
          LOBYTE(v15) = 0;
          return v15;
        }

LABEL_45:
        v36 = lastFocusingMethod == 1 && v27 < 3;
        if (v36 || self->_oneShotFocusScanInProgress)
        {
          goto LABEL_60;
        }

        useAPSFocusDistance = self->_useAPSFocusDistance;
        if (!v19 || !useAPSFocusDistance)
        {
          if (self->_subjectTooCloseMonitoringEnabled)
          {
            subjectTooCloseLastFocusPosition = self->_subjectTooCloseLastFocusPosition;
            self->_subjectTooCloseLastFocusPosition = v49;
            if (!useAPSFocusDistance || v49 != subjectTooCloseLastFocusPosition)
            {
              subjectTooCloseFocusDistanceThreshold = self->_subjectTooCloseFocusDistanceThreshold;
              if (self->_subjectIsTooClose)
              {
                if (v23 >= (subjectTooCloseFocusDistanceThreshold + self->_subjectTooCloseFocusDistanceHysteresisLag))
                {
                  self->_subjectIsTooClose = 0;
                  if (self->_lastSDOFEffectStatus == 4 && self->_sceneIsTooDark)
                  {
                    self->_sceneIsTooDark = 0;
                  }
                }
              }

              else if (v23 <= subjectTooCloseFocusDistanceThreshold)
              {
                self->_subjectIsTooClose = 1;
              }
            }
          }

          if (self->_subjectTooFarMonitoringEnabled)
          {
            subjectTooFarLastFocusPosition = self->_subjectTooFarLastFocusPosition;
            self->_subjectTooFarLastFocusPosition = v49;
            if (!useAPSFocusDistance || v49 != subjectTooFarLastFocusPosition)
            {
              subjectTooFarFocusDistanceThreshold = self->_subjectTooFarFocusDistanceThreshold;
              if (self->_subjectTooFarDistanceThresholdReached)
              {
                if (v23 > (subjectTooFarFocusDistanceThreshold - self->_subjectTooFarFocusDistanceHysteresisLag))
                {
                  goto LABEL_70;
                }

                v41 = 0;
              }

              else
              {
                if (v23 < subjectTooFarFocusDistanceThreshold)
                {
                  goto LABEL_70;
                }

                v41 = 1;
              }

              self->_subjectTooFarDistanceThresholdReached = v41;
            }
          }
        }

LABEL_70:
        if (self->_sceneTooDarkMonitoringEnabled)
        {
          self->_sceneIsTooDark = !active & (v48 >> 5);
        }

        if (self->_numFacesDetectedFiltered < 0.5)
        {
          goto LABEL_73;
        }

        if (self->_subjectIsTooClose)
        {
          v43 = 0;
          v21 = 4;
        }

        else
        {
          if (self->_subjectTooFarDistanceThresholdReached)
          {
LABEL_73:
            v43 = 0;
            v21 = 3;
            goto LABEL_80;
          }

          v43 = !self->_sceneIsTooDark;
          if (self->_sceneIsTooDark)
          {
            v21 = 5;
          }

          else
          {
            v21 = 1;
          }
        }

LABEL_80:
        self->_lastSDOFEffectStatus = v21;
        if (self->_stageMostRecentFacesCount < 1)
        {
          numberOfFramesSinceLastFace = self->_numberOfFramesSinceLastFace;
          self->_numberOfFramesSinceLastFace = numberOfFramesSinceLastFace + 1;
          if (!self->_stageFaceHasBeenSeen)
          {
            self->_stageFaceDetected = 0;
            goto LABEL_87;
          }

          v44 = numberOfFramesSinceLastFace < self->_stageFaceNumberOfFramesSinceLastFaceThreshold;
        }

        else
        {
          self->_numberOfFramesSinceLastFace = 0;
          v44 = 1;
        }

        self->_stageFaceDetected = v44;
        if (v43 && v44)
        {
          v21 = 1;
          v20 = 2;
          goto LABEL_6;
        }

LABEL_87:
        self->_stageFaceHasBeenSeen = 0;
        v20 = 1;
        goto LABEL_6;
      }

      v31 = 1;
    }

    else
    {
      if ([v17 aeStable])
      {
        numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
        if (numFramesSinceAEBecameStable <= 4)
        {
          v31 = [type frameCount] > 0x13;
          numFramesSinceAEBecameStable = self->_numFramesSinceAEBecameStable;
        }

        else
        {
          v31 = 1;
        }

        v33 = numFramesSinceAEBecameStable + 1;
      }

      else
      {
        frameCount = [type frameCount];
        v33 = 0;
        v31 = frameCount > 0x13;
      }

      self->_numFramesSinceAEBecameStable = v33;
    }

    if (v24 == 4)
    {
      if (lastFocusingMethod == 2)
      {
        v35 = v27 <= 3;
      }

      else if (lastFocusingMethod)
      {
        v35 = v27 <= 1;
      }

      else
      {
        v35 = v27 <= 43;
      }

      v34 = !v35;
    }

    else
    {
      v34 = [type frameCount] > 0x1F;
    }

    self->_focusAdjusting = v26;
    self->_lastFocusingMethod = lastFocusingMethod;
    self->_numFramesSinceFocusBecameStable = v27;
    self->_aeStableAfterStartStreaming = v31;
    self->_focusStableAfterStartStreaming = v34;
    if (v28 || !v31 || !v34)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  v20 = 0;
  v21 = 1;
LABEL_6:
  if (status)
  {
    *status = v21;
  }

  if (previewStatus)
  {
    *previewStatus = v20;
  }

  LOBYTE(v15) = 1;
  return v15;
}

- (double)_focusDistanceFromAPSMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return 0.0;
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
  if (*&result == 0.0)
  {
    v4 = *(metadata + 88);
    v5 = v4;
  }

  else
  {
    v5 = 150.0;
    if (*&result <= 150.0 && *&result >= 0.0)
    {
      v5 = *&result;
    }

    v4 = *(metadata + 88);
  }

  if (v4 == 0.0)
  {
    *&result = v5;
  }

  else
  {
    *&result = (v5 + v4) * 0.5;
  }

  return result;
}

- (double)_focusDistanceFromFacesAttachedToSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0.0;
  }

  targeta = target;
  v2 = [CMGetAttachment(target *off_1E798A3C8];
  v3 = MEMORY[0x1E695F058];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = [v2 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v50;
    v12 = *off_1E798B2B8;
    v13 = *off_1E798B5C0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v2);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:{v12, targeta}];
        if (v17)
        {
          v18 = v17;
          memset(&rect, 0, sizeof(rect));
          CGRectMakeWithDictionaryRepresentation([v16 objectForKeyedSubscript:v13], &rect);
          v19 = rect.size.width <= rect.size.height ? rect.size.height : rect.size.width;
          v20 = v19;
          if (v14 < v20)
          {
            x = rect.origin.x;
            y = rect.origin.y;
            height = rect.size.height;
            width = rect.size.width;
            v14 = v20;
            v10 = v18;
          }
        }
      }

      v9 = [v2 countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  CMGetAttachment(targeta, *off_1E798A510, 0);
  getkCVAFaceTracking_TrackedFacesArray();
  v21 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  v22 = *(v3 + 16);
  rect.origin = *v3;
  rect.size = v22;
  firstObject = [v21 firstObject];
  [firstObject objectForKeyedSubscript:getkCVAFaceTracking_SmoothData()];
  getkCVAFaceTracking_Pose();
  [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  getkCVAFaceTracking_Translation();
  v24 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  v25 = v24;
  if (v24)
  {
    [objc_msgSend(v24 objectAtIndexedSubscript:{0), "floatValue"}];
    v27 = v26;
    [objc_msgSend(v25 objectAtIndexedSubscript:{1), "floatValue"}];
    v29 = v28;
    [objc_msgSend(v25 objectAtIndexedSubscript:{2), "floatValue"}];
    v31 = sqrtf(((v29 * v29) + (v27 * v27)) + (v30 * v30)) / 10.0;
    v25 = [firstObject objectForKeyedSubscript:getkCVAFaceTracking_FaceID()];
    v32 = [firstObject objectForKeyedSubscript:getkCVAFaceTracking_DetectedFaceRect()];
    CGRectMakeWithDictionaryRepresentation(v32, &rect);
  }

  else
  {
    v31 = 0.0;
  }

  if (v10)
  {
    v33 = *(buffer + 96);
    if (v33)
    {
      v34 = [objc_msgSend(v33 "detectionID")];
      v35 = *(buffer + 96);
      if (v34)
      {
        if (v35)
        {
LABEL_24:
          [v35 setDetectionRect:{x, y, width, height, targeta}];
          goto LABEL_25;
        }
      }

      else
      {

        *(buffer + 96) = 0;
      }
    }

    v35 = [[BWTrackedFace alloc] initWithDetectionID:v10];
    *(buffer + 96) = v35;
    goto LABEL_24;
  }

LABEL_25:
  if (v25)
  {
    v36 = *(buffer + 96);
    if (v36)
    {
      v37 = [objc_msgSend(v36 "trackingID")];
      v36 = *(buffer + 96);
      if ((v37 & 1) == 0)
      {
        [v36 detectionRect];
        v53.origin.x = v38;
        v53.origin.y = v39;
        v53.size.width = v40;
        v53.size.height = v41;
        v42 = CGRectContainsRect(rect, v53);
        v36 = *(buffer + 96);
        if (v42)
        {
          [v36 setTrackingID:v25];
          v36 = *(buffer + 96);
        }
      }
    }

    [v36 trackingID];
    if ([OUTLINED_FUNCTION_8() isEqual:?])
    {
      *&v43 = v31;
      [*(buffer + 96) setTrackingDistance:v43];
      [*(buffer + 96) setTrackingRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    }
  }

  [*(buffer + 96) distance];
  return result;
}

@end