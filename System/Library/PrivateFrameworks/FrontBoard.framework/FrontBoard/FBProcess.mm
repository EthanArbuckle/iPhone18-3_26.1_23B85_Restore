@interface FBProcess
+ (OS_dispatch_queue)calloutQueue;
+ (OS_dispatch_workloop)userInitiatedWorkloop;
+ (id)_currentProcess;
- (BOOL)_setSceneLifecycleState:(unsigned __int8)a3;
- (BOOL)_shouldWatchdogWithDeclineReason:(id *)a3;
- (BOOL)_startWatchdogTimerForContext:(id)a3;
- (BOOL)_watchdog:(id)a3 shouldTerminateWithDeclineReason:(id *)a4;
- (BOOL)bootstrapWithDelegate:(id)a3;
- (BOOL)executableLivesOnSystemPartition;
- (BOOL)isBeingDebugged;
- (BOOL)isFinishedLaunching;
- (BOOL)isForeground;
- (BOOL)isPendingExit;
- (BOOL)isPlatformBinary;
- (BOOL)isRunning;
- (BOOL)matchesProcess:(id)a3;
- (FBProcess)init;
- (FBProcessDelegate)delegate;
- (FBProcessExitContext)exitContext;
- (FBProcessState)state;
- (FBSApplicationInfo)applicationInfo;
- (NSString)description;
- (id)_createBootstrapContext;
- (id)_initWithProcessManager:(id)a3 identity:(id)a4 handle:(id)a5 executionContext:(id)a6;
- (id)_newWatchdogForContext:(id)a3 completion:(id)a4;
- (id)_observers;
- (id)_watchdog:(id)a3 terminationRequestForError:(id)a4;
- (id)_watchdogProvider;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)processPredicate;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_watchdogReportType;
- (int64_t)taskState;
- (int64_t)visibility;
- (void)_bootstrapAndExec;
- (void)_configureBundleInfo;
- (void)_configureIntrinsicsFromHandle:(id)a3;
- (void)_executeBlockAfterBootstrap:(id)a3;
- (void)_executeBlockAfterLaunchCompletes:(id)a3;
- (void)_executeBlockAsCurrentProcess:(id)a3;
- (void)_killForReason:(int64_t)a3 andReport:(BOOL)a4 withDescription:(id)a5 completion:(id)a6;
- (void)_launchDidComplete:(BOOL)a3 finalizeBlock:(id)a4;
- (void)_lock_consumeLock_executeTerminationRequest;
- (void)_lock_consumeLock_performGracefulKill;
- (void)_noteAssertionStateDidChange;
- (void)_notePendingExitForReason:(id)a3;
- (void)_noteStateDidUpdate:(id)a3;
- (void)_processDidExitWithContext:(id)a3;
- (void)_rebuildState;
- (void)_rebuildState:(id)a3;
- (void)_terminateWithRequest:(id)a3 completion:(id)a4;
- (void)_terminateWithRequest:(id)a3 forWatchdog:(id)a4;
- (void)_updateStateWithBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)bootstrapLock:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)logProem;
- (void)removeObserver:(id)a3;
- (void)setWatchdogProvider:(id)a3;
@end

@implementation FBProcess

- (void)logProem
{
  if (a1)
  {
    v2 = a1[13];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@:-1]", a1[12]];
    }

    v1 = vars8;
  }

  return a1;
}

- (id)succinctDescription
{
  v2 = [(FBProcess *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_bootstrapAndExec
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have either a handle or an error, but not both: %@ // %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 0, 0, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_configureBundleInfo
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_rbsHandle != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = MEMORY[0x1E696AEC0];
  identityDescription = self->_identityDescription;
  versionedPID = self->_versionedPID;
  v7 = NSStringFromBSVersionedPID();
  v8 = [v4 stringWithFormat:@"%@:%@", identityDescription, v7];
  [v3 appendString:v8 withName:0];

  return v3;
}

- (id)_createBootstrapContext
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7590]);
  [v3 setIdentity:self->_identity];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setExplanation:v5];

  v6 = [(FBProcessExecutionContext *)self->_executionContext overrideExecutablePath];
  [v3 _setOverrideExecutablePath:v6];

  v7 = [(FBProcessExecutionContext *)self->_executionContext overrideExecutableSlice];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "type")}];
    v17[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v3 setLsBinpref:v10];

    if ([v8 subtype] != -1)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "subtype")}];
      v16 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [v3 setLsBinprefSubtype:v12];
    }
  }

  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E699F9C0]];
  [v3 setManagedEndpointLaunchIdentifiers:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

void __30__FBProcess__bootstrapAndExec__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 setPid:v3];
  [v4 setTaskState:2];
  [v4 setVisibility:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 48) currentState];
  if ([v5 isRunning])
  {
    [*(a1 + 32) _rebuildState:v5];
  }
}

- (id)_watchdogProvider
{
  os_unfair_lock_lock(&self->_watchdogProviderLock);
  v3 = self->_watchdogProvider;
  os_unfair_lock_unlock(&self->_watchdogProviderLock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(FBProcess *)self delegate];
  }

  v5 = v4;

  return v5;
}

- (FBSApplicationInfo)applicationInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lock_applicationInfo;
  if (v3)
  {
    v4 = v3;
    os_unfair_recursive_lock_unlock();
    goto LABEL_13;
  }

  v5 = [(FBProcess *)self isApplicationProcess];
  os_unfair_recursive_lock_unlock();
  if (!v5)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v6 = +[FBSystemService sharedInstanceIfExists];
  v7 = [v6 _applicationInfoProvider];

  if (self->_auditToken && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v7 applicationInfoForAuditToken:self->_auditToken];
  }

  else
  {
    if (!self->_bundleIdentifier)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v8 = [v7 applicationInfoForBundleIdentifier:?];
  }

  v4 = v8;
LABEL_12:
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_lock_applicationInfo, v4);
  os_unfair_recursive_lock_unlock();

LABEL_13:

  return v4;
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_observerLock);
  v3 = [(NSMutableSet *)self->_observerLock_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);

  return v3;
}

- (void)_noteAssertionStateDidChange
{
  v3 = [(FBProcess *)self delegate];
  [v3 noteProcessAssertionStateDidChange:self];
}

void __30__FBProcess__bootstrapAndExec__block_invoke_118(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 noteProcessDidLaunch:*(a1 + 32)];

  v3 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(*(a1 + 32) + 176);
  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = 0;

  v7 = *(a1 + 32);
  os_unfair_recursive_lock_unlock();
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__FBProcess__bootstrapAndExec__block_invoke_2_119;
  v10[3] = &unk_1E783B240;
  v11 = v4;
  v12 = v8;
  v9 = v4;
  [v8 _executeBlockAsCurrentProcess:v10];
}

void __30__FBProcess__bootstrapAndExec__block_invoke_2_119(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v18 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 40) isApplicationProcess])
  {
    *(*(a1 + 40) + 330) = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [*(a1 + 40) _observers];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) applicationProcessWillLaunch:*(a1 + 40)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (OS_dispatch_workloop)userInitiatedWorkloop
{
  if (userInitiatedWorkloop_onceToken != -1)
  {
    +[FBProcess userInitiatedWorkloop];
  }

  v3 = userInitiatedWorkloop_queue;

  return v3;
}

- (NSString)description
{
  description = self->_description;
  if (description)
  {
    v3 = description;
  }

  else
  {
    v3 = [(FBProcess *)self succinctDescription];
  }

  return v3;
}

- (FBProcessDelegate)delegate
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (BOOL)isForeground
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state isForeground];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isPendingExit
{
  os_unfair_recursive_lock_lock_with_options();
  lock_pendingExit = self->_lock_pendingExit;
  os_unfair_recursive_lock_unlock();
  return lock_pendingExit;
}

- (BOOL)isRunning
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state isRunning];
  os_unfair_recursive_lock_unlock();
  return v3;
}

+ (OS_dispatch_queue)calloutQueue
{
  if (calloutQueue_onceToken != -1)
  {
    +[FBProcess calloutQueue];
  }

  v3 = calloutQueue_queue;

  return v3;
}

- (BOOL)isBeingDebugged
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state isDebugging];
  os_unfair_recursive_lock_unlock();
  if (v3)
  {
    return 1;
  }

  pid = self->_pid;

  return BSPIDIsBeingDebugged();
}

- (BOOL)isFinishedLaunching
{
  os_unfair_recursive_lock_lock_with_options();
  lock_launchSuccess = self->_lock_launchSuccess;
  os_unfair_recursive_lock_unlock();
  return lock_launchSuccess;
}

- (FBProcessState)state
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

+ (id)_currentProcess
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"FBProcess"];

  return v4;
}

void __25__FBProcess_calloutQueue__block_invoke()
{
  v3 = [MEMORY[0x1E698E698] serial];
  v0 = [v3 serviceClass:33];
  v1 = BSDispatchQueueCreate();
  v2 = calloutQueue_queue;
  calloutQueue_queue = v1;
}

void __34__FBProcess_userInitiatedWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.frontboard.process.user-initiated");
  v1 = userInitiatedWorkloop_queue;
  userInitiatedWorkloop_queue = inactive;

  dispatch_set_qos_class_floor(userInitiatedWorkloop_queue, QOS_CLASS_USER_INITIATED, 0);
  v2 = userInitiatedWorkloop_queue;

  dispatch_activate(v2);
}

- (BOOL)executableLivesOnSystemPartition
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_executableLivesOnSystemPartition == 0x7FFFFFFFFFFFFFFFLL && self->_executablePath)
  {
    BSPathExistsOnSystemPartition();
    self->_lock_executableLivesOnSystemPartition = BSSettingFlagForBool();
  }

  IsYes = BSSettingFlagIsYes();
  os_unfair_recursive_lock_unlock();
  return IsYes;
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
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_invalidated == YES", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)processPredicate
{
  if (self->_pid < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69C7610];
    v3 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v4 = [v2 predicateMatchingIdentifier:v3];
  }

  return v4;
}

- (void)invalidate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBProcessExitContext)exitContext
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lock_exitContext;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (FBProcess)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[FBProcess init] is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"FBProcess.m";
    v17 = 1024;
    v18 = 170;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithProcessManager:(id)a3 identity:(id)a4 handle:(id)a5 executionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    [FBProcess _initWithProcessManager:v13 identity:a2 handle:? executionContext:?];
  }

  v15 = v14;
  if ((v13 == 0) == (v14 != 0))
  {
    v68.receiver = self;
    v68.super_class = FBProcess;
    v16 = [(FBProcess *)&v68 init];
    v17 = v16;
    if (v16)
    {
      objc_storeWeak(&v16->_processManager, v11);
      v17->_lock = 0;
      *&v17->_observerLock._os_unfair_lock_opaque = 0;
      v17->_pid = -1;
      v17->_versionedPID = -1;
      objc_storeStrong(&v17->_identity, a4);
      v18 = [v12 description];
      identityDescription = v17->_identityDescription;
      v17->_identityDescription = v18;

      v20 = [v15 copy];
      executionContext = v17->_executionContext;
      v17->_executionContext = v20;

      v22 = [(FBProcessExecutionContext *)v17->_executionContext watchdogProvider];
      watchdogProvider = v17->_watchdogProvider;
      v17->_watchdogProvider = v22;

      v24 = [v12 embeddedApplicationIdentifier];
      bundleIdentifier = v17->_bundleIdentifier;
      v17->_bundleIdentifier = v24;

      v17->_lock_executableLivesOnSystemPartition = 0x7FFFFFFFFFFFFFFFLL;
      v17->_lock_platformBinary = 0x7FFFFFFFFFFFFFFFLL;
      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      observerLock_observers = v17->_observerLock_observers;
      v17->_observerLock_observers = v26;

      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      lock_bootstrapBlocks = v17->_lock_bootstrapBlocks;
      v17->_lock_bootstrapBlocks = v28;

      v30 = objc_autoreleasePoolPush();
      v31 = [(NSString *)v17->_identityDescription rangeOfString:@"{"];
      v32 = [(NSString *)v17->_identityDescription rangeOfString:@"}" options:4];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32;
        if (v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = v33;
          v36 = [(NSString *)v17->_identityDescription substringToIndex:v31];
          v37 = [(NSString *)v17->_identityDescription substringFromIndex:v34 + v35];
          v38 = [v36 stringByAppendingString:v37];
          v39 = v17->_identityDescription;
          v17->_identityDescription = v38;
        }
      }

      v40 = -[NSString rangeOfString:](v17->_identityDescription, "rangeOfString:", @"(");
      v41 = [(NSString *)v17->_identityDescription rangeOfString:@"" options:?], 4);
      if (v40 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = v41;
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = v42;
          v45 = [(NSString *)v17->_identityDescription substringToIndex:v40];
          v46 = [(NSString *)v17->_identityDescription substringFromIndex:v43 + v44];
          v47 = [v45 stringByAppendingString:v46];
          v48 = v17->_identityDescription;
          v17->_identityDescription = v47;
        }
      }

      v49 = [(NSString *)v17->_identityDescription rangeOfString:@"["];
      v50 = [(NSString *)v17->_identityDescription rangeOfString:@"]" options:4];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v52 = v50;
        if (v50 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v53 = v51;
          v54 = [(NSString *)v17->_identityDescription substringToIndex:v49];
          v55 = [(NSString *)v17->_identityDescription substringFromIndex:v52 + v53];
          v56 = [v54 stringByAppendingString:v55];
          v57 = v17->_identityDescription;
          v17->_identityDescription = v56;
        }
      }

      objc_autoreleasePoolPop(v30);
      if (v13)
      {
        [(FBProcess *)v17 _configureIntrinsicsFromHandle:v13];
      }

      v58 = [[FBProcessState alloc] initWithPid:v17->_pid];
      lock_state = v17->_lock_state;
      v17->_lock_state = v58;

      [(FBProcess *)v17 _finishInit];
      v60 = [FBWorkspace alloc];
      v61 = [v11 eventDispatcher];
      v62 = [(FBWorkspace *)v60 _initWithDispatcher:v61 process:v17];
      workspace = v17->_workspace;
      v17->_workspace = v62;

      if (!v17->_executionContext)
      {
        v64 = [[FBProcessExecutionContext alloc] initWithIdentity:v12];
        v65 = v17->_executionContext;
        v17->_executionContext = v64;
      }
    }

    return v17;
  }

  else
  {
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have either a handle or a context, but not both: %@ // %@", v13, v14];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _initWithProcessManager:identity:handle:executionContext:];
    }

    [v67 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[FBProcessObserver alloc] initWithObserver:v4];

    os_unfair_lock_lock(&self->_observerLock);
    if (v5 && ([(NSMutableSet *)self->_observerLock_observers containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_observerLock_observers addObject:v5];
      os_unfair_lock_unlock(&self->_observerLock);
      v6 = +[FBProcess calloutQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __25__FBProcess_addObserver___block_invoke;
      v7[3] = &unk_1E783B240;
      v7[4] = self;
      v8 = v5;
      dispatch_async(v6, v7);
    }

    else
    {
      os_unfair_lock_unlock(&self->_observerLock);
      [(FBProcessObserver *)v5 invalidate];
    }
  }
}

uint64_t __25__FBProcess_addObserver___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2[328] == 1)
  {
    result = [*(result + 40) processWillExit:?];
    v2 = *(v1 + 32);
  }

  if (v2[329] == 1)
  {
    result = [*(v1 + 40) processDidExit:?];
    v2 = *(v1 + 32);
  }

  if (v2[330] == 1)
  {
    result = [*(v1 + 40) applicationProcessWillLaunch:?];
    v2 = *(v1 + 32);
  }

  if (v2[331] == 1)
  {
    v3 = *(v1 + 40);

    return [v3 applicationProcessDidLaunch:?];
  }

  return result;
}

- (void)removeObserver:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observerLock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(NSMutableSet *)self->_observerLock_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 observer];
          v12 = v11;
          if (v11)
          {
            v13 = v11 == v4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            [(NSMutableSet *)self->_observerLock_observers removeObject:v10];
            [v10 invalidate];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_observerLock);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setWatchdogProvider:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_watchdogProviderLock);
  watchdogProvider = self->_watchdogProvider;
  self->_watchdogProvider = v4;

  os_unfair_lock_unlock(&self->_watchdogProviderLock);
}

- (void)bootstrapLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_bootstrapLock);
  if (v4)
  {
    v4[2](v4, self);
  }

  os_unfair_lock_unlock(&self->_bootstrapLock);
}

- (BOOL)bootstrapWithDelegate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBProcess bootstrapWithDelegate:a2];
  }

  v6 = v5;
  os_unfair_lock_assert_owner(&self->_bootstrapLock);
  os_unfair_recursive_lock_lock_with_options();
  lock_attemptedBootstrap = self->_lock_attemptedBootstrap;
  if (lock_attemptedBootstrap)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_lock_attemptedBootstrap = 1;
    objc_storeWeak(&self->_lock_delegate, v6);
    os_unfair_recursive_lock_unlock();
    [(FBProcess *)self _bootstrapAndExec];
  }

  return !lock_attemptedBootstrap;
}

- (int64_t)taskState
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state taskState];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (int64_t)visibility
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state visibility];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isPlatformBinary
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_platformBinary == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(FBProcess *)self applicationInfo];
    v4 = v3;
    if (!v3 || [v3 type] == 2)
    {
      rbsHandle = self->_rbsHandle;
      if (rbsHandle)
      {
        [(RBSProcessHandle *)rbsHandle auditToken];
      }

      BSAuditTokenRepresentsPlatformBinary();
    }

    self->_lock_platformBinary = BSSettingFlagForBool();

    lock_platformBinary = self->_lock_platformBinary;
  }

  IsYes = BSSettingFlagIsYes();
  os_unfair_recursive_lock_unlock();
  return IsYes;
}

- (void)_executeBlockAfterBootstrap:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    lock_bootstrapBlocks = self->_lock_bootstrapBlocks;
    if (lock_bootstrapBlocks)
    {
      v6 = [v4 copy];
      v7 = MEMORY[0x1AC572E40]();
      [(NSMutableArray *)lock_bootstrapBlocks addObject:v7];
    }

    else
    {
      v8 = +[FBProcess calloutQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__FBProcess__executeBlockAfterBootstrap___block_invoke;
      v9[3] = &unk_1E783B328;
      v9[4] = self;
      v10 = v4;
      dispatch_async(v8, v9);
    }

    os_unfair_recursive_lock_unlock();
  }
}

void __41__FBProcess__executeBlockAfterBootstrap___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__FBProcess__executeBlockAfterBootstrap___block_invoke_2;
  v4[3] = &unk_1E783C368;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _executeBlockAsCurrentProcess:v4];
}

void __41__FBProcess__executeBlockAfterBootstrap___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 48))
  {
    v3 = *(v1 + 16);
    v4 = *(a1 + 40);

    v3(v4, v2, 0);
  }

  else
  {
    v6 = [*(a1 + 32) exitContext];
    v5 = [v6 createError];
    (*(v1 + 16))(v1, v2, v5);
  }
}

- (void)_executeBlockAfterLaunchCompletes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    os_unfair_recursive_lock_lock_with_options();
    if (self->_lock_launchFinalized)
    {
      lock_launchSuccess = self->_lock_launchSuccess;
      os_unfair_recursive_lock_unlock();
      v11[2](v11, lock_launchSuccess);
    }

    else
    {
      lock_launchCompletionBlocks = self->_lock_launchCompletionBlocks;
      if (lock_launchCompletionBlocks)
      {
        v7 = [v11 copy];
        v8 = MEMORY[0x1AC572E40]();
        [(NSMutableArray *)lock_launchCompletionBlocks addObject:v8];
      }

      else
      {
        v9 = MEMORY[0x1E695DF70];
        v7 = [v11 copy];
        v10 = [v9 arrayWithObject:v7];
        v8 = self->_lock_launchCompletionBlocks;
        self->_lock_launchCompletionBlocks = v10;
      }

      os_unfair_recursive_lock_unlock();
    }

    v4 = v11;
  }
}

- (void)_notePendingExitForReason:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_pendingExit)
  {
    v5 = FBLogProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _notePendingExitForReason:?];
    }

    self->_lock_pendingExit = 1;
    v6 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FBProcess__notePendingExitForReason___block_invoke;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_async(v6, block);

    if (self->_rbsHandle)
    {
      if ([(FBProcess *)self isApplicationProcess])
      {
        v7 = [MEMORY[0x1E69C75D0] currentProcess];
        v8 = [v7 fb_canTaskSuspend];

        if ((v8 & 1) == 0)
        {
          v9 = [MEMORY[0x1E695DF00] date];
          v10 = [(FBProcess *)self logProem];
          v21[0] = 0;
          v21[1] = v21;
          v21[2] = 0x2020000000;
          v21[3] = 0;
          v11 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:v10];
          lock_exitTimer = self->_lock_exitTimer;
          self->_lock_exitTimer = v11;

          v13 = self->_lock_exitTimer;
          v14 = +[FBProcess userInitiatedWorkloop];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __39__FBProcess__notePendingExitForReason___block_invoke_2;
          v17[3] = &unk_1E783C390;
          v17[4] = self;
          v15 = v9;
          v18 = v15;
          v20 = v21;
          v16 = v10;
          v19 = v16;
          [(BSAbsoluteMachTimer *)v13 scheduleRepeatingWithFireInterval:v14 repeatInterval:v17 leewayInterval:10.0 queue:1.0 handler:0.1];

          _Block_object_dispose(v21, 8);
        }
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __39__FBProcess__notePendingExitForReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 328) = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) processWillExit:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __39__FBProcess__notePendingExitForReason___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 304))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(v4 + 48) lastExitContext];
  }

  if ([v5 type])
  {
    v6 = [[FBProcessExitContext alloc] initWithUnderlyingContext:v5];
    [*(a1 + 32) _processDidExitWithContext:v6];
LABEL_15:

    goto LABEL_16;
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v8 = v7;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 24) + 1;
  *(v9 + 24) = v10;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v10, 1) >= 0x199999999999999AuLL)
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v11 = OS_LOG_TYPE_ERROR;
  }

  v12 = FBLogProcess();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = *(a1 + 48);
    v25 = 138543618;
    v26 = v13;
    v27 = 2048;
    v28 = -v8;
    _os_log_impl(&dword_1A89DD000, v12, v11, "%{public}@: Still waiting on exit context after %.1f seconds", &v25, 0x16u);
  }

  if (v8 <= -300.0)
  {
    v14 = FBLogProcess();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __39__FBProcess__notePendingExitForReason___block_invoke_2_cold_1(a1, v14, v15);
    }

    v6 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBProcessTermination" code:2 configuration:&__block_literal_global_80];
    v16 = [[FBProcessExitContext alloc] initWithTerminationError:v6];
    [*(a1 + 32) _processDidExitWithContext:v16];
    v17 = objc_alloc(MEMORY[0x1E69C7650]);
    v18 = [(FBProcessExitContext *)v6 userInfo];
    v19 = [v18 objectForKey:*MEMORY[0x1E696A588]];
    v20 = [v17 initWithExplanation:v19];

    [v20 setReportType:0];
    [v20 setExceptionDomain:10];
    [v20 setExceptionCode:4196196013];
    [v20 setMaximumTerminationResistance:40];
    v21 = objc_alloc(MEMORY[0x1E69C7660]);
    v22 = [MEMORY[0x1E69C7610] predicateMatching:*(*(a1 + 32) + 48)];
    v23 = [v21 initWithPredicate:v22 context:v20];

    [v23 execute:0];
    goto LABEL_15;
  }

LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
}

void __39__FBProcess__notePendingExitForReason___block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFailureDescription:@"Timed out waiting for process termination"];
  [v2 setFailureReason:@"No exit notification received after 5 minutes"];
  [v2 setCodeDescription:@"timed-out"];
}

- (void)_updateStateWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_didExit)
  {
    if (self->_lock_updatingState)
    {
      if (v4)
      {
        v4[2](v4, self->_lock_state);
      }
    }

    else
    {
      p_lock_state = &self->_lock_state;
      lock_state = self->_lock_state;
      self->_lock_updatingState = 1;
      v7 = [(FBProcessState *)lock_state copy];
      if (v4)
      {
        v4[2](v4, *p_lock_state);
      }

      v8 = [v7 taskState];
      if (v8 != [(FBProcessState *)*p_lock_state taskState])
      {
        v9 = FBLogProcess();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      v10 = [v7 visibility];
      if (v10 != [(FBProcessState *)*p_lock_state visibility])
      {
        v11 = FBLogProcess();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      v12 = [v7 isDebugging];
      v13 = v12 ^ [(FBProcessState *)*p_lock_state isDebugging];
      if (v13 == 1)
      {
        v14 = FBLogProcess();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      if (([v7 isEqual:*p_lock_state] & 1) == 0)
      {
        v15 = [(FBProcessState *)self->_lock_state copy];
        v16 = +[FBProcess calloutQueue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __35__FBProcess__updateStateWithBlock___block_invoke;
        v18[3] = &unk_1E783C3B8;
        v18[4] = self;
        v19 = v7;
        v20 = v15;
        v21 = v13;
        v17 = v15;
        dispatch_async(v16, v18);
      }

      self->_lock_updatingState = 0;
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __35__FBProcess__updateStateWithBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) process:*(a1 + 32) stateDidChangeFromState:*(a1 + 40) toState:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56) == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 32) _observers];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) applicationProcessDebuggingStateDidChange:*(a1 + 32)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [FBProcess _configureIntrinsicsFromHandle:a2];
  }

  v7 = v6;
  p_rbsHandle = &self->_rbsHandle;
  rbsHandle = self->_rbsHandle;
  if (rbsHandle != v6)
  {
    if (rbsHandle)
    {
      v10 = MEMORY[0x1E698E620];
      [(RBSProcessHandle *)v6 auditToken];
      v11 = [v10 tokenFromAuditToken:v39];
      if ([v11 isEqual:self->_auditToken])
      {
        v12 = [(RBSProcessHandle *)*p_rbsHandle identity];
        v13 = [(RBSProcessHandle *)v7 identity];
        v14 = [v12 isEqual:v13];

        if ((v14 & 1) == 0)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = [(RBSProcessHandle *)*p_rbsHandle identity];
          v31 = [(RBSProcessHandle *)v7 identity];
          v32 = [v29 stringWithFormat:@"identity mismatch : existing=%@ new=%@", v30, v31];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [FBProcess _configureIntrinsicsFromHandle:];
          }

          [v32 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1A8A0E668);
        }

        goto LABEL_14;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"auditToken mismatch : existing=%@ new=%@", self->_auditToken, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

LABEL_30:
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E5E0);
    }

    objc_storeStrong(&self->_rbsHandle, a3);
    self->_pid = [(RBSProcessHandle *)self->_rbsHandle pid];
    v15 = MEMORY[0x1E698E620];
    v16 = self->_rbsHandle;
    if (v16)
    {
      [(RBSProcessHandle *)v16 auditToken];
    }

    else
    {
      memset(v39, 0, sizeof(v39));
    }

    v17 = [v15 tokenFromAuditToken:v39];
    auditToken = self->_auditToken;
    self->_auditToken = v17;

    self->_versionedPID = [(BSAuditToken *)self->_auditToken versionedPID];
    v19 = [MEMORY[0x1E69C7640] targetWithPid:self->_pid];
    target = self->_target;
    self->_target = v19;

    v21 = [(FBProcess *)self succinctDescription];
    description = self->_description;
    self->_description = v21;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@:%d]", self->_identityDescription, self->_pid];
    handleDescription = self->_handleDescription;
    self->_handleDescription = v23;

    pid = self->_pid;
    if (pid != [(BSAuditToken *)self->_auditToken pid])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RBSProcessHandle %@ gave us a pid (%d) and an audit token with pid (%d) that don't match", self->_rbsHandle, self->_pid, -[BSAuditToken pid](self->_auditToken, "pid")];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E6D8);
    }

    if ([(BSAuditToken *)self->_auditToken isInvalid])
    {
      v34 = self->_rbsHandle;
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RBSProcessHandle %@ gave us a bogus audit token: %@", v34, self->_auditToken];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E738);
    }

    if (([(RBSProcessIdentity *)self->_identity isXPCService]& 1) == 0)
    {
      identity = self->_identity;
      v27 = [(RBSProcessHandle *)v7 identity];
      LOBYTE(identity) = [(RBSProcessIdentity *)identity isEqual:v27];

      if ((identity & 1) == 0)
      {
        v36 = MEMORY[0x1E696AEC0];
        v37 = self->_identity;
        v38 = [(RBSProcessHandle *)v7 identity];
        v28 = [v36 stringWithFormat:@"processIdentity %@ is not equal to handleIdentity %@", v37, v38];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBProcess _configureIntrinsicsFromHandle:];
        }

        goto LABEL_30;
      }
    }
  }

LABEL_14:
}

- (BOOL)_setSceneLifecycleState:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  lock_sceneState = self->_lock_sceneState;
  if (lock_sceneState != v3)
  {
    self->_lock_sceneState = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__FBProcess__setSceneLifecycleState___block_invoke;
    v7[3] = &__block_descriptor_33_e24_v16__0__FBProcessState_8l;
    v8 = v3;
    [(FBProcess *)self _updateStateWithBlock:v7];
  }

  os_unfair_recursive_lock_unlock();
  return lock_sceneState != v3;
}

uint64_t __37__FBProcess__setSceneLifecycleState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (v2 == 2);
  }

  return [a2 setVisibility:v3];
}

- (void)_noteStateDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [v5 copy];

  if ([v6 taskState])
  {
    [(FBProcess *)self _rebuildState:v6];
  }

  else
  {
    v7 = FBLogProcess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FBProcess _noteStateDidUpdate:v4];
    }
  }
}

- (void)_executeBlockAsCurrentProcess:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  v6 = [v4 currentThread];
  v8 = [v6 threadDictionary];

  v7 = [v8 objectForKey:@"FBProcess"];
  [v8 setObject:self forKey:@"FBProcess"];
  v5[2](v5);

  if (v7)
  {
    [v8 setObject:v7 forKey:@"FBProcess"];
  }

  else
  {
    [v8 removeObjectForKey:@"FBProcess"];
  }
}

- (void)_processDidExitWithContext:(id)a3
{
  v4 = a3;
  [(FBProcess *)self _launchDidComplete:0 finalizeBlock:0];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_didExit)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    [(FBProcess *)self _notePendingExitForReason:@"process exited"];
    if (!v4 && (!self->_bootstrapError || (v4 = [[FBProcessExitContext alloc] initWithLaunchError:self->_bootstrapError]) == 0))
    {
      v5 = FBLogProcess();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [FBProcess _processDidExitWithContext:];
      }

      v6 = [FBProcessExitContext alloc];
      v7 = objc_alloc_init(MEMORY[0x1E69C75B8]);
      v4 = [(FBProcessExitContext *)v6 initWithUnderlyingContext:v7];
    }

    [(FBProcessExitContext *)v4 setTerminationRequest:self->_lock_terminationRequest];
    [(FBProcessExitContext *)v4 setWatchdogContext:self->_lock_terminationWatchdogContext];
    [(FBProcessExitContext *)v4 setTerminationReason:self->_terminationReason];
    [(FBProcessExitContext *)v4 setStateBeforeExiting:self->_lock_state];
    objc_storeStrong(&self->_lock_exitContext, v4);
    [(FBSProcessWatchdog *)self->_lock_watchdog invalidate];
    [(BSAbsoluteMachTimer *)self->_lock_exitTimer invalidate];
    lock_exitTimer = self->_lock_exitTimer;
    self->_lock_exitTimer = 0;

    [(RBSAssertion *)self->_lock_gracefulExitAssertion invalidate];
    lock_gracefulExitAssertion = self->_lock_gracefulExitAssertion;
    self->_lock_gracefulExitAssertion = 0;

    v10 = FBLogProcess();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _processDidExitWithContext:];
    }

    [(FBProcess *)self _updateStateWithBlock:&__block_literal_global_158];
    self->_lock_didExit = 1;
    v11 = self->_lock_terminateRequestCompletionBlocks;
    lock_terminateRequestCompletionBlocks = self->_lock_terminateRequestCompletionBlocks;
    self->_lock_terminateRequestCompletionBlocks = 0;

    v13 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FBProcess__processDidExitWithContext___block_invoke_2;
    block[3] = &unk_1E783B300;
    block[4] = self;
    v4 = v4;
    v16 = v4;
    v17 = v11;
    v14 = v11;
    dispatch_async(v13, block);

    os_unfair_recursive_lock_unlock();
  }
}

void __40__FBProcess__processDidExitWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTaskState:1];
  [v2 setVisibility:0];
}

void __40__FBProcess__processDidExitWithContext___block_invoke_2(id *a1)
{
  v2 = [a1[4] delegate];
  [v2 noteProcessDidExit:a1[4]];

  v3 = a1[4];
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1[4] + 22);
  v5 = a1[4];
  v6 = v5[22];
  v5[22] = 0;

  v7 = a1[4];
  os_unfair_recursive_lock_unlock();
  *(a1[4] + 329) = 1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__FBProcess__processDidExitWithContext___block_invoke_3;
  v13[3] = &unk_1E783B2D8;
  v14 = v4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[4];
  v15 = v9;
  v16 = v10;
  v17 = a1[6];
  v11 = v4;
  [v8 _executeBlockAsCurrentProcess:v13];
  v12 = FBAnalyticsLogHangTracerEvent(a1[4], 3);
}

void __40__FBProcess__processDidExitWithContext___block_invoke_3(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if ([a1[4] count])
  {
    v2 = [a1[5] createError];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v3 = a1[4];
    v4 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v29;
      do
      {
        v7 = 0;
        do
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = a1[6];
          (*(*(*(&v28 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v5);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [a1[6] _observers];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v24 + 1) + 8 * v13++) processDidExit:a1[6]];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = a1[7];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v20 + 1) + 8 * v18) + 16))(*(*(&v20 + 1) + 8 * v18));
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_rebuildState
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_rbsState)
  {
    [(FBProcess *)self _rebuildState:?];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_rebuildState:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [FBProcess _rebuildState:a2];
  }

  v7 = v6;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_lock_rbsState, a3);
  v8 = [(FBProcessState *)self->_lock_state taskState];
  v9 = [v7 taskState] - 2;
  if (v9 <= 2)
  {
    v8 = qword_1A8A71FA0[v9];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__FBProcess__rebuildState___block_invoke;
  v11[3] = &unk_1E783C448;
  v13 = self;
  v14 = v8;
  v12 = v7;
  v10 = v7;
  [(FBProcess *)self _updateStateWithBlock:v11];
  os_unfair_recursive_lock_unlock();
}

void __27__FBProcess__rebuildState___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setTaskState:*(a1 + 48)];
  if ([*(a1 + 32) isDebugging] & 1) != 0 || (v3 = *(a1 + 40), (*(v3 + 299)))
  {
    v4 = 1;
  }

  else
  {
    v5 = *(v3 + 16);
    v4 = BSPIDIsBeingDebugged();
  }

  [v6 setDebugging:v4];
}

- (void)_launchDidComplete:(BOOL)a3 finalizeBlock:(id)a4
{
  v4 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_launchFinalized)
  {
    self->_lock_launchFinalized = 1;
    self->_lock_launchSuccess = v4;
    v8 = FBLogProcess();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v9)
      {
        [FBProcess _launchDidComplete:? finalizeBlock:?];
      }
    }

    else if (v9)
    {
      [FBProcess _launchDidComplete:? finalizeBlock:?];
    }

    v10 = self->_lock_launchCompletionBlocks;
    lock_launchCompletionBlocks = self->_lock_launchCompletionBlocks;
    self->_lock_launchCompletionBlocks = 0;

    if ([(FBProcessWatchdog *)self->_lock_watchdog event]== 1)
    {
      [(FBProcessWatchdog *)self->_lock_watchdog deactivate];
      if (v4)
      {
        v28 = v10;
        v29 = v4;
        v12 = [MEMORY[0x1E695DF70] array];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v13 = [(FBSProcessWatchdog *)self->_lock_watchdog policy];
        v14 = [v13 provisions];

        v15 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v39;
          do
          {
            v18 = 0;
            do
            {
              if (*v39 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v38 + 1) + 8 * v18);
              v36 = 0uLL;
              v37 = 0;
              if ([v19 isResourceProvision] && objc_msgSend(v19, "allowanceRemaining:", &v36))
              {
                *buf = v36;
                *&buf[16] = v37;
                v20 = [MEMORY[0x1E699FBA8] provisionWithAllowance:buf];
                if (v20)
                {
                  v21 = FBLogWatchdog();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    v30 = [(FBProcess *)self logProem];
                    *buf = 138543874;
                    *&buf[4] = v30;
                    *&buf[12] = 2114;
                    *&buf[14] = v19;
                    *&buf[22] = 2114;
                    v43 = v20;
                    _os_log_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_INFO, "%{public}@ Provision %{public}@ has remainder %{public}@", buf, 0x20u);
                  }

                  [v12 addObject:v20];
                }
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
          }

          while (v16);
        }

        if ([v12 count])
        {
          v22 = [MEMORY[0x1E699FBB8] policyWithName:@"scene create after launch" forProvisions:v12];
          sceneCreateWatchdogPolicy = self->_sceneCreateWatchdogPolicy;
          self->_sceneCreateWatchdogPolicy = v22;
        }

        v24 = FBLogWatchdog();
        v4 = v29;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          [FBProcess _launchDidComplete:? finalizeBlock:?];
        }

        v10 = v28;
      }

      [(FBSProcessWatchdog *)self->_lock_watchdog invalidate];
      lock_watchdog = self->_lock_watchdog;
      self->_lock_watchdog = 0;
    }

    if (v4)
    {
      if (self->_lock_waitForDebugger)
      {
        self->_lock_waitForDebugger = 0;
        [(FBProcess *)self _rebuildState];
      }
    }

    else
    {
      [(FBProcess *)self _notePendingExitForReason:@"launch failed"];
    }

    os_unfair_recursive_lock_unlock();
    v26 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke;
    block[3] = &unk_1E783C470;
    v35 = v4;
    v32 = v10;
    v33 = self;
    v34 = v6;
    v7 = v10;
    dispatch_async(v26, block);

    goto LABEL_36;
  }

  os_unfair_recursive_lock_unlock();
  if (v6)
  {
    v7 = +[FBProcess userInitiatedWorkloop];
    dispatch_async(v7, v6);
LABEL_36:
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 56);
        (*(*(*(&v25 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56) == 1 && [*(a1 + 40) isApplicationProcess])
  {
    *(*(a1 + 40) + 331) = 1;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [*(a1 + 40) _observers];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v21 + 1) + 8 * v12++) applicationProcessDidLaunch:*(a1 + 40)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v10);
    }
  }

  if ([*(a1 + 40) isApplicationProcess])
  {
    v13 = 0;
  }

  else
  {
    v13 = [*(*(a1 + 40) + 32) hasConsistentLaunchdJob];
  }

  if ((*(a1 + 56) | v13))
  {
    v14 = 1000000000;
  }

  else
  {
    v14 = 100000000;
  }

  v15 = dispatch_time(0, v14);
  v16 = +[FBProcess userInitiatedWorkloop];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke_2;
  v19[3] = &unk_1E783B328;
  v17 = *(a1 + 48);
  v19[4] = *(a1 + 40);
  v20 = v17;
  dispatch_after(v15, v16, v19);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (!v3[208])
  {
    [v3 _updateStateWithBlock:&__block_literal_global_174];
    v4 = *(a1 + 32);
  }

  os_unfair_recursive_lock_unlock();
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (id)_newWatchdogForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 event];
  os_unfair_recursive_lock_lock_with_options();
  v9 = [v6 sceneTransitionContext];
  v10 = v9;
  if (v8 == 2 && ([v9 watchdogTransitionContext], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "runIndependently"), v11, !v12))
  {
    v19 = self->_sceneCreateWatchdogPolicy;
    sceneCreateWatchdogPolicy = self->_sceneCreateWatchdogPolicy;
    self->_sceneCreateWatchdogPolicy = 0;

    if (v19)
    {
LABEL_10:
      v22 = [[FBProcessWatchdog alloc] initWithProcess:self context:v6 policy:v19];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__FBProcess__newWatchdogForContext_completion___block_invoke;
      v24[3] = &unk_1E783C498;
      v24[4] = self;
      v25 = v22;
      v26 = v7;
      v20 = v22;
      [(FBSProcessWatchdog *)v20 setCompletion:v24];

      goto LABEL_11;
    }
  }

  else
  {
    v13 = self->_sceneCreateWatchdogPolicy;
    self->_sceneCreateWatchdogPolicy = 0;
  }

  v14 = [v10 watchdogTransitionContext];
  v15 = [v14 watchdogProvider];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(FBProcess *)self _watchdogProvider];
  }

  v18 = v17;

  v19 = [v18 watchdogPolicyForProcess:self eventContext:v6];

  if (v19)
  {
    goto LABEL_10;
  }

  v20 = 0;
LABEL_11:
  os_unfair_recursive_lock_unlock();

  return v20;
}

uint64_t __47__FBProcess__newWatchdogForContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  if (a2)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x1E699F9B8]];

    if (v8)
    {
      v9 = FBLogWatchdog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v20 = [(FBProcess *)*(a1 + 32) logProem];
        v21 = [*(a1 + 40) name];
        *buf = 138543874;
        v26 = v20;
        v27 = 2114;
        v28 = v21;
        v29 = 2114;
        v30 = v8;
        _os_log_error_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Provision violated for watchdog %{public}@: %{public}@", buf, 0x20u);
      }

      v10 = [v8 copy];
      v11 = *(a1 + 32);
      v12 = *(v11 + 288);
      *(v11 + 288) = v10;
    }
  }

  v13 = *(*(a1 + 32) + 272);
  if (*(a1 + 40) == v13)
  {
    [v13 invalidate];
    v14 = *(a1 + 32);
    v15 = *(v14 + 272);
    *(v14 + 272) = 0;

    v16 = *(a1 + 32);
  }

  os_unfair_recursive_lock_unlock();
  v17 = +[FBProcess calloutQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__FBProcess__newWatchdogForContext_completion___block_invoke_176;
  v22[3] = &unk_1E783C368;
  v24 = *(a1 + 48);
  v23 = *(a1 + 40);
  dispatch_async(v17, v22);

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __47__FBProcess__newWatchdogForContext_completion___block_invoke_176(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)_startWatchdogTimerForContext:(id)a3
{
  v4 = a3;
  pid = self->_pid;
  if (pid == getpid())
  {
    goto LABEL_4;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_didExit)
  {
    os_unfair_recursive_lock_unlock();
LABEL_4:
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [(FBProcess *)self _newWatchdogForContext:v4 completion:0];
  v6 = v7 != 0;
  if (v7)
  {
    v8 = self->_lock_watchdog;
    objc_storeStrong(&self->_lock_watchdog, v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_recursive_lock_unlock();
  [(FBSProcessWatchdog *)v8 invalidate];
  [v7 activate];

LABEL_9:
  return v6;
}

- (BOOL)_shouldWatchdogWithDeclineReason:(id *)a3
{
  pid = self->_pid;
  if (pid == getpid())
  {
    result = 0;
    v7 = @"current process can't be watchdogged";
LABEL_11:
    *a3 = v7;
    return result;
  }

  if ([(FBProcess *)self isBeingDebugged])
  {
    result = 0;
    v7 = @"process is being debugged";
    goto LABEL_11;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BKNoWatchdogs", *MEMORY[0x1E695E8A8], 0);
  if ([(FBProcessExecutionContext *)self->_executionContext checkForLeaks]|| AppBooleanValue)
  {
    result = 0;
    v7 = @"override default is set";
    goto LABEL_11;
  }

  os_unfair_recursive_lock_lock_with_options();
  v9 = [(RBSProcessState *)self->_lock_rbsState tags];
  v10 = [v9 containsObject:@"FBDisableWatchdog"];

  os_unfair_recursive_lock_unlock();
  if (v10)
  {
    *a3 = @"watchdog is disabled via RB assertion";
  }

  return v10 ^ 1;
}

- (int64_t)_watchdogReportType
{
  if (_watchdogReportType_onceToken != -1)
  {
    [FBProcess _watchdogReportType];
  }

  if (_watchdogReportType___StackshotOverride)
  {
    return 2;
  }

  if ([(FBProcess *)self isPlatformBinary])
  {
    return 2;
  }

  return 1;
}

uint64_t __32__FBProcess__watchdogReportType__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"BKStackshotAppTimeout", *MEMORY[0x1E695E8A8], 0);
  _watchdogReportType___StackshotOverride = result != 0;
  return result;
}

- (void)_terminateWithRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBProcess _terminateWithRequest:a2 completion:?];
  }

  v9 = v8;
  os_unfair_recursive_lock_lock_with_options();
  v10 = FBLogProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [FBProcess _terminateWithRequest:completion:];
  }

  if (self->_lock_launchFinalized && !self->_lock_launchSuccess || self->_lock_didExit)
  {
    os_unfair_recursive_lock_unlock();
    v11 = FBLogProcess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _terminateWithRequest:? completion:?];
    }

    v12 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FBProcess__terminateWithRequest_completion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v23 = v9;
    dispatch_async(v12, block);
  }

  else
  {
    if (!self->_rbsHandle)
    {
      [FBProcess _terminateWithRequest:a2 completion:?];
    }

    if (v9)
    {
      lock_terminateRequestCompletionBlocks = self->_lock_terminateRequestCompletionBlocks;
      if (lock_terminateRequestCompletionBlocks)
      {
        v14 = [v9 copy];
        v15 = MEMORY[0x1AC572E40]();
        [(NSMutableArray *)lock_terminateRequestCompletionBlocks addObject:v15];
      }

      else
      {
        v16 = MEMORY[0x1E695DF70];
        v14 = [v9 copy];
        v17 = [v16 arrayWithObject:v14];
        v15 = self->_lock_terminateRequestCompletionBlocks;
        self->_lock_terminateRequestCompletionBlocks = v17;
      }
    }

    v18 = [v7 exceptionCode];
    lock_terminationRequest = self->_lock_terminationRequest;
    if (!lock_terminationRequest || v18 == 2343432205 && [(FBSProcessTerminationRequest *)lock_terminationRequest exceptionCode]!= 2343432205)
    {
      v21 = [v7 copy];

      objc_storeStrong(&self->_lock_terminationRequest, v21);
      if (v18 != 2343432205 && ([v21 options] & 1) != 0)
      {
        if ([(FBProcessState *)self->_lock_state taskState]== 2)
        {
          [(FBProcess *)self _lock_consumeLock_performGracefulKill];
          goto LABEL_23;
        }

        [v21 setOptions:{objc_msgSend(v21, "options") & 0xFFFFFFFFFFFFFFFELL}];
        [v21 setReportType:0];
      }

      [(FBProcess *)self _lock_consumeLock_executeTerminationRequest];
      goto LABEL_23;
    }

    os_unfair_recursive_lock_unlock();
    v20 = FBLogProcess();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _terminateWithRequest:? completion:?];
    }
  }

  v21 = v7;
LABEL_23:
}

uint64_t __46__FBProcess__terminateWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_killForReason:(int64_t)a3 andReport:(BOOL)a4 withDescription:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  pid = self->_pid;
  if (pid == getpid())
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = FBSApplicationTerminationReasonDescription();
    v21 = [v19 stringWithFormat:@"The current requested its own termination (for reason \"%@\" with description \"%@\"", v20, v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _killForReason:andReport:withDescription:completion:];
    }

LABEL_18:
    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A10504);
  }

  if (!v10)
  {
    v10 = FBSApplicationTerminationReasonDescription();
  }

  v13 = FBLogProcess();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    [FBProcess _killForReason:andReport:withDescription:completion:];
  }

  [(FBProcess *)self _notePendingExitForReason:@"explicit kill request from client"];
  v14 = a3 - 1;
  if ((a3 - 1) >= 9)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"fbReason != FBProcessKillReasonUnknown"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _killForReason:andReport:withDescription:completion:];
    }

    goto LABEL_18;
  }

  v15 = qword_1A8A71FB8[v14];
  v16 = qword_1A8A72000[v14];
  if (!self->_terminationReason)
  {
    self->_terminationReason = a3;
  }

  if (v7)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E699FBB0] requestForProcess:self withLabel:v10];
  [v18 setReportType:v17];
  [v18 setExceptionCode:v16];
  [v18 setExplanation:v10];
  [v18 setOptions:FBSApplicationTerminationReasonIsGraceful()];
  [(FBProcess *)self _terminateWithRequest:v18 completion:v11];
}

- (void)_lock_consumeLock_executeTerminationRequest
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_rbsHandle != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E69C7610] predicateMatching:*(*(a1 + 32) + 48)];
  v3 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v2 context:*(v1 + 8)];
  v16 = 0;
  v4 = [v3 execute:&v16];
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = FBLogProcess();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_cold_1();
    }

    v7 = MEMORY[0x1E696ABC0];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_291;
    v14 = &unk_1E783BC58;
    v15 = v5;
    v8 = [v7 bs_errorWithDomain:@"FBProcessTermination" code:1 configuration:&v11];
    v9 = [FBProcessExitContext alloc];
    v10 = [(FBProcessExitContext *)v9 initWithTerminationError:v8, v11, v12, v13, v14];
    [*v1 _processDidExitWithContext:v10];
  }
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_291(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Termination request failed"];
  [v3 setFailureReason:@"RunningBoard returned an error"];
  [v3 setCodeDescription:@"request-failed"];
  [v3 setUnderlyingError:*(a1 + 32)];
}

- (void)_lock_consumeLock_performGracefulKill
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_16(&dword_1A89DD000, a4, a3, "%{public}@ Failed to acquire graceful termination assertion: %{public}@", a3);
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_cold_1(WeakRetained, a1, v3);
  }
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_320(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = WeakRetained[20];
    if (v4 == v5)
    {
      WeakRetained[20] = 0;
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (void)_terminateWithRequest:(id)a3 forWatchdog:(id)a4
{
  v11 = a4;
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_terminationWatchdogContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v11 eventContext];
      lock_terminationWatchdogContext = self->_lock_terminationWatchdogContext;
      self->_lock_terminationWatchdogContext = v7;

      v9 = [v11 cpuStatistics];
      lock_watchdogCPUStatistics = self->_lock_watchdogCPUStatistics;
      self->_lock_watchdogCPUStatistics = v9;
    }
  }

  os_unfair_recursive_lock_unlock();
  [(FBProcess *)self _terminateWithRequest:v6 completion:0];

  [v11 invalidate];
}

- (id)_watchdog:(id)a3 terminationRequestForError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBProcess *)self _watchdogProvider];
  if (!v8 || (objc_opt_respondsToSelector() & 1) == 0 || ([v8 watchdogTerminationRequestForProcess:self error:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x1E699FBB0] requestForProcess:self withLabel:@"watchdog provision violated"];
    [v9 setReportType:{-[FBProcess _watchdogReportType](self, "_watchdogReportType")}];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v6 name];
  v12 = [v7 localizedFailureReason];
  v13 = v12;
  if (v12)
  {
    v14 = [v10 stringWithFormat:@"%@ watchdog transgression: %@", v11, v12];
  }

  else
  {
    v15 = [v7 localizedDescription];
    v14 = [v10 stringWithFormat:@"%@ watchdog transgression: %@", v11, v15];
  }

  v16 = [v9 explanation];
  if (v16)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14, v16];;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  [v9 setExplanation:v17];
  [v9 setExceptionCode:2343432205];

  return v9;
}

- (BOOL)_watchdog:(id)a3 shouldTerminateWithDeclineReason:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(FBProcess *)self _shouldWatchdogWithDeclineReason:a4];
  if (!v7)
  {
    v8 = FBLogProcess();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(FBProcess *)self logProem];
      v13 = [MEMORY[0x1E698E680] succinctDescriptionForObject:v6];
      v14 = *a4;
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring %{public}@ for reason: %{public}@", &v15, 0x20u);
    }

    os_unfair_recursive_lock_lock_with_options();
    [(BSAbsoluteMachTimer *)self->_lock_exitTimer invalidate];
    lock_exitTimer = self->_lock_exitTimer;
    self->_lock_exitTimer = 0;

    os_unfair_recursive_lock_unlock();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [v4 pid];
  pid = self->_pid;
  if (pid <= 0 && v5 < 1)
  {
    identity = self->_identity;
    v10 = [v4 identity];
    v8 = [(RBSProcessIdentity *)identity isEqual:v10];
  }

  else
  {
    v8 = pid == v5;
  }

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBProcess *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBProcess *)self succinctDescriptionBuilder];
  os_unfair_recursive_lock_lock_with_options();
  v5 = NSStringFromFBProcessTaskState([(FBProcessState *)self->_lock_state taskState]);
  v6 = [v4 appendObject:v5 withName:@"taskState" skipIfNil:1];

  v7 = NSStringFromFBProcessVisibility([(FBProcessState *)self->_lock_state visibility]);
  v8 = [v4 appendObject:v7 withName:@"visibility" skipIfNil:1];

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (void)_initWithProcessManager:identity:handle:executionContext:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_initWithProcessManager:(uint64_t)a1 identity:(char *)a2 handle:executionContext:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be initialized with an identity : identity=%@ handle=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 0, a1, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bootstrapWithDelegate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"delegate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_notePendingExitForReason:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __39__FBProcess__notePendingExitForReason___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v5 = 138543362;
  v6 = v3;
  OUTLINED_FUNCTION_17(&dword_1A89DD000, a2, a3, "No exit notification received for %{public}@ after 5 minutes", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_updateStateWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)v1 logProem];
  v3 = NSStringFromFBProcessTaskState([*v0 taskState]);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateStateWithBlock:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)v1 logProem];
  v3 = NSStringFromFBProcessVisibility([*v0 visibility]);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateStateWithBlock:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)v1 logProem];
  [*v0 isDebugging];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_configureIntrinsicsFromHandle:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handle != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteStateDidUpdate:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 process];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_processDidExitWithContext:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17(&dword_1A89DD000, v0, v1, "No exit context obtained for %{public}@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_processDidExitWithContext:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)v1 logProem];
  v3 = *v0;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_rebuildState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"rbsState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)a1 logProem];
  v3 = a1[35];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_impl(v4, v5, OS_LOG_TYPE_INFO, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_terminateWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)v0 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_terminateWithRequest:(void *)a1 completion:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_terminateWithRequest:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot terminate a process before it has attempted bootstrapping"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_terminateWithRequest:(void *)a1 completion:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_terminateWithRequest:(char *)a1 completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"request != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_killForReason:andReport:withDescription:completion:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [(FBProcess *)v0 logProem];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_killForReason:andReport:withDescription:completion:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_killForReason:andReport:withDescription:completion:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(FBProcess *)*v1 logProem];
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_16(v4, v5, v6, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(FBProcess *)a1 logProem];
  v8 = [v6 stringWithFormat:@"%@ Failed to terminate gracefully after %.1fs", v7, *(a2 + 56)];

  v9 = FBLogProcess();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = v8;
    OUTLINED_FUNCTION_17(&dword_1A89DD000, v9, v10, "%{public}@!", &v16);
  }

  v11 = [MEMORY[0x1E699FBB0] requestForProcess:a1 withLabel:@"graceful termination failed"];
  [v11 setReportType:{objc_msgSend(a1, "_watchdogReportType")}];
  [v11 setExceptionCode:2343432205];
  [v11 setExplanation:v8];
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong((a1 + 224), v11);
  objc_storeStrong((a1 + 232), *(a2 + 32));
  objc_storeStrong((a1 + 216), *(a2 + 40));
  v12 = [MEMORY[0x1E699FBA8] provisionWithResourceType:1 timeInterval:*(a2 + 56)];
  v13 = *(a1 + 288);
  *(a1 + 288) = v12;

  v14 = *(a1 + 160);
  if (v14 == a3)
  {
    *(a1 + 160) = 0;
  }

  [a1 _lock_consumeLock_executeTerminationRequest];

  v15 = *MEMORY[0x1E69E9840];
}

@end