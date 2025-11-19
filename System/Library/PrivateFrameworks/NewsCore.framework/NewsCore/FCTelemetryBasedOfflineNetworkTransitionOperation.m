@interface FCTelemetryBasedOfflineNetworkTransitionOperation
- (FCTelemetryBasedOfflineNetworkTransitionOperation)init;
- (FCTelemetryBasedOfflineNetworkTransitionOperation)initWithAppActivationMonitor:(id)a3 ignoredHosts:(id)a4 networkBehaviorMonitor:(id)a5;
- (void)logNetworkEvent:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCTelemetryBasedOfflineNetworkTransitionOperation

- (void)performOperation
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self setMonitoringStartDate:v3];

  v4 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self networkBehaviorMonitor];
  [v4 addMonitor:self];
}

- (FCTelemetryBasedOfflineNetworkTransitionOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTelemetryBasedOfflineNetworkTransitionOperation init]";
    v10 = 2080;
    v11 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTelemetryBasedOfflineNetworkTransitionOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTelemetryBasedOfflineNetworkTransitionOperation)initWithAppActivationMonitor:(id)a3 ignoredHosts:(id)a4 networkBehaviorMonitor:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivationMonitor"];
    *buf = 136315906;
    v25 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v26 = 2080;
    v27 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v28 = 1024;
    v29 = 38;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ignoredHosts"];
    *buf = 136315906;
    v25 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v26 = 2080;
    v27 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v28 = 1024;
    v29 = 39;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkBehaviorMonitor"];
    *buf = 136315906;
    v25 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v26 = 2080;
    v27 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v28 = 1024;
    v29 = 40;
    v30 = 2114;
    v31 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCTelemetryBasedOfflineNetworkTransitionOperation;
  v12 = [(FCOperation *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appActivationMonitor, a3);
    v14 = [v10 copy];
    ignoredHosts = v13->_ignoredHosts;
    v13->_ignoredHosts = v14;

    objc_storeStrong(&v13->_networkBehaviorMonitor, a5);
    v16 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v13->_lock;
    v13->_lock = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self networkBehaviorMonitor];
  [v4 removeMonitor:self];
}

- (void)logNetworkEvent:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF00];
  [v4 startTime];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v4 error];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self monitoringStartDate];
    if (([v6 fc_isLaterThan:v10] & 1) == 0)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3;
      v37[3] = &unk_1E7C36C58;
      v38 = v6;
      v39 = v10;
      __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3(v37);

LABEL_10:
      goto LABEL_11;
    }

    v36 = 0;
    if (![v9 fc_isOfflineErrorOfflineReason:&v36] || v36 == 2)
    {
      goto LABEL_10;
    }

    if ([v9 fc_failedDueToTaskConstraints])
    {
      v11 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "disregarding event, since it failed due to task constraints", buf, 2u);
      }

      goto LABEL_10;
    }

    v13 = [v4 error];
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696A980]];

    if (v15)
    {
      v16 = [v15 host];
      v17 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self ignoredHosts];
      v18 = [v17 containsObject:v16];

      v19 = FCReachabilityLog;
      v20 = os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v20)
        {
          *buf = 138543362;
          v45 = v16;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "host %{public}@ will be ignored", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v20)
      {
        *buf = 138543362;
        v45 = v16;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "host %{public}@ will not be ignored", buf, 0xCu);
      }
    }

    else
    {
      v21 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "no failing URL was obtained, so treating error as counting towards offline", buf, 2u);
      }
    }

    v22 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self appActivationMonitor];
    v16 = [v22 lastActivationDate];

    v23 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self appActivationMonitor];
    v24 = [v23 lastBackgroundDate];

    if (v16)
    {
      if (v24 && [v24 fc_isLaterThan:v16])
      {
        v25 = FCReachabilityLog;
        if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v45 = v24;
          v46 = 2114;
          v47 = v16;
          v26 = "disregarding error, since app is currently in the background, with last activation date of %{public}@ and last background date of %{public}@ ";
LABEL_29:
          v27 = v25;
          v28 = 22;
LABEL_32:
          _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        }
      }

      else
      {
        if (![v6 fc_isEarlierThan:v16])
        {
          v30 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self lock];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_25;
          v31[3] = &unk_1E7C376C8;
          v31[4] = self;
          v32 = v4;
          v33 = v6;
          v34 = v16;
          v35 = v24;
          [v30 performWithLockSync:v31];

          goto LABEL_34;
        }

        v25 = FCReachabilityLog;
        if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v45 = v6;
          v46 = 2114;
          v47 = v16;
          v26 = "disregarding error, since network event started at %{public}@ relative to last activation date of %{public}@";
          goto LABEL_29;
        }
      }
    }

    else
    {
      v29 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "disregarding error, since app has not yet become active";
        v27 = v29;
        v28 = 2;
        goto LABEL_32;
      }
    }

LABEL_34:

LABEL_35:
    goto LABEL_10;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke;
  v40[3] = &unk_1E7C376A0;
  v41 = v4;
  v42 = self;
  v43 = v6;
  __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke(v40);

  v9 = v41;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) totalDuration];
  v3 = v2;
  [*(a1 + 40) maximumDurationToCountAsSuccess];
  if (v3 < v4)
  {
    v5 = [*(a1 + 40) lock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_2;
    v7[3] = &unk_1E7C36C58;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    [v5 performWithLockSync:v7];
  }
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = [*(a1 + 32) dateOfLastSuccess];
  v3 = [v2 fc_laterDateAllowingNilWithDate:v4 andDate:*(a1 + 40)];
  [*(a1 + 32) setDateOfLastSuccess:v3];
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "disregarding event, since it started at %{public}@ relative to offline monitoring start date of %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_25(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dateOfLastSuccess];
  if (!v2)
  {
    goto LABEL_4;
  }

  [*(a1 + 32) minimumSecondsSinceSuccessToOffline];
  v3 = [v2 dateByAddingTimeInterval:?];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v4 fc_isLaterThan:v3];

  if (v5)
  {

LABEL_4:
    v6 = FCReachabilityLog;
    if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 error];
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v16 = 138544386;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v2;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "transitioning offline after receiving event with error %{public}@, starting at %{public}@ relative to last activation date of %{public}@, last background date of %{public}@, and last success date of %{public}@", &v16, 0x34u);
    }

    if (([*(a1 + 32) isFinished] & 1) == 0)
    {
      v13 = [*(a1 + 32) transitionBlock];
      v13[2]();

      [*(a1 + 32) finishedPerformingOperationWithError:0];
    }

    goto LABEL_11;
  }

  v14 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v3;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "disregarding error, since earliest failure date is %{public}@", &v16, 0xCu);
  }

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];
}

@end