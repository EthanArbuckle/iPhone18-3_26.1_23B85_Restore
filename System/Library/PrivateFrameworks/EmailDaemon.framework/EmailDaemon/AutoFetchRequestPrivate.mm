@interface AutoFetchRequestPrivate
+ (NSSet)currentRequests;
- (MailAccount)account;
- (id)initRequestForMailboxUid:(id)a3;
- (void)_handleMonitorActivityMessage:(id)a3;
- (void)_healAccountWithCompletionHandler:(id)a3;
- (void)_markActivityDoneWithError:(id)a3;
- (void)_markAsPendingRetryWithPriority:(unint64_t)a3;
- (void)_markAsScheduled;
- (void)dealloc;
- (void)logSummary:(id)a3 error:(id)a4;
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

- (id)initRequestForMailboxUid:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = AutoFetchRequestPrivate;
  v6 = [(AutoFetchRequestPrivate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, a3);
    v8 = [v5 store];
    store = v7->_store;
    v7->_store = v8;

    v7->_compactMailbox = 0;
    v7->_shouldLoadMessageBody = 1;
    v7->_retry = 1;
    v10 = +[DaemonAppController sharedController];
    v11 = [v10 activityPersistence];
    activityPersistence = v7->_activityPersistence;
    v7->_activityPersistence = v11;

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
    v23 = [v22 isFatPipe];

    if (v23)
    {
      v24 = +[MFPowerController sharedInstance];
      v25 = [v24 isPluggedIn];

      if (v25)
      {
LABEL_6:
        v4 = +[MFNetworkController sharedInstance];
        v5 = [v4 isFatPipe];

        v6 = +[MFActivityMonitor currentMonitor];
        monitor = self->_monitor;
        self->_monitor = v6;

        objc_initWeak(&location, self);
        v108[0] = _NSConcreteStackBlock;
        v108[1] = 3221225472;
        v108[2] = sub_10000CD38;
        v108[3] = &unk_1001566B8;
        objc_copyWeak(v109, &location);
        v109[1] = v5;
        [(MFActivityMonitor *)self->_monitor setStartedFetch:v108];
        Current = CFAbsoluteTimeGetCurrent();
        context = objc_autoreleasePoolPush();
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 addObserver:self selector:"_handleMonitorActivityMessage:" name:MonitoredActivityMessage object:self->_monitor];

        store = self->_store;
        if (store)
        {
          v11 = store;
        }

        else
        {
          v11 = [(MFMailboxUid *)self->_mailbox store];
        }

        v12 = v11;
        mailbox = self->_mailbox;
        if (mailbox)
        {
          v14 = mailbox;
        }

        else
        {
          v14 = [(MFLibraryStore *)v11 mailbox];
        }

        v15 = v14;
        v16 = [(AutoFetchRequestPrivate *)self account];
        v106 = [v16 loggingIdentifier];

        v17 = [(MFLibraryStore *)v12 fetchWindow];
        v105 = [(AutoFetchRequestPrivate *)self shouldLoadOlderMessages];
        v107 = [(MFLibraryStore *)v12 account];
        if (self->_downloadAllMessages)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (self->_shouldGrowFetchWindow)
        {
          if ([(MFLibraryStore *)v12 shouldGrowFetchWindow])
          {
            v18 = MFAutoFetchLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v107 ef_publicDescription];
              v20 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 134218498;
              v114 = self;
              v115 = 2114;
              *v116 = v19;
              *&v116[8] = 2114;
              *&v116[10] = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%p Will try to grow the fetch window for %{public}@, mailbox %{public}@", buf, 0x20u);
            }

            v17 = [(MFLibraryStore *)v12 growFetchWindow];
            v105 = 0;
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
          v103 = [v107 ef_publicDescription];
          v28 = v15;
          v29 = [(MFMailboxUid *)v15 ef_publicDescription];
          remoteID = self->_remoteID;
          v101 = v28;
          v102 = v12;
          v98 = v17;
          v100 = v29;
          if (self->_shouldGrowFetchWindow)
          {
            [NSString stringWithFormat:@"%lu (%@)", v17, v21];
          }

          else
          {
            [NSNumber numberWithUnsignedInteger:v17];
          }
          v99 = ;
          v97 = [(AutoFetchRequestPrivate *)self shouldCompact];
          v96 = [(AutoFetchRequestPrivate *)self displayErrors];
          v95 = [(AutoFetchRequestPrivate *)self isVisibleFetch];
          v94 = [(AutoFetchRequestPrivate *)self isPowernapFetch];
          v93 = [(AutoFetchRequestPrivate *)self isUserRequested];
          v31 = [(AutoFetchRequestPrivate *)self isForegroundRequest];
          v32 = [(AutoFetchRequestPrivate *)self shouldGrowFetchWindow];
          v33 = [(AutoFetchRequestPrivate *)self downloadAllMessages];
          v34 = [(AutoFetchRequestPrivate *)self shouldLoadMessageBody];
          v35 = [(AutoFetchRequestPrivate *)self closeConnection];
          v36 = [(AutoFetchRequestPrivate *)self dontNotify];
          v37 = [(AutoFetchRequestPrivate *)self retry];
          *buf = 134222082;
          v114 = self;
          v115 = 2114;
          *v116 = v103;
          *&v116[8] = 2114;
          *&v116[10] = v100;
          *&v116[18] = 2112;
          *&v116[20] = remoteID;
          v117 = 2112;
          v118 = v99;
          v119 = 1024;
          v120 = v97;
          v121 = 1024;
          v122 = v96;
          v123 = 1024;
          v124 = v95;
          v125 = 1024;
          v126 = v94;
          v127 = 1024;
          v128 = v93;
          v129 = 1024;
          v130 = v31;
          v131 = 1024;
          v132 = v32;
          v133 = 1024;
          v134 = v33;
          v135 = 1024;
          v136 = v34;
          v137 = 1024;
          v138 = v35;
          v139 = 1024;
          v140 = v36;
          v141 = 1024;
          v142 = v37;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%p Autofetching %{public}@, mailbox %{public}@, remoteID %@, fetchSize %@, shouldCompact: %{BOOL}d, displayErrors: %{BOOL}d, isVisibleFetch: %{BOOL}d, isPowernapFetch: %{BOOL}d, isUserRequested: %{BOOL}d, isForegroundRequest: %{BOOL}d, shouldGrowFetchWindow: %{BOOL}d, downloadAllMessages: %{BOOL}d, shouldLoadMessageBody: %{BOOL}d, closeConnection: %{BOOL}d, dontNotify: %{BOOL}d, retry: %{BOOL}d", buf, 0x7Cu);

          v15 = v101;
          v12 = v102;
          v17 = v98;
        }

        v38 = MFPowerLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v107 ef_publicDescription];
          v40 = self->_remoteID;
          *buf = 138543618;
          v114 = v39;
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
            v114 = self;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%p will perform visible store fetch", buf, 0xCu);
          }
        }

        if (self->_shouldLoadMessageBody)
        {
          v42 = [(AutoFetchRequestPrivate *)self account];
          v43 = [MessageBodyLoader loaderForAccount:v42];
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

        self->_result = [(MFLibraryStore *)v12 fetchMobileSynchronously:v17 preservingUID:self->_remoteID options:v46];
        v48 = [(AutoFetchRequestPrivate *)self _fetchedSuccessfully];
        v49 = MFAutoFetchLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          result = self->_result;
          *buf = 134218496;
          v114 = self;
          v115 = 1024;
          *v116 = v48;
          *&v116[4] = 2048;
          *&v116[6] = result;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%p Finished fetching successfully: %{BOOL}d results count: %ld", buf, 0x1Cu);
        }

        if (v48)
        {
          v51 = +[NSDate now];
          v52 = +[MailPersistentStorage sharedStorage];
          v53 = [(MFMailboxUid *)v15 URLString];
          [v52 setFetchDate:v51 forSource:v53];

          activityPersistence = self->_activityPersistence;
          v55 = [(EMActivity *)self->_activity objectID];
          [(EDActivityPersistence *)activityPersistence activityWithID:v55 setUserInfoObject:v51 forKey:EMActivityLastSuccessfulUpdateKey];
        }

        else
        {
          v56 = [(MFLibraryStore *)v12 account];
          v57 = [v56 connectionError];
          v58 = self->_error;
          self->_error = v57;

          if (!self->_error)
          {
            v59 = +[MFActivityMonitor currentMonitor];
            v60 = [v59 error];
            v61 = self->_error;
            self->_error = v60;

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
            [v107 ef_publicDescription];
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
        [(AutoFetchRequestPrivate *)self logSummary:v106 error:self->_error];
        if ((v105 & 1) != 0 || self->_loadNumOlderMessages && [(MFLibraryStore *)v12 serverMessageCount]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = [(MFLibraryStore *)v12 allNonDeletedCountIncludingServerSearch:0 andThreadSearch:1];
          v68 = [(MFLibraryStore *)v12 fetchWindowCap];
          v69 = v68;
          v70 = v105;
          if (v68 > v67)
          {
            v71 = 1;
          }

          else
          {
            v71 = v105;
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
                v74 = [v107 ef_publicDescription];
                v75 = [(MFMailboxUid *)v15 ef_publicDescription];
                *buf = 134218754;
                v114 = self;
                v115 = 1024;
                *v116 = 3000;
                *&v116[4] = 2114;
                *&v116[6] = v74;
                *&v116[14] = 2114;
                *&v116[16] = v75;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%p Using server search to populate past the fetch window. Downloading %u messages for %{public}@, mailbox %{public}@", buf, 0x26u);
              }

              v76 = 3000;
            }

            else if (loadNumOlderMessages >= v68 - v67)
            {
              v76 = v68 - v67;
            }

            else
            {
              v76 = self->_loadNumOlderMessages;
            }

            v79 = MFAutoFetchLog();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 134219010;
              v114 = self;
              v115 = 1024;
              *v116 = v76;
              *&v116[4] = 2114;
              *&v116[6] = v80;
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
              v78 = [(MFMailboxUid *)v15 ef_publicDescription];
              *buf = 138543874;
              v114 = v78;
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
        v82 = [v81 trashCompactor];
        v83 = [(MFLibraryStore *)v12 account];
        [v82 emptyTrashForAccount:v83];

        v84 = qword_1001854E0;
        objc_sync_enter(v84);
        [qword_1001854E0 removeObject:self];
        objc_sync_exit(v84);

        [(MFActivityMonitor *)self->_monitor setStartedFetch:0];
        v85 = self->_error;
        if (v85)
        {
          v86 = [(MFError *)v85 domain];
          v87 = [NSError errorWithDomain:v86 code:[(MFError *)self->_error code] userInfo:0];

          v111 = NSUnderlyingErrorKey;
          v112 = v87;
          v88 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v89 = [NSError em_internalErrorWithReason:@"Fetching failed with underlying error" userInfo:v88];
        }

        else
        {
          v89 = 0;
        }

        v90 = [(AutoFetchRequestPrivate *)self retry];
        if (v89)
        {
          v91 = v90;
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

- (void)_healAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(AutoFetchRequestPrivate *)self setRetry:0];
  v5 = MFAutoFetchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetch failed initial attempt. Scheduling silent heal and retry...", buf, 2u);
  }

  v6 = [MFAccountHealer alloc];
  v7 = [(AutoFetchRequestPrivate *)self account];
  v8 = +[MFNetworkController sharedInstance];
  v9 = [(AutoFetchRequestPrivate *)self error];
  v10 = [(MFAccountHealer *)v6 initWithAccount:v7 networkController:v8 error:v9];

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
  v16 = v4;
  v22 = v16;
  v17 = objc_retainBlock(&v18);
  [(MFAccountHealer *)v10 healSilentlyWithCompletion:v17, v18, v19, v20, v21];
}

- (void)_markActivityDoneWithError:(id)a3
{
  v4 = a3;
  v5 = [(EMActivity *)self->_activity finished];

  if (!v5)
  {
    activityPersistence = self->_activityPersistence;
    v7 = [(EMActivity *)self->_activity objectID];
    [(EDActivityPersistence *)activityPersistence activityWithID:v7 finishedWithError:v4];

    if (v4)
    {
      v8 = EFFetchSignpostLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        activity = self->_activity;
        [v4 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D0770();
      }

      v10 = EFFetchSignpostLog();
      v11 = v10;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v13 = [v4 code];
        v14 = self->_activity;
        v19 = 134349312;
        v20 = v13;
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

- (void)_markAsPendingRetryWithPriority:(unint64_t)a3
{
  v3 = a3;
  v5 = EFFetchSignpostLog();
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    activity = self->_activity;
    v9 = 134349312;
    v10 = activity;
    v11 = 1026;
    v12 = v3;
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
    v6 = [(AutoFetchRequestPrivate *)self retry];
    activity = self->_activity;
    v8[0] = 67240448;
    v8[1] = v6;
    v9 = 2050;
    v10 = activity;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequestRetrying", "retry=%{signpost.description:attribute,public}hhu activity=%{signpost.description:attribute,public}p", v8, 0x12u);
  }
}

- (void)_handleMonitorActivityMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:MonitoredActivityMaxCount];
  v7 = [v5 objectForKey:MonitoredActivityCurrentCount];
  v8 = [v5 objectForKeyedSubscript:MonitoredActivityReset];
  if (v8)
  {

    goto LABEL_6;
  }

  if (([(MFActivityMonitor *)self->_monitor isActive]& 1) == 0)
  {
LABEL_6:
    v10 = [(MFActivityMonitor *)self->_monitor error];

    if (v10)
    {
      v11 = [(MFActivityMonitor *)self->_monitor error];
      v12 = [v11 domain];
      v13 = [(MFActivityMonitor *)self->_monitor error];
      v14 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v12, [v13 code], 0);

      v15 = [(MFActivityMonitor *)self->_monitor error];
      v16 = [v15 mf_shortDescription];

      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];
      if (v16)
      {
        [v17 setObject:v16 forKeyedSubscript:NSLocalizedDescriptionKey];
      }
    }

    goto LABEL_10;
  }

  v9 = [(EMActivity *)self->_activity finished];
  if (v9)
  {
  }

  else if ([v6 longLongValue] >= 1)
  {
    activityPersistence = self->_activityPersistence;
    v19 = [(EMActivity *)self->_activity objectID];
    -[EDActivityPersistence activityWithID:setCompletedCount:totalCount:](activityPersistence, "activityWithID:setCompletedCount:totalCount:", v19, [v7 longLongValue], objc_msgSend(v6, "longLongValue"));

    v20 = EFFetchSignpostLog();
    v21 = v20;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v29[0] = 67240448;
      v29[1] = [v7 unsignedIntValue];
      v30 = 1026;
      v31 = [v6 unsignedIntValue];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, signpostID, "AutoFetchRequest", "current=%{signpost.description:attribute,public}u total=%{signpost.description:attribute,public}u", v29, 0xEu);
    }

    v23 = [(EMActivity *)self->_activity userInfo];
    v24 = EMActivityFetchStateKey;
    v25 = [v23 objectForKeyedSubscript:EMActivityFetchStateKey];
    v26 = [v25 integerValue] == 2;

    if (!v26)
    {
      v27 = self->_activityPersistence;
      v28 = [(EMActivity *)self->_activity objectID];
      [(EDActivityPersistence *)v27 activityWithID:v28 setUserInfoObject:&off_1001631F0 forKey:v24];
    }
  }

LABEL_10:
}

- (void)logSummary:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  if (v6)
  {
    v9 = v6;
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

  if (v7)
  {
    v17 = [v7 domain];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld", v17, [v7 code]);
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

  v4 = [(MFMailboxUid *)mailbox account];

  return v4;
}

@end