@interface LNConnectionOperation
- (LNConnectionOperation)initWithIdentifier:(id)identifier priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (OS_os_activity)activity;
- (id)description;
- (id)validatingResult:(id)result error:(id)error;
- (unint64_t)hash;
- (void)cancelTimeout;
- (void)extendTimeout;
- (void)finishWithError:(id)error;
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
  queue = [(LNConnectionOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Starting operation %{public}@", &v9, 0xCu);
  }

  [(LNConnectionOperation *)self setRequestTimer];
  connection = [(LNConnectionOperation *)self connection];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    connection2 = [(LNConnectionOperation *)self connection];
    [connection2 connectionOperationWillStart:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNConnectionOperation *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (unint64_t)hash
{
  identifier = [(LNConnectionOperation *)self identifier];
  v3 = [identifier hash];

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
    connection = [(LNConnectionOperation *)self connection];
    queue = [connection queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __40__LNConnectionOperation_setRequestTimer__block_invoke;
    v14 = &unk_1E74B2438;
    objc_copyWeak(&v15, &location);
    v9 = [(LNWatchdogTimer *)v4 initWithTimeoutInterval:queue onQueue:&v11 timeoutHandler:v6];
    requestTimer = self->_requestTimer;
    self->_requestTimer = v9;

    [(LNWatchdogTimer *)self->_requestTimer start:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)finishWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  queue = [(LNConnectionOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getLNLogCategoryConnection();
  v7 = v6;
  if (errorCopy)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138543618;
    selfCopy2 = self;
    v19 = 2114;
    v20 = errorCopy;
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
    selfCopy2 = self;
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 12;
  }

  _os_log_impl(&dword_19763D000, v9, v10, v8, &v17, v11);
LABEL_7:

  requestTimer = [(LNConnectionOperation *)self requestTimer];
  [requestTimer cancel];

  connection = [(LNConnectionOperation *)self connection];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    connection2 = [(LNConnectionOperation *)self connection];
    [connection2 connectionOperation:self didFinishWithError:errorCopy];
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

- (id)validatingResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v7 = errorCopy;
  if (resultCopy)
  {
    v8 = 0;
  }

  else
  {
    if (errorCopy)
    {
      v9 = errorCopy;
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
      identifier = [(LNConnectionOperation *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Extending timeout for operation with identifier %{public}@", &v8, 0xCu);
    }

    requestTimer = [(LNConnectionOperation *)self requestTimer];
    [requestTimer cancel];

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
      identifier = [(LNConnectionOperation *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Canceling timeout for operation with identifier %{public}@", &v8, 0xCu);
    }

    requestTimer = [(LNConnectionOperation *)self requestTimer];
    [requestTimer cancel];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (LNConnectionOperation)initWithIdentifier:(id)identifier priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  identifierCopy = identifier;
  queueCopy = queue;
  activityCopy = activity;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnectionOperation.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNConnectionOperation;
  v14 = [(LNConnectionOperation *)&v22 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v14->_priority = priority;
    v17 = _Block_copy(activityCopy);
    activityProvider = v14->_activityProvider;
    v14->_activityProvider = v17;

    objc_storeStrong(&v14->_queue, queue);
    v19 = v14;
  }

  return v14;
}

@end