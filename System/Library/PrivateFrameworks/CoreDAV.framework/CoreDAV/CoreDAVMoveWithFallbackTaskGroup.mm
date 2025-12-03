@interface CoreDAVMoveWithFallbackTaskGroup
- (CoreDAVMoveWithFallbackTaskGroup)initWithSourceURL:(id)l destinationURL:(id)rL AccountInfoProvider:(id)provider taskManager:(id)manager;
- (id)description;
- (void)_completedMoveTask:(id)task;
- (void)_completedPutTask:(id)task;
- (void)startTaskGroup;
@end

@implementation CoreDAVMoveWithFallbackTaskGroup

- (CoreDAVMoveWithFallbackTaskGroup)initWithSourceURL:(id)l destinationURL:(id)rL AccountInfoProvider:(id)provider taskManager:(id)manager
{
  lCopy = l;
  rLCopy = rL;
  providerCopy = provider;
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = CoreDAVMoveWithFallbackTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v25 initWithAccountInfoProvider:providerCopy taskManager:managerCopy];
  if (v15)
  {
    if (lCopy && ([lCopy CDVRawPath], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
    {
      if (rLCopy && ([rLCopy CDVRawPath], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19))
      {
        if (![lCopy isEqual:rLCopy])
        {
          objc_storeStrong(&v15->_sourceURL, l);
          objc_storeStrong(&v15->_destinationURL, rL);
          goto LABEL_8;
        }

        v21 = MEMORY[0x277CBEAD8];
        v22 = *MEMORY[0x277CBE660];
        v23 = @"The value for sourceURL and the value for destinationURL must not be the same.";
      }

      else
      {
        v21 = MEMORY[0x277CBEAD8];
        v22 = *MEMORY[0x277CBE660];
        v23 = @"Non-nil and non-zero length destinationURL required.";
      }
    }

    else
    {
      v21 = MEMORY[0x277CBEAD8];
      v22 = *MEMORY[0x277CBE660];
      v23 = @"Non-nil and non-zero length sourceURL required.";
    }

    v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:0];
    objc_exception_throw(v24);
  }

LABEL_8:

  return v15;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CoreDAVMoveWithFallbackTaskGroup:"];
  [v3 appendFormat:@"\n\tSource url: %@", self->_sourceURL];
  [v3 appendFormat:@"\n\tDestination url: %@", self->_destinationURL];
  [v3 appendFormat:@"\n\tPrevious Etag: %@", self->_previousETag];
  [v3 appendFormat:@"\n\tOverwrite: %i", self->_overwrite];
  [v3 appendFormat:@"\n\tUseFallback: %i", self->_useFallback];

  return v3;
}

- (void)startTaskGroup
{
  v3 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2452FB000, v5, OS_LOG_TYPE_INFO, "[move] Move task group starting with move", buf, 2u);
  }

  v6 = [CoreDAVMoveTask alloc];
  sourceURL = [(CoreDAVMoveWithFallbackTaskGroup *)self sourceURL];
  destinationURL = [(CoreDAVMoveWithFallbackTaskGroup *)self destinationURL];
  v9 = [(CoreDAVCopyOrMoveTask *)v6 initWithSourceURL:sourceURL destinationURL:destinationURL andOverwrite:[(CoreDAVMoveWithFallbackTaskGroup *)self overwrite]];

  [(CoreDAVMoveTask *)v9 setPreviousETag:self->_previousETag];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CoreDAVTask *)v9 setAccountInfoProvider:accountInfoProvider];

  [(CoreDAVTask *)v9 setTimeoutInterval:self->super._timeoutInterval];
  objc_initWeak(buf, v9);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__CoreDAVMoveWithFallbackTaskGroup_startTaskGroup__block_invoke;
  v15 = &unk_278E30F68;
  objc_copyWeak(&v17, buf);
  selfCopy = self;
  [(CoreDAVTask *)v9 setCompletionBlock:&v12];
  [(NSMutableSet *)self->super._outstandingTasks addObject:v9, v12, v13, v14, v15];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v9];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

uint64_t __50__CoreDAVMoveWithFallbackTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    WeakRetained = [*(a1 + 32) _completedMoveTask:v5];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_completedMoveTask:(id)task
{
  taskCopy = task;
  error = [taskCopy error];
  v6 = error;
  if (!error)
  {
    responseHeaders = [taskCopy responseHeaders];
    responseHeaders = self->_responseHeaders;
    self->_responseHeaders = responseHeaders;

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [(CoreDAVPutTask *)v11 logHandleForAccountInfoProvider:WeakRetained];

    if (!v13 || !os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    LOWORD(buf[0]) = 0;
    v14 = "[move] Move succeded";
    goto LABEL_18;
  }

  domain = [error domain];
  if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
  {
    code = [v6 code];
  }

  else
  {
    code = 0;
  }

  if (!self->_useFallback || (code - 403) >= 3 && code != 501)
  {
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v6 delegateCallbackBlock:0];
    v11 = +[CoreDAVLogging sharedLogging];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [(CoreDAVPutTask *)v11 logHandleForAccountInfoProvider:v20];

    if (!v13 || !os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    LOWORD(buf[0]) = 0;
    v14 = "[move] Move failed";
LABEL_18:
    _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
LABEL_19:

    goto LABEL_20;
  }

  v15 = +[CoreDAVLogging sharedLogging];
  v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v17 = [v15 logHandleForAccountInfoProvider:v16];

  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_INFO, "[move] Move failed, trying a PUT", buf, 2u);
  }

  v11 = [(CoreDAVPostOrPutTask *)[CoreDAVPutTask alloc] initWithDataPayload:self->_dataPayload dataContentType:self->_dataContentType atURL:self->_destinationURL previousETag:0];
  v18 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v11 setAccountInfoProvider:v18];

  objc_initWeak(buf, v11);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __55__CoreDAVMoveWithFallbackTaskGroup__completedMoveTask___block_invoke;
  v24 = &unk_278E30F68;
  objc_copyWeak(&v26, buf);
  selfCopy = self;
  [(CoreDAVTask *)v11 setCompletionBlock:&v21];
  [(NSMutableSet *)self->super._outstandingTasks addObject:v11, v21, v22, v23, v24];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v11];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
LABEL_20:
}

uint64_t __55__CoreDAVMoveWithFallbackTaskGroup__completedMoveTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    WeakRetained = [*(a1 + 32) _completedPutTask:v5];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_completedPutTask:(id)task
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  error = [taskCopy error];
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (error)
  {
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "[move] Move PUT failed", buf, 2u);
    }

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:error delegateCallbackBlock:0];
  }

  else
  {
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "[move] PUT succeded, doing a DELETE now", buf, 2u);
    }

    v9 = +[CoreDAVLogging sharedLogging];
    v10 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:v10];

    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        responseHeaders = [taskCopy responseHeaders];
        *buf = 138412290;
        v27 = responseHeaders;
        _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "[move] PUT Responses are: %@", buf, 0xCu);
      }
    }

    nextETag = [taskCopy nextETag];
    nextETag = self->_nextETag;
    self->_nextETag = nextETag;

    v16 = [(CoreDAVTask *)[CoreDAVDeleteTask alloc] initWithURL:self->_sourceURL];
    v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    [(CoreDAVTask *)v16 setAccountInfoProvider:v17];

    objc_initWeak(buf, v16);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __54__CoreDAVMoveWithFallbackTaskGroup__completedPutTask___block_invoke;
    v23 = &unk_278E30F68;
    objc_copyWeak(&v25, buf);
    selfCopy = self;
    [(CoreDAVTask *)v16 setCompletionBlock:&v20];
    [(NSMutableSet *)self->super._outstandingTasks addObject:v16, v20, v21, v22, v23];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v16];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__CoreDAVMoveWithFallbackTaskGroup__completedPutTask___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[CoreDAVLogging sharedLogging];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v5 = [v3 logHandleForAccountInfoProvider:v4];

    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [WeakRetained error];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "[move] DELETE completed with error: %@", &v11, 0xCu);
      }
    }

    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v8 = *(a1 + 32);
    v9 = [WeakRetained error];
    [v8 finishCoreDAVTaskGroupWithError:v9 delegateCallbackBlock:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end