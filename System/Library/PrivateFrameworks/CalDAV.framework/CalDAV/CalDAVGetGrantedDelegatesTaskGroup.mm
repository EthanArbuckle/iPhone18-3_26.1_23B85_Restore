@interface CalDAVGetGrantedDelegatesTaskGroup
- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager;
- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)write;
- (void)_fetchOnlyHrefs;
- (void)_getChildProperties;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVGetGrantedDelegatesTaskGroup

- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = CalDAVGetGrantedDelegatesTaskGroup;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)&v8 initWithAccountInfoProvider:provider principalURL:l taskManager:manager];
  v6 = v5;
  if (v5)
  {
    [(CalDAVGetGrantedDelegatesTaskGroup *)v5 setState:0];
    [(CalDAVGetGrantedDelegatesTaskGroup *)v6 setFetchPrincipalDetails:1];
  }

  return v6;
}

- (void)_fetchOnlyHrefs
{
  [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:3];
  v3 = objc_alloc(MEMORY[0x277CFDBE8]);
  v11 = [v3 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF28] parseClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CFDC68]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:v11];
  principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [v4 initWithPropertiesToFind:v5 atURL:principalURL withDepth:3];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v7];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  [v7 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v7];
}

- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)write
{
  v4 = cdWriteProxyChildSegment;
  if (!write)
  {
    v4 = cdReadProxyChildSegment;
  }

  v5 = *v4;
  principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [principalURL CDVfixedURLByAppendingPathComponent:v5];

  return v7;
}

- (void)_getChildProperties
{
  readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:readPrincipalURLs];

  if (v7)
  {
    selfCopy2 = self;
    v5 = 4;
LABEL_5:
    [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy2 setState:v5];
    [(CalDAVGetDelegatesBaseTaskGroup *)self _getPrincipalDetailsForURL:v7];

    return;
  }

  writePrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:writePrincipalURLs];

  if (v7)
  {
    selfCopy2 = self;
    v5 = 5;
    goto LABEL_5;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _finishWithError:0 state:10];
}

- (void)startTaskGroup
{
  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self fetchPrincipalDetails]&& [(CalDAVGetDelegatesBaseTaskGroup *)self serverSupportsExpandPropertyReport])
  {
    [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:1];

    [(CalDAVGetGrantedDelegatesTaskGroup *)self _expandPropertiesWithAllowWrite:1];
  }

  else
  {

    [(CalDAVGetGrantedDelegatesTaskGroup *)self _fetchOnlyHrefs];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v60 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  state = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (state == 1 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 2)
  {
    if (errorCopy)
    {
      getTotalFailureError = errorCopy;
    }

    else
    {
      getTotalFailureError = [taskCopy getTotalFailureError];
      if (!getTotalFailureError)
      {
        getTotalFailureError = [taskCopy successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF28]];
        [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:getTotalFailureError allowWrite:state == 1];
        selfCopy2 = self;
        if (state == 1)
        {
          [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:2];
          [(CalDAVGetGrantedDelegatesTaskGroup *)self _expandPropertiesWithAllowWrite:0];
          goto LABEL_8;
        }

        v11 = 0;
        v12 = 10;
LABEL_7:
        [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy2 _finishWithError:v11 state:v12];
LABEL_8:

        goto LABEL_14;
      }
    }

    selfCopy2 = self;
    v11 = getTotalFailureError;
    v12 = 6;
    goto LABEL_7;
  }

  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self state]!= 3)
  {
    selfCopy4 = self;
    v14 = errorCopy;
    v15 = 9;
    goto LABEL_13;
  }

  if (errorCopy)
  {
    selfCopy4 = self;
    v14 = errorCopy;
    v15 = 7;
LABEL_13:
    [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy4 _finishWithError:v14 state:v15];
    goto LABEL_14;
  }

  v40 = taskCopy;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  multiStatus = [taskCopy multiStatus];
  responses = [multiStatus responses];

  obj = responses;
  v20 = [responses countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v55;
    v42 = *MEMORY[0x277CFDEF8];
    v41 = *MEMORY[0x277CFDF28];
    v43 = *v55;
    do
    {
      v23 = 0;
      v44 = v21;
      do
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v54 + 1) + 8 * v23);
        if (([v24 hasPropertyError] & 1) == 0)
        {
          firstHref = [v24 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];
          cDVRawPath = [payloadAsFullURL CDVRawPath];

          v28 = [cDVRawPath hasSuffix:@"calendar-proxy-read/"];
          if ((v28 & 1) != 0 || [cDVRawPath hasSuffix:@"calendar-proxy-write/"])
          {
            successfulPropertiesToValues = [v24 successfulPropertiesToValues];
            v30 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v42 andName:v41];
            v48 = cDVRawPath;
            v49 = v23;
            v47 = successfulPropertiesToValues;
            if (v28)
            {
              readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
            }

            else
            {
              readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
            }
            v32 = ;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v46 = v30;
            hrefs = [v30 hrefs];
            v34 = [hrefs countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v51;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v51 != v36)
                  {
                    objc_enumerationMutation(hrefs);
                  }

                  payloadAsFullURL2 = [*(*(&v50 + 1) + 8 * i) payloadAsFullURL];
                  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self fetchPrincipalDetails])
                  {
                    [readPrincipalURLs addObject:payloadAsFullURL2];
                  }

                  else
                  {
                    v39 = objc_alloc_init(CalDAVPrincipalEmailDetailsResult);
                    [(CalDAVPrincipalEmailDetailsResult *)v39 setPrincipalURL:payloadAsFullURL2];
                    [v32 addObject:v39];
                  }
                }

                v35 = [hrefs countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v35);
            }

            v22 = v43;
            v21 = v44;
            cDVRawPath = v48;
            v23 = v49;
          }
        }

        ++v23;
      }

      while (v23 != v21);
      v21 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v21);
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _getChildProperties];
  errorCopy = 0;
  taskCopy = v40;
LABEL_14:
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorCopy = error;
  state = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (state == 5 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 4)
  {
    v9 = groupCopy;
    v10 = v9;
    if (errorCopy)
    {
      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
      v12 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
      principalResult2 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = errorCopy;
        _os_log_impl(&dword_242742000, principalResult2, OS_LOG_TYPE_DEBUG, "Ignoring error fetching delegate details, error: [%@]", &v16, 0xCu);
      }
    }

    else
    {
      principalResult = [v9 principalResult];

      if (!principalResult)
      {
LABEL_14:
        [(CalDAVGetGrantedDelegatesTaskGroup *)self _getChildProperties];

        goto LABEL_15;
      }

      if (state == 5)
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
      }

      else
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
      }
      mEMORY[0x277CFDC18] = ;
      principalResult2 = [v10 principalResult];
      [mEMORY[0x277CFDC18] addObject:principalResult2];
    }

    goto LABEL_14;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _finishWithError:errorCopy state:9];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

@end