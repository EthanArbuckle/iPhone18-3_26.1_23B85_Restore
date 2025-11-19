@interface MPCVocalAttenuationLowPowerModePolicy
- (MPCVocalAttenuationLowPowerModePolicy)initWithCalloutQueue:(id)a3 delegate:(id)a4;
- (MPCVocalAttenuationLowPowerModePolicy)initWithPowerModeMonitor:(id)a3 calloutQueue:(id)a4 delegate:(id)a5;
- (MPCVocalAttenuationPolicyDelegate)delegate;
- (id)evaluation;
- (void)powerModeDidChange:(BOOL)a3;
- (void)processInfoPowerStateDidChange:(id)a3;
- (void)updateEvaluationWithReason:(id)a3;
@end

@implementation MPCVocalAttenuationLowPowerModePolicy

- (MPCVocalAttenuationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateEvaluationWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MPCVocalAttenuationLowPowerModePolicy *)self evaluation];
  v6 = [v5 explanation];
  v7 = [v6 stringByAppendingFormat:@" [%@]", v4];

  [v5 setExplanation:v7];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MPCVocalAttenuationLowPowerModePolicy_updateEvaluationWithReason___block_invoke;
  block[3] = &unk_1E82392C0;
  block[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(calloutQueue, block);
}

void __68__MPCVocalAttenuationLowPowerModePolicy_updateEvaluationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicy:*(a1 + 32) didChangeEvaluation:*(a1 + 40)];
}

- (void)powerModeDidChange:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  if ([(MPCVocalAttenuationLowPowerModePolicy *)self isLowPowerModeEnabled]!= a3)
  {
    [(MPCVocalAttenuationLowPowerModePolicy *)self setLowPowerModeEnabled:v3];
    [(MPCVocalAttenuationLowPowerModePolicy *)self setDisableVocalAttenuation:v3];
    [(MPCVocalAttenuationLowPowerModePolicy *)self updateEvaluationWithReason:@"value changed"];
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MPCVocalAttenuationLowPowerModePolicy *)self evaluation];
      v7 = [v6 explanation];
      v8 = 138543874;
      v9 = self;
      v10 = 2114;
      v11 = v7;
      v12 = 1024;
      v13 = [(MPCVocalAttenuationLowPowerModePolicy *)self shouldDisableVocalAttenuation];
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - %{public}@ - _disableVocalAttenuation=%{BOOL}u", &v8, 0x1Cu);
    }
  }
}

- (void)processInfoPowerStateDidChange:(id)a3
{
  v4 = [(NSProcessInfo *)self->_powerMonitor isLowPowerModeEnabled];

  [(MPCVocalAttenuationLowPowerModePolicy *)self powerModeDidChange:v4];
}

- (id)evaluation
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = objc_opt_new();
  [v3 setDisableVocalAttenuation:{-[MPCVocalAttenuationLowPowerModePolicy shouldDisableVocalAttenuation](self, "shouldDisableVocalAttenuation")}];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MPCVocalAttenuationLowPowerModePolicy *)self shouldDisableVocalAttenuation];
  v6 = @"off";
  if (v5)
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

- (MPCVocalAttenuationLowPowerModePolicy)initWithPowerModeMonitor:(id)a3 calloutQueue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MPCVocalAttenuationLowPowerModePolicy;
  v12 = [(MPCVocalAttenuationLowPowerModePolicy *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 1;
    objc_storeStrong(&v12->_powerMonitor, a3);
    objc_storeStrong(&v13->_calloutQueue, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v13->_disableVocalAttenuation = 0;
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v13 selector:sel_processInfoPowerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

    v13->_dataLock._os_unfair_lock_opaque = 0;
    [(MPCVocalAttenuationLowPowerModePolicy *)v13 powerModeDidChange:[(NSProcessInfo *)v13->_powerMonitor isLowPowerModeEnabled]];
  }

  return v13;
}

- (MPCVocalAttenuationLowPowerModePolicy)initWithCalloutQueue:(id)a3 delegate:(id)a4
{
  v6 = MEMORY[0x1E696AE30];
  v7 = a4;
  v8 = a3;
  v9 = [v6 processInfo];
  v10 = [(MPCVocalAttenuationLowPowerModePolicy *)self initWithPowerModeMonitor:v9 calloutQueue:v8 delegate:v7];

  return v10;
}

@end