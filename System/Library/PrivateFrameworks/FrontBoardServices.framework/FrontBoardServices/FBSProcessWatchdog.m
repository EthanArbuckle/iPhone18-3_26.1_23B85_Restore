@interface FBSProcessWatchdog
- (BOOL)isActive;
- (FBSProcess)process;
- (FBSProcessWatchdog)initWithName:(id)a3 process:(id)a4 policy:(id)a5;
- (id)completion;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_beginMonitoringConstraints;
- (void)_stopMonitoringConstraints;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)provision:(id)a3 wasViolatedWithError:(id)a4;
- (void)setCompletion:(id)a3;
@end

@implementation FBSProcessWatchdog

- (void)activate
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Activating %{public}@", v5, 0x16u);
}

- (void)_beginMonitoringConstraints
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_active)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(FBSProcessWatchdogPolicy *)v2->_policy provisions];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          [v7 prepareForReuse];
          [v7 setDelegate:v2];
          WeakRetained = objc_loadWeakRetained(&v2->_process);
          [v7 monitorProcess:WeakRetained];
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  objc_sync_exit(v2);
}

- (FBSProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (void)deactivate
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_active)
  {
    [(FBSProcessWatchdog *)obj _stopMonitoringConstraints];
    obj->_active = 0;
  }

  objc_sync_exit(obj);
}

- (void)_stopMonitoringConstraints
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(FBSProcessWatchdogPolicy *)v2->_policy provisions];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setDelegate:0];
        [v7 stopMonitoring];
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (void)invalidate
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(v2, v3, v4, 5.8382e-34);
  _os_log_debug_impl(&dword_1A2DBB000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Invalidating %{public}@", v5, 0x16u);
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_invalidated == YES", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSProcessWatchdog)initWithName:(id)a3 process:(id)a4 policy:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  if (!v12)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  v13 = v12;
  if (([v12 conformsToProtocol:&unk_1F15BBAC8] & 1) == 0)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  v14 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  v15 = v11;
  NSClassFromString(&cfstr_Fbsprocesswatc_1.isa);
  if (!v15)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessWatchdog initWithName:a2 process:? policy:?];
  }

  v23.receiver = self;
  v23.super_class = FBSProcessWatchdog;
  v16 = [(FBSProcessWatchdog *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_process, v13);
    v18 = [v14 copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [v15 copy];
    policy = v17->_policy;
    v17->_policy = v20;
  }

  return v17;
}

- (id)completion
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1A58E80F0](v2->_completion);
  objc_sync_exit(v2);

  return v3;
}

- (void)setCompletion:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_completion != v7)
  {
    v5 = [v7 copy];
    completion = v4->_completion;
    v4->_completion = v5;
  }

  objc_sync_exit(v4);
}

- (BOOL)isActive
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (void)provision:(id)a3 wasViolatedWithError:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  WeakRetained = objc_loadWeakRetained(&v8->_process);
  v10 = [(FBSProcessWatchdog *)v8 completion];
  [(FBSProcessWatchdog *)v8 setCompletion:0];
  if (v8->_active && (-[FBSProcessWatchdogPolicy provisions](v8->_policy, "provisions"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsObject:v6], v11, v12))
  {
    [(FBSProcessWatchdog *)v8 deactivate];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v8);

  v14 = FBLogWatchdog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v25 = FBSProcessPrettyDescription(WeakRetained);
    v26 = [(FBSProcessWatchdog *)v8 succinctDescription];
    v27 = [v6 succinctDescription];
    *buf = 138543874;
    v31 = v25;
    v32 = 2114;
    v33 = v26;
    v34 = 2114;
    v35 = v27;
    _os_log_error_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Watchdog %{public}@ provision violated: %{public}@", buf, 0x20u);
  }

  if (v13)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 bs_setSafeObject:v6 forKey:@"FBSProcessExecutionProvision"];
    [v15 bs_setSafeObject:@"An execution provision was violated." forKey:*MEMORY[0x1E696A578]];
    [v15 bs_setSafeObject:v7 forKey:*MEMORY[0x1E696AA08]];
    v16 = [v7 localizedFailureReason];
    [v15 bs_setSafeObject:v16 forKey:*MEMORY[0x1E696A588]];

    v29 = 0;
    v17 = [WeakRetained _watchdog:v8 shouldTerminateWithDeclineReason:&v29];
    v28 = v29;
    if (v17)
    {
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSProcessWatchdogErrorDomain" code:1 userInfo:v15];
      v19 = [WeakRetained _watchdog:v8 terminationRequestForError:v18];
      v20 = FBLogWatchdog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [FBSProcessWatchdog provision:? wasViolatedWithError:?];
      }
    }

    else
    {
      v18 = FBLogWatchdog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = FBSProcessPrettyDescription(WeakRetained);
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v28;
        _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Process declined watchdog termination with reason: %{public}@", buf, 0x16u);
      }

      v19 = 0;
    }

    if (!v10 || ([v15 bs_setSafeObject:v19 forKey:@"FBSProcessTerminationRequest"], objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"FBSProcessWatchdogErrorDomain", 1, v15), v22 = objc_claimAutoreleasedReturnValue(), v23 = (v10)[2](v10, 1, v22), v22, (v23 & 1) == 0))
    {
      if (v19)
      {
        [WeakRetained _terminateWithRequest:v19 forWatchdog:v8];
      }

      else
      {
        v24 = FBLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [FBSProcessWatchdog provision:? wasViolatedWithError:?];
        }
      }
    }
  }
}

- (id)succinctDescription
{
  v2 = [(FBSProcessWatchdog *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [off_1E76BC9B0 builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(FBSProcessWatchdogPolicy *)self->_policy provisions];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 type];
        memset(v18, 0, sizeof(v18));
        if (v11)
        {
          [v11 allowance];
        }

        Value = FBSProcessResourceAllowanceGetValue(v18);
        v14 = FBSProcessResourceTimeIntervalForValue(Value);
        if (v12 == 2)
        {
          v8 = v8 + v14;
        }

        else if (v12 == 1)
        {
          v9 = v9 + v14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);

    if (v9 > 0.0)
    {
      v15 = [v3 appendTimeInterval:@"time" withName:0 decomposeUnits:v9];
    }

    if (v8 > 0.0)
    {
      v16 = [v3 appendTimeInterval:@"cpuTime" withName:0 decomposeUnits:v8];
    }
  }

  else
  {
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcessWatchdog *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSProcessWatchdog *)self succinctDescriptionBuilder];
  v6 = [v5 appendBool:self->_active withName:@"active"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FBSProcessWatchdog_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E76BCD60;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v8 = v7;
  return v7;
}

- (void)initWithName:(char *)a1 process:policy:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(FBSProcessInternal)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSProcessWatchdogPolicyClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 process:policy:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)provision:(void *)a1 wasViolatedWithError:.cold.1(void *a1)
{
  v1 = FBSProcessPrettyDescription(a1);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_0(&dword_1A2DBB000, v2, v3, "[%{public}@] Watchdog termination request provided: %{public}@", v4, v5, v6, v7, v8);
}

- (void)provision:(void *)a1 wasViolatedWithError:.cold.2(void *a1)
{
  v1 = FBSProcessPrettyDescription(a1);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_0(&dword_1A2DBB000, v2, v3, "Not terminating %{public}@ for violated provision because: %{public}@", v4, v5, v6, v7, v8);
}

@end