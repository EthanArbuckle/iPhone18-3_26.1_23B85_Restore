@interface CallHistoryDBPrivacyPruner
- (CallHistoryDBPrivacyPruner)initWithDBHandle:(id)handle interactionManager:(id)manager;
- (CallHistoryDBPrivacyPruner)initWithDBHandle:(id)handle interactionManager:(id)manager spotlightIndexManager:(id)indexManager;
- (int64_t)callHistoryDBFetchLimit;
- (unint64_t)pruneCallsWithPredicate:(id)predicate;
- (void)prune;
- (void)pruneSync;
- (void)registerForNotifications;
@end

@implementation CallHistoryDBPrivacyPruner

- (CallHistoryDBPrivacyPruner)initWithDBHandle:(id)handle interactionManager:(id)manager
{
  handleCopy = handle;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = CallHistoryDBPrivacyPruner;
  v9 = [(CallHistoryDBPrivacyPruner *)&v16 initWithName:"CallHistoryDBPrivacyPruner"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dbHandle, handle);
    v11 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    objc_storeStrong(&v10->_interactionManager, manager);
    v13 = +[CHSpotlightIndexManager sharedInstance];
    spotlightIndexManager = v10->_spotlightIndexManager;
    v10->_spotlightIndexManager = v13;

    [(CallHistoryDBPrivacyPruner *)v10 registerForNotifications];
  }

  return v10;
}

- (CallHistoryDBPrivacyPruner)initWithDBHandle:(id)handle interactionManager:(id)manager spotlightIndexManager:(id)indexManager
{
  indexManagerCopy = indexManager;
  v10 = [(CallHistoryDBPrivacyPruner *)self initWithDBHandle:handle interactionManager:manager];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spotlightIndexManager, indexManager);
  }

  return v11;
}

- (unint64_t)pruneCallsWithPredicate:(id)predicate
{
  if (predicate)
  {
    predicateCopy = predicate;
    dbHandle = [(CallHistoryDBPrivacyPruner *)self dbHandle];
    v6 = [dbHandle deleteCallsWithPredicate:predicateCopy];

    if (v6)
    {
      v12 = 0;
      v7 = [dbHandle saveDatabase:&v12];
      v8 = v12;
      v9 = v8;
      if (v6 == 0x7FFFFFFFFFFFFFFFLL || !v7)
      {
        if (!v8)
        {
          v6 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        logHandle = [(CallHistoryDBPrivacyPruner *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          sub_100034BA8(v9, logHandle);
        }

        v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:

LABEL_14:
        return v6;
      }
    }

    else
    {
      v9 = 0;
    }

    logHandle = [(CallHistoryDBPrivacyPruner *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Pruned %ld calls from the data store.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100026B10;
  v8 = &unk_1000517E0;
  objc_copyWeak(&v9, &location);
  v4 = [v3 addObserverForName:@"kCallHistoryCallRecordInsertedNotification" object:0 queue:0 usingBlock:&v5];
  [(CallHistoryDBPrivacyPruner *)self setObserverCallRecordRef:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)prune
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100026BC0;
  v2[3] = &unk_100050FA0;
  v2[4] = self;
  [(CallHistoryDBPrivacyPruner *)self execute:v2];
}

- (void)pruneSync
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:0];
  v4 = objc_autoreleasePoolPush();
  v5 = [NSPredicate predicateWithFormat:@"service_provider == %@", @"com.apple.FaceTime"];
  dbHandle = [(CallHistoryDBPrivacyPruner *)self dbHandle];
  v34 = v3;
  v7 = [NSArray arrayWithObjects:&v34 count:1];
  v8 = [dbHandle fetchCallIdentifiersWithPredicate:v5 sortDescriptors:v7 limit:0 offset:-[CallHistoryDBPrivacyPruner callHistoryDBFetchLimit](self batchSize:{"callHistoryDBFetchLimit"), 0}];

  logHandle = [(CallHistoryDBPrivacyPruner *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = [v8 count];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "FT calls not visible to user: %lu", buf, 0xCu);
  }

  if ([v8 count])
  {
    v10 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v8];

    [(CallHistoryDBPrivacyPruner *)self pruneCallsWithPredicate:v10];
    interactionManager = [(CallHistoryDBPrivacyPruner *)self interactionManager];
    [interactionManager deleteInteractionWithCalls:v8];

    featureFlags = [(CallHistoryDBPrivacyPruner *)self featureFlags];
    callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

    if (callHistorySearchEnabled)
    {
      logHandle2 = [(CallHistoryDBPrivacyPruner *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 count];
        *buf = 134217984;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Pruned %lu FT calls. Removing them from index", buf, 0xCu);
      }

      spotlightIndexManager = [(CallHistoryDBPrivacyPruner *)self spotlightIndexManager];
      [spotlightIndexManager removeDeletedCalls:v8];
    }
  }

  else
  {
    v10 = v5;
  }

  objc_autoreleasePoolPop(v4);
  v17 = objc_autoreleasePoolPush();
  v18 = [NSPredicate predicateWithFormat:@"service_provider != %@", @"com.apple.FaceTime"];

  dbHandle2 = [(CallHistoryDBPrivacyPruner *)self dbHandle];
  v31 = v3;
  v20 = [NSArray arrayWithObjects:&v31 count:1];
  v21 = [dbHandle2 fetchCallIdentifiersWithPredicate:v18 sortDescriptors:v20 limit:0 offset:-[CallHistoryDBPrivacyPruner callHistoryDBFetchLimit](self batchSize:{"callHistoryDBFetchLimit"), 0}];

  logHandle3 = [(CallHistoryDBPrivacyPruner *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    *buf = 134217984;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Non FT calls not visible to user: %lu", buf, 0xCu);
  }

  if ([v21 count])
  {
    v24 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v21];

    [(CallHistoryDBPrivacyPruner *)self pruneCallsWithPredicate:v24];
    interactionManager2 = [(CallHistoryDBPrivacyPruner *)self interactionManager];
    [interactionManager2 deleteInteractionWithCalls:v21];

    featureFlags2 = [(CallHistoryDBPrivacyPruner *)self featureFlags];
    callHistorySearchEnabled2 = [featureFlags2 callHistorySearchEnabled];

    if (callHistorySearchEnabled2)
    {
      logHandle4 = [(CallHistoryDBPrivacyPruner *)self logHandle];
      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v21 count];
        *buf = 134217984;
        v33 = v29;
        _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Pruned %lu non FT calls. Removing them from index", buf, 0xCu);
      }

      spotlightIndexManager2 = [(CallHistoryDBPrivacyPruner *)self spotlightIndexManager];
      [spotlightIndexManager2 removeDeletedCalls:v21];
    }
  }

  else
  {
    v24 = v18;
  }

  objc_autoreleasePoolPop(v17);
}

- (int64_t)callHistoryDBFetchLimit
{
  featureFlags = [(CallHistoryDBPrivacyPruner *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (!increaseCallHistoryEnabled)
  {
    return 200;
  }

  featureFlags2 = [(CallHistoryDBPrivacyPruner *)self featureFlags];
  keepCallsEnabled = [featureFlags2 keepCallsEnabled];
  v7 = &unk_1000482D0;
  if (!keepCallsEnabled)
  {
    v7 = &unk_1000482C0;
  }

  v8 = *v7;

  return v8;
}

@end