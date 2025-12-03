@interface HDMaintenanceOperation
+ (id)maintenanceOperationWithName:(id)name asynchronousBlock:(id)block canceledBlock:(id)canceledBlock;
+ (id)maintenanceOperationWithName:(id)name database:(id)database asynchronousBlock:(id)block canceledBlock:(id)canceledBlock;
+ (id)maintenanceOperationWithName:(id)name queue:(id)queue synchronousBlock:(id)block canceledBlock:(id)canceledBlock;
- (HDMaintenanceOperation)init;
- (HDMaintenanceOperation)initWithName:(id)name;
- (double)elapsedTime;
- (double)timeoutTime;
- (id)description;
- (void)cancel;
- (void)finish;
- (void)setExecutionPoint:(int64_t)point;
- (void)startWithCompletionDelegate:(id)delegate fromImmediateRequest:(BOOL)request;
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

- (HDMaintenanceOperation)initWithName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HDMaintenanceOperation;
  v5 = [(HDMaintenanceOperation *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [nameCopy copy];
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

+ (id)maintenanceOperationWithName:(id)name asynchronousBlock:(id)block canceledBlock:(id)canceledBlock
{
  canceledBlockCopy = canceledBlock;
  blockCopy = block;
  nameCopy = name;
  v10 = [[_HDMaintenanceWorkCoordinatorAsynchronousOperation alloc] initWithName:nameCopy operationBlock:blockCopy canceledBlock:canceledBlockCopy];

  return v10;
}

+ (id)maintenanceOperationWithName:(id)name queue:(id)queue synchronousBlock:(id)block canceledBlock:(id)canceledBlock
{
  canceledBlockCopy = canceledBlock;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  v13 = [[_HDMaintenanceWorkCoordinatorSynchronousOperation alloc] initWithName:nameCopy queue:queueCopy block:blockCopy canceledBlock:canceledBlockCopy];

  return v13;
}

+ (id)maintenanceOperationWithName:(id)name database:(id)database asynchronousBlock:(id)block canceledBlock:(id)canceledBlock
{
  canceledBlockCopy = canceledBlock;
  blockCopy = block;
  databaseCopy = database;
  nameCopy = name;
  v13 = [[_HDMaintenanceWorkCoordinatorProtectedDatabaseOperation alloc] initWithName:nameCopy database:databaseCopy operationBlock:blockCopy canceledBlock:canceledBlockCopy];

  return v13;
}

- (void)startWithCompletionDelegate:(id)delegate fromImmediateRequest:(BOOL)request
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
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

    self->_isImmediateRequest = request;
    self->_hasStarted = 1;
    objc_storeWeak(&self->_delegate, delegateCopy);
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
      selfCopy = self;
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
        name = [(HDMaintenanceOperation *)self name];
        v20 = 138543362;
        selfCopy = name;
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
  if (self)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, self);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CFAbsoluteTimeGetCurrent() - *(self + 88);
      v13 = 138543618;
      selfCopy = self;
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
        name = [self name];
        v13 = 138543362;
        selfCopy = name;
        _os_signpost_emit_with_name_impl(&dword_228986000, v9, OS_SIGNPOST_INTERVAL_END, v3, "maintenance work operation", "name=%{public}@", &v13, 0xCu);
      }
    }

    os_unfair_lock_lock((self + 8));
    *(self + 41) = 1;
    WeakRetained = objc_loadWeakRetained((self + 32));
    objc_storeWeak((self + 32), 0);
    os_unfair_lock_unlock((self + 8));
    [WeakRetained operationDidFinish:self];
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

- (void)setExecutionPoint:(int64_t)point
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_enqueuedTime != 0.0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ attempted to set executionPoint after queuing", objc_opt_class()}];
  }

  self->_executionPoint = point;

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