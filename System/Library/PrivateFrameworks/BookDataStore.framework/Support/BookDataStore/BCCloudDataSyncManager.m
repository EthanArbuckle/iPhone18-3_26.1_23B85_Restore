@interface BCCloudDataSyncManager
- (BCCloudDataSyncManager)initWithCloudKitController:(id)a3 dataMapper:(id)a4;
- (BCCloudDataSyncManagerDelegate)delegate;
- (id)_batchFromCloudData:(id)a3;
- (id)_modifyRecordsCompletionBlockWithDispatchGroup:(id)a3 cloudDataMap:(id)a4 recordCount:(unint64_t)a5 operation:(id)a6;
- (id)privacyDelegate;
- (unint64_t)_maxCloudDataPerBatch;
- (void)_enterDispatchGroup:(id)a3 times:(unint64_t)a4;
- (void)_fromBatch:(id)a3 getRecordsToSave:(id *)a4 recordIDsToDelete:(id *)a5 buildingMap:(id *)a6;
- (void)_leaveDispatchGroup:(id)a3 times:(unint64_t)a4;
- (void)_syncQueueSyncForCloudData:(id)a3 completion:(id)a4;
- (void)_updateRetryParametersFromModifyRecordsOperationError:(id)a3 batchSize:(unint64_t)a4;
- (void)databaseController:(id)a3 attachmentChanged:(BOOL)a4;
- (void)databaseController:(id)a3 fetchedAllRecordsInZone:(id)a4;
- (void)databaseController:(id)a3 reachabilityChanged:(BOOL)a4;
- (void)databaseController:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
- (void)databaseController:(id)a3 recordsChanged:(id)a4;
- (void)fetchRecordForRecordID:(id)a3 completion:(id)a4;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)a3;
- (void)syncCloudData:(id)a3 completion:(id)a4;
@end

@implementation BCCloudDataSyncManager

- (BCCloudDataSyncManager)initWithCloudKitController:(id)a3 dataMapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BCCloudDataSyncManager;
  v9 = [(BCCloudDataSyncManager *)&v15 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);

    v12 = dispatch_queue_create("com.apple.iBooks.CloudDataSyncManager", v11);
    syncQueue = v9->_syncQueue;
    v9->_syncQueue = v12;

    objc_storeStrong(&v9->_cloudKitController, a3);
    objc_storeStrong(&v9->_dataMapper, a4);
    v9->_tooBigBatch = 400;
  }

  return v9;
}

- (void)syncCloudData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BCCloudDataSyncManager *)self cloudKitController];
  v9 = [v8 privateCloudDatabaseController];

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005248C;
    v12[3] = &unk_100241338;
    v12[4] = self;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    [v9 getAttached:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  objc_destroyWeak(&location);
}

- (void)fetchRecordForRecordID:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BCCloudDataSyncManager *)self cloudKitController];
  v8 = [v7 privateCloudDatabaseController];

  if (v8)
  {
    [v8 fetchRecordForRecordID:v10 completion:v6];
  }

  else
  {
    v9 = objc_retainBlock(v6);

    if (v9)
    {
      v9[2](v9, 0);
    }

    v6 = v9;
  }
}

- (void)databaseController:(id)a3 attachmentChanged:(BOOL)a4
{
  if (a4)
  {
    v8 = [(BCCloudDataSyncManager *)self cloudKitController];
    v5 = [v8 transactionManager];
    v6 = [(BCCloudDataSyncManager *)self delegate];
    v7 = [v6 entityName];
    [v5 signalSyncToCKTransactionForEntityName:v7 syncManager:self];
  }
}

- (void)databaseController:(id)a3 reachabilityChanged:(BOOL)a4
{
  if (a4)
  {
    v8 = [(BCCloudDataSyncManager *)self cloudKitController];
    v5 = [v8 transactionManager];
    v6 = [(BCCloudDataSyncManager *)self delegate];
    v7 = [v6 entityName];
    [v5 signalSyncToCKTransactionForEntityName:v7 syncManager:self];
  }
}

- (void)databaseController:(id)a3 recordsChanged:(id)a4
{
  v5 = a4;
  v6 = [(BCCloudDataSyncManager *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052964;
  v7[3] = &unk_100240FC8;
  v7[4] = self;
  [v6 syncManager:self resolveConflictsForRecords:v5 completion:v7];
}

- (void)databaseController:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v6 = a4;
  v7 = [(BCCloudDataSyncManager *)self delegate];
  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];

  [v7 syncManager:self removeCloudDataForIDs:v8 completion:&stru_100241358];
}

- (void)databaseController:(id)a3 fetchedAllRecordsInZone:(id)a4
{
  v8 = a4;
  v5 = [(BCCloudDataSyncManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(BCCloudDataSyncManager *)self delegate];
    [v7 syncManager:self fetchedAllRecordsInZone:v8];
  }
}

- (id)privacyDelegate
{
  v2 = [(BCCloudDataSyncManager *)self cloudKitController];
  v3 = [v2 privateCloudDatabaseController];

  return v3;
}

- (void)startSyncToCKWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataSyncManager *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052CD0;
  v7[3] = &unk_10023FED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)signalSyncToCK
{
  v3 = [(BCCloudDataSyncManager *)self delegate];
  [v3 signalSyncToCKForSyncManager:self];
}

- (unint64_t)_maxCloudDataPerBatch
{
  v2 = [(BCCloudDataSyncManager *)self tooBigBatch];
  if (v2 >> 1 <= 1)
  {
    return 1;
  }

  else
  {
    return v2 >> 1;
  }
}

- (id)_batchFromCloudData:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataSyncManager *)self _maxCloudDataPerBatch];
  v6 = v4;
  if ([v4 count] > v5)
  {
    v6 = [v4 subarrayWithRange:{0, v5}];
  }

  return v6;
}

- (void)_fromBatch:(id)a3 getRecordsToSave:(id *)a4 recordIDsToDelete:(id *)a5 buildingMap:(id *)a6
{
  v7 = a3;
  v36 = +[NSMutableArray array];
  v35 = +[NSMutableArray array];
  v8 = +[NSMutableDictionary dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        if ([v14 deletedFlag])
        {
          v15 = [v14 systemFields];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 recordID];
            v18 = [v8 objectForKey:v17];

            if (v18)
            {
              v19 = sub_100002660();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v14;
                v20 = v19;
                v21 = "BCCloudDataSyncManager: cloudDataMap already contans an entry for deleting %@";
                goto LABEL_22;
              }
            }

            else
            {
              v28 = [v16 recordID];
              [v8 setObject:v14 forKeyedSubscript:v28];

              v19 = [v16 recordID];
              [v35 addObject:v19];
            }

LABEL_24:

            goto LABEL_25;
          }

          v19 = sub_100002660();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v42 = v14;
          v20 = v19;
          v21 = "BCCloudDataSyncManager: Unable to retrieve systemFields from %@";
LABEL_22:
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
          goto LABEL_24;
        }

        v22 = [(BCCloudDataSyncManager *)self dataMapper];

        if (v22)
        {
          v23 = [(BCCloudDataSyncManager *)self dataMapper];
          v16 = [v23 recordFromCloudData:v14];

          if (!v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v16 = [v14 configuredRecordFromAttributes];
          if (!v16)
          {
LABEL_19:
            v26 = [v14 privacyDelegate];
            v27 = [v26 establishedSalt];

            if (!v27)
            {
              goto LABEL_25;
            }

            v19 = sub_100002660();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_24;
            }

            *buf = 138412290;
            v42 = v14;
            v20 = v19;
            v21 = "BCCloudDataSyncManager: Unable to configure CKRecord to save from %@";
            goto LABEL_22;
          }
        }

        v24 = [v16 recordID];
        v25 = [v8 objectForKey:v24];

        if (v25)
        {
          v19 = sub_100002660();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v42 = v14;
          v20 = v19;
          v21 = "BCCloudDataSyncManager: cloudDataMap already contans an entry for saving %@";
          goto LABEL_22;
        }

        v29 = [v16 recordID];
        [v8 setObject:v14 forKeyedSubscript:v29];

        [v36 addObject:v16];
LABEL_25:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v30 = [v9 countByEnumeratingWithState:&v37 objects:v43 count:16];
      v11 = v30;
    }

    while (v30);
  }

  if (a4)
  {
    *a4 = v36;
  }

  if (a5)
  {
    *a5 = v35;
  }

  if (a6)
  {
    v31 = v8;
    *a6 = v8;
  }
}

- (void)_enterDispatchGroup:(id)a3 times:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      dispatch_group_enter(a3);
      --v4;
    }

    while (v4);
  }
}

- (void)_leaveDispatchGroup:(id)a3 times:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    do
    {
      dispatch_group_leave(a3);
      --v4;
    }

    while (v4);
  }
}

- (void)_updateRetryParametersFromModifyRecordsOperationError:(id)a3 batchSize:(unint64_t)a4
{
  v21 = a3;
  v6 = [(BCCloudDataSyncManager *)self syncQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v21 domain];
  v8 = [v7 isEqualToString:CKErrorDomain];

  v9 = v21;
  if (v8)
  {
    objc_opt_class();
    v10 = [v21 userInfo];
    v11 = [v10 objectForKeyedSubscript:CKErrorRetryAfterKey];
    v12 = BUDynamicCast();
    [v12 doubleValue];
    v14 = v13;

    if (v14 <= 0.0)
    {
      v15 = [v21 code];
      if ((v15 - 6) < 2)
      {
LABEL_7:
        [(BCCloudDataSyncManager *)self backOffInterval];
        v14 = 5.0;
        if (v17 >= 5.0)
        {
          [(BCCloudDataSyncManager *)self backOffInterval];
          v14 = v18 + v18;
        }

        goto LABEL_13;
      }

      if (v15 != 27)
      {
        v16 = v15 == 23;
        v9 = v21;
        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

      v19 = [(BCCloudDataSyncManager *)self tooBigBatch];
      if (v19 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v19;
      }

      [(BCCloudDataSyncManager *)self setTooBigBatch:v20];
      v14 = 0.0;
    }

LABEL_13:
    [(BCCloudDataSyncManager *)self setBackOffInterval:v14];
    v9 = v21;
  }

LABEL_14:
}

- (id)_modifyRecordsCompletionBlockWithDispatchGroup:(id)a3 cloudDataMap:(id)a4 recordCount:(unint64_t)a5 operation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000537BC;
  v18[3] = &unk_100241448;
  objc_copyWeak(v23, &location);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23[1] = a5;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = objc_retainBlock(v18);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  return v16;
}

- (void)_syncQueueSyncForCloudData:(id)a3 completion:(id)a4
{
  v32 = a3;
  v31 = a4;
  [(BCCloudDataSyncManager *)self setProcessingCloudData:1];
  v6 = [(BCCloudDataSyncManager *)self cloudKitController];
  v7 = [v6 privateCloudDatabaseController];

  if (v7)
  {
    v28 = [v7 database];
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v30 = [(BCCloudDataSyncManager *)self _batchFromCloudData:v32];
    v9 = [v30 count];
    v27 = v9 < [v32 count];
    v10 = +[NSMutableArray array];
    v11 = +[NSMutableArray array];
    v12 = +[NSMutableDictionary dictionary];
    v38 = v10;
    v39 = v11;
    v37 = v12;
    [(BCCloudDataSyncManager *)self _fromBatch:v30 getRecordsToSave:&v39 recordIDsToDelete:&v38 buildingMap:&v37];
    v13 = v39;

    v14 = v38;
    v29 = v37;

    v15 = [v13 count];
    v16 = &v15[[v14 count]];
    [(BCCloudDataSyncManager *)self _enterDispatchGroup:v8 times:v16];
    if (v16)
    {
      v17 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v13 recordIDsToDelete:v14];
      v18 = +[CKOperationConfiguration bds_defaultConfiguration];
      [v17 setConfiguration:v18];

      [v17 setSavePolicy:0];
      v19 = [(BCCloudDataSyncManager *)self _modifyRecordsCompletionBlockWithDispatchGroup:v8 cloudDataMap:v29 recordCount:v16 operation:v17];
      [v17 setModifyRecordsCompletionBlock:v19];

      v20 = sub_100002660();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(BCCloudDataSyncManager *)self delegate];
        v22 = [v21 entityName];
        v23 = [v17 operationID];
        *buf = 138543618;
        v41 = v22;
        v42 = 2114;
        v43 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding CKModifyRecordsOperation to database for: %{public}@.  Operation ID: %{public}@", buf, 0x16u);
      }

      [v28 addOperation:v17];
    }

    objc_initWeak(buf, self);
    v24 = [(BCCloudDataSyncManager *)self syncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100055460;
    block[3] = &unk_100241470;
    objc_copyWeak(&v35, buf);
    v36 = v27;
    block[4] = self;
    v34 = v31;
    dispatch_group_notify(v8, v24, block);

    dispatch_group_leave(v8);
    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    [(BCCloudDataSyncManager *)self setProcessingCloudData:0];
    v25 = objc_retainBlock(v31);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25);
    }
  }
}

- (BCCloudDataSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end