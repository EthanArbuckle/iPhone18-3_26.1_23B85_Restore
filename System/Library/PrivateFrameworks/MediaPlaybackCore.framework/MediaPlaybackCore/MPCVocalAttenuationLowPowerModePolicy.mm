@interface MPCVocalAttenuationLowPowerModePolicy
- (MPCVocalAttenuationLowPowerModePolicy)initWithCalloutQueue:(id)queue delegate:(id)delegate;
- (MPCVocalAttenuationLowPowerModePolicy)initWithPowerModeMonitor:(id)monitor calloutQueue:(id)queue delegate:(id)delegate;
- (MPCVocalAttenuationPolicyDelegate)delegate;
- (id)evaluation;
- (void)powerModeDidChange:(BOOL)change;
- (void)processInfoPowerStateDidChange:(id)change;
- (void)updateEvaluationWithReason:(id)reason;
@end

@implementation MPCVocalAttenuationLowPowerModePolicy

- (MPCVocalAttenuationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEvaluationWithReason:(id)reason
{
  reasonCopy = reason;
  evaluation = [(MPCVocalAttenuationLowPowerModePolicy *)self evaluation];
  explanation = [evaluation explanation];
  reasonCopy = [explanation stringByAppendingFormat:@" [%@]", reasonCopy];

  [evaluation setExplanation:reasonCopy];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPCVocalAttenuationLowPowerModePolicy_updateEvaluationWithReason___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v11 = evaluation;
  v9 = evaluation;
  dispatch_async(calloutQueue, block);
}

void __68__MPCVocalAttenuationLowPowerModePolicy_updateEvaluationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicy:*(a1 + 32) didChangeEvaluation:*(a1 + 40)];
}

- (void)powerModeDidChange:(BOOL)change
{
  changeCopy = change;
  v14 = *MEMORY[0x1E69E9840];
  if ([(MPCVocalAttenuationLowPowerModePolicy *)self isLowPowerModeEnabled]!= change)
  {
    [(MPCVocalAttenuationLowPowerModePolicy *)self setLowPowerModeEnabled:changeCopy];
    [(MPCVocalAttenuationLowPowerModePolicy *)self setDisableVocalAttenuation:changeCopy];
    [(MPCVocalAttenuationLowPowerModePolicy *)self updateEvaluationWithReason:@"value changed"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      evaluation = [(MPCVocalAttenuationLowPowerModePolicy *)self evaluation];
      explanation = [evaluation explanation];
      v8 = 138543874;
      selfCopy = self;
      v10 = 2114;
      v11 = explanation;
      v12 = 1024;
      shouldDisableVocalAttenuation = [(MPCVocalAttenuationLowPowerModePolicy *)self shouldDisableVocalAttenuation];
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - %{public}@ - _disableVocalAttenuation=%{BOOL}u", &v8, 0x1Cu);
    }
  }
}

- (void)processInfoPowerStateDidChange:(id)change
{
  isLowPowerModeEnabled = [(NSProcessInfo *)self->_powerMonitor isLowPowerModeEnabled];

  [(MPCVocalAttenuationLowPowerModePolicy *)self powerModeDidChange:isLowPowerModeEnabled];
}

- (id)evaluation
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = objc_opt_new();
  [v3 setDisableVocalAttenuation:{-[MPCVocalAttenuationLowPowerModePolicy shouldDisableVocalAttenuation](self, "shouldDisableVocalAttenuation")}];
  v4 = MEMORY[0x1E696AEC0];
  shouldDisableVocalAttenuation = [(MPCVocalAttenuationLowPowerModePolicy *)self shouldDisableVocalAttenuation];
  v6 = @"off";
  if (shouldDisableVocalAttenuation)
  {
    v6 = @"on";
  }

  v7 = [v4 stringWithFormat:@"Low power mode policy %@", v6];
  [v3 setExplanation:v7];

  [v3 setCanBeOverriden:1];
  [v3 setPolicyType:{-[MPCVocalAttenuationLowPowerModePolicy type](self, "type")}];
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (MPCVocalAttenuationLowPowerModePolicy)initWithPowerModeMonitor:(id)monitor calloutQueue:(id)queue delegate:(id)delegate
{
  monitorCopy = monitor;
  queueCopy = queue;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MPCVocalAttenuationLowPowerModePolicy;
  v12 = [(MPCVocalAttenuationLowPowerModePolicy *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 1;
    objc_storeStrong(&v12->_powerMonitor, monitor);
    objc_storeStrong(&v13->_calloutQueue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_disableVocalAttenuation = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

    v13->_dataLock._os_unfair_lock_opaque = 0;
    [(MPCVocalAttenuationLowPowerModePolicy *)v13 powerModeDidChange:[(NSProcessInfo *)v13->_powerMonitor isLowPowerModeEnabled]];
  }

  return v13;
}

- (MPCVocalAttenuationLowPowerModePolicy)initWithCalloutQueue:(id)queue delegate:(id)delegate
{
  v6 = MEMORY[0x1E696AE30];
  delegateCopy = delegate;
  queueCopy = queue;
  processInfo = [v6 processInfo];
  v10 = [(MPCVocalAttenuationLowPowerModePolicy *)self initWithPowerModeMonitor:processInfo calloutQueue:queueCopy delegate:delegateCopy];

  return v10;
}

@end