@interface HDMaintenanceOperation
+ (id)maintenanceOperationWithName:(id)a3 asynchronousBlock:(id)a4 canceledBlock:(id)a5;
+ (id)maintenanceOperationWithName:(id)a3 database:(id)a4 asynchronousBlock:(id)a5 canceledBlock:(id)a6;
+ (id)maintenanceOperationWithName:(id)a3 queue:(id)a4 synchronousBlock:(id)a5 canceledBlock:(id)a6;
- (HDMaintenanceOperation)init;
- (HDMaintenanceOperation)initWithName:(id)a3;
- (double)elapsedTime;
- (double)timeoutTime;
- (id)description;
- (void)cancel;
- (void)finish;
- (void)setExecutionPoint:(int64_t)a3;
- (void)startWithCompletionDelegate:(id)a3 fromImmediateRequest:(BOOL)a4;
@end

@implementation HDMaintenanceOperation

- (HDMaintenanceOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMaintenanceOperation)initWithName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDMaintenanceOperation;
  v5 = [(HDMaintenanceOperation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    name = v6->_name;
    v6->_name = v7;

    v6->_timeout = 900.0;
    *&v6->_faultOnTimeout = 1;
    canceledBlock = v6->_canceledBlock;
    v6->_canceledBlock = 0;

    *&v6->_didTimeOut = 0;
    v6->_executionPoint = 0;
    daemonTransaction = v6->_daemonTransaction;
    v6->_daemonTransaction = 0;
  }

  return v6;
}

+ (id)maintenanceOperationWithName:(id)a3 asynchronousBlock:(id)a4 canceledBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_HDMaintenanceWorkCoordinatorAsynchronousOperation alloc] initWithName:v9 operationBlock:v8 canceledBlock:v7];

  return v10;
}

+ (id)maintenanceOperationWithName:(id)a3 queue:(id)a4 synchronousBlock:(id)a5 canceledBlock:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_HDMaintenanceWorkCoordinatorSynchronousOperation alloc] initWithName:v12 queue:v11 block:v10 canceledBlock:v9];

  return v13;
}

+ (id)maintenanceOperationWithName:(id)a3 database:(id)a4 asynchronousBlock:(id)a5 canceledBlock:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_HDMaintenanceWorkCoordinatorProtectedDatabaseOperation alloc] initWithName:v12 database:v11 operationBlock:v10 canceledBlock:v9];

  return v13;
}

- (void)startWithCompletionDelegate:(id)a3 fromImmediateRequest:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_hasStarted)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [MEMORY[0x277CCD288] transactionWithOwner:self activityName:self->_name];
    daemonTransaction = self->_daemonTransaction;
    self->_daemonTransaction = v7;

    self->_isImmediateRequest = a4;
    self->_hasStarted = 1;
    objc_storeWeak(&self->_delegate, v6);
    Current = CFAbsoluteTimeGetCurrent();
    self->_startedTime = Current;
    self->_timeoutTime = Current + self->_timeout;
    os_unfair_lock_unlock(&self->_lock);
    v10 = _HKLogPersistedSignposts();
    v11 = os_signpost_id_make_with_pointer(v10, self);

    _HKInitializeLogging();
    v12 = HKLogInfrastructure();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = &stru_283BF39C8;
      if (self->_isImmediateRequest)
      {
        v13 = @" Immediately";
      }

      v20 = 138543618;
      v21 = self;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Started%{public}@.", &v20, 0x16u);
    }

    _HKInitializeLogging();
    v14 = _HKLogPersistedSignposts();
    v15 = os_signpost_enabled(v14);

    if (v15)
    {
      v16 = _HKLogPersistedSignposts();
      v17 = v16;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        v18 = [(HDMaintenanceOperation *)self name];
        v20 = 138543362;
        v21 = v18;
        _os_signpost_emit_with_name_impl(&dword_228986000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v11, "maintenance work operation", "name=%{public}@", &v20, 0xCu);
      }
    }

    [(HDMaintenanceOperation *)self main];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  if (self)
  {
    self->_wasCanceled = 1;
  }

  canceledBlock = self->_canceledBlock;
  (*(self->_canceledBlock + 2))();

  [(HDMaintenanceOperation *)self finish];
}

- (void)finish
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, a1);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 88);
      v13 = 138543618;
      v14 = a1;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped after %0.3lfs.", &v13, 0x16u);
    }

    _HKInitializeLogging();
    v6 = _HKLogPersistedSignposts();
    v7 = os_signpost_enabled(v6);

    if (v7)
    {
      v8 = _HKLogPersistedSignposts();
      v9 = v8;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v10 = [a1 name];
        v13 = 138543362;
        v14 = v10;
        _os_signpost_emit_with_name_impl(&dword_228986000, v9, OS_SIGNPOST_INTERVAL_END, v3, "maintenance work operation", "name=%{public}@", &v13, 0xCu);
      }
    }

    os_unfair_lock_lock((a1 + 8));
    *(a1 + 41) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_storeWeak((a1 + 32), 0);
    os_unfair_lock_unlock((a1 + 8));
    [WeakRetained operationDidFinish:a1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)timeoutTime
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_hasStarted)
  {
    timeoutTime = self->_timeoutTime;
  }

  else
  {
    timeoutTime = CFAbsoluteTimeGetCurrent() + self->_timeout;
  }

  os_unfair_lock_unlock(&self->_lock);
  return timeoutTime;
}

- (double)elapsedTime
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0.0;
  if (self->_hasStarted)
  {
    v3 = CFAbsoluteTimeGetCurrent() - self->_startedTime;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setExecutionPoint:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_enqueuedTime != 0.0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ attempted to set executionPoint after queuing", objc_opt_class()}];
  }

  self->_executionPoint = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  name = self->_name;
  if (self->_isImmediateRequest)
  {
    v4 = @" (Immediate)";
  }

  else
  {
    v4 = &stru_283BF39C8;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_name, v4];
  if (self->_hasFinished)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@ finished>", objc_opt_class(), self, v5, v13, v14];
  }

  else if (self->_hasStarted)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    [v6 stringWithFormat:@"<%@:%p %@ running for %0.3lfs/%0.3lfs>", v7, self, v5, CFAbsoluteTimeGetCurrent() - self->_startedTime, *&self->_timeout];
  }

  else
  {
    enqueuedTime = self->_enqueuedTime;
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    if (enqueuedTime <= 0.0)
    {
      [v9 stringWithFormat:@"<%@:%p %@ not enqueued>", v10, self, v5, v13, v14];
    }

    else
    {
      [v9 stringWithFormat:@"<%@:%p %@ pending for %0.3lfs>", v10, self, v5, CFAbsoluteTimeGetCurrent() - self->_enqueuedTime, v14];
    }
  }
  v11 = ;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

@end