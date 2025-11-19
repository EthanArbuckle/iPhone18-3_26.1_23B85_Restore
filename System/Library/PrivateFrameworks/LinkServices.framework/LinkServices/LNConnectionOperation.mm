@interface LNConnectionOperation
- (LNConnectionOperation)initWithIdentifier:(id)a3 priority:(int64_t)a4 queue:(id)a5 activity:(id)a6;
- (OS_os_activity)activity;
- (id)description;
- (id)validatingResult:(id)a3 error:(id)a4;
- (unint64_t)hash;
- (void)cancelTimeout;
- (void)extendTimeout;
- (void)finishWithError:(id)a3;
- (void)setRequestTimer;
- (void)start;
@end

@implementation LNConnectionOperation

- (OS_os_activity)activity
{
  activity = self->_activity;
  if (!activity)
  {
    v4 = (*(self->_activityProvider + 2))();
    v5 = self->_activity;
    self->_activity = v4;

    activityProvider = self->_activityProvider;
    self->_activityProvider = 0;

    activity = self->_activity;
  }

  v7 = activity;

  return v7;
}

- (void)start
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(LNConnectionOperation *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Starting operation %{public}@", &v9, 0xCu);
  }

  [(LNConnectionOperation *)self setRequestTimer];
  v5 = [(LNConnectionOperation *)self connection];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(LNConnectionOperation *)self connection];
    [v7 connectionOperationWillStart:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionOperation *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(LNConnectionOperation *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)setRequestTimer
{
  [(LNConnectionOperation *)self timeout];
  if (v3 != *&LNConnectionOperationRequestTimeoutDisabled)
  {
    objc_initWeak(&location, self);
    v4 = [LNWatchdogTimer alloc];
    [(LNConnectionOperation *)self timeout];
    v6 = v5;
    v7 = [(LNConnectionOperation *)self connection];
    v8 = [v7 queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __40__LNConnectionOperation_setRequestTimer__block_invoke;
    v14 = &unk_1E74B2438;
    objc_copyWeak(&v15, &location);
    v9 = [(LNWatchdogTimer *)v4 initWithTimeoutInterval:v8 onQueue:&v11 timeoutHandler:v6];
    requestTimer = self->_requestTimer;
    self->_requestTimer = v9;

    [(LNWatchdogTimer *)self->_requestTimer start:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)finishWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LNConnectionOperation *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = getLNLogCategoryConnection();
  v7 = v6;
  if (v4)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v4;
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v17 = 138543362;
    v18 = self;
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 12;
  }

  _os_log_impl(&dword_19763D000, v9, v10, v8, &v17, v11);
LABEL_7:

  v12 = [(LNConnectionOperation *)self requestTimer];
  [v12 cancel];

  v13 = [(LNConnectionOperation *)self connection];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(LNConnectionOperation *)self connection];
    [v15 connectionOperation:self didFinishWithError:v4];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __40__LNConnectionOperation_setRequestTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained connection];
  v3 = [v2 targetIsBeingDebugged];

  if ((v3 & 1) == 0)
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = WeakRetained;
      v9 = 2050;
      v10 = LNConnectionOperationRequestTimeout;
    }

    v5 = LNConnectionErrorWithCode(1002);
    [WeakRetained finishWithError:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)validatingResult:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = LNConnectionErrorWithCode(1014);
    }

    v8 = v9;
  }

  return v8;
}

- (void)extendTimeout
{
  v10 = *MEMORY[0x1E69E9840];
  [(LNConnectionOperation *)self timeout];
  if (v3 != *&LNConnectionOperationRequestTimeoutDisabled)
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(LNConnectionOperation *)self identifier];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Extending timeout for operation with identifier %{public}@", &v8, 0xCu);
    }

    v6 = [(LNConnectionOperation *)self requestTimer];
    [v6 cancel];

    [(LNConnectionOperation *)self setRequestTimer];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelTimeout
{
  v10 = *MEMORY[0x1E69E9840];
  [(LNConnectionOperation *)self timeout];
  if (v3 != *&LNConnectionOperationRequestTimeoutDisabled)
  {
    v4 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(LNConnectionOperation *)self identifier];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Canceling timeout for operation with identifier %{public}@", &v8, 0xCu);
    }

    v6 = [(LNConnectionOperation *)self requestTimer];
    [v6 cancel];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (LNConnectionOperation)initWithIdentifier:(id)a3 priority:(int64_t)a4 queue:(id)a5 activity:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNConnectionOperation.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNConnectionOperation;
  v14 = [(LNConnectionOperation *)&v22 init];
  if (v14)
  {
    v15 = [v11 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_priority = a4;
    v17 = _Block_copy(v13);
    activityProvider = v14->_activityProvider;
    v14->_activityProvider = v17;

    objc_storeStrong(&v14->_queue, a5);
    v19 = v14;
  }

  return v14;
}

@end