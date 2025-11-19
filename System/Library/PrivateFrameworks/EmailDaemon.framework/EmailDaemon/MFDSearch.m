@interface MFDSearch
+ (id)endpointInfo;
- (BOOL)_hasSearchableMailAccount;
- (BOOL)shouldCancel;
- (MFDSearch)initWithClient:(id)a3;
- (MFDSearch)initWithRemoteObjectInterface:(id)a3;
- (id)_searchResultsProxy;
- (unsigned)_libraryOptions;
- (void)_autoFetchDone:(id)a3;
- (void)_backgroundSearch;
- (void)_performLibrarySearch;
- (void)_registerForAutoFetchFinishedNotification;
- (void)dealloc;
- (void)findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5;
- (void)start;
- (void)stop;
@end

@implementation MFDSearch

+ (id)endpointInfo
{
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSearchProtocol];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDSearchResultsProtocol];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100064B88;
  v7[3] = &unk_100158888;
  v7[4] = a1;
  v5 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:v3 remoteObjectInterface:v4 shouldAcceptClient:0 exportedObjectForClient:v7];

  return v5;
}

- (MFDSearch)initWithClient:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MFDSearch;
  v6 = [(MFDSearch *)&v19 initWithRemoteObjectInterface:0];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100064DAC;
    v16 = &unk_1001567F0;
    objc_copyWeak(&v17, &location);
    v7 = objc_retainBlock(&v13);
    [v5 setInterruptionHandler:{v7, v13, v14, v15, v16}];
    [v5 setInvalidationHandler:v7];
    objc_storeStrong(&v6->_client, a3);
    v8 = +[MFMailMessageLibrary defaultInstance];
    library = v6->_library;
    v6->_library = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v6 selector:"_libraryWillBecomeUnavailable:" name:MailMessageLibraryWillBecomeUnavailable object:v6->_library];

    v11 = v6;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (MFDSearch)initWithRemoteObjectInterface:(id)a3
{
  v5 = a3;
  [(MFDSearch *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFDSearch initWithRemoteObjectInterface:]", "MFDSearch.m", 197, "0");
}

- (void)dealloc
{
  [(MFDSearch *)self stop];
  v3.receiver = self;
  v3.super_class = MFDSearch;
  [(MFDSearch *)&v3 dealloc];
}

- (id)_searchResultsProxy
{
  v2 = [(MFXPCClient *)self->_client connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)findMessageData:(id)a3 matchingCriterion:(id)a4 options:(unint64_t)a5
{
  v14 = a3;
  v8 = a4;
  if (self->_keys)
  {
    v9 = 1500;
    goto LABEL_10;
  }

  if (![(MFDSearch *)self _hasSearchableMailAccount])
  {
    v9 = 1501;
    goto LABEL_10;
  }

  if (!v8)
  {
    v9 = 1502;
LABEL_10:
    v11 = [NSError errorWithDomain:MSMailSearchErrorDomain code:v9 userInfo:0];
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = sub_1000651A0(v8, (a5 >> 2) & 1);
  if (v10)
  {
    [(MFDSearch *)self setOptions:a5];
    [(MFDSearch *)self setCriteria:v10];
    [(MFDSearch *)self setKeys:v14];
    if (a5)
    {
      [(MFDSearch *)self _registerForAutoFetchFinishedNotification];
      v13 = +[AutoFetchController sharedController];
      [v13 fetchNow:EMFetchTypeForcedAll];
    }

    else
    {
      [(MFDSearch *)self start];
    }

    v11 = 0;
  }

  else
  {
    v11 = [NSError errorWithDomain:MSMailSearchErrorDomain code:1503 userInfo:0];
  }

  if (v11)
  {
LABEL_11:
    v12 = [(MFDSearch *)self _searchResultsProxy];
    [v12 foundResults:0 error:v11];
  }

LABEL_12:
}

- (BOOL)_hasSearchableMailAccount
{
  +[MailAccount mailAccounts];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    v5 = kAccountDataclassMail;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 && ([v7 isEnabledForDataclass:{v5, v10}])
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)_registerForAutoFetchFinishedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_autoFetchDone:" name:@"AutoFetchDoneNotification" object:0];
}

- (void)_autoFetchDone:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"AutoFetchDoneNotification" object:0];

  [(MFDSearch *)self start];
}

- (void)start
{
  if (!self->_criteria)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFDSearch.m" lineNumber:298 description:@"attempt to start a search without setting criteria"];
  }

  v7 = [MFMonitoredInvocation invocationWithSelector:"_backgroundSearch" target:self taskName:@"MailServices Search" priority:11 canBeCancelled:1];
  [v7 retainArguments];
  v3 = [v7 monitor];
  monitor = self->_monitor;
  self->_monitor = v3;

  v5 = +[MFInvocationQueue sharedInvocationQueue];
  [v5 addInvocation:v7];
}

- (void)stop
{
  [(MFActivityMonitor *)self->_monitor cancel];
  v3 = [(MFDSearch *)self searchProgress];
  [v3 cancel];
}

- (BOOL)shouldCancel
{
  if (([(MFActivityMonitor *)self->_monitor shouldCancel]& 1) != 0)
  {
    return 1;
  }

  v4 = [(MFDSearch *)self searchProgress];
  v3 = [v4 isCancelled];

  return v3;
}

- (void)_performLibrarySearch
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    criteria = self->_criteria;
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = criteria;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#MailServices %@ searching library for criteria: %@", &v9, 0x16u);
  }

  v5 = [(MFDSearch *)self _libraryOptions];
  library = self->_library;
  v7 = self->_criteria;
  v8 = [(MFDSearch *)self resultsQueue];
  [(MFMailMessageLibrary *)library iterateMessagesMatchingCriterion:v7 withResultHandler:v8 options:v5 withMonitor:self];
}

- (void)_backgroundSearch
{
  v3 = [(MFDSearch *)self _searchResultsProxy];
  v4 = [[_MFDSearchResultsQueue alloc] initWithKeys:self->_keys resultsProxy:v3];
  [(MFDSearch *)self setResultsQueue:v4];

  if (![(MFDSearch *)self shouldCancel])
  {
    [(MFDSearch *)self _performLibrarySearch];
  }

  if ([(MFDSearch *)self shouldCancel])
  {
    v5 = [NSError errorWithDomain:MSMailSearchErrorDomain code:1504 userInfo:0];
  }

  else
  {
    v6 = [(MFDSearch *)self resultsQueue];
    [v6 flush];

    v5 = 0;
  }

  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @" with error: ";
    v9 = &stru_10015BEC8;
    v11 = 138412802;
    v12 = self;
    if (!v5)
    {
      v8 = &stru_10015BEC8;
    }

    v13 = 2112;
    if (v5)
    {
      v9 = v5;
    }

    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#MailServices %@ finished search%@%@", &v11, 0x20u);
  }

  v10 = [(MFDSearch *)self resultsQueue];
  [v10 finishWithError:v5];

  [(MFDSearch *)self setResultsQueue:0];
  [(MFDSearch *)self setSearchPromise:0];
  [(MFDSearch *)self setSearchProgress:0];
}

- (unsigned)_libraryOptions
{
  v17[0] = @"MSResultsKeyRecievingAddresses";
  v17[1] = @"MSResultsKeyRecipientTo";
  v18[0] = &off_100163430;
  v18[1] = &off_100163430;
  v17[2] = @"MSResultsKeyRecipientCc";
  v17[3] = @"MSResultsKeyRecipientBcc";
  v18[2] = &off_100163430;
  v18[3] = &off_100163430;
  v17[4] = @"MSResultsKeySender";
  v17[5] = @"MSResultsKeySubject";
  v18[4] = &off_100163448;
  v18[5] = &off_100163460;
  v17[6] = @"MSResultsKeyBodySummary";
  v18[6] = &off_100163478;
  v3 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_keys;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    v7 = 6272;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = [v9 unsignedIntValue];

        v7 |= v10;
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 6272;
  }

  return v7;
}

@end