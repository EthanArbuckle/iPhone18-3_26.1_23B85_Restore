@interface CoreDAVValidatePrincipalsTaskGroup
- (CoreDAVValidatePrincipalsTaskGroup)initWithAccountInfoProvider:(id)a3 urls:(id)a4 taskManager:(id)a5;
- (NSSet)resultPrincipalURLs;
- (void)_fetchNextURL;
- (void)cancelTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CoreDAVValidatePrincipalsTaskGroup

- (CoreDAVValidatePrincipalsTaskGroup)initWithAccountInfoProvider:(id)a3 urls:(id)a4 taskManager:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CoreDAVValidatePrincipalsTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v15 initWithAccountInfoProvider:a3 taskManager:a5];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
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
  v3 = [(CoreDAVValidatePrincipalsTaskGroup *)self principalURLs];
  v4 = [v2 setWithSet:v3];

  return v4;
}

- (void)_fetchNextURL
{
  v3 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
  v4 = [v3 count];

  if (v4)
  {
    v16 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"principal-URL" parseClass:objc_opt_class()];
    v5 = [MEMORY[0x277CBEB98] setWithObject:?];
    v6 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
    v7 = [v6 anyObject];
    [(CoreDAVValidatePrincipalsTaskGroup *)self setUrlBeingExamined:v7];

    v8 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];

    if (v8)
    {
      v9 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlsToExamine];
      v10 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
      [v9 removeObject:v10];
    }

    v11 = [CoreDAVPropFindTask alloc];
    v12 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
    v13 = [(CoreDAVPropFindTask *)v11 initWithPropertiesToFind:v5 atURL:v12 withDepth:2];

    v14 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [(CoreDAVTask *)v13 setAccountInfoProvider:v14];

    [(CoreDAVTask *)v13 setDelegate:self];
    v15 = [(CoreDAVTaskGroup *)self taskManager];
    [v15 submitQueuedCoreDAVTask:v13];

    [(NSMutableSet *)self->super._outstandingTasks addObject:v13];
  }

  else
  {

    [(CoreDAVValidatePrincipalsTaskGroup *)self _finishWithError:0];
  }
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
  if (v7)
  {
    v8 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_DEFAULT, "Error accessing: %@, error: %@", &v22, 0x16u);
      }
    }

    if ([v7 code] == 401)
    {
      self->_authError = 1;
    }
  }

  else
  {
    v13 = [v6 successfulValueForNameSpace:@"DAV:" elementName:@"principal-URL"];
    v14 = [v13 href];
    v15 = [v14 payloadAsFullURL];

    if (v15)
    {
      v16 = [(CoreDAVValidatePrincipalsTaskGroup *)self principalURLs];
      [v16 addObject:v15];
    }

    else
    {
      v16 = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [v16 logHandleForAccountInfoProvider:v17];

      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(CoreDAVValidatePrincipalsTaskGroup *)self urlBeingExamined];
          v22 = 138412290;
          v23 = v20;
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