@interface FBSystemShell
+ (id)_createSingletonWithOptions:(id)options;
- (id)_initWithOptions:(id)options;
- (id)assertWatchdogEnabledForLimitedDurationForReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_addBlockToExecuteWhenReady:(id)ready;
- (void)_setState:(unint64_t)state;
- (void)_setSystemIdleSleepDisabled:(BOOL)disabled forReason:(id)reason;
- (void)sendActionsToBackBoard:(id)board;
@end

@implementation FBSystemShell

- (id)_initWithOptions:(id)options
{
  v41[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v40.receiver = self;
  v40.super_class = FBSystemShell;
  v5 = [(FBSystemShell *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E695DFA8] set];
    lock_preventIdleSleepReasons = v6->_lock_preventIdleSleepReasons;
    v6->_lock_preventIdleSleepReasons = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_blocksToRunWhenReady = v6->_lock_blocksToRunWhenReady;
    v6->_lock_blocksToRunWhenReady = v9;

    v11 = [FBSystemShellInitializationContext alloc];
    v12 = [optionsCopy copy];
    v13 = [(FBSystemShellInitializationContext *)v11 _initWithOptions:v12];
    initializationContext = v6->_initializationContext;
    v6->_initializationContext = v13;

    [(FBSystemShell *)v6 _setSystemIdleSleepDisabled:1 forReason:@"FBSystemShellStartup"];
    v15 = FBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_INFO, "Taking out the system app's process assertion.", buf, 2u);
    }

    kdebug_trace();
    v16 = objc_alloc(MEMORY[0x1E69C7548]);
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v18 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SystemShell"];
    v41[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v20 = [v16 initWithExplanation:@"FBSystemShell" target:currentProcess attributes:v19];
    runningAssertion = v6->_runningAssertion;
    v6->_runningAssertion = v20;

    [(RBSAssertion *)v6->_runningAssertion acquireWithError:0];
    kdebug_trace();
    kdebug_trace();
    v22 = objc_alloc(MEMORY[0x1E698E418]);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __34__FBSystemShell__initWithOptions___block_invoke;
    v38[3] = &unk_1E783B530;
    v23 = optionsCopy;
    v39 = v23;
    v24 = [v22 initWithConfigurator:v38];
    systemShellService = v6->_systemShellService;
    v6->_systemShellService = v24;

    kdebug_trace();
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v26 = v6;
    v37 = v26;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __34__FBSystemShell__initWithOptions___block_invoke_31;
    v29[3] = &unk_1E783B558;
    v30 = v23;
    v31 = buf;
    [(FBSystemShell *)v26 _addBlockToExecuteWhenReady:v29];

    _Block_object_dispose(buf, 8);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

void __34__FBSystemShell__initWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setWaitForDataMigration:{objc_msgSend(*(a1 + 32), "shouldWaitForMigrator")}];
  [*(a1 + 32) systemSleepInterval];
  [v4 setIdleSleepInterval:?];
  v3 = [*(a1 + 32) independentWatchdogPortName];

  if (v3)
  {
    [v4 setCollectiveWatchdogPingBlock:0];
  }
}

void __34__FBSystemShell__initWithOptions___block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) independentWatchdogPortName];
  v6 = v2;
  if (v2)
  {
    [v2 UTF8String];
    wd_endpoint_register();
    wd_endpoint_add_queue();
    v3 = +[FBSystemService sharedInstanceIfExists];
    v4 = [v3 _applicationInfoProvider];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 _synchronizationQueue];
      if (v5)
      {
        wd_endpoint_add_queue();
      }
    }

    wd_endpoint_activate();
  }

  [*(*(*(a1 + 40) + 8) + 40) _setSystemIdleSleepDisabled:0 forReason:@"FBSystemShellStartup"];
}

+ (id)_createSingletonWithOptions:(id)options
{
  optionsCopy = options;
  if (__instance)
  {
    [FBSystemShell _createSingletonWithOptions:a2];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FBSystemShell__createSingletonWithOptions___block_invoke;
  block[3] = &unk_1E783B580;
  v11 = optionsCopy;
  v5 = _createSingletonWithOptions__onceToken;
  v6 = optionsCopy;
  if (v5 != -1)
  {
    dispatch_once(&_createSingletonWithOptions__onceToken, block);
  }

  v7 = __instance;
  v8 = __instance;

  return v7;
}

void __45__FBSystemShell__createSingletonWithOptions___block_invoke(uint64_t a1)
{
  v1 = [[FBSystemShell alloc] _initWithOptions:*(a1 + 32)];
  v2 = __instance;
  __instance = v1;
}

- (void)sendActionsToBackBoard:(id)board
{
  v18 = *MEMORY[0x1E69E9840];
  boardCopy = board;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [boardCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(boardCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          systemShellService = self->_systemShellService;
          v11 = v9;
          -[BKSSystemShellService restartWithOptions:](systemShellService, "restartWithOptions:", [v11 options]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [boardCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)assertWatchdogEnabledForLimitedDurationForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_temporaryWatchdogAssertion)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E698E658];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FBSystemShell_assertWatchdogEnabledForLimitedDurationForReason___block_invoke;
    v10[3] = &unk_1E783B5A8;
    objc_copyWeak(&v11, &location);
    v6 = [v5 assertionWithIdentifier:@"FBSystemShell temporary watchdog" stateDidChangeHandler:v10];
    lock_temporaryWatchdogAssertion = self->_lock_temporaryWatchdogAssertion;
    self->_lock_temporaryWatchdogAssertion = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [(BSCompoundAssertion *)self->_lock_temporaryWatchdogAssertion acquireForReason:reasonCopy];

  return v8;
}

void __66__FBSystemShell_assertWatchdogEnabledForLimitedDurationForReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] setIndependentWatchdogEnabled:{objc_msgSend(v5, "isActive")}];
  }
}

- (void)_addBlockToExecuteWhenReady:(id)ready
{
  readyCopy = ready;
  os_unfair_lock_lock(&self->_lock);
  lock_blocksToRunWhenReady = self->_lock_blocksToRunWhenReady;
  if (lock_blocksToRunWhenReady)
  {
    v5 = MEMORY[0x1AC572E40](readyCopy);
    [(NSMutableArray *)lock_blocksToRunWhenReady addObject:v5];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    readyCopy[2]();
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSystemShell *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromFBSystemShellState(self->_state);
  v5 = [v3 appendObject:v4 withName:@"state"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSystemShell *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(FBSystemShell *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_initializationContext withName:@"initializationContext" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (void)_setSystemIdleSleepDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!reasonCopy)
  {
    [FBSystemShell _setSystemIdleSleepDisabled:a2 forReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSystemShell _setSystemIdleSleepDisabled:a2 forReason:?];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableSet *)self->_lock_preventIdleSleepReasons containsObject:reasonCopy];
  if (disabledCopy)
  {
    if ((v8 & 1) == 0)
    {
      v9 = FBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v27 = reasonCopy;
        _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_INFO, "Preventing system idle sleep for reason: %{public}@", buf, 0xCu);
      }

      [(NSMutableSet *)self->_lock_preventIdleSleepReasons addObject:reasonCopy];
    }
  }

  else if (v8)
  {
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v27 = reasonCopy;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_INFO, "Allowing system idle sleep for reason: %{public}@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_lock_preventIdleSleepReasons removeObject:reasonCopy];
  }

  v11 = FBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([(NSMutableSet *)self->_lock_preventIdleSleepReasons count])
    {
      lock_preventIdleSleepReasons = self->_lock_preventIdleSleepReasons;
    }

    else
    {
      lock_preventIdleSleepReasons = @"(none)";
    }

    *buf = 138543362;
    v27 = lock_preventIdleSleepReasons;
    _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Prevent idle sleep reasons: %{public}@", buf, 0xCu);
  }

  v13 = [(NSMutableSet *)self->_lock_preventIdleSleepReasons count];
  lock_preventSleepAssertion = self->_lock_preventSleepAssertion;
  if (v13)
  {
    if (!lock_preventSleepAssertion)
    {
      v15 = FBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "Now preventing system idle sleep.", buf, 2u);
      }

      v16 = objc_alloc(MEMORY[0x1E69C7548]);
      currentProcess = [MEMORY[0x1E69C7640] currentProcess];
      v18 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SystemShell-PreventIdleSleep"];
      v25 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v20 = [v16 initWithExplanation:@"FBSystemApp-PreventIdleSleep" target:currentProcess attributes:v19];
      v21 = self->_lock_preventSleepAssertion;
      self->_lock_preventSleepAssertion = v20;

      [(RBSAssertion *)self->_lock_preventSleepAssertion acquireWithError:0];
    }
  }

  else if (lock_preventSleepAssertion)
  {
    v22 = FBLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A89DD000, v22, OS_LOG_TYPE_DEFAULT, "Now allowing system idle sleep.", buf, 2u);
    }

    [(RBSAssertion *)self->_lock_preventSleepAssertion invalidate];
    v23 = self->_lock_preventSleepAssertion;
    self->_lock_preventSleepAssertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_setState:(unint64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == state)
  {
LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if (state == 1)
  {
    if (state)
    {
      [FBSystemShell _setState:a2];
    }

    self->_state = 1;
    goto LABEL_15;
  }

  if (state == 2)
  {
    if (state != 1)
    {
      [FBSystemShell _setState:a2];
    }

    self->_state = 2;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableArray *)self->_lock_blocksToRunWhenReady copy];
    lock_blocksToRunWhenReady = self->_lock_blocksToRunWhenReady;
    self->_lock_blocksToRunWhenReady = 0;

    os_unfair_lock_unlock(&self->_lock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v15 + 1) + 8 * v11++) + 16))();
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    goto LABEL_15;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set to state: uninitialized."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [FBSystemShell _setState:a2];
  }

  [v13 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_createSingletonWithOptions:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create multiple FBSystemShell instances."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setSystemIdleSleepDisabled:(char *)a1 forReason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    v7 = @"FBSystemShell.m";
    v8 = 1024;
    v9 = 247;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setSystemIdleSleepDisabled:(char *)a1 forReason:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    v7 = @"FBSystemShell.m";
    v8 = 1024;
    v9 = 247;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setState:(const char *)a1 .cold.3(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

@end