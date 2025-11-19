@interface CWFAssetPowerTableElector
+ (id)powerTableEvaluationStateAsString:(int64_t)a3;
+ (int64_t)powerTableEvaluationStringToState:(id)a3;
- (BOOL)isSessionCurrentlyBlocking;
- (BOOL)removePersistedKey:(id)a3;
- (BOOL)waitForInterfaceAdded:(id)a3;
- (CWFAssetPowerTableElector)initWithNotificationCenter:(id)a3;
- (CWFAssetPowerTableElectorDelegate)delegate;
- (id)description;
- (id)getPersistedDict;
- (id)getPersistedKey:(id)a3;
- (id)getSession:(id)a3;
- (id)getSession:(id)a3 forKey:(id)a4;
- (id)performPowerTableVersionRequestWithDeadline:(id)a3;
- (void)_handleCENPowerTableEvaluationNotification:(id)a3;
- (void)checkForExistingSessionAndRecover;
- (void)dealloc;
- (void)dispatchWaitForInterfaceAddedThenBlockify:(id)a3 completion:(id)a4;
- (void)handleCENPowerTableEvaluationNotification:(id)a3;
- (void)handleCENPowerTableEvaluationStateAborted:(id)a3;
- (void)handleCENPowerTableEvaluationStateAccepted:(id)a3;
- (void)handleCENPowerTableEvaluationStateRejected:(id)a3;
- (void)handleCENPowerTableEvaluationStateRequestingReadiness:(id)a3 dueInterval:(double)a4;
- (void)handleCENPowerTableEvaluationStateRequestingVotes:(id)a3 dueInterval:(double)a4;
- (void)handleCENPowerTableEvaluationStateStarting:(id)a3;
- (void)handleCENPowerTableEvaluationStateUninitialized;
- (void)performVersionFetchBlockify:(id)a3;
- (void)persist:(id)a3 forKey:(id)a4;
- (void)persistSession:(id)a3 data:(id)a4 forKey:(id)a5;
- (void)processTransitionToTerminalState:(id)a3;
- (void)setupInterfaceAddedAndDriverAvailMonitor;
- (void)waitForPowerTableBootedThenVoteInBlock:(id)a3 completion:(id)a4;
@end

@implementation CWFAssetPowerTableElector

- (CWFAssetPowerTableElector)initWithNotificationCenter:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CWFAssetPowerTableElector;
  v5 = [(CWFAssetPowerTableElector *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.wifi.CWFAssetPowerTableElector", 0);
    [(CWFAssetPowerTableElector *)v5 set_coordinationQueue:v6];

    v7 = [(CWFAssetPowerTableElector *)v5 _coordinationQueue];

    if (v7)
    {
      v8 = dispatch_queue_create("com.apple.wifi.CWFAssetPowerTableWorker", MEMORY[0x1E69E96A8]);
      [(CWFAssetPowerTableElector *)v5 set_apiQueue:v8];

      v9 = [(CWFAssetPowerTableElector *)v5 _apiQueue];

      if (v9)
      {
        v10 = dispatch_queue_create("com.apple.wifi.PowerTableSignalQueue", 0);
        [(CWFAssetPowerTableElector *)v5 set_signalQueue:v10];

        v11 = [(CWFAssetPowerTableElector *)v5 _signalQueue];

        if (v11)
        {
          v12 = dispatch_queue_create("com.apple.wifi.PowerTableWaitingQueue", 0);
          [(CWFAssetPowerTableElector *)v5 set_waitingQueue:v12];

          v13 = [(CWFAssetPowerTableElector *)v5 _waitingQueue];

          if (v13)
          {
            v14 = MGCopyAnswer();
            -[CWFAssetPowerTableElector set_isInternalBuild:](v5, "set_isInternalBuild:", [v14 BOOLValue]);

            v15 = [MEMORY[0x1E696AE30] processInfo];
            -[CWFAssetPowerTableElector set_pid:](v5, "set_pid:", [v15 processIdentifier]);

            [(CWFAssetPowerTableElector *)v5 set_readinessTimeoutInterval:*MEMORY[0x1E6993C00]];
            [(CWFAssetPowerTableElector *)v5 set_votingTimeoutInterval:*MEMORY[0x1E6993C18]];
            [(CWFAssetPowerTableElector *)v5 set_maxSessionActiveInterval:600.0];
            [(CWFAssetPowerTableElector *)v5 set_dateToBlockWaitingForDriverReload:30.0];
            [(CWFAssetPowerTableElector *)v5 set_powerTableEvaluationState:0];
            [(CWFAssetPowerTableElector *)v5 checkForExistingSessionAndRecover];
            if (v4)
            {
              [(CWFAssetPowerTableElector *)v5 set_notificationCenter:v4];
              [(CWFAssetPowerTableElector *)v5 _notificationCenter];
            }

            else
            {
              v16 = [MEMORY[0x1E696ABB0] defaultCenter];
              [(CWFAssetPowerTableElector *)v5 set_distNotificationCenter:v16];

              [(CWFAssetPowerTableElector *)v5 _distNotificationCenter];
            }
            v17 = ;
            [v17 addObserver:v5 selector:sel_handleCENPowerTableEvaluationNotification_ name:*MEMORY[0x1E6993BF0] object:0];

            v18 = CWFGetOTAOSLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v26 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
              v27 = 1024;
              v28 = 123;
              v29 = 2080;
              v30 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
              _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: init complete", buf, 0x1Cu);
            }

            goto LABEL_12;
          }

          v22 = CWFGetOTAOSLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v26 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
            v27 = 1024;
            v28 = 99;
            v29 = 2080;
            v30 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
            v23 = "%{public}s::%d:%s: Failed to alloc _waitingQueue";
            goto LABEL_22;
          }

LABEL_23:

          v19 = 0;
          goto LABEL_13;
        }

        v22 = CWFGetOTAOSLog();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136446722;
        v26 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v27 = 1024;
        v28 = 96;
        v29 = 2080;
        v30 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v23 = "%{public}s::%d:%s: Failed to alloc _signalQueue";
      }

      else
      {
        v22 = CWFGetOTAOSLog();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136446722;
        v26 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v27 = 1024;
        v28 = 93;
        v29 = 2080;
        v30 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v23 = "%{public}s::%d:%s: Failed to alloc _apiQueue";
      }
    }

    else
    {
      v22 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136446722;
      v26 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
      v27 = 1024;
      v28 = 90;
      v29 = 2080;
      v30 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
      v23 = "%{public}s::%d:%s: Failed to alloc _coordinationQueue";
    }

LABEL_22:
    _os_log_impl(&dword_1E0BBF000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x1Cu);
    goto LABEL_23;
  }

LABEL_12:
  v19 = v5;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  v3 = [(CWFAssetPowerTableElector *)self _notificationCenter];

  if (v3)
  {
    v4 = [(CWFAssetPowerTableElector *)self _notificationCenter];
    [v4 removeObserver:self];
  }

  v5 = [(CWFAssetPowerTableElector *)self _distNotificationCenter];

  if (v5)
  {
    v6 = [(CWFAssetPowerTableElector *)self _distNotificationCenter];
    [v6 removeObserver:self];
  }

  v7.receiver = self;
  v7.super_class = CWFAssetPowerTableElector;
  [(CWFAssetPowerTableElector *)&v7 dealloc];
}

- (void)persist:(id)a3 forKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(CWFAssetPowerTableElector *)self getPersistedDict];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v8 setObject:v6 forKey:v7];
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v9 setPersistentDomain:v8 forName:@"com.apple.wifi.powertable"];
  }

  else
  {
    v8 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446722;
      v12 = "[CWFAssetPowerTableElector persist:forKey:]";
      v13 = 1024;
      v14 = 147;
      v15 = 2080;
      v16 = "[CWFAssetPowerTableElector persist:forKey:]";
      _os_log_impl(&dword_1E0BBF000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Failed access userDefaults", &v11, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)persistSession:(id)a3 data:(id)a4 forKey:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26 = a4;
  v24 = self;
  v25 = a5;
  v9 = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v10 = MEMORY[0x1E695DF70];
  v11 = [v9 objectForKey:@"powertable-election-sessions-history"];
  v12 = [v10 arrayWithArray:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x1E695DF70] array];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v27 + 1) + 8 * v17);
      v19 = [v18 objectForKeyedSubscript:@"session-id"];
      v20 = [v8 isEqualToString:v19];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    [v13 removeObject:v18];
    v21 = 0x1E695D000uLL;
    v22 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];

    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:

    v21 = 0x1E695D000;
  }

  v22 = [*(v21 + 3984) dictionary];
  [v22 setObject:v8 forKeyedSubscript:@"session-id"];
LABEL_14:
  [v22 setObject:v26 forKeyedSubscript:v25];
  [v13 addObject:v22];
  [(CWFAssetPowerTableElector *)v24 persist:v13 forKey:@"powertable-election-sessions-history"];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)getPersistedDict
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.wifi.powertable"];

  return v3;
}

- (id)getPersistedKey:(id)a3
{
  v4 = a3;
  v5 = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)removePersistedKey:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v7 = [v5 dictionaryWithDictionary:v6];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = v8 != 0;

    [v7 setObject:0 forKeyedSubscript:v4];
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setPersistentDomain:v7 forName:@"com.apple.wifi.powertable"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getSession:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(CWFAssetPowerTableElector *)self getSession:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getSession:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v6 = [v5 objectForKey:@"powertable-election-sessions-history"];
  v7 = v6;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v5;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"session-id"];
          v15 = [v4 isEqualToString:v14];

          if (v15)
          {
            v16 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_12:
      v5 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)waitForPowerTableBootedThenVoteInBlock:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(CWFAssetPowerTableElector *)self _dateToBlockWaitingForDriverReload];
  v9 = [v6 dateByAddingTimeInterval:0.0 - v8];
  [(CWFAssetPowerTableElector *)self _dateToFetchReloadedPowerTableForVoteAssesment];
  v11 = [v6 dateByAddingTimeInterval:0.0 - v10];
  if (![(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
  {
    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v27 = 136446978;
      v28 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v29 = 1024;
      v30 = 268;
      v31 = 2080;
      v32 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: _readyToFetchLoadedPT FALSE, will block waiting for _readyToFetchLoadedPTCondition until date: %@", &v27, 0x26u);
    }

    v13 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v13))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _readyToFetchLoadedPTCondition", "", &v27, 2u);
    }

    v14 = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
    [v14 lock];

    while (![(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
    {
      v15 = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
      v16 = [v15 waitUntilDate:v9];

      if ((v16 & 1) == 0)
      {
        v17 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136446978;
          v28 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
          v29 = 1024;
          v30 = 274;
          v31 = 2080;
          v32 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
          v33 = 2112;
          v34 = v6;
          _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Wait for _readyToFetchLoadedPTCondition timed out at date %@", &v27, 0x26u);
        }

        break;
      }
    }

    v18 = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
    [v18 unlock];

    v19 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v19))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _readyToFetchLoadedPTCondition", "", &v27, 2u);
    }
  }

  if ([(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
  {
    v20 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v27 = 136446978;
      v28 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v29 = 1024;
      v30 = 283;
      v31 = 2080;
      v32 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: _readyToFetchLoadedPT TRUE, will fetch PT until date: %@", &v27, 0x26u);
    }

    v21 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v11];
    v22 = [v21 allKeys];
    v23 = [v22 count];
    v24 = v23 != 0;

    if (!v23)
    {
      v25 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = 136446722;
        v28 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
        v29 = 1024;
        v30 = 288;
        v31 = 2080;
        v32 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
        _os_log_impl(&dword_1E0BBF000, v25, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: ERROR failed to retrieve current PT Version, setting voteResult = FALSE", &v27, 0x1Cu);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v7[2](v7, v24, 0);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)dispatchWaitForInterfaceAddedThenBlockify:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CWFAssetPowerTableElector *)self _dateToBlockWaitingForDriverReload];
  v9 = [v7 dateByAddingTimeInterval:0.0 - v8];

  v10 = [(CWFAssetPowerTableElector *)self _waitingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4CBFC;
  block[3] = &unk_1E86E6CA8;
  v14 = v9;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v9;
  dispatch_async(v10, block);
}

- (void)setupInterfaceAddedAndDriverAvailMonitor
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setupInterfaceAddedAndDriverAvailMonitor", "", buf, 2u);
  }

  v4 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = objc_alloc_init(CWFInterface);
    [(CWFAssetPowerTableElector *)self setWifiInterface:v6];

    v7 = [(CWFAssetPowerTableElector *)self wifiInterface];
    [v7 activate];
  }

  objc_initWeak(&location, self);
  v8 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E0C4D1C4;
  v23[3] = &unk_1E86E6F30;
  objc_copyWeak(&v24, &location);
  [v8 setEventHandler:v23];

  v9 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v22 = 0;
  v10 = [v9 startMonitoringEventType:10 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = [(CWFAssetPowerTableElector *)self wifiInterface];
    v21 = v11;
    v13 = [v12 startMonitoringEventType:42 error:&v21];
    v14 = v21;

    if (v13)
    {
      v15 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v11 = v14;
        goto LABEL_11;
      }

      *buf = 136446722;
      v27 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v28 = 1024;
      v29 = 406;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v16 = "%{public}s::%d:%s: setupInterfaceAddedAndDriverAvailMonitor complete";
      v17 = v15;
      v18 = 28;
    }

    else
    {
      v15 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 136446978;
      v27 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v28 = 1024;
      v29 = 403;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v32 = 2114;
      v33 = v14;
      v16 = "%{public}s::%d:%s: Failed to start monitoring for CWFEventTypeDriverAvailable event; error %{public}@";
      v17 = v15;
      v18 = 38;
    }

    _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_10;
  }

  v15 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v27 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
    v28 = 1024;
    v29 = 401;
    v30 = 2080;
    v31 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Failed to start monitoring for CWFEventTypeInterfaceAdded event; error %{public}@", buf, 0x26u);
  }

LABEL_11:

  v19 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setupInterfaceAddedAndDriverAvailMonitor", "", buf, 2u);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)waitForInterfaceAdded:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "waitForInterfaceAdded", "", &v23, 2u);
  }

  v6 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _interfaceAddedEventCondition", "", &v23, 2u);
  }

  v7 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
  [v7 lock];

  while (![(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred])
  {
    v8 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
    v9 = [v8 waitUntilDate:v4];

    if ((v9 & 1) == 0)
    {
      v10 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136446978;
        v24 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
        v25 = 1024;
        v26 = 426;
        v27 = 2080;
        v28 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
        v29 = 2112;
        *v30 = v4;
        _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Wait for _condInterfaceAddedAfterEvaluationStart timed out at date %@", &v23, 0x26u);
      }

      break;
    }
  }

  v11 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
  v12 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
    v14 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
    v23 = 136447234;
    v24 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v25 = 1024;
    v26 = 431;
    v27 = 2080;
    v28 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v29 = 2112;
    *v30 = v13;
    *&v30[8] = 1024;
    v31 = v14;
    _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: _interfaceAddedEventCondition %@ or _interfaceAddedEventOccurred %d Done", &v23, 0x2Cu);
  }

  v15 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
  [v15 unlock];

  v16 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _interfaceAddedEventCondition", "", &v23, 2u);
  }

  v17 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
    v19 = [(CWFAssetPowerTableElector *)self _driverAvailEventOccurred];
    v23 = 136447234;
    v24 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v25 = 1024;
    v26 = 447;
    v27 = 2080;
    v28 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v29 = 1024;
    *v30 = v18;
    *&v30[4] = 1024;
    *&v30[6] = v19;
    _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: waitForInterfaceAdded completed _interfaceAddedEventOccurred %d _driverAvailEventOccurred %d", &v23, 0x28u);
  }

  v20 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v20))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "waitForInterfaceAdded", "", &v23, 2u);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)performVersionFetchBlockify:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "performVersionFetch", "", buf, 2u);
  }

  v7 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[CWFAssetPowerTableElector performVersionFetchBlockify:]";
    *&buf[12] = 1024;
    *&buf[14] = 473;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector performVersionFetchBlockify:]";
    _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling performVersionFetch", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v8 = [(CWFAssetPowerTableElector *)self delegate];
  v9 = [v8 performVersionFetch:v5];

  buf[24] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C4E358;
  v13[3] = &unk_1E86E6F08;
  v13[4] = buf;
  sub_1E0BF1DA8(@"override-ver-fetch-success", @"com.apple.wifi.powertable", v13);
  v10 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performVersionFetch", "", v12, 2u);
  }

  (*(v4 + 2))(v4, *(*&buf[8] + 24), v5, 0);
  _Block_object_dispose(buf, 8);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)performPowerTableVersionRequestWithDeadline:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [(CWFAssetPowerTableElector *)self set_powerTableFetched:0];
  v6 = objc_alloc_init(MEMORY[0x1E696AB30]);
  [(CWFAssetPowerTableElector *)self set_condPowerTableFetched:v6];

  v7 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "performPowerTableVersionRequestWithDeadline", "", buf, 2u);
  }

  v8 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = objc_alloc_init(CWFInterface);
    [(CWFAssetPowerTableElector *)self setWifiInterface:v10];

    v11 = [(CWFAssetPowerTableElector *)self wifiInterface];
    [v11 activate];
  }

  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = sub_1E0BC2D14;
  v49 = sub_1E0BC61D4;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3042000000;
  v42 = sub_1E0C4EAB8;
  v43 = sub_1E0C4EAC4;
  v44 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1E0C4EACC;
  v35[3] = &unk_1E86E6F80;
  v35[4] = self;
  v12 = v5;
  v36 = v12;
  v13 = v4;
  v37 = v13;
  v38 = &v39;
  v14 = MEMORY[0x1E12EA400](v35);
  v15 = *(v46 + 5);
  *(v46 + 5) = v14;

  v16 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x1E695DF00] now];
    *v53 = 136447234;
    v54 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
    v55 = 1024;
    v56 = 548;
    v57 = 2080;
    v58 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
    v59 = 2112;
    v60 = v13;
    v61 = 2112;
    v62 = v17;
    _os_log_impl(&dword_1E0BBF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling retryingVersionFetchBlock dueDate %@ now %@", v53, 0x30u);
  }

  objc_storeWeak(v40 + 5, *(v46 + 5));
  v18 = [(CWFAssetPowerTableElector *)self _apiQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4F12C;
  block[3] = &unk_1E86E5600;
  block[4] = buf;
  dispatch_async(v18, block);

  v19 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v19))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _condPowerTableFetched", "", v53, 2u);
  }

  v20 = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
  [v20 lock];

  while (![(CWFAssetPowerTableElector *)self _powerTableFetched])
  {
    v21 = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
    v22 = [v21 waitUntilDate:v13];

    if ((v22 & 1) == 0 && ![(CWFAssetPowerTableElector *)self _powerTableFetched])
    {
      v23 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v53 = 136446722;
        v54 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
        v55 = 1024;
        v56 = 565;
        v57 = 2080;
        v58 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
        _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Timed Out waiting to retrieve valid performVersionFetch", v53, 0x1Cu);
      }

      v24 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A588];
      v52 = @"CWFPowerTableElectionTimedOutWaitingForPerformVersionFetch";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v26 = [v24 errorWithDomain:@"com.apple.wifi.powertable" code:5 userInfo:v25];
      [(CWFAssetPowerTableElector *)self setError:v26];

      break;
    }
  }

  v27 = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
  [v27 unlock];

  v28 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v28))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _condPowerTableFetched", "", v53, 2u);
  }

  v29 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v29))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performPowerTableVersionRequestWithDeadline", "", v53, 2u);
  }

  v30 = v37;
  v31 = v12;

  _Block_object_dispose(&v39, 8);
  objc_destroyWeak(&v44);
  _Block_object_dispose(buf, 8);

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)handleCENPowerTableEvaluationNotification:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E6993C10]];

  v7 = CWFGetOTAOSLog();
  v8 = os_signpost_id_make_with_pointer(v7, v4);

  v9 = CWFGetOTAOSLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [objc_opt_class() powerTableEvaluationStateAsString:{objc_msgSend(v6, "integerValue")}];
    *buf = 138412290;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "NSNotification", "%@", buf, 0xCu);
  }

  v12 = [(CWFAssetPowerTableElector *)self _coordinationQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0C4F914;
  v16[3] = &unk_1E86E6B18;
  v16[4] = self;
  v17 = v4;
  v18 = v6;
  v19 = v8;
  v13 = v6;
  v14 = v4;
  dispatch_async(v12, v16);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleCENPowerTableEvaluationNotification:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 643;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v58 = 2112;
    v59 = v4;
    _os_log_impl(&dword_1E0BBF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Election NSNotification %@", buf, 0x26u);
  }

  v52 = [v4 name];
  if (([v52 isEqualToString:*MEMORY[0x1E6993BF0]] & 1) == 0)
  {
    v7 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    v39 = v52;
    v40 = [v52 UTF8String];
    *buf = 136446978;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 661;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v58 = 2080;
    v59 = v40;
    v41 = "%{public}s::%d:%s: unexpected notification %s";
    v42 = v7;
    v43 = 38;
LABEL_55:
    _os_log_impl(&dword_1E0BBF000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    goto LABEL_50;
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E6993C08]];

  if (!v7)
  {
    v7 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 136446722;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 664;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v41 = "%{public}s::%d:%s: identifier missing";
    v42 = v7;
    v43 = 28;
    goto LABEL_55;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 665;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: identifier has wrong type", buf, 0x1Cu);
    }

    goto LABEL_58;
  }

  v8 = [v4 userInfo];
  v53 = [v8 objectForKey:*MEMORY[0x1E6993C10]];

  if (!v53)
  {
    v44 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 668;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: state missing", buf, 0x1Cu);
    }

LABEL_58:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 669;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: state has wrong type", buf, 0x1Cu);
    }

    goto LABEL_70;
  }

  v9 = [v53 integerValue];
  if ((v9 - 7) <= 0xFFFFFFFFFFFFFFF9)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 671;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v58 = 2048;
      v59 = v9;
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: invalid state %ld", buf, 0x26u);
    }

    goto LABEL_70;
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:*MEMORY[0x1E6993BE8]];

  if (!v11)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 674;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions missing", buf, 0x1Cu);
    }

LABEL_70:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 675;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  if ([v11 count] != 2)
  {
    v46 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [v11 count];
      *buf = 136446978;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 676;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v58 = 2048;
      v59 = v47;
      _os_log_impl(&dword_1E0BBF000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions has wrong count %lu", buf, 0x26u);
    }

    goto LABEL_85;
  }

  v12 = [v11 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v46 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions[CENPowerTableVoterWiFi] has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  v14 = [v11 objectAtIndexedSubscript:1];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    v46 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 678;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions[CENPowerTableVoterBT] has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  v16 = [v4 userInfo];
  v17 = [v16 objectForKey:*MEMORY[0x1E6993BF8]];

  if (!v17)
  {
    v46 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 681;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v46, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous asset versions missing", buf, 0x1Cu);
    }

LABEL_85:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 682;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v48, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous asset versions has wrong type", buf, 0x1Cu);
    }

    goto LABEL_88;
  }

  v18 = [v17 objectAtIndexedSubscript:0];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    v48 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 683;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v48, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous wifi asset version has wrong type", buf, 0x1Cu);
    }

LABEL_88:

    goto LABEL_50;
  }

  v20 = [v17 objectAtIndexedSubscript:1];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  v22 = CWFGetOTAOSLog();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [objc_opt_class() powerTableEvaluationStateAsString:v9];
      v25 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      *buf = 136447490;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 687;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v58 = 2112;
      v59 = v7;
      v60 = 2112;
      v61 = v24;
      v62 = 2112;
      v63 = v25;
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: identifier: %@ state: %@ previous state: %@", buf, 0x3Au);
    }

    v26 = CWFGetOTAOSLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v9 > 3)
    {
      if (v9 == 4)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 745;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRejected", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRejected:v7];
      }

      else if (v9 == 5)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 751;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateAccepted", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateAccepted:v7];
      }

      else
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 757;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateAborted", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateAborted:v7];
      }

      goto LABEL_47;
    }

    if (v9 == 1)
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 697;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRequestingReadiness", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = sub_1E0C50F08;
      v56[3] = &unk_1E86E6F08;
      v56[4] = buf;
      sub_1E0BF1DA8(@"ignore-readiness-request", @"com.apple.wifi.powertable", v56);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self _readinessTimeoutInterval];
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRequestingReadiness:v7 dueInterval:?];
        [(CWFAssetPowerTableElector *)self persistSession:v7 data:v11 forKey:@"new-asset-data"];
        v28 = +[CWFPowerTableElectionTelemetry sharedObj];
        v29 = [v11 objectAtIndexedSubscript:0];
        [v28 setCandidatePowerTableVersionWiFi:v29];

        v30 = +[CWFPowerTableElectionTelemetry sharedObj];
        v31 = [v11 objectAtIndexedSubscript:1];
        [v30 setCandidatePowerTableVersionBluetooth:v31];

        goto LABEL_43;
      }

      v49 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v70 = 136446722;
        v71 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v72 = 1024;
        v73 = 704;
        v74 = 2080;
        v75 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v49, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_readiness_input is set, bailing before processing input", v70, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }

    else if (v9 == 2)
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 717;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateStarting", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = sub_1E0C51004;
      v55[3] = &unk_1E86E6F08;
      v55[4] = buf;
      sub_1E0BF1DA8(@"ignore-start-request", @"com.apple.wifi.powertable", v55);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateStarting:v7];
LABEL_43:
        _Block_object_dispose(buf, 8);
LABEL_47:
        v32 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [objc_opt_class() powerTableEvaluationStateAsString:v9];
          v34 = [v11 objectAtIndexedSubscript:0];
          v35 = [v11 objectAtIndexedSubscript:1];
          v36 = [v17 objectAtIndexedSubscript:0];
          v37 = [v17 objectAtIndexedSubscript:1];
          *buf = 136448258;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 772;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          v58 = 2112;
          v59 = v7;
          v60 = 2112;
          v61 = v33;
          v62 = 2112;
          v63 = v34;
          v64 = 2112;
          v65 = v35;
          v66 = 2112;
          v67 = v36;
          v68 = 2112;
          v69 = v37;
          _os_log_impl(&dword_1E0BBF000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: identifier: %@ \nstate: %@ \nnewAssetVersions[CENPowerTableVoterWiFi] %@ newAssetVersions[CENPowerTableVoterBT] %@ \npreviousAssetVersions[CENPowerTableVoterWiFi] %@ previousAssetVersions[CENPowerTableVoterBT] %@", buf, 0x58u);
        }

        goto LABEL_50;
      }

      v50 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v70 = 136446722;
        v71 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v72 = 1024;
        v73 = 724;
        v74 = 2080;
        v75 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v50, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_start_input is set, bailing before processing input", v70, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 731;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRequestingVotes", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_1E0C51100;
      v54[3] = &unk_1E86E6F08;
      v54[4] = buf;
      sub_1E0BF1DA8(@"ignore-vote-request", @"com.apple.wifi.powertable", v54);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self _votingTimeoutInterval];
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRequestingVotes:v7 dueInterval:?];
        goto LABEL_43;
      }

      v51 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *v70 = 136446722;
        v71 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v72 = 1024;
        v73 = 738;
        v74 = 2080;
        v75 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v51, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_requesting_vote_input is set, bailing before processing input", v70, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 684;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous bt asset version has wrong type", buf, 0x1Cu);
    }
  }

LABEL_50:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)checkForExistingSessionAndRecover
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
  v4 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
  v5 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-state"];
  v6 = [(CWFAssetPowerTableElector *)self _powerTableSession];

  if (!v6 && v3)
  {
    v7 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136446978;
      v33 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v34 = 1024;
      v35 = 799;
      v36 = 2080;
      v37 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v38 = 2112;
      v39 = v3;
      _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableSession from persisted data %@", &v32, 0x26u);
    }

    [(CWFAssetPowerTableElector *)self set_powerTableSession:v3];
  }

  v8 = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];

  if (!v8 && v4)
  {
    v9 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136446978;
      v33 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v34 = 1024;
      v35 = 804;
      v36 = 2080;
      v37 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableSessionStartDate from persisted data %@", &v32, 0x26u);
    }

    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:v4];
  }

  if (v5)
  {
    v10 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    v11 = [v5 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136446978;
        v33 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
        v34 = 1024;
        v35 = 809;
        v36 = 2080;
        v37 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
        v38 = 2112;
        v39 = v5;
        _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableEvaluationState from persisted data %@", &v32, 0x26u);
      }

      -[CWFAssetPowerTableElector set_powerTableEvaluationState:](self, "set_powerTableEvaluationState:", [objc_opt_class() powerTableEvaluationStringToState:v5]);
    }
  }

  v13 = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v15 = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];
  [v15 timeIntervalSinceNow];
  v17 = v16;
  [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
  v19 = v18;

  if (v17 > v19)
  {
    v20 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A588];
    v45[0] = @"CWFPowerTableElectionExistingSessionPastMaxSessionInterval";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.wifi.powertable" code:4 userInfo:v21];
    [(CWFAssetPowerTableElector *)self setError:v22];

    v23 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
      v26 = v25;
      v27 = [(CWFAssetPowerTableElector *)self error];
      v32 = 136447490;
      v33 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v34 = 1024;
      v35 = 818;
      v36 = 2080;
      v37 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v38 = 2112;
      v39 = v24;
      v40 = 2048;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has expired past max interval of %f, recovering by removing stale session - error %@", &v32, 0x3Au);
    }

    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-start-date"];
    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-state"];
    [(CWFAssetPowerTableElector *)self set_powerTableSession:0];
    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:0];
    [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:0];
  }

  else
  {
LABEL_21:
    v28 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      v30 = [(CWFAssetPowerTableElector *)self description];
      v32 = 136447234;
      v33 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v34 = 1024;
      v35 = 829;
      v36 = 2080;
      v37 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v30;
      _os_log_impl(&dword_1E0BBF000, v28, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Session id %@ was recovered: desc %@", &v32, 0x30u);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSessionCurrentlyBlocking
{
  v41[1] = *MEMORY[0x1E69E9840];
  [(CWFAssetPowerTableElector *)self checkForExistingSessionAndRecover];
  v3 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];

  if (v3)
  {
    v4 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
    LOBYTE(v3) = v4 == 0;
    if (v4)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1E0C51B60;
      v25[3] = &unk_1E86E6FA8;
      v25[4] = self;
      sub_1E0BF1DA8(@"max-session-active-interval", @"com.apple.wifi.powertable", v25);
      [v4 timeIntervalSinceNow];
      v6 = v5;
      [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
      if (v6 <= v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39 = @"CWFPowerTableElectionRxReadinessWhileExistingSessionPastMaxSessionInterval";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v10 = [v8 errorWithDomain:@"com.apple.wifi.powertable" code:3 userInfo:v9];
      [(CWFAssetPowerTableElector *)self setError:v10];

      v11 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
        [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
        v14 = v13;
        v15 = [(CWFAssetPowerTableElector *)self error];
        *buf = 136447490;
        v27 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v28 = 1024;
        v29 = 863;
        v30 = 2080;
        v31 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v32 = 2112;
        v33 = v12;
        v34 = 2048;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has expired past max interval of %f, recovering by removing stale session - error %@", buf, 0x3Au);
      }

      [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
      v16 = @"powertable-election-session-start-date";
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A588];
      v41[0] = @"CWFPowerTableElectionRxReadinessWithCorruptActiveSession";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      v19 = [v17 errorWithDomain:@"com.apple.wifi.powertable" code:2 userInfo:v18];
      [(CWFAssetPowerTableElector *)self setError:v19];

      v20 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
        v22 = [(CWFAssetPowerTableElector *)self error];
        *buf = 136447234;
        v27 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v28 = 1024;
        v29 = 850;
        v30 = 2080;
        v31 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v32 = 2112;
        v33 = v21;
        v34 = 2112;
        v35 = v22;
        _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has missing start date, recovering by removing session id - error %@", buf, 0x30u);
      }

      v16 = @"powertable-election-session-id";
    }

    [(CWFAssetPowerTableElector *)self removePersistedKey:v16];
    goto LABEL_11;
  }

LABEL_12:
  v23 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)processTransitionToTerminalState:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CWFAssetPowerTableElector *)self description];
    v28 = 136446978;
    v29 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v30 = 1024;
    v31 = 879;
    v32 = 2080;
    v33 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Process transition to terminal state from %@", &v28, 0x26u);
  }

  v8 = [v5 dateByAddingTimeInterval:10.0];
  v9 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v8];

  [(CWFAssetPowerTableElector *)self persistSession:v4 data:v9 forKey:@"pt-ver-final"];
  v10 = [v9 valueForKey:@"PTV_TABLE_VERSION"];

  v11 = +[CWFPowerTableElectionTelemetry sharedObj];
  v12 = v11;
  if (v10)
  {
    v13 = [v9 valueForKey:@"PTV_TABLE_VERSION"];
    [v12 setFinalPowerTableVersion:v13];
  }

  else
  {
    [v11 setFinalPowerTableVersion:@"NotFound"];
  }

  v14 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persistSession:v4 data:v14 forKey:@"state"];

  v15 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persist:v15 forKey:@"powertable-election-session-state"];

  v16 = [MEMORY[0x1E695DF00] now];
  [(CWFAssetPowerTableElector *)self persistSession:v4 data:v16 forKey:@"session-end-date"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFAssetPowerTableElector _pid](self, "_pid")}];
  [(CWFAssetPowerTableElector *)self persistSession:v4 data:v17 forKey:@"pid-at-end"];

  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-start-date"];
  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-state"];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 5)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(CWFAssetPowerTableElector *)self description];
      v28 = 136446978;
      v29 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
      v30 = 1024;
      v31 = 904;
      v32 = 2080;
      v33 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
      v34 = 2112;
      v35 = v19;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling ABC due to terminal _powerTableEvaluationState != Accepted %@", &v28, 0x26u);
    }

    v20 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    v21 = +[CWFPowerTableElectionTelemetry sharedObj];
    v22 = [v21 getElectionSummaryStringForABC];

    v23 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
    [v23 submitWiFiDiagnosticReportType:@"PowerTableElection" reason:v20 subtypeContext:v22];
  }

  v24 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
  [v24 removeRequestedBlockOnWiFiABCSignature:@"mute-abc-driver-availability-until"];

  v25 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(CWFAssetPowerTableElector *)self description];
    v28 = 136446978;
    v29 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v30 = 1024;
    v31 = 914;
    v32 = 2080;
    v33 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v34 = 2112;
    v35 = v26;
    _os_log_impl(&dword_1E0BBF000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Process transition to terminal state complete %@", &v28, 0x26u);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleCENPowerTableEvaluationStateUninitialized
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446722;
    v5 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateUninitialized]";
    v6 = 1024;
    v7 = 919;
    v8 = 2080;
    v9 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateUninitialized]";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got state CENPowerTableEvaluationStateUninitialized, why would we get this??", &v4, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleCENPowerTableEvaluationStateRequestingReadiness:(id)a3 dueInterval:(double)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] now];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v8 = [(CWFAssetPowerTableElector *)self isSessionCurrentlyBlocking];
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136446978;
      v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v56 = 1024;
      v57 = 946;
      v58 = 2080;
      v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v60 = 2112;
      v61 = v10;
      _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Error Session Creation Blocked by _maxSessionActiveInterval, sending powerTableReadiness FALSE - self desc: %@", buf, 0x26u);
    }

    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      v13 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
      *buf = 136447490;
      v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v56 = 1024;
      v57 = 948;
      v58 = 2080;
      v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v60 = 2112;
      v61 = v6;
      v62 = 2112;
      v63 = *&v12;
      v64 = 2112;
      v65 = v13;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: Got unexpected Readiness Request with session %@ when existng session running %@ which was started at %@", buf, 0x3Au);
    }

    v14 = 0;
  }

  else
  {
    [(CWFAssetPowerTableElector *)self set_powerTableSession:v6];
    [(CWFAssetPowerTableElector *)self persist:v6 forKey:@"powertable-election-session-id"];
    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:v7];
    [(CWFAssetPowerTableElector *)self persist:v7 forKey:@"powertable-election-session-start-date"];
    v15 = [v7 dateByAddingTimeInterval:a4];
    [(CWFAssetPowerTableElector *)self persistSession:v6 data:v15 forKey:@"readiness-deadline-date"];

    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFAssetPowerTableElector _pid](self, "_pid")}];
    [(CWFAssetPowerTableElector *)self persistSession:v6 data:v16 forKey:@"pid-at-start"];

    v11 = CWFGetOTAOSLog();
    v14 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136447490;
      v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v56 = 1024;
      v57 = 942;
      v58 = 2080;
      v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v60 = 2112;
      v61 = v6;
      v62 = 2048;
      v63 = a4;
      v64 = 2112;
      v65 = v17;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Session Created - Session %@ interval %f - self desc: %@", buf, 0x3Au);

      v14 = 1;
    }
  }

  *(v51 + 24) = v14;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1E0C52C40;
  v49[3] = &unk_1E86E6F08;
  v49[4] = &v50;
  sub_1E0BF1DA8(@"override-readiness-response", @"com.apple.wifi.powertable", v49);
  if (*(v51 + 24) == 1)
  {
    v18 = [(CWFAssetPowerTableElector *)self getSession:v6 forKey:@"readiness-deadline-date"];
    v19 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v18];

    [(CWFAssetPowerTableElector *)self persistSession:v6 data:v19 forKey:@"pt-ver-initial"];
    v20 = [v19 valueForKey:@"PTV_TABLE_VERSION"];
    if (!v20 || ([v19 valueForKey:@"PTV_BINARY_FILENAME"], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v20, v22))
    {
      v23 = +[CWFPowerTableElectionTelemetry sharedObj];
      [v23 setCurrentPowerTableVersionAtReadiness:@"NotFound" fileName:@"NotFound"];
    }

    else
    {
      v23 = +[CWFPowerTableElectionTelemetry sharedObj];
      v24 = [v19 valueForKey:@"PTV_TABLE_VERSION"];
      v25 = [v19 valueForKey:@"PTV_BINARY_FILENAME"];
      [v23 setCurrentPowerTableVersionAtReadiness:v24 fileName:v25];
    }

    v26 = [v19 allKeys];
    v27 = [v26 count] == 0;

    if (v27)
    {
      v28 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
        v56 = 1024;
        v57 = 971;
        v58 = 2080;
        v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
        _os_log_impl(&dword_1E0BBF000, v28, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: ERROR failed to retrieve current PT Version, setting areWeReady = FALSE", buf, 0x1Cu);
      }

      *(v51 + 24) = 0;
    }
  }

  v29 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *(v51 + 24);
    *buf = 136446978;
    v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
    v56 = 1024;
    v57 = 976;
    v58 = 2080;
    v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
    v60 = 1024;
    LODWORD(v61) = v30;
    _os_log_impl(&dword_1E0BBF000, v29, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Sending powerTableReadiness areWeReady %d", buf, 0x22u);
  }

  if (*(v51 + 24) == 1)
  {
    v31 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_interfaceAddedEventCondition:v31];

    v32 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_driverAvailEventCondition:v32];

    [(CWFAssetPowerTableElector *)self set_interfaceAddedEventOccurred:0];
    [(CWFAssetPowerTableElector *)self set_driverAvailEventOccurred:0];
    v33 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
      *buf = 136446978;
      v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v56 = 1024;
      v57 = 986;
      v58 = 2080;
      v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v60 = 1024;
      LODWORD(v61) = v34;
      _os_log_impl(&dword_1E0BBF000, v33, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _interfaceAddedEventOccurred %d", buf, 0x22u);
    }

    v35 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [(CWFAssetPowerTableElector *)self _driverAvailEventOccurred];
      *buf = 136446978;
      v55 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v56 = 1024;
      v57 = 987;
      v58 = 2080;
      v59 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v60 = 1024;
      LODWORD(v61) = v36;
      _os_log_impl(&dword_1E0BBF000, v35, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _driverAvailEventOccurred %d", buf, 0x22u);
    }

    v37 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_readyToFetchLoadedPTCondition:v37];

    [(CWFAssetPowerTableElector *)self set_readyToFetchLoadedPT:0];
    v38 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
    v39 = [(CWFAssetPowerTableElector *)self getSession:v6 forKey:@"readiness-deadline-date"];
    [v38 requestWiFiToBlockABCSignatureUntil:v39 signature:@"mute-abc-driver-availability-until"];

    [(CWFAssetPowerTableElector *)self setupInterfaceAddedAndDriverAvailMonitor];
    v40 = [MEMORY[0x1E695DF00] now];
    [(CWFAssetPowerTableElector *)self _votingTimeoutInterval];
    v41 = [v40 dateByAddingTimeInterval:?];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1E0C52D3C;
    v48[3] = &unk_1E86E6FD0;
    v48[4] = self;
    [(CWFAssetPowerTableElector *)self dispatchWaitForInterfaceAddedThenBlockify:v41 completion:v48];
  }

  v42 = [(CWFAssetPowerTableElector *)self _apiQueue];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1E0C52F20;
  v47[3] = &unk_1E86E6A28;
  v47[4] = self;
  v47[5] = &v50;
  dispatch_async(v42, v47);

  if (!v8)
  {
    if (*(v51 + 24))
    {
      v43 = &unk_1F5BBC3D0;
    }

    else
    {
      v43 = &unk_1F5BBC3E8;
    }

    [(CWFAssetPowerTableElector *)self persistSession:v6 data:v43 forKey:@"readiness-reply"];
    [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:*(v51 + 24)];
    v44 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    [(CWFAssetPowerTableElector *)self persistSession:v6 data:v44 forKey:@"state"];

    v45 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    [(CWFAssetPowerTableElector *)self persist:v45 forKey:@"powertable-election-session-state"];
  }

  _Block_object_dispose(&v50, 8);

  v46 = *MEMORY[0x1E69E9840];
}

- (void)handleCENPowerTableEvaluationStateStarting:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 now];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A588];
    v34[0] = @"CWFPowerTableElectionUnexpectedStateStarting";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.wifi.powertable" code:6 userInfo:v8];
    [(CWFAssetPowerTableElector *)self setError:v9];

    v10 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v12 = [objc_opt_class() powerTableEvaluationStateAsString:1];
      v13 = [(CWFAssetPowerTableElector *)self description];
      v21 = 136447490;
      v22 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v23 = 1024;
      v24 = 1040;
      v25 = 2080;
      v26 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got notice of StateStarting when current state is %@ instead of %@ - desc %@", &v21, 0x3Au);
    }

    v14 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v16 = [objc_opt_class() powerTableEvaluationStateAsString:1];
      v21 = 136447234;
      v22 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v23 = 1024;
      v24 = 1042;
      v25 = 2080;
      v26 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1E0BBF000, v14, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: ERROR got notice of StateStarting when current state is %@ instead of %@ ", &v21, 0x30u);
    }
  }

  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationStartDate:v6];
  v17 = [(CWFAssetPowerTableElector *)self _powerTableEvaluationStartDate];
  [(CWFAssetPowerTableElector *)self persistSession:v5 data:v17 forKey:@"evaluation-start-date"];

  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:2];
  v18 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persistSession:v5 data:v18 forKey:@"state"];

  v19 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persist:v19 forKey:@"powertable-election-session-state"];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleCENPowerTableEvaluationStateRequestingVotes:(id)a3 dueInterval:(double)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] now];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v40[0] = @"CWFPowerTableElectionUnexpectedStateRequestingVotes";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.wifi.powertable" code:7 userInfo:v9];
    [(CWFAssetPowerTableElector *)self setError:v10];

    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v13 = [objc_opt_class() powerTableEvaluationStateAsString:2];
      v14 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136447490;
      v28 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v29 = 1024;
      v30 = 1063;
      v31 = 2080;
      v32 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got notice of RequestingVotes when current state is %@ instead of %@ - desc %@", buf, 0x3Au);
    }

    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v17 = [objc_opt_class() powerTableEvaluationStateAsString:2];
      *buf = 136447234;
      v28 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v29 = 1024;
      v30 = 1065;
      v31 = 2080;
      v32 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: ERROR got notice of RequestingVotes when current state is %@ instead of %@ ", buf, 0x30u);
    }
  }

  [(CWFAssetPowerTableElector *)self persistSession:v6 data:v7 forKey:@"vote-start-date"];
  v18 = [v7 dateByAddingTimeInterval:a4];
  [(CWFAssetPowerTableElector *)self persistSession:v6 data:v18 forKey:@"vote-deadline-date"];

  v19 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
  v20 = [(CWFAssetPowerTableElector *)self getSession:v6 forKey:@"vote-deadline-date"];
  [v19 requestWiFiToBlockABCSignatureUntil:v20 signature:@"mute-abc-driver-availability-until"];

  v21 = [(CWFAssetPowerTableElector *)self getSession:v6 forKey:@"vote-deadline-date"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0C536B4;
  v24[3] = &unk_1E86E6FF8;
  v25 = v6;
  v26 = self;
  v22 = v6;
  [(CWFAssetPowerTableElector *)self waitForPowerTableBootedThenVoteInBlock:v21 completion:v24];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)handleCENPowerTableEvaluationStateRejected:(id)a3
{
  v4 = a3;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:4];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:v4];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (void)handleCENPowerTableEvaluationStateAccepted:(id)a3
{
  v4 = a3;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:5];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:v4];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (void)handleCENPowerTableEvaluationStateAborted:(id)a3
{
  v4 = a3;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:6];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:v4];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFAssetPowerTableElector *)self _pid];
  v5 = [(CWFAssetPowerTableElector *)self _powerTableEvaluationState];
  v6 = [(CWFAssetPowerTableElector *)self _powerTableSession];
  v7 = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];
  [v3 appendFormat:@"Current Process info: pid %d, powerTableEvaluationState %ld, _powerTableSession %@, _powerTableSessionStartDate %@", v4, v5, v6, v7];

  v8 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
  v9 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
  [v3 appendFormat:@"Current Persistent Session Info: kPersistence_session_id_current %@, kPersistence_session_start_date_current %@", v8, v9];

  v10 = [(CWFAssetPowerTableElector *)self _powerTableSession];

  if (v10)
  {
    v11 = [(CWFAssetPowerTableElector *)self _powerTableSession];
    v12 = [(CWFAssetPowerTableElector *)self getSession:v11];
    [v3 appendFormat:@"Detailed Current Persistent Session Info: %@", v12];
  }

  else
  {
    v11 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-sessions-history"];
    [v3 appendFormat:@"Detailed All Persistent Session Info: %@", v11];
  }

  return v3;
}

+ (id)powerTableEvaluationStateAsString:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 >= 7)
  {
    v4 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446722;
      v7 = "+[CWFAssetPowerTableElector powerTableEvaluationStateAsString:]";
      v8 = 1024;
      v9 = 1158;
      v10 = 2080;
      v11 = "+[CWFAssetPowerTableElector powerTableEvaluationStateAsString:]";
      _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Missing case", &v6, 0x1Cu);
    }
  }

  else
  {
    result = off_1E86E7018[a3];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)powerTableEvaluationStringToState:(id)a3
{
  v3 = a3;
  v4 = 0;
  while (1)
  {
    v5 = [objc_opt_class() powerTableEvaluationStateAsString:v4];
    v6 = [v3 isEqualToString:v5];

    if (v6)
    {
      break;
    }

    if (++v4 == 7)
    {
      v4 = 0;
      break;
    }
  }

  return v4;
}

- (CWFAssetPowerTableElectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end