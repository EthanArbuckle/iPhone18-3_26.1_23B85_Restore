@interface CoreDAVBulkUploadTaskGroup
- (Class)multiPutTaskClass;
- (CoreDAVBulkUploadTaskGroup)initWithFolderURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 context:(id)a7 accountInfoProvider:(id)a8 taskManager:(id)a9;
- (NSString)description;
- (void)_sendNextBatch;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CoreDAVBulkUploadTaskGroup

- (CoreDAVBulkUploadTaskGroup)initWithFolderURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 context:(id)a7 accountInfoProvider:(id)a8 taskManager:(id)a9
{
  v44 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if ([(CoreDAVBulkUploadTaskGroup *)self isMemberOfClass:objc_opt_class()])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"CoreDAVBulkUploadTaskGroup.m" lineNumber:50 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class(), v44}];

    v24 = 0;
  }

  else
  {
    v45.receiver = self;
    v45.super_class = CoreDAVBulkUploadTaskGroup;
    v25 = [(CoreDAVTaskGroup *)&v45 initWithAccountInfoProvider:v21 taskManager:v22];
    v26 = v25;
    if (v25)
    {
      [(CoreDAVTaskGroup *)v25 setContext:v20];
      objc_storeStrong(&v26->_folderURL, a3);
      objc_storeStrong(&v26->_lastKnownCTag, a4);
      v26->_multiPutBatchMaxNumResources = 25;
      v26->_multiPutBatchMaxSize = 0;
      v27 = [v18 mutableCopy];
      remainingUUIDsToAddActions = v26->_remainingUUIDsToAddActions;
      v26->_remainingUUIDsToAddActions = v27;

      v29 = [v19 mutableCopy];
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
    v24 = self;
  }

  return v24;
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
            v12 = [v11 dataPayload];
            v13 = [v12 length];

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
    v18 = [v54 allKeys];
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
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
            objc_enumerationMutation(v18);
          }

          [(NSMutableDictionary *)self->_remainingHREFsToModDeleteActions removeObjectForKey:*(*(&v63 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
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
            v28 = [v27 context];
            v29 = [v28 dataPayload];
            v30 = [v29 length];

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
    v34 = [v49 allKeys];
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
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
            objc_enumerationMutation(v34);
          }

          [(NSMutableDictionary *)self->_remainingUUIDsToAddActions removeObjectForKey:*(*(&v55 + 1) + 8 * j)];
        }

        v36 = [v34 countByEnumeratingWithState:&v55 objects:v71 count:16];
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

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
  v8 = v6;
  v9 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 uuidToHREF];
      v14 = [v8 hrefToETag];
      v40 = 138412802;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "MultiPutTask finished.  uuidToHREF %@\nhrefToETAG %@\nerror %@", &v40, 0x20u);
    }
  }

  uuidToHREF = self->_uuidToHREF;
  v16 = [v8 uuidToHREF];
  [(NSMutableDictionary *)uuidToHREF addEntriesFromDictionary:v16];

  hrefToETag = self->_hrefToETag;
  v18 = [v8 hrefToETag];
  [(NSMutableDictionary *)hrefToETag addEntriesFromDictionary:v18];

  uuidToErrorItems = self->_uuidToErrorItems;
  v20 = [v8 uuidToErrorItems];
  [(NSMutableDictionary *)uuidToErrorItems addEntriesFromDictionary:v20];

  hrefToErrorItems = self->_hrefToErrorItems;
  v22 = [v8 hrefToErrorItems];
  [(NSMutableDictionary *)hrefToErrorItems addEntriesFromDictionary:v22];

  uuidToStatus = self->_uuidToStatus;
  v24 = [v8 uuidToStatus];
  [(NSMutableDictionary *)uuidToStatus addEntriesFromDictionary:v24];

  hrefToStatus = self->_hrefToStatus;
  v26 = [v8 hrefToStatus];
  [(NSMutableDictionary *)hrefToStatus addEntriesFromDictionary:v26];

  if (v7)
  {
    if ([v7 code] == 412)
    {
      v27 = [v7 domain];
      v28 = [v27 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

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

    [(CoreDAVTaskGroup *)self bailWithError:v7];
  }

  else
  {
    v32 = [v8 nextCTag];
    v33 = [v32 length];

    if (v33)
    {
      v34 = [v8 nextCTag];
      [(CoreDAVBulkUploadTaskGroup *)self setNextCTag:v34];

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