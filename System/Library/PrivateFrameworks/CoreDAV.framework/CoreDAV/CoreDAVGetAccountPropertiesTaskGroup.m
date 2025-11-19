@interface CoreDAVGetAccountPropertiesTaskGroup
- (CoreDAVGetAccountPropertiesTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (NSString)description;
- (id)_copyAccountPropertiesPropFindElements;
- (void)_setPropertiesFromParsedResponses:(id)a3;
- (void)_taskCompleted:(id)a3 withError:(id)a4;
- (void)coaxServerForPrincipalHeaders;
- (void)processPrincipalHeaders:(id)a3;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)searchPropertySetTask:(id)a3 completetWithPropertySearchSet:(id)a4 error:(id)a5;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroupWillCancelWithError:(id)a3;
@end

@implementation CoreDAVGetAccountPropertiesTaskGroup

- (CoreDAVGetAccountPropertiesTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v8.receiver = self;
  v8.super_class = CoreDAVGetAccountPropertiesTaskGroup;
  v4 = [(CoreDAVTaskGroup *)&v8 initWithAccountInfoProvider:a3 taskManager:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    redirectHistory = v4->_redirectHistory;
    v4->_redirectHistory = v5;

    v4->_fetchPrincipalSearchProperties = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CoreDAVGetAccountPropertiesTaskGroup:"];
  [v3 appendFormat:@"\n\tPrincipal url: %@", self->_principalURL];
  [v3 appendFormat:@"\n\tDisplay name: %@", self->_displayName];
  [v3 appendFormat:@"\n\tResource ID: %@", self->_resourceID];
  [v3 appendFormat:@"\n\tEmail addresses: %@", self->_emailAddresses];
  [v3 appendFormat:@"\n\tCollections: %@", self->_collections];

  return v3;
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
  [v6 getAccountPropertiesTask:v5 completedWithError:v4];
  v7.receiver = v5;
  v7.super_class = CoreDAVGetAccountPropertiesTaskGroup;
  [(CoreDAVTaskGroup *)&v7 taskGroupWillCancelWithError:v4];
}

- (id)_copyAccountPropertiesPropFindElements
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"principal-URL" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"displayname" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"resource-id" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"http://calendarserver.org/ns/" name:@"email-address-set" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"principal-collection-set" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"supported-report-set" parseClass:objc_opt_class()];
  return v2;
}

- (void)startTaskGroup
{
  v9 = [(CoreDAVGetAccountPropertiesTaskGroup *)self _copyAccountPropertiesPropFindElements];
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

- (void)_setPropertiesFromParsedResponses:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a3;
  v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v38)
  {
    v36 = *v46;
    v37 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v4;
        v5 = [*(*(&v45 + 1) + 8 * v4) successfulPropertiesToValues];
        v6 = [v5 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-URL"];
        v7 = [v6 href];
        v8 = [v7 payloadAsFullURL];
        principalURL = self->_principalURL;
        self->_principalURL = v8;

        v10 = [v5 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"displayname"];
        v11 = [v10 payloadAsString];
        displayName = self->_displayName;
        self->_displayName = v11;

        v13 = [v5 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resource-id"];
        v14 = [v13 href];
        v15 = [v14 payloadAsFullURL];
        resourceID = self->_resourceID;
        self->_resourceID = v15;

        v17 = [v5 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"email-address-set"];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = [v17 emailAddresses];
        v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v42;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v42 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v41 + 1) + 8 * i);
              if (!v21)
              {
                v25 = objc_alloc(MEMORY[0x277CBEB58]);
                v26 = [v17 emailAddresses];
                v21 = [v25 initWithCapacity:{objc_msgSend(v26, "count")}];
              }

              v27 = [v24 payloadAsString];
              [v21 addObject:v27];
            }

            v20 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v20);
        }

        else
        {
          v21 = 0;
        }

        self = v37;
        objc_storeStrong(&v37->_emailAddresses, v21);
        v28 = [v5 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-collection-set"];
        v29 = v28;
        if (v28 && ([v28 hrefs], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "count")))
        {
          [v29 hrefsAsFullURLs];
          v35 = v30 = 1;
          v31 = v35;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        objc_storeStrong(&v37->_collections, v31);
        if (v30)
        {
        }

        if (v29)
        {
        }

        v32 = [v5 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"supported-report-set"];
        v37->_isExpandPropertyReportSupported = [v32 supportsReportWithNameSpace:@"DAV:" andName:@"expand-property"];

        v4 = v40 + 1;
      }

      while (v40 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v38);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_taskCompleted:(id)a3 withError:(id)a4
{
  v5 = a4;
  if (![(NSMutableSet *)self->super._outstandingTasks count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__CoreDAVGetAccountPropertiesTaskGroup__taskCompleted_withError___block_invoke;
    v6[3] = &unk_278E30F90;
    v6[4] = self;
    v7 = v5;
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v7 delegateCallbackBlock:v6];
  }
}

void __65__CoreDAVGetAccountPropertiesTaskGroup__taskCompleted_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 getAccountPropertiesTask:*(a1 + 32) completedWithError:*(a1 + 40)];
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v9;
    _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_INFO, "Responses are: %@", buf, 0xCu);
  }

  if (!v10)
  {
    v46 = v9;
    [(CoreDAVGetAccountPropertiesTaskGroup *)self _setPropertiesFromParsedResponses:v9];
    v16 = [(CoreDAVGetAccountPropertiesTaskGroup *)self homeSet];
    v17 = [v16 anyObject];

    v18 = [v8 url];
    v19 = [v18 CDVServerURL];

    v20 = [v17 CDVServerURL];
    if (([(CoreDAVHeadTask *)v19 isEqual:v20]& 1) != 0 || [(CoreDAVGetAccountPropertiesTaskGroup *)self shouldIgnoreHomeSetOnDifferentHost])
    {
      goto LABEL_33;
    }

    v21 = [v20 scheme];
    v22 = [(CoreDAVHeadTask *)v19 scheme];
    if ([v21 isEqualToString:v22])
    {
    }

    else
    {
      v28 = [v20 scheme];
      LODWORD(v45) = [v28 isEqualToString:@"https"];

      if (!v45)
      {
        v39 = +[CoreDAVLogging sharedLogging];
        v40 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v41 = [v39 logHandleForAccountInfoProvider:v40];

        if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v20;
          _os_log_impl(&dword_2452FB000, v41, OS_LOG_TYPE_DEFAULT, "Ignoring host change to: %@ because it sends it to an insecure URL.", buf, 0xCu);
        }

LABEL_32:
LABEL_33:
        v42 = [v8 responseHeaders];
        if (-[CoreDAVGetAccountPropertiesTaskGroup forceOptionsRequest](self, "forceOptionsRequest") || ([v42 CDVObjectForKeyCaseInsensitive:@"DAV"], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
        {
          if ([(CoreDAVGetAccountPropertiesTaskGroup *)self forceOptionsRequest]|| [(CoreDAVGetAccountPropertiesTaskGroup *)self fetchPrincipalSearchProperties])
          {
            [(CoreDAVGetAccountPropertiesTaskGroup *)self coaxServerForPrincipalHeaders];
          }
        }

        else
        {
          [(CoreDAVGetAccountPropertiesTaskGroup *)self processPrincipalHeaders:v42];
        }

        v9 = v46;
        goto LABEL_40;
      }
    }

    v29 = [v20 host];
    v30 = [(CoreDAVHeadTask *)v19 host];
    v31 = [v29 isEqualToString:v30];

    if (v31)
    {
      goto LABEL_33;
    }

    v32 = +[CoreDAVLogging sharedLogging];
    v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v34 = [v32 logHandleForAccountInfoProvider:v33];

    if (v34)
    {
      v35 = v34;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(CoreDAVHeadTask *)v19 host];
        v45 = [v20 host];
        *buf = 138412546;
        v48 = v36;
        v49 = 2112;
        v50 = v45;
        _os_log_impl(&dword_2452FB000, v35, OS_LOG_TYPE_DEFAULT, "HomeSet is in another castle.  Was %@, is now %@", buf, 0x16u);
      }
    }

    v37 = [v8 accountInfoProvider];
    v38 = objc_opt_respondsToSelector();

    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    v39 = [v8 accountInfoProvider];
    [v39 noteHomeSetOnDifferentHost:v20];
    goto LABEL_32;
  }

  v14 = [v10 domain];
  if ([v14 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
  {
    v15 = [v10 code] == 405;
  }

  else
  {
    v15 = 0;
  }

  v23 = [v8 lastRedirectURL];
  v17 = v23;
  if (v15 && v23)
  {
    if (([(NSMutableSet *)self->_redirectHistory containsObject:v23]& 1) != 0)
    {
      v19 = +[CoreDAVLogging sharedLogging];
      v24 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v25 = [(CoreDAVHeadTask *)v19 logHandleForAccountInfoProvider:v24];

      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v17;
        _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_DEFAULT, "Received a cyclical redirect from a PROPFIND and HEAD:%@", buf, 0xCu);
      }
    }

    else
    {
      v19 = [(CoreDAVTask *)[CoreDAVHeadTask alloc] initWithURL:v17];
      [(NSMutableSet *)self->super._outstandingTasks addObject:v19];
      [(CoreDAVTask *)v19 setDelegate:self];
      v26 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      [(CoreDAVTask *)v19 setAccountInfoProvider:v26];

      [(CoreDAVTask *)v19 setTimeoutInterval:self->super._timeoutInterval];
      v27 = objc_loadWeakRetained(&self->super._taskManager);
      [v27 submitQueuedCoreDAVTask:v19];

      [(NSMutableSet *)self->_redirectHistory addObject:v17];
    }

LABEL_40:
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:v8];
  [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:v8 withError:v10];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)coaxServerForPrincipalHeaders
{
  v3 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v4 = [CoreDAVOptionsTask alloc];
  v5 = [v3 principalURL];
  v6 = [(CoreDAVTask *)v4 initWithURL:v5];

  [(CoreDAVTask *)v6 setAccountInfoProvider:v3];
  [(CoreDAVTaskGroup *)self timeoutInterval];
  [(CoreDAVTask *)v6 setTimeoutInterval:?];
  objc_initWeak(&location, v6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CoreDAVGetAccountPropertiesTaskGroup_coaxServerForPrincipalHeaders__block_invoke;
  v8[3] = &unk_278E30F68;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(CoreDAVTask *)v6 setCompletionBlock:v8];
  [(NSMutableSet *)self->super._outstandingTasks addObject:v6];
  WeakRetained = objc_loadWeakRetained(&self->super._taskManager);
  [WeakRetained submitQueuedCoreDAVTask:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__CoreDAVGetAccountPropertiesTaskGroup_coaxServerForPrincipalHeaders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v7 = WeakRetained;
    v4 = [WeakRetained responseHeaders];
    [v3 processPrincipalHeaders:v4];

    [*(*(a1 + 32) + 32) removeObject:v7];
    v5 = *(a1 + 32);
    v6 = [v7 error];
    [v5 _taskCompleted:v7 withError:v6];

    WeakRetained = v7;
  }
}

- (void)processPrincipalHeaders:(id)a3
{
  if ([(CoreDAVGetAccountPropertiesTaskGroup *)self fetchPrincipalSearchProperties])
  {
    v4 = [(CoreDAVGetAccountPropertiesTaskGroup *)self collections];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [CoreDAVPrincipalSearchPropertySetTask alloc];
      v7 = [(CoreDAVGetAccountPropertiesTaskGroup *)self collections];
      v8 = [v7 anyObject];
      v11 = [(CoreDAVPrincipalSearchPropertySetTask *)v6 initWithURL:v8];

      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      [(CoreDAVTask *)v11 setAccountInfoProvider:WeakRetained];

      [(CoreDAVTask *)v11 setTimeoutInterval:self->super._timeoutInterval];
      [(CoreDAVTask *)v11 setDelegate:self];
      [(NSMutableSet *)self->super._outstandingTasks addObject:v11];
      v10 = objc_loadWeakRetained(&self->super._taskManager);
      [v10 submitQueuedCoreDAVTask:v11];
    }
  }
}

- (void)searchPropertySetTask:(id)a3 completetWithPropertySearchSet:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v9;
    _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "PrincipalSearchProperties are: %@", &v19, 0xCu);
  }

  objc_storeStrong(&self->_principalSearchProperties, a4);
  if (v10)
  {
    v15 = +[CoreDAVLogging sharedLogging];
    v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v17 = [v15 logHandleForAccountInfoProvider:v16];

    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2452FB000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring error looking up PrincipalSearchPropertySet", &v19, 2u);
    }
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:v11];
  [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:v11 withError:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v13 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(CoreDAVGetAccountPropertiesTaskGroup *)self _copyAccountPropertiesPropFindElements];
    v8 = [CoreDAVPropFindTask alloc];
    v9 = [v13 lastRedirectURL];
    v10 = [(CoreDAVPropFindTask *)v8 initWithPropertiesToFind:v7 atURL:v9 withDepth:2];

    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    [(CoreDAVTask *)v10 setAccountInfoProvider:WeakRetained];

    [(CoreDAVTask *)v10 setTimeoutInterval:self->super._timeoutInterval];
    [(CoreDAVTask *)v10 setDelegate:self];
    [(NSMutableSet *)self->super._outstandingTasks addObject:v10];
    v12 = objc_loadWeakRetained(&self->super._taskManager);
    [v12 submitQueuedCoreDAVTask:v10];

    [(NSMutableSet *)self->super._outstandingTasks removeObject:v13];
    [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:v13 withError:v6];
  }
}

@end