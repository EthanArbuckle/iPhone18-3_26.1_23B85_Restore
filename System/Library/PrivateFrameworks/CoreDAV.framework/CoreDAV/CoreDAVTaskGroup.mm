@interface CoreDAVTaskGroup
- (CoreDAVAccountInfoProvider)accountInfoProvider;
- (CoreDAVTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (CoreDAVTaskGroupDelegate)delegate;
- (CoreDAVTaskManager)taskManager;
- (void)_tearDownAllTasks;
- (void)bailWithError:(id)error;
- (void)cancelTaskGroup;
- (void)dealloc;
- (void)finishCoreDAVTaskGroupWithError:(id)error delegateCallbackBlock:(id)block;
- (void)finishEarlyWithError:(id)error;
- (void)submitWithTaskManager:(id)manager;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVTaskGroup

- (CoreDAVTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CoreDAVTaskGroup;
  v8 = [(CoreDAVTaskGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accountInfoProvider, providerCopy);
    objc_storeWeak(&v9->_taskManager, managerCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outstandingTasks = v9->_outstandingTasks;
    v9->_outstandingTasks = v10;

    v9->_timeoutInterval = 240.0;
  }

  return v9;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:a3 file:@"CoreDAVTaskGroup.m" lineNumber:45 description:{@"We should never finish a task group with an existing task.  I have %@", *self}];
}

- (void)taskGroupWillCancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  v5 = errorCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

- (void)_tearDownAllTasks
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_isTearingDown)
  {
    self->_isTearingDown = 1;
    v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    v4 = [(NSMutableSet *)self->_outstandingTasks copy];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) finishEarlyWithError:{v3, v11}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)bailWithError:(id)error
{
  if (!self->_isCancelling)
  {
    self->_isCancelling = 1;
    errorCopy = error;
    [(CoreDAVTaskGroup *)self _tearDownAllTasks];
    [(CoreDAVTaskGroup *)self taskGroupWillCancelWithError:errorCopy];
  }
}

- (void)cancelTaskGroup
{
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVTaskGroup *)self bailWithError:v3];
}

- (void)finishCoreDAVTaskGroupWithError:(id)error delegateCallbackBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  if (!self->_isFinished)
  {
    self->_isFinished = 1;
    [(CoreDAVTaskGroup *)self setError:errorCopy];
    selfCopy = self;
    delegate = [(CoreDAVTaskGroup *)selfCopy delegate];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    completionBlock = [(CoreDAVTaskGroup *)selfCopy completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(CoreDAVTaskGroup *)selfCopy completionBlock];
      completionBlock2[2]();
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate taskGroup:selfCopy didFinishWithError:errorCopy];
    }

    [(CoreDAVTaskGroup *)selfCopy setProgressBlock:0];
    [(CoreDAVTaskGroup *)selfCopy setCompletionBlock:0];
  }
}

- (void)finishEarlyWithError:(id)error
{
  [(CoreDAVTaskGroup *)self bailWithError:error];

  [(CoreDAVTaskGroup *)self setDelegate:0];
}

- (void)submitWithTaskManager:(id)manager
{
  v12 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    [(CoreDAVTaskGroup *)self setTaskManager:?];
    v4 = *MEMORY[0x277D85DE8];

    [(CoreDAVTaskGroup *)self startTaskGroup];
  }

  else
  {
    v5 = +[CoreDAVLogging sharedLogging];
    v6 = [v5 logHandleForAccountInfoProvider:0];
    v7 = v6;
    if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "TaskGroup %@ submitted with no taskManager, returning immediately", &v10, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
    [(CoreDAVTaskGroup *)self finishEarlyWithError:v8];

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (CoreDAVAccountInfoProvider)accountInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);

  return WeakRetained;
}

- (CoreDAVTaskGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CoreDAVTaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

@end