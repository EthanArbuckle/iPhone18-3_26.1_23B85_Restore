@interface MobileCalDAVDirectorySearch
+ (id)_convertRecordTypesToSearchTypes:(id)types;
- (MobileCalDAVDirectorySearch)initWithTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer account:(id)account;
- (NSString)description;
- (id)_filterTermsForOldStyleSearch;
- (id)_parseResponse:(id)response;
- (void)_finishWithError:(id)error;
- (void)_handleResponseForTask:(id)task;
- (void)_performNewStyleSearch;
- (void)_performOldStyleSearch;
- (void)_reallyPerformSearch;
- (void)cancel;
- (void)dealloc;
- (void)performSearch;
@end

@implementation MobileCalDAVDirectorySearch

- (MobileCalDAVDirectorySearch)initWithTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer account:(id)account
{
  termsCopy = terms;
  typesCopy = types;
  consumerCopy = consumer;
  accountCopy = account;
  v24.receiver = self;
  v24.super_class = MobileCalDAVDirectorySearch;
  v17 = [(MobileCalDAVDirectorySearch *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_terms, terms);
    objc_storeStrong(&v18->_recordTypes, types);
    v18->_resultLimit = limit;
    objc_storeWeak(&v18->_consumer, consumerCopy);
    objc_storeStrong(&v18->_account, account);
    v19 = +[NSString da_newGUID];
    searchID = v18->_searchID;
    v18->_searchID = v19;

    v21 = [[DACoreDAVTaskManager alloc] initWithAccount:v18->_account];
    taskManager = v18->_taskManager;
    v18->_taskManager = v21;
  }

  return v18;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_102E8(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVDirectorySearch;
  [(MobileCalDAVDirectorySearch *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v8 = *&self->_terms;
  resultLimit = self->_resultLimit;
  WeakRetained = objc_loadWeakRetained(&self->_consumer);
  v6 = [v3 initWithFormat:@"terms: [%@], recordTypes: [%@] resultLimit: [%lu] consumer: [%p], account: [%p]", v8, resultLimit, WeakRetained, self->_account];

  return v6;
}

- (void)performSearch
{
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [v3 transactionId];
    *buf = 138412290;
    v13 = transactionId;
    _os_log_impl(&dword_0, v4, v5, "DATransaction starting, ID: %@", buf, 0xCu);
  }

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, v5, "Waiting on the gatekeeper before issuing a calendar directory search", buf, 2u);
  }

  self->_waitingForGatekeeper = 1;
  v8 = +[DALocalDBGateKeeper sharedGateKeeper];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_520C;
  v10[3] = &unk_205E0;
  v10[4] = self;
  v11 = v3;
  v9 = v3;
  [v8 registerWaiter:self forDataclassLocks:4 completionHandler:v10];
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVDirectorySearch *)self _finishWithError:v3];
}

- (void)_reallyPerformSearch
{
  mainPrincipal = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
  if ([mainPrincipal supportsCalendarUserSearch])
  {
    [(MobileCalDAVDirectorySearch *)self _performNewStyleSearch];
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = 138412546;
      v7 = cdXMLCalendarUserSearchReport;
      v8 = 2112;
      v9 = cdXMLPrincipalPropertySearch;
      _os_log_impl(&dword_0, v4, v5, "New-style search (%@) not supported.  Falling back to old-style search (%@).", &v6, 0x16u);
    }

    [(MobileCalDAVDirectorySearch *)self _performOldStyleSearch];
  }
}

- (id)_filterTermsForOldStyleSearch
{
  v3 = [(NSSet *)self->_terms mutableCopy];
  terms = self->_terms;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_55F0;
  v10[3] = &unk_20608;
  v5 = v3;
  v11 = v5;
  [(NSSet *)terms enumerateObjectsUsingBlock:v10];
  if ([v5 count] == &dword_0 + 1)
  {
    anyObject = [v5 anyObject];
    if ([anyObject length] <= 2)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 134218242;
        v13 = 3;
        v14 = 2112;
        v15 = anyObject;
        _os_log_impl(&dword_0, v7, v8, "Removing remaining calendar directory search term because it is less than [%lu] characters in length: [%@]", buf, 0x16u);
      }

      [v5 removeAllObjects];
    }
  }

  return v5;
}

- (void)_performOldStyleSearch
{
  _filterTermsForOldStyleSearch = [(MobileCalDAVDirectorySearch *)self _filterTermsForOldStyleSearch];
  if ([_filterTermsForOldStyleSearch count])
  {
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    account = [mainPrincipal account];
    collectionSetURL = [account collectionSetURL];

    v7 = [objc_opt_class() _convertRecordTypesToSearchTypes:self->_recordTypes];
    searchPropertySet = [(MobileCalDAVDaemonAccount *)self->_account searchPropertySet];
    v9 = [[CalDAVPrincipalPropertySearchTask alloc] initWithSearchStrings:self->_terms searchTypes:v7 serverSupportSet:searchPropertySet atURL:collectionSetURL];
    [v9 setAccountInfoProvider:mainPrincipal];
    objc_initWeak(&location, v9);
    objc_initWeak(&from, self);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_59D8;
    v17 = &unk_20630;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &location);
    [v9 setCompletionBlock:&v14];
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_0, v10, v11, "Starting calendar search task: [%@]", buf, 0xCu);
    }

    [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v9, v14, v15, v16, v17];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v13, "After filtering calendar directory search terms, none are left.  Will not proceed with search.", buf, 2u);
    }

    mainPrincipal = [NSError errorWithDomain:DAErrorDomain code:84 userInfo:0];
    [(MobileCalDAVDirectorySearch *)self _finishWithError:mainPrincipal];
  }
}

+ (id)_convertRecordTypesToSearchTypes:(id)types
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5B8C;
  v8[3] = &unk_20658;
  typesCopy = types;
  v3 = objc_alloc_init(NSMutableSet);
  v10 = v3;
  v4 = typesCopy;
  v5 = objc_retainBlock(v8);
  (v5[2])(v5, DADCalendarDirectorySearchRecordType_Users, @"INDIVIDUAL");
  (v5[2])(v5, DADCalendarDirectorySearchRecordType_Locations, @"ROOM");
  (v5[2])(v5, DADCalendarDirectorySearchRecordType_Groups, @"GROUP");
  (v5[2])(v5, DADCalendarDirectorySearchRecordType_Resources, @"RESOURCE");
  v6 = v3;

  return v3;
}

- (void)_performNewStyleSearch
{
  if (([CalDAVCalendarUserSearchTask tokensAreLegal:self->_terms]& 1) != 0)
  {
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    account = [mainPrincipal account];
    collectionSetURL = [account collectionSetURL];

    v6 = [[CalDAVCalendarUserSearchTask alloc] initWithSearchStrings:self->_terms atURL:collectionSetURL];
    [v6 setAccountInfoProvider:mainPrincipal];
    [v6 setFindAttendees:0];
    recordTypes = self->_recordTypes;
    if (recordTypes)
    {
      v8 = [(NSSet *)recordTypes containsObject:DADCalendarDirectorySearchRecordType_Groups];
    }

    else
    {
      v8 = 0;
    }

    [v6 setFindGroups:v8];
    v11 = self->_recordTypes;
    if (v11)
    {
      v12 = [(NSSet *)v11 containsObject:DADCalendarDirectorySearchRecordType_Locations];
    }

    else
    {
      v12 = 0;
    }

    [v6 setFindLocations:v12];
    v13 = self->_recordTypes;
    if (v13)
    {
      v14 = [(NSSet *)v13 containsObject:DADCalendarDirectorySearchRecordType_Resources];
    }

    else
    {
      v14 = 0;
    }

    [v6 setFindResources:v14];
    v15 = self->_recordTypes;
    if (v15)
    {
      v16 = [(NSSet *)v15 containsObject:DADCalendarDirectorySearchRecordType_Users];
    }

    else
    {
      v16 = 0;
    }

    [v6 setFindUsers:v16];
    [v6 setResultLimit:self->_resultLimit];
    objc_initWeak(&location, v6);
    objc_initWeak(&from, self);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_5F64;
    v22 = &unk_20630;
    objc_copyWeak(&v23, &from);
    objc_copyWeak(&v24, &location);
    [v6 setCompletionBlock:&v19];
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_0, v17, v18, "Starting calendar search task: [%@]", buf, 0xCu);
    }

    [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v6, v19, v20, v21, v22];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v10, "Calendar directory search terms are not legal.  Will not proceed with search.", buf, 2u);
    }

    mainPrincipal = [NSError errorWithDomain:DAErrorDomain code:84 userInfo:0];
    [(MobileCalDAVDirectorySearch *)self _finishWithError:mainPrincipal];
  }
}

- (void)_handleResponseForTask:(id)task
{
  taskCopy = task;
  error = [taskCopy error];
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v6, v7))
  {
    v12 = 138412546;
    v13 = taskCopy;
    v14 = 2112;
    v15 = error;
    _os_log_impl(&dword_0, v6, v7, "Calendar search task complete: [%@].  Error: [%@]", &v12, 0x16u);
  }

  if (!error)
  {
    multiStatus = [taskCopy multiStatus];
    v9 = [(MobileCalDAVDirectorySearch *)self _parseResponse:multiStatus];
    v10 = v9;
    if (v9 && [v9 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_consumer);
      [WeakRetained calendarDirectorySearchReturnedResults:v10];
    }
  }

  [(MobileCalDAVDirectorySearch *)self _finishWithError:error];
}

- (id)_parseResponse:(id)response
{
  responseCopy = response;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  responses = [responseCopy responses];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_6318;
  v16[3] = &unk_206A8;
  v16[4] = self;
  v10 = v5;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  v13 = v8;
  v20 = v13;
  [responses enumerateObjectsUsingBlock:v16];
  v14 = objc_alloc_init(NSMutableDictionary);
  if ([v10 count])
  {
    [v14 setObject:v10 forKey:DADCalendarDirectorySearchRecordType_Users];
  }

  if ([v11 count])
  {
    [v14 setObject:v11 forKey:DADCalendarDirectorySearchRecordType_Locations];
  }

  if ([v12 count])
  {
    [v14 setObject:v12 forKey:DADCalendarDirectorySearchRecordType_Groups];
  }

  if ([v13 count])
  {
    [v14 setObject:v13 forKey:DADCalendarDirectorySearchRecordType_Resources];
  }

  return v14;
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (self->_holdingGatekeeperLock)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v5, v6, "Releasing gatekeeper lock", &v11, 2u);
    }

    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];

    self->_holdingGatekeeperLock = 0;
  }

  if (!self->_finished)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_0, v8, v9, "[%@] finished with error %@", &v11, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained calendarDirectorySearchFinishedWithError:errorCopy exceededResultLimit:self->_exceededResultLimit];

    [(MobileCalDAVDaemonAccount *)self->_account calendarDirectorySearchIsGoingAway:self];
  }
}

@end