@interface BWZoomCommandHandler
- (BWZoomCommandHandler)init;
- (float)_applyFudgeToZoomFactor:(uint64_t)factor;
- (float)_removeFudgeFromZoomFactor:(uint64_t)factor;
- (float)_updateZoomModelForNextFrameWithPTS:(uint64_t)s;
- (float)_zoomFactorForDurationBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state;
- (float)_zoomFactorForRampAtPTS:(uint64_t)s updateCurrentZoomRampState:(uint64_t)state;
- (float)_zoomFactorForRateBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state;
- (float)_zoomFactorForSpringBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state;
- (float)allowableMinimumDigitalZoomFactorDuringZoomOut;
- (float)appliedZoomFactor;
- (float)appliedZoomFactorWithoutFudge;
- (float)applyFudgeToZoomFactor:(float)factor;
- (float)earlySwitchOverScaleFactorForZoomIn;
- (float)predictRampZoomFactorAfterNumberOfFrames:(int)frames settingZoomFactorOfInterest:(float)interest;
- (float)rampTargetZoomFactor;
- (float)rampZoomFactorOfInterest;
- (float)removeFudgeFromZoomFactor:(float)factor;
- (float)requestedZoomFactor;
- (float)requestedZoomFactorWithoutFudge;
- (float)updateZoomModelAndAppliedZoomFactorForNextFrameWithPTS:(id *)s captureID:(int)d delayedISPAppliedZoomFactor:(float)factor;
- (float)updateZoomModelForNextFrameWithPTS:(id *)s captureID:(int)d;
- (int)rampTuning;
- (int64_t)timeForLastRequestedZoomFactor;
- (uint64_t)_updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)factor zoomFactorChangedOut:;
- (void)dealloc;
- (void)rampToVideoZoomFactor:(float)factor usingSpringWithTension:(float)tension friction:(float)friction snapFraction:(float)fraction rampTuning:(int)tuning earlySwitchOverScaleFactorForZoomIn:(float)in allowableMinimumDigitalZoomFactorDuringZoomOut:(float)out rampStartFrameDelayAt30fps:(int)self0 commandID:(int)self1;
- (void)rampToVideoZoomFactor:(float)factor withRampType:(int)type rate:(float)rate duration:(double)duration snapToTargetZoomFactorWithinRampFraction:(float)fraction rampTuning:(int)tuning earlySwitchOverScaleFactorForZoomIn:(float)in allowableMinimumDigitalZoomFactorDuringZoomOut:(float)self0 commandID:(int)self1;
- (void)reset;
- (void)resetZoomFactorOfInterest;
- (void)setFudgedZoomRanges:(id)ranges;
- (void)setRequestedZoomFactor:(float)factor;
- (void)setTypicalISPZoomDelay:(unsigned int)delay maxISPZoomDelay:(unsigned int)zoomDelay clientCanCompensateForDelay:(BOOL)forDelay;
- (void)updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)factor;
- (void)updateISPZoomDelay:(unsigned int)delay;
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

- (void)setRequestedZoomFactor:(float)factor
{
  if (factor >= 1.0)
  {
    factorCopy = factor;
  }

  else
  {
    factorCopy = 1.0;
  }

  os_unfair_lock_lock(&self->_zoomLock);
  if (factorCopy != self->_lastRequestedZoomFactor)
  {
    self->_lastRequestedZoomFactor = factorCopy;
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

- (void)setFudgedZoomRanges:(id)ranges
{
  os_unfair_lock_lock(&self->_zoomLock);

  self->_fudgedZoomRanges = [ranges copy];

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)removeFudgeFromZoomFactor:(float)factor
{
  os_unfair_lock_lock(&self->_zoomLock);
  factor = [(BWZoomCommandHandler *)self _removeFudgeFromZoomFactor:v5, v6, v7, v8, v9, v10, v11, factor];
  os_unfair_lock_unlock(&self->_zoomLock);
  return factor;
}

- (void)rampToVideoZoomFactor:(float)factor withRampType:(int)type rate:(float)rate duration:(double)duration snapToTargetZoomFactorWithinRampFraction:(float)fraction rampTuning:(int)tuning earlySwitchOverScaleFactorForZoomIn:(float)in allowableMinimumDigitalZoomFactorDuringZoomOut:(float)self0 commandID:(int)self1
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_rampStartTime = self->_lastFramePTSes[0];
  lastRequestedZoomFactor = self->_lastRequestedZoomFactor;
  rampCurrentVelocity = self->_rampCurrentVelocity;
  self->_rampStartFactor = lastRequestedZoomFactor;
  self->_rampStartVelocity = rampCurrentVelocity;
  self->_rampTargetFactor = factor;
  self->_rampCommandID = d;
  self->_rampZoomFactorOfInterest = 0.0;
  self->_rampType = type;
  self->_rampTuning = tuning;
  self->_earlySwitchOverScaleFactorForZoomIn = in;
  self->_allowableMinimumDigitalZoomFactorDuringZoomOut = out;
  switch(type)
  {
    case 3:
      self->_rampTargetVelocity = 0.0;
      self->_rampDuration = duration;
      self->_rampSnapFraction = fraction;
      *&self->_springRampTension = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(lastRequestedZoomFactor < factor), 0x1FuLL)), 0x41A8000042B80000, 0x41B8000043070000);
      self->_springRampStartFrameDelayAt30fps = 1;
      break;
    case 2:
      self->_rampTargetVelocity = 0.0;
      self->_rampDuration = duration;
      self->_rampSnapFraction = fraction;
      break;
    case 1:
      v23 = fabsf(rate);
      if (lastRequestedZoomFactor >= factor)
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

- (void)rampToVideoZoomFactor:(float)factor usingSpringWithTension:(float)tension friction:(float)friction snapFraction:(float)fraction rampTuning:(int)tuning earlySwitchOverScaleFactorForZoomIn:(float)in allowableMinimumDigitalZoomFactorDuringZoomOut:(float)out rampStartFrameDelayAt30fps:(int)self0 commandID:(int)self1
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_rampStartTime = self->_lastFramePTSes[0];
  rampCurrentVelocity = self->_rampCurrentVelocity;
  self->_rampStartFactor = self->_lastRequestedZoomFactor;
  self->_rampStartVelocity = rampCurrentVelocity;
  self->_rampTargetFactor = factor;
  self->_rampZoomFactorOfInterest = 0.0;
  self->_rampType = 3;
  self->_rampTuning = tuning;
  self->_rampTargetVelocity = 0.0;
  self->_rampCommandID = d;
  self->_rampSnapFraction = fraction;
  self->_springRampTension = tension;
  self->_springRampFriction = friction;
  self->_earlySwitchOverScaleFactorForZoomIn = in;
  self->_allowableMinimumDigitalZoomFactorDuringZoomOut = out;
  self->_springRampStartFrameDelayAt30fps = at30fps;

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (void)updateISPZoomDelay:(unsigned int)delay
{
  os_unfair_lock_lock(&self->_zoomLock);
  [(BWZoomDelayBuffer *)self->_zoomDelayBuffer updateZoomDelay:delay];

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)predictRampZoomFactorAfterNumberOfFrames:(int)frames settingZoomFactorOfInterest:(float)interest
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
    CMTimeMultiply(&lhs, &time, frames);
    time = self->_lastFramePTSes[0];
    CMTimeAdd(&v28, &time, &lhs);
    lhs = v28;
    v11 = [BWZoomCommandHandler _zoomFactorForRampAtPTS:&lhs updateCurrentZoomRampState:?];
    v9 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:v12, v13, v14, v15, v16, v17, v18, v11];
    if (interest != 0.0 && self->_rampZoomFactorOfInterest == 0.0)
    {
      [(BWZoomCommandHandler *)self predictRampZoomFactorAfterNumberOfFrames:v19 settingZoomFactorOfInterest:v20, v21, v22, v23, v24, interest, v9];
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

- (float)updateZoomModelForNextFrameWithPTS:(id *)s captureID:(int)d
{
  os_unfair_lock_lock(&self->_zoomLock);
  if (!self || d == -1 || (lastFrameCaptureID = self->_lastFrameCaptureID, v14 = __OFSUB__(lastFrameCaptureID, d), v15 = lastFrameCaptureID - d, (v15 < 0) ^ v14) || (v16 = 0.0, v15 >= 1000))
  {
    v18 = *&s->var0;
    var3 = s->var3;
    v16 = [(BWZoomCommandHandler *)self _updateZoomModelForNextFrameWithPTS:v7, v8, v9, v10, v11, v12];
    self->_lastFrameCaptureID = d;
  }

  os_unfair_lock_unlock(&self->_zoomLock);
  return v16;
}

- (void)updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)factor
{
  v9 = 0;
  os_unfair_lock_lock(&self->_zoomLock);
  [(BWZoomCommandHandler *)self _updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:factor zoomFactorChangedOut:?];
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

- (float)updateZoomModelAndAppliedZoomFactorForNextFrameWithPTS:(id *)s captureID:(int)d delayedISPAppliedZoomFactor:(float)factor
{
  v26 = 0;
  os_unfair_lock_lock(&self->_zoomLock);
  if (!self || d == -1 || (lastFrameCaptureID = self->_lastFrameCaptureID, v16 = __OFSUB__(lastFrameCaptureID, d), v17 = lastFrameCaptureID - d, (v17 < 0) ^ v16) || v17 >= 1000)
  {
    v24 = *&s->var0;
    var3 = s->var3;
    v19 = [(BWZoomCommandHandler *)self _updateZoomModelForNextFrameWithPTS:v9, v10, v11, v12, v13, v14];
    [(BWZoomCommandHandler *)self _updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:factor zoomFactorChangedOut:?];
    v18 = v20;
    self->_lastFrameCaptureID = d;
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

- (float)_applyFudgeToZoomFactor:(uint64_t)factor
{
  if (!self)
  {
    return 0.0;
  }

  v10 = *(self + 208);
  v11 = OUTLINED_FUNCTION_2_0(self, a2, factor, a4, a5, a6, a7, a8, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0);
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
        lowerBound = [v15 lowerBound];
        if (v24 <= a9)
        {
          lowerBound = [v15 upperBound];
          if (*&v25 >= a9)
          {
            *&v25 = a9;
            [v15 applyFudgeToZoomFactor:v25];
            return v26;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_2_0(lowerBound, v17, v18, v19, v20, v21, v22, v23, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return a9;
}

- (float)applyFudgeToZoomFactor:(float)factor
{
  os_unfair_lock_lock(&self->_zoomLock);
  v12 = OUTLINED_FUNCTION_4_87(v4, v5, v6, v7, v8, v9, v10, v11);
  os_unfair_lock_unlock(&self->_zoomLock);
  return v12;
}

- (float)_removeFudgeFromZoomFactor:(uint64_t)factor
{
  if (!self)
  {
    return 0.0;
  }

  v10 = *(self + 208);
  v11 = OUTLINED_FUNCTION_2_0(self, a2, factor, a4, a5, a6, a7, a8, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0);
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
        fudgedLowerBound = [v15 fudgedLowerBound];
        if (v24 <= a9)
        {
          fudgedLowerBound = [v15 fudgedUpperBound];
          if (*&v25 >= a9)
          {
            *&v25 = a9;
            [v15 removeFudgeFromZoomFactor:v25];
            return v26;
          }
        }
      }

      v12 = OUTLINED_FUNCTION_2_0(fudgedLowerBound, v17, v18, v19, v20, v21, v22, v23, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return a9;
}

- (void)setTypicalISPZoomDelay:(unsigned int)delay maxISPZoomDelay:(unsigned int)zoomDelay clientCanCompensateForDelay:(BOOL)forDelay
{
  forDelayCopy = forDelay;
  self->_clientCanCompensateForDelay = forDelay;
  os_unfair_lock_lock(&self->_zoomLock);
  v9 = self->_rampTargetVelocity != 0.0 || self->_rampCurrentVelocity != 0.0;
  self->_rampActive = v9;

  v10 = [[BWZoomDelayBuffer alloc] initWithMaxZoomDelay:zoomDelay currentZoomDelay:delay];
  self->_zoomDelayBuffer = v10;
  if (forDelayCopy)
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

    rampActive = 2 * (delay != 0);
  }

  v10->_operatingMode = rampActive;
LABEL_10:

  os_unfair_lock_unlock(&self->_zoomLock);
}

- (float)_zoomFactorForRampAtPTS:(uint64_t)s updateCurrentZoomRampState:(uint64_t)state
{
  v2 = 0.0;
  if (s)
  {
    if (*(state + 12))
    {
      time1 = *state;
      v31 = *(s + 120);
      if (CMTimeCompare(&time1, &v31) >= 1)
      {
        v4 = *(s + 172);
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

- (float)_updateZoomModelForNextFrameWithPTS:(uint64_t)s
{
  if (!self)
  {
    return 0.0;
  }

  *(self + 80) = *(self + 56);
  *(self + 96) = *(self + 72);
  v9 = *(a2 + 16);
  *(self + 56) = *a2;
  *(self + 72) = v9;
  if (*(self + 160) == 0.0 && *(self + 196) == 0.0 && *(self + 184) == 0.0 && !*(self + 164))
  {
    v10 = 0;
    v11 = *(self + 156);
  }

  else
  {
    v23 = *a2;
    v24 = *(a2 + 16);
    v12 = [BWZoomCommandHandler _zoomFactorForRampAtPTS:self updateCurrentZoomRampState:&v23];
    if (v12 >= 1.0 && v12 != *(self + 16))
    {
      *(self + 16) = v12;
      *(self + 20) = 0;
      *(self + 112) = FigGetUpTimeNanoseconds() / 0xF4240uLL;
    }

    v10 = *(self + 164);
    v13 = *(self + 156);
    v11 = LODWORD(v13);
    if (v12 == v13 || *(self + 160) == 0.0 && *(self + 196) == 0.0)
    {
      v10 |= 0x100000000uLL;
      *(self + 160) = 0;
      *(self + 196) = 0;
      *(self + 184) = 0;
      *(self + 176) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(self + 240) = _D0;
      *(self + 248) = 0;
    }

    else if ((*(self + 168) & 1) == 0)
    {
      if (*(self + 32) == 1)
      {
        v19 = *(self + 24);
        if (v19)
        {
          *(v19 + 32) = 1;
        }
      }

      *(self + 168) = 1;
    }
  }

  v20 = *(self + 16);
  v21 = 0.0;
  if ((*(self + 20) & 1) == 0)
  {
    v21 = [(BWZoomCommandHandler *)self _applyFudgeToZoomFactor:a2, s, a4, a5, a6, a7, a8, *(self + 16)];
    *(self + 20) = 1;
  }

  [(BWZoomDelayBuffer *)*(self + 24) addZoomRequest:v10];
  return v21;
}

- (uint64_t)_updateAppliedZoomFactorForDelayedISPAppliedZoomFactor:(float)factor zoomFactorChangedOut:
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 24);
    result = [(BWZoomDelayBuffer *)v5 zoomRequestForISPAppliedZoomFactor:factor earlySwitchOverScaleFactorForZoomIn:*(result + 240)];
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

- (float)_zoomFactorForDurationBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state
{
  if (!self)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(self, a2, s, state, a5, a6, a7, a8, v30, v31, v32, v33, v34, time.value);
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

- (float)_zoomFactorForRateBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state
{
  if (!self)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(self, a2, s, state, a5, a6, a7, a8, v42, v43, v44, v45, v46, time.value);
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

- (float)_zoomFactorForSpringBasedRampAtPTS:(int)s updateCurrentZoomRampState:(int)state
{
  if (!self)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_0_112(self, a2, s, state, a5, a6, a7, a8, v36, v37, v38, v39, v40, time.value);
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
        output = [(BWSpringSimulation *)v15 output];
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
      OUTLINED_FUNCTION_4_87(output, v20, v21, v22, v23, v24, v25, v26);
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
  output = [(BWSpringSimulation *)v15 isCompleted];
  if (output)
  {
    goto LABEL_11;
  }

  output = [(BWSpringSimulation *)v15 output];
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