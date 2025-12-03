@interface BCCloudDataSyncManager
- (BCCloudDataSyncManager)initWithCloudKitController:(id)controller dataMapper:(id)mapper;
- (BCCloudDataSyncManagerDelegate)delegate;
- (id)_batchFromCloudData:(id)data;
- (id)_modifyRecordsCompletionBlockWithDispatchGroup:(id)group cloudDataMap:(id)map recordCount:(unint64_t)count operation:(id)operation;
- (id)privacyDelegate;
- (unint64_t)_maxCloudDataPerBatch;
- (void)_enterDispatchGroup:(id)group times:(unint64_t)times;
- (void)_fromBatch:(id)batch getRecordsToSave:(id *)save recordIDsToDelete:(id *)delete buildingMap:(id *)map;
- (void)_leaveDispatchGroup:(id)group times:(unint64_t)times;
- (void)_syncQueueSyncForCloudData:(id)data completion:(id)completion;
- (void)_updateRetryParametersFromModifyRecordsOperationError:(id)error batchSize:(unint64_t)size;
- (void)databaseController:(id)controller attachmentChanged:(BOOL)changed;
- (void)databaseController:(id)controller fetchedAllRecordsInZone:(id)zone;
- (void)databaseController:(id)controller reachabilityChanged:(BOOL)changed;
- (void)databaseController:(id)controller recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)databaseController:(id)controller recordsChanged:(id)changed;
- (void)fetchRecordForRecordID:(id)d completion:(id)completion;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)completion;
- (void)syncCloudData:(id)data completion:(id)completion;
@end

@implementation BCCloudDataSyncManager

- (BCCloudDataSyncManager)initWithCloudKitController:(id)controller dataMapper:(id)mapper
{
  controllerCopy = controller;
  mapperCopy = mapper;
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

    objc_storeStrong(&v9->_cloudKitController, controller);
    objc_storeStrong(&v9->_dataMapper, mapper);
    v9->_tooBigBatch = 400;
  }

  return v9;
}

- (void)syncCloudData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  objc_initWeak(&location, self);
  cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4631074;
    v12[3] = &unk_1E875AC80;
    v12[4] = self;
    objc_copyWeak(&v15, &location);
    v13 = dataCopy;
    v14 = completionCopy;
    [privateCloudDatabaseController getAttached:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  objc_destroyWeak(&location);
}

- (void)fetchRecordForRecordID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    [privateCloudDatabaseController fetchRecordForRecordID:dCopy completion:completionCopy];
  }

  else
  {
    v9 = _Block_copy(completionCopy);

    if (v9)
    {
      v9[2](v9, 0);
    }

    completionCopy = v9;
  }
}

- (void)databaseController:(id)controller attachmentChanged:(BOOL)changed
{
  if (changed)
  {
    cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    delegate = [(BCCloudDataSyncManager *)self delegate];
    entityName = [delegate entityName];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:self];
  }
}

- (void)databaseController:(id)controller reachabilityChanged:(BOOL)changed
{
  if (changed)
  {
    cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    delegate = [(BCCloudDataSyncManager *)self delegate];
    entityName = [delegate entityName];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:self];
  }
}

- (void)databaseController:(id)controller recordsChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(BCCloudDataSyncManager *)self delegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E463154C;
  v7[3] = &unk_1E875ABE8;
  v7[4] = self;
  [delegate syncManager:self resolveConflictsForRecords:changedCopy completion:v7];
}

- (void)databaseController:(id)controller recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  delegate = [(BCCloudDataSyncManager *)self delegate];
  v10[0] = deletedCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [delegate syncManager:self removeCloudDataForIDs:v8 completion:&unk_1F5E62108];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)databaseController:(id)controller fetchedAllRecordsInZone:(id)zone
{
  zoneCopy = zone;
  delegate = [(BCCloudDataSyncManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(BCCloudDataSyncManager *)self delegate];
    [delegate2 syncManager:self fetchedAllRecordsInZone:zoneCopy];
  }
}

- (id)privacyDelegate
{
  cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  return privateCloudDatabaseController;
}

- (void)startSyncToCKWithCompletion:(id)completion
{
  completionCopy = completion;
  syncQueue = [(BCCloudDataSyncManager *)self syncQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E46318B8;
  v7[3] = &unk_1E875A3D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(syncQueue, v7);
}

- (void)signalSyncToCK
{
  delegate = [(BCCloudDataSyncManager *)self delegate];
  [delegate signalSyncToCKForSyncManager:self];
}

- (unint64_t)_maxCloudDataPerBatch
{
  tooBigBatch = [(BCCloudDataSyncManager *)self tooBigBatch];
  if (tooBigBatch >> 1 <= 1)
  {
    return 1;
  }

  else
  {
    return tooBigBatch >> 1;
  }
}

- (id)_batchFromCloudData:(id)data
{
  dataCopy = data;
  _maxCloudDataPerBatch = [(BCCloudDataSyncManager *)self _maxCloudDataPerBatch];
  v6 = dataCopy;
  if ([dataCopy count] > _maxCloudDataPerBatch)
  {
    v6 = [dataCopy subarrayWithRange:{0, _maxCloudDataPerBatch}];
  }

  return v6;
}

- (void)_fromBatch:(id)batch getRecordsToSave:(id *)save recordIDsToDelete:(id *)delete buildingMap:(id *)map
{
  v45 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = batchCopy;
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
          systemFields = [v14 systemFields];
          configuredRecordFromAttributes = systemFields;
          if (systemFields)
          {
            recordID = [systemFields recordID];
            v18 = [dictionary objectForKey:recordID];

            if (v18)
            {
              recordID3 = BDSCloudKitLog();
              if (os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v43 = v14;
                v20 = recordID3;
                v21 = "BCCloudDataSyncManager: cloudDataMap already contans an entry for deleting %@";
                goto LABEL_22;
              }
            }

            else
            {
              recordID2 = [configuredRecordFromAttributes recordID];
              [dictionary setObject:v14 forKeyedSubscript:recordID2];

              recordID3 = [configuredRecordFromAttributes recordID];
              [array2 addObject:recordID3];
            }

LABEL_24:

            goto LABEL_25;
          }

          recordID3 = BDSCloudKitLog();
          if (!os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v43 = v14;
          v20 = recordID3;
          v21 = "BCCloudDataSyncManager: Unable to retrieve systemFields from %@";
LABEL_22:
          _os_log_error_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
          goto LABEL_24;
        }

        dataMapper = [(BCCloudDataSyncManager *)self dataMapper];

        if (dataMapper)
        {
          dataMapper2 = [(BCCloudDataSyncManager *)self dataMapper];
          configuredRecordFromAttributes = [dataMapper2 recordFromCloudData:v14];

          if (!configuredRecordFromAttributes)
          {
            goto LABEL_19;
          }
        }

        else
        {
          configuredRecordFromAttributes = [v14 configuredRecordFromAttributes];
          if (!configuredRecordFromAttributes)
          {
LABEL_19:
            privacyDelegate = [v14 privacyDelegate];
            establishedSalt = [privacyDelegate establishedSalt];

            if (!establishedSalt)
            {
              goto LABEL_25;
            }

            recordID3 = BDSCloudKitLog();
            if (!os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_24;
            }

            *buf = 138412290;
            v43 = v14;
            v20 = recordID3;
            v21 = "BCCloudDataSyncManager: Unable to configure CKRecord to save from %@";
            goto LABEL_22;
          }
        }

        recordID4 = [configuredRecordFromAttributes recordID];
        v25 = [dictionary objectForKey:recordID4];

        if (v25)
        {
          recordID3 = BDSCloudKitLog();
          if (!os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          *buf = 138412290;
          v43 = v14;
          v20 = recordID3;
          v21 = "BCCloudDataSyncManager: cloudDataMap already contans an entry for saving %@";
          goto LABEL_22;
        }

        recordID5 = [configuredRecordFromAttributes recordID];
        [dictionary setObject:v14 forKeyedSubscript:recordID5];

        [array addObject:configuredRecordFromAttributes];
LABEL_25:

        ++v13;
      }

      while (v11 != v13);
      v30 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      v11 = v30;
    }

    while (v30);
  }

  if (save)
  {
    *save = array;
  }

  if (delete)
  {
    *delete = array2;
  }

  if (map)
  {
    v31 = dictionary;
    *map = dictionary;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_enterDispatchGroup:(id)group times:(unint64_t)times
{
  if (times)
  {
    timesCopy = times;
    do
    {
      dispatch_group_enter(group);
      --timesCopy;
    }

    while (timesCopy);
  }
}

- (void)_leaveDispatchGroup:(id)group times:(unint64_t)times
{
  if (times)
  {
    timesCopy = times;
    do
    {
      dispatch_group_leave(group);
      --timesCopy;
    }

    while (timesCopy);
  }
}

- (void)_updateRetryParametersFromModifyRecordsOperationError:(id)error batchSize:(unint64_t)size
{
  errorCopy = error;
  syncQueue = [(BCCloudDataSyncManager *)self syncQueue];
  dispatch_assert_queue_V2(syncQueue);

  domain = [errorCopy domain];
  v8 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  v9 = errorCopy;
  if (v8)
  {
    objc_opt_class();
    userInfo = [errorCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B748]];
    v12 = BUDynamicCast();
    [v12 doubleValue];
    v14 = v13;

    if (v14 <= 0.0)
    {
      code = [errorCopy code];
      if ((code - 6) < 2)
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

      if (code != 27)
      {
        v16 = code == 23;
        v9 = errorCopy;
        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

      tooBigBatch = [(BCCloudDataSyncManager *)self tooBigBatch];
      if (tooBigBatch >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = tooBigBatch;
      }

      [(BCCloudDataSyncManager *)self setTooBigBatch:sizeCopy];
      v14 = 0.0;
    }

LABEL_13:
    [(BCCloudDataSyncManager *)self setBackOffInterval:v14];
    v9 = errorCopy;
  }

LABEL_14:
}

- (id)_modifyRecordsCompletionBlockWithDispatchGroup:(id)group cloudDataMap:(id)map recordCount:(unint64_t)count operation:(id)operation
{
  groupCopy = group;
  mapCopy = map;
  operationCopy = operation;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E46323A4;
  aBlock[3] = &unk_1E875AD70;
  objc_copyWeak(v23, &location);
  v19 = groupCopy;
  v20 = mapCopy;
  v21 = operationCopy;
  selfCopy = self;
  v23[1] = count;
  v13 = operationCopy;
  v14 = mapCopy;
  v15 = groupCopy;
  v16 = _Block_copy(aBlock);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);

  return v16;
}

- (void)_syncQueueSyncForCloudData:(id)data completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  aBlock = completion;
  [(BCCloudDataSyncManager *)self setProcessingCloudData:1];
  cloudKitController = [(BCCloudDataSyncManager *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    database = [privateCloudDatabaseController database];
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v31 = [(BCCloudDataSyncManager *)self _batchFromCloudData:dataCopy];
    v9 = [v31 count];
    v28 = v9 < [dataCopy count];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v39 = array;
    v40 = array2;
    v38 = dictionary;
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
      bds_defaultConfiguration = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
      [v17 setConfiguration:bds_defaultConfiguration];

      [v17 setSavePolicy:0];
      v19 = [(BCCloudDataSyncManager *)self _modifyRecordsCompletionBlockWithDispatchGroup:v8 cloudDataMap:v30 recordCount:v16 operation:v17];
      [v17 setModifyRecordsCompletionBlock:v19];

      v20 = BDSCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [(BCCloudDataSyncManager *)self delegate];
        entityName = [delegate entityName];
        operationID = [v17 operationID];
        *buf = 138543618;
        v42 = entityName;
        v43 = 2114;
        v44 = operationID;
        _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "Adding CKModifyRecordsOperation to database for: %{public}@.  Operation ID: %{public}@", buf, 0x16u);
      }

      [database addOperation:v17];
    }

    objc_initWeak(buf, self);
    syncQueue = [(BCCloudDataSyncManager *)self syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4634048;
    block[3] = &unk_1E875AD98;
    objc_copyWeak(&v36, buf);
    v37 = v28;
    block[4] = self;
    v35 = aBlock;
    dispatch_group_notify(v8, syncQueue, block);

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