@interface MTIDSyncEngine
- (MTIDSyncEngine)initWithContainerIdentifier:(id)identifier zoneID:(id)d queue:(id)queue delegate:(id)delegate;
- (MTIDSyncEngineDelegate)delegate;
- (NSMutableArray)transactions;
- (id)fetchRecordWithIDs:(id)ds;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)accountDidChange:(id)change;
- (void)addPendingRecordID:(id)d;
- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete qualityOfService:(int64_t)service;
- (void)commit;
- (void)fetchAllRecords;
- (void)fetchRecordWithID:(id)d;
- (void)handleDeletedRecordID:(id)d error:(id)error;
- (void)handleEngineStartedWithError:(id)error;
- (void)handleFetchedRecords:(id)records error:(id)error;
- (void)handleSavedRecord:(id)record error:(id)error;
- (void)handleUserRecordID:(id)d;
- (void)removePendingRecordID:(id)d;
- (void)saveRecordsWithIDs:(id)ds qualityOfService:(int64_t)service;
- (void)setState:(int64_t)state;
- (void)setupContainerWithIdentifier:(id)identifier;
- (void)startEngine;
@end

@implementation MTIDSyncEngine

- (MTIDSyncEngine)initWithContainerIdentifier:(id)identifier zoneID:(id)d queue:(id)queue delegate:(id)delegate
{
  identifierCopy = identifier;
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = MTIDSyncEngine;
  v14 = [(MTIDSyncEngine *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(MTIDSyncEngine *)v14 setQueue:queueCopy];
    [(MTIDSyncEngine *)v15 setDelegate:delegateCopy];
    [(MTIDSyncEngine *)v15 setZoneID:dCopy];
    v16 = +[NSMutableSet set];
    [(MTIDSyncEngine *)v15 setQueuedRecordIDs:v16];

    v17 = +[NSMutableSet set];
    [(MTIDSyncEngine *)v15 setPendingRecordIDs:v17];

    [(MTIDSyncEngine *)v15 setupContainerWithIdentifier:identifierCopy];
    [(MTIDSyncEngine *)v15 setQualityOfService:17];
  }

  return v15;
}

- (void)setupContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"accountDidChange:" name:CKAccountChangedNotification object:0];

  v6 = +[MTFrameworkEnvironment sharedEnvironment];
  if ([v6 useCloudKitSandbox])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [[CKContainerID alloc] initWithContainerIdentifier:identifierCopy environment:v7];
  v9 = [[CKContainer alloc] initWithContainerID:v8];
  [(MTIDSyncEngine *)self setContainer:v9];

  container = [(MTIDSyncEngine *)self container];
  containerID = [container containerID];
  environment = [containerID environment];

  if (environment == 2)
  {
    v13 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService is using iCloud container in the sandbox environment", v14, 2u);
    }
  }
}

- (void)accountDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Restarting ID sync engine because account has changed", v7, 2u);
    }

    [(MTIDSyncEngine *)selfCopy setState:0];
    [(MTIDSyncEngine *)selfCopy startEngine];
  }

  objc_sync_exit(selfCopy);
}

- (void)setState:(int64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state = state;
  if (!state)
  {
    pendingRecordIDs = [(MTIDSyncEngine *)obj pendingRecordIDs];
    [pendingRecordIDs removeAllObjects];

    queuedRecordIDs = [(MTIDSyncEngine *)obj queuedRecordIDs];
    [queuedRecordIDs removeAllObjects];

    [(MTIDSyncEngine *)obj _endTransaction];
  }

  objc_sync_exit(obj);
}

- (void)startEngine
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MTIDSyncEngine *)obj state])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(MTIDSyncEngine *)obj setState:1];
    objc_sync_exit(obj);

    objc_initWeak(&location, obj);
    container = [(MTIDSyncEngine *)obj container];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100005D50;
    v4[3] = &unk_1000208A0;
    objc_copyWeak(&v5, &location);
    [container fetchUserRecordIDWithCompletionHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (id)fetchRecordWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_alloc_init(MTPromise);
  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with IDs", buf, 2u);
  }

  v7 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:dsCopy];
  applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)self applicationBundleIdentifierOverrideForNetworkAttribution];
  configuration = [v7 configuration];
  [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000064B8;
  v14[3] = &unk_1000208C8;
  v10 = v5;
  v15 = v10;
  [v7 setFetchRecordsCompletionBlock:v14];
  container = [(MTIDSyncEngine *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v7];

  return v10;
}

- (void)fetchRecordWithID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    objc_sync_exit(selfCopy);

    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      recordName = [dCopy recordName];
      *buf = 138412290;
      v20 = recordName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with ID %@", buf, 0xCu);
    }

    [(MTIDSyncEngine *)selfCopy addPendingRecordID:dCopy];
    v8 = [CKFetchRecordsOperation alloc];
    v18 = dCopy;
    v9 = [NSArray arrayWithObjects:&v18 count:1];
    v10 = [v8 initWithRecordIDs:v9];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)selfCopy applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration = [v10 configuration];
    [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

    objc_initWeak(buf, selfCopy);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000681C;
    v15[3] = &unk_1000208F0;
    v16 = dCopy;
    objc_copyWeak(&v17, buf);
    [v10 setFetchRecordsCompletionBlock:v15];
    container = [(MTIDSyncEngine *)selfCopy container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v10];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MTIDSyncEngine *)selfCopy startEngine];
    objc_sync_exit(selfCopy);
  }
}

- (void)fetchAllRecords
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MTIDSyncEngine *)obj state]== 2)
  {
    objc_sync_exit(obj);

    v2 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching all record changes", buf, 2u);
    }

    v3 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
    zoneID = [(MTIDSyncEngine *)obj zoneID];
    v23 = zoneID;
    v24 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v6 = [CKFetchRecordZoneChangesOperation alloc];
    zoneID2 = [(MTIDSyncEngine *)obj zoneID];
    v22 = zoneID2;
    v8 = [NSArray arrayWithObjects:&v22 count:1];
    v9 = [v6 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v5];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)obj applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration = [v9 configuration];
    [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

    objc_initWeak(buf, obj);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006D08;
    v19[3] = &unk_100020918;
    objc_copyWeak(&v20, buf);
    [v9 setRecordChangedBlock:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006DB4;
    v17[3] = &unk_100020940;
    objc_copyWeak(&v18, buf);
    [v9 setRecordWithIDWasDeletedBlock:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006E14;
    v15[3] = &unk_100020968;
    objc_copyWeak(&v16, buf);
    [v9 setRecordZoneFetchCompletionBlock:v15];
    [(MTIDSyncEngine *)obj _beginTransaction];
    container = [(MTIDSyncEngine *)obj container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MTIDSyncEngine *)obj startEngine];
    objc_sync_exit(obj);
  }
}

- (void)saveRecordsWithIDs:(id)ds qualityOfService:(int64_t)service
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(MTIDSyncEngine *)selfCopy qualityOfService]< service)
    {
      [(MTIDSyncEngine *)selfCopy setQualityOfService:service];
    }

    if ([(MTIDSyncEngine *)selfCopy state]== 2)
    {
      queuedRecordIDs = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
      v9 = [queuedRecordIDs count];

      queuedRecordIDs2 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
      [queuedRecordIDs2 addObjectsFromArray:dsCopy];

      if (!v9)
      {
        queuedRecordIDs3 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
        v12 = [queuedRecordIDs3 count];

        if (v12)
        {
          v13 = dispatch_time(0, 1000000000);
          queue = [(MTIDSyncEngine *)selfCopy queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100007034;
          block[3] = &unk_100020560;
          block[4] = selfCopy;
          dispatch_after(v13, queue, block);
        }
      }
    }

    else
    {
      [(MTIDSyncEngine *)selfCopy startEngine];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)commit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queuedRecordIDs = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
  allObjects = [queuedRecordIDs allObjects];

  qualityOfService = [(MTIDSyncEngine *)selfCopy qualityOfService];
  queuedRecordIDs2 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
  [queuedRecordIDs2 removeAllObjects];

  [(MTIDSyncEngine *)selfCopy setQualityOfService:17];
  objc_sync_exit(selfCopy);

  if ([allObjects count])
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218240;
      v9 = [allObjects count];
      v10 = 2048;
      v11 = qualityOfService;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Started saving %ld records with qos %ld", &v8, 0x16u);
    }

    [(MTIDSyncEngine *)selfCopy addRecordIDsToSave:allObjects recordIDsToDelete:0 qualityOfService:qualityOfService];
  }
}

- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete qualityOfService:(int64_t)service
{
  saveCopy = save;
  deleteCopy = delete;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    serviceCopy = service;
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [saveCopy count]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = saveCopy;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          delegate = [(MTIDSyncEngine *)selfCopy delegate];
          v17 = [delegate recordWithID:v15];

          if (v17)
          {
            [(MTIDSyncEngine *)selfCopy addPendingRecordID:v15];
            [v10 addObject:v17];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, selfCopy);
    v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:deleteCopy];
    configuration = [v18 configuration];
    [configuration setQualityOfService:serviceCopy];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)selfCopy applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration2 = [v18 configuration];
    [configuration2 setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

    [v18 setSavePolicy:0];
    [v18 setAtomic:0];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100007578;
    v30[3] = &unk_100020990;
    objc_copyWeak(&v31, &location);
    [v18 setPerRecordCompletionBlock:v30];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000075F0;
    v27[3] = &unk_1000209B8;
    v22 = v10;
    v28 = v22;
    objc_copyWeak(&v29, &location);
    [v18 setCompletionBlock:v27];
    container = [(MTIDSyncEngine *)selfCopy container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v18];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
  }

  else
  {
    [(MTIDSyncEngine *)selfCopy startEngine];
  }

  objc_sync_exit(selfCopy);
}

- (void)addPendingRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRecordIDs = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  [pendingRecordIDs addObject:dCopy];

  [(MTIDSyncEngine *)selfCopy _beginTransaction];
  objc_sync_exit(selfCopy);
}

- (void)removePendingRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRecordIDs = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  [pendingRecordIDs removeObject:dCopy];

  pendingRecordIDs2 = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  v7 = [pendingRecordIDs2 count];

  if (!v7)
  {
    [(MTIDSyncEngine *)selfCopy _endTransaction];
  }

  objc_sync_exit(selfCopy);
}

- (void)_beginTransaction
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007A14;
  v15 = sub_100007A24;
  transactions = [(MTIDSyncEngine *)self transactions];
  v3 = v12[5];
  if (!v3)
  {
    v4 = [NSMutableArray arrayWithCapacity:1];
    v5 = v12[5];
    v12[5] = v4;

    [(MTIDSyncEngine *)self setTransactions:v12[5]];
    v3 = v12[5];
  }

  if (![v3 count])
  {
    v6 = v12[5];
    v7 = os_transaction_create();
    [v6 addObject:v7];
  }

  +[MTIDSyncEngine transactionTimeout];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A2C;
  block[3] = &unk_1000204A0;
  block[4] = &v11;
  dispatch_after(v9, &_dispatch_main_q, block);
  _Block_object_dispose(&v11, 8);
}

- (void)_endTransaction
{
  transactions = [(MTIDSyncEngine *)self transactions];
  [transactions removeAllObjects];
}

- (void)handleUserRecordID:(id)d
{
  dCopy = d;
  queue = [(MTIDSyncEngine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007B34;
  v7[3] = &unk_1000209E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)handleEngineStartedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTIDSyncEngine *)selfCopy setState:2 * (errorCopy == 0)];
  objc_sync_exit(selfCopy);

  queue = [(MTIDSyncEngine *)selfCopy queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007C7C;
  v8[3] = &unk_1000209E0;
  v8[4] = selfCopy;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

- (void)handleSavedRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:CKErrorDomain])
  {
    code = [errorCopy code];

    if (code == 14)
    {
      userInfo = [errorCopy userInfo];
      delegate = [userInfo objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      if (delegate)
      {
        v12 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          *buf = 138412290;
          v27 = recordName;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MetricsKit: Server has a newer version of record with ID %@, use server record instead", buf, 0xCu);
        }

        v15 = delegate;
        errorCopy = 0;
        recordCopy = v15;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqual:CKErrorDomain])
  {

    goto LABEL_13;
  }

  code2 = [errorCopy code];

  if (code2 == 11)
  {
    delegate = [(MTIDSyncEngine *)self delegate];
    recordID2 = [recordCopy recordID];
    [delegate recordWasDeleted:recordID2];

LABEL_11:
  }

LABEL_13:
  queue = [(MTIDSyncEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F54;
  block[3] = &unk_100020A08;
  v23 = errorCopy;
  selfCopy = self;
  v25 = recordCopy;
  v20 = recordCopy;
  v21 = errorCopy;
  dispatch_async(queue, block);
}

- (void)handleFetchedRecords:(id)records error:(id)error
{
  recordsCopy = records;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with error %@", buf, 0xCu);
    }
  }

  else
  {
    queue = [(MTIDSyncEngine *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000081F0;
    v10[3] = &unk_1000209E0;
    v11 = recordsCopy;
    selfCopy = self;
    dispatch_async(queue, v10);

    v8 = v11;
  }
}

- (void)handleDeletedRecordID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      recordName = [dCopy recordName];
      *buf = 138412546;
      v14 = recordName;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete record with ID %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    queue = [(MTIDSyncEngine *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008468;
    v11[3] = &unk_1000209E0;
    v11[4] = self;
    v12 = dCopy;
    dispatch_async(queue, v11);
  }
}

- (MTIDSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSMutableArray)transactions
{
  WeakRetained = objc_loadWeakRetained(&self->_transactions);

  return WeakRetained;
}

@end