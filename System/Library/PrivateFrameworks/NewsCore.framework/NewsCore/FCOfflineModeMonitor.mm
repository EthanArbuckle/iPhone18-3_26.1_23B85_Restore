@interface FCOfflineModeMonitor
- (BOOL)isCloudKitReachable;
- (BOOL)isLowDataModeEnabled;
- (BOOL)isNetworkReachableViaWiFi;
- (BOOL)isNetworkUsageInexpensive;
- (FCOfflineModeMonitor)initWithAppActivationMonitor:(id)monitor configurationManager:(id)manager networkBehaviorMonitor:(id)behaviorMonitor;
- (FCOfflineModeMonitor)initWithNetworkReachability:(id)reachability onlineTransitionMonitor:(id)monitor offlineTransitionMonitor:(id)transitionMonitor;
- (int64_t)cellularRadioAccessTechnology;
- (void)_notifyNetworkReachabilityConnectivityDidChange;
- (void)_notifyNetworkReachabilityDidChange;
- (void)_transitionToOfflineReason:(int64_t)reason;
- (void)addObserver:(id)observer;
- (void)networkReachabilityDidChange:(id)change;
- (void)removeObserver:(id)observer;
- (void)wifiReachabilityDidChange:(id)change;
@end

@implementation FCOfflineModeMonitor

- (BOOL)isCloudKitReachable
{
  if ([(FCOfflineModeMonitor *)self offlineReason])
  {
    return 0;
  }

  networkReachability = [(FCOfflineModeMonitor *)self networkReachability];
  isCloudKitAccessAllowed = [networkReachability isCloudKitAccessAllowed];

  return isCloudKitAccessAllowed;
}

- (BOOL)isLowDataModeEnabled
{
  networkReachability = [(FCOfflineModeMonitor *)self networkReachability];
  isLowDataModeEnabled = [networkReachability isLowDataModeEnabled];

  return isLowDataModeEnabled;
}

- (FCOfflineModeMonitor)initWithAppActivationMonitor:(id)monitor configurationManager:(id)manager networkBehaviorMonitor:(id)behaviorMonitor
{
  v29 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  managerCopy = manager;
  behaviorMonitorCopy = behaviorMonitor;
  if (!monitorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivationMonitor"];
    *buf = 136315906;
    v22 = "[FCOfflineModeMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:]";
    v23 = 2080;
    v24 = "FCOfflineModeMonitor.m";
    v25 = 1024;
    v26 = 69;
    v27 = 2114;
    v28 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (behaviorMonitorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (behaviorMonitorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkBehaviorMonitor"];
    *buf = 136315906;
    v22 = "[FCOfflineModeMonitor initWithAppActivationMonitor:configurationManager:networkBehaviorMonitor:]";
    v23 = 2080;
    v24 = "FCOfflineModeMonitor.m";
    v25 = 1024;
    v26 = 70;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v11 = FCCurrentContextEnvironment();
  v12 = FCOfflineModePingHostName(v11);
  v13 = [[FCPingBasedOnlineNetworkTransitionMonitor alloc] initWithConfigurationManager:managerCopy hostName:v12 port:443];
  v14 = [[FCTelemetryBasedOfflineNetworkTransitionMonitor alloc] initWithAppActivationMonitor:monitorCopy configurationManager:managerCopy networkBehaviorMonitor:behaviorMonitorCopy onlineTransitionMonitor:v13];
  v15 = +[FCNetworkReachability sharedNetworkReachability];
  v16 = [(FCOfflineModeMonitor *)self initWithNetworkReachability:v15 onlineTransitionMonitor:v13 offlineTransitionMonitor:v14];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (FCOfflineModeMonitor)initWithNetworkReachability:(id)reachability onlineTransitionMonitor:(id)monitor offlineTransitionMonitor:(id)transitionMonitor
{
  v83 = *MEMORY[0x1E69E9840];
  reachabilityCopy = reachability;
  monitorCopy = monitor;
  transitionMonitorCopy = transitionMonitor;
  if (!reachabilityCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
    *buf = 136315906;
    v76 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]";
    v77 = 2080;
    v78 = "FCOfflineModeMonitor.m";
    v79 = 1024;
    v80 = 97;
    v81 = 2114;
    v82 = v52;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (monitorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (monitorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "onlineTransitionMonitor"];
    *buf = 136315906;
    v76 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]";
    v77 = 2080;
    v78 = "FCOfflineModeMonitor.m";
    v79 = 1024;
    v80 = 98;
    v81 = 2114;
    v82 = v53;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!transitionMonitorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "offlineTransitionMonitor"];
    *buf = 136315906;
    v76 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]";
    v77 = 2080;
    v78 = "FCOfflineModeMonitor.m";
    v79 = 1024;
    v80 = 99;
    v81 = 2114;
    v82 = v54;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v74.receiver = self;
  v74.super_class = FCOfflineModeMonitor;
  v12 = [(FCOfflineModeMonitor *)&v74 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v12->_observers;
    v12->_observers = v13;

    objc_storeStrong(&v12->_networkReachability, reachability);
    [reachabilityCopy addObserver:v12];
    objc_storeStrong(&v12->_onlineTransitionMonitor, monitor);
    objc_storeStrong(&v12->_offlineTransitionMonitor, transitionMonitor);
    v63 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"initial"];
    v62 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"inactiveOffline"];
    v15 = [v62 onWillEnter:&__block_literal_global_26];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_51;
    v72[3] = &unk_1E7C3A580;
    v16 = v12;
    v73 = v16;
    v17 = [v15 onDidEnter:v72];
    v18 = [v17 onWillExit:&__block_literal_global_61_1];

    v19 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"online"];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_62;
    v70[3] = &unk_1E7C3A5A8;
    v71 = transitionMonitorCopy;
    v20 = [v19 onWillEnter:v70];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_2;
    v68[3] = &unk_1E7C3A580;
    v21 = v16;
    v69 = v21;
    v22 = [v20 onDidEnter:v68];
    v23 = [v22 onWillExit:&__block_literal_global_66_1];

    v24 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"activeOffline"];
    v25 = monitorCopy;
    v26 = v24;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_68;
    v66[3] = &unk_1E7C3A5A8;
    v60 = v25;
    v67 = v25;
    v27 = [v26 onWillEnter:v66];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_2_70;
    v64[3] = &unk_1E7C3A580;
    v59 = v21;
    v65 = v59;
    v28 = [v27 onDidEnter:v64];
    v29 = [v28 onWillExit:&__block_literal_global_73_0];

    offlineReason = [reachabilityCopy offlineReason];
    v61 = reachabilityCopy;
    if (offlineReason)
    {
      v31 = offlineReason;
      v32 = v62;
      v33 = v62;
      v58 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
    }

    else
    {
      v33 = v19;
      v58 = 0;
      v32 = v62;
    }

    v57 = v33;
    v34 = objc_alloc(MEMORY[0x1E69B6910]);
    v35 = [MEMORY[0x1E695DFD8] setWithObject:v63];
    v56 = [v34 initWithName:@"transitionToFirstState" transitionFromStates:v35 toState:v33];

    v36 = objc_alloc(MEMORY[0x1E69B6910]);
    v37 = [MEMORY[0x1E695DFD8] setWithObjects:{v19, v26, 0}];
    v38 = v32;
    v55 = [v36 initWithName:@"reachabilityWentOffline" transitionFromStates:v37 toState:v32];

    v39 = objc_alloc(MEMORY[0x1E69B6910]);
    v40 = [MEMORY[0x1E695DFD8] setWithObjects:{v32, 0}];
    v41 = [v39 initWithName:@"reachabilityCameOnline" transitionFromStates:v40 toState:v26];

    v42 = objc_alloc(MEMORY[0x1E69B6910]);
    v43 = [MEMORY[0x1E695DFD8] setWithObject:v26];
    v44 = [v42 initWithName:@"onlineTransitionDetected" transitionFromStates:v43 toState:v19];

    v45 = objc_alloc(MEMORY[0x1E69B6910]);
    v46 = [MEMORY[0x1E695DFD8] setWithObject:v19];
    v47 = [v45 initWithName:@"offlineTransitionDetected" transitionFromStates:v46 toState:v26];

    v48 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v63 withOwner:v59];
    [v48 addState:v38];
    [v48 addState:v19];
    [v48 addState:v26];
    [v48 addEvent:v56];
    [v48 addEvent:v55];
    [v48 addEvent:v41];
    [v48 addEvent:v44];
    [v48 addEvent:v47];
    [v48 activate];
    objc_storeStrong(v59 + 3, v48);
    v49 = [v48 fireEventWithName:@"transitionToFirstState" withContext:v58];

    monitorCopy = v60;
    reachabilityCopy = v61;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v12;
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "entering inactive offline", buf, 2u);
  }

  v7 = [v5 offlineTransitionOperation];

  if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "owner.offlineTransitionOperation"];
    *buf = 136315906;
    v13 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v14 = 2080;
    v15 = "FCOfflineModeMonitor.m";
    v16 = 1024;
    v17 = 116;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [v5 onlineTransitionOperation];

  if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "owner.onlineTransitionOperation"];
    *buf = 136315906;
    v13 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v14 = 2080;
    v15 = "FCOfflineModeMonitor.m";
    v16 = 1024;
    v17 = 117;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

id __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_51(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a2 context];
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "context"];
    *buf = 136315906;
    v11 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v12 = 2080;
    v13 = "FCOfflineModeMonitor.m";
    v14 = 1024;
    v15 = 121;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = objc_opt_class();
  v5 = FCCheckedDynamicCast(v4, v3);
  [*(a1 + 32) _transitionToOfflineReason:{objc_msgSend(v5, "integerValue")}];
  v6 = [MEMORY[0x1E69B68F8] asVoid];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_59()
{
  v0 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B63EF000, v0, OS_LOG_TYPE_DEFAULT, "exiting inactive offline", v1, 2u);
  }
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "entering online state", buf, 2u);
  }

  v8 = [v6 offlineTransitionOperation];

  if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "owner.offlineTransitionOperation"];
    *buf = 136315906;
    v17 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v18 = 2080;
    v19 = "FCOfflineModeMonitor.m";
    v20 = 1024;
    v21 = 135;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_63;
  v14[3] = &unk_1E7C36EA0;
  v15 = v5;
  v10 = v5;
  v11 = [v9 notifyWhenTransitionOccursOnQueue:MEMORY[0x1E69E96A0] withBlock:v14];
  [v6 setOfflineTransitionOperation:v11];

  v12 = *MEMORY[0x1E69E9840];
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v1 = [v2 fireEventWithName:@"offlineTransitionDetected" withContext:0];
}

uint64_t __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _transitionToOfflineReason:0];
  v1 = MEMORY[0x1E69B68F8];

  return [v1 asVoid];
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "exiting online state", buf, 2u);
  }

  v7 = [v5 offlineTransitionOperation];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "offlineTransitionOperation"];
    *buf = 136315906;
    v11 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v12 = 2080;
    v13 = "FCOfflineModeMonitor.m";
    v14 = 1024;
    v15 = 145;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [v7 cancel];
  [v5 setOfflineTransitionOperation:0];

  v8 = *MEMORY[0x1E69E9840];
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "entering active offline state", buf, 2u);
  }

  v8 = [v6 onlineTransitionOperation];

  if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "owner.onlineTransitionOperation"];
    *buf = 136315906;
    v17 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v18 = 2080;
    v19 = "FCOfflineModeMonitor.m";
    v20 = 1024;
    v21 = 154;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_69;
  v14[3] = &unk_1E7C36EA0;
  v15 = v5;
  v10 = v5;
  v11 = [v9 notifyWhenTransitionOccursOnQueue:MEMORY[0x1E69E96A0] withBlock:v14];
  [v6 setOnlineTransitionOperation:v11];

  v12 = *MEMORY[0x1E69E9840];
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v1 = [v2 fireEventWithName:@"onlineTransitionDetected" withContext:0];
}

uint64_t __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_2_70(uint64_t a1)
{
  [*(a1 + 32) _transitionToOfflineReason:2];
  v1 = MEMORY[0x1E69B68F8];

  return [v1 asVoid];
}

void __101__FCOfflineModeMonitor_initWithNetworkReachability_onlineTransitionMonitor_offlineTransitionMonitor___block_invoke_3_71(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "leaving active offline state", buf, 2u);
  }

  v7 = [v5 onlineTransitionOperation];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "onlineTransitionOperation"];
    *buf = 136315906;
    v11 = "[FCOfflineModeMonitor initWithNetworkReachability:onlineTransitionMonitor:offlineTransitionMonitor:]_block_invoke";
    v12 = 2080;
    v13 = "FCOfflineModeMonitor.m";
    v14 = 1024;
    v15 = 164;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [v7 cancel];
  [v5 setOnlineTransitionOperation:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isNetworkUsageInexpensive
{
  networkReachability = [(FCOfflineModeMonitor *)self networkReachability];
  isNetworkUsageExpensive = [networkReachability isNetworkUsageExpensive];

  return isNetworkUsageExpensive;
}

- (BOOL)isNetworkReachableViaWiFi
{
  isNetworkReachable = [(FCOfflineModeMonitor *)self isNetworkReachable];
  if (isNetworkReachable)
  {
    networkReachability = [(FCOfflineModeMonitor *)self networkReachability];
    isNetworkReachableViaWiFi = [networkReachability isNetworkReachableViaWiFi];

    LOBYTE(isNetworkReachable) = isNetworkReachableViaWiFi;
  }

  return isNetworkReachable;
}

- (int64_t)cellularRadioAccessTechnology
{
  networkReachability = [(FCOfflineModeMonitor *)self networkReachability];
  cellularRadioAccessTechnology = [networkReachability cellularRadioAccessTechnology];

  return cellularRadioAccessTechnology;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__FCOfflineModeMonitor_addObserver___block_invoke_2;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = observerCopy;
    FCPerformBlockOnMainThread(v6);
  }
}

void __36__FCOfflineModeMonitor_addObserver___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__FCOfflineModeMonitor_removeObserver___block_invoke_2;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = observerCopy;
    FCPerformBlockOnMainThread(v6);
  }
}

void __39__FCOfflineModeMonitor_removeObserver___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is not an observer", *(a1 + 40)];
    *buf = 136315906;
    v8 = "[FCOfflineModeMonitor removeObserver:]_block_invoke_2";
    v9 = 2080;
    v10 = "FCOfflineModeMonitor.m";
    v11 = 1024;
    v12 = 270;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [*(a1 + 32) observers];
  [v4 removeObject:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)networkReachabilityDidChange:(id)change
{
  offlineReason = [change offlineReason];
  if (offlineReason)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:offlineReason];
    v5 = @"reachabilityWentOffline";
  }

  else
  {
    v8 = 0;
    v5 = @"reachabilityCameOnline";
  }

  stateMachine = [(FCOfflineModeMonitor *)self stateMachine];
  v7 = [stateMachine fireEventWithName:v5 withContext:v8];
}

- (void)wifiReachabilityDidChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  observers = [(FCOfflineModeMonitor *)self observers];
  v5 = [observers copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 wifiReachabilityDidChange:{self, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_transitionToOfflineReason:(int64_t)reason
{
  offlineReason = [(FCOfflineModeMonitor *)self offlineReason];
  if (offlineReason != reason)
  {
    v6 = offlineReason;
    [(FCOfflineModeMonitor *)self setOfflineReason:reason];
    [(FCOfflineModeMonitor *)self _notifyNetworkReachabilityDidChange];
    if (!reason || !v6)
    {

      [(FCOfflineModeMonitor *)self _notifyNetworkReachabilityConnectivityDidChange];
    }
  }
}

- (void)_notifyNetworkReachabilityDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  observers = [(FCOfflineModeMonitor *)self observers];
  v4 = [observers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 networkReachabilityDidChange:{self, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_notifyNetworkReachabilityConnectivityDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  observers = [(FCOfflineModeMonitor *)self observers];
  v4 = [observers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 networkReachabilityConnectivityDidChange:{self, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end