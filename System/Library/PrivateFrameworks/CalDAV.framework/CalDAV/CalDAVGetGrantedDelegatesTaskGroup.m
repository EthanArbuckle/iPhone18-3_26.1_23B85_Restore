@interface CalDAVGetGrantedDelegatesTaskGroup
- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5;
- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)a3;
- (void)_fetchOnlyHrefs;
- (void)_getChildProperties;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVGetGrantedDelegatesTaskGroup

- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5
{
  v8.receiver = self;
  v8.super_class = CalDAVGetGrantedDelegatesTaskGroup;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)&v8 initWithAccountInfoProvider:a3 principalURL:a4 taskManager:a5];
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
  v6 = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [v4 initWithPropertiesToFind:v5 atURL:v6 withDepth:3];

  v8 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v8 addObject:v7];

  v9 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:v9];

  [v7 setDelegate:self];
  v10 = [(CoreDAVTaskGroup *)self taskManager];
  [v10 submitQueuedCoreDAVTask:v7];
}

- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)a3
{
  v4 = cdWriteProxyChildSegment;
  if (!a3)
  {
    v4 = cdReadProxyChildSegment;
  }

  v5 = *v4;
  v6 = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [v6 CDVfixedURLByAppendingPathComponent:v5];

  return v7;
}

- (void)_getChildProperties
{
  v3 = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:v3];

  if (v7)
  {
    v4 = self;
    v5 = 4;
LABEL_5:
    [(CalDAVGetGrantedDelegatesTaskGroup *)v4 setState:v5];
    [(CalDAVGetDelegatesBaseTaskGroup *)self _getPrincipalDetailsForURL:v7];

    return;
  }

  v6 = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:v6];

  if (v7)
  {
    v4 = self;
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

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (v8 == 1 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 2)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v6 getTotalFailureError];
      if (!v9)
      {
        v9 = [v6 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF28]];
        [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:v9 allowWrite:v8 == 1];
        v10 = self;
        if (v8 == 1)
        {
          [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:2];
          [(CalDAVGetGrantedDelegatesTaskGroup *)self _expandPropertiesWithAllowWrite:0];
          goto LABEL_8;
        }

        v11 = 0;
        v12 = 10;
LABEL_7:
        [(CalDAVGetGrantedDelegatesTaskGroup *)v10 _finishWithError:v11 state:v12];
LABEL_8:

        goto LABEL_14;
      }
    }

    v10 = self;
    v11 = v9;
    v12 = 6;
    goto LABEL_7;
  }

  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self state]!= 3)
  {
    v13 = self;
    v14 = v7;
    v15 = 9;
    goto LABEL_13;
  }

  if (v7)
  {
    v13 = self;
    v14 = v7;
    v15 = 7;
LABEL_13:
    [(CalDAVGetGrantedDelegatesTaskGroup *)v13 _finishWithError:v14 state:v15];
    goto LABEL_14;
  }

  v40 = v6;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = [v6 multiStatus];
  v19 = [v18 responses];

  obj = v19;
  v20 = [v19 countByEnumeratingWithState:&v54 objects:v59 count:16];
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
          v25 = [v24 firstHref];
          v26 = [v25 payloadAsFullURL];
          v27 = [v26 CDVRawPath];

          v28 = [v27 hasSuffix:@"calendar-proxy-read/"];
          if ((v28 & 1) != 0 || [v27 hasSuffix:@"calendar-proxy-write/"])
          {
            v29 = [v24 successfulPropertiesToValues];
            v30 = [v29 CDVObjectForKeyWithNameSpace:v42 andName:v41];
            v48 = v27;
            v49 = v23;
            v47 = v29;
            if (v28)
            {
              v31 = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
            }

            else
            {
              v31 = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
            }
            v32 = ;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v46 = v30;
            v33 = [v30 hrefs];
            v34 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
                    objc_enumerationMutation(v33);
                  }

                  v38 = [*(*(&v50 + 1) + 8 * i) payloadAsFullURL];
                  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self fetchPrincipalDetails])
                  {
                    [v31 addObject:v38];
                  }

                  else
                  {
                    v39 = objc_alloc_init(CalDAVPrincipalEmailDetailsResult);
                    [(CalDAVPrincipalEmailDetailsResult *)v39 setPrincipalURL:v38];
                    [v32 addObject:v39];
                  }
                }

                v35 = [v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v35);
            }

            v22 = v43;
            v21 = v44;
            v27 = v48;
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
  v7 = 0;
  v6 = v40;
LABEL_14:
  v16 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v16 removeObject:v6];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (v8 == 5 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 4)
  {
    v9 = v6;
    v10 = v9;
    if (v7)
    {
      v11 = [MEMORY[0x277CFDC18] sharedLogging];
      v12 = [v11 logHandleForAccountInfoProvider:0];
      v13 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_242742000, v13, OS_LOG_TYPE_DEBUG, "Ignoring error fetching delegate details, error: [%@]", &v16, 0xCu);
      }
    }

    else
    {
      v14 = [v9 principalResult];

      if (!v14)
      {
LABEL_14:
        [(CalDAVGetGrantedDelegatesTaskGroup *)self _getChildProperties];

        goto LABEL_15;
      }

      if (v8 == 5)
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
      }

      else
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
      }
      v11 = ;
      v13 = [v10 principalResult];
      [v11 addObject:v13];
    }

    goto LABEL_14;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _finishWithError:v7 state:9];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

@end