@interface MobileCalDAVGroupExpansion
- (MobileCalDAVGroupExpansion)initWithPrincipalPath:(id)path consumer:(id)consumer account:(id)account;
- (id)resultFromCalDAVPrincipalResult:(id)result;
- (void)_finishWithError:(id)error;
- (void)_handleResponseForSearchTask:(id)task;
- (void)_handleResponseForTask:(id)task;
- (void)cancel;
- (void)dealloc;
- (void)expandCDGroup:(id)group;
- (void)perform;
@end

@implementation MobileCalDAVGroupExpansion

- (MobileCalDAVGroupExpansion)initWithPrincipalPath:(id)path consumer:(id)consumer account:(id)account
{
  pathCopy = path;
  consumerCopy = consumer;
  accountCopy = account;
  v17.receiver = self;
  v17.super_class = MobileCalDAVGroupExpansion;
  v12 = [(MobileCalDAVGroupExpansion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_principalPath, path);
    objc_storeWeak(&v13->_consumer, consumerCopy);
    objc_storeStrong(&v13->_account, account);
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
    transactionId = [v3 transactionId];
    v7 = 138543362;
    v8 = transactionId;
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

- (void)expandCDGroup:(id)group
{
  groupCopy = group;
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  if ([groupCopy length])
  {
    if ([groupCopy hasPrefix:@"/"])
    {
      v30 = [CalDAVPrincipalSearchSupport parserMappingsWithServerSupportSet:0 includeEmail:0];
      scheme = [mainPrincipal scheme];
      host = [mainPrincipal host];
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [mainPrincipal port]);
      v9 = [NSURL CDVURLWithScheme:scheme host:host port:v8 path:groupCopy];
      v10 = [CoreDAVExpandPropertiesTask alloc];
      absoluteURL = [v9 absoluteURL];
      v12 = [v10 initWithPropertiesToFind:v30 atURL:absoluteURL expandedName:cdXMLExpandedGroupMemberSet expandedNameSpace:cdXMLCalendarServerURI];

      [v12 setAccountInfoProvider:mainPrincipal];
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
      scheme2 = [mainPrincipal scheme];
      host2 = [mainPrincipal host];
      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [mainPrincipal port]);
      backingAccountInfo = [(MobileCalDAVDADaemonAccount *)self->_account backingAccountInfo];
      calCollectionSetName = [backingAccountInfo calCollectionSetName];

      v26 = [NSURL CDVURLWithScheme:scheme2 host:host2 port:v29 path:calCollectionSetName];
      v33 = +[NSMutableSet set];
      v18 = [CalDAVPrincipalSearchSupport propertySearchItemForWellKnownType:6];
      [v18 setMatchTypeAttribute:@"equals"];
      [v18 setMatch:groupCopy];
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

- (void)_handleResponseForSearchTask:(id)task
{
  taskCopy = task;
  v5 = [NSMutableArray alloc];
  multiStatus = [taskCopy multiStatus];
  responses = [multiStatus responses];
  v8 = [v5 initWithCapacity:{objc_msgSend(responses, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  multiStatus2 = [taskCopy multiStatus];
  responses2 = [multiStatus2 responses];

  v11 = [responses2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(responses2);
        }

        v15 = [CalDAVPrincipalResult resultFromResponse:*(*(&v23 + 1) + 8 * i)];
        principalPath = [v15 principalPath];
        [v8 addObject:principalPath];
      }

      v12 = [responses2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    lastObject = [v8 lastObject];
    v18 = [lastObject hasPrefix:@"/"];

    if (v18)
    {
      lastObject2 = [v8 lastObject];
      v20 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v20, v21))
      {
        principalPath = self->_principalPath;
        *buf = 138412546;
        v28 = lastObject2;
        v29 = 2112;
        v30 = principalPath;
        _os_log_impl(&dword_0, v20, v21, "Discovered principal path %@ from address %@", buf, 0x16u);
      }

      [(MobileCalDAVGroupExpansion *)self expandCDGroup:lastObject2];
    }
  }
}

- (id)resultFromCalDAVPrincipalResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(DAECalendarDirectorySearchResult);
  displayName = [resultCopy displayName];
  [v4 setDisplayName:displayName];

  firstName = [resultCopy firstName];
  [v4 setFirstName:firstName];

  lastName = [resultCopy lastName];
  [v4 setLastName:lastName];

  emailAddress = [resultCopy emailAddress];
  [v4 setPreferredAddress:emailAddress];

  principalPath = [resultCopy principalPath];

  [v4 setPrincipalPath:principalPath];

  return v4;
}

- (void)_handleResponseForTask:(id)task
{
  taskCopy = task;
  error = [taskCopy error];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412546;
    v35 = taskCopy;
    v36 = 2112;
    v37 = error;
    _os_log_impl(&dword_0, v5, v6, "Calendar group expansion complete: [%@].  Error: [%@]", buf, 0x16u);
  }

  error2 = [taskCopy error];

  if (!error2)
  {
    v25 = error;
    v8 = [taskCopy successfulValueForNameSpace:cdXMLCalendarServerURI elementName:cdXMLExpandedGroupMemberSet];
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
    orderedResponses = [v8 orderedResponses];
    v12 = [orderedResponses countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(orderedResponses);
          }

          v16 = [CalDAVPrincipalResult resultFromResponse:*(*(&v29 + 1) + 8 * i)];
          v17 = v16;
          if (v16)
          {
            resultType = [v16 resultType];
            v19 = [resultType isEqualToString:CalDAVPrincipalResultType_Person];

            if (v19)
            {
              v20 = [(MobileCalDAVGroupExpansion *)self resultFromCalDAVPrincipalResult:v17];
              [v26 addObject:v20];
            }

            resultType2 = [v17 resultType];
            v22 = [resultType2 isEqualToString:CalDAVPrincipalResultType_Resource];

            if (v22)
            {
              v23 = [(MobileCalDAVGroupExpansion *)self resultFromCalDAVPrincipalResult:v17];
              [v27 addObject:v23];
            }
          }
        }

        v13 = [orderedResponses countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    if ([v26 count])
    {
      [(NSMutableDictionary *)self->_results setObject:v26 forKey:DADCalendarDirectorySearchRecordType_Users];
    }

    error = v25;
    if ([v27 count])
    {
      [(NSMutableDictionary *)self->_results setObject:v27 forKey:DADCalendarDirectorySearchRecordType_Resources];
    }
  }

  [(MobileCalDAVGroupExpansion *)self _finishWithError:error];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = errorCopy;
      _os_log_impl(&dword_0, v5, v6, "[%@] finished with error %@", &v8, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained groupExpansionFinishedWithResults:self->_results error:errorCopy];
  }
}

@end