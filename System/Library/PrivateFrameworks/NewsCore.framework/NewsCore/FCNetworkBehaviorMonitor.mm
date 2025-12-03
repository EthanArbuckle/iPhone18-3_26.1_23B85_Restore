@interface FCNetworkBehaviorMonitor
- (FCNetworkBehaviorMonitor)init;
- (FCNetworkBehaviorMonitor)initWithOptions:(int64_t)options cacheDirectory:(id)directory;
- (NSArray)networkEvents;
- (NSArray)sessions;
- (void)_visitEventGroupsFromDate:(void *)date toDate:(void *)toDate block:;
- (void)addObserver:(id)observer;
- (void)logNetworkEvent:(id)event;
- (void)operationThrottlerPerformOperation:(id)operation;
- (void)populateTelemetry:(id)telemetry withNetworkEventsFromDate:(id)date toDate:(id)toDate;
- (void)removeObserver:(id)observer;
- (void)wifiReachabilityDidChange:(id)change;
@end

@implementation FCNetworkBehaviorMonitor

- (FCNetworkBehaviorMonitor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNetworkBehaviorMonitor init]";
    v10 = 2080;
    v11 = "FCNetworkBehaviorMonitor.m";
    v12 = 1024;
    v13 = 106;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNetworkBehaviorMonitor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNetworkBehaviorMonitor)initWithOptions:(int64_t)options cacheDirectory:(id)directory
{
  directoryCopy = directory;
  v27.receiver = self;
  v27.super_class = FCNetworkBehaviorMonitor;
  v7 = [(FCNetworkBehaviorMonitor *)&v27 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("FCNetworkBehaviorMonitor.accessQueue", v8);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sessions = v7->_sessions;
    v7->_sessions = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
    sessionIDsThisLaunch = v7->_sessionIDsThisLaunch;
    v7->_sessionIDsThisLaunch = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v7->_events;
    v7->_events = v15;

    v17 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v17;

    v7->_options = options;
    v19 = +[FCNetworkReachability sharedNetworkReachability];
    [v19 addObserver:v7];

    if (directoryCopy && (v7->_options & 8) != 0)
    {
      v20 = [[FCTimedOperationThrottler alloc] initWithDelegate:v7];
      [(FCTimedOperationThrottler *)v20 setCooldownTime:2.0];
      saveThrottler = v7->_saveThrottler;
      v7->_saveThrottler = v20;
    }

    v22 = v7->_accessQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__FCNetworkBehaviorMonitor_initWithOptions_cacheDirectory___block_invoke;
    v24[3] = &unk_1E7C36C58;
    v25 = v7;
    v26 = directoryCopy;
    dispatch_async(v22, v24);
  }

  return v7;
}

void __59__FCNetworkBehaviorMonitor_initWithOptions_cacheDirectory___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69B6EB0]);
  [v2 setSessionID:0];
  v3 = +[FCNetworkReachability sharedNetworkReachability];
  [v2 setWifiReachable:{objc_msgSend(v3, "isNetworkReachableViaWiFi")}];

  v4 = +[FCNetworkReachability sharedNetworkReachability];
  [v2 setCellularRadioAccessTechnology:{objc_msgSend(v4, "cellularRadioAccessTechnology")}];

  [*(*(a1 + 32) + 16) addObject:v2];
  [*(*(a1 + 32) + 24) addIndex:{objc_msgSend(v2, "sessionID")}];
  if ((*(*(a1 + 32) + 64) & 8) != 0 && *(a1 + 40))
  {
    v5 = objc_alloc_init(FCKeyValueStoreClassRegistry);
    [(FCKeyValueStoreClassRegistry *)v5 registerClass:objc_opt_class()];
    v6 = [[FCKeyValueStore alloc] initWithName:@"network-behavior-monitor" directory:*(a1 + 40) version:8 options:0 classRegistry:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(*(a1 + 32) + 40) objectForKey:@"sessions"];
    v10 = [v9 networkSessions];
    v11 = [v10 count];

    if (v11)
    {
      v12 = *(*(a1 + 32) + 16);
      v13 = [v9 networkSessions];
      [v12 fc_insertObjects:v13 atIndex:0];

      v14 = [v9 networkSessions];
      v15 = [v14 lastObject];
      v16 = [v15 sessionID];
      v17 = [*(*(a1 + 32) + 16) lastObject];
      [v17 setSessionID:v16 + 1];

      [*(*(a1 + 32) + 24) removeIndex:0];
      v18 = *(a1 + 32);
      v19 = *(v18 + 24);
      v20 = [*(v18 + 16) lastObject];
      [v19 addIndex:{objc_msgSend(v20, "sessionID")}];
    }

    v21 = [v9 networkEvents];
    v22 = [v21 count];

    if (v22)
    {
      v23 = *(*(a1 + 32) + 32);
      v24 = [v9 networkEvents];
      [v23 fc_insertObjects:v24 atIndex:0];
    }

    if ([*(*(a1 + 32) + 16) count])
    {
      v25 = [MEMORY[0x1E696AD50] indexSet];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = *(*(a1 + 32) + 32);
      v27 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v38;
        do
        {
          v30 = 0;
          do
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [v25 addIndex:{objc_msgSend(*(*(&v37 + 1) + 8 * v30++), "sessionID")}];
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v28);
      }

      v31 = [*(*(a1 + 32) + 16) lastObject];
      [v25 addIndex:{objc_msgSend(v31, "sessionID")}];

      v32 = *(*(a1 + 32) + 16);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __59__FCNetworkBehaviorMonitor_initWithOptions_cacheDirectory___block_invoke_2;
      v35[3] = &unk_1E7C3AE90;
      v36 = v25;
      v33 = v25;
      [v32 fc_removeObjectsPassingTest:v35];
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)populateTelemetry:(id)telemetry withNetworkEventsFromDate:(id)date toDate:(id)toDate
{
  telemetryCopy = telemetry;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__FCNetworkBehaviorMonitor_populateTelemetry_withNetworkEventsFromDate_toDate___block_invoke;
  v10[3] = &unk_1E7C3AEB8;
  v11 = telemetryCopy;
  v9 = telemetryCopy;
  [(FCNetworkBehaviorMonitor *)self _visitEventGroupsFromDate:date toDate:toDate block:v10];
}

- (void)_visitEventGroupsFromDate:(void *)date toDate:(void *)toDate block:
{
  toDateCopy = toDate;
  if (self)
  {
    dateCopy = date;
    fc_millisecondTimeIntervalSince1970 = [a2 fc_millisecondTimeIntervalSince1970];
    fc_millisecondTimeIntervalSince19702 = [dateCopy fc_millisecondTimeIntervalSince1970];

    v11 = *(self + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__FCNetworkBehaviorMonitor__visitEventGroupsFromDate_toDate_block___block_invoke;
    v12[3] = &unk_1E7C3AF88;
    v12[4] = self;
    v14 = fc_millisecondTimeIntervalSince1970;
    v15 = fc_millisecondTimeIntervalSince19702;
    v13 = toDateCopy;
    dispatch_sync(v11, v12);
  }
}

- (NSArray)sessions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__FCNetworkBehaviorMonitor_sessions__block_invoke;
  v8[3] = &unk_1E7C3AEB8;
  v9 = dictionary;
  v4 = dictionary;
  [(FCNetworkBehaviorMonitor *)self _visitEventGroupsFromDate:0 toDate:v8 block:?];
  allValues = [v4 allValues];
  v6 = [allValues sortedArrayUsingComparator:&__block_literal_global_28];

  return v6;
}

void __36__FCNetworkBehaviorMonitor_sessions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "sessionID")}];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_alloc_init(FCNetworkSession);
    -[FCNetworkSession setWifiReachable:](v8, "setWifiReachable:", [v5 wifiReachable]);
    -[FCNetworkSession setCellularRadioAccessTechnology:](v8, "setCellularRadioAccessTechnology:", [v5 cellularRadioAccessTechnology]);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "sessionID")}];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  [(FCNetworkSession *)v8 addEventGroup:v11];
}

uint64_t __36__FCNetworkBehaviorMonitor_sessions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSArray)networkEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FCNetworkBehaviorMonitor_networkEvents__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__FCNetworkBehaviorMonitor_networkEvents__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__FCNetworkBehaviorMonitor_networkEvents__block_invoke_2;
  v7[3] = &unk_1E7C3AF00;
  v7[4] = v2;
  v4 = [v3 fc_arrayOfObjectsPassingTest:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __41__FCNetworkBehaviorMonitor_networkEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 sessionID];

  return [v2 containsIndex:v3];
}

- (void)logNetworkEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (!self)
  {
    goto LABEL_11;
  }

  [eventCopy startTime];
  if (v6 == 0.0)
  {
LABEL_5:

    goto LABEL_6;
  }

  error = [v5 error];
  if ([error fc_isCancellationError])
  {
LABEL_4:

    goto LABEL_5;
  }

  error2 = [v5 error];
  domain = [error2 domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A978]])
  {

LABEL_11:
    goto LABEL_12;
  }

  error3 = [v5 error];
  if ([error3 code] == -1005)
  {

    goto LABEL_4;
  }

  error4 = [v5 error];
  code = [error4 code];

  if (code == -1009)
  {
    goto LABEL_6;
  }

LABEL_12:
  error5 = [v5 error];
  if (error5)
  {
    v13 = error5;
    error6 = [v5 error];
    fc_isRecoverableNetworkError = [error6 fc_isRecoverableNetworkError];

    if (fc_isRecoverableNetworkError)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(FCNetworkBehaviorMonitor *)self setDateOfLastNetworkIssue:date];
    }
  }

  if ((self->_options & 1) == 0)
  {
    goto LABEL_28;
  }

  error7 = [v5 error];

  v18 = FCNetworkLog;
  if (error7)
  {
    if (os_log_type_enabled(FCNetworkLog, OS_LOG_TYPE_ERROR))
    {
      v25 = v18;
      v26 = [v5 description];
      *buf = 138543362;
      v31 = v26;
      _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "logged network event: %{public}@. This log is being duplicated as an default-level log.", buf, 0xCu);

      v18 = FCNetworkLog;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v19 = v18;
    v20 = [v5 description];
    *buf = 138543362;
    v31 = v20;
    v21 = "logged network event: %{public}@. This log is being duplicated as an error-level log.";
  }

  else
  {
    if (os_log_type_enabled(FCNetworkLog, OS_LOG_TYPE_DEBUG))
    {
      v19 = v18;
      v20 = [v5 debugDescription];
      *buf = 138543362;
      v31 = v20;
      _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "logged network event: %{public}@", buf, 0xCu);
      goto LABEL_27;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v19 = v18;
    v20 = [v5 description];
    *buf = 138543362;
    v31 = v20;
    v21 = "logged network event: %{public}@";
  }

  _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
LABEL_27:

LABEL_28:
  if ((self->_options & 6) != 0)
  {
    accessQueue = self->_accessQueue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__FCNetworkBehaviorMonitor_logNetworkEvent___block_invoke_2;
    v27[3] = &unk_1E7C36C58;
    v28 = v5;
    selfCopy = self;
    dispatch_async(accessQueue, v27);
  }

LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
}

void __44__FCNetworkBehaviorMonitor_logNetworkEvent___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) startTime];
  v3 = v2;
  [*(a1 + 32) dnsDuration];
  v5 = v4;
  [*(a1 + 32) connectDuration];
  v7 = v6;
  [*(a1 + 32) requestDuration];
  v9 = v8;
  [*(a1 + 32) responseDuration];
  v11 = v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v13;
  if (v12)
  {
    v15 = [v13 type] - 1;
    if (v15 > 0x10)
    {
      v18 = 0;
    }

    else
    {
      v16 = off_1E7C3B008[v15];
      v17 = [v14 HTTPResponseHeaders];
      v18 = [v17 objectForKeyedSubscript:v16];

      if (v18)
      {
        v19 = [v18 rangeOfString:@"-"];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = v19;
          if (qword_1EDB27020 != -1)
          {
            dispatch_once(&qword_1EDB27020, &__block_literal_global_45_0);
          }

          v21 = [v18 rangeOfCharacterFromSet:_MergedGlobals_141 options:4 range:{0, v20}];
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [v18 substringWithRange:{v21 + v22, v20 - (v21 + v22)}];
LABEL_11:

            goto LABEL_12;
          }
        }
      }
    }

    v12 = 0;
    goto LABEL_11;
  }

LABEL_12:

  v23 = objc_alloc_init(MEMORY[0x1E69B6EA8]);
  if (v3 != 0.0)
  {
    v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
    [v23 setStartTime:{objc_msgSend(v24, "fc_millisecondTimeIntervalSince1970")}];
  }

  if (v5 != 0.0)
  {
    [v23 setDnsDuration:{(fmax(v5, 0.0) * 1000.0)}];
  }

  if (v7 != 0.0)
  {
    [v23 setConnectDuration:{(fmax(v7, 0.0) * 1000.0)}];
  }

  if (v9 != 0.0)
  {
    [v23 setRequestDuration:{(fmax(v9, 0.0) * 1000.0)}];
  }

  if (v11 != 0.0)
  {
    [v23 setResponseDuration:{(fmax(v11, 0.0) * 1000.0)}];
  }

  if ([*(a1 + 32) responseSize])
  {
    [v23 setResponseSize:{objc_msgSend(*(a1 + 32), "responseSize")}];
  }

  if ([*(a1 + 32) HTTPStatusCode])
  {
    [v23 setHttpStatusCode:{objc_msgSend(*(a1 + 32), "HTTPStatusCode")}];
  }

  v25 = [*(a1 + 32) error];
  v26 = [v25 code];

  if (v26)
  {
    v27 = [*(a1 + 32) error];
    [v23 setErrorCode:{objc_msgSend(v27, "code")}];
  }

  if ([*(a1 + 32) type])
  {
    [v23 setType:{objc_msgSend(*(a1 + 32), "type")}];
  }

  v28 = [*(a1 + 32) URL];

  if (v28)
  {
    v29 = [*(a1 + 32) URL];
    v30 = [v29 absoluteString];
    [v23 setUrl:v30];
  }

  v31 = [*(a1 + 32) requestUUID];

  if (v31)
  {
    v32 = [*(a1 + 32) requestUUID];
    [v23 setRequestUUID:v32];
  }

  if (v12)
  {
    [v23 setRespondingPOP:v12];
  }

  if ([*(a1 + 32) isProxyConnection])
  {
    [v23 setIsProxyConnection:{objc_msgSend(*(a1 + 32), "isProxyConnection")}];
  }

  v33 = [*(a1 + 32) smarterFetchSources];
  v34 = [v33 count];

  if (v34)
  {
    v35 = [*(a1 + 32) smarterFetchSources];
    v36 = [v35 mutableCopy];
    [v23 setSmarterFetchSources:v36];
  }

  v37 = [*(a1 + 32) smarterFetchStrategy];

  if (v37)
  {
    v38 = [*(a1 + 32) smarterFetchStrategy];
    [v23 setSmarterFetchStrategy:v38];
  }

  v39 = [*(*(a1 + 40) + 16) lastObject];
  if ([v39 sessionID])
  {
    [v23 setSessionID:{objc_msgSend(v39, "sessionID")}];
  }

  v40 = *(a1 + 40);
  v41 = *(v40 + 64);
  if ((v41 & 2) == 0)
  {
    if ((v41 & 4) == 0)
    {
      goto LABEL_46;
    }

LABEL_57:
    [*(v40 + 32) addObject:{v23, v48}];
    v40 = *(a1 + 40);
    if ((*(v40 + 64) & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = *(v40 + 56);
  v44 = [v43 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v49;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [*(*(&v48 + 1) + 8 * i) networkEventMonitor:*(a1 + 40) loggedEvent:v23 inSession:{v39, v48}];
      }

      v45 = [v43 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v45);
  }

  v40 = *(a1 + 40);
  v41 = *(v40 + 64);
  if ((v41 & 4) != 0)
  {
    goto LABEL_57;
  }

LABEL_46:
  if ((v41 & 8) != 0)
  {
LABEL_47:
    [*(v40 + 48) tickle];
  }

LABEL_48:

  v42 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer
{
  v4 = MEMORY[0x1E696AF00];
  observerCopy = observer;
  [v4 isMainThread];
  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v4 = MEMORY[0x1E696AF00];
  observerCopy = observer;
  [v4 isMainThread];
  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

uint64_t __52__FCNetworkBehaviorMonitor__respondingPOPFromEvent___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@": "];
  v1 = _MergedGlobals_141;
  _MergedGlobals_141 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __67__FCNetworkBehaviorMonitor__visitEventGroupsFromDate_toDate_block___block_invoke(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v33 = [*(a1[4] + 16) fc_dictionaryWithKeyBlock:&__block_literal_global_52];
  obj = [MEMORY[0x1E695DF90] dictionary];
  v38 = [MEMORY[0x1E695DF90] dictionary];
  v41 = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v47;
    v6 = off_1E7C34000;
    v34 = *v47;
    v36 = v2;
    do
    {
      v7 = 0;
      do
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v46 + 1) + 8 * v7);
        if ((!a1[6] || [*(*(&v46 + 1) + 8 * v7) startTime] >= a1[6]) && (!a1[7] || objc_msgSend(v8, "startTime") < a1[7]))
        {
          v9 = objc_alloc_init(v6[303]);
          v10 = [v8 type];
          if (v9)
          {
            *(v9 + 2) = v10;
            *(v9 + 2) = [v8 sessionID];
            v11 = [v8 respondingPOP];
            objc_storeStrong(v9 + 3, v11);
          }

          else
          {
            [v8 sessionID];
            v11 = [v8 respondingPOP];
          }

          v12 = [obj objectForKeyedSubscript:v9];
          if (!v12)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "sessionID")}];
            v14 = [v33 objectForKeyedSubscript:v13];

            v15 = v6;
            v16 = objc_alloc_init(MEMORY[0x1E69B7010]);
            [v16 setEventType:{objc_msgSend(v8, "pbNetworkEventType")}];
            v17 = [v8 respondingPOP];
            [v16 setRespondingPop:v17];

            [v16 setWifiReachabilityStatus:{objc_msgSend(v14, "wifiReachable")}];
            [v16 setCellularRadioAccessTechnology:{objc_msgSend(v14, "cellularRadioAccessTechnology")}];
            [obj setObject:v16 forKeyedSubscript:v9];
            [v38 setObject:v14 forKeyedSubscript:v9];
            v18 = [MEMORY[0x1E695DF70] array];
            [v41 setObject:v18 forKeyedSubscript:v9];

            v2 = v36;
            v6 = v15;
            v5 = v34;
          }

          v19 = [v41 objectForKeyedSubscript:v9];
          [v19 addObject:v8];
        }

        ++v7;
      }

      while (v4 != v7);
      v20 = [v2 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v4 = v20;
    }

    while (v20);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obja = obj;
  v37 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v37)
  {
    v35 = *v43;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        v23 = [obja objectForKeyedSubscript:v22];
        v24 = [v38 objectForKeyedSubscript:v22];
        v25 = [v41 objectForKeyedSubscript:v22];
        v26 = [v25 fc_arrayOfObjectsPassingTest:&__block_literal_global_56_1];
        v27 = [v25 fc_arrayOfObjectsFailingTest:&__block_literal_global_56_1];
        v28 = [v26 fc_arrayByTransformingWithBlock:&__block_literal_global_59];
        v29 = [v28 mutableCopy];
        [v23 setSuccesses:v29];

        v30 = [v27 fc_arrayByTransformingWithBlock:&__block_literal_global_59];
        v31 = [v30 mutableCopy];
        [v23 setFailures:v31];

        (*(a1[5] + 16))();
      }

      v37 = [obja countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v37);
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __67__FCNetworkBehaviorMonitor__visitEventGroupsFromDate_toDate_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 sessionID];

  return [v2 numberWithUnsignedLongLong:v3];
}

id __67__FCNetworkBehaviorMonitor__visitEventGroupsFromDate_toDate_block___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E69B7008]);
  if ([v2 startTime])
  {
    [v3 setStartTime:{objc_msgSend(v2, "startTime")}];
  }

  if ([v2 dnsDuration])
  {
    [v3 setDnsDuration:{objc_msgSend(v2, "dnsDuration")}];
  }

  if ([v2 connectDuration])
  {
    [v3 setConnectDuration:{objc_msgSend(v2, "connectDuration")}];
  }

  if ([v2 requestDuration])
  {
    [v3 setRequestDuration:{objc_msgSend(v2, "requestDuration")}];
  }

  if ([v2 responseDuration])
  {
    [v3 setResponseDuration:{objc_msgSend(v2, "responseDuration")}];
  }

  if ([v2 responseSize])
  {
    [v3 setResponseSize:{objc_msgSend(v2, "responseSize")}];
  }

  if ([v2 cacheState])
  {
    [v3 setCacheState:{objc_msgSend(v2, "pbNetworkEventCacheState")}];
  }

  if ([v2 httpStatusCode])
  {
    [v3 setHttpStatusCode:{objc_msgSend(v2, "httpStatusCode")}];
  }

  if ([v2 errorCode])
  {
    [v3 setErrorCode:{objc_msgSend(v2, "errorCode")}];
  }

  return v3;
}

- (void)wifiReachabilityDidChange:(id)change
{
  v4 = MEMORY[0x1E69B6EB0];
  changeCopy = change;
  v6 = objc_alloc_init(v4);
  [v6 setWifiReachable:{objc_msgSend(changeCopy, "isNetworkReachableViaWiFi")}];
  cellularRadioAccessTechnology = [changeCopy cellularRadioAccessTechnology];

  [v6 setCellularRadioAccessTechnology:cellularRadioAccessTechnology];
  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__FCNetworkBehaviorMonitor_wifiReachabilityDidChange___block_invoke;
  v10[3] = &unk_1E7C36C58;
  v11 = v6;
  selfCopy = self;
  v9 = v6;
  dispatch_async(accessQueue, v10);
}

uint64_t __54__FCNetworkBehaviorMonitor_wifiReachabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) lastObject];
  [*(a1 + 32) setSessionID:{objc_msgSend(v2, "sessionID") + 1}];

  [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 24);
  v5 = [v3 sessionID];

  return [v4 addIndex:v5];
}

- (void)operationThrottlerPerformOperation:(id)operation
{
  v4 = objc_alloc_init(MEMORY[0x1E69B6EB8]);
  accessQueue = self->_accessQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __63__FCNetworkBehaviorMonitor_operationThrottlerPerformOperation___block_invoke;
  v10 = &unk_1E7C36C58;
  selfCopy = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, &v7);
  [(FCKeyValueStore *)self->_localStore setObject:v6 forKey:@"sessions", v7, v8, v9, v10, selfCopy];
}

void __63__FCNetworkBehaviorMonitor_operationThrottlerPerformOperation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) fc_trimFromFrontToMaxCount:2500];
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  [*(a1 + 40) setNetworkSessions:v2];

  v3 = [*(*(a1 + 32) + 32) mutableCopy];
  [*(a1 + 40) setNetworkEvents:v3];
}

@end