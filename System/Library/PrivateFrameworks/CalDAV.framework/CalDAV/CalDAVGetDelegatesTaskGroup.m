@interface CalDAVGetDelegatesTaskGroup
- (CalDAVGetDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5;
- (void)_expandProperties;
- (void)_getChildProperties;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVGetDelegatesTaskGroup

- (CalDAVGetDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5
{
  v9.receiver = self;
  v9.super_class = CalDAVGetDelegatesTaskGroup;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)&v9 initWithAccountInfoProvider:a3 principalURL:a4 taskManager:a5];
  v6 = v5;
  if (v5)
  {
    [(CalDAVGetDelegatesTaskGroup *)v5 setState:0];
    v7 = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesTaskGroup *)v6 setNestedGroupPrincipalURLs:v7];
  }

  return v6;
}

- (void)_expandProperties
{
  [(CalDAVGetDelegatesTaskGroup *)self setState:1];
  v10 = [(CalDAVGetDelegatesBaseTaskGroup *)self _mappingsForPrincipalDetails];
  v3 = objc_alloc(MEMORY[0x277CFDBC0]);
  v4 = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v5 = *MEMORY[0x277CFDE90];
  v6 = [v3 initWithPropertiesToFind:v10 atURL:v4 expandedName:@"calendar-proxy-read-for" expandedNameSpace:*MEMORY[0x277CFDE90]];

  [v6 addPropertyToExpandWithPropertiesToFind:v10 expandedName:@"calendar-proxy-write-for" expandedNameSpace:v5];
  v7 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v7 addObject:v6];

  v8 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v6 setAccountInfoProvider:v8];

  [v6 setDelegate:self];
  v9 = [(CoreDAVTaskGroup *)self taskManager];
  [v9 submitQueuedCoreDAVTask:v6];
}

- (void)_getChildProperties
{
  v3 = [(CalDAVGetDelegatesTaskGroup *)self nestedGroupPrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:v3];

  if (v8)
  {
    [(CalDAVGetDelegatesTaskGroup *)self _getGroupMembershipForURL:v8 state:3];
LABEL_8:

    return;
  }

  v4 = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:v4];

  if (v8)
  {
    v5 = self;
    v6 = 4;
LABEL_7:
    [(CalDAVGetDelegatesTaskGroup *)v5 setState:v6];
    [(CalDAVGetDelegatesBaseTaskGroup *)self _getPrincipalDetailsForURL:v8];
    goto LABEL_8;
  }

  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:v7];

  if (v8)
  {
    v5 = self;
    v6 = 5;
    goto LABEL_7;
  }

  [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:0 state:11];
}

- (void)startTaskGroup
{
  if ([(CalDAVGetDelegatesBaseTaskGroup *)self serverSupportsExpandPropertyReport])
  {

    [(CalDAVGetDelegatesTaskGroup *)self _expandProperties];
  }

  else
  {
    v3 = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
    [(CalDAVGetDelegatesTaskGroup *)self _getGroupMembershipForURL:v3 state:2];
  }
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = [v8 getTotalFailureError];
  }

  v11 = v10;
  if ([(CalDAVGetDelegatesTaskGroup *)self state]!= 1)
  {
    if ([(CalDAVGetDelegatesTaskGroup *)self state]== 2)
    {
      if (v11)
      {
        v12 = self;
        v13 = v11;
        v14 = 7;
        goto LABEL_18;
      }

      v48 = v7;
      v47 = v9;
      [v9 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF30]];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v46 = v58 = 0u;
      v23 = [v46 hrefs];
      v24 = [v23 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (!v24)
      {
        goto LABEL_37;
      }

      v25 = v24;
      v26 = *v56;
LABEL_22:
      v27 = 0;
      while (1)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v55 + 1) + 8 * v27);
        v29 = [v28 payloadAsFullURL];
        v30 = v29;
        if (!v29)
        {
          v31 = [MEMORY[0x277CFDC18] sharedLogging];
          v33 = [v31 logHandleForAccountInfoProvider:0];
          v34 = v33;
          if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v61 = v28;
            _os_log_impl(&dword_242742000, v34, OS_LOG_TYPE_ERROR, "Got a nil URL for delegate group membership with href = %@", buf, 0xCu);
          }

          goto LABEL_35;
        }

        v31 = [v29 CDVRawPath];
        if ([v31 hasSuffix:@"calendar-proxy-read/"])
        {
          v32 = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
        }

        else
        {
          if (![v31 hasSuffix:@"calendar-proxy-write/"])
          {
            v34 = [(CalDAVGetDelegatesTaskGroup *)self nestedGroupPrincipalURLs];
            [v34 addObject:v30];
            goto LABEL_35;
          }

          v32 = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
        }

        v34 = v32;
        v35 = [v30 CDVURLByDeletingLastPathComponent];
        [v34 addObject:v35];

LABEL_35:
        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v55 objects:v62 count:16];
          if (!v25)
          {
LABEL_37:

            [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
            v36 = v46;
            goto LABEL_51;
          }

          goto LABEL_22;
        }
      }
    }

    if ([(CalDAVGetDelegatesTaskGroup *)self state]!= 3)
    {
      v12 = self;
      v13 = v11;
      v14 = 10;
      goto LABEL_18;
    }

    if (v11)
    {
      v15 = [MEMORY[0x277CFDC18] sharedLogging];
      v16 = [v15 logHandleForAccountInfoProvider:0];
      v17 = v16;
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v61 = v11;
        _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_DEBUG, "Ignoring error fetching nested group, error: [%@]", buf, 0xCu);
      }

      [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
      goto LABEL_19;
    }

    v48 = v7;
    v47 = v9;
    [v9 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF30]];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v49 = v54 = 0u;
    obj = [v49 hrefs];
    v37 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v37)
    {
LABEL_50:

      [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
      v36 = v49;
LABEL_51:

      v9 = v47;
      v7 = v48;
      v11 = 0;
      goto LABEL_19;
    }

    v38 = v37;
    v39 = *v52;
LABEL_40:
    v40 = 0;
    while (1)
    {
      if (*v52 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v41 = [*(*(&v51 + 1) + 8 * v40) payloadAsFullURL];
      v42 = [v41 CDVRawPath];
      if ([v42 hasSuffix:@"calendar-proxy-read/"])
      {
        break;
      }

      if ([v42 hasSuffix:@"calendar-proxy-write/"])
      {
        v43 = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
        goto LABEL_47;
      }

LABEL_48:

      if (v38 == ++v40)
      {
        v38 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (!v38)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }
    }

    v43 = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
LABEL_47:
    v44 = v43;
    v45 = [v41 CDVURLByDeletingLastPathComponent];
    [v44 addObject:v45];

    goto LABEL_48;
  }

  if (v11)
  {
    v12 = self;
    v13 = v11;
    v14 = 6;
LABEL_18:
    [(CalDAVGetDelegatesTaskGroup *)v12 _finishWithError:v13 state:v14];
    goto LABEL_19;
  }

  v18 = *MEMORY[0x277CFDE90];
  v19 = [v9 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"calendar-proxy-write-for"];
  [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:v19 allowWrite:1];
  v20 = [v9 successfulValueForNameSpace:v18 elementName:@"calendar-proxy-read-for"];

  [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:v20 allowWrite:0];
  [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:0 state:11];

LABEL_19:
  v21 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v21 removeObject:v9];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CalDAVGetDelegatesTaskGroup *)self state];
  if (!v6 && ((v8 = v7, [(CalDAVGetDelegatesTaskGroup *)self state]== 4) || v8 == 5))
  {
    v9 = v13;
    v10 = [v9 principalResult];

    if (v10)
    {
      if (v8 == 5)
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
      }

      else
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
      }
      v11 = ;
      v12 = [v9 principalResult];
      [v11 addObject:v12];
    }

    [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
  }

  else
  {
    [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:v6 state:10];
  }
}

@end