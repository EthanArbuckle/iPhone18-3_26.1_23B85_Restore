@interface MPCVocalAttenuationPerformancePolicy
- (MPCVocalAttenuationPerformancePolicy)initWithPerformanceLimit:(double)limit calloutQueue:(id)queue delegate:(id)delegate;
- (MPCVocalAttenuationPolicyDelegate)delegate;
- (id)evaluation;
- (void)processSample:(double)sample;
- (void)reset;
- (void)updateEvaluationWithReason:(id)reason;
@end

@implementation MPCVocalAttenuationPerformancePolicy

- (MPCVocalAttenuationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEvaluationWithReason:(id)reason
{
  reasonCopy = reason;
  evaluation = [(MPCVocalAttenuationPerformancePolicy *)self evaluation];
  explanation = [evaluation explanation];
  reasonCopy = [explanation stringByAppendingFormat:@" [%@]", reasonCopy];

  [evaluation setExplanation:reasonCopy];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPCVocalAttenuationPerformancePolicy_updateEvaluationWithReason___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v11 = evaluation;
  v9 = evaluation;
  dispatch_async(calloutQueue, block);
}

void __67__MPCVocalAttenuationPerformancePolicy_updateEvaluationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicy:*(a1 + 32) didChangeEvaluation:*(a1 + 40)];
}

- (void)processSample:(double)sample
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543362;
      selfCopy7 = self;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[AP] - %{public}@ - ignoring sample [policy already active]", &v29, 0xCu);
    }

    return;
  }

  os_unfair_lock_lock(&self->_dataLock);
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v8 = v7;

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138543874;
    selfCopy7 = self;
    v31 = 1024;
    *v32 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    *&v32[4] = 2048;
    *&v32[6] = v8;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEBUG, "[AP] - %{public}@ - %{BOOL}u - process sample - %fs", &v29, 0x1Cu);
  }

  [(MPCVocalAttenuationPerformancePolicy *)self performanceLimit];
  if (v10 >= sample)
  {
    goto LABEL_14;
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [(MPCVocalAttenuationPerformancePolicy *)self performanceLimit];
    v13 = v12;
    shouldDisableVocalAttenuation = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    selfCopy7 = self;
    v31 = 2048;
    *v32 = sample;
    *&v32[8] = 2048;
    *&v32[10] = v13;
    v33 = 1024;
    v34 = shouldDisableVocalAttenuation;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Sample over limit [%3.2fms > %3.2fms] - _disableVocalAttenuation=%{BOOL}u", &v29, 0x26u);
  }

  timeOfFirstGlitch = self->_timeOfFirstGlitch;
  if (timeOfFirstGlitch < 0.0)
  {
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      shouldDisableVocalAttenuation2 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
      v29 = 138543618;
      selfCopy7 = self;
      v31 = 1024;
      *v32 = shouldDisableVocalAttenuation2;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - First glitch detected - _disableVocalAttenuation=%{BOOL}u", &v29, 0x12u);
    }

    self->_timeOfFirstGlitch = v8;
    self->_currentNumberOfGlitches = 1;
    goto LABEL_14;
  }

  if (v8 - timeOfFirstGlitch >= self->_timeThreshold)
  {
    self->_timeOfFirstGlitch = v8;
    self->_currentNumberOfGlitches = 1;
    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      currentNumberOfGlitches = self->_currentNumberOfGlitches;
      shouldDisableVocalAttenuation3 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
      v29 = 138543874;
      selfCopy7 = self;
      v31 = 2048;
      *v32 = currentNumberOfGlitches;
      *&v32[8] = 1024;
      *&v32[10] = shouldDisableVocalAttenuation3;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - New glitch after time limit - %ld - _disableVocalAttenuation=%{BOOL}u", &v29, 0x1Cu);
    }

    goto LABEL_14;
  }

  ++self->_currentNumberOfGlitches;
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_currentNumberOfGlitches;
    timeThreshold = self->_timeThreshold;
    shouldDisableVocalAttenuation4 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    selfCopy7 = self;
    v31 = 2048;
    *v32 = v19;
    *&v32[8] = 2048;
    *&v32[10] = timeThreshold;
    v33 = 1024;
    v34 = shouldDisableVocalAttenuation4;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - %ld glitches detected in the last %3.2fms - _disableVocalAttenuation=%{BOOL}u", &v29, 0x26u);
  }

  if ([(MPCVocalAttenuationPerformancePolicy *)self currentNumberOfGlitches]< self->_glitchesThreshold || [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation])
  {
LABEL_14:
    os_unfair_lock_unlock(&self->_dataLock);
    return;
  }

  self->_disableVocalAttenuation = 1;
  v22 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_timeThreshold;
    v24 = self->_currentNumberOfGlitches;
    shouldDisableVocalAttenuation5 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    selfCopy7 = self;
    v31 = 2048;
    *v32 = v23;
    *&v32[8] = 2048;
    *&v32[10] = v24;
    v33 = 1024;
    v34 = shouldDisableVocalAttenuation5;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Too many glitches detected in the last %3.2fms: %ld - Disabling vocal attenuation - _disableVocalAttenuation=%{BOOL}u", &v29, 0x26u);
  }

  os_unfair_lock_unlock(&self->_dataLock);
  [(MPCVocalAttenuationPerformancePolicy *)self updateEvaluationWithReason:@"Too many glitches"];
}

- (id)evaluation
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = objc_opt_new();
  [v3 setDisableVocalAttenuation:{-[MPCVocalAttenuationPerformancePolicy shouldDisableVocalAttenuation](self, "shouldDisableVocalAttenuation")}];
  v4 = MEMORY[0x1E696AEC0];
  shouldDisableVocalAttenuation = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
  v6 = @"off";
  if (shouldDisableVocalAttenuation)
  {
    v6 = @"on";
  }

  v7 = [v4 stringWithFormat:@"Performance policy %@", v6];
  [v3 setExplanation:v7];

  [v3 setCanBeOverriden:1];
  [v3 setPolicyType:{-[MPCVocalAttenuationPerformancePolicy type](self, "type")}];
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (void)reset
{
  if ([(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation])
  {
    os_unfair_lock_lock(&self->_dataLock);
    self->_disableVocalAttenuation = 0;
    self->_timeOfFirstGlitch = -1.0;
    self->_currentNumberOfGlitches = 0;
    os_unfair_lock_unlock(&self->_dataLock);

    [(MPCVocalAttenuationPerformancePolicy *)self updateEvaluationWithReason:@"reset"];
  }
}

- (MPCVocalAttenuationPerformancePolicy)initWithPerformanceLimit:(double)limit calloutQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MPCVocalAttenuationPerformancePolicy;
  v11 = [(MPCVocalAttenuationPerformancePolicy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 2;
    v11->_performanceLimit = limit;
    objc_storeStrong(&v11->_calloutQueue, queue);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_disableVocalAttenuation = 0;
    *&v12->_timeOfFirstGlitch = xmmword_1C60451D0;
    *&v12->_glitchesThreshold = 5;
  }

  return v12;
}

@end