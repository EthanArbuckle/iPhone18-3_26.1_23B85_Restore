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
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4631074;
    v12[3] = &unk_1E875AC80;
    v12[4] = self;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    [v9 getAttached:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = _Block_copy(v7);
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
    v9 = _Block_copy(v6);

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
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E463154C;
  v7[3] = &unk_1E875ABE8;
  v7[4] = self;
  [v6 syncManager:self resolveConflictsForRecords:v5 completion:v7];
}

- (void)databaseController:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(BCCloudDataSyncManager *)self delegate];
  v10[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v7 syncManager:self removeCloudDataForIDs:v8 completion:&unk_1F5E62108];
  v9 = *MEMORY[0x1E69E9840];
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
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E46318B8;
  v7[3] = &unk_1E875A3D0;
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
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v37 = [MEMORY[0x1E695DF70] array];
  v36 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      v13 = 0;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
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
              v19 = BDSCloudKitLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v43 = v14;
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
              [v36 addObject:v19];
            }

LABEL_24:

            goto LABEL_25;
          }

          v19 = BDSCloudKitLog();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v43 = v14;
          v20 = v19;
          v21 = "BCCloudDataSyncManager: Unable to retrieve systemFields from %@";
LABEL_22:
          _os_log_error_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
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

            v19 = BDSCloudKitLog();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_24;
            }

            *buf = 138412290;
            v43 = v14;
            v20 = v19;
            v21 = "BCCloudDataSyncManager: Unable to configure CKRecord to save from %@";
            goto LABEL_22;
          }
        }

        v24 = [v16 recordID];
        v25 = [v8 objectForKey:v24];

        if (v25)
        {
          v19 = BDSCloudKitLog();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v43 = v14;
          v20 = v19;
          v21 = "BCCloudDataSyncManager: cloudDataMap already contans an entry for saving %@";
          goto LABEL_22;
        }

        v29 = [v16 recordID];
        [v8 setObject:v14 forKeyedSubscript:v29];

        [v37 addObject:v16];
LABEL_25:

        ++v13;
      }

      while (v11 != v13);
      v30 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v11 = v30;
    }

    while (v30);
  }

  if (a4)
  {
    *a4 = v37;
  }

  if (a5)
  {
    *a5 = v36;
  }

  if (a6)
  {
    v31 = v8;
    *a6 = v8;
  }

  v32 = *MEMORY[0x1E69E9840];
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
  v8 = [v7 isEqualToString:*MEMORY[0x1E695B740]];

  v9 = v21;
  if (v8)
  {
    objc_opt_class();
    v10 = [v21 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695B748]];
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
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E46323A4;
  aBlock[3] = &unk_1E875AD70;
  objc_copyWeak(v23, &location);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = self;
  v23[1] = a5;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = _Block_copy(aBlock);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  return v16;
}

- (void)_syncQueueSyncForCloudData:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v33 = a3;
  aBlock = a4;
  [(BCCloudDataSyncManager *)self setProcessingCloudData:1];
  v6 = [(BCCloudDataSyncManager *)self cloudKitController];
  v7 = [v6 privateCloudDatabaseController];

  if (v7)
  {
    v29 = [v7 database];
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v31 = [(BCCloudDataSyncManager *)self _batchFromCloudData:v33];
    v9 = [v31 count];
    v28 = v9 < [v33 count];
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v39 = v10;
    v40 = v11;
    v38 = v12;
    [(BCCloudDataSyncManager *)self _fromBatch:v31 getRecordsToSave:&v40 recordIDsToDelete:&v39 buildingMap:&v38];
    v13 = v40;

    v14 = v39;
    v30 = v38;

    v15 = [v13 count];
    v16 = [v14 count] + v15;
    [(BCCloudDataSyncManager *)self _enterDispatchGroup:v8 times:v16];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:v13 recordIDsToDelete:v14];
      v18 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
      [v17 setConfiguration:v18];

      [v17 setSavePolicy:0];
      v19 = [(BCCloudDataSyncManager *)self _modifyRecordsCompletionBlockWithDispatchGroup:v8 cloudDataMap:v30 recordCount:v16 operation:v17];
      [v17 setModifyRecordsCompletionBlock:v19];

      v20 = BDSCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(BCCloudDataSyncManager *)self delegate];
        v22 = [v21 entityName];
        v23 = [v17 operationID];
        *buf = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v23;
        _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "Adding CKModifyRecordsOperation to database for: %{public}@.  Operation ID: %{public}@", buf, 0x16u);
      }

      [v29 addOperation:v17];
    }

    objc_initWeak(buf, self);
    v24 = [(BCCloudDataSyncManager *)self syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4634048;
    block[3] = &unk_1E875AD98;
    objc_copyWeak(&v36, buf);
    v37 = v28;
    block[4] = self;
    v35 = aBlock;
    dispatch_group_notify(v8, v24, block);

    dispatch_group_leave(v8);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    [(BCCloudDataSyncManager *)self setProcessingCloudData:0];
    v25 = _Block_copy(aBlock);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (BCCloudDataSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end