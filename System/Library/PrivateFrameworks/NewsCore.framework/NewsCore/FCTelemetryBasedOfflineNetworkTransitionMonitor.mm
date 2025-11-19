@interface FCTelemetryBasedOfflineNetworkTransitionMonitor
- (FCTelemetryBasedOfflineNetworkTransitionMonitor)init;
- (FCTelemetryBasedOfflineNetworkTransitionMonitor)initWithAppActivationMonitor:(id)a3 configurationManager:(id)a4 networkBehaviorMonitor:(id)a5 onlineTransitionMonitor:(id)a6;
- (id)notifyWhenTransitionOccursOnQueue:(id)a3 withBlock:(id)a4;
@end

@implementation FCTelemetryBasedOfflineNetworkTransitionMonitor

- (FCTelemetryBasedOfflineNetworkTransitionMonitor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTelemetryBasedOfflineNetworkTransitionMonitor init]";
    v10 = 2080;
    v11 = "FCTelemetryBasedOfflineNetworkTransitionMonitor.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTelemetryBasedOfflineNetworkTransitionMonitor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTelemetryBasedOfflineNetworkTransitionMonitor)initWithAppActivationMonitor:(id)a3 configurationManager:(id)a4 networkBehaviorMonitor:(id)a5 onlineTransitionMonitor:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivationMonitor"];
    *buf = 136315906;
    v27 = "[FCTelemetryBasedOfflineNetworkTransitionMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:onlineTransitionMonitor:]";
    v28 = 2080;
    v29 = "FCTelemetryBasedOfflineNetworkTransitionMonitor.m";
    v30 = 1024;
    v31 = 41;
    v32 = 2114;
    v33 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v12)
    {
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v27 = "[FCTelemetryBasedOfflineNetworkTransitionMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:onlineTransitionMonitor:]";
    v28 = 2080;
    v29 = "FCTelemetryBasedOfflineNetworkTransitionMonitor.m";
    v30 = 1024;
    v31 = 42;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkBehaviorMonitor"];
    *buf = 136315906;
    v27 = "[FCTelemetryBasedOfflineNetworkTransitionMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:onlineTransitionMonitor:]";
    v28 = 2080;
    v29 = "FCTelemetryBasedOfflineNetworkTransitionMonitor.m";
    v30 = 1024;
    v31 = 43;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "onlineTransitionMonitor"];
    *buf = 136315906;
    v27 = "[FCTelemetryBasedOfflineNetworkTransitionMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:onlineTransitionMonitor:]";
    v28 = 2080;
    v29 = "FCTelemetryBasedOfflineNetworkTransitionMonitor.m";
    v30 = 1024;
    v31 = 44;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  v25.receiver = self;
  v25.super_class = FCTelemetryBasedOfflineNetworkTransitionMonitor;
  v15 = [(FCTelemetryBasedOfflineNetworkTransitionMonitor *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appActivationMonitor, a3);
    objc_storeStrong(&v16->_configurationManager, a4);
    objc_storeStrong(&v16->_networkBehaviorMonitor, a5);
    objc_storeStrong(&v16->_onlineTransitionMonitor, a6);
    v17 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    dateOfLastTransitionLock = v16->_dateOfLastTransitionLock;
    v16->_dateOfLastTransitionLock = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)notifyWhenTransitionOccursOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCTelemetryBasedOfflineNetworkTransitionMonitor *)self configurationManager];
  v9 = [v8 possiblyUnfetchedAppConfiguration];

  v10 = MEMORY[0x1E695DFD8];
  v11 = [v9 offlineModeDetectionIgnoredHosts];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = [v10 setWithArray:v13];

  v15 = [FCTelemetryBasedOfflineNetworkTransitionOperation alloc];
  v16 = [(FCTelemetryBasedOfflineNetworkTransitionMonitor *)self appActivationMonitor];
  v17 = [(FCTelemetryBasedOfflineNetworkTransitionMonitor *)self networkBehaviorMonitor];
  v18 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)v15 initWithAppActivationMonitor:v16 ignoredHosts:v14 networkBehaviorMonitor:v17];

  v19 = [(FCTelemetryBasedOfflineNetworkTransitionMonitor *)self onlineTransitionMonitor];
  v20 = [v19 dateOfLastTransition];
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)v18 setDateOfLastSuccess:v20];

  [v9 offlineModeMinimumSecondsSinceSuccessToOffline];
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)v18 setMinimumSecondsSinceSuccessToOffline:?];
  [v9 offlineModeMaximumDurationToCountAsSuccess];
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)v18 setMaximumDurationToCountAsSuccess:?];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__FCTelemetryBasedOfflineNetworkTransitionMonitor_notifyWhenTransitionOccursOnQueue_withBlock___block_invoke;
  v24[3] = &unk_1E7C39F98;
  v26 = self;
  v27 = v7;
  v25 = v6;
  v21 = v7;
  v22 = v6;
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)v18 setTransitionBlock:v24];
  [(FCOperation *)v18 start];

  return v18;
}

void __95__FCTelemetryBasedOfflineNetworkTransitionMonitor_notifyWhenTransitionOccursOnQueue_withBlock___block_invoke(uint64_t a1)
{
  dispatch_async(*(a1 + 32), *(a1 + 48));
  v2 = [*(a1 + 40) dateOfLastTransitionLock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__FCTelemetryBasedOfflineNetworkTransitionMonitor_notifyWhenTransitionOccursOnQueue_withBlock___block_invoke_2;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = *(a1 + 40);
  [v2 performWithLockSync:v3];
}

void __95__FCTelemetryBasedOfflineNetworkTransitionMonitor_notifyWhenTransitionOccursOnQueue_withBlock___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF00];
  v5 = [*(a1 + 32) dateOfLastTransition];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 fc_laterDateAllowingNilWithDate:v5 andDate:v3];
  [*(a1 + 32) setDateOfLastTransition:v4];
}

@end