@interface FCAssetDownloadOperation
+ (id)sharedURLRequestScheduler;
+ (id)sharedURLSession;
- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)a3 offlineReason:(int64_t *)a4;
- (BOOL)validateOperation;
- (FCAssetDownloadOperation)init;
- (FCAssetDownloadOperation)initWithNetworkReachability:(id)a3 URLRequestScheduler:(id)a4;
- (id)throttleGroup;
- (void)operationWillFinishWithError:(id)a3;
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
  block[4] = a1;
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

- (FCAssetDownloadOperation)initWithNetworkReachability:(id)a3 URLRequestScheduler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14.receiver = self;
  v14.super_class = FCAssetDownloadOperation;
  v7 = [(FCNetworkOperation *)&v14 initWithNetworkReachability:a3];
  if (v7)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = [objc_opt_class() sharedURLRequestScheduler];
    }

    objc_storeStrong(&v7->_scheduler, v8);
    if (!v6)
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

  v4 = [(FCAssetDownloadOperation *)self scheduler];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v5 = v4 == 0;
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
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v4 UUIDString];
  [(FCAssetDownloadOperation *)self setRequestUUID:v3];
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
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(FCAssetDownloadOperation *)self requestUUID];
  [v6 setObject:v7 forKeyedSubscript:@"X-Apple-Request-UUID"];

  v8 = FCClientInfoHeaderValue();
  [v6 setObject:v8 forKeyedSubscript:@"X-MMe-Client-Info"];

  v9 = FCUserAgentHeaderValue();
  [v6 setObject:v9 forKeyedSubscript:@"User-Agent"];

  v10 = [(FCAssetDownloadOperation *)self additionalRequestHTTPHeaders];

  if (v10)
  {
    v11 = [(FCAssetDownloadOperation *)self additionalRequestHTTPHeaders];
    [v6 addEntriesFromDictionary:v11];
  }

  [v5 setAllHTTPHeaderFields:v6];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __44__FCAssetDownloadOperation_performOperation__block_invoke;
  v29 = &unk_1E7C46DD8;
  v30 = self;
  v12 = v5;
  v31 = v12;
  v13 = _Block_copy(&v26);
  v14 = [(FCAssetDownloadOperation *)self scheduler:v26];
  v15 = [(FCAssetDownloadOperation *)self downloadDestination];
  v16 = [(FCOperation *)self relativePriority];
  v17 = [(FCOperation *)self shortOperationDescription];
  v18 = [v14 scheduleURLRequest:v12 destination:v15 priority:v16 loggingKey:v17 completion:v13];

  [(FCOperation *)self associateChildOperation:v18];
  v19 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [(FCOperation *)self shortOperationDescription];
    v22 = [(FCAssetDownloadOperation *)self loggingKey];
    v23 = [(FCAssetDownloadOperation *)self requestUUID];
    v24 = [(FCAssetDownloadOperation *)self URL];
    *buf = 138544130;
    v33 = v21;
    v34 = 2114;
    v35 = v22;
    v36 = 2114;
    v37 = v23;
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

- (void)operationWillFinishWithError:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = FCOperationLog;
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = v10;
    v11 = [(FCOperation *)self shortOperationDescription];
    v12 = [(FCAssetDownloadOperation *)self loggingKey];
    v13 = MEMORY[0x1E696AAF0];
    v14 = [(FCAssetDownloadOperation *)self networkEvent];
    v15 = [v13 stringFromByteCount:objc_msgSend(v14 countStyle:{"responseSize"), 0}];
    v16 = [(FCAssetDownloadOperation *)self networkEvent];
    [v16 totalDuration];
    v18 = (fmax(v17, 0.0) * 1000.0);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v20 = v19;
    v21 = [(FCAssetDownloadOperation *)self networkEvent];
    [v21 startTime];
    v39 = 138544386;
    v40 = v11;
    v41 = 2114;
    v42 = v12;
    v43 = 2114;
    v44 = v15;
    v45 = 2048;
    v46 = v18;
    v47 = 2048;
    v48 = (fmax(v20 - v22, 0.0) * 1000.0);
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully downloaded asset %{public}@ with size: %{public}@, network time: %llums, total time: %llums", &v39, 0x34u);

    goto LABEL_9;
  }

  if ([v4 fc_isCancellationError])
  {
    v6 = FCOperationLog;
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = [(FCOperation *)self shortOperationDescription];
    v9 = [(FCAssetDownloadOperation *)self loggingKey];
    v39 = 138543618;
    v40 = v8;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled downloading asset %{public}@", &v39, 0x16u);
    goto LABEL_5;
  }

  v23 = [v5 userInfo];
  v24 = [v23 objectForKeyedSubscript:@"FCErrorHTTPStatusCode"];

  v25 = FCOperationLog;
  v26 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR);
  if (v24)
  {
    if (v26)
    {
      v7 = v25;
      v8 = [(FCOperation *)self shortOperationDescription];
      v27 = [(FCAssetDownloadOperation *)self loggingKey];
      v28 = [v5 userInfo];
      v29 = [v28 objectForKeyedSubscript:@"FCErrorHTTPStatusCode"];
      v39 = 138543874;
      v40 = v8;
      v41 = 2114;
      v42 = v27;
      v43 = 2114;
      v44 = v29;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to download asset %{public}@ with response status code: %{public}@", &v39, 0x20u);

      goto LABEL_6;
    }
  }

  else if (v26)
  {
    v7 = v25;
    v8 = [(FCOperation *)self shortOperationDescription];
    v9 = [(FCAssetDownloadOperation *)self loggingKey];
    v38 = [v5 localizedDescription];
    v39 = 138543874;
    v40 = v8;
    v41 = 2114;
    v42 = v9;
    v43 = 2114;
    v44 = v38;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to download asset %{public}@ with error: %{public}@", &v39, 0x20u);

LABEL_5:
LABEL_6:

LABEL_9:
  }

LABEL_14:
  v30 = [(FCAssetDownloadOperation *)self downloadDestination];
  if (v30 == 1)
  {
    v34 = [(FCAssetDownloadOperation *)self dataDownloadCompletionHandler];

    if (v34)
    {
      v32 = [(FCAssetDownloadOperation *)self dataDownloadCompletionHandler];
      v33 = [(FCAssetDownloadOperation *)self downloadedData];
      goto LABEL_20;
    }
  }

  else if (!v30)
  {
    v31 = [(FCAssetDownloadOperation *)self fileDownloadCompletionHandler];

    if (v31)
    {
      v32 = [(FCAssetDownloadOperation *)self fileDownloadCompletionHandler];
      v33 = [(FCAssetDownloadOperation *)self downloadedFileURL];
LABEL_20:
      v35 = v33;
      v36 = [(FCAssetDownloadOperation *)self networkEvent];
      (v32)[2](v32, v35, v36, v5);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)throttleGroup
{
  v3 = [(FCAssetDownloadOperation *)self URL];
  v4 = [v3 host];

  if ([(FCAssetDownloadOperation *)self networkEventType]== 16)
  {
    v5 = [v4 stringByAppendingString:@"-appconfig"];

    v4 = v5;
  }

  return v4;
}

- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)a3 offlineReason:(int64_t *)a4
{
  v5 = a3;
  v6 = [v5 isCloudKitReachable];
  if ((v6 & 1) == 0)
  {
    *a4 = [v5 offlineReason];
  }

  return v6;
}

@end