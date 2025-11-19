@interface NDAnalyticsUploadScheduler
- (NDAnalyticsUploadScheduler)init;
- (NDAnalyticsUploadScheduler)initWithURLSessionQueue:(id)a3;
- (NDAnalyticsUploadSchedulerDelegate)delegate;
- (NSURLSession)backgroundSession;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_scheduleBackgroundUploadInWindow:(id)a3;
- (void)_uploadWithCompletion:(id)a3;
- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)a3 completion:(id)a4;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)scheduleUploadInWindow:(id)a3 withForegroundUploadCompletion:(id)a4;
@end

@implementation NDAnalyticsUploadScheduler

- (NDAnalyticsUploadScheduler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsUploadScheduler init]";
    v10 = 2080;
    v11 = "NDAnalyticsUploadScheduler.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsUploadScheduler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsUploadScheduler)initWithURLSessionQueue:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler initWithURLSessionQueue:];
  }

  v18.receiver = self;
  v18.super_class = NDAnalyticsUploadScheduler;
  v5 = [(NDAnalyticsUploadScheduler *)&v18 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D311B0]) initWithDelegate:v5];
    schedulingAndForegroundUploadThrottler = v5->_schedulingAndForegroundUploadThrottler;
    v5->_schedulingAndForegroundUploadThrottler = v6;

    v8 = objc_opt_new();
    lock = v5->_lock;
    v5->_lock = v8;

    v10 = objc_opt_new();
    uploadQueue = v5->_uploadQueue;
    v5->_uploadQueue = v10;

    v12 = objc_opt_new();
    [(NSOperationQueue *)v12 setUnderlyingQueue:v4];
    backgroundSessionQueue = v5->_backgroundSessionQueue;
    v5->_backgroundSessionQueue = v12;
    v14 = v12;

    v15 = objc_opt_new();
    backgroundSessionLaunchEventCounter = v5->_backgroundSessionLaunchEventCounter;
    v5->_backgroundSessionLaunchEventCounter = v15;
  }

  return v5;
}

- (NSURLSession)backgroundSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(NDAnalyticsUploadScheduler *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NDAnalyticsUploadScheduler_backgroundSession__block_invoke;
  v6[3] = &unk_27997ACE0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__NDAnalyticsUploadScheduler_backgroundSession__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:@"com.apple.newsd.analytics.uploader"];
    [v3 set_allowsRetryForBackgroundDataTasks:1];
    [v3 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
    [v3 setDiscretionary:1];
    v4 = MEMORY[0x277CCAD30];
    v5 = *(a1 + 32);
    v6 = [v5 backgroundSessionQueue];
    v7 = [v4 sessionWithConfiguration:v3 delegate:v5 delegateQueue:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    v2 = *(*(a1 + 32) + 56);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v2);
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:];
  }

  if (([v6 isEqualToString:@"com.apple.newsd.analytics.uploader"] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:];
  }

  v8 = NDSharedServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[NDAnalyticsUploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:completion:]";
    _os_log_impl(&dword_25BDF7000, v8, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
  }

  v9 = [(NDAnalyticsUploadScheduler *)self backgroundSessionLaunchEventCounter];
  [v9 increment];
  v10 = FCDispatchQueueForQualityOfService();
  [v9 notifyWhenCountReachesZeroOnQueue:v10 usingBlock:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scheduleUploadInWindow:(id)a3 withForegroundUploadCompletion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler scheduleUploadInWindow:withForegroundUploadCompletion:];
  }

  v8 = NDSharedServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 earlierDate];
    v10 = [v6 laterDate];
    *buf = 136315650;
    v22 = "[NDAnalyticsUploadScheduler scheduleUploadInWindow:withForegroundUploadCompletion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_25BDF7000, v8, OS_LOG_TYPE_INFO, "%s with start date %@, end date %@", buf, 0x20u);
  }

  v11 = [(NDAnalyticsUploadScheduler *)self lock];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __84__NDAnalyticsUploadScheduler_scheduleUploadInWindow_withForegroundUploadCompletion___block_invoke;
  v18 = &unk_27997A678;
  v19 = self;
  v20 = v6;
  v12 = v6;
  [v11 performWithLockSync:&v15];

  v13 = [(NDAnalyticsUploadScheduler *)self schedulingAndForegroundUploadThrottler:v15];
  [v13 tickleWithCompletion:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v8 = [(NDAnalyticsUploadScheduler *)self lock];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v16[3] = &unk_27997A7D0;
  v16[4] = self;
  v16[5] = &v17;
  [v8 performWithLockSync:v16];

  v9 = [v18[5] laterDate];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v9 fc_isEarlierThanOrEqualTo:v10];

  v12 = NDSharedServiceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v18[5] laterDate];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_25BDF7000, v12, OS_LOG_TYPE_INFO, "Scheduling payload with delivery window end date of %@", buf, 0xCu);
  }

  if (v11)
  {
    v14 = NDSharedServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25BDF7000, v14, OS_LOG_TYPE_INFO, "Uploading now", buf, 2u);
    }

    [(NDAnalyticsUploadScheduler *)self _uploadWithCompletion:v7];
  }

  else
  {
    [(NDAnalyticsUploadScheduler *)self _scheduleBackgroundUploadInWindow:v18[5]];
    v7[2](v7);
  }

  _Block_object_dispose(&v17, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deliveryWindow];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke_cold_1();
  }
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v3 = [(NDAnalyticsUploadScheduler *)self backgroundSessionLaunchEventCounter];
  [v3 decrement];
}

- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a6;
  v10 = NDSharedServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 taskDescription];
    *buf = 136315394;
    v17 = "[NDAnalyticsUploadScheduler URLSession:task:willBeginDelayedRequest:completionHandler:]";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_25BDF7000, v10, OS_LOG_TYPE_INFO, "%s called for task with description %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__NDAnalyticsUploadScheduler_URLSession_task_willBeginDelayedRequest_completionHandler___block_invoke;
  v14[3] = &unk_27997AD08;
  v15 = v9;
  v12 = v9;
  [(NDAnalyticsUploadScheduler *)self _uploadWithCompletion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = NDSharedServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 taskDescription];
    v17 = 136315650;
    v18 = "[NDAnalyticsUploadScheduler URLSession:task:didCompleteWithError:]";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_25BDF7000, v9, OS_LOG_TYPE_INFO, "%s called for task with description %@, error %@", &v17, 0x20u);
  }

  v11 = [v8 domain];
  if ([v11 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v12 = [v8 code];

    if (v12 == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = [v8 domain];
  if ([v13 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v14 = [v8 code];

    if (v14 == -999)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = [(NDAnalyticsUploadScheduler *)self delegate];
  [v15 uploadSchedulerDidDropScheduledBackgroundUpload:self];

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleBackgroundUploadInWindow:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler _scheduleBackgroundUploadInWindow:];
  }

  v5 = [(NDAnalyticsUploadScheduler *)self backgroundSession];
  [v5 getAllTasksWithCompletionHandler:&__block_literal_global_6];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = MEMORY[0x277CCAD20];
  v9 = MEMORY[0x277CBEBC0];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://www.%@.com", v7];
  v11 = [v9 URLWithString:v10];
  v12 = [v8 requestWithURL:v11];

  v13 = [v5 downloadTaskWithRequest:v12];
  [v13 setTaskDescription:v7];
  v14 = [v4 earlierDate];
  [v13 setEarliestBeginDate:v14];

  v15 = [v4 laterDate];
  [v15 timeIntervalSinceNow];
  [v13 set_timeoutIntervalForResource:?];

  v16 = NDSharedServiceLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v4 earlierDate];
    v18 = [v4 laterDate];
    *buf = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_25BDF7000, v16, OS_LOG_TYPE_INFO, "Scheduling background task with start date %@, end date %@, taskDescription %@", buf, 0x20u);
  }

  [v13 resume];
  v19 = *MEMORY[0x277D85DE8];
}

void __64__NDAnalyticsUploadScheduler__scheduleBackgroundUploadInWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = NDSharedServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 taskDescription];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25BDF7000, v3, OS_LOG_TYPE_INFO, "Cancelling background task with taskDescription %@", &v6, 0xCu);
  }

  [v2 cancel];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_uploadWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsUploadScheduler _uploadWithCompletion:];
  }

  v5 = [(NDAnalyticsUploadScheduler *)self uploadQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke;
  v7[3] = &unk_27997AD98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enqueueBlock:v7];
}

void __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke_2;
  v11 = &unk_27997AD70;
  v12 = *(a1 + 40);
  v4 = v3;
  v13 = v4;
  v5 = _Block_copy(&v8);
  v6 = [*(a1 + 32) delegate];
  v7 = v6;
  if (v6)
  {
    [v6 uploadScheduler:*(a1 + 32) performUploadWithCompletion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __52__NDAnalyticsUploadScheduler__uploadWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (NDAnalyticsUploadSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithURLSessionQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URLSessionQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[identifier isEqualToString:NDAnalyticsUploadSchedulerBackgroundSessionIdentifier]", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleUploadInWindow:withForegroundUploadCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "deliveryWindow", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __85__NDAnalyticsUploadScheduler_operationThrottler_performAsyncOperationWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "deliveryWindow", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleBackgroundUploadInWindow:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "deliveryWindow", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_uploadWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end