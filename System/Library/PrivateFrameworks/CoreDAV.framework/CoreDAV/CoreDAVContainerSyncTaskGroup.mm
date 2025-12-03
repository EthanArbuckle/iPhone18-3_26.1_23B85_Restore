@interface CoreDAVContainerSyncTaskGroup
+ (BOOL)_isInsufficientStorage:(id)storage;
- (BOOL)isWhitelistedError:(id)error;
- (Class)bulkChangeTaskClass;
- (CoreDAVContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)provider taskManager:(id)self0;
- (NSString)description;
- (id)copyGetEtagTaskWithPropertiesToFind:(id)find;
- (id)copyGetTaskWithURL:(id)l;
- (id)copyMultiGetTaskWithURLs:(id)ls;
- (id)copyPostTaskWithPayloadItem:(id)item forAction:(id)action;
- (id)copyPutTaskWithPayloadItem:(id)item forAction:(id)action;
- (id)dataContentType;
- (unint64_t)_submitTasks;
- (void)_bulkChange;
- (void)_bulkChangeTask:(id)task didFinishWithError:(id)error;
- (void)_configureMultiGet:(id)get;
- (void)_getCTag;
- (void)_getDataPayloads;
- (void)_getETags;
- (void)_getOrder;
- (void)_getTask:(id)task finishedWithParsedContents:(id)contents deletedItems:(id)items error:(id)error;
- (void)_postTask:(id)task didFinishWithError:(id)error;
- (void)_pushActions;
- (void)_sendNextBatch;
- (void)_syncReportTask:(id)task didFinishWithError:(id)error;
- (void)_tearDownAllUnsubmittedTasks;
- (void)bailWithError:(id)error;
- (void)cancelTaskGroup;
- (void)deleteResourceURLs:(id)ls;
- (void)deleteTask:(id)task completedWithError:(id)error;
- (void)getTask:(id)task data:(id)data error:(id)error;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)putTask:(id)task completedWithNewETag:(id)tag error:(id)error;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVContainerSyncTaskGroup

- (CoreDAVContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)provider taskManager:(id)self0
{
  lCopy = l;
  tagCopy = tag;
  tokenCopy = token;
  actionsCopy = actions;
  contextCopy = context;
  providerCopy = provider;
  managerCopy = manager;
  if ([(CoreDAVContainerSyncTaskGroup *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CoreDAVContainerSyncTaskGroup.m" lineNumber:67 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    selfCopy = 0;
  }

  else
  {
    v36.receiver = self;
    v36.super_class = CoreDAVContainerSyncTaskGroup;
    v24 = [(CoreDAVTaskGroup *)&v36 initWithAccountInfoProvider:providerCopy taskManager:managerCopy];
    v25 = v24;
    if (v24)
    {
      v24->_phase = 2;
      [(CoreDAVTaskGroup *)v24 setContext:contextCopy];
      objc_storeStrong(&v25->_folderURL, l);
      objc_storeStrong(&v25->_previousCTag, tag);
      objc_storeStrong(&v25->_previousSyncToken, token);
      v26 = [actionsCopy mutableCopy];
      actions = v25->_actions;
      v25->_actions = v26;

      v25->_multiGetBatchSize = 50;
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      unsubmittedTasks = v25->_unsubmittedTasks;
      v25->_unsubmittedTasks = v28;

      v25->_syncItemOrder = order;
      v25->_useMultiGet = 1;
      v25->_useSyncCollection = [(NSString *)v25->_previousSyncToken length]!= 0;
      v25->_maxIndependentTasks = 0;
      v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
      locationChangedURLs = v25->_locationChangedURLs;
      v25->_locationChangedURLs = v30;
    }

    self = v25;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: Phase %d Outstanding Tasks:\n%@", v5, self, self->_phase, self->super._outstandingTasks];

  return v6;
}

- (id)copyGetTaskWithURL:(id)l
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
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "copyGetTaskWithURL: to be implemented by subclass %{public}@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)copyMultiGetTaskWithURLs:(id)ls
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

- (Class)bulkChangeTaskClass
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
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "bulkChangeTaskClass to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)taskGroupWillCancelWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_4;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:@"CoreDAVErrorDomain"] & 1) == 0)
  {

    goto LABEL_6;
  }

  code = [v5 code];

  if (code != 1)
  {
LABEL_6:
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_7;
  }

LABEL_4:
  v8 = OS_LOG_TYPE_INFO;
LABEL_7:
  v9 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (v11 && os_log_type_enabled(v11, v8))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2452FB000, v11, v8, "Task group %@ will cancel with error %@", buf, 0x16u);
  }

  if (!v5)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  selfCopy2 = self;
  delegate = [(CoreDAVTaskGroup *)selfCopy2 delegate];
  [delegate containerSyncTask:selfCopy2 completedWithNewCTag:0 newSyncToken:0 addedOrModified:0 removed:0 error:v5];
  v15.receiver = selfCopy2;
  v15.super_class = CoreDAVContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v15 taskGroupWillCancelWithError:v5];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownAllUnsubmittedTasks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_unsubmittedTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) finishEarlyWithError:{v3, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_unsubmittedTasks removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)bailWithError:(id)error
{
  errorCopy = error;
  [(CoreDAVContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v5.receiver = self;
  v5.super_class = CoreDAVContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v5 bailWithError:errorCopy];
}

- (void)cancelTaskGroup
{
  [(CoreDAVContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v3.receiver = self;
  v3.super_class = CoreDAVContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

- (unint64_t)_submitTasks
{
  v55 = *MEMORY[0x277D85DE8];
  if (self->super._isCancelling)
  {
    v2 = 0;
    goto LABEL_32;
  }

  v4 = 160;
  v5 = [(NSMutableArray *)self->_unsubmittedTasks copy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  v7 = 0x27EE11000uLL;
  if (!v6)
  {
    v2 = 0;
    goto LABEL_22;
  }

  v8 = v6;
  v2 = 0;
  v9 = *v41;
  do
  {
    v10 = 0;
    v38 = v8;
    do
    {
      if (*v41 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v40 + 1) + 8 * v10);
      v12 = *(v7 + 3464);
      if (!*(&self->super.super.isa + v12))
      {
        [(NSMutableSet *)self->super._outstandingTasks addObject:*(*(&v40 + 1) + 8 * v10)];
        [*(&self->super.super.isa + v4) removeObject:v11];
        WeakRetained = objc_loadWeakRetained(&self->super._taskManager);
        [v11 submitWithTaskManager:WeakRetained];
LABEL_13:

        ++v2;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(NSMutableSet *)self->super._outstandingTasks count]>= *(&self->super.super.isa + v12))
        {
          goto LABEL_22;
        }

        [(NSMutableSet *)self->super._outstandingTasks addObject:v11];
        [*(&self->super.super.isa + v4) removeObject:v11];
        WeakRetained = objc_loadWeakRetained(&self->super._taskManager);
        [WeakRetained submitIndependentCoreDAVTask:v11];
        goto LABEL_13;
      }

      v14 = v9;
      v15 = v2;
      v16 = v4;
      v17 = v7;
      v18 = +[CoreDAVLogging sharedLogging];
      v19 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v20 = [v18 logHandleForAccountInfoProvider:v19];

      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v11;
        _os_log_impl(&dword_2452FB000, v20, OS_LOG_TYPE_ERROR, "Can't submit anything but CoreDAVTasks independently, %@", buf, 0xCu);
      }

      v7 = v17;
      v4 = v16;
      v2 = v15;
      v9 = v14;
      v8 = v38;
LABEL_18:
      ++v10;
    }

    while (v8 != v10);
    v8 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  }

  while (v8);
LABEL_22:

  v21 = *(&self->super.super.isa + *(v7 + 3464));
  v22 = +[CoreDAVLogging sharedLogging];
  v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v24 = [v22 logHandleForAccountInfoProvider:v23];

  if (v21)
  {
    if (v24)
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [(NSMutableSet *)self->super._outstandingTasks count];
        v29 = [*(&self->super.super.isa + v4) count];
        *buf = 138544386;
        v45 = v27;
        v46 = 2048;
        selfCopy2 = self;
        v48 = 2048;
        v49 = v2;
        v50 = 2048;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v30 = "<%{public}@: %p> Submitted %lu independent tasks, %lu active, %lu waiting.";
        v31 = v25;
        v32 = 52;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (v24)
  {
    v33 = v24;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v27 = NSStringFromClass(v34);
      v35 = [(NSMutableSet *)self->super._outstandingTasks count];
      *buf = 138544130;
      v45 = v27;
      v46 = 2048;
      selfCopy2 = self;
      v48 = 2048;
      v49 = v2;
      v50 = 2048;
      v51 = v35;
      v30 = "<%{public}@: %p> Submitted %lu queued tasks, %lu total tasks queued.";
      v31 = v33;
      v32 = 42;
LABEL_29:
      _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEBUG, v30, buf, v32);
    }

LABEL_30:
  }

LABEL_32:
  v36 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_getCTag
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void __41__CoreDAVContainerSyncTaskGroup__getCTag__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 containerSyncTask:*(a1 + 32) completedWithNewCTag:*(*(a1 + 32) + 104) newSyncToken:*(*(a1 + 32) + 128) addedOrModified:0 removed:0 error:0];
}

- (id)copyPutTaskWithPayloadItem:(id)item forAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  v8 = [CoreDAVPutTask alloc];
  dataPayload = [itemCopy dataPayload];
  dataContentType = [(CoreDAVContainerSyncTaskGroup *)self dataContentType];
  serverID = [itemCopy serverID];
  if ([actionCopy action])
  {
    syncKey = [itemCopy syncKey];
    v13 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:dataPayload dataContentType:dataContentType atURL:serverID previousETag:syncKey];
  }

  else
  {
    v13 = [(CoreDAVPostOrPutTask *)v8 initWithDataPayload:dataPayload dataContentType:dataContentType atURL:serverID previousETag:0];
  }

  [(CoreDAVActionBackedTask *)v13 setBackingAction:actionCopy];
  -[CoreDAVTask setIgnoresGuardianRestrictions:](v13, "setIgnoresGuardianRestrictions:", [actionCopy ignoresGuardianRestrictions]);

  return v13;
}

- (id)copyPostTaskWithPayloadItem:(id)item forAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  addMemberURL = [(CoreDAVContainerSyncTaskGroup *)self addMemberURL];
  if (addMemberURL)
  {
    [(CoreDAVContainerSyncTaskGroup *)self addMemberURL];
  }

  else
  {
    [itemCopy serverID];
  }
  v9 = ;

  v10 = [CoreDAVPostTask alloc];
  dataPayload = [itemCopy dataPayload];
  dataContentType = [(CoreDAVContainerSyncTaskGroup *)self dataContentType];
  v13 = [(CoreDAVPostTask *)v10 initWithDataPayload:dataPayload dataContentType:dataContentType atURL:v9 previousETag:0];

  [(CoreDAVActionBackedTask *)v13 setBackingAction:actionCopy];
  ignoresGuardianRestrictions = [actionCopy ignoresGuardianRestrictions];

  [(CoreDAVTask *)v13 setIgnoresGuardianRestrictions:ignoresGuardianRestrictions];
  return v13;
}

- (void)_pushActions
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_sendNextBatch
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CoreDAVContainerSyncTaskGroup.m" lineNumber:443 description:{@"Couldn't create task of class %@, things will go poorly", a3}];
}

uint64_t __47__CoreDAVContainerSyncTaskGroup__sendNextBatch__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 ignoresGuardianRestrictions];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_bulkChange
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:"-[CoreDAVContainerSyncTaskGroup _bulkChange]" object:v0 file:? lineNumber:? description:?];
}

- (id)copyGetEtagTaskWithPropertiesToFind:(id)find
{
  if (self->_useSyncCollection)
  {
    v4 = [[CoreDAVSyncReportTask alloc] initWithPropertiesToFind:find atURL:self->_folderURL withDepth:3 previousSyncToken:self->_previousSyncToken];
  }

  else
  {
    v4 = [[CoreDAVPropFindTask alloc] initWithPropertiesToFind:find atURL:self->_folderURL withDepth:3];
  }

  v5 = v4;

  return v5;
}

- (void)_getETags
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_getOrder
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_configureMultiGet:(id)get
{
  getCopy = get;
  objc_initWeak(&location, getCopy);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CoreDAVContainerSyncTaskGroup__configureMultiGet___block_invoke;
  v6[3] = &unk_278E30F68;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [getCopy setCompletionBlock:v6];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [getCopy setAccountInfoProvider:WeakRetained];

  [getCopy setTimeoutInterval:self->super._timeoutInterval];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__CoreDAVContainerSyncTaskGroup__configureMultiGet___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained error];

    if (!v4)
    {
      v5 = [v3 missingURLs];
      if ([v5 count])
      {
        v6 = [*(a1 + 32) copyMultiGetTaskWithURLs:v5];
        [*(a1 + 32) _configureMultiGet:v6];
        if (v6)
        {
          [*(*(a1 + 32) + 160) addObject:v6];
          v7 = +[CoreDAVLogging sharedLogging];
          v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
          v9 = [v7 logHandleForAccountInfoProvider:v8];

          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v16 = 138412546;
              v17 = v6;
              v18 = 2048;
              v19 = [v5 count];
              _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_INFO, "%@ missed %lu items - resubmitting", &v16, 0x16u);
            }
          }
        }
      }
    }

    v11 = *(a1 + 32);
    v12 = [v3 parsedContents];
    v13 = [v3 deletedURLs];
    v14 = [v3 error];
    [v11 _getTask:v3 finishedWithParsedContents:v12 deletedItems:v13 error:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteResourceURLs:(id)ls
{
  lsCopy = ls;
  delegate = [(CoreDAVTaskGroup *)self delegate];
  [delegate containerSyncTask:self retrievedAddedOrModifiedActions:0 removed:lsCopy];
}

- (void)_getDataPayloads
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __49__CoreDAVContainerSyncTaskGroup__getDataPayloads__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = v3[14];
  if (!v4)
  {
    v4 = v3[13];
  }

  v5 = v3[17];
  if (!v5)
  {
    v5 = v3[16];
  }

  v6 = v2;
  [v2 containerSyncTask:v3 completedWithNewCTag:v4 newSyncToken:v5 addedOrModified:0 removed:*(a1 + 40) error:0];
}

- (void)startTaskGroup
{
  if ([(NSMutableArray *)self->_actions count])
  {
    v3 = [(NSDictionary *)self->_bulkRequests objectForKey:@"crud"];
    v4 = [v3 objectForKey:@"max-resources"];

    if (v4)
    {
      self->_phase = 1;
LABEL_9:

      [(CoreDAVContainerSyncTaskGroup *)self _bulkChange];
      return;
    }

    v5 = [(NSDictionary *)self->_bulkRequests objectForKey:@"simple"];
    v6 = [v5 objectForKey:@"max-resources"];

    if (v6)
    {
      self->_phase = 0;
      goto LABEL_9;
    }

    [(CoreDAVContainerSyncTaskGroup *)self _pushActions];
  }

  else
  {

    [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
  }
}

- (BOOL)isWhitelistedError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

  v6 = v5 && [errorCopy code] >= 400 && objc_msgSend(errorCopy, "code") < 500;
  return v6;
}

+ (BOOL)_isInsufficientStorage:(id)storage
{
  storageCopy = storage;
  v4 = storageCopy;
  if (storageCopy)
  {
    domain = [storageCopy domain];
    if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
    {
      v6 = [v4 code] == 507;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)putTask:(id)task completedWithNewETag:(id)tag error:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tagCopy = tag;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if ([objc_opt_class() _isInsufficientStorage:errorCopy])
    {
      delegate = [(CoreDAVTaskGroup *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

        goto LABEL_13;
      }

      insufficientStorageRetryCount = self->_insufficientStorageRetryCount;

      if (insufficientStorageRetryCount <= 4)
      {
        delegate2 = [(CoreDAVTaskGroup *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate3 = [(CoreDAVTaskGroup *)self delegate];
          shouldSkipAddForOverQuota = [delegate3 shouldSkipAddForOverQuota];

          if (shouldSkipAddForOverQuota)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        delegate4 = [(CoreDAVTaskGroup *)self delegate];
        v16 = [delegate4 handleInsufficientStorageForTask:taskCopy inFolderWithURL:self->_folderURL];

        if (v16)
        {
          ++self->_insufficientStorageRetryCount;
          context = [v16 context];
          v18 = [(CoreDAVContainerSyncTaskGroup *)self copyPutTaskWithPayloadItem:context forAction:v16];

          [v18 setDelegate:self];
          WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
          [v18 setAccountInfoProvider:WeakRetained];

          [v18 setTimeoutInterval:self->super._timeoutInterval];
          if (self->_syncItemOrder)
          {
            v40 = v16;
            -[NSObject setAbsoluteOrder:](v18, "setAbsoluteOrder:", [v40 absoluteOrder]);
            priorURL = [v40 priorURL];

            [v18 setPriorOrderedURL:priorURL];
          }

          [(NSMutableArray *)self->_unsubmittedTasks insertObject:v18 atIndex:0];
          [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
LABEL_42:

          goto LABEL_43;
        }
      }
    }

LABEL_13:
    [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count]&& !self->super._isCancelling)
    {
      [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
    }

    delegate5 = [(CoreDAVTaskGroup *)self delegate];
    v22 = objc_opt_respondsToSelector();

    delegate6 = [(CoreDAVTaskGroup *)self delegate];
    delegate7 = delegate6;
    if (v22)
    {
      v25 = [delegate6 syncPutTask:taskCopy completedWithNewETag:tagCopy parentTaskGroup:self error:errorCopy];
    }

    else
    {
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_25;
      }

      delegate7 = [(CoreDAVTaskGroup *)self delegate];
      v25 = [delegate7 syncPutTask:taskCopy completedWithNewETag:tagCopy error:errorCopy];
    }

    v27 = v25;

    if (v27)
    {

      errorCopy = 0;
      if (![(CoreDAVContainerSyncTaskGroup *)self isWhitelistedError:0])
      {
LABEL_32:
        delegate8 = [(CoreDAVTaskGroup *)self delegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          delegate9 = [(CoreDAVTaskGroup *)self delegate];
          v34 = [taskCopy url];
          v35 = [delegate9 setLocalETag:tagCopy forItemWithURL:v34 inFolderWithURL:self->_folderURL];

          if ((v35 & 1) == 0)
          {
            v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
            [(CoreDAVContainerSyncTaskGroup *)self bailWithError:v36];
          }

          [(CoreDAVContainerSyncTaskGroup *)self applyAdditionalPropertiesFromPutTask:taskCopy];
        }

        errorCopy = 0;
        goto LABEL_43;
      }

LABEL_26:
      v28 = +[CoreDAVLogging sharedLogging];
      v29 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v30 = [v28 logHandleForAccountInfoProvider:v29];

      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 138412802;
        v44 = taskCopy;
        v45 = 2114;
        v46 = tagCopy;
        v47 = 2112;
        v48 = errorCopy;
        _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_DEFAULT, "putTask:%@ completedWithNewETag:%{public}@ error:%@ Ignoring", &v43, 0x20u);
      }

      errorCopy = 0;
      tagCopy = 0;
      goto LABEL_43;
    }

    if (!errorCopy)
    {
      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    }

LABEL_25:
    if (![(CoreDAVContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
    {
      if (errorCopy)
      {
        [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v16 = +[CoreDAVLogging sharedLogging];
    v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v18 = [v16 logHandleForAccountInfoProvider:v17];

    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v43 = 138412802;
      v44 = taskCopy;
      v45 = 2112;
      v46 = outstandingTasks;
      v47 = 2112;
      v48 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_DEFAULT, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v43, 0x20u);
    }

    goto LABEL_42;
  }

LABEL_43:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_postTask:(id)task didFinishWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count]&& !self->super._isCancelling)
    {
      [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
    }

    delegate = [(CoreDAVTaskGroup *)self delegate];
    v9 = objc_opt_respondsToSelector();

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v11 = delegate2;
    if (v9)
    {
      v12 = [delegate2 syncPostTask:taskCopy postedData:0 parentTaskGroup:self error:errorCopy];

      if (v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        if ([(CoreDAVContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
        {
          v21 = +[CoreDAVLogging sharedLogging];
          WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v23 = [v21 logHandleForAccountInfoProvider:WeakRetained];

          if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = 138412546;
            v26 = taskCopy;
            v27 = 2112;
            v28 = errorCopy;
            _os_log_impl(&dword_2452FB000, v23, OS_LOG_TYPE_ERROR, "postTask:%@ error:%@ Ignoring", &v25, 0x16u);
          }

          goto LABEL_22;
        }

        goto LABEL_24;
      }

      delegate3 = [(CoreDAVTaskGroup *)self delegate];
      v20 = [delegate3 syncPostTask:taskCopy data:0 error:errorCopy];

      if (v20)
      {
LABEL_22:

LABEL_23:
        [(CoreDAVContainerSyncTaskGroup *)self applyAdditionalPropertiesFromPostTask:taskCopy];
        errorCopy = 0;
        goto LABEL_26;
      }
    }

    if (errorCopy)
    {
      goto LABEL_25;
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
LABEL_24:
    if (!errorCopy)
    {
      goto LABEL_23;
    }

LABEL_25:
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
    goto LABEL_26;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v25 = 138412802;
      v26 = taskCopy;
      v27 = 2112;
      v28 = outstandingTasks;
      v29 = 2112;
      v30 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_DEFAULT, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v25, 0x20u);
    }
  }

LABEL_26:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_syncReportTask:(id)task didFinishWithError:(id)error
{
  v77 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (self->_phase == 4)
    {
      if ([taskCopy wasInvalidSyncToken])
      {
        [(CoreDAVContainerSyncTaskGroup *)self setPreviousSyncToken:0];
        [(CoreDAVContainerSyncTaskGroup *)self setUseSyncCollection:0];
        [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
      }

      else if ([taskCopy hadUnexpectedChangeOfSyncTokenWithZeroResponses] && (v14 = -[CoreDAVContainerSyncTaskGroup unexpectedEmptySyncReportResponseRetryAttemptCount](self, "unexpectedEmptySyncReportResponseRetryAttemptCount"), v14 < -[CoreDAVContainerSyncTaskGroup maxRetryOnUnexpectedSyncTokenChange](self, "maxRetryOnUnexpectedSyncTokenChange")))
      {
        v15 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v17 = [v15 logHandleForAccountInfoProvider:WeakRetained];

        if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_INFO, "Retrying a sync-report after unexpectedly receiving a new sync token but no new content", buf, 2u);
        }

        delegate = [(CoreDAVTaskGroup *)self delegate];
        v19 = objc_opt_respondsToSelector();

        if (v19)
        {
          delegate2 = [(CoreDAVTaskGroup *)self delegate];
          [delegate2 logRetryAfterEmptyResponseContainerSyncTask:self retryCount:{-[CoreDAVContainerSyncTaskGroup unexpectedEmptySyncReportResponseRetryAttemptCount](self, "unexpectedEmptySyncReportResponseRetryAttemptCount")}];
        }

        [(CoreDAVContainerSyncTaskGroup *)self setUnexpectedEmptySyncReportResponseRetryAttemptCount:[(CoreDAVContainerSyncTaskGroup *)self unexpectedEmptySyncReportResponseRetryAttemptCount]+ 1];
        [(CoreDAVContainerSyncTaskGroup *)self _getETags];
      }

      else if (errorCopy)
      {
        [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
      }

      else
      {
        if (!self->_urlToETag)
        {
          v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
          urlToETag = self->_urlToETag;
          self->_urlToETag = v21;
        }

        if ([taskCopy hadUnexpectedChangeOfSyncTokenWithZeroResponses])
        {
          v23 = +[CoreDAVLogging sharedLogging];
          v24 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v25 = [v23 logHandleForAccountInfoProvider:v24];

          if (v25)
          {
            v26 = v25;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              nextSyncToken = [taskCopy nextSyncToken];
              *buf = 138543618;
              v71 = nextSyncToken;
              v72 = 2048;
              unexpectedEmptySyncReportResponseRetryAttemptCount = [(CoreDAVContainerSyncTaskGroup *)self unexpectedEmptySyncReportResponseRetryAttemptCount];
              _os_log_impl(&dword_2452FB000, v26, OS_LOG_TYPE_ERROR, "Accepting a new sync token: %{public}@ despite zero responses, after retrying the original sync-report %lu additional times.", buf, 0x16u);
            }
          }

          delegate3 = [(CoreDAVTaskGroup *)self delegate];
          v29 = objc_opt_respondsToSelector();

          if (v29)
          {
            delegate4 = [(CoreDAVTaskGroup *)self delegate];
            [delegate4 logGaveUpAcceptedEmptyResponseContainerSyncTask:self retryCount:{-[CoreDAVContainerSyncTaskGroup unexpectedEmptySyncReportResponseRetryAttemptCount](self, "unexpectedEmptySyncReportResponseRetryAttemptCount")}];
          }
        }

        v63 = taskCopy;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        multiStatus = [taskCopy multiStatus];
        responses = [multiStatus responses];

        obj = responses;
        v33 = [responses countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (v33)
        {
          v34 = v33;
          v65 = *v67;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v67 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v66 + 1) + 8 * i);
              successfulPropertiesToValues = [v36 successfulPropertiesToValues];
              v38 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
              payloadAsString = [v38 payloadAsString];
              firstHref = [v36 firstHref];
              payloadAsFullURL = [firstHref payloadAsFullURL];

              LODWORD(firstHref) = [(CoreDAVContainerSyncTaskGroup *)self shouldFetchResourceWithEtag:payloadAsString propertiesToValues:successfulPropertiesToValues];
              [(CoreDAVContainerSyncTaskGroup *)self receivedPropertiesToValues:successfulPropertiesToValues forURL:payloadAsFullURL];
              if (firstHref)
              {
                if (payloadAsString)
                {
                  v42 = payloadAsFullURL == 0;
                }

                else
                {
                  v42 = 1;
                }

                if (v42)
                {
                  status = [v36 status];
                  payloadAsString2 = [status payloadAsString];
                  v45 = [payloadAsString2 CDVIsHTTPStatusLineWithStatusCode:404];

                  if ((v45 & 1) == 0)
                  {
                    v46 = +[CoreDAVLogging sharedLogging];
                    v47 = objc_loadWeakRetained(&self->super._accountInfoProvider);
                    v48 = [v46 logHandleForAccountInfoProvider:v47];

                    if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v71 = payloadAsString;
                      v72 = 2112;
                      unexpectedEmptySyncReportResponseRetryAttemptCount = payloadAsFullURL;
                      _os_log_impl(&dword_2452FB000, v48, OS_LOG_TYPE_DEFAULT, "Found an eTag without one or both of eTag (%{public}@) or url (%@). Dropping it on the floor", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v49 = [payloadAsFullURL isEqual:self->_folderURL];
                  if ((v49 & 1) == 0)
                  {
                    [(NSMutableDictionary *)self->_urlToETag setObject:payloadAsString forKey:payloadAsFullURL];
                  }
                }
              }
            }

            v34 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
          }

          while (v34);
        }

        taskCopy = v63;
        notFoundHREFs = [v63 notFoundHREFs];
        errorCopy = v62;
        if ([notFoundHREFs count])
        {
          syncReportDeletedURLs = self->_syncReportDeletedURLs;
          if (!syncReportDeletedURLs)
          {
            v52 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v53 = self->_syncReportDeletedURLs;
            self->_syncReportDeletedURLs = v52;

            syncReportDeletedURLs = self->_syncReportDeletedURLs;
          }

          [(NSMutableSet *)syncReportDeletedURLs unionSet:notFoundHREFs];
        }

        moreToSync = [v63 moreToSync];
        nextSyncToken2 = [v63 nextSyncToken];
        v56 = nextSyncToken2;
        if (moreToSync)
        {

          if (v56)
          {
            nextSyncToken3 = [v63 nextSyncToken];
            [(CoreDAVContainerSyncTaskGroup *)self setPreviousSyncToken:nextSyncToken3];
          }

          else
          {
            v59 = +[CoreDAVLogging sharedLogging];
            v60 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v61 = [v59 logHandleForAccountInfoProvider:v60];

            if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2452FB000, v61, OS_LOG_TYPE_DEFAULT, "Was told to sync more items, but got no new sync token.  Starting from scatch", buf, 2u);
            }

            [(CoreDAVContainerSyncTaskGroup *)self setPreviousSyncToken:0];
            [(CoreDAVContainerSyncTaskGroup *)self setUseSyncCollection:0];
            [(NSMutableDictionary *)self->_urlToETag removeAllObjects];
            [(NSMutableSet *)self->_syncReportDeletedURLs removeAllObjects];
          }

          [(CoreDAVContainerSyncTaskGroup *)self _getETags];
        }

        else
        {
          nextSyncToken = self->_nextSyncToken;
          self->_nextSyncToken = nextSyncToken2;

          [(CoreDAVContainerSyncTaskGroup *)self _getOrder];
        }
      }
    }
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v8 = +[CoreDAVLogging sharedLogging];
    v9 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:v9];

    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      v71 = taskCopy;
      v72 = 2112;
      unexpectedEmptySyncReportResponseRetryAttemptCount = outstandingTasks;
      v74 = 2112;
      v75 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_bulkChangeTask:(id)task didFinishWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (!self->_bulkChangeCheckCTag)
    {
      [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
      if (![(NSMutableSet *)self->super._outstandingTasks count]&& !self->super._isCancelling)
      {
        [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
      }
    }

    delegate = [(CoreDAVTaskGroup *)self delegate];
    v9 = objc_opt_respondsToSelector();

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v11 = delegate2;
    if (v9)
    {
      v12 = [delegate2 syncBulkChangeTask:taskCopy parentTaskGroup:self completedWithError:errorCopy];

      if (v12)
      {
LABEL_8:

LABEL_26:
        if (self->_bulkChangeCheckCTag)
        {
          nextCTag = [taskCopy nextCTag];
          [(CoreDAVContainerSyncTaskGroup *)self setBulkChangeCheckCTag:nextCTag];

          [(CoreDAVContainerSyncTaskGroup *)self _sendNextBatch];
        }

        errorCopy = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        if ([errorCopy code] == 412)
        {
          domain = [errorCopy domain];
          v22 = [domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

          if (v22)
          {
            v23 = +[CoreDAVLogging sharedLogging];
            WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v25 = [v23 logHandleForAccountInfoProvider:WeakRetained];

            if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              LOWORD(v28) = 0;
              _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_INFO, "BulkChangeTask told that our ctag was out of date.  Bailing on the group", &v28, 2u);
            }
          }
        }

        goto LABEL_24;
      }

      delegate3 = [(CoreDAVTaskGroup *)self delegate];
      v20 = [delegate3 syncBulkChangeTask:taskCopy error:errorCopy];

      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (errorCopy)
    {
      goto LABEL_25;
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
LABEL_24:
    if (!errorCopy)
    {
      goto LABEL_26;
    }

LABEL_25:
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
    goto LABEL_29;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v28 = 138412802;
      v29 = taskCopy;
      v30 = 2112;
      v31 = outstandingTasks;
      v32 = 2112;
      v33 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v28, 0x20u);
    }
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CoreDAVContainerSyncTaskGroup *)self _postTask:taskCopy didFinishWithError:errorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CoreDAVContainerSyncTaskGroup *)self _syncReportTask:taskCopy didFinishWithError:errorCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CoreDAVContainerSyncTaskGroup *)self _bulkChangeTask:taskCopy didFinishWithError:errorCopy];
      }

      else
      {
        v8 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = 138412290;
          v13 = taskCopy;
          _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Got a task completion invocation for a task I don't grok, %@", &v12, 0xCu);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteTask:(id)task completedWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
    {
      v13 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v15 = [v13 logHandleForAccountInfoProvider:WeakRetained];

      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        outstandingTasks = self->super._outstandingTasks;
        unsubmittedTasks = self->_unsubmittedTasks;
        v24 = 138412802;
        v25 = taskCopy;
        v26 = 2112;
        v27 = outstandingTasks;
        v28 = 2112;
        v29 = unsubmittedTasks;
        _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v24, 0x20u);
      }
    }

    goto LABEL_26;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
  if (![(NSMutableSet *)self->super._outstandingTasks count]&& !self->super._isCancelling)
  {
    [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
  }

  delegate = [(CoreDAVTaskGroup *)self delegate];
  v9 = objc_opt_respondsToSelector();

  delegate2 = [(CoreDAVTaskGroup *)self delegate];
  delegate3 = delegate2;
  if (v9)
  {
    v12 = [delegate2 syncDeleteTask:taskCopy parentTaskGroup:self completedWithError:errorCopy];
LABEL_14:
    v19 = v12;

    if (v19)
    {

      errorCopy = 0;
      if (![(CoreDAVContainerSyncTaskGroup *)self isWhitelistedError:0])
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (!errorCopy)
    {
      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    }

    goto LABEL_19;
  }

  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate3 = [(CoreDAVTaskGroup *)self delegate];
    v12 = [delegate3 syncDeleteTask:taskCopy error:errorCopy];
    goto LABEL_14;
  }

LABEL_19:
  if ([(CoreDAVContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
  {
LABEL_20:
    v20 = +[CoreDAVLogging sharedLogging];
    v21 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v22 = [v20 logHandleForAccountInfoProvider:v21];

    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = taskCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_DEFAULT, "deleteTask:%@ completedWithError:%@ Ignoring", &v24, 0x16u);
    }

    errorCopy = 0;
    goto LABEL_26;
  }

  if (errorCopy)
  {
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
  }

LABEL_26:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v102 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
    {
      selfCopy = self;
      v29 = errorCopy;
      v30 = +[CoreDAVLogging sharedLogging];
      v31 = selfCopy;
      WeakRetained = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
      v33 = [v30 logHandleForAccountInfoProvider:WeakRetained];

      if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        outstandingTasks = v31->super._outstandingTasks;
        unsubmittedTasks = v31->_unsubmittedTasks;
        *buf = 138412802;
        v95 = taskCopy;
        v96 = 2112;
        p_isa = &outstandingTasks->super.super.isa;
        v98 = 2112;
        v99 = unsubmittedTasks;
        _os_log_impl(&dword_2452FB000, v33, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
      }

      errorCopy = v29;
    }

    goto LABEL_81;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (([domain isEqualToString:@"CoreDAVErrorDomain"] & 1) == 0)
    {

LABEL_28:
      [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
      goto LABEL_81;
    }

    v12 = errorCopy;
    code = [errorCopy code];

    v14 = code == 2;
    errorCopy = v12;
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  phase = self->_phase;
  if (phase == 4)
  {
    multiStatus = [(CoreDAVContainerSyncTaskGroup *)taskCopy multiStatus];

    if (!multiStatus)
    {
      v59 = errorCopy;
      v60 = +[CoreDAVLogging sharedLogging];
      v61 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v62 = [v60 logHandleForAccountInfoProvider:v61];

      if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2452FB000, v62, OS_LOG_TYPE_DEFAULT, "No responses when fetching current etags. Giving up.", buf, 2u);
      }

      v63 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
      [(CoreDAVContainerSyncTaskGroup *)self bailWithError:v63];

      errorCopy = v59;
      goto LABEL_81;
    }

    if (!self->_urlToETag)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      urlToETag = self->_urlToETag;
      self->_urlToETag = v37;
    }

    v77 = taskCopy;
    v78 = errorCopy;
    if (!self->_localItemURLOrder)
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      localItemURLOrder = self->_localItemURLOrder;
      self->_localItemURLOrder = v39;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = responsesCopy;
    v41 = [(CoreDAVContainerSyncTaskGroup *)obj countByEnumeratingWithState:&v83 objects:v100 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v84;
      selfCopy2 = self;
      do
      {
        v44 = 0;
        v81 = v42;
        do
        {
          if (*v84 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v83 + 1) + 8 * v44);
          firstHref = [v45 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          if (([payloadAsFullURL isEqual:self->_folderURL] & 1) == 0)
          {
            successfulPropertiesToValues = [v45 successfulPropertiesToValues];
            v49 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
            payloadAsString = [v49 payloadAsString];
            if (payloadAsFullURL)
            {
              [(NSMutableArray *)self->_localItemURLOrder addObject:payloadAsFullURL];
            }

            v51 = [(CoreDAVContainerSyncTaskGroup *)self shouldFetchResourceWithEtag:payloadAsString propertiesToValues:successfulPropertiesToValues];
            [(CoreDAVContainerSyncTaskGroup *)self receivedPropertiesToValues:successfulPropertiesToValues forURL:payloadAsFullURL];
            if (v51)
            {
              if (payloadAsFullURL && payloadAsString)
              {
                if (([payloadAsFullURL isEqual:self->_folderURL] & 1) == 0)
                {
                  [(NSMutableDictionary *)self->_urlToETag setObject:payloadAsString forKey:payloadAsFullURL];
                }
              }

              else
              {
                v52 = +[CoreDAVLogging sharedLogging];
                v53 = objc_loadWeakRetained(&self->super._accountInfoProvider);
                v54 = [v52 logHandleForAccountInfoProvider:v53];

                if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v95 = payloadAsString;
                  v96 = 2112;
                  p_isa = payloadAsFullURL;
                  _os_log_impl(&dword_2452FB000, v54, OS_LOG_TYPE_DEFAULT, "Found an eTag without one or both of eTag (%{public}@) or url (%@). Dropping it on the floor", buf, 0x16u);
                }

                self = selfCopy2;
              }
            }

            v42 = v81;
          }

          ++v44;
        }

        while (v42 != v44);
        v42 = [(CoreDAVContainerSyncTaskGroup *)obj countByEnumeratingWithState:&v83 objects:v100 count:16];
      }

      while (v42);
    }

    if ([(CoreDAVContainerSyncTaskGroup *)self shouldFetchMoreETags])
    {
      [(CoreDAVContainerSyncTaskGroup *)self _getETags];
    }

    else
    {
      [(CoreDAVContainerSyncTaskGroup *)self _getOrder];
    }

    taskCopy = v77;
LABEL_66:
    errorCopy = v78;
    goto LABEL_81;
  }

  if (phase != 3)
  {
    goto LABEL_81;
  }

  v78 = errorCopy;
  if (![(CoreDAVContainerSyncTaskGroup *)responsesCopy count])
  {
    v55 = +[CoreDAVLogging sharedLogging];
    v56 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v57 = [v55 logHandleForAccountInfoProvider:v56];

    if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = responsesCopy;
      _os_log_impl(&dword_2452FB000, v57, OS_LOG_TYPE_DEFAULT, "We need exactly one ctag per container.  We got %@", buf, 0xCu);
    }

    v58 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:v58];

    goto LABEL_66;
  }

  selfCopy3 = self;
  v75 = responsesCopy;
  v76 = taskCopy;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v16 = responsesCopy;
  v17 = [(CoreDAVContainerSyncTaskGroup *)v16 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (!v17)
  {
    payloadAsString3 = 0;
    payloadAsString2 = 0;
    goto LABEL_68;
  }

  v18 = v17;
  payloadAsString3 = 0;
  payloadAsString2 = 0;
  v21 = *v91;
  do
  {
    v22 = 0;
    do
    {
      if (*v91 != v21)
      {
        objc_enumerationMutation(v16);
      }

      successfulPropertiesToValues2 = [*(*(&v90 + 1) + 8 * v22) successfulPropertiesToValues];
      v24 = successfulPropertiesToValues2;
      if (payloadAsString2)
      {
        if (payloadAsString3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = [successfulPropertiesToValues2 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"getctag"];
        payloadAsString2 = [v25 payloadAsString];

        if (payloadAsString3)
        {
          goto LABEL_16;
        }
      }

      v26 = [v24 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"sync-token"];
      payloadAsString3 = [v26 payloadAsString];

LABEL_16:
      ++v22;
    }

    while (v18 != v22);
    v27 = [(CoreDAVContainerSyncTaskGroup *)v16 countByEnumeratingWithState:&v90 objects:v101 count:16];
    v18 = v27;
  }

  while (v27);
LABEL_68:

  if (selfCopy3->_actionsOnly)
  {
    v64 = +[CoreDAVLogging sharedLogging];
    v65 = objc_loadWeakRetained(&selfCopy3->super._accountInfoProvider);
    v66 = [v64 logHandleForAccountInfoProvider:v65];

    taskCopy = v76;
    if (v66 && os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v95 = selfCopy3;
      _os_log_impl(&dword_2452FB000, v66, OS_LOG_TYPE_DEBUG, "%@: _actionsOnly and actions are complete, so I'm outta here", buf, 0xCu);
    }

    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __68__CoreDAVContainerSyncTaskGroup_propFindTask_parsedResponses_error___block_invoke;
    v88[3] = &unk_278E30F90;
    v88[4] = selfCopy3;
    v89 = payloadAsString2;
    [(CoreDAVTaskGroup *)selfCopy3 finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v88];

LABEL_78:
    responsesCopy = v75;
LABEL_79:
    errorCopy = v78;
  }

  else
  {
    taskCopy = v76;
    if (selfCopy3->_useSyncCollection)
    {
      if (payloadAsString2)
      {
        v67 = payloadAsString2;
      }

      else
      {
        v67 = @"ServerDoesNotSupportCTags";
      }

      [(CoreDAVContainerSyncTaskGroup *)selfCopy3 setNextCTag:v67];
      [(CoreDAVContainerSyncTaskGroup *)selfCopy3 _getETags];
      goto LABEL_78;
    }

    objc_storeStrong(&selfCopy3->_nextSyncToken, payloadAsString3);
    responsesCopy = v75;
    errorCopy = v78;
    if (payloadAsString2)
    {
      if ([(__CFString *)payloadAsString2 isEqualToString:selfCopy3->_previousCTag])
      {
        v69 = +[CoreDAVLogging sharedLogging];
        v70 = objc_loadWeakRetained(&selfCopy3->super._accountInfoProvider);
        v71 = [v69 logHandleForAccountInfoProvider:v70];

        if (v71 && os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          previousCTag = selfCopy3->_previousCTag;
          *buf = 138412546;
          v95 = selfCopy3;
          v96 = 2114;
          p_isa = previousCTag;
          _os_log_impl(&dword_2452FB000, v71, OS_LOG_TYPE_INFO, "%@: Finishing container sync early, as our cTag of %{public}@ says we're up to date", buf, 0x16u);
        }

        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __68__CoreDAVContainerSyncTaskGroup_propFindTask_parsedResponses_error___block_invoke_97;
        v87[3] = &unk_278E30F18;
        v87[4] = selfCopy3;
        [(CoreDAVTaskGroup *)selfCopy3 finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v87];
        goto LABEL_79;
      }

      v74 = selfCopy3;
      v73 = payloadAsString2;
    }

    else
    {
      v73 = @"ServerDoesNotSupportCTags";
      v74 = selfCopy3;
    }

    [(CoreDAVContainerSyncTaskGroup *)v74 setNextCTag:v73];
    [(CoreDAVContainerSyncTaskGroup *)selfCopy3 _getETags];
  }

LABEL_81:
  v68 = *MEMORY[0x277D85DE8];
}

void __68__CoreDAVContainerSyncTaskGroup_propFindTask_parsedResponses_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = @"ServerDoesNotSupportCTags";
  }

  [v2 containerSyncTask:*(a1 + 32) completedWithNewCTag:v3 newSyncToken:*(*(a1 + 32) + 128) addedOrModified:0 removed:0 error:0];
}

void __68__CoreDAVContainerSyncTaskGroup_propFindTask_parsedResponses_error___block_invoke_97(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 containerSyncTask:*(a1 + 32) completedWithNewCTag:*(*(a1 + 32) + 104) newSyncToken:*(*(a1 + 32) + 136) addedOrModified:0 removed:0 error:0];
}

- (void)getTask:(id)task data:(id)data error:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  errorCopy = error;
  phase = self->_phase;
  if (phase == 6)
  {
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    appSpecificDataItemResult = [taskCopy appSpecificDataItemResult];
    v14 = [v12 initWithObjects:{appSpecificDataItemResult, 0}];

    [(CoreDAVContainerSyncTaskGroup *)self _getTask:taskCopy finishedWithParsedContents:v14 deletedItems:0 error:errorCopy];
LABEL_16:

    goto LABEL_17;
  }

  if (phase != 5)
  {
    v14 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

    if (!v16 || !os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v17 = self->_phase;
    *buf = 67109120;
    LODWORD(v43) = v17;
    v18 = "CoreDAVGetTask finished in unexpected phase %d";
    v19 = v16;
    v20 = 8;
LABEL_14:
    _os_log_impl(&dword_2452FB000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_15:

    goto LABEL_16;
  }

  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) != 0)
    {
      goto LABEL_17;
    }

    v14 = +[CoreDAVLogging sharedLogging];
    v21 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v16 = [v14 logHandleForAccountInfoProvider:v21];

    if (!v16 || !os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    outstandingTasks = self->super._outstandingTasks;
    unsubmittedTasks = self->_unsubmittedTasks;
    *buf = 138412802;
    v43 = taskCopy;
    v44 = 2112;
    v45 = outstandingTasks;
    v46 = 2112;
    v47 = unsubmittedTasks;
    v18 = "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@";
    v19 = v16;
    v20 = 32;
    goto LABEL_14;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
  }

  else
  {
    v37 = taskCopy;
    if (!self->_localItemURLOrder)
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      localItemURLOrder = self->_localItemURLOrder;
      self->_localItemURLOrder = v25;
    }

    v36 = dataCopy;
    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    v27 = [v35 componentsSeparatedByString:{@", "}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v38 + 1) + 8 * i);
          if (([v32 hasSuffix:@"xbel"] & 1) == 0)
          {
            cDVStringByAppendingSlashIfNeeded = [v32 CDVStringByAppendingSlashIfNeeded];

            v32 = cDVStringByAppendingSlashIfNeeded;
          }

          v34 = [(NSURL *)self->_folderURL CDVfixedURLByAppendingPathComponent:v32];
          [(NSMutableArray *)self->_localItemURLOrder addObject:v34];
        }

        v29 = [v27 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v29);
    }

    [(CoreDAVContainerSyncTaskGroup *)self _getDataPayloads];

    dataCopy = v36;
    taskCopy = v37;
    errorCopy = 0;
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_getTask:(id)task finishedWithParsedContents:(id)contents deletedItems:(id)items error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  contentsCopy = contents;
  itemsCopy = items;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) != 0)
    {
      goto LABEL_12;
    }

    delegate = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v16 = [delegate logHandleForAccountInfoProvider:WeakRetained];

    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      selfCopy = taskCopy;
      v28 = 2112;
      v29 = outstandingTasks;
      v30 = 2112;
      v31 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }

LABEL_11:
    goto LABEL_12;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
    goto LABEL_12;
  }

  [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
  if ([(NSMutableSet *)self->super._outstandingTasks count])
  {
    delegate = [(CoreDAVTaskGroup *)self delegate];
    [delegate containerSyncTask:self retrievedAddedOrModifiedActions:contentsCopy removed:itemsCopy];
    goto LABEL_11;
  }

  v20 = +[CoreDAVLogging sharedLogging];
  v21 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v22 = [v20 logHandleForAccountInfoProvider:v21];

  if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "CoreDAVContainerSyncTaskGroup %@ finished its get task with no more outstanding tasks", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__CoreDAVContainerSyncTaskGroup__getTask_finishedWithParsedContents_deletedItems_error___block_invoke;
  v23[3] = &unk_278E30FB8;
  v23[4] = self;
  v24 = contentsCopy;
  v25 = itemsCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v23];

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
}

void __88__CoreDAVContainerSyncTaskGroup__getTask_finishedWithParsedContents_deletedItems_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 containerSyncTask:*(a1 + 32) completedWithNewCTag:*(*(a1 + 32) + 112) newSyncToken:*(*(a1 + 32) + 136) addedOrModified:*(a1 + 40) removed:*(a1 + 48) error:0];
}

- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    goto LABEL_15;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  [(CoreDAVContainerSyncTaskGroup *)self _submitTasks];
  if (![(NSMutableSet *)self->super._outstandingTasks count]&& !self->super._isCancelling)
  {
    [(CoreDAVContainerSyncTaskGroup *)self _getCTag];
  }

  delegate = [(CoreDAVTaskGroup *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v14 = [delegate2 syncPropPatchTask:taskCopy parsedResponses:responsesCopy parentTaskGroup:self completedWithError:errorCopy];

    if (v14)
    {

      errorCopy = 0;
      goto LABEL_15;
    }

    if (errorCopy)
    {
      goto LABEL_11;
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  }

  if (!errorCopy)
  {
    goto LABEL_15;
  }

LABEL_11:
  v15 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v17 = [v15 logHandleForAccountInfoProvider:WeakRetained];

  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412546;
    v20 = taskCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_ERROR, "propPatchTask: %@ error: %@", &v19, 0x16u);
  }

  [(CoreDAVContainerSyncTaskGroup *)self bailWithError:errorCopy];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

@end