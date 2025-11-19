@interface FBApplicationProcessLaunchTransaction
- (FBApplicationProcessLaunchTransaction)init;
- (FBApplicationProcessLaunchTransaction)initWithApplicationBundleID:(id)a3 executionContextProvider:(id)a4;
- (FBApplicationProcessLaunchTransaction)initWithApplicationProcess:(id)a3;
- (FBApplicationProcessLaunchTransaction)initWithProcessIdentity:(id)a3 executionContextProvider:(id)a4;
- (id)_customizedDescriptionProperties;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_didComplete;
- (void)_queue_finishProcessLaunch:(BOOL)a3;
- (void)_queue_launchProcess:(id)a3;
- (void)_queue_noteExited;
- (void)_queue_processWillLaunch:(id)a3;
- (void)_willComplete;
- (void)_willFailWithReason:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)add:(id)a3;
- (void)addObserver:(id)a3;
- (void)remove:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation FBApplicationProcessLaunchTransaction

- (void)_begin
{
  v3 = [(FBProcessManager *)self->_processManager processForIdentity:self->_identity];
  [(FBApplicationProcessLaunchTransaction *)self addMilestone:@"processWillBeginLaunching"];
  if ([v3 isPendingExit])
  {
    if ([(FBApplicationProcessLaunchTransaction *)self isAuditHistoryEnabled])
    {
      [(FBApplicationProcessLaunchTransaction *)self _addAuditHistoryItem:@"Process is pending exit. Waiting for it to die..."];
    }

    executionContextProvider = self->_executionContextProvider;
    if (executionContextProvider)
    {
      v5 = executionContextProvider[2]();
      executionContext = self->_executionContext;
      self->_executionContext = v5;

      v7 = self->_executionContextProvider;
      self->_executionContextProvider = 0;
    }

    v8 = [[FBWaitForProcessDeathTransaction alloc] initWithProcess:v3];
    deathTransaction = self->_deathTransaction;
    self->_deathTransaction = v8;

    [(FBApplicationProcessLaunchTransaction *)self addChildTransaction:self->_deathTransaction];
  }

  else
  {
    [(FBApplicationProcessLaunchTransaction *)self _queue_launchProcess:v3];
  }

  v10.receiver = self;
  v10.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v10 _begin];
}

- (void)_willComplete
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v3 _willComplete];
  [(BSAtomicSignal *)self->_interruptedOrComplete signal];
}

- (void)_didComplete
{
  [(BSAtomicSignal *)self->_interruptedOrComplete signal];
  executionContextProvider = self->_executionContextProvider;
  self->_executionContextProvider = 0;

  v4.receiver = self;
  v4.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v4 _didComplete];
}

- (FBApplicationProcessLaunchTransaction)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBApplicationProcessLaunchTransaction"];
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
    v16 = @"FBApplicationProcessLaunchTransaction.m";
    v17 = 1024;
    v18 = 47;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (FBApplicationProcessLaunchTransaction)initWithApplicationProcess:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBApplicationProcessLaunchTransaction initWithApplicationProcess:a2];
  }

  v6 = v5;
  v7 = [v5 identity];
  v8 = [(FBApplicationProcessLaunchTransaction *)self initWithProcessIdentity:v7 executionContextProvider:0];

  return v8;
}

- (FBApplicationProcessLaunchTransaction)initWithApplicationBundleID:(id)a3 executionContextProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBApplicationProcessLaunchTransaction initWithApplicationBundleID:a2 executionContextProvider:?];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:v7];
  v11 = [(FBApplicationProcessLaunchTransaction *)self initWithProcessIdentity:v10 executionContextProvider:v9];

  return v11;
}

- (FBApplicationProcessLaunchTransaction)initWithProcessIdentity:(id)a3 executionContextProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBApplicationProcessLaunchTransaction initWithProcessIdentity:a2 executionContextProvider:?];
  }

  v9 = v8;
  v20.receiver = self;
  v20.super_class = FBApplicationProcessLaunchTransaction;
  v10 = [(FBTransaction *)&v20 init];
  if (v10)
  {
    v11 = +[FBProcessManager sharedInstance];
    processManager = v10->_processManager;
    v10->_processManager = v11;

    v13 = [v7 copy];
    identity = v10->_identity;
    v10->_identity = v13;

    v15 = [v9 copy];
    executionContextProvider = v10->_executionContextProvider;
    v10->_executionContextProvider = v15;

    v17 = objc_opt_new();
    interruptedOrComplete = v10->_interruptedOrComplete;
    v10->_interruptedOrComplete = v17;
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v3 removeObserver:a3];
}

- (void)add:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v3 addObserver:a3];
}

- (void)remove:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v3 removeObserver:a3];
}

- (void)_willInterruptWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v4 _willInterruptWithReason:a3];
  [(BSAtomicSignal *)self->_interruptedOrComplete signal];
}

- (void)_willFailWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v4 _willFailWithReason:a3];
  [(BSAtomicSignal *)self->_interruptedOrComplete signal];
}

- (void)_childTransactionDidComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deathTransaction == v4)
  {
    if (([(FBWaitForProcessDeathTransaction *)v4 isFailed]& 1) == 0 && ([(FBWaitForProcessDeathTransaction *)v5 isInterrupted]& 1) == 0)
    {
      if ([(FBApplicationProcessLaunchTransaction *)self isAuditHistoryEnabled])
      {
        [(FBApplicationProcessLaunchTransaction *)self _addAuditHistoryItem:@"Process officially exited. Attempting relaunch..."];
      }

      [(FBApplicationProcessLaunchTransaction *)self _queue_launchProcess:0];
    }

    deathTransaction = self->_deathTransaction;
    self->_deathTransaction = 0;
  }

  v7.receiver = self;
  v7.super_class = FBApplicationProcessLaunchTransaction;
  [(FBApplicationProcessLaunchTransaction *)&v7 _childTransactionDidComplete:v5];
}

- (id)_customizedDescriptionProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  if (self->_process)
  {
    process = self->_process;
  }

  else
  {
    process = @"(none)";
  }

  [v3 setObject:process forKey:@"Process"];

  return v4;
}

- (void)_queue_noteExited
{
  if (([(FBApplicationProcessLaunchTransaction *)self isComplete]& 1) == 0)
  {

    [(FBApplicationProcessLaunchTransaction *)self _failWithReason:@"process launch failed" description:@"Process exited"];
  }
}

- (void)_queue_launchProcess:(id)a3
{
  v5 = a3;
  if (self->_process)
  {
    [FBApplicationProcessLaunchTransaction _queue_launchProcess:a2];
  }

  v6 = v5;
  if (v5)
  {
    [(FBApplicationProcessLaunchTransaction *)self _queue_processWillLaunch:v5];
    if ([v6 finishedLaunching])
    {
      [(FBApplicationProcessLaunchTransaction *)self _queue_finishProcessLaunch:1];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke;
      v18[3] = &unk_1E783B218;
      v18[4] = self;
      [v6 _executeBlockAfterLaunchCompletes:v18];
    }

    goto LABEL_13;
  }

  v7 = self->_executionContext;
  if (!v7)
  {
    executionContextProvider = self->_executionContextProvider;
    if (executionContextProvider)
    {
      v9 = executionContextProvider[2]();
      v10 = [v9 copy];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    v7 = objc_alloc_init(FBProcessExecutionContext);
  }

  v10 = v7;
LABEL_10:
  [(FBProcessExecutionContext *)v10 setIdentity:self->_identity];
  v11 = [(FBProcessExecutionContext *)v10 completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_3;
  v16[3] = &unk_1E783D710;
  v16[4] = self;
  v12 = v11;
  v17 = v12;
  [(FBProcessExecutionContext *)v10 setCompletion:v16];
  v13 = [(FBProcessManager *)self->_processManager _createProcessFutureWithExecutionContext:v10 error:0];
  if (!v13)
  {
    [(FBApplicationProcessLaunchTransaction *)&self->_identity _queue_launchProcess:a2];
  }

LABEL_13:
  executionContext = self->_executionContext;
  self->_executionContext = 0;

  v15 = self->_executionContextProvider;
  self->_executionContextProvider = 0;
}

void __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_2;
  v5[3] = &unk_1E783B948;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

void __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(*(a1 + 32) + 200) hasBeenSignalled] & 1) == 0)
  {
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_4;
    block[3] = &unk_1E783B240;
    block[4] = *(a1 + 32);
    v8 = v5;
    v12 = v8;
    dispatch_async(v7, block);

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_5;
    v10[3] = &unk_1E783B218;
    v10[4] = *(a1 + 32);
    [v8 _executeBlockAfterLaunchCompletes:v10];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_5(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__FBApplicationProcessLaunchTransaction__queue_launchProcess___block_invoke_6;
  v5[3] = &unk_1E783B948;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

- (void)_queue_processWillLaunch:(id)a3
{
  v6 = a3;
  if (self->_process)
  {
    [FBApplicationProcessLaunchTransaction _queue_processWillLaunch:a2];
  }

  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&self->_process, a3);
    [(FBApplicationProcessLaunchTransaction *)self addMilestone:@"processDidFinishLaunching"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__FBApplicationProcessLaunchTransaction__queue_processWillLaunch___block_invoke;
    v8[3] = &unk_1E783B580;
    v8[4] = self;
    [v7 _executeBlockAsCurrentProcess:v8];
    [(FBApplicationProcessLaunchTransaction *)self satisfyMilestone:@"processWillBeginLaunching"];
  }

  else
  {
    [(FBApplicationProcessLaunchTransaction *)self _failWithReason:@"process launch failed" description:@"Unable to create process."];
  }
}

uint64_t __66__FBApplicationProcessLaunchTransaction__queue_processWillLaunch___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__FBApplicationProcessLaunchTransaction__queue_processWillLaunch___block_invoke_2;
  v3[3] = &unk_1E783D738;
  v3[4] = v1;
  return [v1 _enumerateObserversWithBlock:v3];
}

void __66__FBApplicationProcessLaunchTransaction__queue_processWillLaunch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) willLaunchProcess:*(*(a1 + 32) + 168)];
  }
}

- (void)_queue_finishProcessLaunch:(BOOL)a3
{
  v3 = a3;
  if ([(BSAtomicSignal *)self->_interruptedOrComplete hasBeenSignalled])
  {
    if ([(FBApplicationProcessLaunchTransaction *)self isAuditHistoryEnabled])
    {

      [(FBApplicationProcessLaunchTransaction *)self _addAuditHistoryItem:@"Ignoring launched process since we were already interrupted or completed."];
    }
  }

  else if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__FBApplicationProcessLaunchTransaction__queue_finishProcessLaunch___block_invoke;
    v7[3] = &unk_1E783D738;
    v7[4] = self;
    [(FBApplicationProcessLaunchTransaction *)self _enumerateObserversWithBlock:v7];
    [(FBApplicationProcessLaunchTransaction *)self satisfyMilestone:@"processDidFinishLaunching"];
  }

  else
  {
    v5 = [(FBProcess *)self->_process exitContext];
    v6 = [v5 createError];

    [(FBApplicationProcessLaunchTransaction *)self _failWithReason:@"process launch failed" description:@"Process failed to launch." precipitatingError:v6];
  }
}

void __68__FBApplicationProcessLaunchTransaction__queue_finishProcessLaunch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) didLaunchProcess:*(*(a1 + 32) + 168)];
  }
}

- (void)initWithApplicationProcess:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"process", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithApplicationBundleID:(char *)a1 executionContextProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundleID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProcessIdentity:(char *)a1 executionContextProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_queue_launchProcess:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_process == ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_queue_launchProcess:(uint64_t *)a1 .cold.2(uint64_t *a1, char *a2)
{
  v11 = *a1;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legacy transaction does not support launching process identity: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_queue_processWillLaunch:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_process == ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end