@interface _DKKnowledgeStorage
+ (_DKKnowledgeStorage)storageWithShallowCopyFromStorage:(id)a3 clientIdentifier:(id)a4;
+ (id)sourceDeviceIdentityFromDeviceID:(uint64_t)a1;
+ (id)sourceDeviceIdentityFromObject:(id)a3;
- (BOOL)_deleteObjects:(void *)a3 error:;
- (BOOL)copyValueToManagedObject:(uint64_t)a1;
- (BOOL)coreDataStorage:(id)a3 didAutoMigratePersistentStore:(id)a4 toManagedObjectModel:(id)a5 havingVersion:(unint64_t)a6 error:(id *)a7;
- (BOOL)coreDataStorage:(id)a3 shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:(unint64_t)a4;
- (BOOL)coreDataStorage:(id)a3 shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:(unint64_t)a4;
- (BOOL)coreDataStorage:(id)a3 willAutoMigrateStoreAtURL:(id)a4 fromManagedObjectModel:(id)a5 havingVersion:(unint64_t)a6 error:(id *)a7;
- (BOOL)deleteKnowledgeStream:(void *)a3 context:(uint64_t)a4 expectedEventCount:;
- (BOOL)deleteObjects:(id)a3 error:(id *)a4;
- (BOOL)deleteSyncStorage;
- (BOOL)migrateDataToBiomeWithManagedObjectContext:(id)a3;
- (BOOL)migrateEventBatchToBiomeStream:(void *)a3 fetchRequest:(void *)a4 managedObjectContex:(void *)a5 converter:(void *)a6 eventCount:(void *)a7 offset:;
- (BOOL)saveChangeSetsForSync:(id)a3 error:(id *)a4;
- (BOOL)saveObjects:(id)a3 error:(id *)a4;
- (BOOL)saveSyncPeer:(id)a3 error:(id *)a4;
- (BOOL)updateDataBeforeAutoMigrationFromVersion:(void *)a3 inStoreAtURL:(void *)a4 error:;
- (BOOL)verifyBiomeMigration:(uint64_t)a3 expectedEventCount:;
- (NSUUID)deviceUUID;
- (_DKCoreDataStorage)syncStorage;
- (dispatch_queue_t)_deleteAllEventsMatchingPredicate:(void *)a3 error:;
- (dispatch_queue_t)_executeQuery:(void *)a3 error:;
- (dispatch_queue_t)_tombstoneObjectsMatchingPredicate:(uint64_t)a3 batchSize:(void *)a4 error:;
- (id)_requestForChangeSinceDate:(uint64_t)a1;
- (id)coreDataStorage:(id)a3 needsManagedObjectModelNameForVersion:(unint64_t)a4;
- (id)errorForException:(uint64_t)a1;
- (id)eventCountPerStreamName;
- (id)eventCountsForStreams:(id)a3;
- (id)executeQuery:(id)a3 error:(id *)a4;
- (id)fetchLocalChangesSinceDate:(id)a3 error:(id *)a4;
- (id)fetchSyncChangesSinceDate:(id)a3 error:(id *)a4;
- (id)initWithDirectory:(uint64_t)a3 readOnly:(int)a4 localOnly:;
- (id)initWithShallowCopyFromStorage:(void *)a3 clientIdentifier:;
- (id)keyValueObjectForKey:(void *)a3 domain:;
- (id)keyValueStoreForDomain:(id)a3;
- (id)lastChangeSetWithEntityName:(id)a3 error:(id *)a4;
- (id)migrationStreamsWithMOC:(uint64_t)a1;
- (id)nilArrayError;
- (id)removeBadObjects:(uint64_t)a1;
- (id)sourceDeviceIdentity;
- (id)syncPeersWithError:(id *)a3;
- (id)syncStorageAssertion;
- (id)syncStorageIfAvailable;
- (id)versionsRequiringManualSetup;
- (uint64_t)_saveObjects:(void *)a3 error:;
- (uint64_t)biomeStreamContainsEntries:(uint64_t)a1;
- (uint64_t)executionQueue;
- (uint64_t)finalMigrationVersion;
- (uint64_t)migrateStream:(void *)a3 context:;
- (uint64_t)updateDataAfterAutoMigrationToVersion:(void *)a3 inPersistentStore:(void *)a4 error:;
- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4;
- (unint64_t)deleteEventsMatchingPredicate:(id)a3 limit:(unint64_t)a4;
- (unint64_t)deleteEventsStartingEarlierThanDate:(id)a3 limit:(unint64_t)a4;
- (unint64_t)deleteHistogram:(id)a3;
- (unint64_t)deleteObjectsInEventStream:(id)a3 ifNeededToLimitEventCount:(unint64_t)a4 batchLimit:(unint64_t)a5;
- (unint64_t)deleteObjectsInEventStreams:(id)a3 olderThanDate:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteObjectsOlderThanDate:(id)a3 excludingPredicate:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteOldObjectsIfNeededToLimitTotalNumber:(unint64_t)a3 excludingPredicate:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteOrphanedEntities;
- (unint64_t)eventCount;
- (unint64_t)lastSequenceNumberForChangeSetWithEntityName:(id)a3 error:(id *)a4;
- (unint64_t)totalEventCountForStreams:(id)a3;
- (void)_databaseChangedWithNotification:(id)a3;
- (void)_sendEventsNotificationName:(void *)a3 withObjects:;
- (void)_sendInsertEventsNotificationWithObjects:(uint64_t)a1;
- (void)_sendTombstoneNotificationsWithStreamNameCounts:(uint64_t)a1;
- (void)_tombstoneObjects:(void *)a3 error:;
- (void)addKnowledgeStorageEventNotificationDelegate:(id)a3;
- (void)closeStorage;
- (void)closeSyncStorage;
- (void)configureDeviceUUID;
- (void)dealloc;
- (void)decrementInsertsAndDeletesObserverCount;
- (void)deleteAllEventsInEventStream:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)deleteAllEventsMatchingPredicate:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)deleteObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)incrementInsertsAndDeletesObserverCount;
- (void)removeKeyValueObjectForKey:(void *)a3 domain:;
- (void)removeKnowledgeStorageEventNotificationDelegate:(id)a3;
- (void)removeSyncPeer:(id)a3;
- (void)saveHistogram:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)saveObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)saveObjects:(id)a3 tracker:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)setKeyValueObject:(void *)a3 forKey:(void *)a4 domain:;
- (void)startSyncDownFromCloudWithResponseQueue:(id)a3 withCompletion:(id)a4;
- (void)startSyncUpToCloudWithResponseQueue:(id)a3 withCompletion:(id)a4;
- (void)updateToFinalMetadata:(uint64_t)a1;
- (void)versionsRequiringManualMigration;
@end

@implementation _DKKnowledgeStorage

- (void)dealloc
{
  v3 = +[_DKBiomeStreamCache sharedCache];
  [v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = _DKKnowledgeStorage;
  [(_DKKnowledgeStorage *)&v4 dealloc];
}

- (_DKCoreDataStorage)syncStorage
{
  v3 = self->_syncStorage;
  if (!v3)
  {
    v3 = [[_DKCoreDataStorage alloc] initWithDirectory:self->_directory databaseName:@"knowledge-sync" modelURL:self->_modelURL sync:1];
    [(_DKCoreDataStorage *)v3 setDelegate:self];
  }

  return v3;
}

- (BOOL)deleteSyncStorage
{
  v2 = [(_DKKnowledgeStorage *)self syncStorage];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 deleteStorageFor:*MEMORY[0x1E696A388]];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addKnowledgeStorageEventNotificationDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_knowledgeStorageEventNotificationDelegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_knowledgeStorageEventNotificationDelegates addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeKnowledgeStorageEventNotificationDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_knowledgeStorageEventNotificationDelegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_knowledgeStorageEventNotificationDelegates removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_sendEventsNotificationName:(void *)a3 withObjects:
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v35 = a1;
  if (a1)
  {
    v7 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v9)
    {
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v13 stream];
            v15 = [v14 name];

            if (v15)
            {
              [v7 addObject:v15];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      v33 = *(v35 + 56);
      objc_sync_enter(v33);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = *(v35 + 56);
      v16 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = *v44;
      while (1)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * j);
          if ([v5 isEqualToString:{@"_DKKnowledgeStorageDidInsertEventsNotification", v33}])
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }

            v20 = *(v35 + 32);
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke;
            v41[3] = &unk_1E7367A48;
            v41[4] = v19;
            v41[5] = v35;
            v42 = v7;
            v21 = v41;
            v22 = v20;
            v23 = os_transaction_create();
            block = MEMORY[0x1E69E9820];
            v52 = 3221225472;
            v53 = __cd_dispatch_async_capture_tx_block_invoke_5;
            v54 = &unk_1E7367818;
            v55 = v23;
            v56 = v21;
            v24 = v23;
            dispatch_async(v22, &block);

            v25 = &v42;
            goto LABEL_28;
          }

          if ([v5 isEqualToString:@"_DKKnowledgeStorageDidInsertLocalEventsNotification"])
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }

            v26 = *(v35 + 32);
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke_2;
            v39[3] = &unk_1E7367A48;
            v39[4] = v19;
            v39[5] = v35;
            v40 = v7;
            v27 = v39;
            v22 = v26;
            v28 = os_transaction_create();
            block = MEMORY[0x1E69E9820];
            v52 = 3221225472;
            v53 = __cd_dispatch_async_capture_tx_block_invoke_5;
            v54 = &unk_1E7367818;
            v55 = v28;
            v56 = v27;
            v24 = v28;
            dispatch_async(v22, &block);

            v25 = &v40;
            goto LABEL_28;
          }

          if ([v5 isEqualToString:@"_DKKnowledgeStorageDidDeleteEventsNotification"] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v29 = *(v35 + 32);
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke_3;
            v37[3] = &unk_1E7367A48;
            v37[4] = v19;
            v37[5] = v35;
            v38 = v7;
            v30 = v37;
            v22 = v29;
            v31 = os_transaction_create();
            block = MEMORY[0x1E69E9820];
            v52 = 3221225472;
            v53 = __cd_dispatch_async_capture_tx_block_invoke_5;
            v54 = &unk_1E7367818;
            v55 = v31;
            v56 = v30;
            v24 = v31;
            dispatch_async(v22, &block);

            v25 = &v38;
LABEL_28:

            continue;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (!v16)
        {
LABEL_31:

          objc_sync_exit(v33);
          break;
        }
      }
    }

    v6 = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_sendTombstoneNotificationsWithStreamNameCounts:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 && v3 && [v3 count])
  {
    v15 = *(a1 + 56);
    objc_sync_enter(v15);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(a1 + 56);
    v5 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            v9 = *(a1 + 32);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __71___DKKnowledgeStorage__sendTombstoneNotificationsWithStreamNameCounts___block_invoke;
            v17[3] = &unk_1E7367A48;
            v17[4] = v8;
            v17[5] = a1;
            v18 = v4;
            v10 = v17;
            v11 = v9;
            v12 = os_transaction_create();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
            block[3] = &unk_1E7367818;
            v24 = v12;
            v25 = v10;
            v13 = v12;
            dispatch_async(v11, block);
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v5);
    }

    objc_sync_exit(v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)saveObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64___DKKnowledgeStorage_saveObjects_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = v8;
  v22 = v10;
  v20 = v9;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  dispatch_async(executionQueue, block);
}

- (uint64_t)_saveObjects:(void *)a3 error:
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    if (v5)
    {
      v6 = [(_DKKnowledgeStorage *)a1 removeBadObjects:v5];
      v7 = [v6 count];
      if (v7 != [v5 count])
      {
        v8 = [v5 mutableCopy];
        [v8 removeObjectsInArray:v6];
        v9 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [_DKKnowledgeStorage _saveObjects:error:];
        }
      }

      if (![v6 count])
      {
        if (a3)
        {
          *a3 = 0;
        }

        LOBYTE(a1) = 1;
        goto LABEL_31;
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 1;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__13;
      v42 = __Block_byref_object_dispose__13;
      v43 = 0;
      [v5 count];
      [v6 count];
      kdebug_trace();
      v31 = [v5 count];
      v10 = v5;
      v11 = [v10 lastObject];
      if (v11)
      {
        v12 = [v10 lastObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v20 = @"unknown";
LABEL_23:

          goto LABEL_24;
        }

        v13 = [v10 lastObject];
        v14 = [v13 stream];
        v15 = [v14 name];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v10 lastObject];
          v18 = [v17 stream];
          v11 = [v18 name];

          if ([v10 count] < 2)
          {
            v19 = v11;
          }

          else
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ +more...", v11];
          }

          v20 = v19;
          goto LABEL_23;
        }
      }

      v20 = @"unknown";
LABEL_24:

      _cdknowledge_signpost_save_begin(v31, v20);
      v21 = [[_CDMemoryUsageInterval alloc] initWithName:@"saveObjects" client:0];
      [(_CDMemoryUsageInterval *)v21 begin];
      v22 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v10 count];
        *buf = 134217984;
        *v49 = v23;
        _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_INFO, "[Storage] Starting saveObjects with %lu objects.", buf, 0xCu);
      }

      v24 = [*(a1 + 96) managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(a1 + 72)];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __42___DKKnowledgeStorage__saveObjects_error___block_invoke;
      v32[3] = &unk_1E7369140;
      v33 = v6;
      v25 = v24;
      v36 = &v38;
      v37 = &v44;
      v34 = v25;
      v35 = a1;
      [v25 performWithOptions:4 andBlock:v32];
      v26 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(v45 + 24);
        v28 = v39[5];
        *buf = 67109378;
        *v49 = v27;
        *&v49[4] = 2112;
        *&v49[6] = v28;
        _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_INFO, "[Storage] Completed saveObjects with success=%d. Error: %@.", buf, 0x12u);
      }

      [(_CDMemoryUsageInterval *)v21 end];
      if (a3)
      {
        *a3 = v39[5];
      }

      LOBYTE(a1) = *(v45 + 24);

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v44, 8);
LABEL_31:

      goto LABEL_32;
    }

    if (a3)
    {
      [(_DKKnowledgeStorage *)a1 nilArrayError];
      *a3 = LOBYTE(a1) = 0;
    }

    else
    {
      LOBYTE(a1) = 0;
    }
  }

LABEL_32:

  v29 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

- (void)saveObjects:(id)a3 tracker:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = os_transaction_create();
  v15 = MEMORY[0x193B00C50](v13);

  executionQueue = self->_executionQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke;
  v22[3] = &unk_1E73690F0;
  v22[4] = self;
  v23 = v10;
  v26 = v15;
  v27 = v12;
  v24 = v11;
  v25 = v14;
  v17 = v14;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  v21 = v15;
  dispatch_async(executionQueue, v22);
}

- (BOOL)saveObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  executionQueue = self->_executionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41___DKKnowledgeStorage_saveObjects_error___block_invoke;
  v11[3] = &unk_1E7369118;
  v13 = &v15;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v19;
  dispatch_sync(executionQueue, v11);
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)deleteObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66___DKKnowledgeStorage_deleteObjects_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = v8;
  v22 = v10;
  v20 = v9;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  dispatch_async(executionQueue, block);
}

- (BOOL)deleteObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  executionQueue = self->_executionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43___DKKnowledgeStorage_deleteObjects_error___block_invoke;
  v11[3] = &unk_1E7369118;
  v13 = &v15;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v19;
  dispatch_sync(executionQueue, v11);
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (dispatch_queue_t)_tombstoneObjectsMatchingPredicate:(uint64_t)a3 batchSize:(void *)a4 error:
{
  v27 = a4;
  v76[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[11]);
    if (v6)
    {
      v38 = a3;
      v35 = v6;
      v36 = a1;
      v72 = 0;
      v73[0] = &v72;
      v73[1] = 0x3032000000;
      v73[2] = __Block_byref_object_copy__13;
      v73[3] = __Block_byref_object_dispose__13;
      v74 = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v71 = 0;
      v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v76[0] = v7;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];

      v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [(dispatch_queue_t *)v36 storage];
      v31 = [v9 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:v36[9]];

      v10 = 0;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v62 = 0;
        v63 = &v62;
        v64 = 0x3032000000;
        v65 = __Block_byref_object_copy__13;
        v66 = __Block_byref_object_dispose__13;
        v67 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = __Block_byref_object_copy__13;
        v60 = __Block_byref_object_dispose__13;
        v61 = 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __74___DKKnowledgeStorage__tombstoneObjectsMatchingPredicate_batchSize_error___block_invoke;
        v44[3] = &unk_1E7369168;
        v45 = v35;
        v54 = v10;
        v55 = v38;
        v29 = v33;
        v46 = v29;
        v47 = v36;
        v11 = v31;
        v48 = v11;
        v50 = &v72;
        v34 = v32;
        v49 = v34;
        v51 = &v62;
        v52 = &v56;
        v53 = &v68;
        v30 = v11;
        [v11 performWithOptions:4 andBlock:v44];
        if ([v63[5] count])
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v12 = v63[5];
          v13 = [v12 countByEnumeratingWithState:&v40 objects:v75 count:16];
          if (v13)
          {
            v14 = *v41;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = [*(*(&v40 + 1) + 8 * i) metadata];
                v17 = +[_DKTombstoneMetadataKey eventStreamName];
                v18 = [v16 objectForKeyedSubscript:v17];

                if (v18)
                {
                  [v8 addObject:v18];
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v40 objects:v75 count:16];
            }

            while (v13);
          }

          v19 = v63[5];
          v20 = (v73[0] + 40);
          obj = *(v73[0] + 40);
          [(_DKKnowledgeStorage *)v36 _saveObjects:v19 error:&obj];
          objc_storeStrong(v20, obj);
        }

        v21 = v57[5];
        if (v21 && [v21 count])
        {
          v22 = [v57[5] allObjects];
          [v28 addObjectsFromArray:v22];
        }

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v62, 8);

        objc_autoreleasePoolPop(context);
        v23 = *(v73[0] + 40);
        if (v69[3] != v38)
        {
          break;
        }

        v10 += v38;
        if (v23)
        {
          goto LABEL_23;
        }
      }

      if (v23)
      {
LABEL_23:
        v24 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DKKnowledgeStorage _tombstoneObjectsMatchingPredicate:v73 batchSize:? error:?];
        }

        goto LABEL_27;
      }

      [(_DKKnowledgeStorage *)v36 _sendTombstoneNotificationsWithStreamNameCounts:v8];
      if (![v28 count])
      {
        goto LABEL_28;
      }

      v24 = [v28 copy];
      [_DKTombstoneNotifier sendDistributedNotificationsForTombstoneRequirementIdentifiers:v24 queue:v36[11]];
LABEL_27:

LABEL_28:
      if (v27)
      {
        *v27 = *(v73[0] + 40);
      }

      a1 = [v34 copy];

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);

      v6 = v35;
    }

    else
    {
      a1 = MEMORY[0x1E695E0F0];
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)deleteAllEventsInEventStream:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 name];
  v10 = [_DKQuery predicateForEventsWithStreamName:v11];
  [(_DKKnowledgeStorage *)self deleteAllEventsMatchingPredicate:v10 responseQueue:v9 withCompletion:v8];
}

- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4
{
  v6 = [a3 name];
  v7 = [_DKQuery predicateForEventsWithStreamName:v6];
  v8 = [(_DKKnowledgeStorage *)self deleteAllEventsMatchingPredicate:v7 error:a4];

  return v8;
}

- (void)deleteAllEventsMatchingPredicate:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = v8;
  v22 = v10;
  v20 = v9;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  dispatch_async(executionQueue, block);
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  executionQueue = self->_executionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_error___block_invoke;
  v11[3] = &unk_1E7369118;
  v13 = &v21;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(executionQueue, v11);
  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65___DKKnowledgeStorage_executeQuery_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = v8;
  v22 = v10;
  v20 = v9;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  dispatch_async(executionQueue, block);
}

- (dispatch_queue_t)_executeQuery:(void *)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (([v5 executeConcurrently] & 1) == 0)
    {
      dispatch_assert_queue_V2(a1[11]);
    }

    v7 = [_DKQuery executableQueryForQuery:v6];
    if (v7)
    {
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = __Block_byref_object_copy__13;
      v29[4] = __Block_byref_object_dispose__13;
      v30 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__13;
      v27 = __Block_byref_object_dispose__13;
      v28 = 0;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __43___DKKnowledgeStorage__executeQuery_error___block_invoke;
      v16 = &unk_1E7369228;
      v8 = v6;
      v17 = v8;
      v18 = v7;
      v19 = a1;
      v20 = &v23;
      v21 = v29;
      v22 = a3;
      v9 = MEMORY[0x193B00C50](&v13);
      v10 = [v8 tracker];

      if (v10)
      {
        v11 = [v8 tracker];
        (v11)[2](v11, v9);
      }

      else
      {
        v9[2](v9);
      }

      a1 = v24[5];

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(v29, 8);
    }

    else if (a3)
    {
      +[_DKQuery queryNotExecutableError];
      *a3 = a1 = 0;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)executeQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42___DKKnowledgeStorage_executeQuery_error___block_invoke;
  v12[3] = &unk_1E7369200;
  v14 = &v17;
  v15 = &v21;
  v12[4] = self;
  v7 = v6;
  v13 = v7;
  v16 = &v27;
  v8 = MEMORY[0x193B00C50](v12);
  p_executionQueue = &self->_executionQueue;
  if (dispatch_get_specific(p_executionQueue) == p_executionQueue || [v7 executeConcurrently])
  {
    *(v18 + 24) = 0;
    v8[2](v8);
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v18 + 24) = 1;
  dispatch_sync(*p_executionQueue, v8);
  if (a4)
  {
LABEL_4:
    *a4 = v28[5];
  }

LABEL_5:
  v10 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v10;
}

- (unint64_t)deleteObjectsOlderThanDate:(id)a3 excludingPredicate:(id)a4 limit:(unint64_t)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@", a3];
  if (v8)
  {
    v10 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v8];

    v11 = MEMORY[0x1E696AB28];
    v23[0] = v9;
    v23[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    v9 = v13;
  }

  else
  {
    v10 = 0;
  }

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v15 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v16 = +[_DKEvent entityName];
  v22 = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  LOBYTE(v21) = 0;
  v18 = [_DKCoreDataStorage deleteObjectsInContext:v15 entityName:v16 predicate:v9 sortDescriptors:v17 fetchLimit:a5 includeSubentities:0 includePendingChanges:v21];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)deleteEventsStartingEarlierThanDate:(id)a3 limit:(unint64_t)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  v7 = a3;
  v8 = [v6 sortDescriptorWithKey:@"startDate" ascending:1];
  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v10 = +[_DKEvent entityName];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate < %@", v7];

  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOBYTE(v16) = 0;
  v13 = [_DKCoreDataStorage deleteObjectsInContext:v9 entityName:v10 predicate:v11 sortDescriptors:v12 fetchLimit:a4 includeSubentities:0 includePendingChanges:v16];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)deleteEventsMatchingPredicate:(id)a3 limit:(unint64_t)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  v7 = a3;
  v8 = [v6 sortDescriptorWithKey:@"startDate" ascending:1];
  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v10 = +[_DKEvent entityName];
  v16[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  LOBYTE(v15) = 0;
  v12 = [_DKCoreDataStorage deleteObjectsInContext:v9 entityName:v10 predicate:v7 sortDescriptors:v11 fetchLimit:a4 includeSubentities:0 includePendingChanges:v15];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)deleteOldObjectsIfNeededToLimitTotalNumber:(unint64_t)a3 excludingPredicate:(id)a4 limit:(unint64_t)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  if (v8)
  {
    v10 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v8];

    v9 = v10;
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v12 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v13 = +[_DKEvent entityName];
  v19[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  LOWORD(v18) = 0;
  v15 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:a3 context:v12 entityName:v13 predicate:v9 sortDescriptors:v14 fetchLimit:a5 includeSubentities:v18 includePendingChanges:?];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (unint64_t)deleteOrphanedEntities
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v3 = [_DKCoreDataStorage deleteOrphanedEntitiesInContext:v2];

  return v3;
}

- (unint64_t)eventCount
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v3 = +[_DKEvent entityName];
  v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v5 = [_DKCoreDataStorage countObjectsInContext:v2 entityName:v3 predicate:v4 includeSubentities:0 includePendingChanges:0];

  return v5;
}

- (unint64_t)totalEventCountForStreams:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [_DKEventStream eventStreamWithName:*(*(&v19 + 1) + 8 * v10), v19];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = [v5 allObjects];
  v13 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:v12 offset:0 limit:0 sortDescriptors:0];

  [v13 setResultType:1];
  v14 = [(_DKKnowledgeStorage *)self executeQuery:v13 error:0];
  v15 = [v14 firstObject];

  v16 = [v15 unsignedIntegerValue];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)eventCountPerStreamName
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___DKKnowledgeStorage_eventCountPerStreamName__block_invoke;
  v6[3] = &unk_1E7368AF0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 performWithOptions:4 andBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)eventCountsForStreams:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = MEMORY[0x1E696AD98];
        v21 = *(*(&v17 + 1) + 8 * i);
        v10 = v21;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        v13 = [v11 numberWithUnsignedInteger:{-[_DKKnowledgeStorage totalEventCountForStreams:](self, "totalEventCountForStreams:", v12)}];
        [v5 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unint64_t)deleteObjectsInEventStreams:(id)a3 olderThanDate:(id)a4 limit:(unint64_t)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8 && ([v8 isEqual:MEMORY[0x1E695E0F0]] & 1) == 0)
  {
    v11 = [_DKQuery predicateForEventsWithStreamNames:v8];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@ OR startDate < %@", v9, v9];
    v13 = MEMORY[0x1E696AB28];
    v27 = v11;
    v35[0] = v11;
    v35[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v11 predicateFormat];
      v23 = [v12 predicateFormat];
      [v15 predicateFormat];
      *buf = 138412802;
      v30 = v26;
      v31 = 2112;
      v32 = v23;
      v34 = v33 = 2112;
      v24 = v34;
      _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "deleteObjectsInEventStreams:olderThanDate:\n namePredicate = %@\n agePredicate = %@\n andPred = %@\n", buf, 0x20u);
    }

    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v18 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
    v19 = +[_DKEvent entityName];
    v28 = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    LOBYTE(v25) = 0;
    v10 = [_DKCoreDataStorage deleteObjectsInContext:v18 entityName:v19 predicate:v15 sortDescriptors:v20 fetchLimit:a5 includeSubentities:0 includePendingChanges:v25];
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)deleteObjectsInEventStream:(id)a3 ifNeededToLimitEventCount:(unint64_t)a4 batchLimit:(unint64_t)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = [_DKQuery predicateForEventsWithStreamName:a3];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v10 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v11 = +[_DKEvent entityName];
  v17[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOWORD(v16) = 0;
  v13 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:a4 context:v10 entityName:v11 predicate:v8 sortDescriptors:v12 fetchLimit:a5 includeSubentities:v16 includePendingChanges:?];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)closeStorage
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)closeSyncStorage
{
  syncStorage = self->_syncStorage;
  if (syncStorage)
  {
    [(_DKCoreDataStorage *)syncStorage closeStorageForProtectionClass:*MEMORY[0x1E696A388]];
  }
}

- (id)migrationStreamsWithMOC:(uint64_t)a1
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Event"];
    v5 = [MEMORY[0x1E695D5B8] entityForName:@"Event" inManagedObjectContext:v3];
    [v4 setResultType:2];
    v6 = [v5 propertiesByName];
    v7 = [v6 objectForKey:@"streamName"];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v4 setPropertiesToFetch:v8];

    [v4 setReturnsDistinctResults:1];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__13;
    v21 = __Block_byref_object_dispose__13;
    v22 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47___DKKnowledgeStorage_migrationStreamsWithMOC___block_invoke;
    v13[3] = &unk_1E7367248;
    v16 = &v17;
    v14 = v3;
    v9 = v4;
    v15 = v9;
    [v14 performBlockAndWait:v13];
    v10 = [v18[5] _pas_mappedArrayWithTransform:&__block_literal_global_682];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)migrateEventBatchToBiomeStream:(void *)a3 fetchRequest:(void *)a4 managedObjectContex:(void *)a5 converter:(void *)a6 eventCount:(void *)a7 offset:
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v32 = v14;
  v33 = v15;
  if (a1)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__13;
    v54 = __Block_byref_object_dispose__13;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__13;
    v48 = __Block_byref_object_dispose__13;
    v49 = 0;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __115___DKKnowledgeStorage_migrateEventBatchToBiomeStream_fetchRequest_managedObjectContex_converter_eventCount_offset___block_invoke;
    v38[3] = &unk_1E7369140;
    v39 = v15;
    v17 = v14;
    v40 = v17;
    v42 = &v50;
    v43 = &v44;
    v41 = v16;
    [v39 performBlockAndWait:v38];
    *a6 = [v45[5] count];
    *a7 += [v17 fetchLimit];
    v18 = v51[5];
    v31 = v18 == 0;
    if (v18)
    {
      v19 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v13 identifier];
        [_DKKnowledgeStorage migrateEventBatchToBiomeStream:v20 fetchRequest:v57 managedObjectContex:v19 converter:? eventCount:? offset:?];
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v45[5];
      v21 = [v19 countByEnumeratingWithState:&v34 objects:v56 count:16];
      if (v21)
      {
        v22 = *v35;
        do
        {
          v23 = 0;
          do
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v34 + 1) + 8 * v23);
            v25 = objc_autoreleasePoolPush();
            v26 = [getBMDKEventClass() eventWithDKEvent:v24];
            v27 = [v24 creationDate];
            v28 = [v13 source];
            [v27 timeIntervalSinceReferenceDate];
            [v28 sendEvent:v26 timestamp:?];

            objc_autoreleasePoolPop(v25);
            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v34 objects:v56 count:16];
        }

        while (v21);
      }
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v31 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)verifyBiomeMigration:(uint64_t)a3 expectedEventCount:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v7 = [v5 publisherFromStartTime:0.0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63___DKKnowledgeStorage_verifyBiomeMigration_expectedEventCount___block_invoke_2;
    v17[3] = &unk_1E7369270;
    v17[4] = &v18;
    v8 = [v7 sinkWithCompletion:&__block_literal_global_685 receiveInput:v17];

    v9 = v19[3];
    a1 = v9 == a3;
    if (v9 != a3)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [v6 identifier];
        v14 = v13;
        v15 = [v13 UTF8String];
        v16 = v19[3];
        *buf = 136446722;
        v23 = v15;
        v24 = 2048;
        v25 = v16;
        v26 = 2048;
        v27 = a3;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Unexpected mismatch in Biome stream event count encountered during migration of stream %{public}s Biome count: %lu CD count: %lu", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

- (uint64_t)biomeStreamContainsEntries:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = [v3 publisherWithStartTime:0 endTime:0 maxEvents:&unk_1F05EEA60 reversed:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___DKKnowledgeStorage_biomeStreamContainsEntries___block_invoke_2;
    v9[3] = &unk_1E7369270;
    v9[4] = &v10;
    v6 = [v5 sinkWithCompletion:&__block_literal_global_690 receiveInput:v9];
    v7 = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)migrateDataToBiomeWithManagedObjectContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(_DKKnowledgeStorage *)self migrationStreamsWithMOC:v4];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 &= [(_DKKnowledgeStorage *)self migrateStream:v4 context:?];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage migrateDataToBiomeWithManagedObjectContext:];
    }

    LOBYTE(v9) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)coreDataStorage:(id)a3 shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:(unint64_t)a4
{
  v5 = [(_DKKnowledgeStorage *)self versionsRequiringManualSetup];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (BOOL)coreDataStorage:(id)a3 shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:(unint64_t)a4
{
  v5 = [(_DKKnowledgeStorage *)self versionsRequiringManualMigration];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (id)coreDataStorage:(id)a3 needsManagedObjectModelNameForVersion:(unint64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = @"_DKDataModel";
  }

  else if (a4 == 2)
  {
    v6 = @"_DKDataModel 2";
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v8 = [v7 stringValue];

    v6 = [@"_DKDataModelVERSION-NUMBER" stringByReplacingOccurrencesOfString:@"VERSION-NUMBER" withString:v8];
  }

  return v6;
}

- (BOOL)coreDataStorage:(id)a3 willAutoMigrateStoreAtURL:(id)a4 fromManagedObjectModel:(id)a5 havingVersion:(unint64_t)a6 error:(id *)a7
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if ([(_DKKnowledgeStorage *)self finalMigrationVersion]> a6)
  {
    v18 = 0;
    v11 = [(_DKKnowledgeStorage *)self updateDataBeforeAutoMigrationFromVersion:a6 inStoreAtURL:v10 error:&v18];
    v12 = v18;
    if (!a7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_DKKnowledgeStorage coreDataStorage:a6 willAutoMigrateStoreAtURL:self fromManagedObjectModel:? havingVersion:? error:?];
  }

  v13 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20[0] = @"Unexpected model version number";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v12 = [v13 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:1 userInfo:v14];

  v11 = 0;
  if (a7)
  {
LABEL_7:
    v15 = v12;
    *a7 = v12;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)coreDataStorage:(id)a3 didAutoMigratePersistentStore:(id)a4 toManagedObjectModel:(id)a5 havingVersion:(unint64_t)a6 error:(id *)a7
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if ([(_DKKnowledgeStorage *)self finalMigrationVersion]>= a6)
  {
    v18 = 0;
    v14 = [(_DKKnowledgeStorage *)self updateDataAfterAutoMigrationToVersion:a6 inPersistentStore:v10 error:&v18];
    v13 = v18;
    if (!a7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = v13;
    *a7 = v13;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_DKKnowledgeStorage coreDataStorage:a6 didAutoMigratePersistentStore:self toManagedObjectModel:? havingVersion:? error:?];
  }

  v11 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20[0] = @"Unexpected model version number";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:1 userInfo:v12];

  v14 = 0;
  if (a7)
  {
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)saveHistogram:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  executionQueue = self->_executionQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke;
  v19[3] = &unk_1E7369298;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v12 = v19;
  v13 = executionQueue;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v17 = os_transaction_create();
  v18 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v17;
  v25 = v18;
  dispatch_async(v13, block);
}

- (unint64_t)deleteHistogram:(id)a3
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  clientID = self->_clientID;
  v6 = a3;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4 identifier:clientID];
  v8 = +[_DKHistogram entityName];
  v9 = MEMORY[0x1E696AE18];
  v10 = [v6 identifier];

  v11 = [v9 predicateWithFormat:@"identifier == %@", v10];
  LOBYTE(v14) = 1;
  v12 = [_DKCoreDataStorage deleteObjectsInContext:v7 entityName:v8 predicate:v11 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v14];

  return v12;
}

- (id)fetchLocalChangesSinceDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  if (fetchLocalChangesSinceDate_error__syncCounterInitialized != -1)
  {
    [_DKKnowledgeStorage fetchLocalChangesSinceDate:error:];
  }

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(_DKKnowledgeStorage *)self _requestForChangeSinceDate:v6];
  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  if (v9)
  {
    v10 = [[_CDMemoryUsageInterval alloc] initWithName:@"fetchLocalChanges" client:0];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __56___DKKnowledgeStorage_fetchLocalChangesSinceDate_error___block_invoke_733;
    v20 = &unk_1E73692C0;
    v11 = v10;
    v21 = v11;
    v22 = v9;
    v23 = v8;
    v25 = &v27;
    v24 = v6;
    v26 = &v33;
    [v22 performWithOptions:4 andBlock:&v17];
    [(_CDMemoryUsageInterval *)v11 end:v17];
    if (a4)
    {
      *a4 = v28[5];
    }

    if (!v28[5])
    {
      v12 = fetchLocalChangesSinceDate_error__fetchLocalChangesTimerCounter;
      v13 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v12 addTimingWithStartDate:v7 endDate:v13];
    }

    v14 = v34[5];
  }

  else
  {
    v15 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage fetchLocalChangesSinceDate:error:];
    }

    if (a4)
    {
      +[_DKSyncErrors failedToFetchChanges];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v14;
}

- (id)fetchSyncChangesSinceDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__13;
  v40 = __Block_byref_object_dispose__13;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = 0;
  if (fetchSyncChangesSinceDate_error__syncCounterInitialized != -1)
  {
    [_DKKnowledgeStorage fetchSyncChangesSinceDate:error:];
  }

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(_DKKnowledgeStorage *)self _requestForChangeSinceDate:v6];
  v9 = [(_DKKnowledgeStorage *)&self->super.isa syncStorageIfAvailable];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
    if (v11)
    {
      v12 = [[_CDMemoryUsageInterval alloc] initWithName:@"fetchSyncChanges" client:0];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __55___DKKnowledgeStorage_fetchSyncChangesSinceDate_error___block_invoke_758;
      v22 = &unk_1E7368830;
      v13 = v12;
      v23 = v13;
      v24 = v11;
      v25 = v8;
      v28 = &v30;
      v26 = v6;
      v27 = self;
      v29 = &v36;
      [v24 performWithOptions:4 andBlock:&v19];
      [(_CDMemoryUsageInterval *)v13 end:v19];
      if (a4)
      {
        *a4 = v31[5];
      }

      if (!v31[5])
      {
        v14 = fetchSyncChangesSinceDate_error__fetchSyncChangesTimerCounter;
        v15 = [MEMORY[0x1E695DF00] date];
        [(_DKEventStatsTimerCounter *)v14 addTimingWithStartDate:v7 endDate:v15];
      }

      v16 = v37[5];
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_DKKnowledgeStorage fetchLocalChangesSinceDate:error:];
      }

      if (a4)
      {
        +[_DKSyncErrors unavailableForCurrentUser];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else if (a4)
  {
    +[_DKSyncErrors unavailableForCurrentUser];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v16;
}

- (BOOL)saveChangeSetsForSync:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___DKKnowledgeStorage_saveChangeSetsForSync_error___block_invoke;
  block[3] = &unk_1E7368808;
  block[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(executionQueue, block);
  if (a4)
  {
    *a4 = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (unint64_t)lastSequenceNumberForChangeSetWithEntityName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13;
  v32 = __Block_byref_object_dispose__13;
  v33 = 0;
  v7 = +[_DKChangeSet additionChangeSetEntityName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = +[_DKChangeSetMO fetchAdditionChangeSetRequest];
  }

  else
  {
    v10 = +[_DKChangeSet deletionChangeSetEntityName];
    v11 = [v6 isEqualToString:v10];

    if (!v11)
    {
      v20 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DKKnowledgeStorage lastSequenceNumberForChangeSetWithEntityName:error:];
      }

      goto LABEL_10;
    }

    v9 = +[_DKChangeSetMO fetchDeletionChangeSetRequest];
  }

  v12 = v9;
  if (v9)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"sequenceNumber" ascending:0];
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v13, 0}];
    [v12 setSortDescriptors:v14];
    v15 = MEMORY[0x1E696AE18];
    v16 = [(_DKKnowledgeStorage *)self deviceUUID];
    v17 = [v15 predicateWithFormat:@"deviceIdentifier == %@", v16];
    [v12 setPredicate:v17];

    [v12 setFetchLimit:1];
    executionQueue = self->_executionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74___DKKnowledgeStorage_lastSequenceNumberForChangeSetWithEntityName_error___block_invoke;
    block[3] = &unk_1E7368B88;
    block[4] = self;
    v19 = v12;
    v25 = v19;
    v26 = &v34;
    v27 = &v28;
    dispatch_sync(executionQueue, block);

    goto LABEL_11;
  }

LABEL_10:
  v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:MEMORY[0x1E695E0F8]];
  v19 = 0;
  v13 = v29[5];
  v29[5] = v21;
LABEL_11:

  if (a4)
  {
    *a4 = v29[5];
  }

  v22 = v35[3];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (void)startSyncDownFromCloudWithResponseQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x3032000000;
  v29[2] = __Block_byref_object_copy__13;
  v29[3] = __Block_byref_object_dispose__13;
  v30 = 0;
  v8 = [[_CDMemoryUsageInterval alloc] initWithName:@"startSyncDown" client:0];
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke;
  block[3] = &unk_1E7369360;
  v10 = v8;
  v23 = v10;
  v24 = self;
  v11 = v7;
  v26 = v11;
  v12 = v6;
  v25 = v12;
  v27 = &v28;
  dispatch_sync(executionQueue, block);
  [(_CDMemoryUsageInterval *)v10 end];
  if (*(v29[0] + 40))
  {
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage startSyncDownFromCloudWithResponseQueue:v29 withCompletion:?];
    }

    if (v11)
    {
      defaultResponseQueue = v12;
      if (!v12)
      {
        defaultResponseQueue = self->_defaultResponseQueue;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78___DKKnowledgeStorage_startSyncDownFromCloudWithResponseQueue_withCompletion___block_invoke_779;
      v19[3] = &unk_1E7369388;
      v20 = v11;
      v21 = &v28;
      v15 = v19;
      v16 = defaultResponseQueue;
      v17 = os_transaction_create();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
      v31[3] = &unk_1E7367818;
      v32 = v17;
      v33 = v15;
      v18 = v17;
      dispatch_async(v16, v31);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (void)startSyncUpToCloudWithResponseQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x3032000000;
  v29[2] = __Block_byref_object_copy__13;
  v29[3] = __Block_byref_object_dispose__13;
  v30 = 0;
  v8 = [[_CDMemoryUsageInterval alloc] initWithName:@"startSyncUp" client:0];
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke;
  block[3] = &unk_1E7369360;
  v10 = v8;
  v23 = v10;
  v24 = self;
  v11 = v7;
  v26 = v11;
  v12 = v6;
  v25 = v12;
  v27 = &v28;
  dispatch_sync(executionQueue, block);
  [(_CDMemoryUsageInterval *)v10 end];
  if (*(v29[0] + 40))
  {
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage startSyncUpToCloudWithResponseQueue:v29 withCompletion:?];
    }

    if (v11)
    {
      defaultResponseQueue = v12;
      if (!v12)
      {
        defaultResponseQueue = self->_defaultResponseQueue;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74___DKKnowledgeStorage_startSyncUpToCloudWithResponseQueue_withCompletion___block_invoke_786;
      v19[3] = &unk_1E7369388;
      v20 = v11;
      v21 = &v28;
      v15 = v19;
      v16 = defaultResponseQueue;
      v17 = os_transaction_create();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
      v31[3] = &unk_1E7367818;
      v32 = v17;
      v33 = v15;
      v18 = v17;
      dispatch_async(v16, v31);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (id)lastChangeSetWithEntityName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__13;
  v38 = __Block_byref_object_dispose__13;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13;
  v32 = __Block_byref_object_dispose__13;
  v33 = 0;
  v7 = +[_DKChangeSet additionChangeSetEntityName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = +[_DKChangeSetMO fetchAdditionChangeSetRequest];
  }

  else
  {
    v10 = +[_DKChangeSet deletionChangeSetEntityName];
    v11 = [v6 isEqualToString:v10];

    if (!v11)
    {
      v20 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DKKnowledgeStorage lastSequenceNumberForChangeSetWithEntityName:error:];
      }

      goto LABEL_10;
    }

    v9 = +[_DKChangeSetMO fetchDeletionChangeSetRequest];
  }

  v12 = v9;
  if (v9)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"sequenceNumber" ascending:0];
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v13, 0}];
    [v12 setSortDescriptors:v14];
    v15 = MEMORY[0x1E696AE18];
    v16 = [(_DKKnowledgeStorage *)self deviceUUID];
    v17 = [v15 predicateWithFormat:@"deviceIdentifier == %@", v16];
    [v12 setPredicate:v17];

    [v12 setFetchLimit:1];
    executionQueue = self->_executionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57___DKKnowledgeStorage_lastChangeSetWithEntityName_error___block_invoke;
    block[3] = &unk_1E7368B88;
    block[4] = self;
    v19 = v12;
    v25 = v19;
    v26 = &v34;
    v27 = &v28;
    dispatch_sync(executionQueue, block);

    goto LABEL_11;
  }

LABEL_10:
  v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:MEMORY[0x1E695E0F8]];
  v19 = 0;
  v13 = v29[5];
  v29[5] = v21;
LABEL_11:

  if (a4)
  {
    *a4 = v29[5];
  }

  v22 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (void)_databaseChangedWithNotification:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_databaseChangedWithNotification__syncCounterInitialized != -1)
  {
    [_DKKnowledgeStorage _databaseChangedWithNotification:];
  }

  v5 = [v4 object];
  if ([(_DKCoreDataStorage *)self->_storage isManagedObjectContextFor:*MEMORY[0x1E696A388] equalToManagedObjectContext:v5])
  {
    v24 = v5;
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    obj = self->_knowledgeStorageEventNotificationDelegates;
    objc_sync_enter(obj);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = self;
    v8 = self->_knowledgeStorageEventNotificationDelegates;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v9)
    {
      v10 = *v51;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 addObject:v12];
          }

          if (objc_opt_respondsToSelector())
          {
            [v7 addObject:v12];
          }
        }

        v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v9);
    }

    v5 = v24;
    objc_sync_exit(obj);

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__13;
    v48 = __Block_byref_object_dispose__13;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__13;
    v42 = __Block_byref_object_dispose__13;
    v43 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_2;
    v32[3] = &unk_1E73693B0;
    v33 = v4;
    v13 = v6;
    v34 = v13;
    v36 = &v44;
    v14 = v7;
    v35 = v14;
    v37 = &v38;
    [v24 performWithOptions:4 andBlock:v32];
    v15 = [v45[5] count];
    v16 = [v39[5] count] + v15;
    if (v16)
    {
      executionQueue = v23->_executionQueue;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_799;
      v26[3] = &unk_1E7369400;
      v26[4] = v23;
      v31 = v16;
      v27 = v13;
      v29 = &v44;
      v28 = v14;
      v30 = &v38;
      v18 = v26;
      v19 = executionQueue;
      v20 = os_transaction_create();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
      block[3] = &unk_1E7367818;
      v55 = v20;
      v56 = v18;
      v21 = v20;
      dispatch_async(v19, block);
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)incrementInsertsAndDeletesObserverCount
{
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___DKKnowledgeStorage_incrementInsertsAndDeletesObserverCount__block_invoke;
  block[3] = &unk_1E7367440;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (void)decrementInsertsAndDeletesObserverCount
{
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___DKKnowledgeStorage_decrementInsertsAndDeletesObserverCount__block_invoke;
  block[3] = &unk_1E7367440;
  block[4] = self;
  dispatch_sync(executionQueue, block);
}

- (NSUUID)deviceUUID
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_deviceUUID)
  {
    v3 = objc_autoreleasePoolPush();
    [(_DKKnowledgeStorage *)v2 configureDeviceUUID];
    objc_autoreleasePoolPop(v3);
  }

  objc_sync_exit(v2);

  deviceUUID = v2->_deviceUUID;

  return deviceUUID;
}

- (void)configureDeviceUUID
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)sourceDeviceIdentityFromDeviceID:(uint64_t)a1
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];

  if (v3)
  {
    v12[0] = 0;
    v12[1] = 0;
    [v3 getUUIDBytes:v12];
    BYTE4(v11) = 0;
    LODWORD(v11) = 0;
    v4 = [MEMORY[0x1E695DF88] dataWithBytes:v12 length:{16, v11}];
    [v4 replaceBytesInRange:11 withBytes:{5, &v11}];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
    v6 = [v5 UUIDString];
    v7 = [v6 mutableCopy];

    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 10, 10}];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)sourceDeviceIdentityFromObject:(id)a3
{
  v3 = [a3 source];
  v4 = [v3 syncDeviceID];

  return v4;
}

- (id)sourceDeviceIdentity
{
  v2 = [(_DKKnowledgeStorage *)self deviceUUID];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 UUIDString];
    v5 = [_DKKnowledgeStorage sourceDeviceIdentityFromDeviceID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)syncStorageAssertion
{
  v2 = objc_alloc_init(_DKKnowledgeSyncStorageAssertion);

  return v2;
}

- (id)syncPeersWithError:(id *)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v5 = +[_DKSyncPeerMO fetchRequest];
  v6 = [(_DKKnowledgeStorage *)self executionQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke;
  v13 = &unk_1E7368B88;
  v14 = self;
  v7 = v5;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(v6, &v10);

  if (a3)
  {
    *a3 = v19[5];
  }

  v8 = [v25[5] copy];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (BOOL)saveSyncPeer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  v7 = [(_DKKnowledgeStorage *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke;
  block[3] = &unk_1E7368808;
  block[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(v7, block);

  if (a4)
  {
    *a4 = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)removeSyncPeer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = [v4 uuid];
  v7 = [v5 predicateWithFormat:@"uuid == %@", v6];

  v8 = [(_DKKnowledgeStorage *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___DKKnowledgeStorage__DKSyncPeer__removeSyncPeer___block_invoke;
  block[3] = &unk_1E7367A48;
  block[4] = self;
  v12 = v7;
  v13 = v4;
  v9 = v4;
  v10 = v7;
  dispatch_sync(v8, block);
}

- (id)keyValueStoreForDomain:(id)a3
{
  if (a3)
  {
    v6 = a3;
    v7 = [[_DKKnowledgeStorageSimpleKeyValueStore alloc] initWithStorage:v6 domain:?];

    v3 = [[_DKKeyValueStore alloc] initWithSimpleKeyValueStore:v7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)keyValueObjectForKey:(void *)a3 domain:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__21;
    v21 = __Block_byref_object_dispose__21;
    v22 = 0;
    v7 = +[_DKKeyValueMO fetchRequest];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ && key == %@", v6, v5];
    [v7 setPredicate:v8];

    [v7 setFetchLimit:1];
    v9 = [(_DKKnowledgeStorage *)a1 executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke;
    block[3] = &unk_1E736A410;
    block[4] = a1;
    v13 = v7;
    v16 = &v17;
    v14 = v5;
    v15 = v6;
    v10 = v7;
    dispatch_sync(v9, block);

    a1 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  return a1;
}

- (uint64_t)finalMigrationVersion
{
  if (a1)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

- (void)versionsRequiringManualMigration
{
  if (a1)
  {
    return &unk_1F05EF650;
  }

  else
  {
    return 0;
  }
}

- (BOOL)updateDataBeforeAutoMigrationFromVersion:(void *)a3 inStoreAtURL:(void *)a4 error:
{
  v55[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a1)
  {
    v8 = [(_DKKnowledgeStorage *)a1 versionsRequiringManualSetup];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      v51 = 0;
      v52[0] = &v51;
      v52[1] = 0x3032000000;
      v52[2] = __Block_byref_object_copy__24;
      v52[3] = __Block_byref_object_dispose__24;
      v53 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:inStoreAtURL:error:];
      }

      v11 = (v52[0] + 40);
      obj = *(v52[0] + 40);
      v12 = [MEMORY[0x1E695D6C0] removePersistentHistoryFromPersistentStoreAtURL:v7 options:0 error:&obj];
      objc_storeStrong(v11, obj);
      if (((*(v52[0] + 40) == 0) & v12) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:inStoreAtURL:error:];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:v52 inStoreAtURL:? error:?];
        }

        v14 = *(v52[0] + 40);
        *(v52[0] + 40) = 0;
      }

      v15 = objc_alloc(MEMORY[0x1E695D6C0]);
      v16 = (v52[0] + 40);
      v49 = *(v52[0] + 40);
      v17 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:v7 options:0 error:&v49];
      objc_storeStrong(v16, v49);
      v18 = [v15 initWithManagedObjectModel:v17];

      if (v18 && (v19 = (v52[0] + 40), !*(v52[0] + 40)))
      {
        v21 = *MEMORY[0x1E695D4A8];
        v48 = 0;
        v22 = [v18 addPersistentStoreWithType:v21 configuration:0 URL:v7 options:0 error:&v48];
        objc_storeStrong(v19, v48);
        if (!*(v52[0] + 40))
        {
          v23 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
          [v23 setPersistentStoreCoordinator:v18];
          [v23 setMergePolicy:*MEMORY[0x1E695D370]];
          [v23 setUndoManager:0];
          v43 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Object"];
          v24 = objc_alloc_init(MEMORY[0x1E695D5C8]);
          [v24 setName:@"SELF"];
          v25 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
          [v24 setExpression:v25];

          [v24 setExpressionResultType:2000];
          v55[0] = v24;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
          [v43 setPropertiesToFetch:v26];

          [v43 setPropertiesToGroupBy:&unk_1F05EF668];
          [v43 setResultType:2];
          v42 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Object"];
          v27 = MEMORY[0x1E695D5F0];
          v28 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v43];
          v29 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v23];
          v41 = [v27 expressionForFetch:v28 context:v29 countOnly:0];

          v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT SELF IN %@", v41];
          [v42 setPredicate:v30];

          v31 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v42];
          [v31 setResultType:2];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __98___DKKnowledgeStorage_DataMigration__updateDataBeforeAutoMigrationFromVersion_inStoreAtURL_error___block_invoke;
          v44[3] = &unk_1E736A6C0;
          v32 = v23;
          v45 = v32;
          v33 = v31;
          v46 = v33;
          v47 = &v51;
          v34 = [v32 performBlockWithResult:v44];
          v35 = *(v52[0] + 40);
          v13 = v35 == 0;
          if (v35)
          {
            v36 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:v52 inStoreAtURL:? error:?];
            }
          }

          v37 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v34 result];
            [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:v38 inStoreAtURL:buf error:v37];
          }

          if (a4)
          {
            *a4 = *(v52[0] + 40);
          }

          goto LABEL_33;
        }

        v20 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:v52 inStoreAtURL:? error:?];
        }
      }

      else
      {
        v20 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:v52 inStoreAtURL:? error:?];
        }
      }

      v13 = 0;
      if (a4)
      {
        *a4 = *(v52[0] + 40);
      }

LABEL_33:

      _Block_object_dispose(&v51, 8);
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:a2 inStoreAtURL:? error:?];
    }
  }

  v13 = 0;
LABEL_34:

  v39 = *MEMORY[0x1E69E9840];
  return v13;
}

- (uint64_t)updateDataAfterAutoMigrationToVersion:(void *)a3 inPersistentStore:(void *)a4 error:
{
  v47[3] = *MEMORY[0x1E69E9840];
  v35 = a3;
  if (!a1)
  {
LABEL_10:
    v25 = 0;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [&unk_1F05EF650 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStorage updateDataAfterAutoMigrationToVersion:a2 inPersistentStore:? error:?];
    }

    goto LABEL_10;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v8 = objc_alloc_init(_DKObjectFromMOCache);
  v9 = objc_alloc_init(_DKObject);
  v33 = [v35 persistentStoreCoordinator];
  v10 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  [v10 setPersistentStoreCoordinator:v33];
  [v10 setMergePolicy:*MEMORY[0x1E695D370]];
  [v10 setUndoManager:0];
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"metadata != NULL"];
  v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"value != NULL AND valueTypeCode == NULL"];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY objectAttributeValue != NULL"];
  v12 = MEMORY[0x1E696AB28];
  v47[0] = v32;
  v47[1] = v31;
  v30 = v11;
  v47[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v14 = [v12 orPredicateWithSubpredicates:v13];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __100___DKKnowledgeStorage_DataMigration__updateDataAfterAutoMigrationToVersion_inPersistentStore_error___block_invoke;
  v36[3] = &unk_1E736A6E8;
  v40 = &v41;
  v15 = v9;
  v37 = v15;
  v29 = v8;
  v38 = v29;
  v39 = a1;
  v16 = MEMORY[0x193B00C50](v36);
  LOBYTE(v28) = 1;
  v17 = [_DKCoreDataStorage updateObjectsInContext:v10 entityName:@"Object" predicate:v14 sortDescriptors:0 batchFetchLimit:1024 totalFetchLimit:0 includeSubentities:v28 updateBlock:v16];
  v18 = v17;
  if (a4)
  {
    v19 = v42[3];
    if (v17 != v19)
    {
      v20 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only able to convert %lu/%lu objects during v%lu migration.", v17, v19, a2];
      v46 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v23 = [v20 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:1 userInfo:v22];

      v24 = v23;
      *a4 = v23;
    }
  }

  if (a2 == 34)
  {
    v25 = [a1 migrateDataToBiomeWithManagedObjectContext:v10];
  }

  else
  {
    v25 = v18 == v42[3];
  }

  _Block_object_dispose(&v41, 8);
LABEL_13:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)initWithDirectory:(uint64_t)a3 readOnly:(int)a4 localOnly:
{
  v8 = a2;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = _DKKnowledgeStorage;
    a1 = objc_msgSendSuper2(&v32, sel_init);
    if (a1)
    {
      v9 = [[_CDMemoryUsageInterval alloc] initWithName:@"init" client:0];
      [(_CDMemoryUsageInterval *)v9 begin];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 pathForResource:@"_DKDataModel" ofType:@"momd"];

      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
      if (a3)
      {
        v13 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v31[0] = 0;
          _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "readOnly is true, forcing localOnly", v31, 2u);
        }
      }

      else if (!a4)
      {
        v15 = [[_DKCoreDataStorage alloc] initWithDirectory:v8 databaseName:@"knowledge" modelURL:v12 sync:0];
        v14 = 0;
        goto LABEL_10;
      }

      v14 = 1;
      v15 = [[_DKCoreDataStorage alloc] initWithDirectory:v8 databaseName:@"knowledge" modelURL:v12 readOnly:a3 localOnly:1];
LABEL_10:
      v16 = a1[12];
      a1[12] = v15;

      [a1[12] setDelegate:a1];
      [a1[12] setRequiresManualMigration:1];
      *(a1 + 9) = v14;
      objc_storeStrong(a1 + 5, a2);
      v17 = a1[6];
      a1[6] = v12;
      v18 = v12;

      v19 = +[_DKTombstonePolicy defaultPolicy];
      v20 = a1[10];
      a1[10] = v19;

      v21 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v22 = a1[7];
      a1[7] = v21;

      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_UTILITY, 0);

      v25 = dispatch_queue_create([@"com.apple.coreduet.knowledgestorage.execution" UTF8String], v24);
      v26 = a1[11];
      a1[11] = v25;

      v27 = dispatch_queue_create("com.apple.coreduet.knowledgestorage.response", v24);
      v28 = a1[4];
      a1[4] = v27;

      v29 = +[_DKKnowledgeStorageLogging sharedInstance];

      [a1 addKnowledgeStorageEventNotificationDelegate:v29];
      *(a1 + 8) = 1;
      [(_CDMemoryUsageInterval *)v9 end];
    }
  }

  return a1;
}

- (id)initWithShallowCopyFromStorage:(void *)a3 clientIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = _DKKnowledgeStorage;
    a1 = objc_msgSendSuper2(&v20, sel_init);
    if (a1)
    {
      v7 = [v5 storage];
      v8 = a1[12];
      a1[12] = v7;

      *(a1 + 9) = 1;
      if (v5)
      {
        objc_storeStrong(a1 + 5, v5[5]);
        v9 = v5[6];
      }

      else
      {
        v19 = a1[5];
        a1[5] = 0;

        v9 = 0;
      }

      objc_storeStrong(a1 + 6, v9);
      v10 = [v5 tombstonePolicy];
      v11 = a1[10];
      a1[10] = v10;

      if (v5)
      {
        v12 = v5[4];
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(a1 + 4, v12);
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);

      v15 = dispatch_queue_create([@"com.apple.coreduet.knowledgestorage.execution" UTF8String], v14);
      v16 = a1[11];
      a1[11] = v15;

      if (v5)
      {
        v17 = v5[7];
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong(a1 + 7, v17);
      objc_storeStrong(a1 + 9, a3);
      *(a1 + 8) = 1;
    }
  }

  return a1;
}

+ (_DKKnowledgeStorage)storageWithShallowCopyFromStorage:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_DKKnowledgeStorage *)[a1 alloc] initWithShallowCopyFromStorage:v7 clientIdentifier:v6];

  return v8;
}

- (id)syncStorageIfAvailable
{
  if (a1)
  {
    v2 = a1;
    if (a1[12])
    {
      if (*(a1 + 9))
      {
        goto LABEL_4;
      }

      if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
      {
        if (v2[2])
        {
          if (!+[_DKKnowledgeSyncStorageAssertion assertionCount])
          {
            [v2 closeSyncStorage];
          }
        }

        else
        {
          v7 = [v2 syncStorage];
          v8 = v2[2];
          v2[2] = v7;
        }

        a1 = v2[2];
        goto LABEL_8;
      }

      if (*(v2 + 9))
      {
LABEL_4:
        v3 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v11 = 0;
          v4 = "Unable to sync, local only store";
          v5 = &v11;
LABEL_22:
          _os_log_debug_impl(&dword_191750000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
        }
      }

      else
      {
        v3 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v10 = 0;
          v4 = "Unable to sync, sync is disabled";
          v5 = &v10;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v3 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = 0;
        v4 = "Unable to sync, local store not configured";
        v5 = &v9;
        goto LABEL_22;
      }
    }

    a1 = 0;
LABEL_8:
    v1 = vars8;
  }

  return a1;
}

- (id)removeBadObjects:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_45];
    v4 = [v2 mutableCopy];

    [OUTLINED_FUNCTION_23_2() removeObjectsAtIndexes:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nilArrayError
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:MEMORY[0x1E695E0F8]];
    v1 = vars8;
  }

  return a1;
}

- (id)errorForException:(uint64_t)a1
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v3 = [a2 reason];
    v4 = v3;
    v5 = @"Exception Caught";
    if (v3)
    {
      v5 = v3;
    }

    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v2 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:0 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_sendInsertEventsNotificationWithObjects:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    [(_DKKnowledgeStorage *)a1 _sendEventsNotificationName:v3 withObjects:?];
    v8 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
    v4 = [v3 filteredArrayUsingPredicate:v8];

    v5 = OUTLINED_FUNCTION_23_2();
    [(_DKKnowledgeStorage *)v5 _sendEventsNotificationName:v6 withObjects:v7];
  }
}

- (uint64_t)executionQueue
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (BOOL)_deleteObjects:(void *)a3 error:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a1)
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  dispatch_assert_queue_V2(*(a1 + 88));
  if (!v5)
  {
    if (a3)
    {
      [(_DKKnowledgeStorage *)a1 nilArrayError];
      *a3 = v6 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = [(_DKKnowledgeStorage *)a1 removeBadObjects:v5];
  v10 = [v9 count];
  if (v10 != [v5 count])
  {
    v11 = [v5 mutableCopy];
    [v11 removeObjectsInArray:v9];
    v12 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v51 = "[_DKKnowledgeStorage _deleteObjects:error:]";
      *&v51[8] = 2112;
      *&v51[10] = v11;
      _os_log_error_impl(&dword_191750000, v12, OS_LOG_TYPE_ERROR, "%s: found foreign objects: %@", buf, 0x16u);
    }
  }

  if ([v9 count])
  {
    v13 = [v9 valueForKey:@"UUID"];
    v14 = [v13 mutableCopy];

    v42 = [*(a1 + 96) managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(a1 + 72)];
    v15 = [MEMORY[0x1E695E0F0] mutableCopy];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v45 + 1) + 8 * i) UUIDString];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v18);
    }

    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v15];
    v23 = [[_CDMemoryUsageInterval alloc] initWithName:@"deleteObjects" client:0];
    [(_CDMemoryUsageInterval *)v23 begin];
    v24 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v5 count];
      *buf = 134217984;
      *v51 = v25;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "[Storage] Starting deleteObjects with %lu objects.", buf, 0xCu);
    }

    v40 = v23;
    if (_os_feature_enabled_impl())
    {
      v26 = [[_DKBiomeQuery alloc] initWithDeletionArray:v9];
      v27 = v26;
      if (v26)
      {
        v44 = 0;
        v28 = [(_DKBiomeQuery *)v26 executeDeletionQuery:&v44];
        v29 = v44;
        if (a3 && v29)
        {
          v29 = v29;
          *a3 = v29;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v39 = objc_autoreleasePoolPush();
    v30 = +[_DKObject entityName];
    LOBYTE(v38) = 1;
    v41 = v22;
    v31 = [_DKCoreDataStorage deleteObjectsInContext:v42 entityName:v30 predicate:v22 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v38];

    v6 = v31 >= [v16 count];
    if (v31 > [v16 count])
    {
      v32 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v16 count];
        *buf = 134218240;
        *v51 = v31;
        *&v51[8] = 2048;
        *&v51[10] = v37;
        _os_log_debug_impl(&dword_191750000, v32, OS_LOG_TYPE_DEBUG, "Duplicate objects detected during deletion: %lu deleted vs. %lu requested.", buf, 0x16u);
      }
    }

    v33 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = v31 >= [v16 count];
      *buf = 67109376;
      *v51 = v34;
      *&v51[4] = 2048;
      *&v51[6] = v31;
      _os_log_impl(&dword_191750000, v33, OS_LOG_TYPE_INFO, "[Storage] Completed deleteObjects with success=%d. Deleted: %lu.", buf, 0x12u);
    }

    if (v31 + v28)
    {
      v43 = 0;
      [(_DKKnowledgeStorage *)a1 _tombstoneObjects:v9 error:&v43];
      v35 = v43;
      [(_DKKnowledgeStorage *)a1 _sendEventsNotificationName:v9 withObjects:?];
    }

    else
    {
      v35 = 0;
    }

    objc_autoreleasePoolPop(v39);
    [(_CDMemoryUsageInterval *)v40 end];
    if (a3)
    {
      v36 = v35;
      *a3 = v35;
    }

    if (_os_feature_enabled_impl())
    {
      v6 = v28 >= [v16 count];
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_tombstoneObjects:(void *)a3 error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[11]);
    [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_632];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_13_3() filteredArrayUsingPredicate:?];
    v8 = [(dispatch_queue_t *)a1 tombstonePolicy];
    v36 = 0;
    v9 = [v8 tombstonesForEvents:v7 resultingFromRequirementsWithIdentifiers:&v36];
    v30 = v36;

    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    if (![v9 count])
    {
      goto LABEL_17;
    }

    v26 = v7;
    v27 = v3;
    v28 = a3;
    v29 = v6;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v32 + 1) + 8 * i) metadata];
          v17 = +[_DKTombstoneMetadataKey eventStreamName];
          v18 = [OUTLINED_FUNCTION_23_2() objectForKeyedSubscript:?];

          if (v18)
          {
            [v10 addObject:v18];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v13);
    }

    v31 = 0;
    [(_DKKnowledgeStorage *)a1 _saveObjects:v11 error:&v31];
    v19 = v31;
    a3 = v28;
    v6 = v29;
    v7 = v26;
    v3 = v27;
    if (v19)
    {
      v20 = v19;
      v21 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v25 = [v11 count];
        *buf = 134218242;
        v38 = v25;
        v39 = 2112;
        v40 = v20;
        _os_log_error_impl(&dword_191750000, v21, OS_LOG_TYPE_ERROR, "Error saving %lu tombstones: %@", buf, 0x16u);
      }

      v22 = v30;
      if (!v28)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_17:
      [(_DKKnowledgeStorage *)a1 _sendTombstoneNotificationsWithStreamNameCounts:v10];
      v22 = v30;
      if ([v30 count])
      {
        [_DKTombstoneNotifier sendDistributedNotificationsForTombstoneRequirementIdentifiers:v30 queue:a1[11]];
      }

      v20 = 0;
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    v23 = v20;
    *a3 = v20;
LABEL_21:
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (dispatch_queue_t)_deleteAllEventsMatchingPredicate:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[11]);
    if (_os_feature_enabled_impl() && !+[_DKBiomeQuery shimDisabled])
    {
      v7 = [[_DKBiomeQuery alloc] initWithDeletionPredicate:v5];
      v8 = v7;
      if (v7)
      {
        v13 = 0;
        v6 = [(_DKBiomeQuery *)v7 executeDeletionQuery:&v13];
        v9 = v13;
        if (a3 && v9)
        {
          v9 = v9;
          *a3 = v9;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v10 = [(_DKKnowledgeStorage *)a1 _tombstoneObjectsMatchingPredicate:v5 batchSize:256 error:a3];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v10];
    a1 = ([(dispatch_queue_t *)a1 deleteEventsMatchingPredicate:v11 limit:0]+ v6);
  }

  return a1;
}

- (BOOL)deleteKnowledgeStream:(void *)a3 context:(uint64_t)a4 expectedEventCount:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v8 = a3;
    v9 = [v7 name];
    v10 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamName:v9];

    v11 = +[_DKEvent entityName];
    LOBYTE(v17) = 1;
    v12 = [_DKCoreDataStorage deleteObjectsInContext:v8 entityName:v11 predicate:v10 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:0 includePendingChanges:v17];

    a1 = v12 == a4;
    if (v12 != a4)
    {
      v13 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 name];
        *buf = 136446722;
        v19 = [v14 UTF8String];
        v20 = 2048;
        v21 = a4;
        v22 = 2048;
        v23 = v12;
        _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected number of events deleted after Biome migration of stream: %{public}s expected: %lu deleted: %lu", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

- (uint64_t)migrateStream:(void *)a3 context:
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v54 = a3;
  if (a1)
  {
    v6 = [v5 name];
    v7 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:v6 contentProtection:*MEMORY[0x1E696A388]];
    if (v7)
    {
      if ([(_DKKnowledgeStorage *)a1 biomeStreamContainsEntries:v7])
      {
        v8 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v5 name];
          OUTLINED_FUNCTION_22_2(v9, 5.8381e-34);
          _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "Skipping migration of Biome stream since entries already exist, stream %{public}@", buf, 0xCu);
        }

        a1 = 1;
      }

      else
      {
        v10 = [_CDEventStreams eventStreamPropertiesForEventStream:v5];
        v11 = v10;
        v12 = 2419200.0;
        v53 = v7;
        if (v10)
        {
          [v10 timeToLive];
          if (v13 > 0.0)
          {
            [v11 timeToLive];
            v12 = v14;
          }
        }

        v52 = a1;
        v49 = v11;
        v50 = v6;
        v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v12];
        v16 = [MEMORY[0x1E695DF00] distantFuture];
        v17 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v5 name];
          OUTLINED_FUNCTION_22_2(v18, 5.8382e-34);
          v62 = 2114;
          v63 = v15;
          OUTLINED_FUNCTION_27_1(&dword_191750000, v19, v20, "Migrating events to Biome from stream %{public}@ since %{public}@");
        }

        v51 = v5;
        v21 = [v5 name];
        v59 = v21;
        v22 = 1;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        objc_claimAutoreleasedReturnValue();
        v23 = [OUTLINED_FUNCTION_13_3() predicateForEventsWithStreamNames:?];

        v47 = v16;
        v48 = v15;
        v45 = [_DKQuery predicateForEventsBetweenStartDate:v15 endDate:v16];
        v46 = v23;
        v58[0] = v23;
        v58[1] = v45;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        v25 = [OUTLINED_FUNCTION_23_2() andPredicateWithSubpredicates:?];

        v26 = [_DKQuery creationDateSortDescriptorAscending:1];
        v57 = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];

        v28 = 0;
        v55 = 0;
        v56 = 0;
        do
        {
          v29 = objc_autoreleasePoolPush();
          v30 = objc_alloc_init(MEMORY[0x1E695D5E0]);
          +[_DKEvent entityName];
          objc_claimAutoreleasedReturnValue();
          v31 = [OUTLINED_FUNCTION_13_3() entityForName:? inManagedObjectContext:?];
          [v30 setEntity:v31];

          [v30 setFetchLimit:500];
          [v30 setFetchOffset:v56];
          [v30 setPredicate:v25];
          [v30 setSortDescriptors:v27];
          v32 = objc_alloc_init(_DKObjectMOConverter);
          [(_DKObjectMOConverter *)v32 setReadMetadata:1];
          [(_DKObjectMOConverter *)v32 setDeduplicateValues:1];
          v33 = [(_DKKnowledgeStorage *)v52 migrateEventBatchToBiomeStream:v53 fetchRequest:v30 managedObjectContex:v54 converter:v32 eventCount:&v55 offset:&v56];
          v34 = v55;
          if (!v33)
          {
            v6 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v44 = [v51 name];
              OUTLINED_FUNCTION_22_2(v44, 5.8382e-34);
              v62 = 2048;
              v63 = v35;
              _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "Error migrating event batch for stream: %{public}@ offset: %lu", buf, 0x16u);
            }
          }

          v28 += v34;
          v22 &= v33;

          objc_autoreleasePoolPop(v29);
        }

        while (v34 == 500);
        v36 = +[_CDLogging knowledgeChannel];
        v5 = v51;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v51 name];
          *buf = 134218242;
          v61 = v28;
          v62 = 2114;
          v63 = v37;
          OUTLINED_FUNCTION_27_1(&dword_191750000, v38, v39, "Migrated %lu events to Biome from stream %{public}@");
        }

        v7 = v53;
        a1 = v22 & [(_DKKnowledgeStorage *)v52 verifyBiomeMigration:v53 expectedEventCount:v28];
        v6 = v50;
        if (*(v52 + 8) == 1)
        {
          a1 = a1 & [(_DKKnowledgeStorage *)v52 deleteKnowledgeStream:v51 context:v54 expectedEventCount:v28];
        }

        v8 = v49;
      }
    }

    else
    {
      v8 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v42 = [v5 name];
        OUTLINED_FUNCTION_22_2(v42, 5.8381e-34);
        OUTLINED_FUNCTION_10(&dword_191750000, v8, v43, "Unexpected nil Biome stream encountered during migration of stream %{public}@", buf);
      }

      a1 = 0;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)_requestForChangeSinceDate:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v3 = [NSClassFromString(&cfstr_Nspersistenthi.isa) performSelector:sel_fetchHistoryAfterDate_ withObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_saveObjects:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneObjectsMatchingPredicate:(uint64_t)a1 batchSize:error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)migrateEventBatchToBiomeStream:(NSObject *)a3 fetchRequest:managedObjectContex:converter:eventCount:offset:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_10(&dword_191750000, a3, a3, "Query error encountered while attempting to migrate stream %{public}@ to Biome", a2);
}

- (void)migrateDataToBiomeWithManagedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)coreDataStorage:(uint64_t)a1 willAutoMigrateStoreAtURL:(uint64_t)a2 fromManagedObjectModel:havingVersion:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKKnowledgeStorage finalMigrationVersion](a2)];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)coreDataStorage:(uint64_t)a1 didAutoMigratePersistentStore:(uint64_t)a2 toManagedObjectModel:havingVersion:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKKnowledgeStorage finalMigrationVersion](a2)];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchLocalChangesSinceDate:error:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)lastSequenceNumberForChangeSetWithEntityName:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startSyncDownFromCloudWithResponseQueue:(uint64_t)a1 withCompletion:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startSyncUpToCloudWithResponseQueue:(uint64_t)a1 withCompletion:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setKeyValueObject:(void *)a3 forKey:(void *)a4 domain:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    [MEMORY[0x1E696AE90] allowedTopLevelClasses];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v27 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          if (objc_opt_isKindOfClass())
          {

            v17 = [(_DKKnowledgeStorage *)a1 executionQueue];
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke;
            v20[3] = &unk_1E736A018;
            v20[4] = a1;
            v21 = v9;
            v22 = v8;
            v23 = v7;
            dispatch_sync(v17, v20);

            goto LABEL_14;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v19 = objc_opt_class();
      *buf = 138412546;
      v29 = v19;
      v30 = 2112;
      v31 = v10;
      _os_log_fault_impl(&dword_191750000, v16, OS_LOG_TYPE_FAULT, "Attempt to set value of class %@ in key-value store is unsupported. Supported classes: %@", buf, 0x16u);
    }

LABEL_14:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeKeyValueObjectForKey:(void *)a3 domain:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ && key == %@", v6, v5];
    v8 = [(_DKKnowledgeStorage *)a1 executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___DKKnowledgeStorage__DKKeyValueStore__removeKeyValueObjectForKey_domain___block_invoke;
    block[3] = &unk_1E736A018;
    block[4] = a1;
    v11 = v7;
    v12 = v5;
    v13 = v6;
    v9 = v7;
    dispatch_sync(v8, block);
  }
}

- (void)updateToFinalMetadata:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (qword_1EADBD620 != -1)
    {
      dispatch_once(&qword_1EADBD620, &__block_literal_global_74);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = _MergedGlobals_4;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v3 objectForKeyedSubscript:{v9, v14}];

          if (v10)
          {
            v11 = [v3 objectForKeyedSubscript:v9];
            v12 = [_MergedGlobals_4 objectForKeyedSubscript:v9];
            [v3 setObject:v11 forKeyedSubscript:v12];

            [v3 removeObjectForKey:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [v3 removeObjectsForKeys:qword_1EADBD618];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)versionsRequiringManualSetup
{
  if (a1)
  {
    v1 = [MEMORY[0x1E695DF70] arrayWithCapacity:28];
    v2 = 0;
    do
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      [v1 addObject:v3];

      v2 = (v2 + 1);
    }

    while (v2 != 28);
    v4 = [v1 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)copyValueToManagedObject:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [v4 valueForKey:@"value"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setValueClass:1];
          v6 = v5;
          v7 = [v6 string];
          [v4 setValueString:v7];

          v8 = [v6 identifierType];
          v9 = v4;
          v10 = v8;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 setValueClass:2];
            v11 = [v5 categoryType];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v4 setValueClass:0];
              goto LABEL_12;
            }

            [v4 setValueClass:3];
            v11 = [v5 quantityType];
          }

          v10 = v11;
          v9 = v4;
        }

        [v9 setValueTypeCode:v10];
      }

LABEL_12:
    }
  }

  return a1 != 0;
}

- (void)updateDataBeforeAutoMigrationFromVersion:(uint64_t)a1 inStoreAtURL:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, MEMORY[0x1E69E9C10], v2, "Pre-migration update called at unexpected version: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateDataBeforeAutoMigrationFromVersion:inStoreAtURL:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Attempting to remove persistent history from store: %@", v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

- (void)updateDataBeforeAutoMigrationFromVersion:(uint64_t)a1 inStoreAtURL:error:.cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, MEMORY[0x1E69E9C10], v1, "Failed to remove persistent history from store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateDataBeforeAutoMigrationFromVersion:(uint64_t)a1 inStoreAtURL:error:.cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v1, v2, "Failed to create persistent store coordinator: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateDataBeforeAutoMigrationFromVersion:(uint64_t)a1 inStoreAtURL:error:.cold.6(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v1, v2, "Failed to delete duplicate events: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateDataBeforeAutoMigrationFromVersion:(void *)a1 inStoreAtURL:(uint8_t *)buf error:(os_log_t)log .cold.8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_191750000, log, OS_LOG_TYPE_DEFAULT, "Deleted %@ objects with duplicate UUIDs.", buf, 0xCu);
}

- (void)updateDataAfterAutoMigrationToVersion:(uint64_t)a1 inPersistentStore:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, MEMORY[0x1E69E9C10], v2, "Migration called at unexpected version: %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

@end