@interface MailboxAutoFetchController
+ (MailboxAutoFetchController)sharedController;
+ (OS_os_log)signpostLog;
+ (id)log;
- (BOOL)_shouldAutoFetchAccount:(id)account whenVisible:(BOOL)visible;
- (MailboxAutoFetchController)initWithFavoritesPersistence:(id)persistence;
- (id)_invocationWithTarget:(id)target priority:(unint64_t)priority;
- (id)_visibleMailboxes;
- (id)copyDiagnosticInformation;
- (id)diagnosticInformation;
- (unint64_t)signpostID;
- (void)_checkForReachability;
- (void)_checkForWiFi;
- (void)_cleanUpReachabilityTimer;
- (void)_createJobList;
- (void)_createJobListFinished:(id)finished;
- (void)_doFetchChangedMailboxes:(id)mailboxes forAccount:(id)account options:(int)options;
- (void)_fetchCompleted:(id)completed;
- (void)_finishAutoFetch;
- (void)_logSignpostForMailboxFetch:(id)fetch finished:(BOOL)finished;
- (void)_logSignpostForMailboxFetchRetry:(id)retry;
- (void)_newNotificationSoundSent:(id)sent;
- (void)_reportReachabilityChange:(id)change;
- (void)_reportReachabilityTimeout;
- (void)_reportSynchronousFetchCompletion:(id)completion;
- (void)_scheduleAllJobs;
- (void)_scheduleRequest:(id)request priority:(unint64_t)priority selector:(SEL)selector;
- (void)_scheduleRetryRequest:(id)request priority:(unint64_t)priority selector:(SEL)selector;
- (void)_startAutoFetch:(int)fetch withAccounts:(id)accounts;
- (void)dealloc;
- (void)fetchForPowernap;
- (void)fetchNow:(int)now withAccounts:(id)accounts;
- (void)fetchNow:(int)now withMailboxes:(id)mailboxes;
- (void)networkConfigurationChanged;
- (void)setAutoFetchState:(int64_t)state;
- (void)setDataSource:(id)source;
@end

@implementation MailboxAutoFetchController

+ (MailboxAutoFetchController)sharedController
{
  if (qword_1001855E0 != -1)
  {
    sub_1000D3628();
  }

  v3 = qword_1001855D8;

  return v3;
}

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000288DC;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001855D0 != -1)
  {
    dispatch_once(&qword_1001855D0, block);
  }

  v2 = qword_1001855C8;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (id)_visibleMailboxes
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  visibleMailboxesToSyncByMailbox = [WeakRetained visibleMailboxesToSyncByMailbox];

  v4 = +[MailboxAutoFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = visibleMailboxesToSyncByMailbox;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "visible mailboxes: %@", &v6, 0xCu);
  }

  return visibleMailboxesToSyncByMailbox;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028858;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001855C0 != -1)
  {
    dispatch_once(&qword_1001855C0, block);
  }

  v2 = qword_1001855B8;

  return v2;
}

- (void)_checkForReachability
{
  v4 = MFAutoFetchLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    visibleMailboxes = self->_visibleMailboxes;
    *buf = 138412290;
    v22 = visibleMailboxes;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Autofetch beginning. Visible mailboxes are %@", buf, 0xCu);
  }

  if (self->_networkWakeupCancelationToken)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:722 description:@"should not be a reachability timeout cancelation token."];
  }

  if (!self->_monitoringReachability)
  {
    v6 = +[CPNetworkObserver sharedNetworkObserver];
    [v6 addNetworkReachableObserver:self selector:"_reportReachabilityChange:"];

    v7 = +[CPNetworkObserver sharedNetworkObserver];
    self->_isReachable = [v7 isNetworkReachable];

    self->_monitoringReachability = 1;
  }

  v8 = +[MFNetworkController sharedInstance];
  dataStatus = [v8 dataStatus];

  if (dataStatus)
  {
    v10 = MFErrorCodeWithDataStatus();
    v11 = MFAutoFetchLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithInteger:dataStatus];
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelling autofetch, data status %@", buf, 0xCu);
    }

    if (v10 >= 1 && (self->_fetchType & 2) != 0)
    {
      v13 = [MFError errorWithDomain:MFMessageErrorDomain code:v10 userInfo:0];
      v14 = sub_100027C70();
      [v14 displayError:v13 forAccount:0 mode:2];
    }

    [(MailboxAutoFetchController *)self _finishAutoFetch];
  }

  else if (self->_isReachable)
  {
    [(MailboxAutoFetchController *)self _checkForWiFi];
  }

  else
  {
    [(MailboxAutoFetchController *)self setAutoFetchState:2];
    fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002AF0C;
    v20[3] = &unk_100156400;
    v20[4] = self;
    v16 = [fetchScheduler afterDelay:v20 performBlock:40.0];
    networkWakeupCancelationToken = self->_networkWakeupCancelationToken;
    self->_networkWakeupCancelationToken = v16;

    if (!self->_networkWakeupCancelationToken)
    {
      v19 = +[NSAssertionHandler currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:756 description:@"should have made a network wakeup timeout cancelation token."];
    }
  }
}

- (void)_checkForWiFi
{
  v3 = MFAutoFetchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isReachable)
    {
      v4 = "up";
    }

    else
    {
      v4 = "down";
    }

    *buf = 136315138;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Network stack is %s", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_visibleMailboxes;
  v6 = 0;
  v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        account = [v10 account];
        v12 = [(MailboxAutoFetchController *)self _shouldAutoFetchAccount:account whenVisible:1];

        if (v12)
        {
          if (!v6)
          {
            v6 = +[NSMutableArray array];
          }

          v13 = [[AutoFetchRequestPrivate alloc] initRequestForMailboxUid:v10];
          [v13 setIsVisibleFetch:1];
          [v13 setIsUserRequested:(self->_fetchType >> 5) & 1];
          [v13 setIsForegroundRequest:(self->_fetchType >> 6) & 1];
          [v13 setShouldGrowFetchWindow:(self->_fetchType >> 7) & 1];
          [v13 setShouldLoadOlderMessages:HIWORD(self->_fetchType) & 1];
          [v13 setIsScheduled:(self->_fetchType >> 9) & 1];
          [v6 addObject:v13];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v14 = [v6 copy];
  visibleSourceJobList = self->_visibleSourceJobList;
  self->_visibleSourceJobList = v14;

  if (!self->_isReachable)
  {
    goto LABEL_21;
  }

  v16 = +[CPNetworkObserver sharedNetworkObserver];
  isWiFiEnabled = [v16 isWiFiEnabled];

  if (!isWiFiEnabled)
  {
    goto LABEL_21;
  }

  v18 = +[PCPersistentTimer lastSystemWakeDate];
  [v18 timeIntervalSinceNow];
  v20 = v19;

  v21 = v20 + 9.0;
  if (v21 > 0.0)
  {
    [(MailboxAutoFetchController *)self setAutoFetchState:1];
    fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002B4C8;
    v24[3] = &unk_100156400;
    v24[4] = self;
    v23 = [fetchScheduler afterDelay:v24 performBlock:v21];
  }

  else
  {
LABEL_21:
    [(MailboxAutoFetchController *)self _createJobList];
  }
}

- (void)_createJobList
{
  v3 = MFAutoFetchLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[MFNetworkController sharedInstance];
    isFatPipe = [v4 isFatPipe];
    v6 = @"NO";
    if (isFatPipe)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFi up: %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = WeakRetained;
  fetchType = self->_fetchType;
  if ((fetchType & 0x8000) != 0)
  {
    self->_tryFetchWhenReachable = 0;
    activeAccountsToSyncByMailbox = [WeakRetained activeAccountsToSyncByMailbox];
    [v7 addObjectsFromArray:activeAccountsToSyncByMailbox];
  }

  else
  {
    if ((fetchType & 0x10) == 0 || !self->_isReachable)
    {
      goto LABEL_20;
    }

    self->_tryFetchWhenReachable = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    activeAccountsToSyncByMailbox = [WeakRetained activeAccountsToSyncByMailbox];
    v12 = [activeAccountsToSyncByMailbox countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(activeAccountsToSyncByMailbox);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([(MailboxAutoFetchController *)self _shouldAutoFetchAccount:v15 whenVisible:0])
          {
            [v7 addObject:v15];
          }
        }

        v12 = [activeAccountsToSyncByMailbox countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

LABEL_20:
  v16 = [[AutoFetchCreateJobListPrivate alloc] initForAccounts:v7 accountResponsiveness:self->_accountResponsiveness fetchType:self->_fetchType];
  if (v16)
  {
    v17 = +[MFPowerController sharedInstance];
    [v17 retainAssertionWithIdentifier:@"com.apple.mobilemail.autofetch"];

    v18 = [(MailboxAutoFetchController *)self _invocationWithTarget:v16 priority:8];
    v19 = +[NSNotificationCenter defaultCenter];
    monitor = [v18 monitor];
    [v19 addObserver:self selector:"_createJobListFinished:" name:MonitoredActivityEnded object:monitor];

    v21 = +[MFInvocationQueue sharedInvocationQueue];
    [v21 addInvocation:v18];

    [(MailboxAutoFetchController *)self setAutoFetchState:3];
  }

  else
  {
    v16 = 0;
    if (self->_visibleSourceJobList)
    {
      [(MailboxAutoFetchController *)self _scheduleAllJobs];
    }

    else
    {
      [(MailboxAutoFetchController *)self _finishAutoFetch];
    }
  }
}

- (void)_finishAutoFetch
{
  [(MailboxAutoFetchController *)self setAutoFetchState:0];
  v4 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v4 processQueue];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"MailboxAutoFetchProcessFinishedNotification" object:self];

  if (self->_visibleSourceJobList)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:1045 description:{@"%s should not be called while there are visible store requests to enqueue.", "-[MailboxAutoFetchController _finishAutoFetch]"}];
  }

  visibleMailboxes = self->_visibleMailboxes;
  self->_visibleMailboxes = 0;

  fetchAccounts = self->_fetchAccounts;
  self->_fetchAccounts = 0;

  self->_lastNonvisibleAutoFetchDate = CFAbsoluteTimeGetCurrent();
  v8 = +[MailboxAutoFetchController signpostLog];
  signpostID = [(MailboxAutoFetchController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, signpostID, "AUTOFETCH", "", buf, 2u);
  }

  if ((self->_fetchType & 0xFFFFFFFE) == EMFetchTypeResume)
  {
    v10 = +[MFNetworkController sharedInstance];
    isFatPipe = [v10 isFatPipe];

    if (isFatPipe)
    {
      v12 = +[MailPersistentStorage sharedStorage];
      lastAdditionalMailboxesFetchDate = [v12 lastAdditionalMailboxesFetchDate];
      if (!lastAdditionalMailboxesFetchDate || (+[NSDate date](NSDate, "date"), v14 = objc_claimAutoreleasedReturnValue(), [v14 timeIntervalSinceDate:lastAdditionalMailboxesFetchDate], v16 = v15 > 7200.0, v14, v16))
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        displayedAccountsToSyncByMailbox = [WeakRetained displayedAccountsToSyncByMailbox];
        v19 = sub_100005C24(displayedAccountsToSyncByMailbox);

        if ([v19 count])
        {
          v20 = MFAutoFetchLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Scheduling fetch of additional mailboxes", buf, 2u);
          }

          fetchProcessorScheduler = [(MailboxAutoFetchController *)self fetchProcessorScheduler];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10002C1C8;
          v29[3] = &unk_1001573C0;
          v30 = v12;
          selfCopy = self;
          v32 = v19;
          [fetchProcessorScheduler performBlock:v29];
        }
      }
    }
  }

  pendingFetchType = self->_pendingFetchType;
  if (pendingFetchType)
  {
    v23 = self->_pendingFetchAccounts;
    self->_pendingFetchType = 0;
    pendingFetchAccounts = self->_pendingFetchAccounts;
    self->_pendingFetchAccounts = 0;

    v25 = MFAutoFetchLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v34 = pendingFetchType;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Finished background fetch, starting pending fetch with options %#x", buf, 8u);
    }

    [(MailboxAutoFetchController *)self _tryFetch:pendingFetchType withAccounts:v23];
  }

  else
  {
    v26 = MFAutoFetchLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Finished background fetch call-back", buf, 2u);
    }

    v27 = MFPowerLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Fetch Complete]", buf, 2u);
    }

    v23 = +[NSNotificationCenter defaultCenter];
    [(NSArray *)v23 postNotificationName:@"MailboxAutoFetchDoneNotification" object:self];
  }
}

- (MailboxAutoFetchController)initWithFavoritesPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v18.receiver = self;
  v18.super_class = MailboxAutoFetchController;
  v6 = [(MailboxAutoFetchController *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    accountResponsiveness = v6->_accountResponsiveness;
    v6->_accountResponsiveness = v7;

    objc_storeStrong(&v6->_favoritesPersistence, persistence);
    v9 = +[MFDiagnostics sharedController];
    [v9 addDiagnosticsGenerator:v6];

    v10 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.MailboxAutofetchController.fetch"];
    fetchScheduler = v6->_fetchScheduler;
    v6->_fetchScheduler = v10;

    v12 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.MailboxAutofetchController.fetchProcessor"];
    fetchProcessorScheduler = v6->_fetchProcessorScheduler;
    v6->_fetchProcessorScheduler = v12;

    v14 = MFPowerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[App Startup]", v17, 2u);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v6 selector:"_newNotificationSoundSent:" name:MSNewNotificationSound object:0];
  }

  return v6;
}

- (void)dealloc
{
  [(MailboxAutoFetchController *)self _cleanUpReachabilityTimer];
  v3 = +[CPNetworkObserver sharedNetworkObserver];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = MailboxAutoFetchController;
  [(MailboxAutoFetchController *)&v5 dealloc];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028CA4;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = sourceCopy;
  v8 = v6;
  [fetchScheduler performBlock:v7];
}

- (void)fetchNow:(int)now withAccounts:(id)accounts
{
  accountsCopy = accounts;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000291AC;
  v9[3] = &unk_100156B00;
  v9[4] = self;
  nowCopy = now;
  v8 = accountsCopy;
  v10 = v8;
  [fetchScheduler performBlock:v9];
}

- (void)fetchNow:(int)now withMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000292A4;
  v9[3] = &unk_100156B00;
  v8 = mailboxesCopy;
  v10 = v8;
  selfCopy = self;
  nowCopy = now;
  [fetchScheduler performBlock:v9];
}

- (void)fetchForPowernap
{
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029464;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [fetchScheduler performBlock:v4];
}

- (id)diagnosticInformation
{
  copyDiagnosticInformation = [(MailboxAutoFetchController *)self copyDiagnosticInformation];

  return copyDiagnosticInformation;
}

- (void)networkConfigurationChanged
{
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029798;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [fetchScheduler performBlock:v4];
}

- (void)setAutoFetchState:(int64_t)state
{
  v5 = MFAutoFetchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10000527C(self->_autoFetchState);
    v7 = sub_10000527C(state);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "autofetch state changing: %@ => %@", &v8, 0x16u);
  }

  self->_autoFetchState = state;
}

- (id)_invocationWithTarget:(id)target priority:(unint64_t)priority
{
  v4 = [MFMonitoredInvocation invocationWithSelector:"run" target:target taskName:0 priority:priority canBeCancelled:0];

  return v4;
}

- (void)_scheduleRetryRequest:(id)request priority:(unint64_t)priority selector:(SEL)selector
{
  requestCopy = request;
  [requestCopy _markAsPendingRetryWithPriority:priority];
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100029A20;
  v12[3] = &unk_100157370;
  v12[4] = self;
  v10 = requestCopy;
  v13 = v10;
  priorityCopy = priority;
  selectorCopy = selector;
  v11 = [fetchScheduler afterDelay:v12 performBlock:5.0];
}

- (void)_scheduleRequest:(id)request priority:(unint64_t)priority selector:(SEL)selector
{
  requestCopy = request;
  v7 = [MailboxAutoFetchController _invocationWithTarget:"_invocationWithTarget:priority:" priority:?];
  if ([requestCopy retry])
  {
    mailbox = [requestCopy mailbox];
    [(MailboxAutoFetchController *)self _beginSignpostForMailboxFetch:mailbox];
  }

  else
  {
    mailbox = [requestCopy mailbox];
    [(MailboxAutoFetchController *)self _logSignpostForMailboxFetchRetry:mailbox];
  }

  [requestCopy _markAsScheduled];
  v9 = +[NSNotificationCenter defaultCenter];
  monitor = [v7 monitor];
  [v9 addObserver:self selector:selector name:MonitoredActivityEnded object:monitor];

  v11 = +[MFInvocationQueue sharedInvocationQueue];
  [v11 addInvocation:v7];
}

- (void)_doFetchChangedMailboxes:(id)mailboxes forAccount:(id)account options:(int)options
{
  mailboxesCopy = mailboxes;
  accountCopy = account;
  _visibleMailboxes = [(MailboxAutoFetchController *)self _visibleMailboxes];
  if ((options & 0x40) != 0)
  {
    isFrontmost = 1;
  }

  else
  {
    v8 = sub_100027C70();
    isFrontmost = [v8 isFrontmost];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = mailboxesCopy;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v9)
  {
    v23 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [_visibleMailboxes containsObject:{v11, mailboxesCopy}];
        v13 = MFAutoFetchLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [accountCopy ef_publicDescription];
          ef_publicDescription2 = [v11 ef_publicDescription];
          *buf = 138543618;
          v33 = ef_publicDescription;
          v34 = 2114;
          v35 = ef_publicDescription2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Preparing to fetch changed %{public}@ mailbox %{public}@", buf, 0x16u);
        }

        v16 = +[MFPowerController sharedInstance];
        [v16 retainAssertionWithIdentifier:@"com.apple.mail.fetchchangeduids"];

        v17 = [[AutoFetchRequestPrivate alloc] initRequestForMailboxUid:v11];
        [v17 setIsVisibleFetch:v12];
        [v17 setIsUserRequested:(options >> 5) & 1];
        [v17 setShouldGrowFetchWindow:(options >> 7) & 1];
        [v17 setShouldLoadOlderMessages:HIWORD(options) & 1];
        [v17 setShouldCompact:(options >> 15) & 1];
        [v17 setDownloadAllMessages:(options >> 12) & 1];
        [v17 setIsForegroundRequest:isFrontmost];
        [v17 setIsScheduled:(options >> 9) & 1];
        [v17 setIsPush:(options >> 8) & 1];
        [v17 setShouldLoadMessageBody:(options & 0x400) == 0];
        [v17 setDontNotify:(options >> 11) & 1];
        if ((options & 0x800) != 0)
        {
          v30 = @"AutoFetchDontNotify";
          v31 = &__kCFBooleanTrue;
          v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        }

        else
        {
          v18 = 0;
        }

        v19 = +[NSNotificationCenter defaultCenter];
        [v19 postNotificationName:@"AutoFetchPushStartedNotification" object:self userInfo:v18];

        [(MailboxAutoFetchController *)self _scheduleRequest:v17 priority:8 selector:"_fetchCompleted:"];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }
}

- (void)_fetchCompleted:(id)completed
{
  completedCopy = completed;
  userInfo = [completedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MonitoredActivityInvocation];

  target = [v6 target];
  v8 = +[NSNotificationCenter defaultCenter];
  object = [completedCopy object];
  [v8 removeObserver:self name:MonitoredActivityEnded object:object];

  account = [target account];
  error = [target error];
  if (error && [target retry])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002A390;
    v19[3] = &unk_1001563D8;
    v19[4] = self;
    v20 = target;
    [v20 _healAccountWithCompletionHandler:v19];
    v12 = v20;
  }

  else
  {
    fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A3A8;
    v14[3] = &unk_100157398;
    v15 = target;
    v16 = account;
    v17 = error;
    selfCopy = self;
    [fetchScheduler performBlock:v14];

    v12 = v15;
  }
}

- (void)_startAutoFetch:(int)fetch withAccounts:(id)accounts
{
  accountsCopy = accounts;
  v8 = MFAutoFetchLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67113216;
    v19 = fetch & 1;
    v20 = 1024;
    v21 = (fetch >> 1) & 1;
    v22 = 1024;
    v23 = (fetch >> 2) & 1;
    v24 = 1024;
    v25 = (fetch >> 3) & 1;
    v26 = 1024;
    v27 = (fetch >> 4) & 1;
    v28 = 1024;
    v29 = (fetch >> 5) & 1;
    v30 = 1024;
    v31 = (fetch >> 6) & 1;
    v32 = 1024;
    v33 = (fetch >> 7) & 1;
    v34 = 1024;
    v35 = (fetch >> 8) & 1;
    v36 = 1024;
    v37 = (fetch >> 9) & 1;
    v38 = 1024;
    v39 = (fetch >> 10) & 1;
    v40 = 1024;
    v41 = (fetch >> 11) & 1;
    v42 = 1024;
    v43 = (fetch >> 12) & 1;
    v44 = 1024;
    v45 = (fetch >> 13) & 1;
    v46 = 1024;
    v47 = (fetch >> 14) & 1;
    v48 = 1024;
    v49 = (fetch >> 15) & 1;
    v50 = 1024;
    v51 = HIWORD(fetch) & 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Starting auto fetch. Force: %{BOOL}d, DisplayErrors: %{BOOL}d, IncludePush: %{BOOL}d, IncludeManual: %{BOOL}d, IncludeNonvisible: %{BOOL}d, UserRequested: %{BOOL}d, ForegroundRequest: %{BOOL}d, ShouldGrowFetchWindow: %{BOOL}d, Pushed: %{BOOL}d, Scheduled: %{BOOL}d, FetchOnlyHeaders: %{BOOL}d, DontNotify: %{BOOL}d, DownloadAllMessages: %{BOOL}d, RequiresPower: %{BOOL}d, RequiresWifi: %{BOOL}d, Compact: %{BOOL}d, LoadOlderMessages: %{BOOL}d", buf, 0x68u);
  }

  if (self->_outstandingAutoFetchRequests)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:662 description:{@"%s should not be called while there are outstanding autofetch requests.", "-[MailboxAutoFetchController _startAutoFetch:withAccounts:]"}];
  }

  v9 = +[MailboxAutoFetchController signpostLog];
  signpostID = [(MailboxAutoFetchController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "AUTOFETCH", "", buf, 2u);
  }

  if (self->_visibleMailboxes)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:666 description:@"should not have existing visible stores for new auto fetch"];
  }

  if ((fetch & 0x8000) != 0)
  {
    _visibleMailboxes = &__NSArray0__struct;
  }

  else
  {
    _visibleMailboxes = [(MailboxAutoFetchController *)self _visibleMailboxes];
  }

  visibleMailboxes = self->_visibleMailboxes;
  self->_visibleMailboxes = _visibleMailboxes;

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MailboxAutoFetchProcessStartNotification" object:self];

  self->_lastAutoFetchHadErrors = 0;
  self->_lastAutoFetchHadSources = [(NSArray *)self->_visibleMailboxes count]!= 0;
  self->_fetchType = fetch;
  v14 = [accountsCopy copy];
  fetchAccounts = self->_fetchAccounts;
  self->_fetchAccounts = v14;

  [(MailboxAutoFetchController *)self _checkForReachability];
}

- (void)_cleanUpReachabilityTimer
{
  [(EFCancelable *)self->_networkWakeupCancelationToken cancel];
  networkWakeupCancelationToken = self->_networkWakeupCancelationToken;
  self->_networkWakeupCancelationToken = 0;
}

- (void)_reportReachabilityChange:(id)change
{
  changeCopy = change;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AD44;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = changeCopy;
  v8 = v6;
  [fetchScheduler performBlock:v7];
}

- (void)_reportReachabilityTimeout
{
  if ([(MailboxAutoFetchController *)self autoFetchState]!= 2)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:713 description:@"should only get reachability timeouts when we're waiting on reachability."];
  }

  self->_tryFetchWhenReachable = 1;
  [(MailboxAutoFetchController *)self _cleanUpReachabilityTimer];

  [(MailboxAutoFetchController *)self _finishAutoFetch];
}

- (BOOL)_shouldAutoFetchAccount:(id)account whenVisible:(BOOL)visible
{
  visibleCopy = visible;
  accountCopy = account;
  if (([accountCopy canFetch] & 1) == 0)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should NOT fetch %{public}@: can’t fetch fetch", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  fetchAccounts = self->_fetchAccounts;
  if (fetchAccounts && ![(NSArray *)fetchAccounts containsObject:accountCopy])
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription2 = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should NOT fetch %{public}@: is not in the set of accounts to fetch", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  [accountCopy uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  canReceiveNewMailNotifications = [accountCopy canReceiveNewMailNotifications];
  [accountCopy uniqueIdForPersistentConnection];
  PollInterval = PCSettingsGetPollInterval();
  v11 = sub_100027C70();
  isFrontmost = [v11 isFrontmost];

  if ((visibleCopy & isFrontmost) == 1)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription3 = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: isVisible and not suspended", &v31, 0xCu);
    }

LABEL_48:
    v19 = 1;
    goto LABEL_49;
  }

  if (Style == 1)
  {
    v16 = canReceiveNewMailNotifications;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription4 = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: pushCapable and poll style", &v31, 0xCu);
    }

    goto LABEL_48;
  }

  if (Style)
  {
    v20 = 0;
  }

  else
  {
    v20 = canReceiveNewMailNotifications;
  }

  if (v20 == 1)
  {
    if ((self->_fetchType & 4) != 0)
    {
      v13 = MFAutoFetchLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription5 = [accountCopy ef_publicDescription];
        v31 = 138543362;
        v32 = ef_publicDescription5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: pushCapable, push style, options include push.", &v31, 0xCu);
      }

      goto LABEL_48;
    }

    v21 = 0;
LABEL_31:
    if (PollInterval == -1)
    {
      v24 = 1;
    }

    else
    {
      v24 = canReceiveNewMailNotifications;
    }

    if ((v24 & 1) == 0 && !v21)
    {
      v13 = MFAutoFetchLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription6 = [accountCopy ef_publicDescription];
        v31 = 138543362;
        v32 = ef_publicDescription6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: !pushCapable, !fetchOnManual, and !manual style", &v31, 0xCu);
      }

      goto LABEL_48;
    }

    goto LABEL_38;
  }

  v21 = Style == 2;
  if (Style == 2)
  {
    v22 = canReceiveNewMailNotifications;
  }

  else
  {
    v22 = 0;
  }

  if (v22 != 1)
  {
    goto LABEL_31;
  }

  if ((self->_fetchType & 8) != 0)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription7 = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: pushCapable, manual style, options include manual.", &v31, 0xCu);
    }

    goto LABEL_48;
  }

LABEL_38:
  if ((canReceiveNewMailNotifications & 1) == 0 && PollInterval == -1 && Style != 1 && (self->_fetchType & 8) != 0)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription8 = [accountCopy ef_publicDescription];
      v31 = 138543362;
      v32 = ef_publicDescription8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: fetchOnManual, not poll style, options include manual", &v31, 0xCu);
    }

    goto LABEL_48;
  }

  v13 = MFAutoFetchLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription9 = [accountCopy ef_publicDescription];
    fetchType = self->_fetchType;
    v31 = 138544642;
    v32 = ef_publicDescription9;
    v33 = 1024;
    v34 = visibleCopy;
    v35 = 1024;
    v36 = Style;
    v37 = 1024;
    v38 = canReceiveNewMailNotifications;
    v39 = 1024;
    v40 = PollInterval == -1;
    v41 = 1024;
    v42 = fetchType;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should NOT fetch %{public}@. visible=%d style=%d pushCapable=%d fetchOnManual=%d fetchType=%d", &v31, 0x2Au);
  }

LABEL_17:
  v19 = 0;
LABEL_49:

  return v19;
}

- (void)_reportSynchronousFetchCompletion:(id)completion
{
  completionCopy = completion;
  userInfo = [completionCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:MonitoredActivityInvocation];

  target = [v7 target];
  v9 = +[NSNotificationCenter defaultCenter];
  object = [completionCopy object];
  [v9 removeObserver:self name:MonitoredActivityEnded object:object];

  if ([(MailboxAutoFetchController *)self autoFetchState]!= 4)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:865 description:@"we should not get any fetches back while we're not waiting for them."];
  }

  account = [target account];
  error = [target error];
  if (error && [target retry])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002B7C0;
    v20[3] = &unk_1001563D8;
    v21[0] = target;
    v21[1] = self;
    [v21[0] _healAccountWithCompletionHandler:v20];
    v13 = v21;
  }

  else
  {
    fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002B840;
    v16[3] = &unk_100157398;
    v17[0] = target;
    v17[1] = self;
    v18 = account;
    v19 = error;
    [fetchScheduler performBlock:v16];
    v13 = v17;
  }
}

- (void)_scheduleAllJobs
{
  pushedMailboxJobList = [(MailboxAutoFetchController *)self pushedMailboxJobList];
  if ([pushedMailboxJobList count])
  {
  }

  else
  {
    v4 = [(NSArray *)self->_visibleSourceJobList count];

    if (!v4)
    {
      [(MailboxAutoFetchController *)self _finishAutoFetch];
      goto LABEL_25;
    }
  }

  [(MailboxAutoFetchController *)self setAutoFetchState:4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(MailboxAutoFetchController *)self pushedMailboxJobList];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        mailbox = [v8 mailbox];
        if ([mailbox type] == 7)
        {
          v10 = 8;
        }

        else
        {
          v10 = 6;
        }

        [(MailboxAutoFetchController *)self _scheduleRequest:v8 priority:v10 selector:"_reportSynchronousFetchCompletion:"];
        ++self->_outstandingAutoFetchRequests;
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obja = self->_visibleSourceJobList;
  v11 = [(NSArray *)obja countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obja);
        }

        v14 = *(*(&v21 + 1) + 8 * j);
        mailbox2 = [v14 mailbox];
        if ([mailbox2 type] == 7)
        {
          v16 = 8;
        }

        else
        {
          v16 = 6;
        }

        [(MailboxAutoFetchController *)self _scheduleRequest:v14 priority:v16 selector:"_reportSynchronousFetchCompletion:"];
        ++self->_outstandingAutoFetchRequests;
      }

      v11 = [(NSArray *)obja countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  visibleSourceJobList = self->_visibleSourceJobList;
  self->_visibleSourceJobList = 0;

  [(MailboxAutoFetchController *)self setPushedMailboxJobList:0];
LABEL_25:
  v18 = +[MFPowerController sharedInstance];
  [v18 releaseAssertionWithIdentifier:@"com.apple.mobilemail.autofetch"];
}

- (void)_createJobListFinished:(id)finished
{
  finishedCopy = finished;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C090;
  v7[3] = &unk_1001563D8;
  v6 = finishedCopy;
  v8 = v6;
  selfCopy = self;
  [fetchScheduler performBlock:v7];
}

- (void)_newNotificationSoundSent:(id)sent
{
  sentCopy = sent;
  fetchScheduler = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C378;
  v7[3] = &unk_1001563D8;
  v6 = sentCopy;
  v8 = v6;
  selfCopy = self;
  [fetchScheduler performBlock:v7];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"\n"];
  [v3 appendString:@"==== Autofetcher State ====\n"];
  v4 = sub_10000527C(self->_autoFetchState);
  [v3 appendFormat:@"  current state                   : %@\n", v4];

  lastNonvisibleAutoFetchDate = self->_lastNonvisibleAutoFetchDate;
  if (lastNonvisibleAutoFetchDate == 0.0)
  {
    v6 = &stru_10015BEC8;
  }

  else
  {
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_lastNonvisibleAutoFetchDate];
  }

  [v3 appendFormat:@"  last fetch date (non-visible)   : %@\n", v6];
  if (lastNonvisibleAutoFetchDate != 0.0)
  {
  }

  if (self->_lastAutoFetchHadErrors)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"  last fetch had errors           : %@\n", v7];
  if (self->_lastAutoFetchHadSources)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"  last fetch had sources          : %@\n", v8];
  [v3 appendFormat:@"  last fetch type                 : %d\n", self->_fetchType];
  fetchAccounts = self->_fetchAccounts;
  if (!fetchAccounts)
  {
    fetchAccounts = &stru_10015BEC8;
  }

  [v3 appendFormat:@"  fetch accounts:                 : %@\n", fetchAccounts];
  [v3 appendFormat:@"  pending fetch type              : %d\n\n", self->_pendingFetchType];
  pendingFetchAccounts = self->_pendingFetchAccounts;
  if (!pendingFetchAccounts)
  {
    pendingFetchAccounts = &stru_10015BEC8;
  }

  [v3 appendFormat:@"  pending fetch accounts:         : %@\n", pendingFetchAccounts];
  if (self->_isReachable)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 appendFormat:@"  reachable                       : %@\n", v11];
  if (self->_monitoringReachability)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"  monitoring reachability         : %@\n", v12];
  if (self->_tryFetchWhenReachable)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"  fetch when reachable            : %@\n", v13];
  v14 = [(NSMutableDictionary *)self->_accountResponsiveness count];
  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->_accountResponsiveness description];
  }

  else
  {
    v15 = @"-";
  }

  [v3 appendFormat:@"  account responsiveness          : %@\n", v15];
  if (v14)
  {
  }

  [v3 appendString:@"\n==== Autofetcher Joblist ====\n"];
  v16 = +[AutoFetchRequestPrivate currentRequests];
  objc_sync_enter(v16);
  allObjects = [v16 allObjects];
  v23.length = [v16 count];
  v23.location = 0;
  CFArrayApplyFunction(allObjects, v23, sub_10002C94C, v3);

  objc_sync_exit(v16);
  [v3 appendString:@"\n==== Fetch History ====\n"];
  v18 = qword_1001855A8;
  objc_sync_enter(v18);
  allValues = [qword_1001855A8 allValues];
  v24.length = [qword_1001855A8 count];
  v24.location = 0;
  CFArrayApplyFunction(allValues, v24, sub_10002CAC0, v3);

  objc_sync_exit(v18);
  [v3 appendString:@"\n==== Fetch History (Push) ====\n"];
  v20 = qword_1001855B0;
  objc_sync_enter(v20);
  allValues2 = [qword_1001855B0 allValues];
  v25.length = [qword_1001855B0 count];
  v25.location = 0;
  CFArrayApplyFunction(allValues2, v25, sub_10002CAC0, v3);

  objc_sync_exit(v20);
  return v3;
}

- (void)_logSignpostForMailboxFetchRetry:(id)retry
{
  retryCopy = retry;
  account = [retryCopy account];
  v6 = [NSString alloc];
  ef_publicDescription = [account ef_publicDescription];
  ef_publicDescription2 = [retryCopy ef_publicDescription];
  v9 = [v6 initWithFormat:@"[%@ - %@]", ef_publicDescription, ef_publicDescription2];

  v10 = +[MailboxAutoFetchController signpostLog];
  signpostID = [(MailboxAutoFetchController *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v13 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, signpostID, "AUTOFETCH MAILBOX", "Retry of Mailbox=%{signpost.description:attribute,public}@", buf, 0xCu);
  }
}

- (void)_logSignpostForMailboxFetch:(id)fetch finished:(BOOL)finished
{
  finishedCopy = finished;
  fetchCopy = fetch;
  account = [fetchCopy account];
  v8 = [NSString alloc];
  ef_publicDescription = [account ef_publicDescription];
  ef_publicDescription2 = [fetchCopy ef_publicDescription];
  v11 = [v8 initWithFormat:@"[%@ - %@]", ef_publicDescription, ef_publicDescription2];

  if (finishedCopy)
  {
    v12 = +[MailboxAutoFetchController signpostLog];
    signpostID = [(MailboxAutoFetchController *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v17 = v11;
      v14 = v12;
      v15 = OS_SIGNPOST_INTERVAL_END;
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, signpostID, "AUTOFETCH MAILBOX", "Mailbox=%{signpost.description:attribute,public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = +[MailboxAutoFetchController signpostLog];
    signpostID = [(MailboxAutoFetchController *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v17 = v11;
      v14 = v12;
      v15 = OS_SIGNPOST_INTERVAL_BEGIN;
      goto LABEL_8;
    }
  }
}

@end