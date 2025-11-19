@interface SyncEngine
- (BOOL)checkAndSetOperationInProgress_sync:(id)a3;
- (SyncEngine)initWithCloudKit:(id)a3 withTransactionLog:(id)a4 withAutoSync:(id)a5;
- (void)begin:(id)a3;
- (void)begin_sync:(id)a3;
- (void)dealloc;
- (void)downloadChanges:(id)a3;
- (void)downloadChanges_sync;
- (void)handleOperationComplete_sync;
- (void)handleRemoteTransactionsApplied:(id)a3;
- (void)handleRemoteTransactionsApplied_sync:(id)a3;
- (void)registerForNotifications;
- (void)removeOperationInProgress_sync;
- (void)updateMergeResult_sync:(id)a3;
- (void)uploadChanges_sync;
@end

@implementation SyncEngine

- (SyncEngine)initWithCloudKit:(id)a3 withTransactionLog:(id)a4 withAutoSync:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SyncEngine;
  v12 = [(SyncEngine *)&v15 initWithName:"SyncEngine"];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cloudKit, a3);
    objc_storeStrong(&v13->_txLog, a4);
    objc_storeStrong(&v13->_autoSync, a5);
    [(SyncEngine *)v13 registerForNotifications];
    [(SyncEngine *)v13 removeOperationInProgress_sync];
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_autoSyncRef];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self->_fetchChangesRef];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self->_remoteTransactionsAppliedRef];

  v6.receiver = self;
  v6.super_class = SyncEngine;
  [(SyncEngine *)&v6 dealloc];
}

- (void)begin:(id)a3
{
  v4 = a3;
  if (([(CloudKitProtocol *)self->_cloudKit isActive]& 1) != 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001D81C;
    v5[3] = &unk_100051700;
    v5[4] = self;
    v6 = v4;
    [(SyncEngine *)self execute:v5];
  }

  else
  {
    (*(v4 + 2))(v4, 3, @"Cannot sync without an active account!");
  }
}

- (void)begin_sync:(id)a3
{
  v4 = a3;
  if (![(SyncEngine *)self checkAndSetOperationInProgress_sync:v4])
  {
    v5 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Syncing to iCloud...", buf, 2u);
    }

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10001D9D0;
    v18 = sub_10001D9E0;
    v19 = os_transaction_create();
    [(AutoSyncProtocol *)self->_autoSync cancel];
    self->_fetchChangesQualityOfService = 25;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10001D9E8;
    v11 = &unk_100051728;
    v13 = buf;
    v12 = v4;
    v6 = objc_retainBlock(&v8);
    callback = self->_callback;
    self->_callback = v6;

    [(SyncEngine *)self uploadChanges_sync:v8];
    _Block_object_dispose(buf, 8);
  }
}

- (void)uploadChanges_sync
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TransactionLog *)self->_txLog getSomeTransactions];
  if ([v4 count])
  {
    cloudKit = self->_cloudKit;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001DB7C;
    v7[3] = &unk_100051750;
    v7[4] = self;
    v7[5] = v4;
    [(CloudKitProtocol *)cloudKit upload:v4 withCallback:v7];
  }

  else
  {
    v6 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No local transactions to upload", buf, 2u);
    }

    [(SyncEngine *)self downloadChanges_sync];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)downloadChanges:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001DD10;
  v4[3] = &unk_100051700;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SyncEngine *)v5 execute:v4];
}

- (void)downloadChanges_sync
{
  ++self->_fetchIterations;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001DFBC;
  v4[3] = &unk_100051778;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  [(CloudKitProtocol *)self->_cloudKit getUpdatesWithQualityOfService:self->_fetchChangesQualityOfService withCallback:v3];
}

- (BOOL)checkAndSetOperationInProgress_sync:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"kCHSyncInProgressKey"];
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Sync currently in progress since %@", v5];
    v3[2](v3, 4, v6);
  }

  else
  {
    v7 = +[NSDate date];
    [v4 setObject:v7 forKey:@"kCHSyncInProgressKey"];

    [v4 synchronize];
  }

  return v5 != 0;
}

- (void)removeOperationInProgress_sync
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"kCHSyncInProgressKey"];
  if (v4)
  {
    v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v6 = +[NSDate date];
    v7 = [v5 components:192 fromDate:v4 toDate:v6 options:0];

    v8 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = [v7 minute];
      v13 = 2048;
      v14 = [v7 second];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Operation complete after %ld minutes and %ld seconds", &v11, 0x16u);
    }

    [v3 removeObjectForKey:@"kCHSyncInProgressKey"];
    [v3 synchronize];
  }

  else
  {
    v5 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did not find sync currently in progress token", &v11, 2u);
    }
  }

  self->_fetchIterations = 0;
  self->_mergeResultInsertCount = 0;
  self->_mergeResultUpdateCount = 0;
  self->_mergeResultDeleteCount = 0;
  errorMessage = self->_errorMessage;
  self->_errorMessage = 0;

  callback = self->_callback;
  self->_callback = 0;

  self->_fetchChangesQualityOfService = 17;
}

- (void)handleRemoteTransactionsApplied:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E53C;
  v4[3] = &unk_100050E90;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SyncEngine *)v5 execute:v4];
}

- (void)handleRemoteTransactionsApplied_sync:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"kCHSyncSourceKey"];
    v8 = sub_10001F5DC(v7);
    if (v8 != 1)
    {
      v9 = v8;
      if (v8)
      {
        v10 = [(SyncEngine *)self logHandle];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_10001F5B8(v9);
          *v23 = 138543618;
          *&v23[4] = @"kCallHistoryRemoteTransactionsAppliedNotification";
          *&v23[12] = 2114;
          *&v23[14] = v15;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ notification from source %{public}@", v23, 0x16u);
        }
      }

      else
      {
        v10 = [(SyncEngine *)self logHandle];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 138543618;
          *&v23[4] = @"kCHSyncSourceKey";
          *&v23[12] = 2114;
          *&v23[14] = @"kCallHistoryRemoteTransactionsAppliedNotification";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Expected valid %{public}@ key to be present in user info dictionary for %{public}@ notification", v23, 0x16u);
        }
      }

      goto LABEL_27;
    }

    v11 = [v4 userInfo];
    v10 = [v11 objectForKeyedSubscript:@"kCHChangeTokenKey"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [(SyncEngine *)self logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100034020(@"kCHChangeTokenKey", v14);
      }

      goto LABEL_26;
    }

    v12 = [(CloudKitProtocol *)self->_cloudKit containerUserDefaults];
    [v12 setPreviousServerChangeTokenData:v10];

    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"kCHMergeTransactionsResultKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SyncEngine *)self updateMergeResult_sync:v14];
    }

    else
    {
      v16 = [(SyncEngine *)self logHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 138543618;
        *&v23[4] = @"kCHMergeTransactionsResultKey";
        *&v23[12] = 2114;
        *&v23[14] = objc_opt_class();
        v17 = *&v23[14];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", v23, 0x16u);
      }
    }

    v18 = [v4 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"kCHMoreTransactionsComingKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v19 BOOLValue])
      {
        [(SyncEngine *)self downloadChanges_sync];
LABEL_25:

LABEL_26:
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v20 = [(SyncEngine *)self logHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *v23 = 138543618;
        *&v23[4] = @"kCHMoreTransactionsComingKey";
        *&v23[12] = 2114;
        *&v23[14] = v21;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", v23, 0x16u);
      }
    }

    [(SyncEngine *)self handleOperationComplete_sync];
    goto LABEL_25;
  }

  v7 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000340D0(v7);
  }

LABEL_28:
}

- (void)updateMergeResult_sync:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Insert"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543362;
      *&v17[4] = objc_opt_class();
      v7 = *&v17[4];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Expected insert key to be of type %{public}@", v17, 0xCu);
    }

    v5 = &off_100053AB0;
  }

  v8 = [v4 objectForKeyedSubscript:{@"Update", *v17}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *v17 = 138543362;
      *&v17[4] = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Expected update key to be of type %{public}@", v17, 0xCu);
    }

    v8 = &off_100053AB0;
  }

  v12 = [v4 objectForKeyedSubscript:@"Delete"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [(SyncEngine *)self logHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *v17 = 138543362;
      *&v17[4] = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Expected delete key to be of type %{public}@", v17, 0xCu);
    }

    v12 = &off_100053AB0;
  }

  v16 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138543874;
    *&v17[4] = v5;
    *&v17[12] = 2114;
    *&v17[14] = v8;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Merge result: %{public}@ insert %{public}@ update %{public}@ delete", v17, 0x20u);
  }

  self->_mergeResultInsertCount += [v5 unsignedIntegerValue];
  self->_mergeResultUpdateCount += [v8 unsignedIntegerValue];
  self->_mergeResultDeleteCount += [v12 unsignedIntegerValue];
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001EF30;
  v16[3] = &unk_1000517E0;
  objc_copyWeak(&v17, &location);
  v4 = [v3 addObserverForName:@"kCallHistoryStartCloudKitSyncNotification" object:0 queue:0 usingBlock:v16];
  autoSyncRef = self->_autoSyncRef;
  self->_autoSyncRef = v4;

  v6 = +[NSNotificationCenter defaultCenter];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001F07C;
  v14[3] = &unk_1000517E0;
  objc_copyWeak(&v15, &location);
  v7 = [v6 addObserverForName:@"kCallHistoryFetchChangesNotification" object:0 queue:0 usingBlock:v14];
  fetchChangesRef = self->_fetchChangesRef;
  self->_fetchChangesRef = v7;

  v9 = +[NSNotificationCenter defaultCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001F1C8;
  v12[3] = &unk_1000517E0;
  objc_copyWeak(&v13, &location);
  v10 = [v9 addObserverForName:@"kCallHistoryRemoteTransactionsAppliedNotification" object:0 queue:0 usingBlock:v12];
  remoteTransactionsAppliedRef = self->_remoteTransactionsAppliedRef;
  self->_remoteTransactionsAppliedRef = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)handleOperationComplete_sync
{
  v3 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fetchIterations = self->_fetchIterations;
    *buf = 134217984;
    v17 = fetchIterations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sync result after %lu iterations", buf, 0xCu);
  }

  v5 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mergeResultInsertCount = self->_mergeResultInsertCount;
    *buf = 134217984;
    v17 = mergeResultInsertCount;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%lu inserts", buf, 0xCu);
  }

  v7 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    mergeResultUpdateCount = self->_mergeResultUpdateCount;
    *buf = 134217984;
    v17 = mergeResultUpdateCount;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%lu updates", buf, 0xCu);
  }

  v9 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mergeResultDeleteCount = self->_mergeResultDeleteCount;
    *buf = 134217984;
    v17 = mergeResultDeleteCount;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%lu deletes", buf, 0xCu);
  }

  v11 = self->_mergeResultUpdateCount;
  v12 = [NSString stringWithFormat:@"Applied %lu update %lu insert %lu delete transactions", self->_mergeResultInsertCount, v11, self->_mergeResultDeleteCount];
  v13 = [(SyncEngine *)self logHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling back with result %{public}@", buf, 0xCu);
  }

  v14 = objc_retainBlock(self->_callback);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 1, v12);
  }

  [(SyncEngine *)self removeOperationInProgress_sync];
}

@end