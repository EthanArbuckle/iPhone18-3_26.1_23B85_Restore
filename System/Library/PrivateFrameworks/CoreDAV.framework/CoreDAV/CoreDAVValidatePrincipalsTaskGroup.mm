@interface CoreDAVValidatePrincipalsTaskGroup
- (CoreDAVValidatePrincipalsTaskGroup)initWithAccountInfoProvider:(id)provider urls:(id)urls taskManager:(id)manager;
- (NSSet)resultPrincipalURLs;
- (void)_fetchNextURL;
- (void)cancelTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CoreDAVValidatePrincipalsTaskGroup

- (CoreDAVValidatePrincipalsTaskGroup)initWithAccountInfoProvider:(id)provider urls:(id)urls taskManager:(id)manager
{
  urlsCopy = urls;
  v15.receiver = self;
  v15.super_class = CoreDAVValidatePrincipalsTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v15 initWithAccountInfoProvider:provider taskManager:manager];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:urlsCopy];
    urlsToExamine = v9->_urlsToExamine;
    v9->_urlsToExamine = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    principalURLs = v9->_principalURLs;
    v9->_principalURLs = v12;
  }

  return v9;
}

- (NSSet)resultPrincipalURLs
{
  v2 = MEMORY[0x277CBEB98];
  principalURLs = [(CoreDAVValidatePrincipalsTaskGroup *)self principalURLs];
  v4 = [v2 setWithSet:principalURLs];

  return v4;
}

- (void)_fetchNextURL
{
  urlsToExamine = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
  v4 = [urlsToExamine count];

  if (v4)
  {
    v16 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"principal-URL" parseClass:objc_opt_class()];
    v5 = [MEMORY[0x277CBEB98] setWithObject:?];
    urlsToExamine2 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
    anyObject = [urlsToExamine2 anyObject];
    [(CoreDAVValidatePrincipalsTaskGroup *)self setUrlBeingExamined:anyObject];

    urlBeingExamined = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];

    if (urlBeingExamined)
    {
      urlsToExamine3 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
      urlBeingExamined2 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
      [urlsToExamine3 removeObject:urlBeingExamined2];
    }

    v11 = [CoreDAVPropFindTask alloc];
    urlBeingExamined3 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
    v13 = [(CoreDAVPropFindTask *)v11 initWithPropertiesToFind:v5 atURL:urlBeingExamined3 withDepth:2];

    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [(CoreDAVTask *)v13 setAccountInfoProvider:accountInfoProvider];

    [(CoreDAVTask *)v13 setDelegate:self];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v13];

    [(NSMutableSet *)self->super._outstandingTasks addObject:v13];
  }

  else
  {

    [(CoreDAVValidatePrincipalsTaskGroup *)self _finishWithError:0];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    v8 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        urlBeingExamined = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
        v22 = 138412546;
        v23 = urlBeingExamined;
        v24 = 2112;
        v25 = errorCopy;
        _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_DEFAULT, "Error accessing: %@, error: %@", &v22, 0x16u);
      }
    }

    if ([errorCopy code] == 401)
    {
      self->_authError = 1;
    }
  }

  else
  {
    v13 = [taskCopy successfulValueForNameSpace:@"DAV:" elementName:@"principal-URL"];
    href = [v13 href];
    payloadAsFullURL = [href payloadAsFullURL];

    if (payloadAsFullURL)
    {
      principalURLs = [(CoreDAVValidatePrincipalsTaskGroup *)self principalURLs];
      [principalURLs addObject:payloadAsFullURL];
    }

    else
    {
      principalURLs = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [principalURLs logHandleForAccountInfoProvider:v17];

      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          urlBeingExamined2 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
          v22 = 138412290;
          v23 = urlBeingExamined2;
          _os_log_impl(&dword_2452FB000, v19, OS_LOG_TYPE_DEFAULT, "Failed to find a principal-URL for: %@", &v22, 0xCu);
        }
      }
    }
  }

  [(CoreDAVValidatePrincipalsTaskGroup *)self _fetchNextURL];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)cancelTaskGroup
{
  [(CoreDAVValidatePrincipalsTaskGroup *)self setUrlsToExamine:0];
  v3.receiver = self;
  v3.super_class = CoreDAVValidatePrincipalsTaskGroup;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

@end