@interface FBSProcessExecutionProvision
- (FBSProcessExecutionProvision)init;
- (FBSProcessExecutionProvisionDelegate)delegate;
- (FBSProcessInternal)process;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_noteViolatedWithError:(id)a3;
- (void)_performDelegateCallout:(id)a3;
- (void)monitorProcess:(id)a3;
- (void)prepareForReuse;
- (void)stopMonitoring;
- (void)updateProgress;
@end

@implementation FBSProcessExecutionProvision

- (FBSProcessInternal)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (FBSProcessExecutionProvision)init
{
  v3.receiver = self;
  v3.super_class = FBSProcessExecutionProvision;
  if ([(FBSProcessExecutionProvision *)&v3 init])
  {
    BSDispatchQueueCreateWithQualityOfService();
  }

  return 0;
}

- (void)prepareForReuse
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activated)
  {
    [(FBSProcessExecutionProvision *)obj _prepareForReuse];
    error = obj->_error;
    obj->_error = 0;

    obj->_activated = 0;
    *&obj->_monitoring = 0;
    objc_storeWeak(&obj->_process, 0);
    objc_storeWeak(&obj->_delegate, 0);
  }

  objc_sync_exit(obj);
}

- (void)stopMonitoring
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_monitoring)
  {
    [(FBSProcessExecutionProvision *)obj _stopMonitoring];
    obj->_monitoring = 0;
  }

  objc_sync_exit(obj);
}

- (void)monitorProcess:(id)a3
{
  obj = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_monitoring)
  {
    objc_storeWeak(&v4->_process, obj);
    v4->_monitoring = 1;
    v4->_activated = 1;
    [(FBSProcessExecutionProvision *)v4 _beginMonitoring];
  }

  objc_sync_exit(v4);
}

- (void)updateProgress
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_monitoring && !obj->_violated)
  {
    [(FBSProcessExecutionProvision *)obj _updateProgress];
  }

  objc_sync_exit(obj);
}

- (void)_noteViolatedWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__FBSProcessExecutionProvision__noteViolatedWithError___block_invoke;
  v6[3] = &unk_1E76BCD60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(FBSProcessExecutionProvision *)self _performDelegateCallout:v6];
}

void __55__FBSProcessExecutionProvision__noteViolatedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1 && (*(v3 + 33) & 1) == 0)
  {
    *(v3 + 33) = 1;
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  }

  else
  {
    WeakRetained = 0;
  }

  objc_sync_exit(v2);

  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained provision:*(a1 + 32) wasViolatedWithError:*(a1 + 40)];
    v4 = WeakRetained;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSError *)self->_error copy];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  WeakRetained = objc_loadWeakRetained(&self->_process);
  objc_storeWeak((v4 + 8), WeakRetained);

  *(v4 + 33) = self->_violated;
  *(v4 + 16) = self->_activated;
  *(v4 + 32) = self->_monitoring;
  return v4;
}

- (void)_performDelegateCallout:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBSProcessExecutionProvision *)a2 _performDelegateCallout:?];
  }

  delegateCalloutQueue = self->_delegateCalloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FBSProcessExecutionProvision__performDelegateCallout___block_invoke;
  block[3] = &unk_1E76BD318;
  v9 = v5;
  v7 = v5;
  dispatch_async(delegateCalloutQueue, block);
}

- (id)succinctDescription
{
  v2 = [(FBSProcessExecutionProvision *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcessExecutionProvision *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSProcessExecutionProvision *)self succinctDescriptionBuilder];
  v5 = [v4 appendBool:-[FBSProcessExecutionProvision isMonitoring](self withName:"isMonitoring") ifEqualTo:{@"monitoring", 1}];
  v6 = [v4 appendBool:-[FBSProcessExecutionProvision isViolated](self withName:"isViolated") ifEqualTo:{@"violated", 1}];

  return v4;
}

- (FBSProcessExecutionProvisionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_performDelegateCallout:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSProcessExecutionProvision.m";
    v16 = 1024;
    v17 = 140;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end