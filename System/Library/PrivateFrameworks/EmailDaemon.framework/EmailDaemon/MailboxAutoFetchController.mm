@interface MailboxAutoFetchController
+ (MailboxAutoFetchController)sharedController;
+ (OS_os_log)signpostLog;
+ (id)log;
- (BOOL)_shouldAutoFetchAccount:(id)a3 whenVisible:(BOOL)a4;
- (MailboxAutoFetchController)initWithFavoritesPersistence:(id)a3;
- (id)_invocationWithTarget:(id)a3 priority:(unint64_t)a4;
- (id)_visibleMailboxes;
- (id)copyDiagnosticInformation;
- (id)diagnosticInformation;
- (unint64_t)signpostID;
- (void)_checkForReachability;
- (void)_checkForWiFi;
- (void)_cleanUpReachabilityTimer;
- (void)_createJobList;
- (void)_createJobListFinished:(id)a3;
- (void)_doFetchChangedMailboxes:(id)a3 forAccount:(id)a4 options:(int)a5;
- (void)_fetchCompleted:(id)a3;
- (void)_finishAutoFetch;
- (void)_logSignpostForMailboxFetch:(id)a3 finished:(BOOL)a4;
- (void)_logSignpostForMailboxFetchRetry:(id)a3;
- (void)_newNotificationSoundSent:(id)a3;
- (void)_reportReachabilityChange:(id)a3;
- (void)_reportReachabilityTimeout;
- (void)_reportSynchronousFetchCompletion:(id)a3;
- (void)_scheduleAllJobs;
- (void)_scheduleRequest:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5;
- (void)_scheduleRetryRequest:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5;
- (void)_startAutoFetch:(int)a3 withAccounts:(id)a4;
- (void)dealloc;
- (void)fetchForPowernap;
- (void)fetchNow:(int)a3 withAccounts:(id)a4;
- (void)fetchNow:(int)a3 withMailboxes:(id)a4;
- (void)networkConfigurationChanged;
- (void)setAutoFetchState:(int64_t)a3;
- (void)setDataSource:(id)a3;
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
  block[4] = a1;
  if (qword_1001855D0 != -1)
  {
    dispatch_once(&qword_1001855D0, block);
  }

  v2 = qword_1001855C8;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (id)_visibleMailboxes
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained visibleMailboxesToSyncByMailbox];

  v4 = +[MailboxAutoFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "visible mailboxes: %@", &v6, 0xCu);
  }

  return v3;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028858;
  block[3] = &unk_1001562E8;
  block[4] = a1;
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
  v9 = [v8 dataStatus];

  if (v9)
  {
    v10 = MFErrorCodeWithDataStatus();
    v11 = MFAutoFetchLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithInteger:v9];
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
    v15 = [(MailboxAutoFetchController *)self fetchScheduler];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002AF0C;
    v20[3] = &unk_100156400;
    v20[4] = self;
    v16 = [v15 afterDelay:v20 performBlock:40.0];
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
        v11 = [v10 account];
        v12 = [(MailboxAutoFetchController *)self _shouldAutoFetchAccount:v11 whenVisible:1];

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
  v17 = [v16 isWiFiEnabled];

  if (!v17)
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
    v22 = [(MailboxAutoFetchController *)self fetchScheduler];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002B4C8;
    v24[3] = &unk_100156400;
    v24[4] = self;
    v23 = [v22 afterDelay:v24 performBlock:v21];
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
    v5 = [v4 isFatPipe];
    v6 = @"NO";
    if (v5)
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
    v11 = [WeakRetained activeAccountsToSyncByMailbox];
    [v7 addObjectsFromArray:v11];
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
    v11 = [WeakRetained activeAccountsToSyncByMailbox];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([(MailboxAutoFetchController *)self _shouldAutoFetchAccount:v15 whenVisible:0])
          {
            [v7 addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
    v20 = [v18 monitor];
    [v19 addObserver:self selector:"_createJobListFinished:" name:MonitoredActivityEnded object:v20];

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
  v9 = [(MailboxAutoFetchController *)self signpostID];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "AUTOFETCH", "", buf, 2u);
  }

  if ((self->_fetchType & 0xFFFFFFFE) == EMFetchTypeResume)
  {
    v10 = +[MFNetworkController sharedInstance];
    v11 = [v10 isFatPipe];

    if (v11)
    {
      v12 = +[MailPersistentStorage sharedStorage];
      v13 = [v12 lastAdditionalMailboxesFetchDate];
      if (!v13 || (+[NSDate date](NSDate, "date"), v14 = objc_claimAutoreleasedReturnValue(), [v14 timeIntervalSinceDate:v13], v16 = v15 > 7200.0, v14, v16))
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v18 = [WeakRetained displayedAccountsToSyncByMailbox];
        v19 = sub_100005C24(v18);

        if ([v19 count])
        {
          v20 = MFAutoFetchLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Scheduling fetch of additional mailboxes", buf, 2u);
          }

          v21 = [(MailboxAutoFetchController *)self fetchProcessorScheduler];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10002C1C8;
          v29[3] = &unk_1001573C0;
          v30 = v12;
          v31 = self;
          v32 = v19;
          [v21 performBlock:v29];
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

- (MailboxAutoFetchController)initWithFavoritesPersistence:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MailboxAutoFetchController;
  v6 = [(MailboxAutoFetchController *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    accountResponsiveness = v6->_accountResponsiveness;
    v6->_accountResponsiveness = v7;

    objc_storeStrong(&v6->_favoritesPersistence, a3);
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

- (void)setDataSource:(id)a3
{
  v4 = a3;
  v5 = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028CA4;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)fetchNow:(int)a3 withAccounts:(id)a4
{
  v6 = a4;
  v7 = [(MailboxAutoFetchController *)self fetchScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000291AC;
  v9[3] = &unk_100156B00;
  v9[4] = self;
  v11 = a3;
  v8 = v6;
  v10 = v8;
  [v7 performBlock:v9];
}

- (void)fetchNow:(int)a3 withMailboxes:(id)a4
{
  v6 = a4;
  v7 = [(MailboxAutoFetchController *)self fetchScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000292A4;
  v9[3] = &unk_100156B00;
  v8 = v6;
  v10 = v8;
  v11 = self;
  v12 = a3;
  [v7 performBlock:v9];
}

- (void)fetchForPowernap
{
  v3 = [(MailboxAutoFetchController *)self fetchScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029464;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (id)diagnosticInformation
{
  v2 = [(MailboxAutoFetchController *)self copyDiagnosticInformation];

  return v2;
}

- (void)networkConfigurationChanged
{
  v3 = [(MailboxAutoFetchController *)self fetchScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029798;
  v4[3] = &unk_100156400;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)setAutoFetchState:(int64_t)a3
{
  v5 = MFAutoFetchLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10000527C(self->_autoFetchState);
    v7 = sub_10000527C(a3);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "autofetch state changing: %@ => %@", &v8, 0x16u);
  }

  self->_autoFetchState = a3;
}

- (id)_invocationWithTarget:(id)a3 priority:(unint64_t)a4
{
  v4 = [MFMonitoredInvocation invocationWithSelector:"run" target:a3 taskName:0 priority:a4 canBeCancelled:0];

  return v4;
}

- (void)_scheduleRetryRequest:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5
{
  v8 = a3;
  [v8 _markAsPendingRetryWithPriority:a4];
  v9 = [(MailboxAutoFetchController *)self fetchScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100029A20;
  v12[3] = &unk_100157370;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  v11 = [v9 afterDelay:v12 performBlock:5.0];
}

- (void)_scheduleRequest:(id)a3 priority:(unint64_t)a4 selector:(SEL)a5
{
  v12 = a3;
  v7 = [MailboxAutoFetchController _invocationWithTarget:"_invocationWithTarget:priority:" priority:?];
  if ([v12 retry])
  {
    v8 = [v12 mailbox];
    [(MailboxAutoFetchController *)self _beginSignpostForMailboxFetch:v8];
  }

  else
  {
    v8 = [v12 mailbox];
    [(MailboxAutoFetchController *)self _logSignpostForMailboxFetchRetry:v8];
  }

  [v12 _markAsScheduled];
  v9 = +[NSNotificationCenter defaultCenter];
  v10 = [v7 monitor];
  [v9 addObserver:self selector:a5 name:MonitoredActivityEnded object:v10];

  v11 = +[MFInvocationQueue sharedInvocationQueue];
  [v11 addInvocation:v7];
}

- (void)_doFetchChangedMailboxes:(id)a3 forAccount:(id)a4 options:(int)a5
{
  v20 = a3;
  v21 = a4;
  v25 = [(MailboxAutoFetchController *)self _visibleMailboxes];
  if ((a5 & 0x40) != 0)
  {
    v24 = 1;
  }

  else
  {
    v8 = sub_100027C70();
    v24 = [v8 isFrontmost];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v20;
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
        v12 = [v25 containsObject:{v11, v20}];
        v13 = MFAutoFetchLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v21 ef_publicDescription];
          v15 = [v11 ef_publicDescription];
          *buf = 138543618;
          v33 = v14;
          v34 = 2114;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Preparing to fetch changed %{public}@ mailbox %{public}@", buf, 0x16u);
        }

        v16 = +[MFPowerController sharedInstance];
        [v16 retainAssertionWithIdentifier:@"com.apple.mail.fetchchangeduids"];

        v17 = [[AutoFetchRequestPrivate alloc] initRequestForMailboxUid:v11];
        [v17 setIsVisibleFetch:v12];
        [v17 setIsUserRequested:(a5 >> 5) & 1];
        [v17 setShouldGrowFetchWindow:(a5 >> 7) & 1];
        [v17 setShouldLoadOlderMessages:HIWORD(a5) & 1];
        [v17 setShouldCompact:(a5 >> 15) & 1];
        [v17 setDownloadAllMessages:(a5 >> 12) & 1];
        [v17 setIsForegroundRequest:v24];
        [v17 setIsScheduled:(a5 >> 9) & 1];
        [v17 setIsPush:(a5 >> 8) & 1];
        [v17 setShouldLoadMessageBody:(a5 & 0x400) == 0];
        [v17 setDontNotify:(a5 >> 11) & 1];
        if ((a5 & 0x800) != 0)
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

- (void)_fetchCompleted:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MonitoredActivityInvocation];

  v7 = [v6 target];
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = [v4 object];
  [v8 removeObserver:self name:MonitoredActivityEnded object:v9];

  v10 = [v7 account];
  v11 = [v7 error];
  if (v11 && [v7 retry])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002A390;
    v19[3] = &unk_1001563D8;
    v19[4] = self;
    v20 = v7;
    [v20 _healAccountWithCompletionHandler:v19];
    v12 = v20;
  }

  else
  {
    v13 = [(MailboxAutoFetchController *)self fetchScheduler];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A3A8;
    v14[3] = &unk_100157398;
    v15 = v7;
    v16 = v10;
    v17 = v11;
    v18 = self;
    [v13 performBlock:v14];

    v12 = v15;
  }
}

- (void)_startAutoFetch:(int)a3 withAccounts:(id)a4
{
  v7 = a4;
  v8 = MFAutoFetchLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67113216;
    v19 = a3 & 1;
    v20 = 1024;
    v21 = (a3 >> 1) & 1;
    v22 = 1024;
    v23 = (a3 >> 2) & 1;
    v24 = 1024;
    v25 = (a3 >> 3) & 1;
    v26 = 1024;
    v27 = (a3 >> 4) & 1;
    v28 = 1024;
    v29 = (a3 >> 5) & 1;
    v30 = 1024;
    v31 = (a3 >> 6) & 1;
    v32 = 1024;
    v33 = (a3 >> 7) & 1;
    v34 = 1024;
    v35 = (a3 >> 8) & 1;
    v36 = 1024;
    v37 = (a3 >> 9) & 1;
    v38 = 1024;
    v39 = (a3 >> 10) & 1;
    v40 = 1024;
    v41 = (a3 >> 11) & 1;
    v42 = 1024;
    v43 = (a3 >> 12) & 1;
    v44 = 1024;
    v45 = (a3 >> 13) & 1;
    v46 = 1024;
    v47 = (a3 >> 14) & 1;
    v48 = 1024;
    v49 = (a3 >> 15) & 1;
    v50 = 1024;
    v51 = HIWORD(a3) & 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Starting auto fetch. Force: %{BOOL}d, DisplayErrors: %{BOOL}d, IncludePush: %{BOOL}d, IncludeManual: %{BOOL}d, IncludeNonvisible: %{BOOL}d, UserRequested: %{BOOL}d, ForegroundRequest: %{BOOL}d, ShouldGrowFetchWindow: %{BOOL}d, Pushed: %{BOOL}d, Scheduled: %{BOOL}d, FetchOnlyHeaders: %{BOOL}d, DontNotify: %{BOOL}d, DownloadAllMessages: %{BOOL}d, RequiresPower: %{BOOL}d, RequiresWifi: %{BOOL}d, Compact: %{BOOL}d, LoadOlderMessages: %{BOOL}d", buf, 0x68u);
  }

  if (self->_outstandingAutoFetchRequests)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:662 description:{@"%s should not be called while there are outstanding autofetch requests.", "-[MailboxAutoFetchController _startAutoFetch:withAccounts:]"}];
  }

  v9 = +[MailboxAutoFetchController signpostLog];
  v10 = [(MailboxAutoFetchController *)self signpostID];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AUTOFETCH", "", buf, 2u);
  }

  if (self->_visibleMailboxes)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:666 description:@"should not have existing visible stores for new auto fetch"];
  }

  if ((a3 & 0x8000) != 0)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    v11 = [(MailboxAutoFetchController *)self _visibleMailboxes];
  }

  visibleMailboxes = self->_visibleMailboxes;
  self->_visibleMailboxes = v11;

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MailboxAutoFetchProcessStartNotification" object:self];

  self->_lastAutoFetchHadErrors = 0;
  self->_lastAutoFetchHadSources = [(NSArray *)self->_visibleMailboxes count]!= 0;
  self->_fetchType = a3;
  v14 = [v7 copy];
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

- (void)_reportReachabilityChange:(id)a3
{
  v4 = a3;
  v5 = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AD44;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
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

- (BOOL)_shouldAutoFetchAccount:(id)a3 whenVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([v6 canFetch] & 1) == 0)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should NOT fetch %{public}@: can’t fetch fetch", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  fetchAccounts = self->_fetchAccounts;
  if (fetchAccounts && ![(NSArray *)fetchAccounts containsObject:v6])
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should NOT fetch %{public}@: is not in the set of accounts to fetch", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  [v6 uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  v9 = [v6 canReceiveNewMailNotifications];
  [v6 uniqueIdForPersistentConnection];
  PollInterval = PCSettingsGetPollInterval();
  v11 = sub_100027C70();
  v12 = [v11 isFrontmost];

  if ((v4 & v12) == 1)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: isVisible and not suspended", &v31, 0xCu);
    }

LABEL_48:
    v19 = 1;
    goto LABEL_49;
  }

  if (Style == 1)
  {
    v16 = v9;
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
      v17 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v17;
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
    v20 = v9;
  }

  if (v20 == 1)
  {
    if ((self->_fetchType & 4) != 0)
    {
      v13 = MFAutoFetchLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v6 ef_publicDescription];
        v31 = 138543362;
        v32 = v28;
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
      v24 = v9;
    }

    if ((v24 & 1) == 0 && !v21)
    {
      v13 = MFAutoFetchLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v6 ef_publicDescription];
        v31 = 138543362;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: !pushCapable, !fetchOnManual, and !manual style", &v31, 0xCu);
      }

      goto LABEL_48;
    }

    goto LABEL_38;
  }

  v21 = Style == 2;
  if (Style == 2)
  {
    v22 = v9;
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
      v23 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: pushCapable, manual style, options include manual.", &v31, 0xCu);
    }

    goto LABEL_48;
  }

LABEL_38:
  if ((v9 & 1) == 0 && PollInterval == -1 && Style != 1 && (self->_fetchType & 8) != 0)
  {
    v13 = MFAutoFetchLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v6 ef_publicDescription];
      v31 = 138543362;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "should fetch %{public}@: fetchOnManual, not poll style, options include manual", &v31, 0xCu);
    }

    goto LABEL_48;
  }

  v13 = MFAutoFetchLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v6 ef_publicDescription];
    fetchType = self->_fetchType;
    v31 = 138544642;
    v32 = v26;
    v33 = 1024;
    v34 = v4;
    v35 = 1024;
    v36 = Style;
    v37 = 1024;
    v38 = v9;
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

- (void)_reportSynchronousFetchCompletion:(id)a3
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:MonitoredActivityInvocation];

  v8 = [v7 target];
  v9 = +[NSNotificationCenter defaultCenter];
  v10 = [v5 object];
  [v9 removeObserver:self name:MonitoredActivityEnded object:v10];

  if ([(MailboxAutoFetchController *)self autoFetchState]!= 4)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MailboxAutoFetchController.m" lineNumber:865 description:@"we should not get any fetches back while we're not waiting for them."];
  }

  v11 = [v8 account];
  v12 = [v8 error];
  if (v12 && [v8 retry])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002B7C0;
    v20[3] = &unk_1001563D8;
    v21[0] = v8;
    v21[1] = self;
    [v21[0] _healAccountWithCompletionHandler:v20];
    v13 = v21;
  }

  else
  {
    v14 = [(MailboxAutoFetchController *)self fetchScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002B840;
    v16[3] = &unk_100157398;
    v17[0] = v8;
    v17[1] = self;
    v18 = v11;
    v19 = v12;
    [v14 performBlock:v16];
    v13 = v17;
  }
}

- (void)_scheduleAllJobs
{
  v3 = [(MailboxAutoFetchController *)self pushedMailboxJobList];
  if ([v3 count])
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
        v9 = [v8 mailbox];
        if ([v9 type] == 7)
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
        v15 = [v14 mailbox];
        if ([v15 type] == 7)
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

- (void)_createJobListFinished:(id)a3
{
  v4 = a3;
  v5 = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C090;
  v7[3] = &unk_1001563D8;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performBlock:v7];
}

- (void)_newNotificationSoundSent:(id)a3
{
  v4 = a3;
  v5 = [(MailboxAutoFetchController *)self fetchScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C378;
  v7[3] = &unk_1001563D8;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performBlock:v7];
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
  v17 = [v16 allObjects];
  v23.length = [v16 count];
  v23.location = 0;
  CFArrayApplyFunction(v17, v23, sub_10002C94C, v3);

  objc_sync_exit(v16);
  [v3 appendString:@"\n==== Fetch History ====\n"];
  v18 = qword_1001855A8;
  objc_sync_enter(v18);
  v19 = [qword_1001855A8 allValues];
  v24.length = [qword_1001855A8 count];
  v24.location = 0;
  CFArrayApplyFunction(v19, v24, sub_10002CAC0, v3);

  objc_sync_exit(v18);
  [v3 appendString:@"\n==== Fetch History (Push) ====\n"];
  v20 = qword_1001855B0;
  objc_sync_enter(v20);
  v21 = [qword_1001855B0 allValues];
  v25.length = [qword_1001855B0 count];
  v25.location = 0;
  CFArrayApplyFunction(v21, v25, sub_10002CAC0, v3);

  objc_sync_exit(v20);
  return v3;
}

- (void)_logSignpostForMailboxFetchRetry:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  v6 = [NSString alloc];
  v7 = [v5 ef_publicDescription];
  v8 = [v4 ef_publicDescription];
  v9 = [v6 initWithFormat:@"[%@ - %@]", v7, v8];

  v10 = +[MailboxAutoFetchController signpostLog];
  v11 = [(MailboxAutoFetchController *)self signpostID];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 138543362;
    v13 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v11, "AUTOFETCH MAILBOX", "Retry of Mailbox=%{signpost.description:attribute,public}@", buf, 0xCu);
  }
}

- (void)_logSignpostForMailboxFetch:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 account];
  v8 = [NSString alloc];
  v9 = [v7 ef_publicDescription];
  v10 = [v6 ef_publicDescription];
  v11 = [v8 initWithFormat:@"[%@ - %@]", v9, v10];

  if (v4)
  {
    v12 = +[MailboxAutoFetchController signpostLog];
    v13 = [(MailboxAutoFetchController *)self signpostID];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v17 = v11;
      v14 = v12;
      v15 = OS_SIGNPOST_INTERVAL_END;
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v13, "AUTOFETCH MAILBOX", "Mailbox=%{signpost.description:attribute,public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = +[MailboxAutoFetchController signpostLog];
    v13 = [(MailboxAutoFetchController *)self signpostID];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
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