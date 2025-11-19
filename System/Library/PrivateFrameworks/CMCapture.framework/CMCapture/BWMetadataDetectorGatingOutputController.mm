@interface BWMetadataDetectorGatingOutputController
- (BOOL)forceSynchronizedControllersToRunDetectionImmediately;
- (BOOL)isSmartCameraSceneConfident;
- (BOOL)shouldEmitBuffer;
- (BWMetadataDetectorGatingOutputController)initWithOutput:(id)a3 name:(id)a4 sceneStabilityMonitor:(id)a5 detectorAvailableGroup:(id)a6;
- (int64_t)lastDetectedCodesCount;
- (unsigned)_newOutputSampleBufferWithPixelBuffer:(opaqueCMSampleBuffer *)a3 inputSampleBuffer:(int)a4 appliedPrimaryCaptureRect:;
- (void)_updateSceneLikelyToHaveCodes;
- (void)dealloc;
- (void)emitPixelBuffer:(__CVBuffer *)a3 inputSampleBuffer:(opaqueCMSampleBuffer *)a4 appliedPrimaryCaptureRect:(BOOL)a5;
- (void)enableDetectionFrameRateControllingWithRamp:(id)a3 startIndex:(char)a4;
- (void)node:(id)a3 didEmitCodesCount:(int64_t)a4 emittedIdentifiers:(id)a5 originalPTS:(id *)a6;
- (void)prepareToEmitBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setForceSynchronizedControllersToRunDetectionImmediately:(BOOL)a3;
- (void)setLastDetectedCodesCount:(int64_t)a3 originalPTS:(id *)a4;
- (void)setLastDetectionPTS:(id *)a3;
- (void)setSmartCameraSceneConfident:(BOOL)a3;
@end

@implementation BWMetadataDetectorGatingOutputController

- (BWMetadataDetectorGatingOutputController)initWithOutput:(id)a3 name:(id)a4 sceneStabilityMonitor:(id)a5 detectorAvailableGroup:(id)a6
{
  v16.receiver = self;
  v16.super_class = BWMetadataDetectorGatingOutputController;
  v10 = [(BWMetadataDetectorGatingOutputController *)&v16 init];
  if (v10)
  {
    *(v10 + 2) = a3;
    *(v10 + 1) = [a4 copy];
    *(v10 + 12) = a5;
    *(v10 + 43) = 0;
    v11 = MEMORY[0x1E6960C70];
    v12 = *MEMORY[0x1E6960C70];
    *(v10 + 2) = *MEMORY[0x1E6960C70];
    v13 = *(v11 + 16);
    *(v10 + 6) = v13;
    *(v10 + 56) = v12;
    *(v10 + 9) = v13;
    v14 = MEMORY[0x1E6960CC0];
    *(v10 + 9) = *MEMORY[0x1E6960CC0];
    *(v10 + 20) = *(v14 + 16);
    v10[129] = 1;
    *(v10 + 15) = a6;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetadataDetectorGatingOutputController;
  [(BWMetadataDetectorGatingOutputController *)&v3 dealloc];
}

- (void)enableDetectionFrameRateControllingWithRamp:(id)a3 startIndex:(char)a4
{
  self->_detectionFrameRateRamp = a3;
  self->_detectionFrameRateRampStartIndex = a4;
  self->_detectionFrameRateRampIndex = a4;
}

- (BOOL)shouldEmitBuffer
{
  v3 = self->_sceneMotionEstimatesSupported && [(BWSceneStabilityMonitor *)self->_sceneStabilityMonitor processedSceneMotion];
  if ([(BWMetadataDetectorGatingOutputController *)self shouldRunDetection]|| [(BWMetadataDetectorGatingOutputController *)self shouldEmitFirstBufferAfterSceneChange]&& [(BWMetadataDetectorGatingOutputController *)self isHandlingFirstBufferAfterSceneChange])
  {
    return 1;
  }

  return v3;
}

- (void)setSmartCameraSceneConfident:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_isSmartCameraSceneConfident != v3)
  {
    self->_isSmartCameraSceneConfident = v3;
    [(BWMetadataDetectorGatingOutputController *)self _updateSceneLikelyToHaveCodes];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSmartCameraSceneConfident
{
  os_unfair_lock_lock(&self->_lock);
  isSmartCameraSceneConfident = self->_isSmartCameraSceneConfident;
  os_unfair_lock_unlock(&self->_lock);
  return isSmartCameraSceneConfident;
}

- (void)setLastDetectedCodesCount:(int64_t)a3 originalPTS:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  lastDetectedCodesCount = self->_lastDetectedCodesCount;
  if (lastDetectedCodesCount != a3)
  {
    if (lastDetectedCodesCount < a3 && self->_synchronizeWithOtherControllers)
    {
      self->_forceSynchronizedControllersToRunDetectionImmediately = 1;
    }

    self->_lastDetectedCodesCount = a3;
    [(BWMetadataDetectorGatingOutputController *)self _updateSceneLikelyToHaveCodes];
    a3 = self->_lastDetectedCodesCount;
  }

  if (a3 >= 1)
  {
    self->_detectionFrameRateRampIndex = 0;
    v8 = *&a4->var0;
    self->_detectedCodesLastSeenPTS.epoch = a4->var3;
    *&self->_detectedCodesLastSeenPTS.value = v8;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)lastDetectedCodesCount
{
  os_unfair_lock_lock(&self->_lock);
  lastDetectedCodesCount = self->_lastDetectedCodesCount;
  os_unfair_lock_unlock(&self->_lock);
  return lastDetectedCodesCount;
}

- (void)setForceSynchronizedControllersToRunDetectionImmediately:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_forceSynchronizedControllersToRunDetectionImmediately = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)forceSynchronizedControllersToRunDetectionImmediately
{
  os_unfair_lock_lock(&self->_lock);
  forceSynchronizedControllersToRunDetectionImmediately = self->_forceSynchronizedControllersToRunDetectionImmediately;
  os_unfair_lock_unlock(&self->_lock);
  return forceSynchronizedControllersToRunDetectionImmediately;
}

- (void)prepareToEmitBuffer:(opaqueCMSampleBuffer *)a3
{
  BWGetOriginalPresentationTimeStampFromBuffer(a3, &time1);
  self->_currentPTS = time1;
  self->_isHandlingFirstBufferAfterSceneChange = 0;
  os_unfair_lock_lock(&self->_lock);
  sceneLikelyToHaveCodes = self->_sceneLikelyToHaveCodes;
  if (!self->_emittedFirstBufferAfterSceneChange)
  {
    self->_isHandlingFirstBufferAfterSceneChange = 1;
    self->_firstBufferAfterSceneChangeHasCodes = sceneLikelyToHaveCodes;
    self->_emittedFirstBufferAfterSceneChange = 1;
  }

  detectionFrameRateRampIndex = self->_detectionFrameRateRampIndex;
  lhs = self->_currentPTS;
  rhs = self->_detectedCodesLastSeenPTS;
  CMTimeSubtract(&time1, &lhs, &rhs);
  CMTimeMakeWithSeconds(&lhs, 0.667, 1000);
  v6 = CMTimeCompare(&time1, &lhs);
  os_unfair_lock_unlock(&self->_lock);
  if (!self->_usesSceneClassifierToGateDetection)
  {
    sceneLikelyToHaveCodes = 1;
  }

  memset(&time1, 0, sizeof(time1));
  CMTimeMakeWithSeconds(&time1, 0.0667, 1000);
  if (v6 < 0)
  {
    rhs = time1;
    CMTimeMultiplyByRatio(&lhs, &rhs, 1, 3);
    time1 = lhs;
  }

  memset(&lhs, 0, sizeof(lhs));
  sceneStabilityMonitor = self->_sceneStabilityMonitor;
  if (sceneStabilityMonitor)
  {
    [(BWSceneStabilityMonitor *)sceneStabilityMonitor stableStartTime];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  time2 = self->_currentPTS;
  CMTimeSubtract(&lhs, &time2, &rhs);
  if (self->_isHandlingFirstBufferAfterSceneChange)
  {
    v8 = 1;
  }

  else
  {
    rhs = lhs;
    time2 = time1;
    v8 = CMTimeCompare(&rhs, &time2) > 0;
  }

  v9 = v8 && sceneLikelyToHaveCodes;
  detectionFrameRateRamp = self->_detectionFrameRateRamp;
  if (detectionFrameRateRamp && (self->_currentPTS.flags & 1) != 0 && (self->_lastDetectionPTS.flags & 1) != 0)
  {
    memset(&rhs, 0, sizeof(rhs));
    [-[NSArray objectAtIndexedSubscript:](detectionFrameRateRamp objectAtIndexedSubscript:{detectionFrameRateRampIndex), "doubleValue"}];
    CMTimeMakeWithSeconds(&rhs, 1.0 / v13, 1000);
    currentPTS = self->_currentPTS;
    lastDetectionPTS = self->_lastDetectionPTS;
    CMTimeSubtract(&time2, &currentPTS, &lastDetectionPTS);
    currentPTS = rhs;
    v14 = CMTimeCompare(&time2, &currentPTS) <= 0 || v9 == 0;
    v15 = !v14;
    self->_shouldRunDetection = v15;
    p_shouldRunDetection = &self->_shouldRunDetection;
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    self->_shouldRunDetection = v9;
    p_shouldRunDetection = &self->_shouldRunDetection;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (dispatch_group_wait(self->_detectorAvailableGroup, 0))
  {
    *p_shouldRunDetection = 0;
  }

LABEL_19:
  v12 = self->_sceneMotionEstimatesSupported && !self->_lowPowerModeEnabled && (*p_shouldRunDetection || v6 < 0);
  self->_shouldApplySceneMotion = v12;
}

- (void)node:(id)a3 didEmitCodesCount:(int64_t)a4 emittedIdentifiers:(id)a5 originalPTS:(id *)a6
{
  v10 = *a6;
  [(BWMetadataDetectorGatingOutputController *)self setLastDetectedCodesCount:a4 originalPTS:&v10];
  os_unfair_lock_lock(&self->_lock);
  isSmartCameraSceneConfident = self->_isSmartCameraSceneConfident;
  os_unfair_lock_unlock(&self->_lock);
  [(FigCaptureLogSmartCameraGating *)self->_logger logSmartCamIsConfident:isSmartCameraSceneConfident presentedIdentifiers:a5 presentedCount:a4];
}

- (void)setLastDetectionPTS:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastDetectionPTS.epoch = a3->var3;
  *&self->_lastDetectionPTS.value = v3;
}

- (void)_updateSceneLikelyToHaveCodes
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_assert_owner((a1 + 172));
  if (*(a1 + 24) != 1)
  {
    return;
  }

  if (*(a1 + 130))
  {
    if (*(a1 + 128))
    {
      return;
    }

    *(a1 + 128) = 1;
LABEL_9:
    v4 = *(a1 + 112);

    [v4 logGateOpened];
    return;
  }

  v2 = *(a1 + 136);
  v3 = v2 > 0;
  if (*(a1 + 128) == v3)
  {
    return;
  }

  *(a1 + 128) = v3;
  if (v2 >= 1)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 112);

  [v5 logGateClosed];
}

- (void)emitPixelBuffer:(__CVBuffer *)a3 inputSampleBuffer:(opaqueCMSampleBuffer *)a4 appliedPrimaryCaptureRect:(BOOL)a5
{
  v6 = [(BWMetadataDetectorGatingOutputController *)self _newOutputSampleBufferWithPixelBuffer:a3 inputSampleBuffer:a4 appliedPrimaryCaptureRect:a5];
  if (v6)
  {
    v7 = v6;
    [(BWNodeOutput *)self->_nodeOutput emitSampleBuffer:v6];
    shouldRunDetection = self->_shouldRunDetection;
    if (shouldRunDetection)
    {
      *&self->_lastDetectionPTS.value = *&self->_currentPTS.value;
      self->_lastDetectionPTS.epoch = self->_currentPTS.epoch;
    }

    os_unfair_lock_lock(&self->_lock);
    memset(&v14, 0, sizeof(v14));
    sceneStabilityMonitor = self->_sceneStabilityMonitor;
    if (sceneStabilityMonitor)
    {
      [(BWSceneStabilityMonitor *)sceneStabilityMonitor unstableStartTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    currentPTS = self->_currentPTS;
    CMTimeSubtract(&v14, &currentPTS, &rhs);
    if ((self->_lowPowerModeEnabled || [(BWSceneStabilityMonitor *)self->_sceneStabilityMonitor isStable]) && ([(BWSceneStabilityMonitor *)self->_sceneStabilityMonitor isStable]|| (CMTimeMake(&rhs, 300, 1000), currentPTS = v14, CMTimeCompare(&currentPTS, &rhs) < 1)) && (shouldRunDetection || !self->_isHandlingFirstBufferAfterSceneChange) && ![(BWSceneStabilityMonitor *)self->_sceneStabilityMonitor isAFCompleted])
    {
      if (!shouldRunDetection)
      {
        goto LABEL_16;
      }

      ++self->_detectionFrameRateRampIndex;
      if ([(NSArray *)self->_detectionFrameRateRamp count]- 1 < self->_detectionFrameRateRampIndex)
      {
        [(NSArray *)self->_detectionFrameRateRamp count];
      }

      v11 = [(NSArray *)self->_detectionFrameRateRamp count];
      detectionFrameRateRampIndex = self->_detectionFrameRateRampIndex;
      if (v11 - 1 < detectionFrameRateRampIndex)
      {
        LOBYTE(detectionFrameRateRampIndex) = [(NSArray *)self->_detectionFrameRateRamp count]- 1;
      }
    }

    else
    {
      LOBYTE(detectionFrameRateRampIndex) = self->_detectionFrameRateRampStartIndex;
    }

    self->_detectionFrameRateRampIndex = detectionFrameRateRampIndex;
LABEL_16:
    os_unfair_lock_unlock(&self->_lock);
    CFRelease(v7);
  }
}

- (unsigned)_newOutputSampleBufferWithPixelBuffer:(opaqueCMSampleBuffer *)a3 inputSampleBuffer:(int)a4 appliedPrimaryCaptureRect:
{
  if (result)
  {
    v5 = result;
    cf = 0;
    target = 0;
    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a3, a2, &cf, &target))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
    }

    else
    {
      if (a4)
      {
        CMSetAttachment(target, *off_1E798A430, 0, 1u);
      }

      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithBool:v5[104]]);
      if (v5[104] == 1)
      {
        CMSetAttachment(target, *off_1E798A340, *(v5 + 15), 1u);
      }

      OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(v5 + 12), "isStable")}]);
      if (v5[26] == 1 && [*(v5 + 12) processedSceneMotion])
      {
        v6 = MEMORY[0x1E696AD98];
        [*(v5 + 12) sceneMotionOffsetX];
        OUTLINED_FUNCTION_23_0([v6 numberWithFloat:?]);
        v7 = MEMORY[0x1E696AD98];
        [*(v5 + 12) sceneMotionOffsetY];
        OUTLINED_FUNCTION_23_0([v7 numberWithFloat:?]);
      }

      if (v5[106] == 1)
      {
        OUTLINED_FUNCTION_23_0([MEMORY[0x1E696AD98] numberWithBool:v5[107]]);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return target;
  }

  return result;
}

@end