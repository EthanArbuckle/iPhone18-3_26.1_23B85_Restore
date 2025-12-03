@interface ULBGSystemTaskManager
- (ULBGSystemTaskManager)init;
- (void)deregisterAndCancelTaskWithIdentifier:(id)identifier;
- (void)registerAndSubmitTaskWithRequest:(id)request usingQueue:(id)queue launchHandler:(id)handler;
@end

@implementation ULBGSystemTaskManager

- (ULBGSystemTaskManager)init
{
  v7.receiver = self;
  v7.super_class = ULBGSystemTaskManager;
  v2 = [(ULBGSystemTaskManager *)&v7 init];
  if (v2)
  {
    mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
    [(ULBGSystemTaskManager *)v2 setScheduler:mEMORY[0x277CF0810]];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.milod.ULBGSystemTaskManager", v4);
    [(ULBGSystemTaskManager *)v2 setInternalQueue:v5];
  }

  return v2;
}

- (void)registerAndSubmitTaskWithRequest:(id)request usingQueue:(id)queue launchHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  queueCopy = queue;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  scheduler = [(ULBGSystemTaskManager *)self scheduler];
  identifier = [requestCopy identifier];
  internalQueue = [(ULBGSystemTaskManager *)self internalQueue];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__ULBGSystemTaskManager_registerAndSubmitTaskWithRequest_usingQueue_launchHandler___block_invoke;
  v32[3] = &unk_2798D40D0;
  objc_copyWeak(&v35, &location);
  v14 = queueCopy;
  v33 = v14;
  v15 = handlerCopy;
  v34 = v15;
  v16 = [scheduler registerForTaskWithIdentifier:identifier usingQueue:internalQueue launchHandler:v32];

  if (v16)
  {
    scheduler2 = [(ULBGSystemTaskManager *)self scheduler];
    identifier2 = [requestCopy identifier];
    v19 = [scheduler2 taskRequestForIdentifier:identifier2];

    if (v19)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBGSystemTaskManager registerAndSubmitTaskWithRequest:usingQueue:launchHandler:];
      }

      v20 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [requestCopy identifier];
        *buf = 138412290;
        v38 = identifier3;
        _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "[ULBGSystemTaskManager]: Trying to submit already existing task: %@", buf, 0xCu);
      }
    }

    else
    {
      scheduler3 = [(ULBGSystemTaskManager *)self scheduler];
      createRequestFromSelf = [requestCopy createRequestFromSelf];
      v31 = 0;
      v25 = [scheduler3 submitTaskRequest:createRequestFromSelf error:&v31];
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
          identifier4 = [requestCopy identifier];
          *buf = 138412290;
          v38 = identifier4;
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
          identifier5 = [requestCopy identifier];
          localizedDescription = [v20 localizedDescription];
          *buf = 138412546;
          v38 = identifier5;
          v39 = 2112;
          v40 = localizedDescription;
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
      identifier6 = [requestCopy identifier];
      *buf = 138412290;
      v38 = identifier6;
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

- (void)deregisterAndCancelTaskWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  scheduler = [(ULBGSystemTaskManager *)self scheduler];
  v19 = 0;
  v6 = [scheduler cancelTaskRequestWithIdentifier:identifierCopy error:&v19];
  v7 = v19;

  if (v6)
  {
    scheduler2 = [(ULBGSystemTaskManager *)self scheduler];
    v9 = [scheduler2 deregisterTaskWithIdentifier:identifierCopy];

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
        v21 = identifierCopy;
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
        v21 = identifierCopy;
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
      localizedDescription = [v7 localizedDescription];
      *buf = 138412546;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = localizedDescription;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "[ULBGSystemTaskManager]: Couldnt cancel task: %@ with error: %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end