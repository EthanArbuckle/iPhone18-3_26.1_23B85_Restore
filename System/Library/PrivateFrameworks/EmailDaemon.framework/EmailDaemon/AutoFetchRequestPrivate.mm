@interface AutoFetchRequestPrivate
+ (NSSet)currentRequests;
- (MailAccount)account;
- (id)initRequestForMailboxUid:(id)uid;
- (void)_handleMonitorActivityMessage:(id)message;
- (void)_healAccountWithCompletionHandler:(id)handler;
- (void)_markActivityDoneWithError:(id)error;
- (void)_markAsPendingRetryWithPriority:(unint64_t)priority;
- (void)_markAsScheduled;
- (void)dealloc;
- (void)logSummary:(id)summary error:(id)error;
- (void)run;
@end

@implementation AutoFetchRequestPrivate

+ (NSSet)currentRequests
{
  if (qword_1001854E8 != -1)
  {
    sub_1000D06CC();
  }

  v2 = qword_1001854E0;
  objc_sync_enter(v2);
  v3 = [qword_1001854E0 copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)initRequestForMailboxUid:(id)uid
{
  uidCopy = uid;
  v16.receiver = self;
  v16.super_class = AutoFetchRequestPrivate;
  v6 = [(AutoFetchRequestPrivate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, uid);
    store = [uidCopy store];
    store = v7->_store;
    v7->_store = store;

    v7->_compactMailbox = 0;
    v7->_shouldLoadMessageBody = 1;
    v7->_retry = 1;
    v10 = +[DaemonAppController sharedController];
    activityPersistence = [v10 activityPersistence];
    activityPersistence = v7->_activityPersistence;
    v7->_activityPersistence = activityPersistence;

    v13 = EFFetchSignpostLog();
    v7->_signpostID = os_signpost_id_make_with_pointer(v13, v7);

    +[AutoFetchRequestPrivate currentRequests];
    v14 = qword_1001854E0;
    objc_sync_enter(v14);
    [qword_1001854E0 addObject:v7];
    objc_sync_exit(v14);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AutoFetchRequestPrivate;
  [(AutoFetchRequestPrivate *)&v4 dealloc];
}

- (void)run
{
  if (pthread_main_np())
  {
    v92 = +[NSAssertionHandler currentHandler];
    [v92 handleFailureInMethod:a2 object:self file:@"AutoFetchRequestPrivate.m" lineNumber:118 description:@"Current thread is main"];
  }

  if (EFDeviceUnlockedSinceBoot())
  {
    if (!self->_isScheduled || PCSettingsGetClassPollInterval())
    {
      goto LABEL_6;
    }

    v22 = +[MFNetworkController sharedInstance];
    isFatPipe = [v22 isFatPipe];

    if (isFatPipe)
    {
      v24 = +[MFPowerController sharedInstance];
      isPluggedIn = [v24 isPluggedIn];

      if (isPluggedIn)
      {
LABEL_6:
        v4 = +[MFNetworkController sharedInstance];
        isFatPipe2 = [v4 isFatPipe];

        v6 = +[MFActivityMonitor currentMonitor];
        monitor = self->_monitor;
        self->_monitor = v6;

        objc_initWeak(&location, self);
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v108[2] = sub_10000CD38;
        v108[3] = &unk_1001566B8;
        objc_copyWeak(v109, &location);
        v109[1] = isFatPipe2;
        [(MFActivityMonitor *)self->_monitor setStartedFetch:v108];
        Current = CFAbsoluteTimeGetCurrent();
        context = objc_autoreleasePoolPush();
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 addObserver:self selector:"_handleMonitorActivityMessage:" name:MonitoredActivityMessage object:self->_monitor];

        store = self->_store;
        if (store)
        {
          store = store;
        }

        else
        {
          store = [(MFMailboxUid *)self->_mailbox store];
        }

        v12 = store;
        mailbox = self->_mailbox;
        if (mailbox)
        {
          mailbox = mailbox;
        }

        else
        {
          mailbox = [(MFLibraryStore *)store mailbox];
        }

        v15 = mailbox;
        account = [(AutoFetchRequestPrivate *)self account];
        loggingIdentifier = [account loggingIdentifier];

        fetchWindow = [(MFLibraryStore *)v12 fetchWindow];
        shouldLoadOlderMessages = [(AutoFetchRequestPrivate *)self shouldLoadOlderMessages];
        account2 = [(MFLibraryStore *)v12 account];
        if (self->_downloadAllMessages)
        {
          fetchWindow = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (self->_shouldGrowFetchWindow)
        {
          if ([(MFLibraryStore *)v12 shouldGrowFetchWindow])
          {
            v18 = MFAutoFetchLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              ef_publicDescription = [account2 ef_publicDescription];
              ef_publicDescription2 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 134218498;
              selfCopy6 = self;
              v115 = 2114;
              *v116 = ef_publicDescription;
              *&v116[8] = 2114;
              *&v116[10] = ef_publicDescription2;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%p Will try to grow the fetch window for %{public}@, mailbox %{public}@", buf, 0x20u);
            }

            fetchWindow = [(MFLibraryStore *)v12 growFetchWindow];
            shouldLoadOlderMessages = 0;
            v21 = @"grew";
            goto LABEL_26;
          }

          self->_shouldGrowFetchWindow = 0;
        }

        v21 = @"same";
LABEL_26:
        v27 = MFAutoFetchLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription3 = [account2 ef_publicDescription];
          v28 = v15;
          ef_publicDescription4 = [(MFMailboxUid *)v15 ef_publicDescription];
          remoteID = self->_remoteID;
          v101 = v28;
          v102 = v12;
          v98 = fetchWindow;
          v100 = ef_publicDescription4;
          if (self->_shouldGrowFetchWindow)
          {
            [NSString stringWithFormat:@"%lu (%@)", fetchWindow, v21];
          }

          else
          {
            [NSNumber numberWithUnsignedInteger:fetchWindow];
          }
          v99 = ;
          shouldCompact = [(AutoFetchRequestPrivate *)self shouldCompact];
          displayErrors = [(AutoFetchRequestPrivate *)self displayErrors];
          isVisibleFetch = [(AutoFetchRequestPrivate *)self isVisibleFetch];
          isPowernapFetch = [(AutoFetchRequestPrivate *)self isPowernapFetch];
          isUserRequested = [(AutoFetchRequestPrivate *)self isUserRequested];
          isForegroundRequest = [(AutoFetchRequestPrivate *)self isForegroundRequest];
          shouldGrowFetchWindow = [(AutoFetchRequestPrivate *)self shouldGrowFetchWindow];
          downloadAllMessages = [(AutoFetchRequestPrivate *)self downloadAllMessages];
          shouldLoadMessageBody = [(AutoFetchRequestPrivate *)self shouldLoadMessageBody];
          closeConnection = [(AutoFetchRequestPrivate *)self closeConnection];
          dontNotify = [(AutoFetchRequestPrivate *)self dontNotify];
          retry = [(AutoFetchRequestPrivate *)self retry];
          *buf = 134222082;
          selfCopy6 = self;
          v115 = 2114;
          *v116 = ef_publicDescription3;
          *&v116[8] = 2114;
          *&v116[10] = v100;
          *&v116[18] = 2112;
          *&v116[20] = remoteID;
          v117 = 2112;
          v118 = v99;
          v119 = 1024;
          v120 = shouldCompact;
          v121 = 1024;
          v122 = displayErrors;
          v123 = 1024;
          v124 = isVisibleFetch;
          v125 = 1024;
          v126 = isPowernapFetch;
          v127 = 1024;
          v128 = isUserRequested;
          v129 = 1024;
          v130 = isForegroundRequest;
          v131 = 1024;
          v132 = shouldGrowFetchWindow;
          v133 = 1024;
          v134 = downloadAllMessages;
          v135 = 1024;
          v136 = shouldLoadMessageBody;
          v137 = 1024;
          v138 = closeConnection;
          v139 = 1024;
          v140 = dontNotify;
          v141 = 1024;
          v142 = retry;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%p Autofetching %{public}@, mailbox %{public}@, remoteID %@, fetchSize %@, shouldCompact: %{BOOL}d, displayErrors: %{BOOL}d, isVisibleFetch: %{BOOL}d, isPowernapFetch: %{BOOL}d, isUserRequested: %{BOOL}d, isForegroundRequest: %{BOOL}d, shouldGrowFetchWindow: %{BOOL}d, downloadAllMessages: %{BOOL}d, shouldLoadMessageBody: %{BOOL}d, closeConnection: %{BOOL}d, dontNotify: %{BOOL}d, retry: %{BOOL}d", buf, 0x7Cu);

          v15 = v101;
          v12 = v102;
          fetchWindow = v98;
        }

        v38 = MFPowerLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription5 = [account2 ef_publicDescription];
          v40 = self->_remoteID;
          *buf = 138543618;
          selfCopy6 = ef_publicDescription5;
          v115 = 2112;
          *v116 = v40;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[Autofetch] account=%{public}@ remoteID=%@", buf, 0x16u);
        }

        if (self->_isVisibleFetch)
        {
          v41 = MFAutoFetchLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            selfCopy6 = self;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%p will perform visible store fetch", buf, 0xCu);
          }
        }

        if (self->_shouldLoadMessageBody)
        {
          account3 = [(AutoFetchRequestPrivate *)self account];
          v43 = [MessageBodyLoader loaderForAccount:account3];
          [v43 beginAddingNewMessagesForStore:v12];
        }

        v44 = 2;
        if (!self->_compactMailbox)
        {
          v44 = 0;
        }

        v45 = v44 | self->_isUserRequested;
        if (self->_isForegroundRequest)
        {
          v46 = v45 | 0x10;
        }

        else
        {
          v46 = v45;
        }

        error = self->_error;
        self->_error = 0;

        self->_result = [(MFLibraryStore *)v12 fetchMobileSynchronously:fetchWindow preservingUID:self->_remoteID options:v46];
        _fetchedSuccessfully = [(AutoFetchRequestPrivate *)self _fetchedSuccessfully];
        v49 = MFAutoFetchLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          result = self->_result;
          *buf = 134218496;
          selfCopy6 = self;
          v115 = 1024;
          *v116 = _fetchedSuccessfully;
          *&v116[4] = 2048;
          *&v116[6] = result;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%p Finished fetching successfully: %{BOOL}d results count: %ld", buf, 0x1Cu);
        }

        if (_fetchedSuccessfully)
        {
          v51 = +[NSDate now];
          v52 = +[MailPersistentStorage sharedStorage];
          uRLString = [(MFMailboxUid *)v15 URLString];
          [v52 setFetchDate:v51 forSource:uRLString];

          activityPersistence = self->_activityPersistence;
          objectID = [(EMActivity *)self->_activity objectID];
          [(EDActivityPersistence *)activityPersistence activityWithID:objectID setUserInfoObject:v51 forKey:EMActivityLastSuccessfulUpdateKey];
        }

        else
        {
          account4 = [(MFLibraryStore *)v12 account];
          connectionError = [account4 connectionError];
          v58 = self->_error;
          self->_error = connectionError;

          if (!self->_error)
          {
            v59 = +[MFActivityMonitor currentMonitor];
            error = [v59 error];
            v61 = self->_error;
            self->_error = error;

            if (!self->_error)
            {
              v62 = [MFError errorWithDomain:MFMessageErrorDomain code:1030 localizedDescription:0];
              v63 = self->_error;
              self->_error = v62;
            }
          }

          v64 = MFAutoFetchLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            [(MFError *)self->_error ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            sub_1000D06E0();
          }

          v65 = MFPowerLog();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            [account2 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            [(MFError *)self->_error ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            sub_1000D0724();
          }

          Current = Current + -60000.0;
        }

        v66 = +[MFActivityMonitor currentMonitor];
        self->_gotNewMessagesState = [v66 gotNewMessagesState];

        self->_responsiveness = CFAbsoluteTimeGetCurrent() - Current;
        [(AutoFetchRequestPrivate *)self logSummary:loggingIdentifier error:self->_error];
        if ((shouldLoadOlderMessages & 1) != 0 || self->_loadNumOlderMessages && [(MFLibraryStore *)v12 serverMessageCount]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = [(MFLibraryStore *)v12 allNonDeletedCountIncludingServerSearch:0 andThreadSearch:1];
          fetchWindowCap = [(MFLibraryStore *)v12 fetchWindowCap];
          v69 = fetchWindowCap;
          v70 = shouldLoadOlderMessages;
          if (fetchWindowCap > v67)
          {
            v71 = 1;
          }

          else
          {
            v71 = shouldLoadOlderMessages;
          }

          if (v71 == 1)
          {
            loadNumOlderMessages = self->_loadNumOlderMessages;
            if (loadNumOlderMessages)
            {
              v70 = 0;
            }

            if (v70 == 1)
            {
              v73 = MFAutoFetchLog();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                ef_publicDescription6 = [account2 ef_publicDescription];
                ef_publicDescription7 = [(MFMailboxUid *)v15 ef_publicDescription];
                *buf = 134218754;
                selfCopy6 = self;
                v115 = 1024;
                *v116 = 3000;
                *&v116[4] = 2114;
                *&v116[6] = ef_publicDescription6;
                *&v116[14] = 2114;
                *&v116[16] = ef_publicDescription7;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%p Using server search to populate past the fetch window. Downloading %u messages for %{public}@, mailbox %{public}@", buf, 0x26u);
              }

              v76 = 3000;
            }

            else if (loadNumOlderMessages >= fetchWindowCap - v67)
            {
              v76 = fetchWindowCap - v67;
            }

            else
            {
              v76 = self->_loadNumOlderMessages;
            }

            v79 = MFAutoFetchLog();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              ef_publicDescription8 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 134219010;
              selfCopy6 = self;
              v115 = 1024;
              *v116 = v76;
              *&v116[4] = 2114;
              *&v116[6] = ef_publicDescription8;
              *&v116[14] = 1024;
              *&v116[16] = v67;
              *&v116[20] = 1024;
              *&v116[22] = v69;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%p Fetching %u older messages for %{public}@ (local count: %u/%u)", buf, 0x28u);
            }

            [(MFLibraryStore *)v12 fetchNumMessages:v76 preservingUID:self->_remoteID options:12];
          }

          else
          {
            v77 = MFAutoFetchLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              ef_publicDescription9 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 138543874;
              selfCopy6 = ef_publicDescription9;
              v115 = 1024;
              *v116 = v67;
              *&v116[4] = 1024;
              *&v116[6] = v69;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "NOT fetching older messages for %{public}@ (local count: %u/%u)", buf, 0x18u);
            }
          }
        }

        [(MFLibraryStore *)v12 updateServerUnreadCountClosingConnection:self->_closeConnection];
        v81 = +[DaemonAppController sharedController];
        trashCompactor = [v81 trashCompactor];
        account5 = [(MFLibraryStore *)v12 account];
        [trashCompactor emptyTrashForAccount:account5];

        v84 = qword_1001854E0;
        objc_sync_enter(v84);
        [qword_1001854E0 removeObject:self];
        objc_sync_exit(v84);

        [(MFActivityMonitor *)self->_monitor setStartedFetch:0];
        v85 = self->_error;
        if (v85)
        {
          domain = [(MFError *)v85 domain];
          v87 = [NSError errorWithDomain:domain code:[(MFError *)self->_error code] userInfo:0];

          v111 = NSUnderlyingErrorKey;
          v112 = v87;
          v88 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v89 = [NSError em_internalErrorWithReason:@"Fetching failed with underlying error" userInfo:v88];
        }

        else
        {
          v89 = 0;
        }

        retry2 = [(AutoFetchRequestPrivate *)self retry];
        if (v89)
        {
          v91 = retry2;
        }

        else
        {
          v91 = 0;
        }

        if ((v91 & 1) == 0)
        {
          [(AutoFetchRequestPrivate *)self _markActivityDoneWithError:v89];
        }

        objc_autoreleasePoolPop(context);
        objc_destroyWeak(v109);
        objc_destroyWeak(&location);
        return;
      }

      v26 = MFAutoFetchLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "skipping scheduled fetch: conditions for 'automatic' no longer exist (charging)", buf, 2u);
      }
    }

    else
    {
      v26 = MFAutoFetchLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "skipping scheduled fetch: conditions for 'automatic' no longer exist (wi-fi)", buf, 2u);
      }
    }
  }
}

- (void)_healAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(AutoFetchRequestPrivate *)self setRetry:0];
  v5 = MFAutoFetchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetch failed initial attempt. Scheduling silent heal and retry...", buf, 2u);
  }

  v6 = [MFAccountHealer alloc];
  account = [(AutoFetchRequestPrivate *)self account];
  v8 = +[MFNetworkController sharedInstance];
  error = [(AutoFetchRequestPrivate *)self error];
  v10 = [(MFAccountHealer *)v6 initWithAccount:account networkController:v8 error:error];

  v11 = EFFetchSignpostLog();
  v12 = os_signpost_id_make_with_pointer(v11, v10);

  v13 = EFFetchSignpostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    activity = self->_activity;
    *buf = 134349056;
    v25 = activity;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AutoFetchHeal", "activity=%{signpost.description:attribute,public}p", buf, 0xCu);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000D480;
  v21 = &unk_1001566E0;
  v23 = v12;
  v16 = handlerCopy;
  v22 = v16;
  v17 = objc_retainBlock(&v18);
  [(MFAccountHealer *)v10 healSilentlyWithCompletion:v17, v18, v19, v20, v21];
}

- (void)_markActivityDoneWithError:(id)error
{
  errorCopy = error;
  finished = [(EMActivity *)self->_activity finished];

  if (!finished)
  {
    activityPersistence = self->_activityPersistence;
    objectID = [(EMActivity *)self->_activity objectID];
    [(EDActivityPersistence *)activityPersistence activityWithID:objectID finishedWithError:errorCopy];

    if (errorCopy)
    {
      v8 = EFFetchSignpostLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        activity = self->_activity;
        [errorCopy ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D0770();
      }

      v10 = EFFetchSignpostLog();
      v11 = v10;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        code = [errorCopy code];
        v14 = self->_activity;
        v19 = 134349312;
        v20 = code;
        v21 = 2050;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequest", "error code=%{signpost.description:attribute,public}lld activity=%{signpost.description:attribute,public}p", &v19, 0x16u);
      }
    }

    else
    {
      v11 = EFFetchSignpostLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_activity;
        *buf = 134217984;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Activity %p did finish.", buf, 0xCu);
      }
    }

    v16 = EFFetchSignpostLog();
    v17 = v16;
    v18 = self->_signpostID;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "AutoFetchRequest", "", &v19, 2u);
    }
  }
}

- (void)_markAsPendingRetryWithPriority:(unint64_t)priority
{
  priorityCopy = priority;
  v5 = EFFetchSignpostLog();
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    activity = self->_activity;
    v9 = 134349312;
    v10 = activity;
    v11 = 1026;
    v12 = priorityCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequestRetryPending", "retry={signpost.description:attribute,public}YES activity=%{signpost.description:attribute,public}p priority=%{signpost.description:attribute,public}hhu", &v9, 0x12u);
  }
}

- (void)_markAsScheduled
{
  v3 = EFFetchSignpostLog();
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    retry = [(AutoFetchRequestPrivate *)self retry];
    activity = self->_activity;
    v8[0] = 67240448;
    v8[1] = retry;
    v9 = 2050;
    v10 = activity;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequestRetrying", "retry=%{signpost.description:attribute,public}hhu activity=%{signpost.description:attribute,public}p", v8, 0x12u);
  }
}

- (void)_handleMonitorActivityMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKey:MonitoredActivityMaxCount];
  v7 = [userInfo objectForKey:MonitoredActivityCurrentCount];
  v8 = [userInfo objectForKeyedSubscript:MonitoredActivityReset];
  if (v8)
  {

    goto LABEL_6;
  }

  if (([(MFActivityMonitor *)self->_monitor isActive]& 1) == 0)
  {
LABEL_6:
    error = [(MFActivityMonitor *)self->_monitor error];

    if (error)
    {
      error2 = [(MFActivityMonitor *)self->_monitor error];
      domain = [error2 domain];
      error3 = [(MFActivityMonitor *)self->_monitor error];
      v14 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [error3 code], 0);

      error4 = [(MFActivityMonitor *)self->_monitor error];
      mf_shortDescription = [error4 mf_shortDescription];

      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];
      if (mf_shortDescription)
      {
        [v17 setObject:mf_shortDescription forKeyedSubscript:NSLocalizedDescriptionKey];
      }
    }

    goto LABEL_10;
  }

  finished = [(EMActivity *)self->_activity finished];
  if (finished)
  {
  }

  else if ([v6 longLongValue] >= 1)
  {
    activityPersistence = self->_activityPersistence;
    objectID = [(EMActivity *)self->_activity objectID];
    -[EDActivityPersistence activityWithID:setCompletedCount:totalCount:](activityPersistence, "activityWithID:setCompletedCount:totalCount:", objectID, [v7 longLongValue], objc_msgSend(v6, "longLongValue"));

    v20 = EFFetchSignpostLog();
    v21 = v20;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v29[0] = 67240448;
      v29[1] = [v7 unsignedIntValue];
      v30 = 1026;
      unsignedIntValue = [v6 unsignedIntValue];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequest", "current=%{signpost.description:attribute,public}u total=%{signpost.description:attribute,public}u", v29, 0xEu);
    }

    userInfo2 = [(EMActivity *)self->_activity userInfo];
    v24 = EMActivityFetchStateKey;
    v25 = [userInfo2 objectForKeyedSubscript:EMActivityFetchStateKey];
    v26 = [v25 integerValue] == 2;

    if (!v26)
    {
      v27 = self->_activityPersistence;
      objectID2 = [(EMActivity *)self->_activity objectID];
      [(EDActivityPersistence *)v27 activityWithID:objectID2 setUserInfoObject:&off_1001631F0 forKey:v24];
    }
  }

LABEL_10:
}

- (void)logSummary:(id)summary error:(id)error
{
  summaryCopy = summary;
  errorCopy = error;
  if (self->_isPush)
  {
    v8 = @"push";
  }

  else if (self->_isScheduled)
  {
    v8 = @"poll";
  }

  else if (self->_isPowernapFetch)
  {
    v8 = @"powernap";
  }

  else if (self->_isUserRequested)
  {
    v8 = @"user";
  }

  else
  {
    v8 = @"other";
  }

  v20[0] = @"account";
  v20[1] = @"cause";
  v9 = @"nil";
  if (summaryCopy)
  {
    v9 = summaryCopy;
  }

  v21[0] = v9;
  v21[1] = v8;
  v20[2] = @"duration";
  v10 = [NSString stringWithFormat:@"%.2fs", *&self->_responsiveness];
  v21[2] = v10;
  v20[3] = @"tx";
  v11 = [NSNumber numberWithUnsignedInteger:[(MFActivityMonitor *)self->_monitor bytesWritten]];
  v21[3] = v11;
  v20[4] = @"rx";
  v12 = [NSNumber numberWithUnsignedInteger:[(MFActivityMonitor *)self->_monitor bytesRead]];
  v21[4] = v12;
  v20[5] = @"wifi";
  v13 = +[MFNetworkController sharedInstance];
  [v13 isFatPipe];
  v14 = NSStringFromBOOL();
  v21[5] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld", domain, [errorCopy code]);
    [v16 setObject:v18 forKey:@"error"];
  }

  if ([(AutoFetchRequestPrivate *)self _fetchedSuccessfully])
  {
    v19 = [NSNumber numberWithInteger:self->_result];
    [v16 setObject:v19 forKey:@"numFetched"];
  }

  [MFPowerController powerlog:@"AFC" eventData:v16];
}

- (MailAccount)account
{
  mailbox = self->_mailbox;
  if (!mailbox)
  {
    mailbox = self->_store;
  }

  account = [(MFMailboxUid *)mailbox account];

  return account;
}

@end