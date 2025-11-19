@interface CoreDAVContainerInfoSyncTaskGroup
- (CoreDAVContainerInfoSyncProvider)delegate;
- (CoreDAVContainerInfoSyncTaskGroup)initWithContainerURL:(id)a3 previousSyncToken:(id)a4 accountInfoProvider:(id)a5 taskManager:(id)a6;
- (NSString)description;
- (void)setDelegate:(id)a3;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CoreDAVContainerInfoSyncTaskGroup

- (CoreDAVContainerInfoSyncTaskGroup)initWithContainerURL:(id)a3 previousSyncToken:(id)a4 accountInfoProvider:(id)a5 taskManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CoreDAVContainerInfoSyncTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:a5 taskManager:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_previousSyncToken, a4);
    objc_storeStrong(&v14->_containerURL, a3);
  }

  return v14;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = CoreDAVContainerInfoSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v3 setDelegate:a3];
}

- (CoreDAVContainerInfoSyncProvider)delegate
{
  v4.receiver = self;
  v4.super_class = CoreDAVContainerInfoSyncTaskGroup;
  v2 = [(CoreDAVTaskGroup *)&v4 delegate];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: URL %@", v5, self, self->_containerURL];

  return v6;
}

- (void)startTaskGroup
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVContainerInfoSyncTaskGroup *)self copyContainerParserMappings];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    containerURL = self->_containerURL;
    v12 = 138412290;
    v13 = containerURL;
    _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "Sending out a container info sync task to %@", &v12, 0xCu);
  }

  v8 = [[CoreDAVSyncReportTask alloc] initWithPropertiesToFind:v3 atURL:self->_containerURL withDepth:3 previousSyncToken:self->_previousSyncToken];
  [(NSMutableSet *)self->super._outstandingTasks addObject:v8];
  [(CoreDAVTask *)v8 setDelegate:self];
  v9 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v8 setAccountInfoProvider:v9];

  [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
  v10 = objc_loadWeakRetained(&self->super._taskManager);
  [v10 submitQueuedCoreDAVTask:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:v6])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
    v37 = v6;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v38 = v6;
    v8 = [v38 multiStatus];
    v9 = [v8 responses];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
    v36 = v7;
    if (v10)
    {
      v11 = v10;
      v39 = 0;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = [v14 firstHref];
          v16 = [v15 payloadAsFullURL];

          if (v16)
          {
            v17 = [v14 successfulPropertiesToValues];
            v18 = [objc_alloc(-[CoreDAVContainerInfoSyncTaskGroup containerItemClass](self "containerItemClass"))];
            if ([v18 isUnauthenticated])
            {
              v19 = +[CoreDAVLogging sharedLogging];
              WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v21 = [v19 logHandleForAccountInfoProvider:WeakRetained];

              if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Collection", buf, 2u);
              }
            }

            else
            {
              v23 = [v38 notFoundHREFs];
              v24 = [v23 containsObject:v16];

              if ((v24 & 1) == 0)
              {
                v25 = v39;
                if (!v39)
                {
                  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v39 = v25;
                [v25 addObject:v18];
              }
            }
          }

          else
          {
            v17 = +[CoreDAVLogging sharedLogging];
            v22 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v18 = [v17 logHandleForAccountInfoProvider:v22];

            if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v14;
              _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_DEFAULT, "Could not find the first HREF's URL. Response is %@", buf, 0xCu);
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v11);
    }

    else
    {
      v39 = 0;
    }

    v26 = [(CoreDAVContainerInfoSyncTaskGroup *)self delegate];
    v27 = [v38 notFoundHREFs];
    v28 = [v27 allObjects];
    [v26 containerInfoSyncTask:self retrievedAddedOrModifiedContainers:v39 removedContainerURLs:v28];

    if ([v38 moreToSync])
    {
      v29 = [v38 nextSyncToken];

      v30 = +[CoreDAVLogging sharedLogging];
      v31 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v32 = [v30 logHandleForAccountInfoProvider:v31];

      if (v29)
      {
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_INFO, "Server told us there was more container info data to fetch, so syncing again", buf, 2u);
        }

        v33 = [v38 nextSyncToken];
        previousSyncToken = self->_previousSyncToken;
        self->_previousSyncToken = v33;
      }

      else
      {
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_DEFAULT, "Was told to sync more items, but got no new sync token.  Starting from scratch", buf, 2u);
        }

        previousSyncToken = self->_previousSyncToken;
        self->_previousSyncToken = 0;
      }

      [(CoreDAVContainerInfoSyncTaskGroup *)self startTaskGroup];
      v7 = v36;
      v6 = v37;
    }

    else
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __61__CoreDAVContainerInfoSyncTaskGroup_task_didFinishWithError___block_invoke;
      v41[3] = &unk_278E30FB8;
      v41[4] = self;
      v42 = v38;
      v7 = v36;
      v43 = v36;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v41];

      v6 = v37;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __61__CoreDAVContainerInfoSyncTaskGroup_task_didFinishWithError___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nextSyncToken];
  [v4 containerInfoSyncTask:v2 completedWithNewSyncToken:v3 error:*(a1 + 48)];
}

@end