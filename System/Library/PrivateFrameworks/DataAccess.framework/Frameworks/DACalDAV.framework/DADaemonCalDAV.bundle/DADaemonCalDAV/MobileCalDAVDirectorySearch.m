@interface MobileCalDAVDirectorySearch
+ (id)_convertRecordTypesToSearchTypes:(id)a3;
- (BOOL)setNewStyleSearchTypeFromRecordTypes;
- (MobileCalDAVDirectorySearch)initWithTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6 account:(id)a7;
- (id)_filterTermsForOldStyleSearch;
- (id)_parseResponse:(id)a3;
- (id)description;
- (void)_finishWithError:(id)a3;
- (void)_handleResponseForTask:(id)a3;
- (void)_performNewStyleSearch;
- (void)_performOldStyleSearch;
- (void)_reallyPerformSearch;
- (void)cancel;
- (void)dealloc;
- (void)performSearch;
@end

@implementation MobileCalDAVDirectorySearch

- (MobileCalDAVDirectorySearch)initWithTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6 account:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = MobileCalDAVDirectorySearch;
  v17 = [(MobileCalDAVDirectorySearch *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_terms, a3);
    objc_storeStrong(&v18->_recordTypes, a4);
    v18->_resultLimit = a5;
    objc_storeWeak(&v18->_consumer, v15);
    objc_storeStrong(&v18->_account, a7);
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
    sub_16054(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVDirectorySearch;
  [(MobileCalDAVDirectorySearch *)&v3 dealloc];
}

- (id)description
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
  if (self->_finished)
  {
    [(MobileCalDAVDirectorySearch *)self _finishWithError:0];
  }

  else
  {
    [(MobileCalDAVDirectorySearch *)self _reallyPerformSearch];
  }
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVDirectorySearch *)self _finishWithError:v3];
}

- (void)_reallyPerformSearch
{
  v3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  v4 = [v3 mainPrincipal];

  if ([v4 supportsCalendarUserSearch] && -[MobileCalDAVDirectorySearch setNewStyleSearchTypeFromRecordTypes](self, "setNewStyleSearchTypeFromRecordTypes"))
  {
    [(MobileCalDAVDirectorySearch *)self _performNewStyleSearch];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = 138412546;
      v8 = cdXMLCalendarUserSearchReport;
      v9 = 2112;
      v10 = cdXMLPrincipalPropertySearch;
      _os_log_impl(&dword_0, v5, v6, "New-style search (%@) not supported.  Falling back to old-style search (%@).", &v7, 0x16u);
    }

    [(MobileCalDAVDirectorySearch *)self _performOldStyleSearch];
  }
}

- (BOOL)setNewStyleSearchTypeFromRecordTypes
{
  recordTypes = self->_recordTypes;
  if (!recordTypes)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v4 = [(NSSet *)recordTypes containsObject:DADCalendarDirectorySearchRecordType_Groups];
  v5 = [(NSSet *)self->_recordTypes containsObject:DADCalendarDirectorySearchRecordType_Locations];
  v6 = [(NSSet *)self->_recordTypes containsObject:DADCalendarDirectorySearchRecordType_Resources];
  v7 = [(NSSet *)self->_recordTypes containsObject:DADCalendarDirectorySearchRecordType_Users];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v4 != 0 && v5 == 0)
  {
    v14 = 1;
    goto LABEL_23;
  }

  v11 = 1;
  if (v7)
  {
    v11 = 2;
  }

  if (!v5)
  {
    v11 = v7;
  }

  v12 = v6 + v4 + v11;
  if (v12 == 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = 3;
LABEL_23:
    self->_searchType = v14;
    return 1;
  }

  if (v12 == 1)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v14 = 2;
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    v17 = v4;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v14 = 4;
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v14 = 5;
    goto LABEL_23;
  }

  return 0;
}

- (id)_filterTermsForOldStyleSearch
{
  v3 = [(NSSet *)self->_terms mutableCopy];
  terms = self->_terms;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9EB0;
  v10[3] = &unk_28900;
  v5 = v3;
  v11 = v5;
  [(NSSet *)terms enumerateObjectsUsingBlock:v10];
  if ([v5 count] == &dword_0 + 1)
  {
    v6 = [v5 anyObject];
    if ([v6 length] <= 2)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 134218242;
        v13 = 3;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_0, v7, v8, "Removing remaining calendar directory search term because it is less than [%lu] characters in length: [%@]", buf, 0x16u);
      }

      [v5 removeAllObjects];
    }
  }

  return v5;
}

- (void)_performOldStyleSearch
{
  v3 = [(MobileCalDAVDirectorySearch *)self _filterTermsForOldStyleSearch];
  if ([v3 count])
  {
    v4 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    v5 = [v4 mainPrincipal];

    v6 = [v5 account];
    v7 = [v6 collectionSetURL];

    v8 = [objc_opt_class() _convertRecordTypesToSearchTypes:self->_recordTypes];
    v9 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    v10 = [v9 searchPropertySet];

    v11 = [[CalDAVPrincipalPropertySearchTask alloc] initWithSearchStrings:self->_terms searchTypes:v8 serverSupportSet:v10 atURL:v7];
    [v11 setAccountInfoProvider:v5];
    objc_initWeak(&location, v11);
    objc_initWeak(&from, self);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_A2BC;
    v19 = &unk_287B8;
    objc_copyWeak(&v20, &from);
    objc_copyWeak(&v21, &location);
    [v11 setCompletionBlock:&v16];
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_0, v12, v13, "Starting calendar search task: [%@]", buf, 0xCu);
    }

    [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v11, v16, v17, v18, v19];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, v15, "After filtering calendar directory search terms, none are left.  Will not proceed with search.", buf, 2u);
    }

    v5 = [NSError errorWithDomain:DAErrorDomain code:86 userInfo:0];
    [(MobileCalDAVDirectorySearch *)self _finishWithError:v5];
  }
}

+ (id)_convertRecordTypesToSearchTypes:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A470;
  v8[3] = &unk_28928;
  v9 = a3;
  v3 = objc_alloc_init(NSMutableSet);
  v10 = v3;
  v4 = v9;
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
    v3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    v4 = [v3 mainPrincipal];

    v5 = [v4 account];
    v6 = [v5 collectionSetURL];

    v7 = [[CalDAVCalendarUserSearchTask alloc] initWithSearchStrings:self->_terms atURL:v6];
    [v7 setAccountInfoProvider:v4];
    [v7 setSearchType:self->_searchType];
    [v7 setResultLimit:self->_resultLimit];
    objc_initWeak(&location, v7);
    objc_initWeak(&from, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_A7AC;
    v15 = &unk_287B8;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &location);
    [v7 setCompletionBlock:&v12];
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_0, v8, v9, "Starting calendar search task: [%@]", buf, 0xCu);
    }

    [(DACoreDAVTaskManager *)self->_taskManager submitIndependentCoreDAVTask:v7, v12, v13, v14, v15];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, v11, "Calendar directory search terms are not legal.  Will not proceed with search.", buf, 2u);
    }

    v4 = [NSError errorWithDomain:DAErrorDomain code:86 userInfo:0];
    [(MobileCalDAVDirectorySearch *)self _finishWithError:v4];
  }
}

- (void)_handleResponseForTask:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v6, v7))
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, v7, "Calendar search task complete: [%@].  Error: [%@]", &v12, 0x16u);
  }

  if (!v5)
  {
    v8 = [v4 multiStatus];
    v9 = [(MobileCalDAVDirectorySearch *)self _parseResponse:v8];
    v10 = v9;
    if (v9 && [v9 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_consumer);
      [WeakRetained calendarDirectorySearchReturnedResults:v10];
    }
  }

  [(MobileCalDAVDirectorySearch *)self _finishWithError:v5];
}

- (id)_parseResponse:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [v4 responses];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_AB60;
  v16[3] = &unk_28978;
  v16[4] = self;
  v10 = v5;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  v13 = v8;
  v20 = v13;
  [v9 enumerateObjectsUsingBlock:v16];
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
    [WeakRetained calendarDirectorySearchFinishedWithError:v4 exceededResultLimit:self->_exceededResultLimit];

    [(MobileCalDAVDADaemonAccount *)self->_account calendarDirectorySearchIsGoingAway:self];
  }
}

@end