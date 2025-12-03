@interface _DKKnowledgeStorage
+ (_DKKnowledgeStorage)storageWithShallowCopyFromStorage:(id)storage clientIdentifier:(id)identifier;
+ (id)sourceDeviceIdentityFromDeviceID:(uint64_t)d;
+ (id)sourceDeviceIdentityFromObject:(id)object;
- (BOOL)_deleteObjects:(void *)objects error:;
- (BOOL)copyValueToManagedObject:(uint64_t)object;
- (BOOL)coreDataStorage:(id)storage didAutoMigratePersistentStore:(id)store toManagedObjectModel:(id)model havingVersion:(unint64_t)version error:(id *)error;
- (BOOL)coreDataStorage:(id)storage shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:(unint64_t)version;
- (BOOL)coreDataStorage:(id)storage shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:(unint64_t)version;
- (BOOL)coreDataStorage:(id)storage willAutoMigrateStoreAtURL:(id)l fromManagedObjectModel:(id)model havingVersion:(unint64_t)version error:(id *)error;
- (BOOL)deleteKnowledgeStream:(void *)stream context:(uint64_t)context expectedEventCount:;
- (BOOL)deleteObjects:(id)objects error:(id *)error;
- (BOOL)deleteSyncStorage;
- (BOOL)migrateDataToBiomeWithManagedObjectContext:(id)context;
- (BOOL)migrateEventBatchToBiomeStream:(void *)stream fetchRequest:(void *)request managedObjectContex:(void *)contex converter:(void *)converter eventCount:(void *)count offset:;
- (BOOL)saveChangeSetsForSync:(id)sync error:(id *)error;
- (BOOL)saveObjects:(id)objects error:(id *)error;
- (BOOL)saveSyncPeer:(id)peer error:(id *)error;
- (BOOL)updateDataBeforeAutoMigrationFromVersion:(void *)version inStoreAtURL:(void *)l error:;
- (BOOL)verifyBiomeMigration:(uint64_t)migration expectedEventCount:;
- (NSUUID)deviceUUID;
- (_DKCoreDataStorage)syncStorage;
- (dispatch_queue_t)_deleteAllEventsMatchingPredicate:(void *)predicate error:;
- (dispatch_queue_t)_executeQuery:(void *)query error:;
- (dispatch_queue_t)_tombstoneObjectsMatchingPredicate:(uint64_t)predicate batchSize:(void *)size error:;
- (id)_requestForChangeSinceDate:(uint64_t)date;
- (id)coreDataStorage:(id)storage needsManagedObjectModelNameForVersion:(unint64_t)version;
- (id)errorForException:(uint64_t)exception;
- (id)eventCountPerStreamName;
- (id)eventCountsForStreams:(id)streams;
- (id)executeQuery:(id)query error:(id *)error;
- (id)fetchLocalChangesSinceDate:(id)date error:(id *)error;
- (id)fetchSyncChangesSinceDate:(id)date error:(id *)error;
- (id)initWithDirectory:(uint64_t)directory readOnly:(int)only localOnly:;
- (id)initWithShallowCopyFromStorage:(void *)storage clientIdentifier:;
- (id)keyValueObjectForKey:(void *)key domain:;
- (id)keyValueStoreForDomain:(id)domain;
- (id)lastChangeSetWithEntityName:(id)name error:(id *)error;
- (id)migrationStreamsWithMOC:(uint64_t)c;
- (id)nilArrayError;
- (id)removeBadObjects:(uint64_t)objects;
- (id)sourceDeviceIdentity;
- (id)syncPeersWithError:(id *)error;
- (id)syncStorageAssertion;
- (id)syncStorageIfAvailable;
- (id)versionsRequiringManualSetup;
- (uint64_t)_saveObjects:(void *)objects error:;
- (uint64_t)biomeStreamContainsEntries:(uint64_t)entries;
- (uint64_t)executionQueue;
- (uint64_t)finalMigrationVersion;
- (uint64_t)migrateStream:(void *)stream context:;
- (uint64_t)updateDataAfterAutoMigrationToVersion:(void *)version inPersistentStore:(void *)store error:;
- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error;
- (unint64_t)deleteEventsMatchingPredicate:(id)predicate limit:(unint64_t)limit;
- (unint64_t)deleteEventsStartingEarlierThanDate:(id)date limit:(unint64_t)limit;
- (unint64_t)deleteHistogram:(id)histogram;
- (unint64_t)deleteObjectsInEventStream:(id)stream ifNeededToLimitEventCount:(unint64_t)count batchLimit:(unint64_t)limit;
- (unint64_t)deleteObjectsInEventStreams:(id)streams olderThanDate:(id)date limit:(unint64_t)limit;
- (unint64_t)deleteObjectsOlderThanDate:(id)date excludingPredicate:(id)predicate limit:(unint64_t)limit;
- (unint64_t)deleteOldObjectsIfNeededToLimitTotalNumber:(unint64_t)number excludingPredicate:(id)predicate limit:(unint64_t)limit;
- (unint64_t)deleteOrphanedEntities;
- (unint64_t)eventCount;
- (unint64_t)lastSequenceNumberForChangeSetWithEntityName:(id)name error:(id *)error;
- (unint64_t)totalEventCountForStreams:(id)streams;
- (void)_databaseChangedWithNotification:(id)notification;
- (void)_sendEventsNotificationName:(void *)name withObjects:;
- (void)_sendInsertEventsNotificationWithObjects:(uint64_t)objects;
- (void)_sendTombstoneNotificationsWithStreamNameCounts:(uint64_t)counts;
- (void)_tombstoneObjects:(void *)objects error:;
- (void)addKnowledgeStorageEventNotificationDelegate:(id)delegate;
- (void)closeStorage;
- (void)closeSyncStorage;
- (void)configureDeviceUUID;
- (void)dealloc;
- (void)decrementInsertsAndDeletesObserverCount;
- (void)deleteAllEventsInEventStream:(id)stream responseQueue:(id)queue withCompletion:(id)completion;
- (void)deleteAllEventsMatchingPredicate:(id)predicate responseQueue:(id)queue withCompletion:(id)completion;
- (void)deleteObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion;
- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion;
- (void)incrementInsertsAndDeletesObserverCount;
- (void)removeKeyValueObjectForKey:(void *)key domain:;
- (void)removeKnowledgeStorageEventNotificationDelegate:(id)delegate;
- (void)removeSyncPeer:(id)peer;
- (void)saveHistogram:(id)histogram responseQueue:(id)queue withCompletion:(id)completion;
- (void)saveObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion;
- (void)saveObjects:(id)objects tracker:(id)tracker responseQueue:(id)queue withCompletion:(id)completion;
- (void)setKeyValueObject:(void *)object forKey:(void *)key domain:;
- (void)startSyncDownFromCloudWithResponseQueue:(id)queue withCompletion:(id)completion;
- (void)startSyncUpToCloudWithResponseQueue:(id)queue withCompletion:(id)completion;
- (void)updateToFinalMetadata:(uint64_t)metadata;
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
  syncStorage = [(_DKKnowledgeStorage *)self syncStorage];
  v3 = syncStorage;
  if (syncStorage)
  {
    v4 = [syncStorage deleteStorageFor:*MEMORY[0x1E696A388]];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addKnowledgeStorageEventNotificationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_knowledgeStorageEventNotificationDelegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_knowledgeStorageEventNotificationDelegates addObject:delegateCopy];
  objc_sync_exit(v4);
}

- (void)removeKnowledgeStorageEventNotificationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_knowledgeStorageEventNotificationDelegates;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_knowledgeStorageEventNotificationDelegates removeObject:delegateCopy];
  objc_sync_exit(v4);
}

- (void)_sendEventsNotificationName:(void *)name withObjects:
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  nameCopy = name;
  selfCopy = self;
  if (self)
  {
    v7 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = nameCopy;
    v8 = nameCopy;
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
            stream = [v13 stream];
            name = [stream name];

            if (name)
            {
              [v7 addObject:name];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      v33 = *(selfCopy + 56);
      objc_sync_enter(v33);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = *(selfCopy + 56);
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

            v20 = *(selfCopy + 32);
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke;
            v41[3] = &unk_1E7367A48;
            v41[4] = v19;
            v41[5] = selfCopy;
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

            v26 = *(selfCopy + 32);
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke_2;
            v39[3] = &unk_1E7367A48;
            v39[4] = v19;
            v39[5] = selfCopy;
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
            v29 = *(selfCopy + 32);
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __63___DKKnowledgeStorage__sendEventsNotificationName_withObjects___block_invoke_3;
            v37[3] = &unk_1E7367A48;
            v37[4] = v19;
            v37[5] = selfCopy;
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

    nameCopy = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_sendTombstoneNotificationsWithStreamNameCounts:(uint64_t)counts
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (counts && v3 && [v3 count])
  {
    v15 = *(counts + 56);
    objc_sync_enter(v15);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(counts + 56);
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
            v9 = *(counts + 32);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __71___DKKnowledgeStorage__sendTombstoneNotificationsWithStreamNameCounts___block_invoke;
            v17[3] = &unk_1E7367A48;
            v17[4] = v8;
            v17[5] = counts;
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

- (void)saveObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion
{
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64___DKKnowledgeStorage_saveObjects_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = objectsCopy;
  v22 = completionCopy;
  v20 = queueCopy;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = objectsCopy;
  dispatch_async(executionQueue, block);
}

- (uint64_t)_saveObjects:(void *)objects error:
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 88));
    if (v5)
    {
      v6 = [(_DKKnowledgeStorage *)self removeBadObjects:v5];
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
        if (objects)
        {
          *objects = 0;
        }

        LOBYTE(self) = 1;
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
      lastObject = [v10 lastObject];
      if (lastObject)
      {
        lastObject2 = [v10 lastObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v20 = @"unknown";
LABEL_23:

          goto LABEL_24;
        }

        lastObject3 = [v10 lastObject];
        stream = [lastObject3 stream];
        name = [stream name];
        v16 = name == 0;

        if (!v16)
        {
          lastObject4 = [v10 lastObject];
          stream2 = [lastObject4 stream];
          lastObject = [stream2 name];

          if ([v10 count] < 2)
          {
            v19 = lastObject;
          }

          else
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ +more...", lastObject];
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

      v24 = [*(self + 96) managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(self + 72)];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __42___DKKnowledgeStorage__saveObjects_error___block_invoke;
      v32[3] = &unk_1E7369140;
      v33 = v6;
      v25 = v24;
      v36 = &v38;
      v37 = &v44;
      v34 = v25;
      selfCopy = self;
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
      if (objects)
      {
        *objects = v39[5];
      }

      LOBYTE(self) = *(v45 + 24);

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v44, 8);
LABEL_31:

      goto LABEL_32;
    }

    if (objects)
    {
      [(_DKKnowledgeStorage *)self nilArrayError];
      *objects = LOBYTE(self) = 0;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

LABEL_32:

  v29 = *MEMORY[0x1E69E9840];
  return self & 1;
}

- (void)saveObjects:(id)objects tracker:(id)tracker responseQueue:(id)queue withCompletion:(id)completion
{
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  trackerCopy = tracker;
  v14 = os_transaction_create();
  v15 = MEMORY[0x193B00C50](trackerCopy);

  executionQueue = self->_executionQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72___DKKnowledgeStorage_saveObjects_tracker_responseQueue_withCompletion___block_invoke;
  v22[3] = &unk_1E73690F0;
  v22[4] = self;
  v23 = objectsCopy;
  v26 = v15;
  v27 = completionCopy;
  v24 = queueCopy;
  v25 = v14;
  v17 = v14;
  v18 = queueCopy;
  v19 = completionCopy;
  v20 = objectsCopy;
  v21 = v15;
  dispatch_async(executionQueue, v22);
}

- (BOOL)saveObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
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
  v8 = objectsCopy;
  v12 = v8;
  v14 = &v19;
  dispatch_sync(executionQueue, v11);
  if (error)
  {
    *error = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)deleteObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion
{
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66___DKKnowledgeStorage_deleteObjects_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = objectsCopy;
  v22 = completionCopy;
  v20 = queueCopy;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = objectsCopy;
  dispatch_async(executionQueue, block);
}

- (BOOL)deleteObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
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
  v8 = objectsCopy;
  v12 = v8;
  v14 = &v19;
  dispatch_sync(executionQueue, v11);
  if (error)
  {
    *error = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (dispatch_queue_t)_tombstoneObjectsMatchingPredicate:(uint64_t)predicate batchSize:(void *)size error:
{
  sizeCopy = size;
  v76[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(self[11]);
    if (v6)
    {
      predicateCopy = predicate;
      v35 = v6;
      selfCopy = self;
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
      storage = [(dispatch_queue_t *)selfCopy storage];
      v31 = [storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:selfCopy[9]];

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
        v55 = predicateCopy;
        v29 = v33;
        v46 = v29;
        v47 = selfCopy;
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

                metadata = [*(*(&v40 + 1) + 8 * i) metadata];
                v17 = +[_DKTombstoneMetadataKey eventStreamName];
                v18 = [metadata objectForKeyedSubscript:v17];

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
          [(_DKKnowledgeStorage *)selfCopy _saveObjects:v19 error:&obj];
          objc_storeStrong(v20, obj);
        }

        v21 = v57[5];
        if (v21 && [v21 count])
        {
          allObjects = [v57[5] allObjects];
          [v28 addObjectsFromArray:allObjects];
        }

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v62, 8);

        objc_autoreleasePoolPop(context);
        v23 = *(v73[0] + 40);
        if (v69[3] != predicateCopy)
        {
          break;
        }

        v10 += predicateCopy;
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

      [(_DKKnowledgeStorage *)selfCopy _sendTombstoneNotificationsWithStreamNameCounts:v8];
      if (![v28 count])
      {
        goto LABEL_28;
      }

      v24 = [v28 copy];
      [_DKTombstoneNotifier sendDistributedNotificationsForTombstoneRequirementIdentifiers:v24 queue:selfCopy[11]];
LABEL_27:

LABEL_28:
      if (sizeCopy)
      {
        *sizeCopy = *(v73[0] + 40);
      }

      self = [v34 copy];

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v72, 8);

      v6 = v35;
    }

    else
    {
      self = MEMORY[0x1E695E0F0];
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return self;
}

- (void)deleteAllEventsInEventStream:(id)stream responseQueue:(id)queue withCompletion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  name = [stream name];
  v10 = [_DKQuery predicateForEventsWithStreamName:name];
  [(_DKKnowledgeStorage *)self deleteAllEventsMatchingPredicate:v10 responseQueue:queueCopy withCompletion:completionCopy];
}

- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error
{
  name = [stream name];
  v7 = [_DKQuery predicateForEventsWithStreamName:name];
  v8 = [(_DKKnowledgeStorage *)self deleteAllEventsMatchingPredicate:v7 error:error];

  return v8;
}

- (void)deleteAllEventsMatchingPredicate:(id)predicate responseQueue:(id)queue withCompletion:(id)completion
{
  predicateCopy = predicate;
  queueCopy = queue;
  completionCopy = completion;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85___DKKnowledgeStorage_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = predicateCopy;
  v22 = completionCopy;
  v20 = queueCopy;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = predicateCopy;
  dispatch_async(executionQueue, block);
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  v8 = predicateCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(executionQueue, v11);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion
{
  queryCopy = query;
  queueCopy = queue;
  completionCopy = completion;
  v11 = os_transaction_create();
  executionQueue = self->_executionQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65___DKKnowledgeStorage_executeQuery_responseQueue_withCompletion___block_invoke;
  v18[3] = &unk_1E73690C8;
  v18[4] = self;
  v19 = queryCopy;
  v22 = completionCopy;
  v20 = queueCopy;
  v21 = v11;
  v13 = v21;
  v14 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_5;
  block[3] = &unk_1E7367818;
  v24 = v13;
  v25 = v14;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = queryCopy;
  dispatch_async(executionQueue, block);
}

- (dispatch_queue_t)_executeQuery:(void *)query error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (([v5 executeConcurrently] & 1) == 0)
    {
      dispatch_assert_queue_V2(self[11]);
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
      selfCopy = self;
      v20 = &v23;
      v21 = v29;
      queryCopy = query;
      v9 = MEMORY[0x193B00C50](&v13);
      tracker = [v8 tracker];

      if (tracker)
      {
        tracker2 = [v8 tracker];
        (tracker2)[2](tracker2, v9);
      }

      else
      {
        v9[2](v9);
      }

      self = v24[5];

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(v29, 8);
    }

    else if (query)
    {
      +[_DKQuery queryNotExecutableError];
      *query = self = 0;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)executeQuery:(id)query error:(id *)error
{
  queryCopy = query;
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
  v7 = queryCopy;
  v13 = v7;
  v16 = &v27;
  v8 = MEMORY[0x193B00C50](v12);
  p_executionQueue = &self->_executionQueue;
  if (dispatch_get_specific(p_executionQueue) == p_executionQueue || [v7 executeConcurrently])
  {
    *(v18 + 24) = 0;
    v8[2](v8);
    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v18 + 24) = 1;
  dispatch_sync(*p_executionQueue, v8);
  if (error)
  {
LABEL_4:
    *error = v28[5];
  }

LABEL_5:
  v10 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v10;
}

- (unint64_t)deleteObjectsOlderThanDate:(id)date excludingPredicate:(id)predicate limit:(unint64_t)limit
{
  v23[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  date = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@", date];
  if (predicateCopy)
  {
    v10 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:predicateCopy];

    v11 = MEMORY[0x1E696AB28];
    v23[0] = date;
    v23[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    date = v13;
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
  v18 = [_DKCoreDataStorage deleteObjectsInContext:v15 entityName:v16 predicate:date sortDescriptors:v17 fetchLimit:limit includeSubentities:0 includePendingChanges:v21];

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)deleteEventsStartingEarlierThanDate:(id)date limit:(unint64_t)limit
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  dateCopy = date;
  v8 = [v6 sortDescriptorWithKey:@"startDate" ascending:1];
  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v10 = +[_DKEvent entityName];
  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate < %@", dateCopy];

  v17[0] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOBYTE(v16) = 0;
  v13 = [_DKCoreDataStorage deleteObjectsInContext:v9 entityName:v10 predicate:dateCopy sortDescriptors:v12 fetchLimit:limit includeSubentities:0 includePendingChanges:v16];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)deleteEventsMatchingPredicate:(id)predicate limit:(unint64_t)limit
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  predicateCopy = predicate;
  v8 = [v6 sortDescriptorWithKey:@"startDate" ascending:1];
  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v10 = +[_DKEvent entityName];
  v16[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  LOBYTE(v15) = 0;
  v12 = [_DKCoreDataStorage deleteObjectsInContext:v9 entityName:v10 predicate:predicateCopy sortDescriptors:v11 fetchLimit:limit includeSubentities:0 includePendingChanges:v15];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)deleteOldObjectsIfNeededToLimitTotalNumber:(unint64_t)number excludingPredicate:(id)predicate limit:(unint64_t)limit
{
  v19[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  if (predicateCopy)
  {
    v10 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:predicateCopy];

    v9 = v10;
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v12 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v13 = +[_DKEvent entityName];
  v19[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  LOWORD(v18) = 0;
  v15 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:number context:v12 entityName:v13 predicate:v9 sortDescriptors:v14 fetchLimit:limit includeSubentities:v18 includePendingChanges:?];

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

- (unint64_t)totalEventCountForStreams:(id)streams
{
  v24 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(streamsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = streamsCopy;
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

  allObjects = [v5 allObjects];
  v13 = [_DKEventQuery eventQueryWithPredicate:0 eventStreams:allObjects offset:0 limit:0 sortDescriptors:0];

  [v13 setResultType:1];
  v14 = [(_DKKnowledgeStorage *)self executeQuery:v13 error:0];
  firstObject = [v14 firstObject];

  unsignedIntegerValue = [firstObject unsignedIntegerValue];
  v17 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
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

- (id)eventCountsForStreams:(id)streams
{
  v23 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(streamsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = streamsCopy;
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

- (unint64_t)deleteObjectsInEventStreams:(id)streams olderThanDate:(id)date limit:(unint64_t)limit
{
  v35[2] = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  dateCopy = date;
  if (streamsCopy && ([streamsCopy isEqual:MEMORY[0x1E695E0F0]] & 1) == 0)
  {
    v11 = [_DKQuery predicateForEventsWithStreamNames:streamsCopy];
    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@ OR startDate < %@", dateCopy, dateCopy];
    v13 = MEMORY[0x1E696AB28];
    v27 = v11;
    v35[0] = v11;
    v35[1] = dateCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      predicateFormat = [v11 predicateFormat];
      predicateFormat2 = [dateCopy predicateFormat];
      [v15 predicateFormat];
      *buf = 138412802;
      v30 = predicateFormat;
      v31 = 2112;
      v32 = predicateFormat2;
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
    v10 = [_DKCoreDataStorage deleteObjectsInContext:v18 entityName:v19 predicate:v15 sortDescriptors:v20 fetchLimit:limit includeSubentities:0 includePendingChanges:v25];
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)deleteObjectsInEventStream:(id)stream ifNeededToLimitEventCount:(unint64_t)count batchLimit:(unint64_t)limit
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = [_DKQuery predicateForEventsWithStreamName:stream];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v10 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
  v11 = +[_DKEvent entityName];
  v17[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOWORD(v16) = 0;
  v13 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:count context:v10 entityName:v11 predicate:v8 sortDescriptors:v12 fetchLimit:limit includeSubentities:v16 includePendingChanges:?];

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

- (id)migrationStreamsWithMOC:(uint64_t)c
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (c)
  {
    v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Event"];
    v5 = [MEMORY[0x1E695D5B8] entityForName:@"Event" inManagedObjectContext:v3];
    [v4 setResultType:2];
    propertiesByName = [v5 propertiesByName];
    v7 = [propertiesByName objectForKey:@"streamName"];
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

- (BOOL)migrateEventBatchToBiomeStream:(void *)stream fetchRequest:(void *)request managedObjectContex:(void *)contex converter:(void *)converter eventCount:(void *)count offset:
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = a2;
  streamCopy = stream;
  requestCopy = request;
  contexCopy = contex;
  v32 = streamCopy;
  v33 = requestCopy;
  if (self)
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
    v39 = requestCopy;
    v17 = streamCopy;
    v40 = v17;
    v42 = &v50;
    v43 = &v44;
    v41 = contexCopy;
    [v39 performBlockAndWait:v38];
    *converter = [v45[5] count];
    *count += [v17 fetchLimit];
    v18 = v51[5];
    v31 = v18 == 0;
    if (v18)
    {
      v19 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        identifier = [v13 identifier];
        [_DKKnowledgeStorage migrateEventBatchToBiomeStream:identifier fetchRequest:v57 managedObjectContex:v19 converter:? eventCount:? offset:?];
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
            creationDate = [v24 creationDate];
            source = [v13 source];
            [creationDate timeIntervalSinceReferenceDate];
            [source sendEvent:v26 timestamp:?];

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

- (BOOL)verifyBiomeMigration:(uint64_t)migration expectedEventCount:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
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
    self = v9 == migration;
    if (v9 != migration)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        identifier = [v6 identifier];
        v14 = identifier;
        uTF8String = [identifier UTF8String];
        v16 = v19[3];
        *buf = 136446722;
        v23 = uTF8String;
        v24 = 2048;
        v25 = v16;
        v26 = 2048;
        migrationCopy = migration;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Unexpected mismatch in Biome stream event count encountered during migration of stream %{public}s Biome count: %lu CD count: %lu", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return self;
}

- (uint64_t)biomeStreamContainsEntries:(uint64_t)entries
{
  v3 = a2;
  v4 = v3;
  if (entries)
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

- (BOOL)migrateDataToBiomeWithManagedObjectContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (contextCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(_DKKnowledgeStorage *)self migrationStreamsWithMOC:contextCopy];
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

          v9 &= [(_DKKnowledgeStorage *)self migrateStream:contextCopy context:?];
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

- (BOOL)coreDataStorage:(id)storage shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:(unint64_t)version
{
  versionsRequiringManualSetup = [(_DKKnowledgeStorage *)self versionsRequiringManualSetup];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v7 = [versionsRequiringManualSetup containsObject:v6];

  return v7;
}

- (BOOL)coreDataStorage:(id)storage shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:(unint64_t)version
{
  versionsRequiringManualMigration = [(_DKKnowledgeStorage *)self versionsRequiringManualMigration];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v7 = [versionsRequiringManualMigration containsObject:v6];

  return v7;
}

- (id)coreDataStorage:(id)storage needsManagedObjectModelNameForVersion:(unint64_t)version
{
  storageCopy = storage;
  if (version == 1)
  {
    v6 = @"_DKDataModel";
  }

  else if (version == 2)
  {
    v6 = @"_DKDataModel 2";
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
    stringValue = [v7 stringValue];

    v6 = [@"_DKDataModelVERSION-NUMBER" stringByReplacingOccurrencesOfString:@"VERSION-NUMBER" withString:stringValue];
  }

  return v6;
}

- (BOOL)coreDataStorage:(id)storage willAutoMigrateStoreAtURL:(id)l fromManagedObjectModel:(id)model havingVersion:(unint64_t)version error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(_DKKnowledgeStorage *)self finalMigrationVersion]> version)
  {
    v18 = 0;
    v11 = [(_DKKnowledgeStorage *)self updateDataBeforeAutoMigrationFromVersion:version inStoreAtURL:lCopy error:&v18];
    v12 = v18;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_DKKnowledgeStorage coreDataStorage:version willAutoMigrateStoreAtURL:self fromManagedObjectModel:? havingVersion:? error:?];
  }

  v13 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20[0] = @"Unexpected model version number";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v12 = [v13 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:1 userInfo:v14];

  v11 = 0;
  if (error)
  {
LABEL_7:
    v15 = v12;
    *error = v12;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)coreDataStorage:(id)storage didAutoMigratePersistentStore:(id)store toManagedObjectModel:(id)model havingVersion:(unint64_t)version error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  if ([(_DKKnowledgeStorage *)self finalMigrationVersion]>= version)
  {
    v18 = 0;
    v14 = [(_DKKnowledgeStorage *)self updateDataAfterAutoMigrationToVersion:version inPersistentStore:storeCopy error:&v18];
    v13 = v18;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = v13;
    *error = v13;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_DKKnowledgeStorage coreDataStorage:version didAutoMigratePersistentStore:self toManagedObjectModel:? havingVersion:? error:?];
  }

  v11 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v20[0] = @"Unexpected model version number";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.coreduet.DKKnowledgeStorage" code:1 userInfo:v12];

  v14 = 0;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)saveHistogram:(id)histogram responseQueue:(id)queue withCompletion:(id)completion
{
  histogramCopy = histogram;
  queueCopy = queue;
  completionCopy = completion;
  executionQueue = self->_executionQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66___DKKnowledgeStorage_saveHistogram_responseQueue_withCompletion___block_invoke;
  v19[3] = &unk_1E7369298;
  v19[4] = self;
  v20 = histogramCopy;
  v21 = queueCopy;
  v22 = completionCopy;
  v12 = v19;
  v13 = executionQueue;
  v14 = queueCopy;
  v15 = completionCopy;
  v16 = histogramCopy;
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

- (unint64_t)deleteHistogram:(id)histogram
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  clientID = self->_clientID;
  histogramCopy = histogram;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4 identifier:clientID];
  v8 = +[_DKHistogram entityName];
  v9 = MEMORY[0x1E696AE18];
  identifier = [histogramCopy identifier];

  v11 = [v9 predicateWithFormat:@"identifier == %@", identifier];
  LOBYTE(v14) = 1;
  v12 = [_DKCoreDataStorage deleteObjectsInContext:v7 entityName:v8 predicate:v11 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:1 includePendingChanges:v14];

  return v12;
}

- (id)fetchLocalChangesSinceDate:(id)date error:(id *)error
{
  dateCopy = date;
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

  date = [MEMORY[0x1E695DF00] date];
  v8 = [(_DKKnowledgeStorage *)self _requestForChangeSinceDate:dateCopy];
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
    v24 = dateCopy;
    v26 = &v33;
    [v22 performWithOptions:4 andBlock:&v17];
    [(_CDMemoryUsageInterval *)v11 end:v17];
    if (error)
    {
      *error = v28[5];
    }

    if (!v28[5])
    {
      v12 = fetchLocalChangesSinceDate_error__fetchLocalChangesTimerCounter;
      date2 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v12 addTimingWithStartDate:date endDate:date2];
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

    if (error)
    {
      +[_DKSyncErrors failedToFetchChanges];
      *error = v14 = 0;
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

- (id)fetchSyncChangesSinceDate:(id)date error:(id *)error
{
  dateCopy = date;
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

  date = [MEMORY[0x1E695DF00] date];
  v8 = [(_DKKnowledgeStorage *)self _requestForChangeSinceDate:dateCopy];
  syncStorageIfAvailable = [(_DKKnowledgeStorage *)&self->super.isa syncStorageIfAvailable];
  v10 = syncStorageIfAvailable;
  if (syncStorageIfAvailable)
  {
    v11 = [syncStorageIfAvailable managedObjectContextFor:*MEMORY[0x1E696A388] identifier:self->_clientID];
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
      v26 = dateCopy;
      selfCopy = self;
      v29 = &v36;
      [v24 performWithOptions:4 andBlock:&v19];
      [(_CDMemoryUsageInterval *)v13 end:v19];
      if (error)
      {
        *error = v31[5];
      }

      if (!v31[5])
      {
        v14 = fetchSyncChangesSinceDate_error__fetchSyncChangesTimerCounter;
        date2 = [MEMORY[0x1E695DF00] date];
        [(_DKEventStatsTimerCounter *)v14 addTimingWithStartDate:date endDate:date2];
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

      if (error)
      {
        +[_DKSyncErrors unavailableForCurrentUser];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else if (error)
  {
    +[_DKSyncErrors unavailableForCurrentUser];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v16;
}

- (BOOL)saveChangeSetsForSync:(id)sync error:(id *)error
{
  syncCopy = sync;
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
  v8 = syncCopy;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(executionQueue, block);
  if (error)
  {
    *error = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (unint64_t)lastSequenceNumberForChangeSetWithEntityName:(id)name error:(id *)error
{
  nameCopy = name;
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
  v8 = [nameCopy isEqualToString:v7];

  if (v8)
  {
    v9 = +[_DKChangeSetMO fetchAdditionChangeSetRequest];
  }

  else
  {
    v10 = +[_DKChangeSet deletionChangeSetEntityName];
    v11 = [nameCopy isEqualToString:v10];

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
    deviceUUID = [(_DKKnowledgeStorage *)self deviceUUID];
    v17 = [v15 predicateWithFormat:@"deviceIdentifier == %@", deviceUUID];
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

  if (error)
  {
    *error = v29[5];
  }

  v22 = v35[3];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (void)startSyncDownFromCloudWithResponseQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
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
  selfCopy = self;
  v11 = completionCopy;
  v26 = v11;
  v12 = queueCopy;
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

- (void)startSyncUpToCloudWithResponseQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
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
  selfCopy = self;
  v11 = completionCopy;
  v26 = v11;
  v12 = queueCopy;
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

- (id)lastChangeSetWithEntityName:(id)name error:(id *)error
{
  nameCopy = name;
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
  v8 = [nameCopy isEqualToString:v7];

  if (v8)
  {
    v9 = +[_DKChangeSetMO fetchAdditionChangeSetRequest];
  }

  else
  {
    v10 = +[_DKChangeSet deletionChangeSetEntityName];
    v11 = [nameCopy isEqualToString:v10];

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
    deviceUUID = [(_DKKnowledgeStorage *)self deviceUUID];
    v17 = [v15 predicateWithFormat:@"deviceIdentifier == %@", deviceUUID];
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

  if (error)
  {
    *error = v29[5];
  }

  v22 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (void)_databaseChangedWithNotification:(id)notification
{
  v58 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (_databaseChangedWithNotification__syncCounterInitialized != -1)
  {
    [_DKKnowledgeStorage _databaseChangedWithNotification:];
  }

  object = [notificationCopy object];
  if ([(_DKCoreDataStorage *)self->_storage isManagedObjectContextFor:*MEMORY[0x1E696A388] equalToManagedObjectContext:object])
  {
    v24 = object;
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    obj = self->_knowledgeStorageEventNotificationDelegates;
    objc_sync_enter(obj);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    selfCopy = self;
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

    object = v24;
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
    v33 = notificationCopy;
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
      executionQueue = selfCopy->_executionQueue;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __56___DKKnowledgeStorage__databaseChangedWithNotification___block_invoke_799;
      v26[3] = &unk_1E7369400;
      v26[4] = selfCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_deviceUUID)
  {
    v3 = objc_autoreleasePoolPush();
    [(_DKKnowledgeStorage *)selfCopy configureDeviceUUID];
    objc_autoreleasePoolPop(v3);
  }

  objc_sync_exit(selfCopy);

  deviceUUID = selfCopy->_deviceUUID;

  return deviceUUID;
}

- (void)configureDeviceUUID
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)sourceDeviceIdentityFromDeviceID:(uint64_t)d
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
    uUIDString = [v5 UUIDString];
    v7 = [uUIDString mutableCopy];

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

+ (id)sourceDeviceIdentityFromObject:(id)object
{
  source = [object source];
  syncDeviceID = [source syncDeviceID];

  return syncDeviceID;
}

- (id)sourceDeviceIdentity
{
  deviceUUID = [(_DKKnowledgeStorage *)self deviceUUID];
  v3 = deviceUUID;
  if (deviceUUID)
  {
    uUIDString = [deviceUUID UUIDString];
    v5 = [_DKKnowledgeStorage sourceDeviceIdentityFromDeviceID:uUIDString];
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

- (id)syncPeersWithError:(id *)error
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
  executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55___DKKnowledgeStorage__DKSyncPeer__syncPeersWithError___block_invoke;
  v13 = &unk_1E7368B88;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(executionQueue, &v10);

  if (error)
  {
    *error = v19[5];
  }

  v8 = [v25[5] copy];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (BOOL)saveSyncPeer:(id)peer error:(id *)error
{
  peerCopy = peer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___DKKnowledgeStorage__DKSyncPeer__saveSyncPeer_error___block_invoke;
  block[3] = &unk_1E7368808;
  block[4] = self;
  v8 = peerCopy;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(executionQueue, block);

  if (error)
  {
    *error = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)removeSyncPeer:(id)peer
{
  peerCopy = peer;
  v5 = MEMORY[0x1E696AE18];
  uuid = [peerCopy uuid];
  v7 = [v5 predicateWithFormat:@"uuid == %@", uuid];

  executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___DKKnowledgeStorage__DKSyncPeer__removeSyncPeer___block_invoke;
  block[3] = &unk_1E7367A48;
  block[4] = self;
  v12 = v7;
  v13 = peerCopy;
  v9 = peerCopy;
  v10 = v7;
  dispatch_sync(executionQueue, block);
}

- (id)keyValueStoreForDomain:(id)domain
{
  if (domain)
  {
    domainCopy = domain;
    v7 = [[_DKKnowledgeStorageSimpleKeyValueStore alloc] initWithStorage:domainCopy domain:?];

    v3 = [[_DKKeyValueStore alloc] initWithSimpleKeyValueStore:v7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)keyValueObjectForKey:(void *)key domain:
{
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__21;
    v21 = __Block_byref_object_dispose__21;
    v22 = 0;
    v7 = +[_DKKeyValueMO fetchRequest];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ && key == %@", keyCopy, v5];
    [v7 setPredicate:v8];

    [v7 setFetchLimit:1];
    executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___DKKnowledgeStorage__DKKeyValueStore__keyValueObjectForKey_domain___block_invoke;
    block[3] = &unk_1E736A410;
    block[4] = self;
    v13 = v7;
    v16 = &v17;
    v14 = v5;
    v15 = keyCopy;
    v10 = v7;
    dispatch_sync(executionQueue, block);

    self = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  return self;
}

- (uint64_t)finalMigrationVersion
{
  if (self)
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
  if (self)
  {
    return &unk_1F05EF650;
  }

  else
  {
    return 0;
  }
}

- (BOOL)updateDataBeforeAutoMigrationFromVersion:(void *)version inStoreAtURL:(void *)l error:
{
  v55[1] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if (self)
  {
    versionsRequiringManualSetup = [(_DKKnowledgeStorage *)self versionsRequiringManualSetup];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v10 = [versionsRequiringManualSetup containsObject:v9];

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
      v12 = [MEMORY[0x1E695D6C0] removePersistentHistoryFromPersistentStoreAtURL:versionCopy options:0 error:&obj];
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
      v17 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:versionCopy options:0 error:&v49];
      objc_storeStrong(v16, v49);
      v18 = [v15 initWithManagedObjectModel:v17];

      if (v18 && (v19 = (v52[0] + 40), !*(v52[0] + 40)))
      {
        v21 = *MEMORY[0x1E695D4A8];
        v48 = 0;
        v22 = [v18 addPersistentStoreWithType:v21 configuration:0 URL:versionCopy options:0 error:&v48];
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
          expressionForEvaluatedObject = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
          [v24 setExpression:expressionForEvaluatedObject];

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
            result = [v34 result];
            [_DKKnowledgeStorage updateDataBeforeAutoMigrationFromVersion:result inStoreAtURL:buf error:v37];
          }

          if (l)
          {
            *l = *(v52[0] + 40);
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
      if (l)
      {
        *l = *(v52[0] + 40);
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

- (uint64_t)updateDataAfterAutoMigrationToVersion:(void *)version inPersistentStore:(void *)store error:
{
  v47[3] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if (!self)
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
  persistentStoreCoordinator = [versionCopy persistentStoreCoordinator];
  v10 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  [v10 setPersistentStoreCoordinator:persistentStoreCoordinator];
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
  selfCopy = self;
  v16 = MEMORY[0x193B00C50](v36);
  LOBYTE(v28) = 1;
  v17 = [_DKCoreDataStorage updateObjectsInContext:v10 entityName:@"Object" predicate:v14 sortDescriptors:0 batchFetchLimit:1024 totalFetchLimit:0 includeSubentities:v28 updateBlock:v16];
  v18 = v17;
  if (store)
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
      *store = v23;
    }
  }

  if (a2 == 34)
  {
    v25 = [self migrateDataToBiomeWithManagedObjectContext:v10];
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

- (id)initWithDirectory:(uint64_t)directory readOnly:(int)only localOnly:
{
  v8 = a2;
  if (self)
  {
    v32.receiver = self;
    v32.super_class = _DKKnowledgeStorage;
    self = objc_msgSendSuper2(&v32, sel_init);
    if (self)
    {
      v9 = [[_CDMemoryUsageInterval alloc] initWithName:@"init" client:0];
      [(_CDMemoryUsageInterval *)v9 begin];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 pathForResource:@"_DKDataModel" ofType:@"momd"];

      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
      if (directory)
      {
        v13 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v31[0] = 0;
          _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "readOnly is true, forcing localOnly", v31, 2u);
        }
      }

      else if (!only)
      {
        v15 = [[_DKCoreDataStorage alloc] initWithDirectory:v8 databaseName:@"knowledge" modelURL:v12 sync:0];
        v14 = 0;
        goto LABEL_10;
      }

      v14 = 1;
      v15 = [[_DKCoreDataStorage alloc] initWithDirectory:v8 databaseName:@"knowledge" modelURL:v12 readOnly:directory localOnly:1];
LABEL_10:
      v16 = self[12];
      self[12] = v15;

      [self[12] setDelegate:self];
      [self[12] setRequiresManualMigration:1];
      *(self + 9) = v14;
      objc_storeStrong(self + 5, a2);
      v17 = self[6];
      self[6] = v12;
      v18 = v12;

      v19 = +[_DKTombstonePolicy defaultPolicy];
      v20 = self[10];
      self[10] = v19;

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v22 = self[7];
      self[7] = weakObjectsHashTable;

      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_UTILITY, 0);

      v25 = dispatch_queue_create([@"com.apple.coreduet.knowledgestorage.execution" UTF8String], v24);
      v26 = self[11];
      self[11] = v25;

      v27 = dispatch_queue_create("com.apple.coreduet.knowledgestorage.response", v24);
      v28 = self[4];
      self[4] = v27;

      v29 = +[_DKKnowledgeStorageLogging sharedInstance];

      [self addKnowledgeStorageEventNotificationDelegate:v29];
      *(self + 8) = 1;
      [(_CDMemoryUsageInterval *)v9 end];
    }
  }

  return self;
}

- (id)initWithShallowCopyFromStorage:(void *)storage clientIdentifier:
{
  v5 = a2;
  storageCopy = storage;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = _DKKnowledgeStorage;
    self = objc_msgSendSuper2(&v20, sel_init);
    if (self)
    {
      storage = [v5 storage];
      v8 = self[12];
      self[12] = storage;

      *(self + 9) = 1;
      if (v5)
      {
        objc_storeStrong(self + 5, v5[5]);
        v9 = v5[6];
      }

      else
      {
        v19 = self[5];
        self[5] = 0;

        v9 = 0;
      }

      objc_storeStrong(self + 6, v9);
      tombstonePolicy = [v5 tombstonePolicy];
      v11 = self[10];
      self[10] = tombstonePolicy;

      if (v5)
      {
        v12 = v5[4];
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(self + 4, v12);
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);

      v15 = dispatch_queue_create([@"com.apple.coreduet.knowledgestorage.execution" UTF8String], v14);
      v16 = self[11];
      self[11] = v15;

      if (v5)
      {
        v17 = v5[7];
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong(self + 7, v17);
      objc_storeStrong(self + 9, storage);
      *(self + 8) = 1;
    }
  }

  return self;
}

+ (_DKKnowledgeStorage)storageWithShallowCopyFromStorage:(id)storage clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storageCopy = storage;
  v8 = [(_DKKnowledgeStorage *)[self alloc] initWithShallowCopyFromStorage:storageCopy clientIdentifier:identifierCopy];

  return v8;
}

- (id)syncStorageIfAvailable
{
  if (self)
  {
    selfCopy = self;
    if (self[12])
    {
      if (*(self + 9))
      {
        goto LABEL_4;
      }

      if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
      {
        if (selfCopy[2])
        {
          if (!+[_DKKnowledgeSyncStorageAssertion assertionCount])
          {
            [selfCopy closeSyncStorage];
          }
        }

        else
        {
          syncStorage = [selfCopy syncStorage];
          v8 = selfCopy[2];
          selfCopy[2] = syncStorage;
        }

        self = selfCopy[2];
        goto LABEL_8;
      }

      if (*(selfCopy + 9))
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

    self = 0;
LABEL_8:
    v1 = vars8;
  }

  return self;
}

- (id)removeBadObjects:(uint64_t)objects
{
  if (objects)
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
  if (self)
  {
    self = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:MEMORY[0x1E695E0F8]];
    v1 = vars8;
  }

  return self;
}

- (id)errorForException:(uint64_t)exception
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (exception)
  {
    v2 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    reason = [a2 reason];
    v4 = reason;
    v5 = @"Exception Caught";
    if (reason)
    {
      v5 = reason;
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

- (void)_sendInsertEventsNotificationWithObjects:(uint64_t)objects
{
  if (objects)
  {
    v3 = a2;
    [(_DKKnowledgeStorage *)objects _sendEventsNotificationName:v3 withObjects:?];
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

- (BOOL)_deleteObjects:(void *)objects error:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self)
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  dispatch_assert_queue_V2(*(self + 88));
  if (!v5)
  {
    if (objects)
    {
      [(_DKKnowledgeStorage *)self nilArrayError];
      *objects = v6 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = [(_DKKnowledgeStorage *)self removeBadObjects:v5];
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

    v42 = [*(self + 96) managedObjectContextFor:*MEMORY[0x1E696A388] identifier:*(self + 72)];
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

          uUIDString = [*(*(&v45 + 1) + 8 * i) UUIDString];
          [v15 addObject:uUIDString];
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
        if (objects && v29)
        {
          v29 = v29;
          *objects = v29;
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
      [(_DKKnowledgeStorage *)self _tombstoneObjects:v9 error:&v43];
      v35 = v43;
      [(_DKKnowledgeStorage *)self _sendEventsNotificationName:v9 withObjects:?];
    }

    else
    {
      v35 = 0;
    }

    objc_autoreleasePoolPop(v39);
    [(_CDMemoryUsageInterval *)v40 end];
    if (objects)
    {
      v36 = v35;
      *objects = v35;
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

- (void)_tombstoneObjects:(void *)objects error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(self[11]);
    [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_632];
    objc_claimAutoreleasedReturnValue();
    v7 = [OUTLINED_FUNCTION_13_3() filteredArrayUsingPredicate:?];
    tombstonePolicy = [(dispatch_queue_t *)self tombstonePolicy];
    v36 = 0;
    v9 = [tombstonePolicy tombstonesForEvents:v7 resultingFromRequirementsWithIdentifiers:&v36];
    v30 = v36;

    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    if (![v9 count])
    {
      goto LABEL_17;
    }

    v26 = v7;
    v27 = v3;
    objectsCopy = objects;
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

          metadata = [*(*(&v32 + 1) + 8 * i) metadata];
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
    [(_DKKnowledgeStorage *)self _saveObjects:v11 error:&v31];
    v19 = v31;
    objects = objectsCopy;
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
      if (!objectsCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_17:
      [(_DKKnowledgeStorage *)self _sendTombstoneNotificationsWithStreamNameCounts:v10];
      v22 = v30;
      if ([v30 count])
      {
        [_DKTombstoneNotifier sendDistributedNotificationsForTombstoneRequirementIdentifiers:v30 queue:self[11]];
      }

      v20 = 0;
      if (!objects)
      {
        goto LABEL_21;
      }
    }

    v23 = v20;
    *objects = v20;
LABEL_21:
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (dispatch_queue_t)_deleteAllEventsMatchingPredicate:(void *)predicate error:
{
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(self[11]);
    if (_os_feature_enabled_impl() && !+[_DKBiomeQuery shimDisabled])
    {
      v7 = [[_DKBiomeQuery alloc] initWithDeletionPredicate:v5];
      v8 = v7;
      if (v7)
      {
        v13 = 0;
        v6 = [(_DKBiomeQuery *)v7 executeDeletionQuery:&v13];
        v9 = v13;
        if (predicate && v9)
        {
          v9 = v9;
          *predicate = v9;
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

    v10 = [(_DKKnowledgeStorage *)self _tombstoneObjectsMatchingPredicate:v5 batchSize:256 error:predicate];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v10];
    self = ([(dispatch_queue_t *)self deleteEventsMatchingPredicate:v11 limit:0]+ v6);
  }

  return self;
}

- (BOOL)deleteKnowledgeStream:(void *)stream context:(uint64_t)context expectedEventCount:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self)
  {
    streamCopy = stream;
    name = [v7 name];
    v10 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamName:name];

    v11 = +[_DKEvent entityName];
    LOBYTE(v17) = 1;
    v12 = [_DKCoreDataStorage deleteObjectsInContext:streamCopy entityName:v11 predicate:v10 sortDescriptors:0 fetchLimit:0x7FFFFFFFFFFFFFFFLL includeSubentities:0 includePendingChanges:v17];

    self = v12 == context;
    if (v12 != context)
    {
      v13 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v7 name];
        *buf = 136446722;
        uTF8String = [name2 UTF8String];
        v20 = 2048;
        contextCopy = context;
        v22 = 2048;
        v23 = v12;
        _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "Unexpected number of events deleted after Biome migration of stream: %{public}s expected: %lu deleted: %lu", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return self;
}

- (uint64_t)migrateStream:(void *)stream context:
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  streamCopy = stream;
  if (self)
  {
    name = [v5 name];
    v7 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:name contentProtection:*MEMORY[0x1E696A388]];
    if (v7)
    {
      if ([(_DKKnowledgeStorage *)self biomeStreamContainsEntries:v7])
      {
        v8 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [v5 name];
          OUTLINED_FUNCTION_22_2(name2, 5.8381e-34);
          _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "Skipping migration of Biome stream since entries already exist, stream %{public}@", buf, 0xCu);
        }

        self = 1;
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

        selfCopy = self;
        v49 = v11;
        v50 = name;
        v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v12];
        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        v17 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v5 name];
          OUTLINED_FUNCTION_22_2(name3, 5.8382e-34);
          v62 = 2114;
          v63 = v15;
          OUTLINED_FUNCTION_27_1(&dword_191750000, v19, v20, "Migrating events to Biome from stream %{public}@ since %{public}@");
        }

        v51 = v5;
        name4 = [v5 name];
        v59 = name4;
        v22 = 1;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        objc_claimAutoreleasedReturnValue();
        v23 = [OUTLINED_FUNCTION_13_3() predicateForEventsWithStreamNames:?];

        v47 = distantFuture;
        v48 = v15;
        v45 = [_DKQuery predicateForEventsBetweenStartDate:v15 endDate:distantFuture];
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
          v33 = [(_DKKnowledgeStorage *)selfCopy migrateEventBatchToBiomeStream:v53 fetchRequest:v30 managedObjectContex:streamCopy converter:v32 eventCount:&v55 offset:&v56];
          v34 = v55;
          if (!v33)
          {
            name = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
            {
              name5 = [v51 name];
              OUTLINED_FUNCTION_22_2(name5, 5.8382e-34);
              v62 = 2048;
              v63 = v35;
              _os_log_error_impl(&dword_191750000, name, OS_LOG_TYPE_ERROR, "Error migrating event batch for stream: %{public}@ offset: %lu", buf, 0x16u);
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
          name6 = [v51 name];
          *buf = 134218242;
          v61 = v28;
          v62 = 2114;
          v63 = name6;
          OUTLINED_FUNCTION_27_1(&dword_191750000, v38, v39, "Migrated %lu events to Biome from stream %{public}@");
        }

        v7 = v53;
        self = v22 & [(_DKKnowledgeStorage *)selfCopy verifyBiomeMigration:v53 expectedEventCount:v28];
        name = v50;
        if (*(selfCopy + 8) == 1)
        {
          self = self & [(_DKKnowledgeStorage *)selfCopy deleteKnowledgeStream:v51 context:streamCopy expectedEventCount:v28];
        }

        v8 = v49;
      }
    }

    else
    {
      v8 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        name7 = [v5 name];
        OUTLINED_FUNCTION_22_2(name7, 5.8381e-34);
        OUTLINED_FUNCTION_10(&dword_191750000, v8, v43, "Unexpected nil Biome stream encountered during migration of stream %{public}@", buf);
      }

      self = 0;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)_requestForChangeSinceDate:(uint64_t)date
{
  if (date)
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

- (void)setKeyValueObject:(void *)object forKey:(void *)key domain:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objectCopy = object;
  keyCopy = key;
  if (self)
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

            executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __73___DKKnowledgeStorage__DKKeyValueStore__setKeyValueObject_forKey_domain___block_invoke;
            v20[3] = &unk_1E736A018;
            v20[4] = self;
            v21 = keyCopy;
            v22 = objectCopy;
            v23 = v7;
            dispatch_sync(executionQueue, v20);

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

- (void)removeKeyValueObjectForKey:(void *)key domain:
{
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ && key == %@", keyCopy, v5];
    executionQueue = [(_DKKnowledgeStorage *)self executionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___DKKnowledgeStorage__DKKeyValueStore__removeKeyValueObjectForKey_domain___block_invoke;
    block[3] = &unk_1E736A018;
    block[4] = self;
    v11 = v7;
    v12 = v5;
    v13 = keyCopy;
    v9 = v7;
    dispatch_sync(executionQueue, block);
  }
}

- (void)updateToFinalMetadata:(uint64_t)metadata
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (metadata)
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
  if (self)
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

- (BOOL)copyValueToManagedObject:(uint64_t)object
{
  v3 = a2;
  if (object)
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
          string = [v6 string];
          [v4 setValueString:string];

          identifierType = [v6 identifierType];
          v9 = v4;
          v10 = identifierType;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 setValueClass:2];
            categoryType = [v5 categoryType];
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
            categoryType = [v5 quantityType];
          }

          v10 = categoryType;
          v9 = v4;
        }

        [v9 setValueTypeCode:v10];
      }

LABEL_12:
    }
  }

  return object != 0;
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