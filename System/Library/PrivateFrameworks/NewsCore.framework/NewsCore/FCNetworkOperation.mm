@interface FCNetworkOperation
- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)a3 offlineReason:(int64_t *)a4;
- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4;
- (BOOL)shouldStartThrottlingWithError:(id)a3 retryAfter:(double *)a4;
- (BOOL)validateOperationError:(id *)a3;
- (FCNetworkOperation)init;
- (FCNetworkOperation)initWithNetworkReachability:(id)a3;
- (double)preferredTimeoutIntervalForRequest;
- (void)networkReachabilityDidChange:(id)a3;
- (void)prepareOperation;
@end

@implementation FCNetworkOperation

- (void)prepareOperation
{
  v3 = [(FCNetworkOperation *)self networkReachability];
  [v3 addObserver:self];
}

- (double)preferredTimeoutIntervalForRequest
{
  v2 = [(FCOperation *)self retryCount];
  result = 15.0;
  if (!v2)
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

- (FCNetworkOperation)initWithNetworkReachability:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v6->_networkReachability, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4
{
  v6 = a3;
  v7 = *MEMORY[0x1E696AA08];
  v8 = *MEMORY[0x1E696A250];
  v9 = *MEMORY[0x1E696A978];
  v10 = v6;
  while (1)
  {
    v11 = v10;
    v12 = v11;
    if (self)
    {
      v13 = [v11 fc_retryAfter];

      if (!v13)
      {
        v14 = [v12 domain];
        if ([v14 isEqualToString:v8])
        {
          v15 = [v12 code];

          if (v15 == 4097)
          {
            break;
          }
        }

        else
        {
        }

        v16 = [v12 domain];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          if (([v12 code] | 4) == 0xFFFFFFFFFFFFFC17)
          {
            break;
          }
        }
      }
    }

    v18 = [v12 userInfo];
    v10 = [v18 objectForKeyedSubscript:v7];

    if (!v10)
    {
      v19 = 0;
      v12 = 0;
      goto LABEL_15;
    }
  }

  if (a4)
  {
    *a4 = [[FCOperationDelayedRetrySignal alloc] initWithDelay:1.0];
  }

  v19 = 1;
LABEL_15:

  return v19;
}

- (BOOL)validateOperationError:(id *)a3
{
  v5 = [(FCNetworkOperation *)self networkReachability];
  v8 = 0;
  v6 = [(FCNetworkOperation *)self areNetworkRequirementsSatisfiedWithReachability:v5 offlineReason:&v8];
  if (v6)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = [MEMORY[0x1E696ABC0] fc_offlineErrorWithReason:?];
  }

  return v6;
}

uint64_t __45__FCNetworkOperation_validateOperationError___block_invoke(uint64_t a1)
{
  **(a1 + 32) = [MEMORY[0x1E696ABC0] fc_offlineErrorWithReason:*(a1 + 40)];
  return 0;
}

- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)a3 offlineReason:(int64_t *)a4
{
  v5 = a3;
  v6 = [v5 isNetworkReachable];
  if ((v6 & 1) == 0)
  {
    *a4 = [v5 offlineReason];
  }

  return v6;
}

- (BOOL)shouldStartThrottlingWithError:(id)a3 retryAfter:(double *)a4
{
  v6 = [a3 fc_retryAfter];
  v7 = [(FCOperation *)self throttleGroup];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;

  v10 = 0;
  if (v9)
  {
    [v6 doubleValue];
  }

  if (a4)
  {
    *a4 = v10;
  }

  return v9;
}

- (void)networkReachabilityDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FCOperation *)self hasOperationStarted])
  {
    v9 = 0;
    if (![(FCNetworkOperation *)self areNetworkRequirementsSatisfiedWithReachability:v4 offlineReason:&v9])
    {
      v5 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(FCOperation *)self shortOperationDescription];
        *buf = 138543618;
        v11 = v7;
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