@interface CoreDAVMultiGetWithFallbackTaskGroup
- (CoreDAVMultiGetWithFallbackTaskGroup)initWithURLs:(id)ls multiGetBlock:(id)block getBlock:(id)getBlock accountInfoProvider:(id)provider taskManager:(id)manager;
- (NSError)error;
- (NSSet)deletedURLs;
- (NSSet)missingURLs;
- (NSSet)parsedContents;
- (void)_configureAndSubmitTask:(id)task;
- (void)_fetchOneItem;
- (void)_switchToSingleGetMode;
- (void)startTaskGroup;
@end

@implementation CoreDAVMultiGetWithFallbackTaskGroup

- (CoreDAVMultiGetWithFallbackTaskGroup)initWithURLs:(id)ls multiGetBlock:(id)block getBlock:(id)getBlock accountInfoProvider:(id)provider taskManager:(id)manager
{
  lsCopy = ls;
  blockCopy = block;
  getBlockCopy = getBlock;
  v23.receiver = self;
  v23.super_class = CoreDAVMultiGetWithFallbackTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v23 initWithAccountInfoProvider:provider taskManager:manager];
  if (v15)
  {
    v16 = blockCopy[2](blockCopy, lsCopy);
    multiGetTask = v15->_multiGetTask;
    v15->_multiGetTask = v16;

    v18 = [lsCopy mutableCopy];
    urls = v15->_urls;
    v15->_urls = v18;

    v20 = [getBlockCopy copy];
    getBlock = v15->_getBlock;
    v15->_getBlock = v20;

    v15->_usingMultiGet = 1;
  }

  return v15;
}

- (void)_configureAndSubmitTask:(id)task
{
  taskCopy = task;
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [taskCopy setAccountInfoProvider:accountInfoProvider];

  [(CoreDAVTaskGroup *)self timeoutInterval];
  [taskCopy setTimeoutInterval:?];
  [(NSMutableSet *)self->super._outstandingTasks addObject:taskCopy];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskCopy submitWithTaskManager:taskManager];
}

- (void)_switchToSingleGetMode
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  parsedContents = self->_parsedContents;
  self->_parsedContents = v3;

  self->_usingMultiGet = 0;
}

- (void)_fetchOneItem
{
  anyObject = [(NSMutableSet *)self->_urls anyObject];
  if (anyObject)
  {
    [(NSMutableSet *)self->_urls removeObject:anyObject];
    error = (*(self->_getBlock + 2))();
    objc_initWeak(&location, error);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __53__CoreDAVMultiGetWithFallbackTaskGroup__fetchOneItem__block_invoke;
    v8 = &unk_278E31008;
    objc_copyWeak(&v11, &location);
    selfCopy = self;
    v10 = anyObject;
    [error setCompletionBlock:&v5];
    [(CoreDAVMultiGetWithFallbackTaskGroup *)self _configureAndSubmitTask:error, v5, v6, v7, v8, selfCopy];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    error = [(CoreDAVMultiGetWithFallbackTaskGroup *)self error];
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:error delegateCallbackBlock:0];
  }
}

void __53__CoreDAVMultiGetWithFallbackTaskGroup__fetchOneItem__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v3 = [WeakRetained error];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 domain];
      if ([v5 isEqualToString:@"CoreDAVErrorDomain"])
      {
        v6 = [v4 code];

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v9 = +[CoreDAVLogging sharedLogging];
      v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v11 = [v9 logHandleForAccountInfoProvider:v10];

      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 40);
          v14 = [WeakRetained error];
          v17 = 138412546;
          v18 = v13;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_DEFAULT, "CoreDAVMultiGetWithFallbackTaskGroup: encountered error in single-item fetch at %@, error: %@", &v17, 0x16u);
        }
      }

      v8 = *(a1 + 32);
      if ((v8[88] & 1) == 0)
      {
        v15 = [WeakRetained error];
        [v8 finishCoreDAVTaskGroupWithError:v15 delegateCallbackBlock:0];

        goto LABEL_17;
      }
    }

    else
    {
      v7 = [WeakRetained appSpecificDataItemResult];
      if (v7)
      {
        [*(*(a1 + 32) + 120) addObject:v7];
      }

      v8 = *(a1 + 32);
    }

    [v8 _fetchOneItem];
LABEL_17:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startTaskGroup
{
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_multiGetTask);
  multiGetTask = self->_multiGetTask;
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __54__CoreDAVMultiGetWithFallbackTaskGroup_startTaskGroup__block_invoke;
  v7 = &unk_278E31E40;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  [(CoreDAVTask *)multiGetTask setCompletionBlock:&v4];
  [(CoreDAVMultiGetWithFallbackTaskGroup *)self _configureAndSubmitTask:self->_multiGetTask, v4, v5, v6, v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __54__CoreDAVMultiGetWithFallbackTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2 && WeakRetained)
  {
    [WeakRetained[4] removeObject:v2];
    v3 = [v2 error];
    if (!v3 || ([WeakRetained error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = [WeakRetained error];
      [WeakRetained finishCoreDAVTaskGroupWithError:v5 delegateCallbackBlock:0];

LABEL_6:
      goto LABEL_7;
    }

    v6 = [v3 domain];
    if ([v6 isEqualToString:@"CoreDAVErrorDomain"])
    {
      v7 = [v3 code];

      if (v7 == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    [WeakRetained _switchToSingleGetMode];
    [WeakRetained _fetchOneItem];
    goto LABEL_6;
  }

LABEL_7:
}

- (NSError)error
{
  error = [(CoreDAVTask *)self->_multiGetTask error];
  domain = [error domain];
  v4 = [domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

  if (v4 && [error code] >= 500 && objc_msgSend(error, "code") <= 599)
  {
    v5 = error;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)missingURLs
{
  error = [(CoreDAVMultiGetWithFallbackTaskGroup *)self error];

  if (error)
  {
    missingURLs = 0;
  }

  else
  {
    missingURLs = [(CoreDAVContainerMultiGetTask *)self->_multiGetTask missingURLs];
  }

  return missingURLs;
}

- (NSSet)deletedURLs
{
  error = [(CoreDAVMultiGetWithFallbackTaskGroup *)self error];

  if (error)
  {
    deletedURLs = 0;
  }

  else
  {
    deletedURLs = [(CoreDAVContainerMultiGetTask *)self->_multiGetTask deletedURLs];
  }

  return deletedURLs;
}

- (NSSet)parsedContents
{
  if (self->_usingMultiGet)
  {
    parsedContents = [(CoreDAVContainerMultiGetTask *)self->_multiGetTask parsedContents];
  }

  else
  {
    parsedContents = self->_parsedContents;
  }

  return parsedContents;
}

@end