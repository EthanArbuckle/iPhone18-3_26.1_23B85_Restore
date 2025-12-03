@interface CoreDAVBulkUploadTaskGroup
- (Class)multiPutTaskClass;
- (CoreDAVBulkUploadTaskGroup)initWithFolderURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions context:(id)context accountInfoProvider:(id)provider taskManager:(id)manager;
- (NSString)description;
- (void)_sendNextBatch;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CoreDAVBulkUploadTaskGroup

- (CoreDAVBulkUploadTaskGroup)initWithFolderURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions context:(id)context accountInfoProvider:(id)provider taskManager:(id)manager
{
  lCopy = l;
  tagCopy = tag;
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  contextCopy = context;
  providerCopy = provider;
  managerCopy = manager;
  if ([(CoreDAVBulkUploadTaskGroup *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CoreDAVBulkUploadTaskGroup.m" lineNumber:50 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class(), lCopy}];

    selfCopy = 0;
  }

  else
  {
    v45.receiver = self;
    v45.super_class = CoreDAVBulkUploadTaskGroup;
    v25 = [(CoreDAVTaskGroup *)&v45 initWithAccountInfoProvider:providerCopy taskManager:managerCopy];
    v26 = v25;
    if (v25)
    {
      [(CoreDAVTaskGroup *)v25 setContext:contextCopy];
      objc_storeStrong(&v26->_folderURL, l);
      objc_storeStrong(&v26->_lastKnownCTag, tag);
      v26->_multiPutBatchMaxNumResources = 25;
      v26->_multiPutBatchMaxSize = 0;
      v27 = [actionsCopy mutableCopy];
      remainingUUIDsToAddActions = v26->_remainingUUIDsToAddActions;
      v26->_remainingUUIDsToAddActions = v27;

      v29 = [deleteActionsCopy mutableCopy];
      remainingHREFsToModDeleteActions = v26->_remainingHREFsToModDeleteActions;
      v26->_remainingHREFsToModDeleteActions = v29;

      v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToHREF = v26->_uuidToHREF;
      v26->_uuidToHREF = v31;

      v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToETag = v26->_hrefToETag;
      v26->_hrefToETag = v33;

      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToErrorItems = v26->_uuidToErrorItems;
      v26->_uuidToErrorItems = v35;

      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToErrorItems = v26->_hrefToErrorItems;
      v26->_hrefToErrorItems = v37;

      v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToStatus = v26->_uuidToStatus;
      v26->_uuidToStatus = v39;

      v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToStatus = v26->_hrefToStatus;
      v26->_hrefToStatus = v41;
    }

    self = v26;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: NumRemainingAdds %d NumRemainingModDeletes %d", v5, self, -[NSMutableDictionary count](self->_remainingUUIDsToAddActions, "count"), -[NSMutableDictionary count](self->_remainingHREFsToModDeleteActions, "count")];

  return v6;
}

- (Class)multiPutTaskClass
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
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "multiPutTaskClass to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)_sendNextBatch
{
  v75 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_remainingUUIDsToAddActions count]|| [(NSMutableDictionary *)self->_remainingHREFsToModDeleteActions count])
  {
    v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = [(NSMutableDictionary *)self->_remainingHREFsToModDeleteActions allKeys];
    v3 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *v68;
      v46 = *v68;
      while (2)
      {
        v7 = 0;
        v8 = v5++;
        v44 = v8 + v3;
        v52 = v3;
        do
        {
          if (*v68 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v67 + 1) + 8 * v7);
          v10 = [(NSMutableDictionary *)self->_remainingHREFsToModDeleteActions objectForKey:v9];
          if ([v10 action] == 1)
          {
            [v10 context];
            v11 = v50 = v4;
            dataPayload = [v11 dataPayload];
            v13 = [dataPayload length];

            v6 = v46;
            v4 = v50;
          }

          else
          {
            v13 = 100;
          }

          v4 += v13;
          multiPutBatchMaxNumResources = self->_multiPutBatchMaxNumResources;
          if (multiPutBatchMaxNumResources)
          {
            v15 = multiPutBatchMaxNumResources >= v5;
          }

          else
          {
            v15 = 1;
          }

          if (!v15 || (multiPutBatchMaxSize = self->_multiPutBatchMaxSize) != 0 && multiPutBatchMaxSize * 0.8 < v4)
          {

            v17 = 1;
            goto LABEL_23;
          }

          [v54 setObject:v10 forKey:v9];

          ++v7;
          ++v5;
        }

        while (v52 != v7);
        v3 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        v17 = 0;
        v5 = v44;
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
      v4 = 0;
      v5 = 0;
    }

LABEL_23:
    v45 = v5;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    allKeys = [v54 allKeys];
    v19 = [allKeys countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          [(NSMutableDictionary *)self->_remainingHREFsToModDeleteActions removeObjectForKey:*(*(&v63 + 1) + 8 * i)];
        }

        v20 = [allKeys countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v20);
    }

    if ((v17 & 1) == 0)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obja = [(NSMutableDictionary *)self->_remainingUUIDsToAddActions allKeys];
      v53 = [obja countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v53)
      {
        v51 = *v60;
        while (2)
        {
          v23 = 0;
          v24 = v45 + 1;
          v45 += v53;
          do
          {
            v25 = v4;
            if (*v60 != v51)
            {
              objc_enumerationMutation(obja);
            }

            v26 = *(*(&v59 + 1) + 8 * v23);
            v27 = [(NSMutableDictionary *)self->_remainingUUIDsToAddActions objectForKey:v26];
            context = [v27 context];
            dataPayload2 = [context dataPayload];
            v30 = [dataPayload2 length];

            v31 = self->_multiPutBatchMaxNumResources;
            if (v31)
            {
              v32 = v31 >= v24;
            }

            else
            {
              v32 = 1;
            }

            if (!v32 || (v4 = v25 + v30, (v33 = self->_multiPutBatchMaxSize) != 0) && v33 * 0.8 < v4)
            {

              goto LABEL_47;
            }

            [v49 setObject:v27 forKey:v26];

            ++v23;
            ++v24;
          }

          while (v53 != v23);
          v53 = [obja countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    allKeys2 = [v49 allKeys];
    v35 = [allKeys2 countByEnumeratingWithState:&v55 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v56;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(allKeys2);
          }

          [(NSMutableDictionary *)self->_remainingUUIDsToAddActions removeObjectForKey:*(*(&v55 + 1) + 8 * j)];
        }

        v36 = [allKeys2 countByEnumeratingWithState:&v55 objects:v71 count:16];
      }

      while (v36);
    }

    v39 = [objc_alloc(-[CoreDAVBulkUploadTaskGroup multiPutTaskClass](self "multiPutTaskClass"))];
    [(NSMutableSet *)self->super._outstandingTasks addObject:v39];
    [v39 setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    [v39 setAccountInfoProvider:WeakRetained];

    [v39 setTimeoutInterval:self->super._timeoutInterval];
    v41 = objc_loadWeakRetained(&self->super._taskManager);
    [v41 submitQueuedCoreDAVTask:v39];

    v42 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_validCTag = 1;
    v43 = *MEMORY[0x277D85DE8];

    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  v8 = taskCopy;
  v9 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      uuidToHREF = [v8 uuidToHREF];
      hrefToETag = [v8 hrefToETag];
      v40 = 138412802;
      v41 = uuidToHREF;
      v42 = 2112;
      v43 = hrefToETag;
      v44 = 2112;
      v45 = errorCopy;
      _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "MultiPutTask finished.  uuidToHREF %@\nhrefToETAG %@\nerror %@", &v40, 0x20u);
    }
  }

  uuidToHREF = self->_uuidToHREF;
  uuidToHREF2 = [v8 uuidToHREF];
  [(NSMutableDictionary *)uuidToHREF addEntriesFromDictionary:uuidToHREF2];

  hrefToETag = self->_hrefToETag;
  hrefToETag2 = [v8 hrefToETag];
  [(NSMutableDictionary *)hrefToETag addEntriesFromDictionary:hrefToETag2];

  uuidToErrorItems = self->_uuidToErrorItems;
  uuidToErrorItems = [v8 uuidToErrorItems];
  [(NSMutableDictionary *)uuidToErrorItems addEntriesFromDictionary:uuidToErrorItems];

  hrefToErrorItems = self->_hrefToErrorItems;
  hrefToErrorItems = [v8 hrefToErrorItems];
  [(NSMutableDictionary *)hrefToErrorItems addEntriesFromDictionary:hrefToErrorItems];

  uuidToStatus = self->_uuidToStatus;
  uuidToStatus = [v8 uuidToStatus];
  [(NSMutableDictionary *)uuidToStatus addEntriesFromDictionary:uuidToStatus];

  hrefToStatus = self->_hrefToStatus;
  hrefToStatus = [v8 hrefToStatus];
  [(NSMutableDictionary *)hrefToStatus addEntriesFromDictionary:hrefToStatus];

  if (errorCopy)
  {
    if ([errorCopy code] == 412)
    {
      domain = [errorCopy domain];
      v28 = [domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

      if (v28)
      {
        v29 = +[CoreDAVLogging sharedLogging];
        v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v31 = [v29 logHandleForAccountInfoProvider:v30];

        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          LOWORD(v40) = 0;
          _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_INFO, "MultiPutTask told that our ctag was out of date.  Bailing on the group", &v40, 2u);
        }

        self->_validCTag = 0;
      }
    }

    [(CoreDAVTaskGroup *)self bailWithError:errorCopy];
  }

  else
  {
    nextCTag = [v8 nextCTag];
    v33 = [nextCTag length];

    if (v33)
    {
      nextCTag2 = [v8 nextCTag];
      [(CoreDAVBulkUploadTaskGroup *)self setNextCTag:nextCTag2];

      [(CoreDAVBulkUploadTaskGroup *)self _sendNextBatch];
    }

    else
    {
      v35 = +[CoreDAVLogging sharedLogging];
      v36 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v37 = [v35 logHandleForAccountInfoProvider:v36];

      if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_INFO, "Got no updated ctag from the server, bailing on the group", &v40, 2u);
      }

      self->_validCTag = 0;
      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:7 userInfo:0];
      [(CoreDAVTaskGroup *)self bailWithError:v38];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end