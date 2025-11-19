@interface FBApplicationProcessWatchdogPolicy
+ (double)_defaultFirstPartyAdditionalScale;
+ (double)_defaultLaunchScale;
+ (double)_defaultResumeScale;
+ (double)_scaleForGestaltKey:(__CFString *)a3;
+ (id)defaultPolicy;
- (FBApplicationProcessWatchdogPolicy)init;
- (double)_queue_watchdogScalingFactorForAppInfo:(id)a3 isResume:(BOOL)a4;
- (id)watchdogPolicyForProcess:(id)a3 eventContext:(id)a4;
- (void)_queue_reloadDefaultSettings;
- (void)dealloc;
@end

@implementation FBApplicationProcessWatchdogPolicy

+ (id)defaultPolicy
{
  if (defaultPolicy_onceToken != -1)
  {
    +[FBApplicationProcessWatchdogPolicy defaultPolicy];
  }

  v3 = defaultPolicy___DefaultPolicy;

  return v3;
}

void __51__FBApplicationProcessWatchdogPolicy_defaultPolicy__block_invoke()
{
  v0 = objc_alloc_init(FBApplicationProcessWatchdogPolicy);
  v1 = defaultPolicy___DefaultPolicy;
  defaultPolicy___DefaultPolicy = v0;
}

- (FBApplicationProcessWatchdogPolicy)init
{
  v20.receiver = self;
  v20.super_class = FBApplicationProcessWatchdogPolicy;
  v2 = [(FBApplicationProcessWatchdogPolicy *)&v20 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(v2 + 8) = _Q0;
    *(v2 + 3) = 0x3FF0000000000000;
    v2[32] = 0;
    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;

    v11 = v3->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__FBApplicationProcessWatchdogPolicy_init__block_invoke;
    block[3] = &unk_1E783B580;
    v12 = v3;
    v19 = v12;
    dispatch_async(v11, block);
    objc_initWeak(&location, v12);
    v13 = v3->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__FBApplicationProcessWatchdogPolicy_init__block_invoke_2;
    handler[3] = &unk_1E783C998;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch("com.apple.da.tasking_changed", v12 + 9, v13, handler);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_queue_reloadDefaultSettings
{
  [objc_opt_class() _defaultLaunchScale];
  self->_deviceLaunchScale = v3;
  [objc_opt_class() _defaultResumeScale];
  self->_deviceResumeScale = v4;
  [objc_opt_class() _defaultFirstPartyAdditionalScale];
  self->_additionalFirstPartyScale = v5;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  self->_enableThirdPartyPre9 = [v6 BOOLForKey:@"FBLaunchWatchdogEnableThirdPartyPre9"];

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v10 dictionaryForKey:@"FBLaunchWatchdogExceptions"];
  v8 = [v7 copy];
  watchdogPolicyExceptions = self->_watchdogPolicyExceptions;
  self->_watchdogPolicyExceptions = v8;
}

+ (double)_defaultLaunchScale
{
  if (MEMORY[0x1AC572820]("+[FBApplicationProcessWatchdogPolicy _defaultLaunchScale]", a2))
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 doubleForKey:@"FBLaunchWatchdogScaleOverride"];
    v5 = v4;

    if (v5 > 0.0)
    {
      return v5;
    }
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 doubleForKey:@"FBLaunchWatchdogScale"];
  v5 = v7;

  if (v5 > 0.0)
  {
    return v5;
  }

  [a1 _scaleForGestaltKey:@"emXA9B552rnSoI7xXE91DA"];
  return result;
}

+ (double)_defaultResumeScale
{
  if (MEMORY[0x1AC572820]("+[FBApplicationProcessWatchdogPolicy _defaultResumeScale]", a2))
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 doubleForKey:@"FBLaunchWatchdogResumeScaleOverride"];
    v5 = v4;

    if (v5 > 0.0)
    {
      return v5;
    }
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 doubleForKey:@"FBLaunchWatchdogResumeScale"];
  v5 = v7;

  if (v5 > 0.0)
  {
    return v5;
  }

  [a1 _scaleForGestaltKey:@"QbQzuIbef01P4JeoL9EmKg"];
  return result;
}

+ (double)_defaultFirstPartyAdditionalScale
{
  if (MEMORY[0x1AC572820]("+[FBApplicationProcessWatchdogPolicy _defaultFirstPartyAdditionalScale]", a2))
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 doubleForKey:@"FBLaunchWatchdogFirstPartyScaleOverride"];
    v5 = v4;

    if (v5 > 0.0)
    {
      return v5;
    }
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 doubleForKey:@"FBLaunchWatchdogFirstPartyScale"];
  v5 = v7;

  if (v5 > 0.0)
  {
    return v5;
  }

  [a1 _scaleForGestaltKey:@"NUYAz1eq3Flzt7ZQxXC/ng"];
  return result;
}

void __42__FBApplicationProcessWatchdogPolicy_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_reloadDefaultSettings];
}

- (void)dealloc
{
  daNotificationToken = self->_daNotificationToken;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FBApplicationProcessWatchdogPolicy_dealloc__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v7 = daNotificationToken;
  dispatch_sync(queue, block);
  v5.receiver = self;
  v5.super_class = FBApplicationProcessWatchdogPolicy;
  [(FBApplicationProcessWatchdogPolicy *)&v5 dealloc];
}

+ (double)_scaleForGestaltKey:(__CFString *)a3
{
  v3 = 1.0;
  if (BSSystemHasCapability())
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      [v4 doubleValue];
      v3 = v5;
    }

    fbs_release();
  }

  return v3;
}

- (double)_queue_watchdogScalingFactorForAppInfo:(id)a3 isResume:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 type];
    if ([v7 type] == 2 && !self->_enableThirdPartyPre9)
    {
      v9 = 1.0;
      if (![v7 builtOnOrAfterSDKVersion:@"10.0"] || !v8)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
      v9 = 1.0;
      goto LABEL_15;
    }

    v11 = 8;
    if (v4)
    {
      v11 = 16;
    }

    v9 = *(&self->super.isa + v11);
    if ([v7 type] == 1)
    {
      v9 = v9 * self->_additionalFirstPartyScale;
    }
  }

  else
  {
    v10 = 8;
    if (v4)
    {
      v10 = 16;
    }

    v9 = *(&self->super.isa + v10);
  }

LABEL_15:

  return v9;
}

- (id)watchdogPolicyForProcess:(id)a3 eventContext:(id)a4
{
  v56[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 event];
  if (([v6 isApplicationProcess] & 1) == 0 && v8 == 1)
  {
    v9 = [v6 executionContext];
    v10 = [v9 forSceneActivation];

    if (!v10)
    {
      v16 = 0;
      goto LABEL_38;
    }

    v11 = [v6 applicationInfo];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0xBFF0000000000000;
    goto LABEL_8;
  }

  v11 = [v6 applicationInfo];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0xBFF0000000000000;
  if ((v8 - 2) < 2)
  {
    v13 = [v7 sceneSettings];
    v17 = [v13 isForeground];
    v18 = [v7 sceneUpdateContext];
    v19 = [v18 settingsDiff];
    v20 = [v19 containsProperty:sel_isForeground];

    if ((v17 | v20))
    {
      v52[3] = 10.0;
    }

    else
    {
      v24 = [v7 sceneTransitionContext];
      v25 = [v24 allowCPUThrottling];

      if ((v25 & 1) == 0)
      {
        v52[3] = 30.0;
      }

      v26 = [MEMORY[0x1E696AE30] processInfo];
      v27 = [v26 thermalState];

      v28 = 1.0;
      if ((v27 - 1) < 3)
      {
        v28 = dbl_1A8A72058[v27 - 1];
      }

      v52[3] = v28 * v52[3];
    }

    v12 = -1.0;
    if (v17)
    {
      queue = self->_queue;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __76__FBApplicationProcessWatchdogPolicy_watchdogPolicyForProcess_eventContext___block_invoke_2;
      v45[3] = &unk_1E783BFC0;
      v47 = &v51;
      v45[4] = self;
      v11 = v11;
      v46 = v11;
      dispatch_sync(queue, v45);
    }

    goto LABEL_28;
  }

  if (v8 == 4)
  {
    v13 = [v7 sceneTransitionContext];
    v21 = [v13 _uiApplicationSceneTransitionContextShim];
    v22 = v21;
    if (v21 && ([v21 waitForBackgroundTaskCompletion] & 1) != 0)
    {
      v23 = 60.0;
    }

    else
    {
      v23 = 5.0;
    }

    v52[3] = v23;

    v12 = -1.0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = -1.0;
  if (v8 == 1)
  {
LABEL_8:
    v13 = [v6 executionContext];
    v14 = [v13 launchIntent];
    v12 = -1.0;
    if ((v14 - 3) >= 3)
    {
      if (v14 == 2)
      {
        v52[3] = 30.0;
        v12 = 10.0;
      }
    }

    else
    {
      v52[3] = 20.0;
      if ((v14 - 3) <= 1)
      {
        v15 = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__FBApplicationProcessWatchdogPolicy_watchdogPolicyForProcess_eventContext___block_invoke;
        block[3] = &unk_1E783BFC0;
        v50 = &v51;
        block[4] = self;
        v11 = v11;
        v49 = v11;
        dispatch_sync(v15, block);
      }
    }

    goto LABEL_28;
  }

LABEL_29:
  watchdogPolicyExceptions = self->_watchdogPolicyExceptions;
  v31 = [v6 bundleIdentifier];
  v32 = [(NSDictionary *)watchdogPolicyExceptions objectForKey:v31];

  if (v32)
  {
    [v32 doubleValue];
    v52[3] = v33 + v52[3];
  }

  if (v52[3] <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v34 = MEMORY[0x1E699FBA8];
    FBSProcessResourceAllowanceMakeWithRealTimeInterval();
    v35 = [v34 provisionWithAllowance:v44];
    v36 = v35;
    if (v12 <= 0.0)
    {
      v41 = MEMORY[0x1E699FBB8];
      v55 = v35;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v16 = [v41 policyWithProvisions:v38];
    }

    else
    {
      v37 = MEMORY[0x1E699FBA8];
      FBSProcessResourceAllowanceMakeWithScheduledTimeInterval();
      v38 = [v37 provisionWithAllowance:v44];
      v39 = MEMORY[0x1E699FBB8];
      v56[0] = v36;
      v56[1] = v38;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      v16 = [v39 policyWithProvisions:v40];
    }
  }

  _Block_object_dispose(&v51, 8);
LABEL_38:

  v42 = *MEMORY[0x1E69E9840];

  return v16;
}

double __76__FBApplicationProcessWatchdogPolicy_watchdogPolicyForProcess_eventContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_watchdogScalingFactorForAppInfo:*(a1 + 40) isResume:0];
  v2 = *(*(a1 + 48) + 8);
  result = v3 * *(v2 + 24);
  *(v2 + 24) = result;
  return result;
}

double __76__FBApplicationProcessWatchdogPolicy_watchdogPolicyForProcess_eventContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _queue_watchdogScalingFactorForAppInfo:*(a1 + 40) isResume:1];
  v2 = *(*(a1 + 48) + 8);
  result = v3 * *(v2 + 24);
  *(v2 + 24) = result;
  return result;
}

@end