@interface ULBGSystemTaskManager
- (ULBGSystemTaskManager)init;
- (void)deregisterAndCancelTaskWithIdentifier:(id)a3;
- (void)registerAndSubmitTaskWithRequest:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5;
@end

@implementation ULBGSystemTaskManager

- (ULBGSystemTaskManager)init
{
  v7.receiver = self;
  v7.super_class = ULBGSystemTaskManager;
  v2 = [(ULBGSystemTaskManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF0810] sharedScheduler];
    [(ULBGSystemTaskManager *)v2 setScheduler:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.milod.ULBGSystemTaskManager", v4);
    [(ULBGSystemTaskManager *)v2 setInternalQueue:v5];
  }

  return v2;
}

- (void)registerAndSubmitTaskWithRequest:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(ULBGSystemTaskManager *)self scheduler];
  v12 = [v8 identifier];
  v13 = [(ULBGSystemTaskManager *)self internalQueue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke;
  v32[3] = &unk_2798D40D0;
  objc_copyWeak(&v35, &location);
  v14 = v9;
  v33 = v14;
  v15 = v10;
  v34 = v15;
  v16 = [v11 registerForTaskWithIdentifier:v12 usingQueue:v13 launchHandler:v32];

  if (v16)
  {
    v17 = [(ULBGSystemTaskManager *)self scheduler];
    v18 = [v8 identifier];
    v19 = [v17 taskRequestForIdentifier:v18];

    if (v19)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
      }

      v20 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v8 identifier];
        *buf = 138412290;
        v38 = v21;
        _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "[ULBGSystemTaskManager]: Trying to submit already existing task: %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = [(ULBGSystemTaskManager *)self scheduler];
      v24 = [v8 createRequestFromSelf];
      v31 = 0;
      v25 = [v23 submitTaskRequest:v24 error:&v31];
      v20 = v31;

      if (v25)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v8 identifier];
          *buf = 138412290;
          v38 = v27;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "[ULBGSystemTaskManager]: Registered and submitted task: %@", buf, 0xCu);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = [v8 identifier];
          v29 = [v20 localizedDescription];
          *buf = 138412546;
          v38 = v28;
          v39 = 2112;
          v40 = v29;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_ERROR, "[ULBGSystemTaskManager]: Could not submit task: %@ with error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = [v8 identifier];
      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "[ULBGSystemTaskManager]: Could not register task: %@", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  v30 = *MEMORY[0x277D85DE8];
}

void __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained internalQueue];
    dispatch_assert_queue_V2(v6);

    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke_2;
    v8[3] = &unk_2798D40A8;
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (onceToken_MicroLocation_Default != -1)
  {
    __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke_2_cold_1();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 identifier];
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "[ULBGSystemTaskManager]: task: %@ started at: %@", &v17, 0x16u);
  }

  v7 = [[ULBGSystemTask alloc] initWithUnderlyingTask:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setTaskCompleted];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 identifier];
    if ([(ULBGSystemTask *)v7 shouldCancel])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = MEMORY[0x277CCABB0];
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceDate:v2];
    v15 = [v13 numberWithDouble:?];
    v17 = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "[ULBGSystemTaskManager]: task: %@ ended, interrupted: %@, duration: %@(sec)", &v17, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deregisterAndCancelTaskWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULBGSystemTaskManager *)self scheduler];
  v19 = 0;
  v6 = [v5 cancelTaskRequestWithIdentifier:v4 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [(ULBGSystemTaskManager *)self scheduler];
    v9 = [v8 deregisterTaskWithIdentifier:v4];

    if (v9)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v4;
        v11 = "[ULBGSystemTaskManager]: Deregistered and cancelled task: %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
        _os_log_impl(&dword_258FE9000, v12, v13, v11, buf, 0xCu);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v4;
        v11 = "[ULBGSystemTaskManager]: Couldnt deregister task: %@";
        v12 = v17;
        v13 = OS_LOG_TYPE_ERROR;
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [v7 localizedDescription];
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "[ULBGSystemTaskManager]: Couldnt cancel task: %@ with error: %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end