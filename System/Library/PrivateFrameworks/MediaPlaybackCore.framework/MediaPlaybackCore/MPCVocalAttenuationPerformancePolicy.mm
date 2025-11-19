@interface MPCVocalAttenuationPerformancePolicy
- (MPCVocalAttenuationPerformancePolicy)initWithPerformanceLimit:(double)a3 calloutQueue:(id)a4 delegate:(id)a5;
- (MPCVocalAttenuationPolicyDelegate)delegate;
- (id)evaluation;
- (void)processSample:(double)a3;
- (void)reset;
- (void)updateEvaluationWithReason:(id)a3;
@end

@implementation MPCVocalAttenuationPerformancePolicy

- (MPCVocalAttenuationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEvaluationWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MPCVocalAttenuationPerformancePolicy *)self evaluation];
  v6 = [v5 explanation];
  v7 = [v6 stringByAppendingFormat:@" [%@]", v4];

  [v5 setExplanation:v7];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPCVocalAttenuationPerformancePolicy_updateEvaluationWithReason___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(calloutQueue, block);
}

void __67__MPCVocalAttenuationPerformancePolicy_updateEvaluationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicy:*(a1 + 32) didChangeEvaluation:*(a1 + 40)];
}

- (void)processSample:(double)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v29 = 138543362;
      v30 = self;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEBUG, "[AP] - %{public}@ - ignoring sample [policy already active]", &v29, 0xCu);
    }

    return;
  }

  os_unfair_lock_lock(&self->_dataLock);
  v6 = [MEMORY[0x1E696AE30] processInfo];
  [v6 systemUptime];
  v8 = v7;

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = 138543874;
    v30 = self;
    v31 = 1024;
    *v32 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    *&v32[4] = 2048;
    *&v32[6] = v8;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEBUG, "[AP] - %{public}@ - %{BOOL}u - process sample - %fs", &v29, 0x1Cu);
  }

  [(MPCVocalAttenuationPerformancePolicy *)self performanceLimit];
  if (v10 >= a3)
  {
    goto LABEL_14;
  }

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [(MPCVocalAttenuationPerformancePolicy *)self performanceLimit];
    v13 = v12;
    v14 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    v30 = self;
    v31 = 2048;
    *v32 = a3;
    *&v32[8] = 2048;
    *&v32[10] = v13;
    v33 = 1024;
    v34 = v14;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Sample over limit [%3.2fms > %3.2fms] - _disableVocalAttenuation=%{BOOL}u", &v29, 0x26u);
  }

  timeOfFirstGlitch = self->_timeOfFirstGlitch;
  if (timeOfFirstGlitch < 0.0)
  {
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
      v29 = 138543618;
      v30 = self;
      v31 = 1024;
      *v32 = v17;
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
      v28 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
      v29 = 138543874;
      v30 = self;
      v31 = 2048;
      *v32 = currentNumberOfGlitches;
      *&v32[8] = 1024;
      *&v32[10] = v28;
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
    v21 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    v30 = self;
    v31 = 2048;
    *v32 = v19;
    *&v32[8] = 2048;
    *&v32[10] = timeThreshold;
    v33 = 1024;
    v34 = v21;
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
    v25 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
    v29 = 138544130;
    v30 = self;
    v31 = 2048;
    *v32 = v23;
    *&v32[8] = 2048;
    *&v32[10] = v24;
    v33 = 1024;
    v34 = v25;
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
  v5 = [(MPCVocalAttenuationPerformancePolicy *)self shouldDisableVocalAttenuation];
  v6 = @"off";
  if (v5)
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

- (MPCVocalAttenuationPerformancePolicy)initWithPerformanceLimit:(double)a3 calloutQueue:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPCVocalAttenuationPerformancePolicy;
  v11 = [(MPCVocalAttenuationPerformancePolicy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 2;
    v11->_performanceLimit = a3;
    objc_storeStrong(&v11->_calloutQueue, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v12->_disableVocalAttenuation = 0;
    *&v12->_timeOfFirstGlitch = xmmword_1C60451D0;
    *&v12->_glitchesThreshold = 5;
  }

  return v12;
}

@end