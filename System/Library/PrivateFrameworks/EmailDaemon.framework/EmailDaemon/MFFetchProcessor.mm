@interface MFFetchProcessor
+ (id)intelligentSkeletonFetchProcessor;
+ (id)mailboxes:(id)a3 sortedByDate:(id)a4;
+ (id)mailboxesSortedByLastFetchDate:(id)a3;
+ (id)powernapProcessor;
+ (id)processorWithName:(id)a3 condition:(id)a4;
+ (id)sortedMailboxesInArrayWithMailboxes:(id)a3 ranking:(id)a4;
+ (void)initialize;
- (BOOL)_processEligibleMailboxesAndWait;
- (BOOL)_runSynchronously:(int64_t)a3;
- (MFFetchProcessor)initWithName:(id)a3 condition:(id)a4;
- (id)_mailboxesToFetch;
- (id)_observeChangesInConditions;
- (void)_cancelCurrentInvocations;
- (void)_fetchCompleted:(id)a3;
- (void)_finishRequest;
- (void)dealloc;
- (void)runSynchronouslyWithDuration:(double)a3;
@end

@implementation MFFetchProcessor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = qword_100185888;
    qword_100185888 = v2;

    v4 = +[NSProcessInfo processInfo];
    v5 = [v4 processorCount];

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    qword_100185890 = v6;
  }
}

- (MFFetchProcessor)initWithName:(id)a3 condition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = MFFetchProcessor;
  v8 = [(MFFetchProcessor *)&v26 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = +[MFActivityCondition alwaysSatisfiedCondition];
    }

    condition = v8->_condition;
    v8->_condition = v11;

    v13 = [[MFInvocationQueue alloc] initWithMaxThreadCount:1];
    workQueue = v8->_workQueue;
    v8->_workQueue = v13;

    v15 = dispatch_queue_create("com.apple.mobilemail.fetchProcessor.state", 0);
    stateQueue = v8->_stateQueue;
    v8->_stateQueue = v15;

    v17 = objc_alloc_init(NSMutableSet);
    failedMailboxes = v8->_failedMailboxes;
    v8->_failedMailboxes = v17;

    v19 = objc_alloc_init(NSCountedSet);
    mailboxFetchCounts = v8->_mailboxFetchCounts;
    v8->_mailboxFetchCounts = v19;

    v21 = objc_alloc_init(NSMutableSet);
    currentInvocations = v8->_currentInvocations;
    v8->_currentInvocations = v21;

    v23 = qword_100185890;
    v8->_accountMailboxesBatchSize = 2 * qword_100185890;
    v8->_lastFetchDateCutoff = 900;
    v24 = 1;
    if (v23 > 2)
    {
      v24 = 2;
    }

    v8->_requestLimiterLimit = v24;
  }

  return v8;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  v3.receiver = self;
  v3.super_class = MFFetchProcessor;
  [(MFFetchProcessor *)&v3 dealloc];
}

+ (id)processorWithName:(id)a3 condition:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MFFetchProcessor alloc] initWithName:v5 condition:v6];

  return v7;
}

+ (id)powernapProcessor
{
  v2 = [[MFActivityCondition alloc] initWithBuilder:&stru_1001589A0];
  v3 = [MFFetchProcessor processorWithName:@"com.apple.mobilemail.fetch.powernap" condition:v2];
  [v3 setExcludedMailboxTypes:&off_100163750];
  [v3 setIncludePushedMailboxes:1];
  [v3 setIncludeFavoritesMailboxes:1];
  [v3 setLoadMessageBodies:1];
  [v3 setLoadNumOlderMessages:500];
  [v3 setMaximumMailboxesToFetch:50];

  return v3;
}

+ (id)intelligentSkeletonFetchProcessor
{
  v2 = [[MFActivityCondition alloc] initWithBuilder:&stru_1001589C0];
  v3 = [MFFetchProcessor processorWithName:@"com.apple.mobilemail.fetch.intelligentBackgroundFetch" condition:v2];
  [v3 setExcludedMailboxTypes:&off_100163768];
  [v3 setIncludePushedMailboxes:0];
  [v3 setLoadMessageBodies:0];
  [v3 setUseMailboxFrecencyRanking:1];

  return v3;
}

- (void)runSynchronouslyWithDuration:(double)a3
{
  self->_stopTime = CFAbsoluteTimeGetCurrent() + a3;

  [(MFFetchProcessor *)self _runSynchronously:0x7FFFFFFFFFFFFFFFLL];
}

- (BOOL)_runSynchronously:(int64_t)a3
{
  v5 = qword_100185888;
  objc_sync_enter(v5);
  v6 = qword_100185888;
  v7 = [(MFFetchProcessor *)self name];
  LOBYTE(v6) = [v6 containsObject:v7];

  if (v6)
  {
    objc_sync_exit(v5);

    v8 = MFAutoFetchLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(MFFetchProcessor *)self name];
      v26 = 138412290;
      v27 = *&v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Canceling fetch %@ because one with the same name is currently running", &v26, 0xCu);
    }

    return 0;
  }

  else
  {
    v11 = qword_100185888;
    v12 = [(MFFetchProcessor *)self name];
    [v11 addObject:v12];

    objc_sync_exit(v5);
    v13 = objc_alloc_init(EFManualCancelationToken);
    cancelationToken = self->_cancelationToken;
    self->_cancelationToken = v13;

    v15 = self->_cancelationToken;
    v16 = [(MFFetchProcessor *)self _observeChangesInConditions];
    [(EFManualCancelationToken *)v15 addCancelable:v16];

    Current = CFAbsoluteTimeGetCurrent();
    v18 = 0;
    while ([(MFFetchProcessor *)self _processEligibleMailboxesAndWait])
    {
      if (a3 == ++v18)
      {
        v18 = a3;
        break;
      }
    }

    v19 = CFAbsoluteTimeGetCurrent();
    v20 = MFAutoFetchLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [(NSCountedSet *)self->_mailboxFetchCounts count];
      v22 = [(NSCountedSet *)self->_mailboxFetchCounts descriptionWithLocale:0];
      v26 = 134218498;
      v27 = v19 - Current;
      v28 = 2048;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Finished powernap fetch. Duration: %.2fs Mailboxes fetched (%lu): %@", &v26, 0x20u);
    }

    v23 = qword_100185888;
    objc_sync_enter(v23);
    v24 = qword_100185888;
    v25 = [(MFFetchProcessor *)self name];
    [v24 removeObject:v25];

    objc_sync_exit(v23);
    return v18 > 0;
  }
}

- (BOOL)_processEligibleMailboxesAndWait
{
  v52 = [(MFFetchProcessor *)self _mailboxesToFetch];
  if (![v52 count])
  {
    v29 = MFAutoFetchLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Ending powernap fetch because no eligible mailboxes were found", &buf, 2u);
    }

    v30 = 0;
    goto LABEL_43;
  }

  v5 = [(MFFetchProcessor *)self requestLimiter];

  if (v5)
  {
    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"MFFetchProcessor.m" lineNumber:184 description:@"_processEligibleMailboxesAndWait is being re-entered"];
  }

  v6 = dispatch_semaphore_create(self->_requestLimiterLimit);
  [(MFFetchProcessor *)self setRequestLimiter:v6];

  v7 = dispatch_semaphore_create(0);
  [(MFFetchProcessor *)self setFinishedProcessing:v7];

  v8 = [v52 count];
  self->_numberOfRemainingRequestsToProcess = v8;
  v9 = MFAutoFetchLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v52 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "powernap: start processing %lu mailboxes", &buf, 0xCu);
  }

  v45 = v8;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v52;
  v10 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v10)
  {
    v46 = 0;
    goto LABEL_42;
  }

  v51 = *v58;
  v47 = MonitoredActivityEnded;
  v11 = &selRef_resultIncludesProtectedMessages;
  v12 = &DaemonSnapshotInvalidator__metaData;
  v13 = 0;
  while (2)
  {
    v14 = 0;
    v50 = v11[20];
    v49 = *&v12[40].ivar_base_size;
    v44 = v13;
    v46 = &v10[v13];
    v43 = (v45 - v10);
    do
    {
      if (*v58 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v57 + 1) + 8 * v14);
      v16 = [(MFFetchProcessor *)self requestLimiter];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

      v17 = [(MFFetchProcessor *)self condition];
      v18 = [v17 isSatisfied];

      if ((v18 & 1) == 0)
      {
        v31 = MFAutoFetchLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Stopping powernap fetch because requirements are no longer met", &buf, 2u);
        }

        stateQueue = self->_stateQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100068FF0;
        block[3] = &unk_100156360;
        block[4] = self;
        block[5] = &v45[~v14];
        dispatch_sync(stateQueue, block);
        [(MFFetchProcessor *)self _finishRequest];
        goto LABEL_41;
      }

      if (self->_stopTime != 0.0 && CFAbsoluteTimeGetCurrent() >= self->_stopTime)
      {
        v35 = MFAutoFetchLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Stopping fetch processor because time limit was exceeded", &buf, 2u);
        }

        v36 = self->_stateQueue;
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100069004;
        v55[3] = &unk_100156360;
        v55[4] = self;
        v55[5] = &v45[~v14];
        dispatch_sync(v36, v55);
        [(MFFetchProcessor *)self _finishRequest];
        goto LABEL_41;
      }

      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 1;
      v19 = dispatch_semaphore_create(0);
      v20 = +[MFDiskFreeSpaceMonitor defaultMonitor];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v67 = sub_10006A950;
      v68 = &unk_100158AB0;
      v70 = &v61;
      v21 = v19;
      v69 = v21;
      [v20 getFreeSpaceStatusWithCompletionHandler:&buf];

      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      LOBYTE(v19) = *(v62 + 24);

      _Block_object_dispose(&v61, 8);
      if ((v19 & 1) == 0)
      {
        v33 = MFAutoFetchLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Ending powernap fetch because disk is almost full", &buf, 2u);
        }

        v34 = self->_stateQueue;
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100069018;
        v54[3] = &unk_100156360;
        v54[4] = self;
        v54[5] = &v45[~v14];
        dispatch_sync(v34, v54);
        [(MFFetchProcessor *)self _finishRequest];
        goto LABEL_41;
      }

      if (self->_maximumMailboxesToFetch && [(NSCountedSet *)self->_mailboxFetchCounts count]>= self->_maximumMailboxesToFetch)
      {
        v37 = MFAutoFetchLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Ending powernap fetch because we have hit the maximum number of mailboxes to fetch", &buf, 2u);
        }

        v38 = self->_stateQueue;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10006902C;
        v53[3] = &unk_100156360;
        v53[4] = self;
        v53[5] = &v45[~v14];
        dispatch_sync(v38, v53);
        [(MFFetchProcessor *)self _finishRequest];
LABEL_41:
        v46 = &v44[v14];
        goto LABEL_42;
      }

      v22 = [[AutoFetchRequestPrivate alloc] initRequestForMailboxUid:v15];
      [v22 setIsPowernapFetch:1];
      [v22 setShouldCompact:1];
      [v22 setIsVisibleFetch:0];
      [v22 setIsUserRequested:0];
      [v22 setDownloadAllMessages:0];
      [v22 setIsForegroundRequest:0];
      v23 = [(MFFetchProcessor *)self loadMessageBodies];
      if (v23)
      {
        v2 = [v15 account];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      [v22 setShouldLoadMessageBody:v24 & 1];
      if (v23)
      {
      }

      [v22 setLoadNumOlderMessages:{-[MFFetchProcessor loadNumOlderMessages](self, "loadNumOlderMessages")}];
      [v22 setShouldGrowFetchWindow:1];
      [v22 setCloseConnection:1];
      [v22 setDontNotify:1];
      v25 = [MFMonitoredInvocation invocationWithSelector:v50 target:v22 taskName:0 priority:8 canBeCancelled:1];
      v26 = self->_currentInvocations;
      objc_sync_enter(v26);
      [(NSMutableSet *)self->_currentInvocations addObject:v25];
      v27 = +[NSNotificationCenter defaultCenter];
      v28 = [v25 monitor];
      [v27 addObserver:self selector:v49 name:v47 object:v28];

      objc_sync_exit(v26);
      [(MFInvocationQueue *)self->_workQueue addInvocation:v25];
      [(NSCountedSet *)self->_mailboxFetchCounts addObject:v15];

      ++v14;
    }

    while (v10 != v14);
    v10 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    v45 = v43;
    v13 = v46;
    v11 = &selRef_resultIncludesProtectedMessages;
    v12 = &DaemonSnapshotInvalidator__metaData;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v39 = [(MFFetchProcessor *)self finishedProcessing];
  dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);

  [(MFFetchProcessor *)self setFinishedProcessing:0];
  [(MFFetchProcessor *)self setRequestLimiter:0];
  v40 = +[MailPersistentStorage sharedStorage];
  [v40 save];

  v30 = v46 == [obj count];
LABEL_43:

  return v30;
}

- (id)_observeChangesInConditions
{
  objc_initWeak(&location, self);
  v3 = [(MFFetchProcessor *)self condition];
  v4 = [v3 conditionsObservable];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006915C;
  v7[3] = &unk_1001589E8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 subscribeWithResultBlock:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (void)_cancelCurrentInvocations
{
  v15 = self->_currentInvocations;
  objc_sync_enter(v15);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_currentInvocations;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v17 = *v19;
    v4 = MonitoredActivityEnded;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = +[NSNotificationCenter defaultCenter];
        v8 = [v6 monitor];
        [v7 removeObserver:self name:v4 object:v8];

        v9 = [v6 target];
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 mailbox];
          v12 = [v11 account];
          v13 = [v12 ef_publicDescription];
          *buf = 138543362;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Canceling in-flight fetch for %{public}@", buf, 0xCu);
        }

        v14 = [v6 monitor];
        [v14 cancel];

        [(MFFetchProcessor *)self _finishRequest];
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v3);
  }

  [(NSMutableSet *)self->_currentInvocations removeAllObjects];
  objc_sync_exit(v15);
}

- (void)_finishRequest
{
  v3 = [(MFFetchProcessor *)self requestLimiter];
  v4 = v3;
  if (v3)
  {
    dispatch_semaphore_signal(v3);
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069548;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_fetchCompleted:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:MonitoredActivityInvocation];

  v7 = self->_currentInvocations;
  objc_sync_enter(v7);
  if ([(NSMutableSet *)self->_currentInvocations containsObject:v6])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = [v6 monitor];
    [v8 removeObserver:self name:MonitoredActivityEnded object:v9];

    [(NSMutableSet *)self->_currentInvocations removeObject:v6];
    objc_sync_exit(v7);

    v7 = [v6 target];
    v10 = [(NSMutableSet *)v7 mailbox];
    if ([(NSMutableSet *)v7 _fetchedSuccessfully])
    {
      v11 = MFAutoFetchLog();
      if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_INFO))
      {
        v21 = [v10 account];
        v23 = [v21 loggingIdentifier];
        v22 = [v10 name];
        v12 = +[MFMailMessageLibrary defaultInstance];
        v13 = [v10 URLString];
        v14 = [v12 totalCountForMailbox:v13];
        v15 = [v10 store];
        *buf = 138413314;
        v25 = v23;
        v26 = 2048;
        v27 = v10;
        v28 = 2112;
        v29 = v22;
        v30 = 1024;
        v31 = v14;
        v32 = 2048;
        v33 = [v15 serverMessageCount];
        _os_log_impl(&_mh_execute_header, &v11->super.super, OS_LOG_TYPE_INFO, "powernap: %@ %p [%@ %d %lu]", buf, 0x30u);
      }
    }

    else
    {
      v17 = MFAutoFetchLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v10 account];
        v19 = [v18 loggingIdentifier];
        v20 = [v10 name];
        *buf = 138412802;
        v25 = v19;
        v26 = 2048;
        v27 = v10;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "powernap: %@ %p [%@ FAIL]", buf, 0x20u);
      }

      v11 = self->_failedMailboxes;
      objc_sync_enter(v11);
      [(NSMutableSet *)self->_failedMailboxes addObject:v10];
      objc_sync_exit(v11);
    }

    [(MFFetchProcessor *)self _finishRequest];
  }

  else
  {
    v16 = MFAutoFetchLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MFFetchProcessor: invocation canceled after notification fired", buf, 2u);
    }

    objc_sync_exit(v7);
  }
}

- (id)_mailboxesToFetch
{
  v27 = +[NSMutableArray array];
  v26 = [NSDate dateWithTimeIntervalSinceNow:-self->_lastFetchDateCutoff];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(MFFetchProcessor *)self accounts];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        v7 = [v5 allMailboxUids];
        v8 = [NSMutableSet setWithArray:v7];

        [v8 minusSet:self->_failedMailboxes];
        if (![(MFFetchProcessor *)self includePushedMailboxes])
        {
          v9 = [v5 pushedMailboxUids];
          [v8 minusSet:v9];
        }

        if (![(MFFetchProcessor *)self includeFavoritesMailboxes])
        {
          favoritesPersistence = self->_favoritesPersistence;
          if (favoritesPersistence)
          {
            v11 = [(FavoritesPersistence *)favoritesPersistence favoriteMailboxesForAccount:v5];
            [v8 minusSet:v11];
          }
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100069ED4;
        v28[3] = &unk_100158A10;
        v28[4] = self;
        v28[5] = v5;
        v29 = v26;
        v12 = [v8 objectsPassingTest:v28];
        [v8 minusSet:v12];

        v13 = [v8 allObjects];
        if ([(MFFetchProcessor *)self useMailboxFrecencyRanking])
        {
          v14 = +[MFMailMessageLibrary defaultInstance];
          v15 = [v14 mailboxFrecencyController];

          v16 = [v15 sortedArrayOfMailboxesForAccount:v5];
          v17 = [objc_opt_class() sortedMailboxesInArrayWithMailboxes:v13 ranking:v16];

          v13 = v17;
        }

        accountMailboxesBatchSize = self->_accountMailboxesBatchSize;
        v19 = [v8 count];
        if (accountMailboxesBatchSize >= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = accountMailboxesBatchSize;
        }

        v21 = [v13 subarrayWithRange:{0, v20}];
        [v27 addObjectsFromArray:v21];

        objc_autoreleasePoolPop(v6);
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v3);
  }

  v22 = [objc_opt_class() mailboxesSortedByLastFetchDate:v27];

  return v22;
}

+ (id)sortedMailboxesInArrayWithMailboxes:(id)a3 ranking:(id)a4
{
  v5 = a3;
  v19 = a4;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v7 = +[NSMutableIndexSet indexSetWithIndexesInRange:](NSMutableIndexSet, "indexSetWithIndexesInRange:", 0, [v5 count]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v19;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v5 indexOfObject:v12];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addObject:v12];
          [v7 removeIndex:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10006A2BC;
  v20[3] = &unk_100158A38;
  v14 = v6;
  v21 = v14;
  v15 = v5;
  v22 = v15;
  [v7 enumerateIndexesUsingBlock:v20];
  v16 = v22;
  v17 = v14;

  return v14;
}

+ (id)mailboxesSortedByLastFetchDate:(id)a3
{
  v4 = a3;
  +[MailPersistentStorage sharedStorage];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A420;
  v9 = v8[3] = &unk_100158A60;
  v5 = v9;
  v6 = [a1 mailboxes:v4 sortedByDate:v8];

  return v6;
}

+ (id)mailboxes:(id)a3 sortedByDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] > 1)
  {
    v9 = [v5 count];
    v10 = malloc_type_calloc(v9, 0x10uLL, 0x1000040451B5BE8uLL);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10006A678;
    v18 = &unk_100158A88;
    v19 = v6;
    v20 = v10;
    [v5 enumerateObjectsUsingBlock:&v15];
    qsort(v10, v9, 0x10uLL, sub_10006A778);
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    if (v9)
    {
      v11 = v10;
      do
      {
        v12 = *v11;
        v11 += 2;
        v13 = [v5 objectAtIndexedSubscript:v12];
        [v8 addObject:v13];

        --v9;
      }

      while (v9);
    }

    free(v10);
  }

  else
  {
    v7 = &__NSArray0__struct;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  return v8;
}

@end