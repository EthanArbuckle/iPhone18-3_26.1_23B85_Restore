@interface CoreDAVGetAccountPropertiesTaskGroup
- (CoreDAVGetAccountPropertiesTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (NSString)description;
- (id)_copyAccountPropertiesPropFindElements;
- (void)_setPropertiesFromParsedResponses:(id)responses;
- (void)_taskCompleted:(id)completed withError:(id)error;
- (void)coaxServerForPrincipalHeaders;
- (void)processPrincipalHeaders:(id)headers;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)searchPropertySetTask:(id)task completetWithPropertySearchSet:(id)set error:(id)error;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVGetAccountPropertiesTaskGroup

- (CoreDAVGetAccountPropertiesTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = CoreDAVGetAccountPropertiesTaskGroup;
  v4 = [(CoreDAVTaskGroup *)&v8 initWithAccountInfoProvider:provider taskManager:manager];
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

- (void)taskGroupWillCancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  selfCopy = self;
  delegate = [(CoreDAVTaskGroup *)selfCopy delegate];
  [delegate getAccountPropertiesTask:selfCopy completedWithError:errorCopy];
  v7.receiver = selfCopy;
  v7.super_class = CoreDAVGetAccountPropertiesTaskGroup;
  [(CoreDAVTaskGroup *)&v7 taskGroupWillCancelWithError:errorCopy];
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
  _copyAccountPropertiesPropFindElements = [(CoreDAVGetAccountPropertiesTaskGroup *)self _copyAccountPropertiesPropFindElements];
  v3 = [CoreDAVPropFindTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  principalURL = [WeakRetained principalURL];
  v6 = [(CoreDAVPropFindTask *)v3 initWithPropertiesToFind:_copyAccountPropertiesPropFindElements atURL:principalURL withDepth:2];

  [(NSMutableSet *)self->super._outstandingTasks addObject:v6];
  [(CoreDAVTask *)v6 setDelegate:self];
  v7 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v6 setAccountInfoProvider:v7];

  [(CoreDAVTask *)v6 setTimeoutInterval:self->super._timeoutInterval];
  v8 = objc_loadWeakRetained(&self->super._taskManager);
  [v8 submitQueuedCoreDAVTask:v6];
}

- (void)_setPropertiesFromParsedResponses:(id)responses
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = responses;
  v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v38)
  {
    v36 = *v46;
    selfCopy = self;
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
        successfulPropertiesToValues = [*(*(&v45 + 1) + 8 * v4) successfulPropertiesToValues];
        v6 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-URL"];
        href = [v6 href];
        payloadAsFullURL = [href payloadAsFullURL];
        principalURL = self->_principalURL;
        self->_principalURL = payloadAsFullURL;

        v10 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"displayname"];
        payloadAsString = [v10 payloadAsString];
        displayName = self->_displayName;
        self->_displayName = payloadAsString;

        v13 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resource-id"];
        href2 = [v13 href];
        payloadAsFullURL2 = [href2 payloadAsFullURL];
        resourceID = self->_resourceID;
        self->_resourceID = payloadAsFullURL2;

        v17 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"email-address-set"];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        emailAddresses = [v17 emailAddresses];
        v19 = [emailAddresses countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                objc_enumerationMutation(emailAddresses);
              }

              v24 = *(*(&v41 + 1) + 8 * i);
              if (!v21)
              {
                v25 = objc_alloc(MEMORY[0x277CBEB58]);
                emailAddresses2 = [v17 emailAddresses];
                v21 = [v25 initWithCapacity:{objc_msgSend(emailAddresses2, "count")}];
              }

              payloadAsString2 = [v24 payloadAsString];
              [v21 addObject:payloadAsString2];
            }

            v20 = [emailAddresses countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v20);
        }

        else
        {
          v21 = 0;
        }

        self = selfCopy;
        objc_storeStrong(&selfCopy->_emailAddresses, v21);
        v28 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-collection-set"];
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

        objc_storeStrong(&selfCopy->_collections, v31);
        if (v30)
        {
        }

        if (v29)
        {
        }

        v32 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"supported-report-set"];
        selfCopy->_isExpandPropertyReportSupported = [v32 supportsReportWithNameSpace:@"DAV:" andName:@"expand-property"];

        v4 = v40 + 1;
      }

      while (v40 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v38);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_taskCompleted:(id)completed withError:(id)error
{
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks count])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__CoreDAVGetAccountPropertiesTaskGroup__taskCompleted_withError___block_invoke;
    v6[3] = &unk_278E30F90;
    v6[4] = self;
    v7 = errorCopy;
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v7 delegateCallbackBlock:v6];
  }
}

void __65__CoreDAVGetAccountPropertiesTaskGroup__taskCompleted_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 getAccountPropertiesTask:*(a1 + 32) completedWithError:*(a1 + 40)];
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  v11 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

  if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = responsesCopy;
    _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_INFO, "Responses are: %@", buf, 0xCu);
  }

  if (!errorCopy)
  {
    v46 = responsesCopy;
    [(CoreDAVGetAccountPropertiesTaskGroup *)self _setPropertiesFromParsedResponses:responsesCopy];
    homeSet = [(CoreDAVGetAccountPropertiesTaskGroup *)self homeSet];
    anyObject = [homeSet anyObject];

    v18 = [taskCopy url];
    cDVServerURL = [v18 CDVServerURL];

    cDVServerURL2 = [anyObject CDVServerURL];
    if (([(CoreDAVHeadTask *)cDVServerURL isEqual:cDVServerURL2]& 1) != 0 || [(CoreDAVGetAccountPropertiesTaskGroup *)self shouldIgnoreHomeSetOnDifferentHost])
    {
      goto LABEL_33;
    }

    scheme = [cDVServerURL2 scheme];
    scheme2 = [(CoreDAVHeadTask *)cDVServerURL scheme];
    if ([scheme isEqualToString:scheme2])
    {
    }

    else
    {
      scheme3 = [cDVServerURL2 scheme];
      LODWORD(host4) = [scheme3 isEqualToString:@"https"];

      if (!host4)
      {
        accountInfoProvider2 = +[CoreDAVLogging sharedLogging];
        v40 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v41 = [accountInfoProvider2 logHandleForAccountInfoProvider:v40];

        if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = cDVServerURL2;
          _os_log_impl(&dword_2452FB000, v41, OS_LOG_TYPE_DEFAULT, "Ignoring host change to: %@ because it sends it to an insecure URL.", buf, 0xCu);
        }

LABEL_32:
LABEL_33:
        responseHeaders = [taskCopy responseHeaders];
        if (-[CoreDAVGetAccountPropertiesTaskGroup forceOptionsRequest](self, "forceOptionsRequest") || ([responseHeaders CDVObjectForKeyCaseInsensitive:@"DAV"], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
        {
          if ([(CoreDAVGetAccountPropertiesTaskGroup *)self forceOptionsRequest]|| [(CoreDAVGetAccountPropertiesTaskGroup *)self fetchPrincipalSearchProperties])
          {
            [(CoreDAVGetAccountPropertiesTaskGroup *)self coaxServerForPrincipalHeaders];
          }
        }

        else
        {
          [(CoreDAVGetAccountPropertiesTaskGroup *)self processPrincipalHeaders:responseHeaders];
        }

        responsesCopy = v46;
        goto LABEL_40;
      }
    }

    host = [cDVServerURL2 host];
    host2 = [(CoreDAVHeadTask *)cDVServerURL host];
    v31 = [host isEqualToString:host2];

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
        host3 = [(CoreDAVHeadTask *)cDVServerURL host];
        host4 = [cDVServerURL2 host];
        *buf = 138412546;
        v48 = host3;
        v49 = 2112;
        v50 = host4;
        _os_log_impl(&dword_2452FB000, v35, OS_LOG_TYPE_DEFAULT, "HomeSet is in another castle.  Was %@, is now %@", buf, 0x16u);
      }
    }

    accountInfoProvider = [taskCopy accountInfoProvider];
    v38 = objc_opt_respondsToSelector();

    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    accountInfoProvider2 = [taskCopy accountInfoProvider];
    [accountInfoProvider2 noteHomeSetOnDifferentHost:cDVServerURL2];
    goto LABEL_32;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
  {
    v15 = [errorCopy code] == 405;
  }

  else
  {
    v15 = 0;
  }

  lastRedirectURL = [taskCopy lastRedirectURL];
  anyObject = lastRedirectURL;
  if (v15 && lastRedirectURL)
  {
    if (([(NSMutableSet *)self->_redirectHistory containsObject:lastRedirectURL]& 1) != 0)
    {
      cDVServerURL = +[CoreDAVLogging sharedLogging];
      v24 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v25 = [(CoreDAVHeadTask *)cDVServerURL logHandleForAccountInfoProvider:v24];

      if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = anyObject;
        _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_DEFAULT, "Received a cyclical redirect from a PROPFIND and HEAD:%@", buf, 0xCu);
      }
    }

    else
    {
      cDVServerURL = [(CoreDAVTask *)[CoreDAVHeadTask alloc] initWithURL:anyObject];
      [(NSMutableSet *)self->super._outstandingTasks addObject:cDVServerURL];
      [(CoreDAVTask *)cDVServerURL setDelegate:self];
      v26 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      [(CoreDAVTask *)cDVServerURL setAccountInfoProvider:v26];

      [(CoreDAVTask *)cDVServerURL setTimeoutInterval:self->super._timeoutInterval];
      v27 = objc_loadWeakRetained(&self->super._taskManager);
      [v27 submitQueuedCoreDAVTask:cDVServerURL];

      [(NSMutableSet *)self->_redirectHistory addObject:anyObject];
    }

LABEL_40:
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:taskCopy withError:errorCopy];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)coaxServerForPrincipalHeaders
{
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v4 = [CoreDAVOptionsTask alloc];
  principalURL = [accountInfoProvider principalURL];
  v6 = [(CoreDAVTask *)v4 initWithURL:principalURL];

  [(CoreDAVTask *)v6 setAccountInfoProvider:accountInfoProvider];
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

- (void)processPrincipalHeaders:(id)headers
{
  if ([(CoreDAVGetAccountPropertiesTaskGroup *)self fetchPrincipalSearchProperties])
  {
    collections = [(CoreDAVGetAccountPropertiesTaskGroup *)self collections];
    v5 = [collections count];

    if (v5)
    {
      v6 = [CoreDAVPrincipalSearchPropertySetTask alloc];
      collections2 = [(CoreDAVGetAccountPropertiesTaskGroup *)self collections];
      anyObject = [collections2 anyObject];
      v11 = [(CoreDAVPrincipalSearchPropertySetTask *)v6 initWithURL:anyObject];

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

- (void)searchPropertySetTask:(id)task completetWithPropertySearchSet:(id)set error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  setCopy = set;
  errorCopy = error;
  taskCopy = task;
  v12 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = setCopy;
    _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "PrincipalSearchProperties are: %@", &v19, 0xCu);
  }

  objc_storeStrong(&self->_principalSearchProperties, set);
  if (errorCopy)
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

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:taskCopy withError:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _copyAccountPropertiesPropFindElements = [(CoreDAVGetAccountPropertiesTaskGroup *)self _copyAccountPropertiesPropFindElements];
    v8 = [CoreDAVPropFindTask alloc];
    lastRedirectURL = [taskCopy lastRedirectURL];
    v10 = [(CoreDAVPropFindTask *)v8 initWithPropertiesToFind:_copyAccountPropertiesPropFindElements atURL:lastRedirectURL withDepth:2];

    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    [(CoreDAVTask *)v10 setAccountInfoProvider:WeakRetained];

    [(CoreDAVTask *)v10 setTimeoutInterval:self->super._timeoutInterval];
    [(CoreDAVTask *)v10 setDelegate:self];
    [(NSMutableSet *)self->super._outstandingTasks addObject:v10];
    v12 = objc_loadWeakRetained(&self->super._taskManager);
    [v12 submitQueuedCoreDAVTask:v10];

    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    [(CoreDAVGetAccountPropertiesTaskGroup *)self _taskCompleted:taskCopy withError:errorCopy];
  }
}

@end