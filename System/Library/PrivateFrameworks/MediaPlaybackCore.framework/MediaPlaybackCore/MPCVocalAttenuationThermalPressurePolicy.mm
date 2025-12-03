@interface MPCVocalAttenuationThermalPressurePolicy
- (MPCVocalAttenuationPolicyDelegate)delegate;
- (MPCVocalAttenuationThermalPressurePolicy)initWithCalloutQueue:(id)queue delegate:(id)delegate;
- (MPCVocalAttenuationThermalPressurePolicy)initWithThermalMonitor:(id)monitor calloutQueue:(id)queue delegate:(id)delegate;
- (id)evaluation;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)thermalStateDidChange:(int64_t)change;
- (void)updateEvaluationWithReason:(id)reason;
@end

@implementation MPCVocalAttenuationThermalPressurePolicy

- (MPCVocalAttenuationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEvaluationWithReason:(id)reason
{
  reasonCopy = reason;
  evaluation = [(MPCVocalAttenuationThermalPressurePolicy *)self evaluation];
  explanation = [evaluation explanation];
  reasonCopy = [explanation stringByAppendingFormat:@" [%@]", reasonCopy];

  [evaluation setExplanation:reasonCopy];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPCVocalAttenuationThermalPressurePolicy_updateEvaluationWithReason___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v11 = evaluation;
  v9 = evaluation;
  dispatch_async(calloutQueue, block);
}

void __71__MPCVocalAttenuationThermalPressurePolicy_updateEvaluationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicy:*(a1 + 32) didChangeEvaluation:*(a1 + 40)];
}

- (void)thermalStateDidChange:(int64_t)change
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_dataLock);
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentThermalLevel = self->_currentThermalLevel;
    v14 = 138543874;
    selfCopy4 = self;
    v16 = 2048;
    v17 = currentThermalLevel;
    v18 = 2048;
    changeCopy2 = change;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure level changed: %ld -> %ld", &v14, 0x20u);
  }

  if (![(MPCVocalAttenuationThermalPressurePolicy *)self shouldDisableVocalAttenuation])
  {
    if (self->_cutoffThermalLevel <= change)
    {
      v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        cutoffThermalLevel = self->_cutoffThermalLevel;
        v14 = 138543618;
        selfCopy4 = self;
        v16 = 2048;
        v17 = cutoffThermalLevel;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure >= %ld: disabling vocal attenuation", &v14, 0x16u);
      }

      v9 = 1;
      goto LABEL_13;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_14;
  }

  if (self->_reenablementThermalLevel < change)
  {
    goto LABEL_9;
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    reenablementThermalLevel = self->_reenablementThermalLevel;
    v14 = 138543618;
    selfCopy4 = self;
    v16 = 2048;
    v17 = reenablementThermalLevel;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure < %ld: allowing vocal attenuation", &v14, 0x16u);
  }

  v9 = 0;
LABEL_13:

  self->_disableVocalAttenuation = v9;
  v10 = 1;
LABEL_14:
  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_currentThermalLevel;
    v14 = 138543874;
    selfCopy4 = self;
    v16 = 2048;
    v17 = v13;
    v18 = 2048;
    changeCopy2 = change;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Thermal pressure level changed: %ld -> %ld", &v14, 0x20u);
  }

  self->_currentThermalLevel = change;
  os_unfair_lock_unlock(&self->_dataLock);
  if (v10)
  {
    [(MPCVocalAttenuationThermalPressurePolicy *)self updateEvaluationWithReason:@"value changed"];
  }
}

- (void)environmentMonitorDidChangeThermalLevel:(id)level
{
  thermalMonitor = [(MPCVocalAttenuationThermalPressurePolicy *)self thermalMonitor];
  -[MPCVocalAttenuationThermalPressurePolicy thermalStateDidChange:](self, "thermalStateDidChange:", [thermalMonitor currentThermalPressureLevel]);
}

- (id)evaluation
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = objc_opt_new();
  [v3 setDisableVocalAttenuation:{-[MPCVocalAttenuationThermalPressurePolicy shouldDisableVocalAttenuation](self, "shouldDisableVocalAttenuation")}];
  v4 = MEMORY[0x1E696AEC0];
  shouldDisableVocalAttenuation = [(MPCVocalAttenuationThermalPressurePolicy *)self shouldDisableVocalAttenuation];
  v6 = @"off";
  if (shouldDisableVocalAttenuation)
  {
    v6 = @"on";
  }

  v7 = [v4 stringWithFormat:@"Thermal pressure policy %@ [level:%ld]", v6, self->_currentThermalLevel];
  [v3 setExplanation:v7];

  [v3 setCanBeOverriden:0];
  [v3 setPolicyType:{-[MPCVocalAttenuationThermalPressurePolicy type](self, "type")}];
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (MPCVocalAttenuationThermalPressurePolicy)initWithThermalMonitor:(id)monitor calloutQueue:(id)queue delegate:(id)delegate
{
  monitorCopy = monitor;
  queueCopy = queue;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MPCVocalAttenuationThermalPressurePolicy;
  v12 = [(MPCVocalAttenuationThermalPressurePolicy *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 0;
    objc_storeStrong(&v12->_thermalMonitor, monitor);
    [(ICEnvironmentMonitor *)v13->_thermalMonitor registerObserver:v13];
    objc_storeStrong(&v13->_calloutQueue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    currentThermalPressureLevel = [(ICEnvironmentMonitor *)v13->_thermalMonitor currentThermalPressureLevel];
    v13->_currentThermalLevel = currentThermalPressureLevel;
    *&v13->_cutoffThermalLevel = xmmword_1C60451C0;
    v13->_disableVocalAttenuation = 0;
    v13->_dataLock._os_unfair_lock_opaque = 0;
    [(MPCVocalAttenuationThermalPressurePolicy *)v13 thermalStateDidChange:currentThermalPressureLevel];
  }

  return v13;
}

- (MPCVocalAttenuationThermalPressurePolicy)initWithCalloutQueue:(id)queue delegate:(id)delegate
{
  v6 = MEMORY[0x1E69E4428];
  delegateCopy = delegate;
  queueCopy = queue;
  sharedMonitor = [v6 sharedMonitor];
  v10 = [(MPCVocalAttenuationThermalPressurePolicy *)self initWithThermalMonitor:sharedMonitor calloutQueue:queueCopy delegate:delegateCopy];

  return v10;
}

@end