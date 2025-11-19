@interface CoreDAVContainerInfoTaskGroup
- (CoreDAVContainerInfoTaskGroup)initWithAccountInfoProvider:(id)a3 containerURLs:(id)a4 taskManager:(id)a5;
- (NSString)description;
- (id)_copyContainerWithURL:(id)a3 andProperties:(id)a4;
- (void)_getContainerHomeSet;
- (void)_getContainerTopLevelInfo;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)startTaskGroup;
- (void)taskGroupWillCancelWithError:(id)a3;
@end

@implementation CoreDAVContainerInfoTaskGroup

- (CoreDAVContainerInfoTaskGroup)initWithAccountInfoProvider:(id)a3 containerURLs:(id)a4 taskManager:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CoreDAVContainerInfoTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v13 initWithAccountInfoProvider:a3 taskManager:a5];
  if (v9)
  {
    v10 = [v8 mutableCopy];
    containerURLs = v9->_containerURLs;
    v9->_containerURLs = v10;

    [(CoreDAVContainerInfoTaskGroup *)v9 setContainerInfoDepth:3];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: Phase %d URLs %@", v5, self, self->_phase, self->_containerURLs];

  return v6;
}

- (void)startTaskGroup
{
  containerURLs = self->_containerURLs;
  if (containerURLs && [(NSMutableSet *)containerURLs count])
  {

    [(CoreDAVContainerInfoTaskGroup *)self _getContainerTopLevelInfo];
  }

  else
  {

    [(CoreDAVContainerInfoTaskGroup *)self _getContainerHomeSet];
  }
}

- (void)taskGroupWillCancelWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  v5 = self;
  v6 = [(CoreDAVTaskGroup *)v5 delegate];
  [v6 containerInfoTask:v5 completedWithContainers:0 error:v4];
  v7.receiver = v5;
  v7.super_class = CoreDAVContainerInfoTaskGroup;
  [(CoreDAVTaskGroup *)&v7 taskGroupWillCancelWithError:v4];
}

- (void)_getContainerHomeSet
{
  self->_phase = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v9 CDVAddItemParserMappingWithNameSpace:self->_appSpecificHomeSetPropNameSpace name:self->_appSpecificHomeSetPropName parseClass:objc_opt_class()];
  v3 = [CoreDAVPropFindTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v5 = [WeakRetained principalURL];
  v6 = [(CoreDAVPropFindTask *)v3 initWithPropertiesToFind:v9 atURL:v5 withDepth:2];

  [(NSMutableSet *)self->super._outstandingTasks addObject:v6];
  [(CoreDAVTask *)v6 setDelegate:self];
  v7 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v6 setAccountInfoProvider:v7];

  [(CoreDAVTask *)v6 setTimeoutInterval:self->super._timeoutInterval];
  v8 = objc_loadWeakRetained(&self->super._taskManager);
  [v8 submitQueuedCoreDAVTask:v6];
}

- (void)_getContainerTopLevelInfo
{
  v18 = *MEMORY[0x277D85DE8];
  self->_phase = 1;
  v3 = [(CoreDAVContainerInfoTaskGroup *)self _copyContainerParserMappings];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_containerURLs;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [[CoreDAVPropFindTask alloc] initWithPropertiesToFind:v3 atURL:*(*(&v13 + 1) + 8 * v7) withDepth:[(CoreDAVContainerInfoTaskGroup *)self containerInfoDepthForURL:*(*(&v13 + 1) + 8 * v7)]];
        [(NSMutableSet *)self->super._outstandingTasks addObject:v8];
        [(CoreDAVTask *)v8 setDelegate:self];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        [(CoreDAVTask *)v8 setAccountInfoProvider:WeakRetained];

        [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
        v10 = objc_loadWeakRetained(&self->super._taskManager);
        [v10 submitQueuedCoreDAVTask:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v112 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:v8])
  {
    goto LABEL_82;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:v8];
  if (v10)
  {
    [(CoreDAVTaskGroup *)self bailWithError:v10];
    goto LABEL_82;
  }

  phase = self->_phase;
  if (phase == 1)
  {
    v85 = v8;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v58 = v9;
    v59 = [v58 countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v59)
    {
      v60 = v59;
      v79 = v9;
      v89 = 0;
      v61 = *v94;
      do
      {
        v62 = 0;
        v91 = v60;
        do
        {
          if (*v94 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v93 + 1) + 8 * v62);
          v64 = [v63 firstHref];
          v65 = [v64 payloadAsFullURL];

          if (v65)
          {
            v66 = [v63 successfulPropertiesToValues];
            v67 = [(CoreDAVContainerInfoTaskGroup *)self _copyContainerWithURL:v65 andProperties:v66];
            if ([v67 isUnauthenticated])
            {
              v68 = v61;
              v69 = v58;
              v70 = +[CoreDAVLogging sharedLogging];
              WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v72 = [v70 logHandleForAccountInfoProvider:WeakRetained];

              if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2452FB000, v72, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Collection", buf, 2u);
              }

              v58 = v69;
              v61 = v68;
              v60 = v91;
            }

            else
            {
              containers = self->_containers;
              if (!containers)
              {
                v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v76 = self->_containers;
                self->_containers = v75;

                containers = self->_containers;
              }

              [(NSMutableSet *)containers addObject:v67];
              v89 = 1;
            }
          }

          else
          {
            v66 = +[CoreDAVLogging sharedLogging];
            v73 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v67 = [v66 logHandleForAccountInfoProvider:v73];

            if (v67 && os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v108 = v63;
              _os_log_impl(&dword_2452FB000, v67, OS_LOG_TYPE_DEFAULT, "Could not find the first HREF's URL. Response is %@", buf, 0xCu);
            }
          }

          ++v62;
        }

        while (v60 != v62);
        v60 = [v58 countByEnumeratingWithState:&v93 objects:v105 count:16];
      }

      while (v60);

      v9 = v79;
      if (v89)
      {
        v8 = v85;
        v10 = 0;
        if (![(NSMutableSet *)self->super._outstandingTasks count])
        {
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __68__CoreDAVContainerInfoTaskGroup_propFindTask_parsedResponses_error___block_invoke;
          v92[3] = &unk_278E30F18;
          v92[4] = self;
          [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v92];
        }

        goto LABEL_82;
      }
    }

    else
    {
    }

    [(CoreDAVTaskGroup *)self bailWithError:0];
    v8 = v85;
    goto LABEL_81;
  }

  v10 = 0;
  if (phase)
  {
    goto LABEL_82;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  containerURLs = self->_containerURLs;
  self->_containerURLs = v12;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (!v15)
  {

    goto LABEL_78;
  }

  v16 = v15;
  v78 = v9;
  v84 = v8;
  v83 = 0;
  v90 = *v102;
  v86 = v14;
  do
  {
    v17 = 0;
    v87 = v16;
    do
    {
      if (*v102 != v90)
      {
        objc_enumerationMutation(v14);
      }

      v18 = [*(*(&v101 + 1) + 8 * v17) successfulPropertiesToValues];
      v19 = [v18 CDVObjectForKeyWithNameSpace:self->_appSpecificHomeSetPropNameSpace andName:self->_appSpecificHomeSetPropName];
      v20 = v19;
      if (!v19)
      {
        v22 = +[CoreDAVLogging sharedLogging];
        v28 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v24 = [v22 logHandleForAccountInfoProvider:v28];

        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v108 = v18;
          v25 = v24;
          v26 = "Got malformed xml from server. Found Values are %@";
          v27 = 12;
LABEL_19:
          _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
        }

LABEL_20:

        goto LABEL_51;
      }

      v21 = [v19 unauthenticated];

      if (v21)
      {
        v22 = +[CoreDAVLogging sharedLogging];
        v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v24 = [v22 logHandleForAccountInfoProvider:v23];

        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = v24;
          v26 = "Not authenticated to get Container set";
          v27 = 2;
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      v29 = [v20 hrefs];
      v30 = [v29 count];

      if (!v30)
      {
        v39 = +[CoreDAVLogging sharedLogging];
        v40 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v35 = [v39 logHandleForAccountInfoProvider:v40];

        if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v108 = v20;
          _os_log_impl(&dword_2452FB000, v35, OS_LOG_TYPE_DEFAULT, "Got malformed xml from server. Container set %@", buf, 0xCu);
        }

        goto LABEL_42;
      }

      v31 = [v20 hrefs];
      v32 = [v31 anyObject];
      v33 = [v32 payloadAsFullURL];

      v34 = [v84 url];
      v35 = [v34 CDVServerURL];

      v88 = v33;
      v36 = [v33 CDVServerURL];
      if (([v35 isEqual:v36]& 1) == 0)
      {
        v37 = [v36 scheme];
        v38 = [v35 scheme];
        if ([v37 isEqualToString:v38])
        {

LABEL_29:
          v42 = [v36 host];
          v43 = [v35 host];
          v44 = [v42 isEqualToString:v43];

          if (v44)
          {
            goto LABEL_41;
          }

          v45 = +[CoreDAVLogging sharedLogging];
          v46 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v47 = [v45 logHandleForAccountInfoProvider:v46];

          if (v47)
          {
            v48 = v47;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v82 = [v35 host];
              v80 = [v36 host];
              *buf = 138412546;
              v108 = v82;
              v109 = 2112;
              v110 = v80;
              _os_log_impl(&dword_2452FB000, v48, OS_LOG_TYPE_DEFAULT, "HomeSet is in another castle.  Was %@, is now %@", buf, 0x16u);
            }
          }

          v49 = [v84 accountInfoProvider];
          v50 = objc_opt_respondsToSelector();

          if ((v50 & 1) == 0)
          {
            goto LABEL_41;
          }

          v51 = [v84 accountInfoProvider];
          [v51 noteHomeSetOnDifferentHost:v36];
        }

        else
        {
          v41 = [v36 scheme];
          v81 = [v41 isEqualToString:@"https"];

          if (v81)
          {
            goto LABEL_29;
          }

          v51 = +[CoreDAVLogging sharedLogging];
          v52 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v53 = [v51 logHandleForAccountInfoProvider:v52];

          if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v108 = v36;
            _os_log_impl(&dword_2452FB000, v53, OS_LOG_TYPE_DEFAULT, "Ignoring host change to: %@ because it sends it to an insecure URL.", buf, 0xCu);
          }
        }
      }

LABEL_41:

      v39 = v88;
LABEL_42:

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v22 = [v20 hrefsAsFullURLs];
      v54 = [v22 countByEnumeratingWithState:&v97 objects:v106 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v98;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v98 != v56)
            {
              objc_enumerationMutation(v22);
            }

            [(NSMutableSet *)self->_containerURLs addObject:*(*(&v97 + 1) + 8 * i)];
          }

          v55 = [v22 countByEnumeratingWithState:&v97 objects:v106 count:16];
        }

        while (v55);
        v83 = 1;
      }

      v14 = v86;
      v16 = v87;
LABEL_51:

      ++v17;
    }

    while (v17 != v16);
    v16 = [v14 countByEnumeratingWithState:&v101 objects:v111 count:16];
  }

  while (v16);

  v8 = v84;
  v9 = v78;
  if (v83)
  {
    [(CoreDAVContainerInfoTaskGroup *)self _getContainerTopLevelInfo];
    goto LABEL_81;
  }

LABEL_78:
  [(CoreDAVTaskGroup *)self bailWithError:0];
LABEL_81:
  v10 = 0;
LABEL_82:

  v77 = *MEMORY[0x277D85DE8];
}

void __68__CoreDAVContainerInfoTaskGroup_propFindTask_parsedResponses_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 containerInfoTask:*(a1 + 32) completedWithContainers:*(*(a1 + 32) + 104) error:0];
}

- (id)_copyContainerWithURL:(id)a3 andProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CoreDAVContainer alloc] initWithURL:v6 andProperties:v5];

  return v7;
}

@end