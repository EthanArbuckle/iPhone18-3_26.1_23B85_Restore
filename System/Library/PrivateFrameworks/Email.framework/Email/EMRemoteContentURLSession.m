@interface EMRemoteContentURLSession
+ (NSDictionary)genericHTTPHeaderFields;
- (EMRemoteContentURLSession)initWithCache:(id)a3 sourceBundleIdentifier:(id)a4;
- (id)_configurationWithCache:(void *)a3 sourceBundleIdentifier:;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)_createURLSession;
- (void)abortTask:(id)a3;
- (void)invalidateAndCancel:(BOOL)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation EMRemoteContentURLSession

void ___ef_log_EMRemoteContentURLSession_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMRemoteContentURLSession");
  v1 = _ef_log_EMRemoteContentURLSession_log;
  _ef_log_EMRemoteContentURLSession_log = v0;
}

+ (NSDictionary)genericHTTPHeaderFields
{
  if (genericHTTPHeaderFields_onceToken != -1)
  {
    +[EMRemoteContentURLSession genericHTTPHeaderFields];
  }

  v3 = genericHTTPHeaderFields_sHeaderFields;

  return v3;
}

void __52__EMRemoteContentURLSession_genericHTTPHeaderFields__block_invoke()
{
  v0 = genericHTTPHeaderFields_sHeaderFields;
  genericHTTPHeaderFields_sHeaderFields = &unk_1F461CF10;
}

- (EMRemoteContentURLSession)initWithCache:(id)a3 sourceBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = EMRemoteContentURLSession;
  v9 = [(EMRemoteContentURLSession *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, a3);
    objc_storeStrong(&v10->_sourceBundleIdentifier, a4);
    v11 = objc_alloc(MEMORY[0x1E699B7F0]);
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = [v11 initWithObject:v12];
    activeTasks = v10->_activeTasks;
    v10->_activeTasks = v13;

    v15 = objc_alloc(MEMORY[0x1E699B7F0]);
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v17 = [v15 initWithObject:v16];
    observers = v10->_observers;
    v10->_observers = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    delegateQueue = v10->_delegateQueue;
    v10->_delegateQueue = v19;

    [(NSOperationQueue *)v10->_delegateQueue setMaxConcurrentOperationCount:1];
    v10->_sessionLock._os_unfair_lock_opaque = 0;
    [(EMRemoteContentURLSession *)v10 _createURLSession];
  }

  return v10;
}

- (id)_configurationWithCache:(void *)a3 sourceBundleIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    a1 = v7;
    if (v5)
    {
      [v7 setRequestCachePolicy:2];
      [a1 setURLCache:v5];
    }

    [a1 set_sourceApplicationBundleIdentifier:v6];
    [a1 setHTTPShouldSetCookies:0];
    [a1 setHTTPCookieAcceptPolicy:1];
    [a1 setHTTPCookieStorage:0];
  }

  return a1;
}

__CFString *__113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return @"Not proxying";
  }

  if (*(a1 + 33))
  {
    return @"Proxying (fail-open)";
  }

  return @"Proxying";
}

void __113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke_140(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 dataTask];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

- (void)abortTask:(id)a3
{
  v4 = a3;
  activeTasks = self->_activeTasks;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__EMRemoteContentURLSession_abortTask___block_invoke;
  v7[3] = &unk_1E826CA58;
  v6 = v4;
  v8 = v6;
  [(EFLocked *)activeTasks performWhileLocked:v7];
  [v6 cancel];
}

- (void)_createURLSession
{
  v3 = [(EMRemoteContentURLSession *)self cache];
  v4 = [(EMRemoteContentURLSession *)self sourceBundleIdentifier];
  v9 = [(EMRemoteContentURLSession *)self _configurationWithCache:v3 sourceBundleIdentifier:v4];

  v5 = MEMORY[0x1E695AC78];
  v6 = [(EMRemoteContentURLSession *)self delegateQueue];
  v7 = [v5 sessionWithConfiguration:v9 delegate:self delegateQueue:v6];
  session = self->_session;
  self->_session = v7;
}

- (void)invalidateAndCancel:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_sessionLock);
  v5 = self->_session;
  os_unfair_lock_unlock(&self->_sessionLock);
  if (v3)
  {
    [(NSURLSession *)v5 invalidateAndCancel];
  }

  else
  {
    [(NSURLSession *)v5 finishTasksAndInvalidate];
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  os_unfair_lock_lock(&self->_sessionLock);
  session = self->_session;

  if (session != v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EMRemoteContentURLSession.m" lineNumber:267 description:{@"NSURLSession was invalidated, but was not our NSURLSession!"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = self->_session;
    self->_session = 0;

    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = _ef_log_EMRemoteContentURLSession();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v7 ef_publicDescription];
    [(EMRemoteContentURLSession *)self URLSession:v11 didBecomeInvalidWithError:v15, v10];
  }

  [(EMRemoteContentURLSession *)self _createURLSession];
LABEL_8:
  os_unfair_lock_unlock(&self->_sessionLock);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  activeTasks = self->_activeTasks;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __64__EMRemoteContentURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  v14 = &unk_1E826DD58;
  v16 = &v17;
  v10 = v7;
  v15 = v10;
  [(EFLocked *)activeTasks performWhileLocked:&v11];
  [v18[5] receiveData:{v8, v11, v12, v13, v14}];

  _Block_object_dispose(&v17, 8);
}

void __64__EMRemoteContentURLSession_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v7 = a4;
  v8 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__12;
  v31 = __Block_byref_object_dispose__12;
  v32 = 0;
  activeTasks = self->_activeTasks;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  v24[3] = &unk_1E826DD58;
  v26 = &v27;
  v10 = v7;
  v25 = v10;
  [(EFLocked *)activeTasks performWhileLocked:v24];
  if (v28[5])
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v11 calendarIdentifier];
    v13 = [v12 isEqualToString:*MEMORY[0x1E695D850]];

    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [v11 components:8760 fromDate:v14];

    v16 = [v8 transactionMetrics];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2;
    v18[3] = &unk_1E826F750;
    v22 = &v27;
    v23 = v13;
    v17 = v15;
    v19 = v17;
    v20 = v10;
    v21 = self;
    [v16 enumerateObjectsUsingBlock:v18];
  }

  _Block_object_dispose(&v27, 8);
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 40) + 8) + 40) setDidCollectMetrics:1];
  if ([*(*(*(a1 + 40) + 8) + 40) didComplete])
  {
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  v65[13] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v3 = [v47 _privacyStance];
  v64[0] = @"isSynthetic";
  v65[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "isSynthetic")}];
  v64[1] = @"metrics_resourceFetchType";
  v45 = v65[0];
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v47, "resourceFetchType")}];
  v65[1] = v42;
  v64[2] = @"metrics_privacyStance";
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v65[2] = v43;
  v64[3] = @"metrics_isCellular";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v47, "isCellular")}];
  v65[3] = v41;
  v64[4] = @"metrics_isExpensive";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v47, "isExpensive")}];
  v65[4] = v40;
  v64[5] = @"metrics_isConstrained";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v47, "isConstrained")}];
  v65[5] = v39;
  v64[6] = @"metrics_countOfResponseBodyBytesAfterDecoding";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v47, "countOfResponseBodyBytesAfterDecoding")}];
  v65[6] = v4;
  v64[7] = @"time_isGregorian";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v65[7] = v5;
  v64[8] = @"time_hour";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "hour")}];
  v65[8] = v6;
  v64[9] = @"time_month";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "month")}];
  v65[9] = v7;
  v64[10] = @"time_day";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "day")}];
  v65[10] = v8;
  v64[11] = @"time_weekOfYear";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "weekOfYear")}];
  v65[11] = v9;
  v64[12] = @"time_dayOfWeek";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "weekday")}];
  v65[12] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:13];

  v52 = MEMORY[0x1E69E9820];
  v53 = 3221225472;
  v54 = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_3;
  v55 = &unk_1E826CA30;
  v44 = v11;
  v56 = v44;
  AnalyticsSendEventLazy();
  v12 = [*(a1 + 40) originalRequest];
  v13 = [v12 URL];
  if ([EMInternalPreferences preferenceEnabled:10])
  {
    v46 = [v13 absoluteString];
  }

  else
  {
    v14 = MEMORY[0x1E699B858];
    v15 = [v13 absoluteString];
    v46 = [v14 fullyRedactedStringForString:v15];
  }

  v16 = _ef_log_EMRemoteContentURLSession();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 48);
    *buf = 134218498;
    v59 = v37;
    v60 = 2114;
    v61 = v46;
    v62 = 2114;
    v63 = v44;
    _os_log_debug_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEBUG, "[%p][Analytics] URL: %{public}@\n%{public}@", buf, 0x20u);
  }

  if (v3 == 1)
  {
    v25 = [*(a1 + 40) originalRequest];
    if (![v25 _isKnownTracker])
    {
LABEL_35:

      goto LABEL_36;
    }

    v26 = [*(*(*(a1 + 56) + 8) + 40) failOpen];

    if ((v26 & 1) == 0)
    {
      v20 = _ef_log_EMRemoteContentURLSession();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 48);
        *buf = 134218242;
        v59 = v27;
        v60 = 2114;
        v61 = v46;
        _os_log_impl(&dword_1C6655000, v20, OS_LOG_TYPE_DEFAULT, "[%p][Proxy] Used VPN for URL: %{public}@", buf, 0x16u);
      }

      v24 = 2;
      goto LABEL_27;
    }
  }

  else if (v3 == 3)
  {
    v17 = [*(a1 + 40) error];
    v18 = [v17 ef_underlyingError];
    v19 = [v18 userInfo];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695AD00]];

    v21 = nw_path_copy_parameters();
    if (v21)
    {
      v22 = nw_parameters_copy_effective_proxy_config();
      if (v22)
      {
        if (nw_proxy_config_is_privacy_proxy())
        {

          v23 = _ef_log_EMRemoteContentURLSession();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2_cold_1(a1, v46, v23);
          }

          v24 = 0;
LABEL_26:

LABEL_27:
          [*(*(a1 + 48) + 24) getObject];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v25 = v49 = 0u;
          v29 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v29)
          {
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = *(*(&v48 + 1) + 8 * i);
                v33 = *(a1 + 48);
                v34 = [v47 request];
                v35 = [v34 URL];
                [v32 remoteContentURLSession:v33 failedToProxyURL:v35 failureReason:v24];
              }

              v29 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v29);
          }

          goto LABEL_35;
        }

        v28 = @"effective proxy config is not privacy proxy";
      }

      else
      {
        v28 = @"no effective proxy config";
      }
    }

    else
    {
      v28 = @"no path parameters";
    }

    v23 = _ef_log_EMRemoteContentURLSession();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 48);
      *buf = 134218498;
      v59 = v38;
      v60 = 2114;
      v61 = v28;
      v62 = 2114;
      v63 = v46;
      _os_log_error_impl(&dword_1C6655000, v23, OS_LOG_TYPE_ERROR, "[%p][Proxy] Unavailable for URL (%{public}@): %{public}@", buf, 0x20u);
    }

    v24 = 1;
    goto LABEL_26;
  }

LABEL_36:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__12;
  v45 = __Block_byref_object_dispose__12;
  v46 = 0;
  activeTasks = self->_activeTasks;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke;
  v38[3] = &unk_1E826DD58;
  v40 = &v41;
  v10 = v7;
  v39 = v10;
  [(EFLocked *)activeTasks performWhileLocked:v38];
  if (!v42[5])
  {
    goto LABEL_25;
  }

  v11 = [v10 originalRequest];
  v12 = [v11 URL];
  if ([EMInternalPreferences preferenceEnabled:10])
  {
    v13 = [v12 absoluteString];
  }

  else
  {
    v14 = MEMORY[0x1E699B858];
    v15 = [v12 absoluteString];
    v13 = [v14 fullyRedactedStringForString:v15];
  }

  v16 = [v10 response];
  if (v8)
  {
    v17 = _ef_log_EMRemoteContentURLSession();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v8 ef_publicDescription];
      *buf = 134218498;
      v48 = self;
      v49 = 2114;
      v50 = v13;
      v51 = 2114;
      v52 = v18;
      _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_INFO, "[%p][Error] URL: %{public}@\nError: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v19 = objc_opt_respondsToSelector();
    v20 = _ef_log_EMRemoteContentURLSession();
    v17 = v20;
    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v48 = self;
        v49 = 2114;
        v50 = v13;
        _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_INFO, "[%p][Response] URL: %{public}@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v17 = v20;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = [v16 statusCode];
      v22 = [v16 _allHTTPHeaderFieldsAsArrays];
      *buf = 134218754;
      v48 = self;
      v49 = 2114;
      v50 = v13;
      v51 = 2048;
      v52 = v21;
      v53 = 2114;
      v54 = v22;
      _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_INFO, "[%p][Response] URL: %{public}@\nStatus Code: %ld\nHeaders: %{public}@", buf, 0x2Au);
    }
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v10;
    if (v8 || !v16)
    {
      v26 = [v8 domain];
      if ([v26 isEqualToString:*MEMORY[0x1E696A978]])
      {
        v27 = [v8 code] == -999;

        if (v27)
        {
          v28 = [(EMRemoteContentURLSession *)self cache];
          v30 = MEMORY[0x1E69E9820];
          v31 = 3221225472;
          v32 = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_208;
          v33 = &unk_1E826F778;
          v34 = self;
          v35 = v13;
          [v28 storeCancelationIfNeededForDataTask:v23 completionHandler:&v30];
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = [(EMRemoteContentURLSession *)self cache];
      v25 = [v42[5] data];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_206;
      v36[3] = &unk_1E826F778;
      v36[4] = self;
      v37 = v13;
      [v24 storeResponseIfNeeded:v16 withData:v25 forDataTask:v23 completionHandler:v36];
    }
  }

  [v42[5] finishWithError:{v8, v30, v31, v32, v33, v34}];

LABEL_25:
  _Block_object_dispose(&v41, 8);

  v29 = *MEMORY[0x1E69E9840];
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 40) + 8) + 40) setDidComplete:1];
  if ([*(*(*(a1 + 40) + 8) + 40) didCollectMetrics])
  {
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_206(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _ef_log_EMRemoteContentURLSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 134218242;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_INFO, "[%p][Cache] Forced caching of response for URL: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_208(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _ef_log_EMRemoteContentURLSession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 134218242;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_INFO, "[%p][Cache] Forced caching of cancelation for URL: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EMRemoteContentURLSession_registerObserver___block_invoke;
  v7[3] = &unk_1E826CE90;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EMRemoteContentURLSession_unregisterObserver___block_invoke;
  v7[3] = &unk_1E826CE90;
  v8 = v4;
  v6 = v4;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)URLSession:(uint8_t *)buf didBecomeInvalidWithError:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "[%p][Session] Session was invalidated with error: %{public}@", buf, 0x16u);
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "[%p][Proxy] Failed for URL: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end