@interface CoreDAVTaskGroup
- (CoreDAVAccountInfoProvider)accountInfoProvider;
- (CoreDAVTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (CoreDAVTaskGroupDelegate)delegate;
- (CoreDAVTaskManager)taskManager;
- (void)_tearDownAllTasks;
- (void)bailWithError:(id)a3;
- (void)cancelTaskGroup;
- (void)dealloc;
- (void)finishCoreDAVTaskGroupWithError:(id)a3 delegateCallbackBlock:(id)a4;
- (void)finishEarlyWithError:(id)a3;
- (void)submitWithTaskManager:(id)a3;
- (void)taskGroupWillCancelWithError:(id)a3;
@end

@implementation CoreDAVTaskGroup

- (CoreDAVTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CoreDAVTaskGroup;
  v8 = [(CoreDAVTaskGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accountInfoProvider, v6);
    objc_storeWeak(&v9->_taskManager, v7);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outstandingTasks = v9->_outstandingTasks;
    v9->_outstandingTasks = v10;

    v9->_timeoutInterval = 240.0;
  }

  return v9;
}

- (void)dealloc
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"CoreDAVTaskGroup.m" lineNumber:45 description:{@"We should never finish a task group with an existing task.  I have %@", *a1}];
}

- (void)taskGroupWillCancelWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  v5 = v4;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v4 delegateCallbackBlock:0];
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

- (void)bailWithError:(id)a3
{
  if (!self->_isCancelling)
  {
    self->_isCancelling = 1;
    v5 = a3;
    [(CoreDAVTaskGroup *)self _tearDownAllTasks];
    [(CoreDAVTaskGroup *)self taskGroupWillCancelWithError:v5];
  }
}

- (void)cancelTaskGroup
{
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVTaskGroup *)self bailWithError:v3];
}

- (void)finishCoreDAVTaskGroupWithError:(id)a3 delegateCallbackBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_isFinished)
  {
    self->_isFinished = 1;
    [(CoreDAVTaskGroup *)self setError:v11];
    v7 = self;
    v8 = [(CoreDAVTaskGroup *)v7 delegate];
    if (v6)
    {
      v6[2](v6);
    }

    v9 = [(CoreDAVTaskGroup *)v7 completionBlock];

    if (v9)
    {
      v10 = [(CoreDAVTaskGroup *)v7 completionBlock];
      v10[2]();
    }

    else if (objc_opt_respondsToSelector())
    {
      [v8 taskGroup:v7 didFinishWithError:v11];
    }

    [(CoreDAVTaskGroup *)v7 setProgressBlock:0];
    [(CoreDAVTaskGroup *)v7 setCompletionBlock:0];
  }
}

- (void)finishEarlyWithError:(id)a3
{
  [(CoreDAVTaskGroup *)self bailWithError:a3];

  [(CoreDAVTaskGroup *)self setDelegate:0];
}

- (void)submitWithTaskManager:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
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
      v11 = self;
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