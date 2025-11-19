@interface FBSProcessResourceProvision
+ (id)provisionWithAllowance:(id *)a3;
+ (id)provisionWithResourceType:(int64_t)a3 timeInterval:(double)a4;
- (BOOL)_queue_updateConsumption;
- (BOOL)allowanceRemaining:(id *)a3;
- (FBSProcessResourceProvision)initWithAllowance:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)succinctDescriptionBuilder;
- (void)_beginMonitoring;
- (void)_prepareForReuse;
- (void)_queue_evaluateConsumptionFromTimer:(BOOL)a3;
- (void)_queue_noteAllowanceExhausted;
- (void)_queue_stopMonitoring;
- (void)_queue_updateConsumption;
- (void)_updateProgress;
- (void)dealloc;
- (void)setAllowance:(id *)a3;
@end

@implementation FBSProcessResourceProvision

void __47__FBSProcessResourceProvision__beginMonitoring__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) process];
  NSClassFromString(&cfstr_Fbprocess.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 rbsHandle];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v6 = [v2 versionedPID];
      v7 = MEMORY[0x1E69C75D0];
      v5 = [MEMORY[0x1E69C75E0] identifierWithPid:v6];
      [v7 handleForIdentifier:v5 pidVersion:HIDWORD(v6) error:0];
    }

    else
    {
      v9 = MEMORY[0x1E69C75D0];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "pid")}];
      [v9 handleForIdentifier:v5 error:0];
    }
    v8 = ;
    v10 = *(a1 + 32);
    v11 = *(v10 + 112);
    *(v10 + 112) = v8;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  if (v13 == 2)
  {
    v17 = *(v12 + 112);
    if (!v17)
    {
      goto LABEL_21;
    }

    [v17 elapsedCPUTimeForFrontBoard];
    *(*(a1 + 32) + 80) = FBSProcessResourceValueForTimeInterval(v18);
    v19 = *(*(a1 + 32) + 72);
    if (v19)
    {
      v16 = FBSProcessResourceTimeIntervalForValue(v19);
      v15 = v16;
    }

    else
    {
      v20 = FBSProcessResourceTimeIntervalForValue(*(*(a1 + 32) + 64)) * 0.5;
      v21 = [MEMORY[0x1E696AE30] processInfo];
      v22 = v20 / [v21 processorCount];

      if (v22 >= 1.0)
      {
        v16 = v22;
      }

      else
      {
        v16 = 1.0;
      }

      v15 = v16;
    }
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_21;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 80) = FBSProcessResourceValueForTimeInterval(v14);
    v15 = FBSProcessResourceTimeIntervalForValue(*(*(a1 + 32) + 64));
    v16 = -1.0;
  }

  if (v15 > 0.0)
  {
    v23 = FBLogWatchdog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = FBSProcessPrettyDescription(v2);
      v25 = NSStringFromProcessResourceType(*(*(a1 + 32) + 56));
      v26 = FBSProcessResourceTimeIntervalForValue(*(*(a1 + 32) + 64));
      *buf = 138544130;
      v32 = v24;
      v33 = 2114;
      v34 = v25;
      v35 = 2048;
      v36 = v26;
      v37 = 2048;
      v38 = v16;
      _os_log_impl(&dword_1A2DBB000, v23, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@] Now monitoring resource allowance of %.2fs (at refreshInterval %.2fs)", buf, 0x2Au);
    }

    v27 = [[off_1E76BC968 alloc] initWithIdentifier:@"FBSProcessResourceProvisionMonitor"];
    v28 = *(a1 + 32);
    v29 = *(v28 + 104);
    *(v28 + 104) = v27;

    *(*(a1 + 32) + 128) = 0;
    *(*(a1 + 32) + 120) = v15;
    BSFloatLessThanFloat();
  }

LABEL_21:
  v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"FBSProcessResourceProvisionErrorDomain" code:1 userInfo:0];
  [*(a1 + 32) _noteViolatedWithError:v30];
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_queue == nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSProcessResourceProvision.m";
    v9 = 1024;
    v10 = 71;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_beginMonitoring
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FBSProcessExecutionProvision *)self process];
  v5 = FBSProcessPrettyDescription(v4);
  v6 = NSStringFromProcessResourceType(self->_allowance.type);
  [v3 stringWithFormat:@"com.apple.frontboardservices.watchdog-%@-%@", v5, v6];
  objc_claimAutoreleasedReturnValue();

  [off_1E76BC9B8 serial];
  [objc_claimAutoreleasedReturnValue() serviceClass:33];
  objc_claimAutoreleasedReturnValue();
  BSDispatchQueueCreate();
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = FBSProcessResourceProvision;
  v3 = [(FBSProcessExecutionProvision *)&v8 succinctDescriptionBuilder];
  v4 = self;
  objc_sync_enter(v4);
  v5 = NSStringFromProcessResourceAllowance(&v4->_allowance.type);
  v6 = [v3 appendObject:v5 withName:@"allowance"];

  objc_sync_exit(v4);

  return v3;
}

uint64_t __46__FBSProcessResourceProvision__stopMonitoring__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_stopMonitoring];
  v2 = *(a1 + 32);

  return [v2 _queue_updateConsumption];
}

- (void)_queue_stopMonitoring
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(FBSProcessExecutionProvision *)self process];
  v4 = FBLogWatchdog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = FBSProcessPrettyDescription(v3);
    v6 = NSStringFromProcessResourceType(self->_allowance.type);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@] Stopped monitoring.", &v8, 0x16u);
  }

  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (BOOL)_queue_updateConsumption
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(FBSProcessExecutionProvision *)self isMonitoring]&& ![(FBSProcessExecutionProvision *)self isViolated])
  {
    v4 = [(FBSProcessExecutionProvision *)self process];
    v12 = 0;
    v3 = [(FBSProcessResourceProvision *)self _queue_calculateValueConsumed:&v12];
    if (v3)
    {
      self->_consumedValue = v12;
      v5 = FBLogWatchdog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = FBSProcessPrettyDescription(v4);
        p_allowance = &self->_allowance;
        v8 = NSStringFromProcessResourceType(self->_allowance.type);
        v9 = NSStringFromProcessResourceValue(p_allowance->type, v12);
        v10 = v12 / p_allowance->value;
        *buf = 138544130;
        v14 = v6;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        v19 = 2048;
        v20 = v10 * 100.0;
        _os_log_debug_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] [%{public}@] Updated resource consumption: %{public}@ (%.2f%%)", buf, 0x2Au);
      }
    }

    else
    {
      v5 = FBLogWatchdog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(FBSProcessResourceProvision *)v4 _queue_updateConsumption];
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

void __47__FBSProcessResourceProvision__prepareForReuse__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  *(*(a1 + 32) + 88) = 0;
  [*(*(a1 + 32) + 104) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;
}

+ (id)provisionWithAllowance:(id *)a3
{
  if (FBSProcessResourceAllowanceIsValid(a3))
  {
    v5 = [a1 alloc];
    v8 = *&a3->var0;
    var2 = a3->var2;
    v6 = [v5 initWithAllowance:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)provisionWithResourceType:(int64_t)a3 timeInterval:(double)a4
{
  FBSProcessResourceAllowanceMakeWithTimeInterval(a3, v7, a4);
  v5 = [a1 provisionWithAllowance:v7];

  return v5;
}

- (FBSProcessResourceProvision)initWithAllowance:(id *)a3
{
  v6.receiver = self;
  v6.super_class = FBSProcessResourceProvision;
  result = [(FBSProcessExecutionProvision *)&v6 init];
  if (result)
  {
    var2 = a3->var2;
    *&result->_allowance.type = *&a3->var0;
    result->_allowance.reserved = var2;
    result->_consumedValue = 0;
  }

  return result;
}

- (BOOL)allowanceRemaining:(id *)a3
{
  v3 = a3;
  if (a3)
  {
    if ([(FBSProcessExecutionProvision *)self isViolated])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3810000000;
      v22 = &unk_1A2E7F09E;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      queue = self->_queue;
      v18 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__FBSProcessResourceProvision_allowanceRemaining___block_invoke;
      block[3] = &unk_1E76BF470;
      block[4] = self;
      block[5] = &v19;
      block[6] = &v15;
      dispatch_sync(queue, block);
      Value = FBSProcessResourceAllowanceGetValue((v20 + 4));
      v7 = v16[3];
      v8 = Value >= v7;
      v9 = Value - v7;
      if (v9 != 0 && v8)
      {
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        FBSProcessResourceAllowanceMake(v20[4], v10, v20[6], &v12);
        *&v3->var0 = v12;
        v3->var2 = v13;
        LOBYTE(v3) = FBSProcessResourceAllowanceIsValid(v3);
      }

      else
      {
        LOBYTE(v3) = 0;
      }

      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v19, 8);
    }
  }

  return v3;
}

__n128 __50__FBSProcessResourceProvision_allowanceRemaining___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isMonitoring])
  {
    [*(a1 + 32) _queue_updateConsumption];
  }

  v2 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 72);
  result = *(*(a1 + 32) + 56);
  v2[2] = result;
  v2[3].n128_u64[0] = v3;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 88);
  return result;
}

uint64_t __47__FBSProcessResourceProvision__beginMonitoring__block_invoke_34(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FBLogWatchdog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = FBSProcessPrettyDescription(*(a1 + 32));
    v4 = NSStringFromProcessResourceType(*(*(a1 + 40) + 56));
    v5 = *(a1 + 48);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@] Watchdog fired because one shot interval hit (%f)", &v7, 0x20u);
  }

  [*(a1 + 40) _queue_updateConsumption];
  [*(a1 + 40) _queue_noteAllowanceExhausted];
  return [*(a1 + 40) _queue_stopMonitoring];
}

- (void)_updateProgress
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FBSProcessResourceProvision__updateProgress__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_noteAllowanceExhausted
{
  v3 = FBSProcessPrettyDescription(a1);
  v4 = NSStringFromProcessResourceType(*(a2 + 56));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_1A2DBB000, v5, v6, "[%{public}@] [%{public}@] Allowance exhausted!", v7, v8, v9, v10, v11);
}

- (void)_queue_evaluateConsumptionFromTimer:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(FBSProcessExecutionProvision *)self process];
  if (v3)
  {
    ++self->_timerFireCount;
  }

  v6 = FBLogWatchdog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = FBSProcessPrettyDescription(v5);
    v8 = NSStringFromProcessResourceType(self->_allowance.type);
    timerFireCount = self->_timerFireCount;
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = timerFireCount;
    _os_log_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@] Evaluating consumption... (%llu)", &v10, 0x20u);
  }

  if (![(FBSProcessResourceProvision *)self _queue_updateConsumption])
  {
    goto LABEL_8;
  }

  if (self->_consumedValue >= self->_allowance.value)
  {
    [(FBSProcessResourceProvision *)self _queue_noteAllowanceExhausted];
LABEL_8:
    [(FBSProcessResourceProvision *)self _queue_stopMonitoring];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  allowance = self->_allowance;
  v5 = [v4 initWithAllowance:&allowance];
  v6 = [(NSError *)self->super._error copy];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 33) = self->super._violated;
  *(v5 + 32) = self->super._monitoring;
  *(v5 + 80) = self->_baselineValue;
  *(v5 + 88) = self->_consumedValue;
  return v5;
}

- (void)setAllowance:(id *)a3
{
  var2 = a3->var2;
  *&self->_allowance.type = *&a3->var0;
  self->_allowance.reserved = var2;
}

- (void)_prepareForReuse
{
  v3 = FBSProcessPrettyDescription(a1);
  v4 = NSStringFromProcessResourceType(*(a2 + 56));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_1A2DBB000, v5, v6, "[%{public}@] [%{public}@] Invalidated", v7, v8, v9, v10, v11);
}

- (void)_queue_updateConsumption
{
  v3 = FBSProcessPrettyDescription(a1);
  v4 = NSStringFromProcessResourceType(*(a2 + 56));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1(&dword_1A2DBB000, v5, v6, "[%{public}@] [%{public}@] Unable to calculate resource consumption :(", v7, v8, v9, v10, v11);
}

@end