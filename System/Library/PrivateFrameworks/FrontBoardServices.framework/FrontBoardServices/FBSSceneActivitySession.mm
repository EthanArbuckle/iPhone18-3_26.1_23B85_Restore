@interface FBSSceneActivitySession
- (BOOL)_isValid;
- (FBSSceneActivitySession)initWithName:(id)name scene:(id)scene executionPolicy:(id)policy;
- (FBSSceneHandle)scene;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)errorHandler;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)close;
- (void)dealloc;
- (void)invalidate;
- (void)open;
- (void)setErrorHandler:(id)handler;
@end

@implementation FBSSceneActivitySession

- (FBSSceneActivitySession)initWithName:(id)name scene:(id)scene executionPolicy:(id)policy
{
  nameCopy = name;
  sceneCopy = scene;
  policyCopy = policy;
  v12 = nameCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v12)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  v13 = sceneCopy;
  if (!v13)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  v14 = v13;
  if (([v13 conformsToProtocol:&unk_1F15B3290] & 1) == 0)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  v15 = policyCopy;
  NSClassFromString(&cfstr_Fbsprocessexec_1.isa);
  if (!v15)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneActivitySession initWithName:a2 scene:? executionPolicy:?];
  }

  v16 = [(FBSSceneActivitySession *)self init];
  if (v16)
  {
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [uUIDString copy];
    identifier = v16->_identifier;
    v16->_identifier = v21;

    objc_storeWeak(&v16->_scene, v14);
    v23 = [v15 copy];
    executionPolicy = v16->_executionPolicy;
    v16->_executionPolicy = v23;
  }

  return v16;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_assertion == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (id)errorHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1A58E80F0](selfCopy->_errorHandler);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_errorHandler != handlerCopy)
  {
    v5 = [handlerCopy copy];
    errorHandler = selfCopy->_errorHandler;
    selfCopy->_errorHandler = v5;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_open && !selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)open
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_open && !selfCopy->_invalidated)
  {
    selfCopy->_open = 1;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_scene);
    clientProcess = [WeakRetained clientProcess];
    v5 = [clientProcess pid];
    if (v5 == getpid())
    {
      hostProcess = [WeakRetained hostProcess];

      clientProcess = hostProcess;
    }

    objc_storeWeak(&selfCopy->_process, clientProcess);
    if (clientProcess)
    {
      if (selfCopy->_executionPolicy)
      {
        v7 = [[FBSProcessAssertion alloc] initWithName:selfCopy->_name process:clientProcess policy:selfCopy->_executionPolicy];
        assertion = selfCopy->_assertion;
        selfCopy->_assertion = v7;

        [(FBSProcessAssertion *)selfCopy->_assertion activate];
        provisions = [(FBSProcessExecutionPolicy *)selfCopy->_executionPolicy provisions];
        v10 = [provisions count];

        if (v10)
        {
          callOutQueue = [WeakRetained callOutQueue];
          objc_initWeak(&location, selfCopy);
          provisions2 = [(FBSProcessExecutionPolicy *)selfCopy->_executionPolicy provisions];
          v13 = [FBSProcessWatchdogPolicy policyWithProvisions:provisions2];

          v14 = [[FBSProcessWatchdog alloc] initWithName:selfCopy->_name process:clientProcess policy:v13];
          watchdog = selfCopy->_watchdog;
          selfCopy->_watchdog = v14;

          v16 = selfCopy->_watchdog;
          v18 = MEMORY[0x1E69E9820];
          v19 = 3221225472;
          v20 = __31__FBSSceneActivitySession_open__block_invoke;
          v21 = &unk_1E76BE018;
          objc_copyWeak(&v24, &location);
          v17 = callOutQueue;
          v22 = v17;
          v23 = WeakRetained;
          [(FBSProcessWatchdog *)v16 setCompletion:&v18];
          [(FBSProcessWatchdog *)selfCopy->_watchdog activate:v18];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

BOOL __31__FBSSceneActivitySession_open__block_invoke(uint64_t a1, _BOOL8 a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a2)
  {
    if ([WeakRetained _isValid])
    {
      v8 = [v7 errorHandler];
      v9 = MEMORY[0x1A58E80F0]();
    }

    else
    {
      v9 = 0;
    }

    a2 = v9 != 0;
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      [v10 setObject:@"An execution provision was violated during the session." forKey:*MEMORY[0x1E696A578]];
      v11 = [v5 localizedFailureReason];
      [v10 bs_setSafeObject:v11 forKey:*MEMORY[0x1E696A588]];

      [v10 bs_setSafeObject:v5 forKey:*MEMORY[0x1E696AA08]];
      [v10 bs_setSafeObject:v7 forKey:@"FBSSceneActivitySession"];
      v12 = [v5 userInfo];
      v13 = [v12 objectForKey:@"FBSProcessExecutionProvision"];
      [v10 bs_setSafeObject:v13 forKey:@"FBSProcessExecutionProvision"];

      v14 = [v5 userInfo];
      v15 = [v14 objectForKey:@"FBSProcessTerminationRequest"];
      [v10 bs_setSafeObject:v15 forKey:@"FBSProcessTerminationRequest"];

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSSceneActivitySessionErrorDomain" code:2 userInfo:v10];
      (v9)[2](v9, v16);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __31__FBSSceneActivitySession_open__block_invoke_2;
    v19[3] = &unk_1E76BCD60;
    v17 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = v7;
    [v17 performAsync:v19];
  }

  return a2;
}

- (void)close
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_open)
  {
    obj->_open = 0;
    objc_storeWeak(&obj->_process, 0);
    [(FBSProcessWatchdog *)obj->_watchdog deactivate];
    [(FBSProcessWatchdog *)obj->_watchdog invalidate];
    watchdog = obj->_watchdog;
    obj->_watchdog = 0;

    [(FBSProcessAssertion *)obj->_assertion deactivate];
    [(FBSProcessAssertion *)obj->_assertion invalidate];
    assertion = obj->_assertion;
    obj->_assertion = 0;

    errorHandler = obj->_errorHandler;
    obj->_errorHandler = 0;
  }

  objc_sync_exit(obj);
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidated)
  {
    selfCopy->_invalidated = 1;
    if (selfCopy->_open)
    {
      errorHandler = [(FBSSceneActivitySession *)selfCopy errorHandler];
      if (errorHandler)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary bs_setSafeObject:@"The session was unexpectedly interrupted." forKey:*MEMORY[0x1E696A578]];
        [dictionary bs_setSafeObject:selfCopy forKey:@"FBSSceneActivitySession"];
        v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSSceneActivitySessionErrorDomain" code:1 userInfo:dictionary];
        v6 = dispatch_get_global_queue(33, 0);
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = __37__FBSSceneActivitySession_invalidate__block_invoke;
        v11 = &unk_1E76BD750;
        v12 = v5;
        v13 = errorHandler;
        v7 = v5;
        dispatch_async(v6, &v8);
      }

      [(FBSSceneActivitySession *)selfCopy close:v8];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneActivitySession *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  identifier = [WeakRetained identifier];
  v7 = [v3 appendObject:identifier withName:@"sceneID"];

  v8 = [v3 appendBool:self->_open withName:@"open"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneActivitySession *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneActivitySession *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FBSSceneActivitySession_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __65__FBSSceneActivitySession_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"identifier"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [off_1E76BC9B0 succinctDescriptionForObject:WeakRetained];
    v5 = [v3 appendObject:v4 withName:@"process"];
  }

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"executionPolicy"];
  v7 = *(a1 + 40);
  if (*(v7 + 64))
  {
    v8 = *(a1 + 32);
    v9 = [off_1E76BC9B0 succinctDescriptionForObject:?];
    v10 = [v8 appendObject:v9 withName:@"assertion"];

    v7 = *(a1 + 40);
  }

  v11 = WeakRetained;
  if (*(v7 + 72))
  {
    v12 = *(a1 + 32);
    v13 = [off_1E76BC9B0 succinctDescriptionForObject:?];
    v14 = [v12 appendObject:v13 withName:@"watchdog"];

    v11 = WeakRetained;
  }
}

- (FBSSceneHandle)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.1(char *a1)
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

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(FBSSceneHandle)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSProcessExecutionPolicyClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.4(char *a1)
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

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.5(char *a1)
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

- (void)initWithName:(char *)a1 scene:executionPolicy:.cold.6(char *a1)
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

@end