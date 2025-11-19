@interface FBProcessWatchdog
- (FBProcessWatchdog)initWithProcess:(id)a3 context:(id)a4 policy:(id)a5;
- (id)_policyDesc;
- (void)_getPolicyWallTime:(double *)a3 cpuTime:(double *)a4;
- (void)activate;
- (void)deactivate;
@end

@implementation FBProcessWatchdog

- (void)activate
{
  if (self->_handle)
  {
    v3 = [[FBProcessCPUStatistics alloc] initWithProcessHandle:self->_handle];
    cpuStatistics = self->_cpuStatistics;
    self->_cpuStatistics = v3;
  }

  v26.receiver = self;
  v26.super_class = FBProcessWatchdog;
  [(FBSProcessWatchdog *)&v26 activate];
  if (activate_onceToken != -1)
  {
    [FBProcessWatchdog activate];
  }

  if (activate___UnblockEntitled == 1)
  {
    v25 = 0.0;
    [(FBProcessWatchdog *)self _getPolicyWallTime:&v25 cpuTime:0];
    v5 = [(RBSProcessHandle *)self->_handle pid];
    v6 = [(FBSProcessWatchdog *)self process];
    v7 = [(FBProcess *)v6 logProem];
    v8 = objc_opt_new();
    unblockSignal = self->_unblockSignal;
    self->_unblockSignal = v8;

    v10 = v8;
    if (v25 * 0.5 <= 5.0)
    {
      v11 = v25 * 0.5;
    }

    else
    {
      v11 = 5.0;
    }

    event = self->_event;
    objc_initWeak(&location, self);
    v13 = dispatch_time(0, (v11 * 1000000000.0));
    v14 = +[FBProcess userInitiatedWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__FBProcessWatchdog_activate__block_invoke_2;
    block[3] = &unk_1E783B8A8;
    v19 = v10;
    v20 = v7;
    v22[1] = event;
    v22[2] = *&v11;
    v23 = v5;
    v15 = v7;
    v16 = v10;
    objc_copyWeak(v22, &location);
    v21 = v6;
    v17 = v6;
    dispatch_after(v13, v14, block);

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (void)deactivate
{
  [(BSAtomicSignal *)self->_unblockSignal signal];
  unblockSignal = self->_unblockSignal;
  self->_unblockSignal = 0;

  v4.receiver = self;
  v4.super_class = FBProcessWatchdog;
  [(FBSProcessWatchdog *)&v4 deactivate];
}

- (id)_policyDesc
{
  v6 = 0.0;
  v5 = 0.0;
  [(FBProcessWatchdog *)self _getPolicyWallTime:&v6 cpuTime:&v5];
  if (v6 > 0.0 && v5 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs cpu over %.2fs", v5, *&v5, *&v6];
    v2 = LABEL_8:;
    goto LABEL_9;
  }

  if (v6 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs", v5, *&v6, v4];
    goto LABEL_8;
  }

  if (v5 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs cpu", v5, *&v5, v4];
    goto LABEL_8;
  }

  v2 = @"n/a";
LABEL_9:

  return v2;
}

void __29__FBProcessWatchdog_activate__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) signal])
  {
    v2 = FBLogProcess();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = NSStringFromProcessWatchdogEvent(*(a1 + 64));
      v5 = *(a1 + 72);
      *buf = 138543874;
      *&buf[4] = v3;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v27 = v5;
      _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Watchdog for %{public}@ is still active after %.1fs, notifying Unblock.", buf, 0x20u);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getUBStuckServiceClass_softClass;
    v24 = getUBStuckServiceClass_softClass;
    if (!getUBStuckServiceClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getUBStuckServiceClass_block_invoke;
      v27 = &unk_1E783B178;
      v28 = &v21;
      __getUBStuckServiceClass_block_invoke(buf);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = [[v6 alloc] initForPid:*(a1 + 80) threadID:1 timeElapsed:0 incidentUUID:*(a1 + 72)];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v9 = getUBUnblockClientClass_softClass;
    v24 = getUBUnblockClientClass_softClass;
    if (!getUBUnblockClientClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getUBUnblockClientClass_block_invoke;
      v27 = &unk_1E783B178;
      v28 = &v21;
      __getUBUnblockClientClass_block_invoke(buf);
      v9 = v22[3];
    }

    v10 = v9;
    _Block_object_dispose(&v21, 8);
    v11 = objc_alloc_init(v9);
    v25 = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v13 = +[FBProcess userInitiatedWorkloop];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__FBProcessWatchdog_activate__block_invoke_7;
    v16[3] = &unk_1E783B880;
    v17 = *(a1 + 40);
    objc_copyWeak(&v20, (a1 + 56));
    v18 = *(a1 + 48);
    v14 = v11;
    v19 = v14;
    [v14 recover:v12 stackshotData:0 replyQueue:v13 callback:v16];

    objc_destroyWeak(&v20);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (FBProcessWatchdog)initWithProcess:(id)a3 context:(id)a4 policy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 event];
  v12 = NSStringFromProcessWatchdogEvent(v11);
  v17.receiver = self;
  v17.super_class = FBProcessWatchdog;
  v13 = [(FBSProcessWatchdog *)&v17 initWithName:v12 process:v8 policy:v10];

  if (v13)
  {
    v13->_event = v11;
    objc_storeStrong(&v13->_eventContext, a4);
    v14 = [v8 rbsHandle];
    handle = v13->_handle;
    v13->_handle = v14;
  }

  return v13;
}

uint64_t __29__FBProcessWatchdog_activate__block_invoke()
{
  result = BSSelfTaskHasEntitlement();
  activate___UnblockEntitled = result;
  return result;
}

void __29__FBProcessWatchdog_activate__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = FBLogProcess();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [v5 descriptionWithMultilinePrefix:0];
      *buf = 138543618;
      v36 = v7;
      v37 = 2114;
      v38 = v8;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned an error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [a3 firstObject];
    v6 = v9;
    if (v9)
    {
      v10 = [v9 issueType];
      v11 = [v6 recoveryStatus];
      v12 = [v6 recoveryConfidence];
      v13 = FBLogProcess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = _FBSNSStringFromUBIssueType(v10);
        v30 = v10;
        if (v12 >= 4)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", v12];
        }

        else
        {
          v16 = off_1E783B8E0[v12];
        }

        v19 = v16;
        if (v11 >= 5)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", v11];
        }

        else
        {
          v20 = off_1E783B900[v11];
        }

        *buf = 138544130;
        v36 = v14;
        v37 = 2114;
        v38 = v15;
        v39 = 2114;
        v40 = v19;
        v41 = 2114;
        v42 = v20;
        _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned with issue: %{public}@; confidence: %{public}@; status: %{public}@", buf, 0x2Au);

        v10 = v30;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      if ([WeakRetained isActive]&& v11 == 3 && v12 == 1)
      {
        v21 = *(a1 + 40);
        v34 = 0;
        v22 = [v21 _watchdog:WeakRetained shouldTerminateWithDeclineReason:&v34];
        v23 = v34;
        if (v22)
        {
          v24 = FBLogProcess();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __29__FBProcessWatchdog_activate__block_invoke_7_cold_1(a1, v24);
          }

          v25 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E699F9B0];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __29__FBProcessWatchdog_activate__block_invoke_9;
          v31[3] = &unk_1E783B858;
          v32 = *(a1 + 40);
          v33 = v10;
          v27 = [v25 bs_errorWithDomain:v26 code:2 configuration:v31];
          v28 = [*(a1 + 40) _watchdog:WeakRetained terminationRequestForError:v27];
          [*(a1 + 40) _terminateWithRequest:v28 forWatchdog:WeakRetained];
        }
      }
    }

    else
    {
      WeakRetained = FBLogProcess();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138543362;
        v36 = v18;
        _os_log_impl(&dword_1A89DD000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned no result.", buf, 0xCu);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __29__FBProcessWatchdog_activate__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = FBSProcessPrettyDescription();
  v5 = _FBSNSStringFromUBIssueType(*(a1 + 40));
  [v4 setFailureReason:{@"%@ is stuck (%@)", v6, v5}];
}

- (void)_getPolicyWallTime:(double *)a3 cpuTime:(double *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(FBSProcessWatchdog *)self policy];
  v7 = [v6 provisions];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 type];
        if (v14)
        {
          [v14 allowance];
        }

        FBSProcessResourceAllowanceGetValue();
        FBSProcessResourceTimeIntervalForValue();
        if (v15 == 2)
        {
          v11 = v11 + v16;
        }

        else if (v15 == 1)
        {
          v12 = v12 + v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  if (a3)
  {
    *a3 = v12;
  }

  if (a4)
  {
    *a4 = v11;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __29__FBProcessWatchdog_activate__block_invoke_7_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Terminating stuck process.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end