@interface FCAssetDownloadOperation
+ (id)sharedURLRequestScheduler;
+ (id)sharedURLSession;
- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason;
- (BOOL)validateOperation;
- (FCAssetDownloadOperation)init;
- (FCAssetDownloadOperation)initWithNetworkReachability:(id)reachability URLRequestScheduler:(id)scheduler;
- (id)throttleGroup;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCAssetDownloadOperation

+ (id)sharedURLSession
{
  if (qword_1EDB26928 != -1)
  {
    dispatch_once(&qword_1EDB26928, &__block_literal_global_170);
  }

  v3 = qword_1EDB26920;

  return v3;
}

void __44__FCAssetDownloadOperation_sharedURLSession__block_invoke()
{
  if (FCProcessIsMemoryConstrained())
  {
    [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  }

  else
  {
    [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  }
  v7 = ;
  [v7 setAllowsCellularAccess:1];
  [v7 setRequestCachePolicy:1];
  [v7 setURLCache:0];
  [v7 setTimeoutIntervalForRequest:15.0];
  [v7 setTimeoutIntervalForResource:240.0];
  [v7 set_timingDataOptions:1];
  v0 = [MEMORY[0x1E695DEC8] fc_array:&__block_literal_global_4_13];
  [v7 setProtocolClasses:v0];

  [v7 setHTTPMaximumConnectionsPerHost:6];
  [v7 setHTTPShouldUsePipelining:1];
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];

  if (([v2 isEqualToString:@"com.apple.newsd"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.nanonews") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"com.apple.nanonews.widget"))
  {
    [v7 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
  }

  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v3 setName:@"FCAssetManager.downloadCallbackQueue"];
  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v3 setMaxConcurrentOperationCount:{objc_msgSend(v4, "processorCount")}];

  v5 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v7 delegate:0 delegateQueue:v3];
  v6 = qword_1EDB26920;
  qword_1EDB26920 = v5;
}

void __44__FCAssetDownloadOperation_sharedURLSession__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
}

+ (id)sharedURLRequestScheduler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FCAssetDownloadOperation_sharedURLRequestScheduler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EDB26938 != -1)
  {
    dispatch_once(&qword_1EDB26938, block);
  }

  v2 = qword_1EDB26930;

  return v2;
}

void __53__FCAssetDownloadOperation_sharedURLRequestScheduler__block_invoke(uint64_t a1)
{
  v2 = [FCURLRequestScheduler alloc];
  v5 = [*(a1 + 32) sharedURLSession];
  v3 = [(FCURLRequestScheduler *)v2 initWithURLSession:v5];
  v4 = qword_1EDB26930;
  qword_1EDB26930 = v3;
}

- (FCAssetDownloadOperation)init
{
  v3 = +[FCNetworkReachability sharedNetworkReachability];
  v4 = [(FCAssetDownloadOperation *)self initWithNetworkReachability:v3 URLRequestScheduler:0];

  return v4;
}

- (FCAssetDownloadOperation)initWithNetworkReachability:(id)reachability URLRequestScheduler:(id)scheduler
{
  v23 = *MEMORY[0x1E69E9840];
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = FCAssetDownloadOperation;
  v7 = [(FCNetworkOperation *)&v14 initWithNetworkReachability:reachability];
  if (v7)
  {
    sharedURLRequestScheduler = schedulerCopy;
    if (!schedulerCopy)
    {
      sharedURLRequestScheduler = [objc_opt_class() sharedURLRequestScheduler];
    }

    objc_storeStrong(&v7->_scheduler, sharedURLRequestScheduler);
    if (!schedulerCopy)
    {
    }

    v7->_cachePolicy = 1;
    v9 = time(0);
    v10 = atomic_load(&qword_1EDB26940);
    if (v9 > v10)
    {
      atomic_store(v9, &qword_1EDB26940);
      atomic_store(0, _MergedGlobals_9_0);
    }

    if (atomic_fetch_add(_MergedGlobals_9_0, 1u) >= 0x1F5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"More than %lu asset downloads were triggered within one second", 500];
        *buf = 136315906;
        v16 = "[FCAssetDownloadOperation initWithNetworkReachability:URLRequestScheduler:]";
        v17 = 2080;
        v18 = "FCAssetDownloadOperation.m";
        v19 = 1024;
        v20 = 150;
        v21 = 2114;
        v22 = v13;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: TooManyAssetDownloads) : %s %s:%d %{public}@", buf, 0x26u);
      }

      atomic_store(0, _MergedGlobals_9_0);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(FCAssetDownloadOperation *)self URL];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"asset download operation must have a non-nil URL"];
    v10 = 136315906;
    v11 = "[FCAssetDownloadOperation validateOperation]";
    v12 = 2080;
    v13 = "FCAssetDownloadOperation.m";
    v14 = 1024;
    v15 = 163;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  scheduler = [(FCAssetDownloadOperation *)self scheduler];

  if (!scheduler && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"asset download operation must have a non-nil scheduler"];
    v10 = 136315906;
    v11 = "[FCAssetDownloadOperation validateOperation]";
    v12 = 2080;
    v13 = "FCAssetDownloadOperation.m";
    v14 = 1024;
    v15 = 167;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (v3)
  {
    v5 = scheduler == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)prepareOperation
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(FCAssetDownloadOperation *)self setRequestUUID:uUIDString];
}

- (void)performOperation
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695AC18];
  v4 = [(FCAssetDownloadOperation *)self URL];
  v5 = [v3 requestWithURL:v4];

  FCOperationFlagsApplyToURLRequest([(FCOperation *)self flags], v5);
  [(FCNetworkOperation *)self preferredTimeoutIntervalForRequest];
  [v5 setTimeoutInterval:?];
  [v5 setCachePolicy:{-[FCAssetDownloadOperation cachePolicy](self, "cachePolicy")}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestUUID = [(FCAssetDownloadOperation *)self requestUUID];
  [dictionary setObject:requestUUID forKeyedSubscript:@"X-Apple-Request-UUID"];

  v8 = FCClientInfoHeaderValue();
  [dictionary setObject:v8 forKeyedSubscript:@"X-MMe-Client-Info"];

  v9 = FCUserAgentHeaderValue();
  [dictionary setObject:v9 forKeyedSubscript:@"User-Agent"];

  additionalRequestHTTPHeaders = [(FCAssetDownloadOperation *)self additionalRequestHTTPHeaders];

  if (additionalRequestHTTPHeaders)
  {
    additionalRequestHTTPHeaders2 = [(FCAssetDownloadOperation *)self additionalRequestHTTPHeaders];
    [dictionary addEntriesFromDictionary:additionalRequestHTTPHeaders2];
  }

  [v5 setAllHTTPHeaderFields:dictionary];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __44__FCAssetDownloadOperation_performOperation__block_invoke;
  v29 = &unk_1E7C46DD8;
  selfCopy = self;
  v12 = v5;
  v31 = v12;
  v13 = _Block_copy(&v26);
  v14 = [(FCAssetDownloadOperation *)self scheduler:v26];
  downloadDestination = [(FCAssetDownloadOperation *)self downloadDestination];
  relativePriority = [(FCOperation *)self relativePriority];
  shortOperationDescription = [(FCOperation *)self shortOperationDescription];
  v18 = [v14 scheduleURLRequest:v12 destination:downloadDestination priority:relativePriority loggingKey:shortOperationDescription completion:v13];

  [(FCOperation *)self associateChildOperation:v18];
  v19 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    loggingKey = [(FCAssetDownloadOperation *)self loggingKey];
    requestUUID2 = [(FCAssetDownloadOperation *)self requestUUID];
    v24 = [(FCAssetDownloadOperation *)self URL];
    *buf = 138544130;
    v33 = shortOperationDescription2;
    v34 = 2114;
    v35 = loggingKey;
    v36 = 2114;
    v37 = requestUUID2;
    v38 = 2114;
    v39 = v24;
    _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ will download asset %{public}@ with request UUID: %{public}@, URL: %{public}@", buf, 0x2Au);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __44__FCAssetDownloadOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v10 shortOperationDescription];
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ finished", buf, 0xCu);
  }

  objc_opt_class();
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v9;
    if (([v15 statusCode] < 200 || objc_msgSend(v15, "statusCode") >= 300) && objc_msgSend(v15, "statusCode") != 304)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [*(a1 + 32) requestUUID];
      v18 = [v16 fc_HTTPErrorWithURLResponse:v15 requestUUID:v17];

      v11 = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  v32 = v9;
  if (!v11)
  {
    v31 = [*(a1 + 32) downloadDestination];
    if (v31 == 1)
    {
      [*(a1 + 32) setDownloadedData:v33];
    }

    else if (!v31)
    {
      [*(a1 + 32) setDownloadedFileURL:v33];
    }
  }

  v19 = [FCNetworkEvent alloc];
  v20 = [*(a1 + 32) networkEventType];
  v21 = *(a1 + 40);
  v22 = [*(a1 + 32) operationID];
  v23 = [*(a1 + 32) requestUUID];
  [*(a1 + 32) operationStartTime];
  v25 = v24;
  v26 = [v10 _incompleteCurrentTaskTransactionMetrics];
  v27 = [(FCNetworkEvent *)v19 initWithType:v20 URLRequest:v21 operationID:v22 requestUUID:v23 startTime:v15 HTTPResponse:v26 metrics:v25 containerName:0 error:v11];
  [*(a1 + 32) setNetworkEvent:v27];

  v28 = [*(a1 + 32) networkBehaviorMonitor];
  v29 = [*(a1 + 32) networkEvent];
  [v28 logNetworkEvent:v29];

  [*(a1 + 32) finishedPerformingOperationWithError:v11];
  v30 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)error
{
  v49 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v10 = FCOperationLog;
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = v10;
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    loggingKey = [(FCAssetDownloadOperation *)self loggingKey];
    v13 = MEMORY[0x1E696AAF0];
    networkEvent = [(FCAssetDownloadOperation *)self networkEvent];
    v15 = [v13 stringFromByteCount:objc_msgSend(networkEvent countStyle:{"responseSize"), 0}];
    networkEvent2 = [(FCAssetDownloadOperation *)self networkEvent];
    [networkEvent2 totalDuration];
    v18 = (fmax(v17, 0.0) * 1000.0);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v20 = v19;
    networkEvent3 = [(FCAssetDownloadOperation *)self networkEvent];
    [networkEvent3 startTime];
    v39 = 138544386;
    v40 = shortOperationDescription;
    v41 = 2114;
    v42 = loggingKey;
    v43 = 2114;
    v44 = v15;
    v45 = 2048;
    v46 = v18;
    v47 = 2048;
    v48 = (fmax(v20 - v22, 0.0) * 1000.0);
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully downloaded asset %{public}@ with size: %{public}@, network time: %llums, total time: %llums", &v39, 0x34u);

    goto LABEL_9;
  }

  if ([errorCopy fc_isCancellationError])
  {
    v6 = FCOperationLog;
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = v6;
    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    loggingKey2 = [(FCAssetDownloadOperation *)self loggingKey];
    v39 = 138543618;
    v40 = shortOperationDescription2;
    v41 = 2114;
    v42 = loggingKey2;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled downloading asset %{public}@", &v39, 0x16u);
    goto LABEL_5;
  }

  userInfo = [v5 userInfo];
  v24 = [userInfo objectForKeyedSubscript:@"FCErrorHTTPStatusCode"];

  v25 = FCOperationLog;
  v26 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR);
  if (v24)
  {
    if (v26)
    {
      v7 = v25;
      shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
      loggingKey3 = [(FCAssetDownloadOperation *)self loggingKey];
      userInfo2 = [v5 userInfo];
      v29 = [userInfo2 objectForKeyedSubscript:@"FCErrorHTTPStatusCode"];
      v39 = 138543874;
      v40 = shortOperationDescription2;
      v41 = 2114;
      v42 = loggingKey3;
      v43 = 2114;
      v44 = v29;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to download asset %{public}@ with response status code: %{public}@", &v39, 0x20u);

      goto LABEL_6;
    }
  }

  else if (v26)
  {
    v7 = v25;
    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    loggingKey2 = [(FCAssetDownloadOperation *)self loggingKey];
    localizedDescription = [v5 localizedDescription];
    v39 = 138543874;
    v40 = shortOperationDescription2;
    v41 = 2114;
    v42 = loggingKey2;
    v43 = 2114;
    v44 = localizedDescription;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to download asset %{public}@ with error: %{public}@", &v39, 0x20u);

LABEL_5:
LABEL_6:

LABEL_9:
  }

LABEL_14:
  downloadDestination = [(FCAssetDownloadOperation *)self downloadDestination];
  if (downloadDestination == 1)
  {
    dataDownloadCompletionHandler = [(FCAssetDownloadOperation *)self dataDownloadCompletionHandler];

    if (dataDownloadCompletionHandler)
    {
      dataDownloadCompletionHandler2 = [(FCAssetDownloadOperation *)self dataDownloadCompletionHandler];
      downloadedData = [(FCAssetDownloadOperation *)self downloadedData];
      goto LABEL_20;
    }
  }

  else if (!downloadDestination)
  {
    fileDownloadCompletionHandler = [(FCAssetDownloadOperation *)self fileDownloadCompletionHandler];

    if (fileDownloadCompletionHandler)
    {
      dataDownloadCompletionHandler2 = [(FCAssetDownloadOperation *)self fileDownloadCompletionHandler];
      downloadedData = [(FCAssetDownloadOperation *)self downloadedFileURL];
LABEL_20:
      v35 = downloadedData;
      networkEvent4 = [(FCAssetDownloadOperation *)self networkEvent];
      (dataDownloadCompletionHandler2)[2](dataDownloadCompletionHandler2, v35, networkEvent4, v5);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)throttleGroup
{
  v3 = [(FCAssetDownloadOperation *)self URL];
  host = [v3 host];

  if ([(FCAssetDownloadOperation *)self networkEventType]== 16)
  {
    v5 = [host stringByAppendingString:@"-appconfig"];

    host = v5;
  }

  return host;
}

- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason
{
  reachabilityCopy = reachability;
  isCloudKitReachable = [reachabilityCopy isCloudKitReachable];
  if ((isCloudKitReachable & 1) == 0)
  {
    *reason = [reachabilityCopy offlineReason];
  }

  return isCloudKitReachable;
}

@end