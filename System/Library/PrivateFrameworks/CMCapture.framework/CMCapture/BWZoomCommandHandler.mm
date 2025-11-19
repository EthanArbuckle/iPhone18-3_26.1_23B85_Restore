@interface BWZoomCommandHandler
- (BWZoomCommandHandler)init;
- (float)_applyFudgeToZoomFactor:(uint64_t)a3;
- (float)_removeFudgeFromZoomFactor:(uint64_t)a3;
- (float)_updateZoomModelForNextFrameWithPTS:(uint64_t)a3;
- (float)_zoomFactorForDurationBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4;
- (float)_zoomFactorForRampAtPTS:(uint64_t)a1 updateCurrentZoomRampState:(uint64_t)a2;
- (float)_zoomFactorForRateBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4;
- (float)_zoomFactorForSpringBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4;
- (float)allowableMinimumDigitalZoomFactorDuringZoomOut;
- (float)appliedZoomFactor;
- (float)appliedZoomFactorWithoutFudge;
- (float)applyFudgeToZoomFactor:(float)a3;
- (float)earlySwitchOverScaleFactorForZoomIn;
- (float)predictRampZoomFactorAfterNumberOfFrames:(int)a3 settingZoomFactorOfInterest:(float)a4;
- (float)rampTargetZoomFactor;
- (float)rampZoomFactorOfInterest;
- (float)removeFudgeFromZoomFactor:(float)a3;
- (float)requestedZoomFactor;
- (float)requestedZoomFactorWithoutFudge;
- (float)updateZoomModelAndAppliedZoomFactorForNextFrameWithPTS:(id *)a3 captureID:(int)a4 delayedISPAppliedZoomFactor:(float)a5;
- (float)updateZoomModelForNextFrameWithPTS:(id *)a3 captureID:(int)a4;
- (int)rampTuning;
- (int64_t)timeForLastRequestedZoomFactor;
- (uint64_t)_updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)a3 zoomFactorChangedOut:;
- (void)dealloc;
- (void)rampToVideoZoomFactor:(float)a3 usingSpringWithTension:(float)a4 friction:(float)a5 snapFraction:(float)a6 rampTuning:(int)a7 earlySwitchOverScaleFactorForZoomIn:(float)a8 allowableMinimumDigitalZoomFactorDuringZoomOut:(float)a9 rampStartFrameDelayAt30fps:(int)a10 commandID:(int)a11;
- (void)rampToVideoZoomFactor:(float)a3 withRampType:(int)a4 rate:(float)a5 duration:(double)a6 snapToTargetZoomFactorWithinRampFraction:(float)a7 rampTuning:(int)a8 earlySwitchOverScaleFactorForZoomIn:(float)a9 allowableMinimumDigitalZoomFactorDuringZoomOut:(float)a10 commandID:(int)a11;
- (void)reset;
- (void)resetZoomFactorOfInterest;
- (void)setFudgedZoomRanges:(id)a3;
- (void)setRequestedZoomFactor:(float)a3;
- (void)setTypicalISPZoomDelay:(unsigned int)a3 maxISPZoomDelay:(unsigned int)a4 clientCanCompensateForDelay:(BOOL)a5;
- (void)updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)a3;
- (void)updateISPZoomDelay:(unsigned int)a3;
@end

@implementation BWZoomCommandHandler

- (BWZoomCommandHandler)init
{
  v11.receiver = self;
  v11.super_class = BWZoomCommandHandler;
  result = [(BWZoomCommandHandler *)&v11 init];
  if (result)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&result->_appliedZoomFactor = _D0;
    v8 = MEMORY[0x1E6960C70];
    v9 = *MEMORY[0x1E6960C70];
    *&result->_rampStartTime.value = *MEMORY[0x1E6960C70];
    v10 = *(v8 + 16);
    result->_rampTargetFactor = 1.0;
    result->_rampStartTime.epoch = v10;
    *&result->_rampAcceleration = 0x3F80000041700000;
    *&result->_lastFramePTSes[0].value = v9;
    result->_lastFramePTSes[0].epoch = v10;
    *&result->_lastFramePTSes[1].value = v9;
    result->_lastFramePTSes[1].epoch = v10;
    result->_zoomLock._os_unfair_lock_opaque = 0;
    *&result->_earlySwitchOverScaleFactorForZoomIn = _D0;
    result->_lastFrameCaptureID = -1;
  }

  return result;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_zoomLock);

  self->_zoomDelayBuffer = [[BWZoomDelayBuffer alloc] initWithMaxZoomDelay:0 currentZoomDelay:?];
  self->_lastFrameCaptureID = -1;

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (int)rampTuning
{
  os_unfair_lock_lock(&self->_zoomLock);
  rampTuning = self->_rampTuning;
  os_unfair_lock_unlock(&self->_zoomLock);
  return rampTuning;
}

- (float)earlySwitchOverScaleFactorForZoomIn
{
  os_unfair_lock_lock(&self->_zoomLock);
  earlySwitchOverScaleFactorForZoomIn = self->_earlySwitchOverScaleFactorForZoomIn;
  os_unfair_lock_unlock(&self->_zoomLock);
  return earlySwitchOverScaleFactorForZoomIn;
}

- (float)allowableMinimumDigitalZoomFactorDuringZoomOut
{
  os_unfair_lock_lock(&self->_zoomLock);
  allowableMinimumDigitalZoomFactorDuringZoomOut = self->_allowableMinimumDigitalZoomFactorDuringZoomOut;
  os_unfair_lock_unlock(&self->_zoomLock);
  return allowableMinimumDigitalZoomFactorDuringZoomOut;
}

- (float)appliedZoomFactorWithoutFudge
{
  os_unfair_lock_lock(&self->_zoomLock);
  appliedZoomFactor = self->_appliedZoomFactor;
  os_unfair_lock_unlock(&self->_zoomLock);
  return appliedZoomFactor;
}

- (float)appliedZoomFactor
{
  os_unfair_lock_lock(&self->_zoomLock);
  v10 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:v3, v4, v5, v6, v7, v8, v9, self->_appliedZoomFactor];
  os_unfair_lock_unlock(&self->_zoomLock);
  return v10;
}

- (float)rampZoomFactorOfInterest
{
  os_unfair_lock_lock(&self->_zoomLock);
  rampZoomFactorOfInterest = self->_rampZoomFactorOfInterest;
  os_unfair_lock_unlock(&self->_zoomLock);
  return rampZoomFactorOfInterest;
}

- (float)requestedZoomFactor
{
  os_unfair_lock_lock(&self->_zoomLock);
  v10 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:v3, v4, v5, v6, v7, v8, v9, self->_lastRequestedZoomFactor];
  os_unfair_lock_unlock(&self->_zoomLock);
  return v10;
}

- (float)rampTargetZoomFactor
{
  os_unfair_lock_lock(&self->_zoomLock);
  v10 = 0.0;
  if (self->_rampCommandID)
  {
    v10 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:v3, v4, v5, v6, v7, v8, v9, self->_rampTargetFactor];
  }

  os_unfair_lock_unlock(&self->_zoomLock);
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWZoomCommandHandler;
  [(BWZoomCommandHandler *)&v3 dealloc];
}

- (float)requestedZoomFactorWithoutFudge
{
  os_unfair_lock_lock(&self->_zoomLock);
  lastRequestedZoomFactor = self->_lastRequestedZoomFactor;
  os_unfair_lock_unlock(&self->_zoomLock);
  return lastRequestedZoomFactor;
}

- (void)setRequestedZoomFactor:(float)a3
{
  if (a3 >= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  os_unfair_lock_lock(&self->_zoomLock);
  if (v4 != self->_lastRequestedZoomFactor)
  {
    self->_lastRequestedZoomFactor = v4;
    self->_zoomFactorServiced = 0;
    self->_timeForLastRequestedZoomFactor = FigGetUpTimeNanoseconds() / 0xF4240uLL;
  }

  if (self->_rampTargetVelocity != 0.0 || self->_rampCurrentVelocity != 0.0)
  {
    *&self->_rampTargetVelocity = 0;
    self->_rampCurrentVelocity = 0.0;
    self->_rampZoomFactorOfInterest = 0.0;
  }

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (void)setFudgedZoomRanges:(id)a3
{
  os_unfair_lock_lock(&self->_zoomLock);

  self->_fudgedZoomRanges = [a3 copy];

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)removeFudgeFromZoomFactor:(float)a3
{
  os_unfair_lock_lock(&self->_zoomLock);
  v12 = [(BWZoomCommandHandler *)self _removeFudgeFromZoomFactor:v5, v6, v7, v8, v9, v10, v11, a3];
  os_unfair_lock_unlock(&self->_zoomLock);
  return v12;
}

- (void)rampToVideoZoomFactor:(float)a3 withRampType:(int)a4 rate:(float)a5 duration:(double)a6 snapToTargetZoomFactorWithinRampFraction:(float)a7 rampTuning:(int)a8 earlySwitchOverScaleFactorForZoomIn:(float)a9 allowableMinimumDigitalZoomFactorDuringZoomOut:(float)a10 commandID:(int)a11
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_rampStartTime = self->_lastFramePTSes[0];
  lastRequestedZoomFactor = self->_lastRequestedZoomFactor;
  rampCurrentVelocity = self->_rampCurrentVelocity;
  self->_rampStartFactor = lastRequestedZoomFactor;
  self->_rampStartVelocity = rampCurrentVelocity;
  self->_rampTargetFactor = a3;
  self->_rampCommandID = a11;
  self->_rampZoomFactorOfInterest = 0.0;
  self->_rampType = a4;
  self->_rampTuning = a8;
  self->_earlySwitchOverScaleFactorForZoomIn = a9;
  self->_allowableMinimumDigitalZoomFactorDuringZoomOut = a10;
  switch(a4)
  {
    case 3:
      self->_rampTargetVelocity = 0.0;
      self->_rampDuration = a6;
      self->_rampSnapFraction = a7;
      *&self->_springRampTension = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(lastRequestedZoomFactor < a3), 0x1FuLL)), 0x41A8000042B80000, 0x41B8000043070000);
      self->_springRampStartFrameDelayAt30fps = 1;
      break;
    case 2:
      self->_rampTargetVelocity = 0.0;
      self->_rampDuration = a6;
      self->_rampSnapFraction = a7;
      break;
    case 1:
      v23 = fabsf(a5);
      if (lastRequestedZoomFactor >= a3)
      {
        v24 = -v23;
      }

      else
      {
        v24 = v23;
      }

      self->_rampTargetVelocity = v24;
      self->_rampDuration = 0.0;
      self->_rampSnapFraction = 0.0;
      break;
  }

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (void)rampToVideoZoomFactor:(float)a3 usingSpringWithTension:(float)a4 friction:(float)a5 snapFraction:(float)a6 rampTuning:(int)a7 earlySwitchOverScaleFactorForZoomIn:(float)a8 allowableMinimumDigitalZoomFactorDuringZoomOut:(float)a9 rampStartFrameDelayAt30fps:(int)a10 commandID:(int)a11
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_rampStartTime = self->_lastFramePTSes[0];
  rampCurrentVelocity = self->_rampCurrentVelocity;
  self->_rampStartFactor = self->_lastRequestedZoomFactor;
  self->_rampStartVelocity = rampCurrentVelocity;
  self->_rampTargetFactor = a3;
  self->_rampZoomFactorOfInterest = 0.0;
  self->_rampType = 3;
  self->_rampTuning = a7;
  self->_rampTargetVelocity = 0.0;
  self->_rampCommandID = a11;
  self->_rampSnapFraction = a6;
  self->_springRampTension = a4;
  self->_springRampFriction = a5;
  self->_earlySwitchOverScaleFactorForZoomIn = a8;
  self->_allowableMinimumDigitalZoomFactorDuringZoomOut = a9;
  self->_springRampStartFrameDelayAt30fps = a10;

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (void)updateISPZoomDelay:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_zoomLock);
  [(BWZoomDelayBuffer *)self->_zoomDelayBuffer updateZoomDelay:a3];

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)predictRampZoomFactorAfterNumberOfFrames:(int)a3 settingZoomFactorOfInterest:(float)a4
{
  os_unfair_lock_lock(&self->_zoomLock);
  v7 = self->_rampTargetVelocity != 0.0 || self->_rampCurrentVelocity != 0.0 || self->_rampCommandID != 0;
  if (self->_lastFramePTSes[0].flags)
  {
    flags = self->_lastFramePTSes[1].flags;
  }

  else
  {
    flags = 0;
  }

  v9 = 0.0;
  if ((flags & v7) != 0)
  {
    memset(&v28, 0, sizeof(v28));
    lhs = self->_lastFramePTSes[0];
    v25 = self->_lastFramePTSes[1];
    CMTimeSubtract(&time, &lhs, &v25);
    CMTimeMultiply(&lhs, &time, a3);
    time = self->_lastFramePTSes[0];
    CMTimeAdd(&v28, &time, &lhs);
    lhs = v28;
    v11 = [BWZoomCommandHandler _zoomFactorForRampAtPTS:&lhs updateCurrentZoomRampState:?];
    v9 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:v12, v13, v14, v15, v16, v17, v18, v11];
    if (a4 != 0.0 && self->_rampZoomFactorOfInterest == 0.0)
    {
      [(BWZoomCommandHandler *)self predictRampZoomFactorAfterNumberOfFrames:v19 settingZoomFactorOfInterest:v20, v21, v22, v23, v24, a4, v9];
    }
  }

  os_unfair_lock_unlock(&self->_zoomLock);
  return v9;
}

- (void)resetZoomFactorOfInterest
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_rampZoomFactorOfInterest = 0.0;

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (int64_t)timeForLastRequestedZoomFactor
{
  os_unfair_lock_lock(&self->_zoomLock);
  timeForLastRequestedZoomFactor = self->_timeForLastRequestedZoomFactor;
  os_unfair_lock_unlock(&self->_zoomLock);
  return timeForLastRequestedZoomFactor;
}

- (float)updateZoomModelForNextFrameWithPTS:(id *)a3 captureID:(int)a4
{
  os_unfair_lock_lock(&self->_zoomLock);
  if (!self || a4 == -1 || (lastFrameCaptureID = self->_lastFrameCaptureID, v14 = __OFSUB__(lastFrameCaptureID, a4), v15 = lastFrameCaptureID - a4, (v15 < 0) ^ v14) || (v16 = 0.0, v15 >= 1000))
  {
    v18 = *&a3->var0;
    var3 = a3->var3;
    v16 = [(BWZoomCommandHandler *)self _updateZoomModelForNextFrameWithPTS:v7, v8, v9, v10, v11, v12];
    self->_lastFrameCaptureID = a4;
  }

  os_unfair_lock_unlock(&self->_zoomLock);
  return v16;
}

- (void)updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)a3
{
  v9 = 0;
  os_unfair_lock_lock(&self->_zoomLock);
  [(BWZoomCommandHandler *)self _updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:a3 zoomFactorChangedOut:?];
  v6 = v5;
  os_unfair_lock_unlock(&self->_zoomLock);
  if (v9)
  {
    zoomCompletionDelegate = self->_zoomCompletionDelegate;
    [(BWZoomCommandHandler *)self appliedZoomFactor];
    [BWZoomCompletionDelegate zoomCommandHandler:"zoomCommandHandler:didApplyZoomFactor:zoomFactorWithoutFudge:targetZoomFactor:rampComplete:rampCommandID:" didApplyZoomFactor:self zoomFactorWithoutFudge:HIDWORD(v6) & 1 targetZoomFactor:v6 rampComplete:? rampCommandID:?];
    zoomCompletionDelegateForStereoAudio = self->_zoomCompletionDelegateForStereoAudio;
    [(BWZoomCommandHandler *)self appliedZoomFactor];
    [BWZoomCompletionDelegate zoomCommandHandler:"zoomCommandHandler:didApplyZoomFactor:zoomFactorWithoutFudge:targetZoomFactor:rampComplete:rampCommandID:" didApplyZoomFactor:self zoomFactorWithoutFudge:HIDWORD(v6) & 1 targetZoomFactor:v6 rampComplete:? rampCommandID:?];
  }
}

- (float)updateZoomModelAndAppliedZoomFactorForNextFrameWithPTS:(id *)a3 captureID:(int)a4 delayedISPAppliedZoomFactor:(float)a5
{
  v26 = 0;
  os_unfair_lock_lock(&self->_zoomLock);
  if (!self || a4 == -1 || (lastFrameCaptureID = self->_lastFrameCaptureID, v16 = __OFSUB__(lastFrameCaptureID, a4), v17 = lastFrameCaptureID - a4, (v17 < 0) ^ v16) || v17 >= 1000)
  {
    v24 = *&a3->var0;
    var3 = a3->var3;
    v19 = [(BWZoomCommandHandler *)self _updateZoomModelForNextFrameWithPTS:v9, v10, v11, v12, v13, v14];
    [(BWZoomCommandHandler *)self _updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:a5 zoomFactorChangedOut:?];
    v18 = v20;
    self->_lastFrameCaptureID = a4;
  }

  else
  {
    v18 = 0;
    v19 = 0.0;
  }

  os_unfair_lock_unlock(&self->_zoomLock);
  if (v26)
  {
    zoomCompletionDelegate = self->_zoomCompletionDelegate;
    [(BWZoomCommandHandler *)self appliedZoomFactor];
    [BWZoomCompletionDelegate zoomCommandHandler:"zoomCommandHandler:didApplyZoomFactor:zoomFactorWithoutFudge:targetZoomFactor:rampComplete:rampCommandID:" didApplyZoomFactor:self zoomFactorWithoutFudge:HIDWORD(v18) & 1 targetZoomFactor:v18 rampComplete:? rampCommandID:?];
    zoomCompletionDelegateForStereoAudio = self->_zoomCompletionDelegateForStereoAudio;
    [(BWZoomCommandHandler *)self appliedZoomFactor];
    [BWZoomCompletionDelegate zoomCommandHandler:"zoomCommandHandler:didApplyZoomFactor:zoomFactorWithoutFudge:targetZoomFactor:rampComplete:rampCommandID:" didApplyZoomFactor:self zoomFactorWithoutFudge:HIDWORD(v18) & 1 targetZoomFactor:v18 rampComplete:? rampCommandID:?];
  }

  return v19;
}

- (float)_applyFudgeToZoomFactor:(uint64_t)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = *(a1 + 208);
  v11 = OUTLINED_FUNCTION_2_0(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0);
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(8 * i);
        v16 = [v15 lowerBound];
        if (v24 <= a9)
        {
          v16 = [v15 upperBound];
          if (*&v25 >= a9)
          {
            *&v25 = a9;
            [v15 applyFudgeToZoomFactor:v25];
            return v26;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_2_0(v16, v17, v18, v19, v20, v21, v22, v23, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return a9;
}

- (float)applyFudgeToZoomFactor:(float)a3
{
  os_unfair_lock_lock(&self->_zoomLock);
  v12 = OUTLINED_FUNCTION_4_87(v4, v5, v6, v7, v8, v9, v10, v11);
  os_unfair_lock_unlock(&self->_zoomLock);
  return v12;
}

- (float)_removeFudgeFromZoomFactor:(uint64_t)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = *(a1 + 208);
  v11 = OUTLINED_FUNCTION_2_0(a1, a2, a3, a4, a5, a6, a7, a8, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0);
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(8 * i);
        v16 = [v15 fudgedLowerBound];
        if (v24 <= a9)
        {
          v16 = [v15 fudgedUpperBound];
          if (*&v25 >= a9)
          {
            *&v25 = a9;
            [v15 removeFudgeFromZoomFactor:v25];
            return v26;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_2_0(v16, v17, v18, v19, v20, v21, v22, v23, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return a9;
}

- (void)setTypicalISPZoomDelay:(unsigned int)a3 maxISPZoomDelay:(unsigned int)a4 clientCanCompensateForDelay:(BOOL)a5
{
  v5 = a5;
  self->_clientCanCompensateForDelay = a5;
  os_unfair_lock_lock(&self->_zoomLock);
  v9 = self->_rampTargetVelocity != 0.0 || self->_rampCurrentVelocity != 0.0;
  self->_rampActive = v9;

  v10 = [[BWZoomDelayBuffer alloc] initWithMaxZoomDelay:a4 currentZoomDelay:a3];
  self->_zoomDelayBuffer = v10;
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    rampActive = self->_rampActive;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    rampActive = 2 * (a3 != 0);
  }

  v10->_operatingMode = rampActive;
LABEL_10:

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)_zoomFactorForRampAtPTS:(uint64_t)a1 updateCurrentZoomRampState:(uint64_t)a2
{
  v2 = 0.0;
  if (a1)
  {
    if (*(a2 + 12))
    {
      time1 = *a2;
      v31 = *(a1 + 120);
      if (CMTimeCompare(&time1, &v31) >= 1)
      {
        v4 = *(a1 + 172);
        switch(v4)
        {
          case 1:
            v15 = OUTLINED_FUNCTION_1_121();
            return [(BWZoomCommandHandler *)v15 _zoomFactorForRateBasedRampAtPTS:v16 updateCurrentZoomRampState:v17, v18, v19, v20, v21, v22];
          case 3:
            v6 = OUTLINED_FUNCTION_1_121();
            return [(BWZoomCommandHandler *)v6 _zoomFactorForSpringBasedRampAtPTS:v7 updateCurrentZoomRampState:v8, v9, v10, v11, v12, v13];
          case 2:
            v23 = OUTLINED_FUNCTION_1_121();
            return [(BWZoomCommandHandler *)v23 _zoomFactorForDurationBasedRampAtPTS:v24 updateCurrentZoomRampState:v25, v26, v27, v28, v29, v30];
          default:
            return v2;
        }
      }
    }
  }

  return v2;
}

- (float)_updateZoomModelForNextFrameWithPTS:(uint64_t)a3
{
  if (!a1)
  {
    return 0.0;
  }

  *(a1 + 80) = *(a1 + 56);
  *(a1 + 96) = *(a1 + 72);
  v9 = *(a2 + 16);
  *(a1 + 56) = *a2;
  *(a1 + 72) = v9;
  if (*(a1 + 160) == 0.0 && *(a1 + 196) == 0.0 && *(a1 + 184) == 0.0 && !*(a1 + 164))
  {
    v10 = 0;
    v11 = *(a1 + 156);
  }

  else
  {
    v23 = *a2;
    v24 = *(a2 + 16);
    v12 = [BWZoomCommandHandler _zoomFactorForRampAtPTS:a1 updateCurrentZoomRampState:&v23];
    if (v12 >= 1.0 && v12 != *(a1 + 16))
    {
      *(a1 + 16) = v12;
      *(a1 + 20) = 0;
      *(a1 + 112) = FigGetUpTimeNanoseconds() / 0xF4240uLL;
    }

    v10 = *(a1 + 164);
    v13 = *(a1 + 156);
    v11 = LODWORD(v13);
    if (v12 == v13 || *(a1 + 160) == 0.0 && *(a1 + 196) == 0.0)
    {
      v10 |= 0x100000000uLL;
      *(a1 + 160) = 0;
      *(a1 + 196) = 0;
      *(a1 + 184) = 0;
      *(a1 + 176) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(a1 + 240) = _D0;
      *(a1 + 248) = 0;
    }

    else if ((*(a1 + 168) & 1) == 0)
    {
      if (*(a1 + 32) == 1)
      {
        v19 = *(a1 + 24);
        if (v19)
        {
          *(v19 + 32) = 1;
        }
      }

      *(a1 + 168) = 1;
    }
  }

  v20 = *(a1 + 16);
  v21 = 0.0;
  if ((*(a1 + 20) & 1) == 0)
  {
    v21 = [(BWZoomCommandHandler *)a1 _applyFudgeToZoomFactor:a2, a3, a4, a5, a6, a7, a8, *(a1 + 16)];
    *(a1 + 20) = 1;
  }

  [(BWZoomDelayBuffer *)*(a1 + 24) addZoomRequest:v10];
  return v21;
}

- (uint64_t)_updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)a3 zoomFactorChangedOut:
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 24);
    result = [(BWZoomDelayBuffer *)v5 zoomRequestForISPAppliedZoomFactor:a3 earlySwitchOverScaleFactorForZoomIn:*(result + 240)];
    v7 = *(v4 + 12);
    if (v7 != *&result)
    {
      *(v4 + 12) = result;
    }

    if (!v6 && *(v4 + 196) == 0.0 && *(v4 + 160) == 0.0 && *(v4 + 168) == 1)
    {
      if (v5 && (*(v4 + 32) & 1) != 0)
      {
        *(v5 + 32) = 0;
      }

      *(v4 + 168) = 0;
    }

    if (a2)
    {
      *a2 = v7 != *&result;
    }
  }

  return result;
}

- (float)_zoomFactorForDurationBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4
{
  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31, v32, v33, v34, time.value);
  Seconds = CMTimeGetSeconds(&time);
  v19 = 1.0 - pow(0.00499999523, Seconds / *(v8 + 184));
  v20 = *(v8 + 148);
  v21 = *(v8 + 156);
  if (v20 < v21)
  {
    v22 = -1;
  }

  else
  {
    v22 = v20 > v21;
  }

  if ((1.0 - *(v8 + 192)) <= v19)
  {
    v23 = *(v8 + 156);
  }

  else
  {
    v23 = v20 + (v19 * (v21 - v20));
  }

  if (Seconds != 0.0 && v9 != 0)
  {
    OUTLINED_FUNCTION_4_87(v11, v12, v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_3_99();
    if (!v26)
    {
      v29 = v20 < v21;
      if (v27 >= v28)
      {
        v29 = v22 == v27 > v28;
      }

      if (!v29)
      {
        *(v8 + 200) = 0;
      }
    }

    *(v8 + 196) = log2f(vabds_f32(*(v8 + 148), v23) / Seconds) * -v22;
  }

  return v23;
}

- (float)_zoomFactorForRateBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4
{
  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(a1, a2, a3, a4, a5, a6, a7, a8, v42, v43, v44, v45, v46, time.value);
  Seconds = CMTimeGetSeconds(&time);
  v12 = *(v8 + 156);
  v11 = *(v8 + 160);
  v14 = *(v8 + 148);
  v13 = *(v8 + 152);
  v15 = v13 < v11;
  v16 = v13 > v11;
  if (v13 < v11)
  {
    v16 = -1;
  }

  v17 = *(v8 + 144);
  if (v16 >= 1)
  {
    v17 = -v17;
  }

  v18 = v13 + (v17 * Seconds);
  v19 = v16 == v18 > v11;
  if (v18 >= v11)
  {
    v15 = v19;
  }

  if (v14 < v12)
  {
    v20 = -1;
  }

  else
  {
    v20 = v14 > v12;
  }

  v21 = (v11 * (1.0 - (((v11 - v13) / v17) / Seconds))) + (((v13 + v11) * 0.5) * (((v11 - v13) / v17) / Seconds));
  v22 = (v13 + v18) * 0.5;
  if (v15)
  {
    v23 = v18;
  }

  else
  {
    v23 = *(v8 + 160);
  }

  if (v15)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 * 0.693147181 * Seconds;
  v34 = v14 * expf(v25);
  if (v34 < 1.0)
  {
    v34 = 1.0;
  }

  v35 = v20 == v34 > v12;
  if (v34 < v12)
  {
    v35 = v14 < v12;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = v12;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_4_87(v26, v27, v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_3_99();
    if (!v40)
    {
      v41 = v14 < v12;
      if (v38 >= v39)
      {
        v41 = v20 == v38 > v39;
      }

      if (!v41)
      {
        *(v8 + 200) = 0;
      }
    }

    *(v8 + 196) = v23;
  }

  return v36;
}

- (float)_zoomFactorForSpringBasedRampAtPTS:(int)a3 updateCurrentZoomRampState:(int)a4
{
  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(a1, a2, a3, a4, a5, a6, a7, a8, v36, v37, v38, v39, v40, time.value);
  Seconds = CMTimeGetSeconds(&time);
  v11 = *(v8 + 156);
  v12 = *(v8 + 148);
  if (v12 < v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = v12 > v11;
  }

  v14 = (*(v8 + 152) * -v13);
  v15 = objc_alloc_init(BWSpringSimulation);
  [(BWSpringSimulation *)v15 setTension:*(v8 + 232)];
  [(BWSpringSimulation *)v15 setFriction:*(v8 + 236)];
  [(BWSpringSimulation *)v15 resetWithInput:1.0 initialOutput:0.0 initialVelocity:v14 convergedSpeed:0.001];
  v16 = FigCaptureRoundFloatToMultipleOf(1, Seconds * 60.0);
  v17 = *(v8 + 248);
  if (v16 > 2 * v17)
  {
    v18 = v16 - 2 * v17;
    while (1)
    {
      [(BWSpringSimulation *)v15 update];
      if (*(v8 + 192) > 0.0)
      {
        v19 = [(BWSpringSimulation *)v15 output];
        if (v27 >= 1.0 - *(v8 + 192))
        {
          break;
        }
      }

      if (!--v18)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v28 = *(v8 + 156);
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (Seconds != 0.0)
    {
      OUTLINED_FUNCTION_4_87(v19, v20, v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_3_99();
      if (!v33)
      {
        if (v31 >= v32)
        {
          v34 = v13 == v31 > v32;
        }

        else
        {
          v34 = v12 < v11;
        }

        if (!v34)
        {
          *(v8 + 200) = 0;
        }
      }

      [(BWSpringSimulation *)v15 velocity];
      *&v35 = v35 * -v13;
      *(v8 + 196) = LODWORD(v35);
    }

    goto LABEL_15;
  }

LABEL_10:
  v19 = [(BWSpringSimulation *)v15 isCompleted];
  if (v19)
  {
    goto LABEL_11;
  }

  v19 = [(BWSpringSimulation *)v15 output];
  *&v29 = v29;
  v28 = *(v8 + 148) + (*&v29 * (*(v8 + 156) - *(v8 + 148)));
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v28;
}

- (void)predictRampZoomFactorAfterNumberOfFrames:(uint64_t)a3 settingZoomFactorOfInterest:(uint64_t)a4 .cold.1(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  v13 = a1[37];
  v14 = a1[39];
  v15 = [(BWZoomCommandHandler *)a1 _applyFudgeToZoomFactor:a2, a3, a4, a5, a6, a7, a8, a1[4]];
  if (v13 >= v14)
  {
    if (v15 > a9 && a10 <= a9)
    {
      goto LABEL_6;
    }
  }

  else if (v15 < a9 && a10 >= a9)
  {
LABEL_6:
    *a2 = a9;
  }
}

@end