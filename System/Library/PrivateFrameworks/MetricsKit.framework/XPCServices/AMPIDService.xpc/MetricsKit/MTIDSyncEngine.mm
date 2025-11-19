@interface MTIDSyncEngine
- (MTIDSyncEngine)initWithContainerIdentifier:(id)a3 zoneID:(id)a4 queue:(id)a5 delegate:(id)a6;
- (MTIDSyncEngineDelegate)delegate;
- (NSMutableArray)transactions;
- (id)fetchRecordWithIDs:(id)a3;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)accountDidChange:(id)a3;
- (void)addPendingRecordID:(id)a3;
- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 qualityOfService:(int64_t)a5;
- (void)commit;
- (void)fetchAllRecords;
- (void)fetchRecordWithID:(id)a3;
- (void)handleDeletedRecordID:(id)a3 error:(id)a4;
- (void)handleEngineStartedWithError:(id)a3;
- (void)handleFetchedRecords:(id)a3 error:(id)a4;
- (void)handleSavedRecord:(id)a3 error:(id)a4;
- (void)handleUserRecordID:(id)a3;
- (void)removePendingRecordID:(id)a3;
- (void)saveRecordsWithIDs:(id)a3 qualityOfService:(int64_t)a4;
- (void)setState:(int64_t)a3;
- (void)setupContainerWithIdentifier:(id)a3;
- (void)startEngine;
@end

@implementation MTIDSyncEngine

- (MTIDSyncEngine)initWithContainerIdentifier:(id)a3 zoneID:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MTIDSyncEngine;
  v14 = [(MTIDSyncEngine *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(MTIDSyncEngine *)v14 setQueue:v12];
    [(MTIDSyncEngine *)v15 setDelegate:v13];
    [(MTIDSyncEngine *)v15 setZoneID:v11];
    v16 = +[NSMutableSet set];
    [(MTIDSyncEngine *)v15 setQueuedRecordIDs:v16];

    v17 = +[NSMutableSet set];
    [(MTIDSyncEngine *)v15 setPendingRecordIDs:v17];

    [(MTIDSyncEngine *)v15 setupContainerWithIdentifier:v10];
    [(MTIDSyncEngine *)v15 setQualityOfService:17];
  }

  return v15;
}

- (void)setupContainerWithIdentifier:(id)a3
{
  v4 = a3;
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

  v8 = [[CKContainerID alloc] initWithContainerIdentifier:v4 environment:v7];
  v9 = [[CKContainer alloc] initWithContainerID:v8];
  [(MTIDSyncEngine *)self setContainer:v9];

  v10 = [(MTIDSyncEngine *)self container];
  v11 = [v10 containerID];
  v12 = [v11 environment];

  if (v12 == 2)
  {
    v13 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService is using iCloud container in the sandbox environment", v14, 2u);
    }
  }
}

- (void)accountDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MTIDSyncEngine *)v5 state]== 2)
  {
    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Restarting ID sync engine because account has changed", v7, 2u);
    }

    [(MTIDSyncEngine *)v5 setState:0];
    [(MTIDSyncEngine *)v5 startEngine];
  }

  objc_sync_exit(v5);
}

- (void)setState:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state = a3;
  if (!a3)
  {
    v4 = [(MTIDSyncEngine *)obj pendingRecordIDs];
    [v4 removeAllObjects];

    v5 = [(MTIDSyncEngine *)obj queuedRecordIDs];
    [v5 removeAllObjects];

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
    v2 = [(MTIDSyncEngine *)obj container];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100005D50;
    v4[3] = &unk_1000208A0;
    objc_copyWeak(&v5, &location);
    [v2 fetchUserRecordIDWithCompletionHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (id)fetchRecordWithIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTPromise);
  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with IDs", buf, 2u);
  }

  v7 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v4];
  v8 = [(MTIDSyncEngine *)self applicationBundleIdentifierOverrideForNetworkAttribution];
  v9 = [v7 configuration];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000064B8;
  v14[3] = &unk_1000208C8;
  v10 = v5;
  v15 = v10;
  [v7 setFetchRecordsCompletionBlock:v14];
  v11 = [(MTIDSyncEngine *)self container];
  v12 = [v11 privateCloudDatabase];
  [v12 addOperation:v7];

  return v10;
}

- (void)fetchRecordWithID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MTIDSyncEngine *)v5 state]== 2)
  {
    objc_sync_exit(v5);

    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 recordName];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with ID %@", buf, 0xCu);
    }

    [(MTIDSyncEngine *)v5 addPendingRecordID:v4];
    v8 = [CKFetchRecordsOperation alloc];
    v18 = v4;
    v9 = [NSArray arrayWithObjects:&v18 count:1];
    v10 = [v8 initWithRecordIDs:v9];

    v11 = [(MTIDSyncEngine *)v5 applicationBundleIdentifierOverrideForNetworkAttribution];
    v12 = [v10 configuration];
    [v12 setApplicationBundleIdentifierOverrideForNetworkAttribution:v11];

    objc_initWeak(buf, v5);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000681C;
    v15[3] = &unk_1000208F0;
    v16 = v4;
    objc_copyWeak(&v17, buf);
    [v10 setFetchRecordsCompletionBlock:v15];
    v13 = [(MTIDSyncEngine *)v5 container];
    v14 = [v13 privateCloudDatabase];
    [v14 addOperation:v10];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MTIDSyncEngine *)v5 startEngine];
    objc_sync_exit(v5);
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
    v4 = [(MTIDSyncEngine *)obj zoneID];
    v23 = v4;
    v24 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v6 = [CKFetchRecordZoneChangesOperation alloc];
    v7 = [(MTIDSyncEngine *)obj zoneID];
    v22 = v7;
    v8 = [NSArray arrayWithObjects:&v22 count:1];
    v9 = [v6 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v5];

    v10 = [(MTIDSyncEngine *)obj applicationBundleIdentifierOverrideForNetworkAttribution];
    v11 = [v9 configuration];
    [v11 setApplicationBundleIdentifierOverrideForNetworkAttribution:v10];

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
    v12 = [(MTIDSyncEngine *)obj container];
    v13 = [v12 privateCloudDatabase];
    [v13 addOperation:v9];

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

- (void)saveRecordsWithIDs:(id)a3 qualityOfService:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = self;
    objc_sync_enter(v7);
    if ([(MTIDSyncEngine *)v7 qualityOfService]< a4)
    {
      [(MTIDSyncEngine *)v7 setQualityOfService:a4];
    }

    if ([(MTIDSyncEngine *)v7 state]== 2)
    {
      v8 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
      v9 = [v8 count];

      v10 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
      [v10 addObjectsFromArray:v6];

      if (!v9)
      {
        v11 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
        v12 = [v11 count];

        if (v12)
        {
          v13 = dispatch_time(0, 1000000000);
          v14 = [(MTIDSyncEngine *)v7 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100007034;
          block[3] = &unk_100020560;
          block[4] = v7;
          dispatch_after(v13, v14, block);
        }
      }
    }

    else
    {
      [(MTIDSyncEngine *)v7 startEngine];
    }

    objc_sync_exit(v7);
  }
}

- (void)commit
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDSyncEngine *)v2 queuedRecordIDs];
  v4 = [v3 allObjects];

  v5 = [(MTIDSyncEngine *)v2 qualityOfService];
  v6 = [(MTIDSyncEngine *)v2 queuedRecordIDs];
  [v6 removeAllObjects];

  [(MTIDSyncEngine *)v2 setQualityOfService:17];
  objc_sync_exit(v2);

  if ([v4 count])
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218240;
      v9 = [v4 count];
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Started saving %ld records with qos %ld", &v8, 0x16u);
    }

    [(MTIDSyncEngine *)v2 addRecordIDsToSave:v4 recordIDsToDelete:0 qualityOfService:v5];
  }
}

- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 qualityOfService:(int64_t)a5
{
  v8 = a3;
  v26 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if ([(MTIDSyncEngine *)v9 state]== 2)
  {
    v25 = a5;
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v8;
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
          v16 = [(MTIDSyncEngine *)v9 delegate];
          v17 = [v16 recordWithID:v15];

          if (v17)
          {
            [(MTIDSyncEngine *)v9 addPendingRecordID:v15];
            [v10 addObject:v17];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, v9);
    v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v10 recordIDsToDelete:v26];
    v19 = [v18 configuration];
    [v19 setQualityOfService:v25];

    v20 = [(MTIDSyncEngine *)v9 applicationBundleIdentifierOverrideForNetworkAttribution];
    v21 = [v18 configuration];
    [v21 setApplicationBundleIdentifierOverrideForNetworkAttribution:v20];

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
    v23 = [(MTIDSyncEngine *)v9 container];
    v24 = [v23 privateCloudDatabase];
    [v24 addOperation:v18];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
  }

  else
  {
    [(MTIDSyncEngine *)v9 startEngine];
  }

  objc_sync_exit(v9);
}

- (void)addPendingRecordID:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  [v5 addObject:v6];

  [(MTIDSyncEngine *)v4 _beginTransaction];
  objc_sync_exit(v4);
}

- (void)removePendingRecordID:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  [v5 removeObject:v8];

  v6 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  v7 = [v6 count];

  if (!v7)
  {
    [(MTIDSyncEngine *)v4 _endTransaction];
  }

  objc_sync_exit(v4);
}

- (void)_beginTransaction
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007A14;
  v15 = sub_100007A24;
  v16 = [(MTIDSyncEngine *)self transactions];
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
  v2 = [(MTIDSyncEngine *)self transactions];
  [v2 removeAllObjects];
}

- (void)handleUserRecordID:(id)a3
{
  v4 = a3;
  v5 = [(MTIDSyncEngine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007B34;
  v7[3] = &unk_1000209E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleEngineStartedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(MTIDSyncEngine *)v5 setState:2 * (v4 == 0)];
  objc_sync_exit(v5);

  v6 = [(MTIDSyncEngine *)v5 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007C7C;
  v8[3] = &unk_1000209E0;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handleSavedRecord:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqual:CKErrorDomain])
  {
    v9 = [v7 code];

    if (v9 == 14)
    {
      v10 = [v7 userInfo];
      v11 = [v10 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      if (v11)
      {
        v12 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v6 recordID];
          v14 = [v13 recordName];
          *buf = 138412290;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "MetricsKit: Server has a newer version of record with ID %@, use server record instead", buf, 0xCu);
        }

        v15 = v11;
        v7 = 0;
        v6 = v15;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = [v7 domain];
  if (![v16 isEqual:CKErrorDomain])
  {

    goto LABEL_13;
  }

  v17 = [v7 code];

  if (v17 == 11)
  {
    v11 = [(MTIDSyncEngine *)self delegate];
    v18 = [v6 recordID];
    [v11 recordWasDeleted:v18];

LABEL_11:
  }

LABEL_13:
  v19 = [(MTIDSyncEngine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F54;
  block[3] = &unk_100020A08;
  v23 = v7;
  v24 = self;
  v25 = v6;
  v20 = v6;
  v21 = v7;
  dispatch_async(v19, block);
}

- (void)handleFetchedRecords:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with error %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [(MTIDSyncEngine *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000081F0;
    v10[3] = &unk_1000209E0;
    v11 = v6;
    v12 = self;
    dispatch_async(v9, v10);

    v8 = v11;
  }
}

- (void)handleDeletedRecordID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 recordName];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete record with ID %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [(MTIDSyncEngine *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008468;
    v11[3] = &unk_1000209E0;
    v11[4] = self;
    v12 = v6;
    dispatch_async(v10, v11);
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