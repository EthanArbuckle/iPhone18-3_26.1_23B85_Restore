@interface FCNetworkOperation
- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason;
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)shouldStartThrottlingWithError:(id)error retryAfter:(double *)after;
- (BOOL)validateOperationError:(id *)error;
- (FCNetworkOperation)init;
- (FCNetworkOperation)initWithNetworkReachability:(id)reachability;
- (double)preferredTimeoutIntervalForRequest;
- (void)networkReachabilityDidChange:(id)change;
- (void)prepareOperation;
@end

@implementation FCNetworkOperation

- (void)prepareOperation
{
  networkReachability = [(FCNetworkOperation *)self networkReachability];
  [networkReachability addObserver:self];
}

- (double)preferredTimeoutIntervalForRequest
{
  retryCount = [(FCOperation *)self retryCount];
  result = 15.0;
  if (!retryCount)
  {
    return 10.0;
  }

  return result;
}

- (FCNetworkOperation)init
{
  v3 = +[FCNetworkReachability sharedNetworkReachability];
  v4 = [(FCNetworkOperation *)self initWithNetworkReachability:v3];

  return v4;
}

- (FCNetworkOperation)initWithNetworkReachability:(id)reachability
{
  v20 = *MEMORY[0x1E69E9840];
  reachabilityCopy = reachability;
  if (!reachabilityCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
    *buf = 136315906;
    v13 = "[FCNetworkOperation initWithNetworkReachability:]";
    v14 = 2080;
    v15 = "FCNetworkOperation.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCNetworkOperation;
  v6 = [(FCOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkReachability, reachability);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  v7 = *MEMORY[0x1E696AA08];
  v8 = *MEMORY[0x1E696A250];
  v9 = *MEMORY[0x1E696A978];
  v10 = errorCopy;
  while (1)
  {
    v11 = v10;
    v12 = v11;
    if (self)
    {
      fc_retryAfter = [v11 fc_retryAfter];

      if (!fc_retryAfter)
      {
        domain = [v12 domain];
        if ([domain isEqualToString:v8])
        {
          code = [v12 code];

          if (code == 4097)
          {
            break;
          }
        }

        else
        {
        }

        domain2 = [v12 domain];
        v17 = [domain2 isEqualToString:v9];

        if (v17)
        {
          if (([v12 code] | 4) == 0xFFFFFFFFFFFFFC17)
          {
            break;
          }
        }
      }
    }

    userInfo = [v12 userInfo];
    v10 = [userInfo objectForKeyedSubscript:v7];

    if (!v10)
    {
      v19 = 0;
      v12 = 0;
      goto LABEL_15;
    }
  }

  if (after)
  {
    *after = [[FCOperationDelayedRetrySignal alloc] initWithDelay:1.0];
  }

  v19 = 1;
LABEL_15:

  return v19;
}

- (BOOL)validateOperationError:(id *)error
{
  networkReachability = [(FCNetworkOperation *)self networkReachability];
  v8 = 0;
  v6 = [(FCNetworkOperation *)self areNetworkRequirementsSatisfiedWithReachability:networkReachability offlineReason:&v8];
  if (v6)
  {
    *error = 0;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] fc_offlineErrorWithReason:?];
  }

  return v6;
}

uint64_t __45__FCNetworkOperation_validateOperationError___block_invoke(uint64_t a1)
{
  **(a1 + 32) = [MEMORY[0x1E696ABC0] fc_offlineErrorWithReason:*(a1 + 40)];
  return 0;
}

- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason
{
  reachabilityCopy = reachability;
  isNetworkReachable = [reachabilityCopy isNetworkReachable];
  if ((isNetworkReachable & 1) == 0)
  {
    *reason = [reachabilityCopy offlineReason];
  }

  return isNetworkReachable;
}

- (BOOL)shouldStartThrottlingWithError:(id)error retryAfter:(double *)after
{
  fc_retryAfter = [error fc_retryAfter];
  throttleGroup = [(FCOperation *)self throttleGroup];
  if (throttleGroup)
  {
    v8 = fc_retryAfter == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;

  v10 = 0;
  if (v9)
  {
    [fc_retryAfter doubleValue];
  }

  if (after)
  {
    *after = v10;
  }

  return v9;
}

- (void)networkReachabilityDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(FCOperation *)self hasOperationStarted])
  {
    v9 = 0;
    if (![(FCNetworkOperation *)self areNetworkRequirementsSatisfiedWithReachability:changeCopy offlineReason:&v9])
    {
      v5 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        shortOperationDescription = [(FCOperation *)self shortOperationDescription];
        *buf = 138543618;
        v11 = shortOperationDescription;
        v12 = 2048;
        v13 = v9;
        _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "cancelling %{public}@ due to failure to satisfy network requirements with offline reason %ld", buf, 0x16u);
      }

      [(FCOperation *)self cancel];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end