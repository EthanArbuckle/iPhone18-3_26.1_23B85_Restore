@interface MobileCalDAVGroupExpansion
- (MobileCalDAVGroupExpansion)initWithPrincipalPath:(id)a3 consumer:(id)a4 account:(id)a5;
- (id)resultFromCalDAVPrincipalResult:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_handleResponseForSearchTask:(id)a3;
- (void)_handleResponseForTask:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)expandCDGroup:(id)a3;
- (void)perform;
@end

@implementation MobileCalDAVGroupExpansion

- (MobileCalDAVGroupExpansion)initWithPrincipalPath:(id)a3 consumer:(id)a4 account:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MobileCalDAVGroupExpansion;
  v12 = [(MobileCalDAVGroupExpansion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_principalPath, a3);
    objc_storeWeak(&v13->_consumer, v10);
    objc_storeStrong(&v13->_account, a5);
    v14 = [[DACoreDAVTaskManager alloc] initWithAccount:v13->_account];
    taskManager = v13->_taskManager;
    v13->_taskManager = v14;
  }

  return v13;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_1613C(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVGroupExpansion;
  [(MobileCalDAVGroupExpansion *)&v3 dealloc];
}

- (void)perform
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 transactionId];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %{public}@", &v7, 0xCu);
  }

  if (self->_finished)
  {
    [(MobileCalDAVGroupExpansion *)self _finishWithError:0];
  }

  else
  {
    [(MobileCalDAVGroupExpansion *)self expandCDGroup:self->_principalPath];
  }
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVGroupExpansion *)self _finishWithError:v3];
}

- (void)expandCDGroup:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  v6 = [v5 mainPrincipal];

  if ([v4 length])
  {
    if ([v4 hasPrefix:@"/"])
    {
      v30 = [CalDAVPrincipalSearchSupport parserMappingsWithServerSupportSet:0 includeEmail:0];
      v32 = [v6 scheme];
      v7 = [v6 host];
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 port]);
      v9 = [NSURL CDVURLWithScheme:v32 host:v7 port:v8 path:v4];
      v10 = [CoreDAVExpandPropertiesTask alloc];
      v11 = [v9 absoluteURL];
      v12 = [v10 initWithPropertiesToFind:v30 atURL:v11 expandedName:cdXMLExpandedGroupMemberSet expandedNameSpace:cdXMLCalendarServerURI];

      [v12 setAccountInfoProvider:v6];
      objc_initWeak(&location, v12);
      objc_initWeak(&from, self);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_DC04;
      v34[3] = &unk_287B8;
      objc_copyWeak(&v35, &from);
      objc_copyWeak(&v36, &location);
      [v12 setCompletionBlock:v34];
      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138412290;
        v43 = v12;
        _os_log_impl(&dword_0, v13, v14, "Starting calendar search task: [%@]", buf, 0xCu);
      }

      [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v12];
      objc_destroyWeak(&v36);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = [v6 scheme];
      v31 = [v6 host];
      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 port]);
      v17 = [(MobileCalDAVDADaemonAccount *)self->_account backingAccountInfo];
      v28 = [v17 calCollectionSetName];

      v26 = [NSURL CDVURLWithScheme:v16 host:v31 port:v29 path:v28];
      v33 = +[NSMutableSet set];
      v18 = [CalDAVPrincipalSearchSupport propertySearchItemForWellKnownType:6];
      [v18 setMatchTypeAttribute:@"equals"];
      [v18 setMatch:v4];
      [v33 addObject:v18];
      v19 = [CoreDAVItemParserMapping alloc];
      v27 = [v19 initWithNameSpace:cdXMLDAVURI name:cdXMLPrincipalURL parseClass:objc_opt_class()];
      v20 = [NSDictionary dictionaryWithObject:@"anyof" forKey:@"test"];
      v21 = [CoreDAVPrincipalPropertySearchTask alloc];
      v22 = [NSSet setWithObject:v27];
      v23 = [v21 initWithPropertySearches:v33 propertiesToFind:v22 atURL:v26 applyToPrincipalCollectionSet:0 extraAttributes:v20];

      objc_initWeak(&location, v23);
      objc_initWeak(&from, self);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_DBA0;
      v37[3] = &unk_287B8;
      objc_copyWeak(&v38, &from);
      objc_copyWeak(&v39, &location);
      [v23 setCompletionBlock:v37];
      v24 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 138412290;
        v43 = v23;
        _os_log_impl(&dword_0, v24, v25, "Starting calendar search task: [%@]", buf, 0xCu);
      }

      [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v23];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:DAErrorDomain code:9 userInfo:0];
    [(MobileCalDAVGroupExpansion *)self _finishWithError:v15];
  }
}

- (void)_handleResponseForSearchTask:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray alloc];
  v6 = [v4 multiStatus];
  v7 = [v6 responses];
  v8 = [v5 initWithCapacity:{objc_msgSend(v7, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v4 multiStatus];
  v10 = [v9 responses];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [CalDAVPrincipalResult resultFromResponse:*(*(&v23 + 1) + 8 * i)];
        v16 = [v15 principalPath];
        [v8 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v17 = [v8 lastObject];
    v18 = [v17 hasPrefix:@"/"];

    if (v18)
    {
      v19 = [v8 lastObject];
      v20 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v20, v21))
      {
        principalPath = self->_principalPath;
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = principalPath;
        _os_log_impl(&dword_0, v20, v21, "Discovered principal path %@ from address %@", buf, 0x16u);
      }

      [(MobileCalDAVGroupExpansion *)self expandCDGroup:v19];
    }
  }
}

- (id)resultFromCalDAVPrincipalResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DAECalendarDirectorySearchResult);
  v5 = [v3 displayName];
  [v4 setDisplayName:v5];

  v6 = [v3 firstName];
  [v4 setFirstName:v6];

  v7 = [v3 lastName];
  [v4 setLastName:v7];

  v8 = [v3 emailAddress];
  [v4 setPreferredAddress:v8];

  v9 = [v3 principalPath];

  [v4 setPrincipalPath:v9];

  return v4;
}

- (void)_handleResponseForTask:(id)a3
{
  v3 = a3;
  v4 = [v3 error];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412546;
    v35 = v3;
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&dword_0, v5, v6, "Calendar group expansion complete: [%@].  Error: [%@]", buf, 0x16u);
  }

  v7 = [v3 error];

  if (!v7)
  {
    v25 = v4;
    v8 = [v3 successfulValueForNameSpace:cdXMLCalendarServerURI elementName:cdXMLExpandedGroupMemberSet];
    v9 = objc_alloc_init(NSMutableDictionary);
    results = self->_results;
    self->_results = v9;

    v27 = objc_opt_new();
    v26 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v8;
    v11 = [v8 orderedResponses];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [CalDAVPrincipalResult resultFromResponse:*(*(&v29 + 1) + 8 * i)];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 resultType];
            v19 = [v18 isEqualToString:CalDAVPrincipalResultType_Person];

            if (v19)
            {
              v20 = [(MobileCalDAVGroupExpansion *)self resultFromCalDAVPrincipalResult:v17];
              [v26 addObject:v20];
            }

            v21 = [v17 resultType];
            v22 = [v21 isEqualToString:CalDAVPrincipalResultType_Resource];

            if (v22)
            {
              v23 = [(MobileCalDAVGroupExpansion *)self resultFromCalDAVPrincipalResult:v17];
              [v27 addObject:v23];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    if ([v26 count])
    {
      [(NSMutableDictionary *)self->_results setObject:v26 forKey:DADCalendarDirectorySearchRecordType_Users];
    }

    v4 = v25;
    if ([v27 count])
    {
      [(NSMutableDictionary *)self->_results setObject:v27 forKey:DADCalendarDirectorySearchRecordType_Resources];
    }
  }

  [(MobileCalDAVGroupExpansion *)self _finishWithError:v4];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  if (!self->_finished)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412546;
      v9 = self;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_0, v5, v6, "[%@] finished with error %@", &v8, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained groupExpansionFinishedWithResults:self->_results error:v4];
  }
}

@end