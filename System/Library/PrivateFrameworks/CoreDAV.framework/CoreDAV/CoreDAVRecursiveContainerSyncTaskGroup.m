@interface CoreDAVRecursiveContainerSyncTaskGroup
- (BOOL)isWhitelistedError:(id)a3;
- (BOOL)shouldSyncChildWithResourceType:(id)a3;
- (CoreDAVRecursiveContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousPTag:(id)a5 previousSyncToken:(id)a6 actions:(id)a7 syncItemOrder:(BOOL)a8 context:(id)a9 accountInfoProvider:(id)a10 taskManager:(id)a11;
- (NSString)description;
- (id)copyFolderMultiGetTaskWithURLs:(id)a3;
- (id)copyMultiGetTaskWithURLs:(id)a3;
- (id)dataContentType;
- (unint64_t)_submitTasks;
- (void)_folderModTask:(id)a3 parsedPropStats:(id)a4 error:(id)a5;
- (void)_foundChildrenOrder:(id)a3 inFolderWithURL:(id)a4;
- (void)_getDataPayloads;
- (void)_getItemTags;
- (void)_getTask:(id)a3 finishedWithParsedContents:(id)a4 deletedItems:(id)a5 error:(id)a6;
- (void)_getTopFolderTags;
- (void)_postTask:(id)a3 didFinishWithError:(id)a4;
- (void)_pushActions;
- (void)_syncReportTask:(id)a3 didFinishWithError:(id)a4;
- (void)_taskGroupSuccessfullyFinishedWithContents:(id)a3;
- (void)_tearDownAllUnsubmittedTasks;
- (void)bailWithError:(id)a3;
- (void)cancelTaskGroup;
- (void)deleteTask:(id)a3 completedWithError:(id)a4;
- (void)moveTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)putTask:(id)a3 completedWithNewETag:(id)a4 error:(id)a5;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroupWillCancelWithError:(id)a3;
@end

@implementation CoreDAVRecursiveContainerSyncTaskGroup

- (CoreDAVRecursiveContainerSyncTaskGroup)initWithFolderURL:(id)a3 previousCTag:(id)a4 previousPTag:(id)a5 previousSyncToken:(id)a6 actions:(id)a7 syncItemOrder:(BOOL)a8 context:(id)a9 accountInfoProvider:(id)a10 taskManager:(id)a11
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isMemberOfClass:objc_opt_class()])
  {
    [CoreDAVRecursiveContainerSyncTaskGroup initWithFolderURL:previousCTag:previousPTag:previousSyncToken:actions:syncItemOrder:context:accountInfoProvider:taskManager:];
  }

  v32.receiver = self;
  v32.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  v21 = [(CoreDAVTaskGroup *)&v32 initWithAccountInfoProvider:v19 taskManager:v20, a2];
  v22 = v21;
  if (v21)
  {
    [(CoreDAVTaskGroup *)v21 setContext:v18];
    objc_storeStrong(&v22->_folderURL, a3);
    objc_storeStrong(&v22->_previousCTag, a4);
    objc_storeStrong(&v22->_previousPTag, a5);
    objc_storeStrong(&v22->_previousSyncToken, a6);
    objc_storeStrong(&v22->_actions, a7);
    v22->_multiGetBatchSize = 50;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unsubmittedTasks = v22->_unsubmittedTasks;
    v22->_unsubmittedTasks = v23;

    v22->_syncItemOrder = a8;
  }

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: Phase %d Outstanding Tasks:\n%@", v5, self, self->_phase, self->super._outstandingTasks];

  return v6;
}

- (void)taskGroupWillCancelWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  v5 = [(CoreDAVTaskGroup *)self delegate];
  [v5 recursiveContainerSyncTask:self completedFullSyncWithNewCTag:0 newPTag:0 newSyncToken:0 error:v4];

  v6.receiver = self;
  v6.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v6 taskGroupWillCancelWithError:v4];
}

- (void)_tearDownAllUnsubmittedTasks
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_unsubmittedTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 finishCoreDAVTaskWithError:{v3, v11}];
        [v9 setDelegate:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_unsubmittedTasks removeAllObjects];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_foundChildrenOrder:(id)a3 inFolderWithURL:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  folderURLToChildrenURLOrder = self->_folderURLToChildrenURLOrder;
  if (!folderURLToChildrenURLOrder)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_folderURLToChildrenURLOrder;
    self->_folderURLToChildrenURLOrder = v9;

    folderURLToChildrenURLOrder = self->_folderURLToChildrenURLOrder;
  }

  v11 = [(NSMutableDictionary *)folderURLToChildrenURLOrder objectForKey:v7];

  if (v11)
  {
    v12 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_folderURLToChildrenURLOrder;
      v17 = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "Got children order %@ for folder with url %@, but I already knew about that (I had %@)", &v17, 0x20u);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_folderURLToChildrenURLOrder setObject:v6 forKey:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)bailWithError:(id)a3
{
  v4 = a3;
  [(CoreDAVRecursiveContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v5.receiver = self;
  v5.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v5 bailWithError:v4];
}

- (void)cancelTaskGroup
{
  [(CoreDAVRecursiveContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v3.receiver = self;
  v3.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

- (unint64_t)_submitTasks
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->super._isCancelling)
  {
    v2 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_unsubmittedTasks copy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v2 = 0;
      v8 = *v23;
      do
      {
        v21 = v2;
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          [(NSMutableSet *)self->super._outstandingTasks addObject:v10];
          [(NSMutableArray *)self->_unsubmittedTasks removeObject:v10];
          WeakRetained = objc_loadWeakRetained(&self->super._taskManager);
          [WeakRetained submitQueuedCoreDAVTask:v10];
        }

        v2 = v21 + v7;
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v7);
    }

    else
    {
      v2 = 0;
    }

    v12 = +[CoreDAVLogging sharedLogging];
    v13 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:v13];

    if (v14)
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [(NSMutableSet *)self->super._outstandingTasks count];
        *buf = 138544130;
        v27 = v17;
        v28 = 2048;
        v29 = self;
        v30 = 2048;
        v31 = v2;
        v32 = 2048;
        v33 = v18;
        _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> Submitted %lu queued tasks, %lu total tasks queued.", buf, 0x2Au);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_taskGroupSuccessfullyFinishedWithContents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_INFO, "Task group %@ finished", buf, 0xCu);
  }

  v8 = [(CoreDAVTaskGroup *)self delegate];
  v9 = v8;
  nextCTag = self->_nextCTag;
  if (!nextCTag)
  {
    nextCTag = self->_previousCTag;
  }

  nextPTag = self->_nextPTag;
  if (!nextPTag)
  {
    nextPTag = self->_previousPTag;
  }

  [v8 recursiveContainerSyncTask:self completedSyncOfFolderWithURL:self->_folderURL newCTag:nextCTag newPTag:nextPTag addedOrModified:v4 removed:0 error:0];

  v12 = [(CoreDAVTaskGroup *)self delegate];
  v13 = v12;
  previousCTag = self->_nextCTag;
  if (!previousCTag)
  {
    previousCTag = self->_previousCTag;
  }

  previousPTag = self->_nextPTag;
  if (!previousPTag)
  {
    previousPTag = self->_previousPTag;
  }

  nextSyncToken = self->_nextSyncToken;
  if (!nextSyncToken)
  {
    nextSyncToken = self->_previousSyncToken;
  }

  [v12 recursiveContainerSyncTask:self completedFullSyncWithNewCTag:previousCTag newPTag:previousPTag newSyncToken:nextSyncToken error:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_pushActions
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

uint64_t __54__CoreDAVRecursiveContainerSyncTaskGroup__pushActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 url];
  v7 = [v5 url];
  v8 = [v6 pathComponents];
  v9 = [v8 count];

  v10 = [v7 pathComponents];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    if (v9 > v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [v4 absoluteOrder];
      v14 = [v5 absoluteOrder];
      if (v13 < v14)
      {
        v12 = -1;
      }

      else
      {
        v12 = v13 > v14;
      }
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)_getTopFolderTags
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_getItemTags
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_getDataPayloads
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startTaskGroup
{
  if ([(NSArray *)self->_actions count])
  {

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _pushActions];
  }

  else
  {

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
  }
}

- (BOOL)isWhitelistedError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

  v6 = v5 && [v3 code] >= 400 && objc_msgSend(v3, "code") < 500;
  return v6;
}

- (void)putTask:(id)a3 completedWithNewETag:(id)a4 error:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:v8])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v8]& 1) != 0)
    {
      goto LABEL_31;
    }

    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [(NSMutableArray *)v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v32 = 138412802;
      v33 = v8;
      v34 = 2112;
      v35 = outstandingTasks;
      v36 = 2112;
      v37 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v32, 0x20u);
    }

LABEL_30:
    goto LABEL_31;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:v8];
  if (!self->_phase)
  {
    v11 = v10;
    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v11])
    {
      v16 = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [v16 logHandleForAccountInfoProvider:v17];

      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412802;
        v33 = v8;
        v34 = 2114;
        v35 = v9;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_DEFAULT, "putTask:%@ completedWithNewETag:%{public}@ error:%@ Ignoring", &v32, 0x20u);
      }

      v10 = 0;
      v9 = 0;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (!v10)
    {
      v24 = [(CoreDAVTaskGroup *)self delegate];
      v25 = [v8 url];
      v26 = [v8 requestDataPayload];
      [v24 notePutToURL:v25 withDataPayload:v26 finishedWithIgnoredError:v11];

      goto LABEL_25;
    }

LABEL_23:
    if (v10)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v10];
LABEL_27:
      if (!self->super._isCancelling)
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
        if (![(NSMutableSet *)self->super._outstandingTasks count])
        {
          [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
        }
      }

      goto LABEL_30;
    }

LABEL_25:
    v27 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [v8 url];
    v29 = [v27 setLocalETag:v9 forItemWithURL:v28];

    if ((v29 & 1) == 0)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v30];
    }

    goto LABEL_27;
  }

  if (v10)
  {
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v10];
  }

  else
  {
    v19 = +[CoreDAVLogging sharedLogging];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [v19 logHandleForAccountInfoProvider:v20];

    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      phase = self->_phase;
      v32 = 67109120;
      LODWORD(v33) = phase;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v32, 8u);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v23];

    v10 = 0;
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_postTask:(id)a3 didFinishWithError:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v6])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
    if (self->_phase)
    {
      if (!v7)
      {
        v8 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          phase = self->_phase;
          v22 = 67109120;
          LODWORD(v23) = phase;
          _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v22, 8u);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v12];

LABEL_22:
        v7 = 0;
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v7])
    {
      v18 = +[CoreDAVLogging sharedLogging];
      v19 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v20 = [v18 logHandleForAccountInfoProvider:v19];

      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2452FB000, v20, OS_LOG_TYPE_DEFAULT, "postTask:%@ error:%@ Ignoring", &v22, 0x16u);
      }
    }

    else if (v7)
    {
LABEL_19:
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v7];
      goto LABEL_23;
    }

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_22;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v6]& 1) == 0)
  {
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v22 = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = outstandingTasks;
      v26 = 2112;
      v27 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v22, 0x20u);
    }
  }

LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_folderModTask:(id)a3 parsedPropStats:(id)a4 error:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v7])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v7];
    if (self->_phase)
    {
      if (v8)
      {
LABEL_4:
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v8];
        goto LABEL_42;
      }

      v22 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v24 = [v22 logHandleForAccountInfoProvider:WeakRetained];

      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        phase = self->_phase;
        v38 = 67109120;
        LODWORD(v39) = phase;
        _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v38, 8u);
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v26];

LABEL_41:
      v8 = 0;
      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(NSMutableSet *)v8 domain];
      if ([v14 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        v15 = [(NSMutableSet *)v8 code];

        if (v15 == 404)
        {
          v16 = +[CoreDAVLogging sharedLogging];
          v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v18 = [v16 logHandleForAccountInfoProvider:v17];

          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v38 = 138412290;
            v39 = v7;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Got a 404 on a proppatch, replaying as mkcol.  Proppatch task was %@", &v38, 0xCu);
          }

          v19 = [v7 backingAction];
          v20 = [v19 context];
          v21 = [v20 copyMkcolTask];
LABEL_29:
          v32 = v21;
          if (self->_syncItemOrder)
          {
            v33 = v19;
            -[NSObject setAbsoluteOrder:](v32, "setAbsoluteOrder:", [v33 absoluteOrder]);
            v34 = [v33 priorURL];

            [v32 setPriorOrderedURL:v34];
          }

          [v32 setBackingAction:v19];
          [v32 setDelegate:self];
          v35 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          [v32 setAccountInfoProvider:v35];

          [v32 setTimeoutInterval:self->super._timeoutInterval];
          [(NSMutableArray *)self->_unsubmittedTasks addObject:v32];

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [(NSMutableSet *)v8 domain];
      if ([v27 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        v28 = [(NSMutableSet *)v8 code];

        if (v28 == 405)
        {
          v29 = +[CoreDAVLogging sharedLogging];
          v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v31 = [v29 logHandleForAccountInfoProvider:v30];

          if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v38 = 138412290;
            v39 = v7;
            _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_INFO, "Got a 405 on a mkcol, replaying as proppatch.  Mkcol task was %@", &v38, 0xCu);
          }

          v19 = [v7 backingAction];
          v20 = [v19 context];
          v21 = [v20 copyPropPatchTask];
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    if (![(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v8])
    {
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }

    v20 = +[CoreDAVLogging sharedLogging];
    v36 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v32 = [v20 logHandleForAccountInfoProvider:v36];

    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412546;
      v39 = v7;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_DEFAULT, "folderModTask:%@ error:%@ Ignoring", &v38, 0x16u);
    }

    v19 = v8;
LABEL_38:

LABEL_39:
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_41;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v7]& 1) == 0)
  {
    v9 = +[CoreDAVLogging sharedLogging];
    v10 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:v10];

    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v38 = 138412802;
      v39 = v7;
      v40 = 2112;
      v41 = outstandingTasks;
      v42 = 2112;
      v43 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v38, 0x20u);
    }
  }

LABEL_42:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _postTask:v6 didFinishWithError:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _syncReportTask:v6 didFinishWithError:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 parsedContents];
        v9 = [v6 deletedURLs];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTask:v6 finishedWithParsedContents:v8 deletedItems:v9 error:v7];
      }

      else
      {
        v8 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v11 = [v8 logHandleForAccountInfoProvider:WeakRetained];

        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Got a task completion invocation for a task I don't grok, %@", &v13, 0xCu);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)moveTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v7])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v7];
  }

  v9 = v8;
  v10 = v9;
  if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v9])
  {
    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 domain];
        v16 = [v9 code];
        v17 = [v7 url];
        [v17 lastPathComponent];
        v18 = v57 = v7;
        *buf = 138412802;
        v60 = v15;
        v61 = 2048;
        v62 = v16;
        v63 = 2112;
        v64 = v18;
        _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_ERROR, "Received a Whitelisted Error [Domain:%@ Code:%ld] For Move task %@ completion. Not a Fatal Error", buf, 0x20u);

        v7 = v57;
      }
    }

    v10 = 0;
  }

  if (v9 && !v10)
  {
    v19 = +[CoreDAVLogging sharedLogging];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [v19 logHandleForAccountInfoProvider:v20];

    if (v21)
    {
      v22 = v21;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v7 url];
        v24 = [v23 lastPathComponent];
        *buf = 138412546;
        v60 = v9;
        v61 = 2112;
        v62 = v24;
        _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "Received a Whitelisted Error [%@] For Move task %@ completion .Calling delegate method with original error", buf, 0x16u);
      }
    }

    v25 = [(CoreDAVTaskGroup *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_31;
    }

    v27 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [v7 url];
    v29 = [v7 destinationURL];
    v30 = v27;
    v31 = v28;
    v32 = v29;
    v33 = v9;
LABEL_17:
    [v30 moveTaskFromURL:v31 toURL:v32 finishedWithIgnoredError:v33];

LABEL_31:
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      v50 = +[CoreDAVLogging sharedLogging];
      v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v52 = [v50 logHandleForAccountInfoProvider:v51];

      if (v52)
      {
        v53 = v52;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [v7 url];
          v55 = [v54 lastPathComponent];
          *buf = 138412290;
          v60 = v55;
          _os_log_impl(&dword_2452FB000, v53, OS_LOG_TYPE_INFO, "Move Task For ServerID %@", buf, 0xCu);
        }
      }

      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_37;
  }

  if (!v10)
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v42 = +[CoreDAVLogging sharedLogging];
    v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v44 = [v42 logHandleForAccountInfoProvider:v43];

    if (v44)
    {
      v45 = v44;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v7 url];
        v47 = [v46 lastPathComponent];
        *buf = 138412290;
        v60 = v47;
        _os_log_impl(&dword_2452FB000, v45, OS_LOG_TYPE_INFO, "Move Task For ServerID %@", buf, 0xCu);
      }
    }

    v48 = [(CoreDAVTaskGroup *)self delegate];
    v49 = objc_opt_respondsToSelector();

    if ((v49 & 1) == 0)
    {
      goto LABEL_31;
    }

    v27 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [v7 url];
    v29 = [v7 destinationURL];
    v30 = v27;
    v31 = v28;
    v32 = v29;
    v33 = 0;
    goto LABEL_17;
  }

  v34 = +[CoreDAVLogging sharedLogging];
  v35 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v36 = [v34 logHandleForAccountInfoProvider:v35];

  if (v36)
  {
    v37 = v36;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [v9 domain];
      v39 = [v9 code];
      [v7 url];
      v40 = v58 = v7;
      v41 = [v40 lastPathComponent];
      *buf = 138412802;
      v60 = v38;
      v61 = 2048;
      v62 = v39;
      v63 = 2112;
      v64 = v41;
      _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_ERROR, "Received a Fatal Error [Domain:%@ Code:%ld] For Move task %@ completion. Bailing task-group with FatalError", buf, 0x20u);

      v7 = v58;
    }
  }

  [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v10];
LABEL_37:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)deleteTask:(id)a3 completedWithError:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v6])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v7])
    {
      v8 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_DEFAULT, "deleteTask:%@ completedWithError:%@ Ignoring", &v22, 0x16u);
      }
    }

    else if (v7)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v7];
      goto LABEL_22;
    }

    if (self->_phase)
    {
      v16 = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [v16 logHandleForAccountInfoProvider:v17];

      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        phase = self->_phase;
        v22 = 67109120;
        LODWORD(v23) = phase;
        _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_ERROR, "Got a successful delete task response, but I'm in phase %d.  What gives?", &v22, 8u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v20];
    }

    else
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if (![(NSMutableSet *)self->super._outstandingTasks count])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
      }
    }

    v7 = 0;
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v6]& 1) == 0)
  {
    v11 = +[CoreDAVLogging sharedLogging];
    v12 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:v12];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v22 = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = outstandingTasks;
      v26 = 2112;
      v27 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v22, 0x20u);
    }
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_syncReportTask:(id)a3 didFinishWithError:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v56 = self;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v6])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
    if (self->_phase == 2)
    {
      if ([v6 wasInvalidSyncToken])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self setPreviousSyncToken:0];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
      }

      else if (v7)
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v7];
      }

      else
      {
        if (!self->_leafURLToETag)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          leafURLToETag = self->_leafURLToETag;
          self->_leafURLToETag = v13;
        }

        if (!self->_childCollectionURL)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          childCollectionURL = self->_childCollectionURL;
          self->_childCollectionURL = v15;
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v55 = v6;
        v17 = [v6 multiStatus];
        v18 = [v17 responses];

        obj = v18;
        v19 = [v18 countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v61;
          v22 = @"DAV:";
          v57 = *v61;
          do
          {
            v23 = 0;
            v58 = v20;
            do
            {
              if (*v61 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v60 + 1) + 8 * v23);
              v25 = [v24 firstHref];
              v26 = [v25 payloadAsFullURL];

              v27 = [v24 successfulPropertiesToValues];
              v28 = [v27 CDVObjectForKeyWithNameSpace:v22 andName:@"resourcetype"];
              v29 = [v28 collection];

              if (v29)
              {
                if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self shouldSyncChildWithResourceType:v28])
                {
                  [(NSMutableArray *)self->_childCollectionURL addObject:v26];
                }
              }

              else
              {
                v30 = v22;
                v31 = [v27 CDVObjectForKeyWithNameSpace:v22 andName:@"getetag"];
                v32 = [v31 payloadAsString];
                if (v32)
                {
                  v33 = v26 == 0;
                }

                else
                {
                  v33 = 1;
                }

                if (v33)
                {
                  v34 = [v24 status];
                  v35 = [v34 payloadAsString];
                  v36 = [v35 CDVIsHTTPStatusLineWithStatusCode:404];

                  self = v56;
                  if ((v36 & 1) == 0)
                  {
                    v37 = +[CoreDAVLogging sharedLogging];
                    WeakRetained = objc_loadWeakRetained(&v56->super._accountInfoProvider);
                    v39 = [v37 logHandleForAccountInfoProvider:WeakRetained];

                    if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v65 = v32;
                      v66 = 2112;
                      v67 = v26;
                      _os_log_impl(&dword_2452FB000, v39, OS_LOG_TYPE_DEFAULT, "Found an eTag without one or both of eTag (%{public}@) or url (%@). Dropping it on the floor", buf, 0x16u);
                    }

                    self = v56;
                  }
                }

                else
                {
                  [(NSMutableDictionary *)self->_leafURLToETag setObject:v32 forKey:v26];
                }

                v22 = v30;
                v21 = v57;
                v20 = v58;
              }

              ++v23;
            }

            while (v20 != v23);
            v20 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v20);
        }

        v6 = v55;
        v40 = [v55 notFoundHREFs];
        v7 = v54;
        if ([v40 count])
        {
          syncReportDeletedURLs = self->_syncReportDeletedURLs;
          if (!syncReportDeletedURLs)
          {
            v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v43 = self->_syncReportDeletedURLs;
            self->_syncReportDeletedURLs = v42;

            syncReportDeletedURLs = self->_syncReportDeletedURLs;
          }

          [(NSMutableSet *)syncReportDeletedURLs unionSet:v40];
        }

        v44 = [v55 moreToSync];
        v45 = [v55 nextSyncToken];
        v46 = v45;
        if (v44)
        {

          if (v46)
          {
            v47 = [v55 nextSyncToken];
            [(CoreDAVRecursiveContainerSyncTaskGroup *)self setPreviousSyncToken:v47];

            v48 = self;
          }

          else
          {
            v50 = +[CoreDAVLogging sharedLogging];
            v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v52 = [v50 logHandleForAccountInfoProvider:v51];

            if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_DEFAULT, "Was told to sync more items, but got no new sync token.  Starting from scatch", buf, 2u);
            }

            [(CoreDAVRecursiveContainerSyncTaskGroup *)v56 setPreviousSyncToken:0];
            [(NSMutableDictionary *)v56->_leafURLToETag removeAllObjects];
            [(NSMutableArray *)v56->_childCollectionURL removeAllObjects];
            [(NSMutableSet *)v56->_syncReportDeletedURLs removeAllObjects];
            v48 = v56;
          }

          [(CoreDAVRecursiveContainerSyncTaskGroup *)v48 _getItemTags];
        }

        else
        {
          nextSyncToken = self->_nextSyncToken;
          self->_nextSyncToken = v45;

          [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getDataPayloads];
        }
      }
    }
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v6]& 1) == 0)
  {
    v8 = +[CoreDAVLogging sharedLogging];
    v9 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:v9];

    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = v56->super._outstandingTasks;
      unsubmittedTasks = v56->_unsubmittedTasks;
      *buf = 138412802;
      v65 = v6;
      v66 = 2112;
      v67 = outstandingTasks;
      v68 = 2112;
      v69 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:v8])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v8]& 1) != 0)
    {
      goto LABEL_39;
    }

    v27 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v29 = [v27 logHandleForAccountInfoProvider:WeakRetained];

    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      v54 = v8;
      v55 = 2112;
      v56 = outstandingTasks;
      v57 = 2112;
      v58 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }

LABEL_38:
    goto LABEL_39;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:v8];
  if (v10)
  {
    v11 = [v10 domain];
    if ([v11 isEqualToString:@"CoreDAVErrorDomain"])
    {
      v12 = [v10 code];

      if (v12 == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v10];
    goto LABEL_39;
  }

LABEL_5:
  if (self->_phase != 1)
  {
    v32 = +[CoreDAVLogging sharedLogging];
    v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v34 = [v32 logHandleForAccountInfoProvider:v33];

    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      phase = self->_phase;
      *buf = 67109120;
      LODWORD(v54) = phase;
      _os_log_impl(&dword_2452FB000, v34, OS_LOG_TYPE_ERROR, "Got a propfind response in unexpected state %d", buf, 8u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = 6;
    goto LABEL_37;
  }

  if (![v9 count])
  {
    v38 = +[CoreDAVLogging sharedLogging];
    v39 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v40 = [v38 logHandleForAccountInfoProvider:v39];

    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v9;
      _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_DEFAULT, "We need exactly one ctag per container.  We got %@", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = 8;
LABEL_37:
    v27 = [v36 errorWithDomain:@"CoreDAVErrorDomain" code:v37 userInfo:0];
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v27];
    goto LABEL_38;
  }

  v45 = self;
  v46 = v10;
  v47 = v9;
  v48 = v8;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *v50;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = [*(*(&v49 + 1) + 8 * v20) successfulPropertiesToValues];
        v22 = v21;
        if (v18)
        {
          if (!v16)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v23 = [v21 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"getctag"];
          v18 = [v23 payloadAsString];

          if (!v16)
          {
LABEL_18:
            v24 = [v22 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"sync-token"];
            v16 = [v24 payloadAsString];

            if (v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        if (v17)
        {
          goto LABEL_15;
        }

LABEL_19:
        v25 = [v22 CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"propertytag"];
        v17 = [v25 payloadAsString];

LABEL_15:
        ++v20;
      }

      while (v15 != v20);
      v26 = [v13 countByEnumeratingWithState:&v49 objects:v59 count:16];
      v15 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_41:

  objc_storeStrong(&v45->_nextSyncToken, v16);
  if (v18)
  {
    v42 = v18;
  }

  else
  {
    v42 = @"ServerDoesNotSupportCTags";
  }

  [(CoreDAVRecursiveContainerSyncTaskGroup *)v45 setNextCTag:v42];
  if (v17)
  {
    v43 = v17;
  }

  else
  {
    v43 = @"ServerDoesNotSupportPTags";
  }

  v10 = v46;
  nextPTag = v45->_nextPTag;
  v45->_nextPTag = &v43->isa;

  [(CoreDAVRecursiveContainerSyncTaskGroup *)v45 _getItemTags];
  v9 = v47;
  v8 = v48;
LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_getTask:(id)a3 finishedWithParsedContents:(id)a4 deletedItems:(id)a5 error:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v9])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v9];
    if (v11)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v11];
      goto LABEL_46;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    v19 = v18;
    if (isKindOfClass & 1) != 0 || (v18)
    {
      v33 = [v9 missingURLs];
      if ([v33 count])
      {
        v46 = v10;
        if (isKindOfClass)
        {
          v34 = [(CoreDAVRecursiveContainerSyncTaskGroup *)self copyFolderMultiGetTaskWithURLs:v33];
        }

        else
        {
          v34 = [(CoreDAVRecursiveContainerSyncTaskGroup *)self copyMultiGetTaskWithURLs:v33];
        }

        v35 = v34;
        if (!v34)
        {
          [CoreDAVRecursiveContainerSyncTaskGroup _getTask:finishedWithParsedContents:deletedItems:error:];
        }

        v36 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v38 = [v36 logHandleForAccountInfoProvider:WeakRetained];

        if (v38)
        {
          v39 = v9;
          v40 = v38;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v52 = v35;
            v53 = 2048;
            v54 = [v33 count];
            _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_INFO, "%@ missed %lu items - resubmitting", buf, 0x16u);
          }

          v9 = v39;
        }

        [v35 setDelegate:self];
        v41 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        [v35 setAccountInfoProvider:v41];

        [v35 setTimeoutInterval:self->super._timeoutInterval];
        [(NSMutableArray *)self->_unsubmittedTasks addObject:v35];

        v10 = v46;
      }

      v11 = 0;
      if (isKindOfClass)
      {
        goto LABEL_12;
      }
    }

    else if (isKindOfClass)
    {
LABEL_12:
      v45 = v10;
      v20 = [v10 allObjects];
      v21 = [v20 mutableCopy];

      [v21 sortUsingComparator:&__block_literal_global_65];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v48;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            if ([v27 isUnauthenticated])
            {
              v28 = +[CoreDAVLogging sharedLogging];
              v29 = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v30 = [v28 logHandleForAccountInfoProvider:v29];

              if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v52 = v27;
                _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Folder Info for item %@", buf, 0xCu);
              }
            }

            else
            {
              v28 = [(CoreDAVTaskGroup *)self delegate];
              [v28 recursiveContainerSyncTask:self receivedAddedOrModifiedFolder:v27];
            }

            if (objc_opt_respondsToSelector())
            {
              v31 = [v27 childrenOrder];
              v32 = [v27 serverID];
              [(CoreDAVRecursiveContainerSyncTaskGroup *)self _foundChildrenOrder:v31 inFolderWithURL:v32];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v24);
      }

      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if (![(NSMutableSet *)self->super._outstandingTasks count])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _taskGroupSuccessfullyFinishedWithContents:0];
      }

      v9 = v44;
      v10 = v45;
      v11 = 0;
      goto LABEL_46;
    }

    if (v19)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if ([(NSMutableSet *)self->super._outstandingTasks count])
      {
        v42 = [(CoreDAVTaskGroup *)self delegate];
        [v42 recursiveContainerSyncTask:self retrievedAddedOrModifiedActions:v10 removed:0];
      }

      else
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _taskGroupSuccessfullyFinishedWithContents:v10];
      }
    }
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:v9]& 1) == 0)
  {
    v12 = +[CoreDAVLogging sharedLogging];
    v13 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:v13];

    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      v52 = v9;
      v53 = 2112;
      v54 = outstandingTasks;
      v55 = 2112;
      v56 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }
  }

LABEL_46:

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __97__CoreDAVRecursiveContainerSyncTaskGroup__getTask_finishedWithParsedContents_deletedItems_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 url];
  v6 = [v5 pathComponents];
  v7 = [v6 count];

  v8 = [v4 url];

  v9 = [v8 pathComponents];
  v10 = [v9 count];

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

- (id)copyMultiGetTaskWithURLs:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "copyMultiGetTaskWithURLs: to be implemented by subclass %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)copyFolderMultiGetTaskWithURLs:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "copyFolderMultiGetTaskWithURLs: to be implemented by subclass %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)dataContentType
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "dataContentType to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)shouldSyncChildWithResourceType:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "shouldSyncChildWithResourceType: to be implemented by subclass %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)initWithFolderURL:previousCTag:previousPTag:previousSyncToken:actions:syncItemOrder:context:accountInfoProvider:taskManager:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"CoreDAVRecursiveContainerSyncTaskGroup.m" lineNumber:65 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];
}

- (void)_getTask:finishedWithParsedContents:deletedItems:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end