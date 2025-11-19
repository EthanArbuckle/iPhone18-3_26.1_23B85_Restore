@interface _DKSyncCloudKitKnowledgeStorage
+ (id)deviceIDFromZoneID:(id)a3;
+ (id)sharedInstance;
+ (id)zoneIDWithDeviceID:(id)a3;
+ (void)setMySyncZoneID:(uint64_t)a1;
- (BOOL)hasAdditionsFlagForPeer:(id)a3;
- (BOOL)hasDeletionsFlagForPeer:(id)a3;
- (_DKSyncCloudKitKnowledgeStorage)init;
- (id)_handleAnySpecialnessWithOperationError:(id *)a1;
- (id)_previousServerChangeTokenKeyForRecordZoneID:(uint64_t)a1;
- (id)executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob;
- (id)name;
- (int64_t)transportType;
- (uint64_t)_queueOperationForPrivateCloudDatabase:(int)a3 dependent:(void *)a4 policy:(void *)a5 error:;
- (uint64_t)hasZoneAdditionChangesForZone:(uint64_t)a1;
- (uint64_t)hasZoneDeletionChangesForZone:(uint64_t)a1;
- (uint64_t)populateLastSeenDateIfNeededByPeer:(uint64_t)a1;
- (uint64_t)scheduleRetryUpdateSourceDeviceIdentifiers;
- (uint64_t)startShouldUpdateSourceDeviceIdentifiers;
- (void)_cloudSyncAvailabilityDidChange:(id)a3;
- (void)_createPushConnection;
- (void)_createZoneWithZoneID:(void *)a3 completion:;
- (void)_deleteZoneWithZoneID:(void *)a3 completion:;
- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:(void *)a1;
- (void)_registerCloudSyncAvailablityObserver;
- (void)_registerDatabaseChangesSubscription;
- (void)_resetPreviousServerChangeTokenForRecordZoneID:(uint64_t)a1;
- (void)_unregisterCloudSyncAvailablityObserver;
- (void)addSourceDeviceIdentifierWithRecordZoneID:(uint64_t)a1;
- (void)cancelOutstandingOperations;
- (void)clearPrewarmedFlag;
- (void)commitFetchDatabaseChangesServerChangeToken;
- (void)configureCloudPseudoPeerWithMySyncZoneID:(id *)a1;
- (void)configurePeerWithSourceDeviceID:(void *)a3 zoneID:;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)fastForwardPastDeletionsInNewZone:(void *)a3 sourceDeviceID:;
- (void)fetchChangedZonesWithCompletion:(id *)a1;
- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9;
- (void)fetchSourceDeviceIDFromPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)finishStartBecauseCloudIsAvailable;
- (void)finishStartOrError:(uint64_t)a1;
- (void)finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:(void *)a3 orError:(void *)a4 completion:;
- (void)performUpdateSourceDeviceIdentifiersWithCompletion:(uint64_t)a1;
- (void)prewarmFetchWithCompletion:(id)a3;
- (void)registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(id *)a1;
- (void)removeSourceDeviceIdentifierWithRecordZoneID:(id *)a1;
- (void)runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(uint64_t)a1;
- (void)setFetchDelegate:(id)a3;
- (void)setHasAdditionsFlag:(BOOL)a3 forPeer:(id)a4;
- (void)setHasDeletionsFlag:(BOOL)a3 forPeer:(id)a4;
- (void)setHasZoneAdditionChanges:(uint64_t)a3 forZone:(uint64_t)a4;
- (void)setHasZoneDeletionChanges:(uint64_t)a3 forZone:(uint64_t)a4;
- (void)setPrewarmedFlag;
- (void)setZoneIDsBySourceDeviceID:(uint64_t)a1;
- (void)start;
- (void)startShouldUpdateSourceDeviceIdentifiers;
- (void)syncDownAdditionsFromCloudWithZoneID:(void *)a3 windows:(void *)a4 streamNames:(unint64_t)a5 limit:(void *)a6 fetchOrder:(void *)a7 completion:;
- (void)syncDownDeletionsFromCloudWithZoneID:(uint64_t)a3 completion:(uint64_t)a4;
- (void)syncDownDeletionsFromCloudWithZoneID:(void *)a3 deletedRecordIDsAndTypes:(void *)a4 attempt:(void *)a5 completion:;
- (void)syncUpToCloudWithRecordsToSave:(void *)a3 recordIDsToDelete:(void *)a4 completion:;
- (void)unregisterUpdateSourceDeviceIdentifiersPeriodicJob;
- (void)updateSourceDeviceIdentifiersWithRecordZonesByZoneID:(void *)a3 completion:;
- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6;
@end

@implementation _DKSyncCloudKitKnowledgeStorage

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_0 != -1)
  {
    +[_DKSyncCloudKitKnowledgeStorage sharedInstance];
  }

  v0 = sharedInstance_sharedInstance_0;

  return v0;
}

+ (void)setMySyncZoneID:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = _DKMySyncZoneID;
  _DKMySyncZoneID = v2;
}

+ (id)zoneIDWithDeviceID:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"source-device-id:", a3];
  v4 = objc_alloc(MEMORY[0x1E695BA90]);
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B790]];

  return v5;
}

+ (id)deviceIDFromZoneID:(id)a3
{
  v3 = a3;
  v4 = [v3 zoneName];
  v5 = [v4 hasPrefix:@"source-device-id:"];

  if (v5)
  {
    v6 = [v3 zoneName];
    v7 = [v6 substringFromIndex:{objc_msgSend(@"source-device-id:", "length")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_DKSyncCloudKitKnowledgeStorage)init
{
  v8.receiver = self;
  v8.super_class = _DKSyncCloudKitKnowledgeStorage;
  v2 = [(_DKSyncCloudKitKnowledgeStorage *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordZonesByZoneID = v2->_recordZonesByZoneID;
    v2->_recordZonesByZoneID = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    outstandingOperations = v2->_outstandingOperations;
    v2->_outstandingOperations = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(_DKSyncCloudKitKnowledgeStorage *)self _unregisterCloudSyncAvailablityObserver];
  v3.receiver = self;
  v3.super_class = _DKSyncCloudKitKnowledgeStorage;
  [(_DKSyncCloudKitKnowledgeStorage *)&v3 dealloc];
}

- (void)start
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)startShouldUpdateSourceDeviceIdentifiers
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([*(a1 + 32) isSingleDevice])
    {
      v2 = [*(a1 + 16) numberForKey:@"HaveCreatedMyZone"];
      v3 = v2;
      if (v2 && [v2 BOOLValue])
      {
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v4 = *(a1 + 24);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __75___DKSyncCloudKitKnowledgeStorage_startShouldUpdateSourceDeviceIdentifiers__block_invoke;
        v9[3] = &unk_1E73679D0;
        v9[4] = &v10;
        [v4 performNoMoreOftenInDaysThan:@"SingleDeviceUpdateSourceDeviceIdentifiers" name:v9 activityBlock:7.0];
        v5 = *(v11 + 24);
        if (v5)
        {
          v6 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            [objc_opt_class() description];
            objc_claimAutoreleasedReturnValue();
            [_DKSyncCloudKitKnowledgeStorage startShouldUpdateSourceDeviceIdentifiers];
          }
        }

        _Block_object_dispose(&v10, 8);
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (!a1[5])
    {
      v5 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [_DKSyncCloudKitKnowledgeStorage registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:];
      }

      objc_initWeak(&location, a1);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __98___DKSyncCloudKitKnowledgeStorage_registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke;
      v15 = &unk_1E7367E80;
      objc_copyWeak(&v18, &location);
      v16 = a1;
      v17 = v3;
      v6 = MEMORY[0x193B00C50](&v12);
      v7 = [(_DKSyncCloudKitKnowledgeStorage *)a1 executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob];
      v8 = [_DKSyncSerializer underlyingQueue:v12];
      v9 = [_CDPeriodicSchedulerJob jobWithInterval:@"com.apple.coreduet.sync.update-source-device-identifiers" schedulerJobName:v8 queue:1 asynchronousHandler:v6 handler:30.0];
      v10 = a1[5];
      a1[5] = v9;

      [a1[5] setExecutionCriteria:v7];
      v11 = +[_CDPeriodicScheduler sharedInstance];
      [v11 registerJob:a1[5]];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (void)cancelOutstandingOperations
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSHashTable *)self->_outstandingOperations allObjects];
  v5 = [v4 copy];

  [(NSHashTable *)self->_outstandingOperations removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 isFinished] & 1) == 0 && (objc_msgSend(v11, "isCancelled") & 1) == 0)
        {
          [v11 cancel];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_cloudSyncAvailabilityDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke;
  v3[3] = &unk_1E7367440;
  v3[4] = self;
  [_DKSyncSerializer performAsyncBlock:v3];
}

- (void)_createZoneWithZoneID:(void *)a3 completion:
{
  v30[1] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    v7 = os_transaction_create();
    v8 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v22];
    v30[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage _createZoneWithZoneID:completion:];
    }

    v11 = [(CKModifyRecordZonesOperation *)[_DKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];
    v12 = objc_opt_new();
    [(_DKModifyRecordZonesOperation *)v11 setGroup:v12];

    v13 = [(_DKModifyRecordZonesOperation *)v11 group];
    [v13 setName:@"CreateZone"];

    objc_initWeak(&location, v11);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68___DKSyncCloudKitKnowledgeStorage__createZoneWithZoneID_completion___block_invoke;
    v24[3] = &unk_1E7367B10;
    objc_copyWeak(&v28, &location);
    v24[4] = a1;
    v14 = v9;
    v25 = v14;
    v15 = v5;
    v27 = v15;
    v16 = v7;
    v26 = v16;
    [(CKModifyRecordZonesOperation *)v11 setModifyRecordZonesCompletionBlock:v24];
    v17 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncCloudKitKnowledgeStorage _createZoneWithZoneID:completion:];
    }

    v23 = 0;
    v18 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v11 dependent:1 policy:0 error:&v23];
    v19 = v23;
    if (v15)
    {
      v20 = v18;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      (*(v15 + 2))(v15, v19);
    }

    if (([*(a1 + 16) BOOLForKey:{@"DidRegisterDatabaseChangesSubscription", v22}] & 1) == 0)
    {
      [(_DKSyncCloudKitKnowledgeStorage *)a1 _registerDatabaseChangesSubscription];
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_deleteZoneWithZoneID:(void *)a3 completion:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    v8 = os_transaction_create();
    v34[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [objc_opt_class() description];
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "%{public}@: Deleting zone %@", buf, 0x16u);
    }

    v12 = [(CKModifyRecordZonesOperation *)[_DKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];
    v13 = objc_opt_new();
    [(_DKModifyRecordZonesOperation *)v12 setGroup:v13];

    v14 = [(_DKModifyRecordZonesOperation *)v12 group];
    [v14 setName:@"DeleteZone"];

    objc_initWeak(&location, v12);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68___DKSyncCloudKitKnowledgeStorage__deleteZoneWithZoneID_completion___block_invoke;
    v24[3] = &unk_1E7367B10;
    objc_copyWeak(&v28, &location);
    v24[4] = a1;
    v15 = v9;
    v25 = v15;
    v16 = v6;
    v27 = v16;
    v17 = v8;
    v26 = v17;
    [(CKModifyRecordZonesOperation *)v12 setModifyRecordZonesCompletionBlock:v24];
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncCloudKitKnowledgeStorage _deleteZoneWithZoneID:completion:];
    }

    v23 = 0;
    v19 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v12 dependent:1 policy:0 error:&v23];
    v20 = v23;
    if (v16)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      (*(v16 + 2))(v16, v20);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:(void *)a1
{
  location[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = os_transaction_create();
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage _performThrottledUpdateSourceDeviceIdentifiersWithCompletion:];
    }

    v7 = +[(CKFetchRecordZonesOperation *)_DKFetchRecordZonesOperation];
    v8 = objc_opt_new();
    [v7 setGroup:v8];

    v9 = [v7 group];
    [v9 setName:@"UpdateSourceDeviceIdentifiers"];

    objc_initWeak(location, a1);
    objc_initWeak(&from, v7);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke;
    v18[3] = &unk_1E7367A98;
    objc_copyWeak(&v21, location);
    objc_copyWeak(&v22, &from);
    v18[4] = a1;
    v10 = v3;
    v20 = v10;
    v11 = v5;
    v19 = v11;
    [v7 setFetchRecordZonesCompletionBlock:v18];
    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncCloudKitKnowledgeStorage _performThrottledUpdateSourceDeviceIdentifiersWithCompletion:];
    }

    v17 = 0;
    v13 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v7 dependent:1 policy:0 error:&v17];
    v14 = v17;
    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      (*(v10 + 2))(v10, v14);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedZonesWithCompletion:(id *)a1
{
  v51 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (a1)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = os_transaction_create();
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
    }

    v6 = a1[2];
    v7 = a1[16];
    if (!v7)
    {
      v8 = [v6 dataForKey:{@"FetchDatabaseChangesServerChangeToken", v27}];
      if (v8)
      {
        v42 = 0;
        v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v42];
        v9 = v42;
        v10 = v9;
        if (v7)
        {
          v11 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v26 = [objc_opt_class() description];
            *buf = 138544130;
            v44 = v26;
            v45 = 2114;
            v46 = @"FetchDatabaseChangesServerChangeToken";
            v47 = 2112;
            v48 = v7;
            v49 = 2112;
            v50 = v8;
            _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Token %{public}@ is %@ (%@)", buf, 0x2Au);
          }

          objc_storeStrong(a1 + 16, v7);
        }

        else
        {
          v12 = v9 == 0;
          v13 = +[_CDLogging syncChannel];
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v14)
            {
              [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
            }
          }

          else if (v14)
          {
            [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
          }

          [a1[2] removeObjectForKey:@"FetchDatabaseChangesServerChangeToken"];
        }
      }

      else
      {
        v10 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
        }

        v7 = 0;
      }
    }

    v15 = [[_DKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v7];
    v16 = objc_opt_new();
    [(_DKFetchDatabaseChangesOperation *)v15 setGroup:v16];

    v17 = [(_DKFetchDatabaseChangesOperation *)v15 group];
    [v17 setName:@"FetchChangedZones"];

    [(_DKFetchDatabaseChangesOperation *)v15 setFetchAllChanges:1];
    objc_initWeak(&location, a1);
    objc_initWeak(&from, v15);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke;
    v38[3] = &unk_1E7367B88;
    v38[4] = a1;
    objc_copyWeak(&v39, &location);
    [(_DKFetchDatabaseChangesOperation *)v15 setRecordZoneWithIDChangedBlock:v38];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_182;
    v36[3] = &unk_1E7367B88;
    v36[4] = a1;
    objc_copyWeak(&v37, &location);
    [(_DKFetchDatabaseChangesOperation *)v15 setRecordZoneWithIDWasDeletedBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_184;
    v35[3] = &unk_1E7367BB0;
    v35[4] = a1;
    [(_DKFetchDatabaseChangesOperation *)v15 setChangeTokenUpdatedBlock:v35];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_187;
    v29[3] = &unk_1E7367C00;
    objc_copyWeak(&v33, &from);
    v29[4] = a1;
    objc_copyWeak(&v34, &location);
    v18 = v6;
    v30 = v18;
    v19 = v27;
    v32 = v19;
    v20 = v4;
    v31 = v20;
    [(_DKFetchDatabaseChangesOperation *)v15 setFetchDatabaseChangesCompletionBlock:v29];
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
    }

    v28 = 0;
    v22 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v15 dependent:0 policy:0 error:&v28];
    v23 = v28;
    if (v19)
    {
      v24 = v22;
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      (*(v19 + 2))(v19, v23);
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAdditionsFlagForPeer:(id)a3
{
  v3 = a3;
  v4 = [v3 zoneName];
  if (v4)
  {
    [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
    v6 = v8;
  }

  else
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)setHasAdditionsFlag:(BOOL)a3 forPeer:(id)a4
{
  v6 = a4;
  v7 = [v6 zoneName];

  if (v7)
  {
    [(_DKSyncCloudKitKnowledgeStorage *)v6 setHasAdditionsFlag:a3 forPeer:?];
  }

  else
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
    }
  }
}

- (BOOL)hasDeletionsFlagForPeer:(id)a3
{
  v3 = a3;
  v4 = [v3 zoneName];
  if (v4)
  {
    [_DKSyncCloudKitKnowledgeStorage hasDeletionsFlagForPeer:];
    v6 = v8;
  }

  else
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)setHasDeletionsFlag:(BOOL)a3 forPeer:(id)a4
{
  v6 = a4;
  v7 = [v6 zoneName];

  if (v7)
  {
    [(_DKSyncCloudKitKnowledgeStorage *)v6 setHasDeletionsFlag:a3 forPeer:?];
  }

  else
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
    }
  }
}

- (void)clearPrewarmedFlag
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFetchWithCompletion:(id)a3
{
  v7 = a3;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v4);

  if (self->_isPrewarmed)
  {
    v5 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    (*(v7 + 2))(v7, 0);
  }

  else if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
  {
    [(_DKSyncCloudKitKnowledgeStorage *)&self->super.isa fetchChangedZonesWithCompletion:v7];
  }

  else
  {
    v5 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = +[_DKSyncErrors disabled];
    (*(v7 + 2))(v7, v6);
  }

  v5 = v7;
LABEL_9:
}

- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v18 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v18);

  if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
  {
    v19 = [v14 zoneName];
    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E695BA90]);
      v21 = [v20 initWithZoneName:v19 ownerName:*MEMORY[0x1E695B790]];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __116___DKSyncCloudKitKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke;
      v23[3] = &unk_1E7367C50;
      v24 = v17;
      [(_DKSyncCloudKitKnowledgeStorage *)self syncDownAdditionsFromCloudWithZoneID:v21 windows:v15 streamNames:v16 limit:a6 fetchOrder:a7 completion:v23];
    }

    else
    {
      v22 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
      }

      if (!v17)
      {
        goto LABEL_11;
      }

      v21 = +[_DKSyncErrors invalidRequest];
      (*(v17 + 2))(v17, 0, 0, v21);
    }

LABEL_11:
    goto LABEL_12;
  }

  if (v17)
  {
    v19 = +[_DKSyncErrors disabled];
    (*(v17 + 2))(v17, 0, 0, v19);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)syncDownAdditionsFromCloudWithZoneID:(void *)a3 windows:(void *)a4 streamNames:(unint64_t)a5 limit:(void *)a6 fetchOrder:(void *)a7 completion:
{
  v96 = *MEMORY[0x1E69E9840];
  v67 = a2;
  v68 = a3;
  v64 = a4;
  v65 = a7;
  val = a1;
  if (a1)
  {
    v63 = os_transaction_create();
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v53 = [objc_opt_class() description];
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v68, "count")}];
      v55 = _CDPrettyPrintCollection(v64, 0, 0, 0);
      *buf = 138544130;
      *&buf[4] = v53;
      v86 = 2112;
      v87 = v54;
      v88 = 2112;
      v89 = v67;
      v90 = 2114;
      v91 = v55;
      _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Syncing down records in %@ windows from %@ for streams %{public}@", buf, 0x2Au);
    }

    if ([v68 count])
    {
      if ([v68 count] < 2)
      {
        v16 = [v68 firstObject];
      }

      else
      {
        v12 = [v68 firstObject];
        v13 = [(_DKSyncWindow *)v12 startDate];
        v14 = [v68 lastObject];
        v15 = [(_DKSyncType *)v14 urgency];
        v16 = [_DKSyncWindow syncWindowWithStartDate:v13 endDate:v15];

        v17 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v56 = [objc_opt_class() description];
          v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v68, "count")}];
          v58 = _CDPrettyPrintCollection(v64, 0, 0, 0);
          *buf = 138544642;
          *&buf[4] = v56;
          v86 = 2112;
          v87 = v57;
          v88 = 2114;
          v89 = v16;
          v90 = 2114;
          v91 = v68;
          v92 = 2112;
          v93 = v67;
          v94 = 2114;
          v95 = v58;
          _os_log_error_impl(&dword_191750000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Combining sync down request windows into 1 of %@ windows (%{public}@ instead of %{public}@) from %@ for streams %{public}@", buf, 0x3Eu);
        }
      }

      v18 = [(_DKSyncWindow *)v16 startDate];
      v19 = [(_DKSyncType *)v16 urgency];
      if (a6 == 2)
      {
        v20 = @"%K >= %@";
      }

      else
      {
        v20 = @"%K > %@";
      }

      if (a6 == 2)
      {
        v21 = @"%K < %@";
      }

      else
      {
        v21 = @"%K <= %@";
      }

      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:v20, @"eventCreationDate", v18];
      v23 = [MEMORY[0x1E696AE18] predicateWithFormat:v21, @"eventCreationDate", v19];
      v24 = MEMORY[0x1E696AB28];
      v84[0] = v22;
      v84[1] = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
      v26 = [v24 andPredicateWithSubpredicates:v25];

      v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"streamName", v64];
      v28 = MEMORY[0x1E696AB28];
      v83[0] = v26;
      v83[1] = v27;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
      v61 = [v28 andPredicateWithSubpredicates:v29];

      v60 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"eventCreationDate" ascending:a6 != 2];
      v30 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"DKEvent" predicate:v61];
      v82 = v60;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      [v30 setSortDescriptors:v31];

      v32 = @"SyncDownAdditionsFromCloud";
      if (a5 == 1)
      {
        v32 = @"QueryRecordFromCloud";
      }

      v33 = v32;
      v34 = *MEMORY[0x1E695B7A8];
      if (a5)
      {
        v35 = a5;
      }

      else
      {
        v35 = *MEMORY[0x1E695B7A8];
      }

      if (v34)
      {
        v36 = v35 > v34;
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      if (((v35 > 1) & v37) != 0)
      {
        v38 = *MEMORY[0x1E695B7A8];
      }

      else
      {
        v38 = v35;
      }

      v39 = [(CKQueryOperation *)[_DKQueryOperation alloc] initWithQuery:v30];
      v40 = objc_opt_new();
      [(_DKQueryOperation *)v39 setGroup:v40];

      v41 = [(_DKQueryOperation *)v39 group];
      [v41 setName:v33];

      [(_DKQueryOperation *)v39 setAllowsCellularAccess:0];
      [(CKQueryOperation *)v39 setResultsLimit:v38];
      [(CKQueryOperation *)v39 setZoneID:v67];
      objc_initWeak(&location, val);
      objc_initWeak(&from, v39);
      v42 = objc_opt_new();
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke;
      v78[3] = &unk_1E7367C78;
      v43 = v42;
      v79 = v43;
      [(CKQueryOperation *)v39 setRecordFetchedBlock:v78];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_3;
      v70[3] = &unk_1E7367CC8;
      v70[4] = val;
      v44 = v43;
      v71 = v44;
      v72 = v67;
      v73 = v68;
      objc_copyWeak(&v76, &from);
      v77[1] = v38;
      v77[2] = a6;
      v45 = v65;
      v75 = v45;
      objc_copyWeak(v77, &location);
      v74 = v63;
      [(CKQueryOperation *)v39 setQueryCompletionBlock:v70];
      v46 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncCloudKitKnowledgeStorage syncDownAdditionsFromCloudWithZoneID:windows:streamNames:limit:fetchOrder:completion:];
      }

      v47 = v27;
      v48 = [_DKSync2Policy policyForSyncTransportType:4];
      v69 = 0;
      v49 = [(_DKSyncCloudKitKnowledgeStorage *)val _queueOperationForPrivateCloudDatabase:v39 dependent:1 policy:v48 error:&v69];
      v50 = v69;
      if (v45)
      {
        v51 = v49;
      }

      else
      {
        v51 = 1;
      }

      if ((v51 & 1) == 0)
      {
        (*(v45 + 2))(v45, 0, 0, v50);
      }

      objc_destroyWeak(v77);
      objc_destroyWeak(&v76);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else if (([_DKSyncCloudKitKnowledgeStorage syncDownAdditionsFromCloudWithZoneID:v65 windows:buf streamNames:? limit:? fetchOrder:? completion:?]& 1) == 0)
    {
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)syncDownDeletionsFromCloudWithZoneID:(void *)a3 deletedRecordIDsAndTypes:(void *)a4 attempt:(void *)a5 completion:
{
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v28 = a3;
  v27 = a5;
  if (a1)
  {
    v10 = +[_CDLogging syncChannel];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_DKSyncCloudKitKnowledgeStorage syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:];
      }

      v11 = objc_opt_new();
      [v11 setDesiredKeys:MEMORY[0x1E695E0F0]];
      v26 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _previousServerChangeTokenForRecordZoneID:v9];
      if (v26)
      {
        [v11 setPreviousServerChangeToken:v26];
      }

      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      [v12 setObject:v11 forKeyedSubscript:v9];
      v13 = [_DKFetchRecordZoneChangesOperation alloc];
      v40[0] = v9;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      v15 = [(_DKFetchRecordZoneChangesOperation *)v13 initWithRecordZoneIDs:v14 optionsByRecordZoneID:v12];

      v16 = objc_opt_new();
      [(_DKFetchRecordZoneChangesOperation *)v15 setGroup:v16];

      v17 = [(_DKFetchRecordZoneChangesOperation *)v15 group];
      [v17 setName:@"SyncDownDeletionsFromCloud"];

      [(_DKFetchRecordZoneChangesOperation *)v15 setFetchAllChanges:1];
      objc_initWeak(&location, a1);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke;
      v37[3] = &unk_1E7367D40;
      v18 = v28;
      v38 = v18;
      [(_DKFetchRecordZoneChangesOperation *)v15 setRecordWithIDWasDeletedBlock:v37];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_3;
      v35[3] = &unk_1E7367D90;
      objc_copyWeak(&v36, &location);
      [(_DKFetchRecordZoneChangesOperation *)v15 setRecordZoneFetchCompletionBlock:v35];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_5;
      v30[3] = &unk_1E7367DE0;
      v30[4] = a1;
      v31 = v9;
      objc_copyWeak(v34, &location);
      v34[1] = a4;
      v32 = v18;
      v19 = v27;
      v33 = v19;
      [(_DKFetchRecordZoneChangesOperation *)v15 setFetchRecordZoneChangesCompletionBlock:v30];
      v20 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncCloudKitKnowledgeStorage syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:];
      }

      v21 = [_DKSync2Policy policyForSyncTransportType:4];
      v29 = 0;
      v22 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v15 dependent:1 policy:v21 error:&v29];
      v23 = v29;
      if (v19)
      {
        v24 = v22;
      }

      else
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        (*(v19 + 2))(v19, v23);
      }

      objc_destroyWeak(v34);
      objc_destroyWeak(&v36);

      objc_destroyWeak(&location);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DKSyncCloudKitKnowledgeStorage syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchSourceDeviceIDFromPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  v12 = a3;
  v6 = a5;
  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = [v12 sourceDeviceID];
    v10 = [v8 initWithUUIDString:v9];

    if (v10)
    {
      (*(v6 + 2))(v6, v10, 0, 0);
    }

    else
    {
      v11 = +[_DKSyncErrors invalidData];
      (*(v6 + 2))(v6, 0, 0, v11);
    }
  }
}

- (void)setFetchDelegate:(id)a3
{
  v4 = a3;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = v4;
}

- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  if ([v8 count] || -[_DKSyncDeletedEventIDs count](v9))
  {
    v11 = 0x1E7366000uLL;
    if ([v8 count])
    {
      v12 = [_DKEventCKConverter alloc];
      v13 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      v14 = [(_DKEventCKConverter *)v12 initWithZoneID:v13];

      v15 = [(_DKEventCKConverter *)v14 recordsFromEvents:v8];
    }

    else
    {
      v15 = 0;
    }

    if ([(_DKSyncDeletedEventIDs *)v9 count])
    {
      v38 = v15;
      v39 = v10;
      v40 = v8;
      v43 = objc_opt_new();
      [(_DKSyncDeletedEventIDs *)v9 sourceDeviceIDs];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v49 = 0u;
      v16 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v45 = *v47;
        do
        {
          v18 = 0;
          do
          {
            if (*v47 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v46 + 1) + 8 * v18);
            v20 = objc_autoreleasePoolPush();
            v21 = v11;
            v22 = [*(v11 + 2376) zoneIDWithDeviceID:v19];
            v23 = [[_DKEventCKConverter alloc] initWithZoneID:v22];
            v24 = v9;
            v25 = [(_DKSyncDeletedEventIDs *)v9 deletedEventIDsForSourceDeviceID:v19];
            if ([v25 count])
            {
              v26 = [(_DKEventCKConverter *)v23 recordIDsFromEventIDs:v25];
              if ([v26 count])
              {
                [v43 addObjectsFromArray:v26];
              }
            }

            else
            {
              v26 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v42 = [objc_opt_class() description];
                *buf = 138543618;
                v51 = v42;
                v52 = 2112;
                v53 = v19;
                _os_log_error_impl(&dword_191750000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find deleted event ids for %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v20);
            ++v18;
            v9 = v24;
            v11 = v21;
          }

          while (v17 != v18);
          v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v17);
      }

      v10 = v39;
      v8 = v40;
      v15 = v38;
    }

    else
    {
      v43 = 0;
    }

    v27 = [v15 count];
    if (v27 != [v8 count])
    {
      v28 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = [objc_opt_class() description];
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count") - objc_msgSend(v15, "count")}];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
        *buf = 138543874;
        v51 = v32;
        v52 = 2112;
        v53 = v33;
        v54 = 2112;
        v55 = v34;
        _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Unable to convert %@ of %@ added events", buf, 0x20u);
      }
    }

    v29 = [v43 count];
    if (v29 != [(_DKSyncDeletedEventIDs *)v9 count])
    {
      v30 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = [objc_opt_class() description];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSyncDeletedEventIDs count](v9) - objc_msgSend(v43, "count")}];
        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v9)];
        *buf = 138543874;
        v51 = v35;
        v52 = 2112;
        v53 = v36;
        v54 = 2112;
        v55 = v37;
        _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Unable to convert %@ of %@ deleted events", buf, 0x20u);
      }
    }

    [(_DKSyncCloudKitKnowledgeStorage *)self syncUpToCloudWithRecordsToSave:v15 recordIDsToDelete:v43 completion:v10];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)syncUpToCloudWithRecordsToSave:(void *)a3 recordIDsToDelete:(void *)a4 completion:
{
  location[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = os_transaction_create();
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage syncUpToCloudWithRecordsToSave:recordIDsToDelete:completion:];
    }

    v12 = [[_DKModifyRecordsOperation alloc] initWithRecordsToSave:v7 recordIDsToDelete:v8];
    v13 = objc_opt_new();
    [(_DKModifyRecordsOperation *)v12 setGroup:v13];

    v14 = [(_DKModifyRecordsOperation *)v12 group];
    [v14 setName:@"SyncUpToCloud"];

    [(_DKModifyRecordsOperation *)v12 setSavePolicy:1];
    [(_DKModifyRecordsOperation *)v12 setAtomic:1];
    objc_initWeak(location, a1);
    objc_initWeak(&from, v12);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke;
    v24[3] = &unk_1E7367E58;
    objc_copyWeak(&v29, &from);
    v24[4] = a1;
    v25 = v7;
    v26 = v8;
    objc_copyWeak(&v30, location);
    v15 = v9;
    v28 = v15;
    v16 = v10;
    v27 = v16;
    [(_DKModifyRecordsOperation *)v12 setModifyRecordsCompletionBlock:v24];
    v17 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncCloudKitKnowledgeStorage syncUpToCloudWithRecordsToSave:recordIDsToDelete:completion:];
    }

    v18 = [_DKSync2Policy policyForSyncTransportType:8];
    v23 = 0;
    v19 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v12 dependent:1 policy:v18 error:&v23];
    v20 = v23;
    if (v15)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      (*(v15 + 2))(v15, v20);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)name
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not be called" userInfo:0];
  objc_exception_throw(v2);
}

- (int64_t)transportType
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not be called" userInfo:0];
  objc_exception_throw(v2);
}

- (id)executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob
{
  keys[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *MEMORY[0x1E69E9C98];
    keys[0] = *MEMORY[0x1E69E9C68];
    keys[1] = v1;
    v2 = *MEMORY[0x1E69E9DB0];
    keys[2] = *MEMORY[0x1E69E9D88];
    keys[3] = v2;
    v3 = *MEMORY[0x1E69E9DA8];
    keys[4] = *MEMORY[0x1E69E9D68];
    keys[5] = v3;
    values[0] = xpc_int64_create(0);
    values[1] = xpc_int64_create(1);
    values[2] = xpc_BOOL_create(0);
    values[3] = xpc_BOOL_create(1);
    values[4] = xpc_string_create(*MEMORY[0x1E69E9D78]);
    values[5] = xpc_BOOL_create(1);
    v4 = xpc_dictionary_create(keys, values, 6uLL);
    for (i = 5; i != -1; --i)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate) connection:didReceivePublicToken:];
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate) connection:didReceiveIncomingMessage:];
  }

  [(_DKKeyValueStore *)self->_keyValueStore setBool:1 forKey:@"DatabaseChangesExist"];
  v7 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate) connection:didReceiveIncomingMessage:];
  }

  if ([(_DKSyncPeerStatusTracker *)self->_tracker isSingleDevice])
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate) connection:didReceiveIncomingMessage:];
    }

    [(_DKSyncCloudKitKnowledgeStorage *)self performUpdateSourceDeviceIdentifiersWithCompletion:?];
  }
}

- (void)_unregisterCloudSyncAvailablityObserver
{
  if (a1 && *(a1 + 48) == 1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 removeObserver:a1 name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
    *(a1 + 48) = 0;
  }
}

- (void)_registerCloudSyncAvailablityObserver
{
  if (a1 && (*(a1 + 48) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:a1 selector:sel__cloudSyncAvailabilityDidChange_ name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
    *(a1 + 48) = 1;
  }
}

- (void)finishStartBecauseCloudIsAvailable
{
  if (a1)
  {
    if ([(_DKSyncCloudKitKnowledgeStorage *)a1 startShouldUpdateSourceDeviceIdentifiers])
    {
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v3 = __69___DKSyncCloudKitKnowledgeStorage_finishStartBecauseCloudIsAvailable__block_invoke;
      v4 = &unk_1E73675F8;
      v5 = a1;
      [(_DKSyncCloudKitKnowledgeStorage *)a1 registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:v2];
    }

    else
    {

      [(_DKSyncCloudKitKnowledgeStorage *)a1 finishStartOrError:?];
    }
  }
}

- (void)_createPushConnection
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 && !*(a1 + 64))
  {
    v2 = [_CDEntitlementsUtilities entitlementValueForKey:@"aps-environment"];
    v3 = v2;
    v4 = @"production";
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;

    v6 = [_CDEntitlementsUtilities entitlementValueForKey:@"aps-connection-initiate"];
    if (!v6)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Missing required entitlements, cannot enable push", v30, 0xCu);
      }

      goto LABEL_12;
    }

    v7 = objc_alloc(MEMORY[0x1E698CF30]);
    v8 = +[_DKSyncSerializer underlyingQueue];
    v9 = [v7 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.coreduet.knowledge.sync.push" queue:v8];
    v10 = *(a1 + 64);
    *(a1 + 64) = v9;

    v11 = *(a1 + 64);
    if (v11)
    {
      [v11 setEnabledTopics:0 ignoredTopics:0 opportunisticTopics:&unk_1F05EF1E8];
      [*(a1 + 64) setDelegate:a1];
      v12 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_44(v12))
      {
        v13 = [objc_opt_class() description];
        OUTLINED_FUNCTION_13();
        v18 = _CDPrettyPrintCollection(v14, v15, v16, v17);
        OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_22_0();
        v31 = v20;
        v21 = "%{public}@: Created connection for topics: %@";
LABEL_15:
        OUTLINED_FUNCTION_33(&dword_191750000, v7, v19, v21, v30);
      }
    }

    else
    {
      v23 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_44(v23))
      {
        v13 = [objc_opt_class() description];
        OUTLINED_FUNCTION_13();
        v18 = _CDPrettyPrintCollection(v25, v26, v27, v28);
        OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_22_0();
        v31 = v29;
        v21 = "%{public}@: Failed to create connection for topics: %@";
        goto LABEL_15;
      }
    }

LABEL_12:
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unregisterUpdateSourceDeviceIdentifiersPeriodicJob
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(a1 + 40))
    {
      v3 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_80(v3))
      {
        v7 = [objc_opt_class() description];
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_11_3();
        _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
      }

      v4 = +[_CDPeriodicScheduler sharedInstance];
      [v4 unregisterJob:@"com.apple.coreduet.sync.update-source-device-identifiers"];

      v5 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishStartOrError:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = [objc_opt_class() description];
        v9 = [v3 domain];
        [v3 code];
        v10 = 138544130;
        v11 = v8;
        OUTLINED_FUNCTION_8_2();
        v12 = v3;
        _os_log_error_impl(&dword_191750000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to finish start: %{public}@:%lld (%@)", &v10, 0x2Au);
      }
    }

    else
    {
      +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      objc_claimAutoreleasedReturnValue();
      v6 = OUTLINED_FUNCTION_16_0();
      [(_DKSyncCloudKitKnowledgeStorage *)v6 configureCloudPseudoPeerWithMySyncZoneID:v4];
      if (([*(a1 + 16) BOOLForKey:@"DidRegisterDatabaseChangesSubscription"] & 1) == 0)
      {
        [(_DKSyncCloudKitKnowledgeStorage *)a1 _registerDatabaseChangesSubscription];
      }

      if ((*(a1 + 152) & 1) == 0)
      {
        *(a1 + 152) = 1;
        v7 = +[_CDObservationCenter sharedInstance];
        [v7 postNotificationName:@"_DKCloudTransportAvailablityChangedNotification" userInfo:0 sender:a1];
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)configureCloudPseudoPeerWithMySyncZoneID:(id *)a1
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a2;
    v5 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v4];
    v6 = a1[4];
    v7 = [v4 zoneName];

    v8 = [v6 peerWithZoneName:v7 sourceDeviceID:v5];

    [v8 setMe:1];
    [a1[4] addActiveTransports:8 toPeer:v8];
    [a1[4] addActiveTransports:4 toPeer:v8];
    v9 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_44(v9))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v11 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_73() me];
      v12 = [v8 identifier];
      v13 = [v8 model];
      if (v13)
      {
        v14 = MEMORY[0x1E696AEC0];
        v2 = [v8 model];
        v11 = [v14 stringWithFormat:@" (%@)", v2];
      }

      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_12_1();
      _os_log_debug_impl(v15, v16, v17, v18, v19, 0x2Au);
      if (v13)
      {
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerDatabaseChangesSubscription
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v3 setShouldSendContentAvailable:1];
    v4 = [objc_alloc(MEMORY[0x1E695B8C0]) initWithSubscriptionID:@"com.apple.knowledgestore4.database.changes"];
    [v4 setNotificationInfo:v3];
    v5 = objc_alloc_init(MEMORY[0x1E695B9C8]);
    v16[0] = v4;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_71() setSubscriptionsToSave:v1];

    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v11 = __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke;
    v12 = &unk_1E73679F8;
    v13 = a1;
    [v5 setModifySubscriptionsCompletionBlock:v10];
    v6 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_79(v6))
    {
      v7 = [objc_opt_class() description];
      *buf = 138543362;
      v15 = v7;
      _os_log_debug_impl(&dword_191750000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: Queuing operation to register a database changes subscription", buf, 0xCu);
    }

    v9 = 0;
    [(_DKSyncCloudKitKnowledgeStorage *)a1 _queueOperationForPrivateCloudDatabase:v5 dependent:0 policy:0 error:&v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_queueOperationForPrivateCloudDatabase:(int)a3 dependent:(void *)a4 policy:(void *)a5 error:
{
  v98 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  if (!a1)
  {
    v21 = 0;
    goto LABEL_77;
  }

  v11 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v11);

  if (a5)
  {
    *a5 = 0;
  }

  v12 = *(a1 + 56);
  if (!v12)
  {
    v13 = objc_opt_new();
    [v13 setUseZoneWidePCS:1];
    v11 = @"com.apple.knowledgestore4";
    v14 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.knowledgestore4" environment:1];
    v15 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v14 options:v13];
    v16 = *(a1 + 56);
    *(a1 + 56) = v15;

    if (!*(a1 + 56))
    {
      v35 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v63 = [objc_opt_class() description];
        v94 = 138543618;
        v95 = v63;
        v96 = 2112;
        v97 = @"com.apple.knowledgestore4";
        OUTLINED_FUNCTION_43(&dword_191750000, v35, v64, "%{public}@: Unable to instantiate container: %@", &v94);
      }

      if (a5)
      {
        *a5 = +[_DKSyncErrors disabled];
      }

LABEL_36:
      v21 = 0;
      goto LABEL_76;
    }

    v12 = *(a1 + 56);
  }

  v13 = [v12 privateCloudDatabase];
  if (v13)
  {
    v17 = objc_opt_new();
    [v17 setContainer:*(a1 + 56)];
    [v17 setTimeoutIntervalForResource:1800.0];
    [v17 setAutomaticallyRetryNetworkFailures:0];
    v18 = +[_DKSyncUrgencyTracker sharedInstance];
    if ([(_DKEventData *)v18 version]> 9)
    {
      [v17 setAllowsCellularAccess:1];
      [v17 setQualityOfService:17];
      v19 = 0;
    }

    else
    {
      [v17 setAllowsCellularAccess:0];
      v19 = 2;
    }

    [v17 setDiscretionaryNetworkBehavior:v19];
    v22 = [*(a1 + 160) syncType];
    v83 = v22;
    if (v22)
    {
      v23 = [(_DKSyncType *)v22 xpcActivity];
      if (v23)
      {
LABEL_17:
        v24 = v23;
        v82 = v23;
        if (!xpc_activity_get_state(v23))
        {
          v36 = v18;
          v37 = +[_CDLogging syncChannel];
          if (OUTLINED_FUNCTION_60(v37))
          {
            [objc_opt_class() description];
            v95 = v94 = 138543618;
            v96 = 2048;
            v97 = 0;
            OUTLINED_FUNCTION_19();
            _os_log_error_impl(v65, v66, v67, v68, v69, 0x16u);
          }

          if (a5)
          {
            *a5 = +[_DKSyncErrors internalFailure];
          }

          v92 = 0;
          goto LABEL_75;
        }

        v78 = v18;
        [v17 setXpcActivity:v24];
LABEL_23:
        [v9 setConfiguration:v17];
        [v9 setDatabase:v13];
        if (a3)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 136));
          v26 = WeakRetained;
          if (WeakRetained && ([WeakRetained isFinished] & 1) == 0)
          {
            [v9 addDependency:v26];
          }

          objc_storeWeak((a1 + 136), v9);
        }

        v80 = v10;
        v27 = objc_alloc(MEMORY[0x1E695B8E8]);
        v28 = [v9 group];
        v29 = [v28 name];
        v30 = [v27 initWithEventName:v29];

        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __97___DKSyncCloudKitKnowledgeStorage__queueOperationForPrivateCloudDatabase_dependent_policy_error___block_invoke;
        v88[3] = &unk_1E7367A48;
        v31 = v30;
        v89 = v31;
        v32 = v9;
        v90 = v32;
        v91 = a1;
        [_DKSyncBlockOperation blockOperationWithBlock:v88];
        v77 = v76 = v32;
        [v77 addDependency:v32];
        v33 = v83;
        if (!v83)
        {
          goto LABEL_65;
        }

        if (([(_DKSyncType *)v83 forceSync]& 1) != 0)
        {
          v34 = @"forced";
        }

        else if (([(_DKSyncType *)v83 isPeriodicSync]& 1) != 0)
        {
          v34 = @"periodic";
        }

        else if (([(_DKSyncType *)v83 isTriggeredSync]& 1) != 0)
        {
          v34 = @"triggered";
        }

        else
        {
          if (![(_DKSyncType *)v83 isInitialSync])
          {
            goto LABEL_49;
          }

          v34 = @"initial";
        }

        [v31 setMetricValue:v34 forKey:@"type"];
LABEL_49:
        v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncType urgency](v83)];
        [v31 setMetricValue:v38 forKey:@"urgency"];

        if ([(_DKSyncType *)v83 isPeriodicSync])
        {
          v38 = [MEMORY[0x1E696AD98] numberWithDouble:-[_DKSyncType periodicSyncInterval](v83)];
          [v31 setMetricValue:v38 forKey:@"interval"];
        }

        if (![(_DKSyncType *)v83 isTriggeredSync])
        {
          goto LABEL_61;
        }

        if ([(_DKSyncType *)v83 didActivatePeer])
        {
          v39 = @"didActivatePeer";
        }

        else if ([(_DKSyncType *)v83 didReceivePush])
        {
          v39 = @"didReceivePush";
        }

        else if ([(_DKSyncType *)v83 didAddSyncedEvents])
        {
          v39 = @"didAddSyncedEvents";
        }

        else
        {
          if (![(_DKSyncType *)v83 didDeleteSyncedEvents])
          {
            v62 = +[_CDLogging syncChannel];
            if (OUTLINED_FUNCTION_60(v62))
            {
              v70 = [objc_opt_class() description];
              v94 = 138543362;
              v95 = v70;
              OUTLINED_FUNCTION_19();
              _os_log_error_impl(v71, v72, v73, v74, v75, 0xCu);

              v33 = v83;
            }

            goto LABEL_61;
          }

          v39 = @"didDeleteSyncedEvents";
        }

        [v31 setMetricValue:v39 forKey:@"reason"];
LABEL_61:
        if ([(_DKSyncType *)v33 isSingleDevice])
        {
          v45 = @"YES";
        }

        else
        {
          v45 = @"NO";
        }

        [v31 setMetricValue:v45 forKey:@"isSingleDevice"];
LABEL_65:
        v79 = v13;
        v81 = v9;
        v46 = +[_DKSyncUrgencyTracker sharedInstance];
        v47 = [(_DKSyncUrgencyTracker *)v46 allUrgencies];

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v48 = v47;
        v49 = [v48 countByEnumeratingWithState:&v84 objects:v93 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v85;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v85 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v84 + 1) + 8 * i);
              v54 = [v48 objectForKeyedSubscript:v53];
              v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientUrgency: %@", v53];
              [v31 setMetricValue:v54 forKey:v55];
            }

            v50 = [v48 countByEnumeratingWithState:&v84 objects:v93 count:16];
          }

          while (v50);
        }

        v56 = [_DKSync2Policy policyForSyncTransportType:4];
        v57 = [_DKSync2Policy policyForSyncTransportType:8];
        if (v56 | v57)
        {
          v58 = [v56 version];
          [v31 setMetricValue:v58 forKey:@"version(down)"];

          v59 = [v57 version];
          [v31 setMetricValue:v59 forKey:@"version(up)"];
        }

        [_DKSyncSerializer addOperation:v76];
        [*(a1 + 144) addObject:v76];
        [_DKSyncSerializer addOperation:v77];
        [*(a1 + 144) addObject:v77];
        v92 = 1;

        v10 = v80;
        v9 = v81;
        v13 = v79;
        v36 = v78;
LABEL_75:

        v21 = v92;
        goto LABEL_76;
      }
    }

    else if (*(a1 + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [*(a1 + 40) activity];
        if (v23)
        {
          goto LABEL_17;
        }
      }
    }

    v78 = v18;
    v82 = 0;
    goto LABEL_23;
  }

  v20 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_60(v20))
  {
    [objc_opt_class() description];
    v95 = v94 = 138543362;
    OUTLINED_FUNCTION_19();
    _os_log_error_impl(v40, v41, v42, v43, v44, 0xCu);
  }

  if (!a5)
  {
    goto LABEL_36;
  }

  +[_DKSyncErrors disabled];
  *a5 = v21 = 0;
LABEL_76:

LABEL_77:
  v60 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)_handleAnySpecialnessWithOperationError:(id *)a1
{
  v145 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = v4;
    if ([_DKCKError isUnrecoverableDecryptionError:v6])
    {
      v113 = v5;
      if (_MergedGlobals != -1)
      {
        dispatch_once(&_MergedGlobals, &__block_literal_global_66);
      }

      v7 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_60(v7))
      {
        v102 = [objc_opt_class() description];
        v103 = [v6 domain];
        [v6 code];
        OUTLINED_FUNCTION_65();
        *(v104 + 196) = v102;
        v139 = 2114;
        *(v104 + 206) = v103;
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(v105, v106, v107, v108, v109, 0x2Au);
      }

      v112 = v6;
      v8 = [_DKCKError zoneIDsWithUnrecoverableDecryptionError:v6];
      v9 = +[_CDLogging syncChannel];
      v10 = 0x1E7366000uLL;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = [objc_opt_class() description];
        OUTLINED_FUNCTION_13();
        v16 = _CDPrettyPrintCollection(v12, v13, v14, v15);
        OUTLINED_FUNCTION_65();
        *(v17 + 196) = v11;
        v139 = 2114;
        *(v17 + 206) = v18;
        _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "%{public}@: Zones with unrecoverable decryption errors: %{public}@", buf, 0x16u);

        v10 = 0x1E7366000uLL;
      }

      v124 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      v19 = objc_opt_new();
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v20 = v8;
      v21 = [v20 countByEnumeratingWithState:&v133 objects:v144 count:16];
      v123 = v20;
      if (v21)
      {
        v23 = v21;
        v24 = *v134;
        *&v22 = 138543618;
        v121 = v22;
        *&v22 = 138544386;
        v116 = v22;
        do
        {
          v25 = 0;
          do
          {
            if (*v134 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v133 + 1) + 8 * v25);
            if (![v26 isEqual:v124])
            {
              v28 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v26];
              if (v28)
              {
                v29 = [a1[4] existingPeerWithSourceDeviceID:v28];
                v9 = v29;
                if (v29)
                {
                  v8 = [v29 zoneName];

                  if (v8)
                  {
                    v30 = [*(v10 + 648) syncChannel];
                    if (OUTLINED_FUNCTION_60(v30))
                    {
                      v119 = [objc_opt_class() description];
                      v64 = [v9 me];
                      v65 = @"pseudo ";
                      if (!v64)
                      {
                        v65 = &stru_1F05B9908;
                      }

                      v117 = v65;
                      v120 = [v9 identifier];
                      v118 = [v9 model];
                      if (v118)
                      {
                        v66 = MEMORY[0x1E696AEC0];
                        v115 = [v9 model];
                        v110 = v115;
                        v114 = [v66 stringWithFormat:@" (%@)"];
                      }

                      OUTLINED_FUNCTION_65();
                      *(v67 + 196) = v119;
                      v139 = 2114;
                      *(v67 + 206) = v117;
                      v140 = 2114;
                      v141 = v120;
                      v142 = 2114;
                      *(v67 + 226) = v68;
                      v143 = 2114;
                      *(v67 + 236) = v26;
                      OUTLINED_FUNCTION_19();
                      _os_log_error_impl(v69, v70, v71, "%{public}@: Deactivating %{public}@peer %{public}@%{public}@ due to unrecoverable decryption error for zone %{public}@", v72, 0x34u);
                      if (v118)
                      {
                      }

                      v10 = 0x1E7366000;
                    }

                    [a1[4] removeActiveTransports:4 fromPeer:v9];
                    [a1 setHasAdditionsFlag:0 forPeer:v9];
                    [a1 setHasDeletionsFlag:0 forPeer:v9];
                    goto LABEL_29;
                  }
                }

                v31 = [*(v10 + 648) syncChannel];
                if (OUTLINED_FUNCTION_63(v31))
                {
                  v44 = [objc_opt_class() description];
                  OUTLINED_FUNCTION_9_1(v44, v45, v46, v47, v48, v49, v50, v51, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119, v44, v121);
                  OUTLINED_FUNCTION_17_1();
                  _os_log_debug_impl(v52, v53, v54, "%{public}@: Ignoring unrecoverable decryption error for unknown peer zone %{public}@", v55, 0x16u);
                }

LABEL_27:
              }

              else
              {
                v32 = [*(v10 + 648) syncChannel];
                if (OUTLINED_FUNCTION_80(v32))
                {
                  v8 = [objc_opt_class() description];
                  OUTLINED_FUNCTION_9_1(v8, v56, v57, v58, v59, v60, v61, v62, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119, v120, v121);
                  _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring unrecoverable decryption error for non-peer zone %{public}@", v63, 0x16u);
                  goto LABEL_27;
                }
              }

LABEL_29:

              v20 = v123;
              goto LABEL_30;
            }

            [(_DKEventStatsCounter *)qword_1EADBD5B8 incrementCountByNumber:?];
            if ([a1[15] containsObject:v26])
            {
              v27 = [*(v10 + 648) syncChannel];
              if (OUTLINED_FUNCTION_60(v27))
              {
                v9 = [objc_opt_class() description];
                OUTLINED_FUNCTION_9_1(v9, v33, v34, v35, v36, v37, v38, v39, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119, v120, v121);
                OUTLINED_FUNCTION_19();
                _os_log_error_impl(v40, v41, v42, "%{public}@: Repeating unrecoverable decryption error fix for zone %{public}@", v43, 0x16u);
              }

              [(_DKEventStatsCounter *)qword_1EADBD5C0 incrementCountByNumber:?];
            }

            [v19 addObject:v26];
LABEL_30:
            ++v25;
          }

          while (v23 != v25);
          v73 = [v20 countByEnumeratingWithState:&v133 objects:v144 count:16];
          v23 = v73;
        }

        while (v73);
      }

      v74 = a1[15];
      if (v74)
      {
        [v74 unionSet:v20];
      }

      else
      {
        v79 = [v20 mutableCopy];
        v80 = a1[15];
        a1[15] = v79;
      }

      v81 = objc_opt_new();
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v82 = v19;
      v83 = [v82 countByEnumeratingWithState:&v129 objects:v137 count:16];
      if (v83)
      {
        v85 = v83;
        v86 = *v130;
        *&v84 = 138543618;
        v122 = v84;
        do
        {
          for (i = 0; i != v85; ++i)
          {
            if (*v130 != v86)
            {
              objc_enumerationMutation(v82);
            }

            v88 = *(*(&v129 + 1) + 8 * i);
            v89 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
            {
              v90 = [objc_opt_class() description];
              OUTLINED_FUNCTION_9_1(v90, v91, v92, v93, v94, v95, v96, v97, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, v118, v119, v120, v122);
              _os_log_impl(&dword_191750000, v89, OS_LOG_TYPE_INFO, "%{public}@: Fixing unrecoverable decryption error for zone %{public}@", v98, 0x16u);
            }

            if ([v88 isEqual:v124])
            {
              [a1[2] setBool:0 forKey:@"HaveCreatedMyZone"];
            }

            v125[0] = MEMORY[0x1E69E9820];
            v125[1] = 3221225472;
            v125[2] = __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_87;
            v125[3] = &unk_1E7367A20;
            v125[4] = a1;
            v125[5] = v88;
            v126 = v124;
            v127 = v81;
            v99 = v82;
            v128 = v99;
            [(_DKSyncCloudKitKnowledgeStorage *)a1 _deleteZoneWithZoneID:v88 completion:v125];
          }

          v85 = [v99 countByEnumeratingWithState:&v129 objects:v137 count:16];
        }

        while (v85);
      }

      v6 = [_DKCKError errorMinusUnrecoverableDecryptionErrorsFromPartialError:v112];

      v5 = v113;
      v75 = v123;
    }

    else
    {
      if (![_DKCKError isIgnorableError:v6])
      {
        goto LABEL_60;
      }

      v75 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = [objc_opt_class() description];
        v77 = [v6 domain];
        [v6 code];
        OUTLINED_FUNCTION_65();
        *(v78 + 196) = v76;
        v139 = 2114;
        *(v78 + 206) = v77;
        OUTLINED_FUNCTION_35();
        _os_log_impl(&dword_191750000, v75, OS_LOG_TYPE_INFO, "%{public}@: Failure is temporary, ignoring : %{public}@:%lld (%@)", buf, 0x2Au);
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_60:

  v100 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)performUpdateSourceDeviceIdentifiersWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = *(a1 + 24);
    v6 = +[_DKSyncSerializer underlyingQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86___DKSyncCloudKitKnowledgeStorage_performUpdateSourceDeviceIdentifiersWithCompletion___block_invoke;
    v13[3] = &unk_1E73674E0;
    v13[4] = a1;
    v14 = v3;
    OUTLINED_FUNCTION_0_1();
    v9 = 3221225472;
    v10 = __86___DKSyncCloudKitKnowledgeStorage_performUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2;
    v11 = &unk_1E73678E8;
    v12 = v7;
    [v5 performNoMoreOftenInMinutesThan:@"UpdateSourceDeviceIdentifiers" name:v6 queue:v13 activityBlock:v8 throttleBlock:60.0];
  }
}

- (uint64_t)scheduleRetryUpdateSourceDeviceIdentifiers
{
  if (result)
  {
    v1 = *(result + 72);
    v2 = v1 + v1;
    v3 = v1 == 0.0;
    v4 = 3600.0;
    if (!v3)
    {
      v4 = v2;
    }

    *(result + 72) = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke;
    v5[3] = &unk_1E7367440;
    v5[4] = result;
    return [_DKSyncSerializer performAfter:v5 block:?];
  }

  return result;
}

- (void)updateSourceDeviceIdentifiersWithRecordZonesByZoneID:(void *)a3 completion:
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_63(v7))
    {
      v52 = [objc_opt_class() description];
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      *buf = 138543618;
      v80 = v52;
      v82 = v81 = 2112;
      OUTLINED_FUNCTION_17_1();
      _os_log_debug_impl(v53, v54, v55, v56, v57, 0x16u);
    }

    v64 = v6;

    v68 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
    v8 = MEMORY[0x1E695DF90];
    v66 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v65 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v9)
    {
      v10 = v9;
      v67 = 0;
      v11 = *v75;
      v12 = v68;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v75 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v74 + 1) + 8 * i);
          v8 = [v14 zoneName];
          if ([v8 hasPrefix:@"source-device-id:"])
          {
            v15 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v14];
            if ([v14 isEqual:v12])
            {
              v16 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v19 = [objc_opt_class() description];
                OUTLINED_FUNCTION_14_1(v19, v20, v21, v22, v23, v24, v25, v26, v64, v65, v27);
                *(v28 + 14) = v15;
                _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Found local device id %@", buf, 0x16u);

                v12 = v68;
              }

              v67 = 1;
            }

            else
            {
              v17 = [v15 length];
              v16 = +[_CDLogging syncChannel];
              v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
              if (v17)
              {
                if (v18)
                {
                  v29 = [objc_opt_class() description];
                  OUTLINED_FUNCTION_14_1(v29, v30, v31, v32, v33, v34, v35, v36, v64, v65, v37);
                  *(v38 + 14) = v15;
                  _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Found peer source device id %@", buf, 0x16u);
                }

                [v66 setObject:v14 forKeyedSubscript:v15];
                v16 = [obj objectForKeyedSubscript:v14];
                [a1[11] setObject:v16 forKeyedSubscript:v14];
              }

              else if (v18)
              {
                v39 = [objc_opt_class() description];
                OUTLINED_FUNCTION_14_1(v39, v40, v41, v42, v43, v44, v45, v46, v64, v65, v47);
                *(v48 + 14) = v8;
                _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Invalid source device id from zone name: %@", buf, 0x16u);
              }

              v12 = v68;
            }
          }

          [a1[15] removeObject:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v10);
    }

    else
    {
      v67 = 0;
      v12 = v68;
    }

    v49 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_63(v49))
    {
      v58 = [objc_opt_class() description];
      *buf = 138543362;
      v80 = v58;
      OUTLINED_FUNCTION_17_1();
      _os_log_debug_impl(v59, v60, v61, v62, v63, 0xCu);
    }

    v6 = v64;
    v5 = v65;
    if (v67)
    {
      v50 = v66;
      [(_DKSyncCloudKitKnowledgeStorage *)a1 finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:v66 orError:0 completion:v64];
    }

    else
    {
      [a1[2] setBool:0 forKey:@"HaveCreatedMyZone"];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __99___DKSyncCloudKitKnowledgeStorage_updateSourceDeviceIdentifiersWithRecordZonesByZoneID_completion___block_invoke;
      v70[3] = &unk_1E7367AC0;
      v70[4] = a1;
      v71 = v12;
      v50 = v66;
      v72 = v66;
      v73 = v64;
      [(_DKSyncCloudKitKnowledgeStorage *)a1 _createZoneWithZoneID:v71 completion:v70];
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:(void *)a3 orError:(void *)a4 completion:
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    *(a1 + 72) = 0;
    [(_DKSyncCloudKitKnowledgeStorage *)a1 setZoneIDsBySourceDeviceID:v10];
    if (v9)
    {
LABEL_4:
      (v9)[2](v9, v7);
    }
  }

LABEL_5:
}

- (void)setZoneIDsBySourceDeviceID:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:{v10, v13}];
          [(_DKSyncCloudKitKnowledgeStorage *)a1 configurePeerWithSourceDeviceID:v10 zoneID:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)configurePeerWithSourceDeviceID:(void *)a3 zoneID:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [*(a1 + 32) existingPeerWithSourceDeviceID:v6];
    v9 = v8;
    if (v8 && ([v8 zoneName], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if (([*(a1 + 32) activeTransportsForPeer:v9] & 4) == 0)
      {
        v13 = +[_CDLogging syncChannel];
        if (OUTLINED_FUNCTION_79(v13))
        {
          v21 = [objc_opt_class() description];
          v14 = &stru_1F05B9908;
          if ([v9 me])
          {
            v15 = @"pseudo ";
          }

          else
          {
            v15 = &stru_1F05B9908;
          }

          [v9 identifier];
          objc_claimAutoreleasedReturnValue();
          v16 = [OUTLINED_FUNCTION_67() model];
          if (v16)
          {
            v17 = MEMORY[0x1E696AEC0];
            v20 = [v9 model];
            v14 = [v17 stringWithFormat:@" (%@)", v20];
          }

          v18 = [v7 zoneName];
          v25 = 138544386;
          v26 = v21;
          v27 = 2114;
          v28 = v15;
          v29 = 2114;
          v30 = v3;
          v31 = 2114;
          v32 = v14;
          v33 = 2112;
          v34 = v18;
          OUTLINED_FUNCTION_49(&dword_191750000, v10, v19, "%{public}@: Instantiated existing %{public}@peer %{public}@%{public}@ with zone name %@", &v25);

          if (v16)
          {
          }
        }

        [(_DKSyncCloudKitKnowledgeStorage *)a1 populateLastSeenDateIfNeededByPeer:v9];
        [*(a1 + 32) addActiveTransports:4 toPeer:v9];
      }
    }

    else
    {
      v12 = [*(a1 + 88) objectForKeyedSubscript:v7];
      if (v12)
      {
        [(_DKSyncCloudKitKnowledgeStorage *)a1 fastForwardPastDeletionsInNewZone:v12 sourceDeviceID:v6];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __74___DKSyncCloudKitKnowledgeStorage_configurePeerWithSourceDeviceID_zoneID___block_invoke;
        v22[3] = &unk_1E7367C28;
        v22[4] = a1;
        v23 = v7;
        v24 = v6;
        [(_DKSyncCloudKitKnowledgeStorage *)a1 performUpdateSourceDeviceIdentifiersWithCompletion:v22];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setHasZoneAdditionChanges:(uint64_t)a3 forZone:(uint64_t)a4
{
  OUTLINED_FUNCTION_39();
  v11 = v10;
  v13 = v12;
  v45 = *MEMORY[0x1E69E9840];
  v15 = v14;
  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = [(_DKSyncCloudKitKnowledgeStorage *)v13 hasZoneAdditionChangesForZone:v15];
  if ((v11 & 1) != 0 || !v16)
  {
    if (v16 & 1 | ((v11 & 1) == 0))
    {
      goto LABEL_14;
    }

    [*(v13 + 104) addObject:v15];
    v18 = +[_CDLogging syncChannel];
    if (!OUTLINED_FUNCTION_44(v18))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  [*(v13 + 104) removeObject:v15];
  v17 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_44(v17))
  {
LABEL_15:
    v32 = [objc_opt_class() description];
    [*(v13 + 104) count];
    v33 = [OUTLINED_FUNCTION_37() numberWithUnsignedInteger:?];
    v34 = [*(v13 + 104) valueForKeyPath:@"zoneName"];
    OUTLINED_FUNCTION_13();
    v39 = _CDPrettyPrintCollection(v35, v36, v37, v38);
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_12_1();
    _os_log_debug_impl(v40, v41, v42, v43, v44, 0x2Au);
  }

LABEL_8:

  v19 = *(v13 + 104);
  OUTLINED_FUNCTION_45();
  v21 = [v20 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v22 = a10;
  if (v22)
  {
    v23 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      v26 = *(v13 + 104);
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_43(v27, v28, v29, v30, v31);
    }
  }

  else
  {
    [*(v13 + 16) setData:v21 forKey:@"ZoneIDsWithAdditionChanges"];
  }

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

- (void)setHasZoneDeletionChanges:(uint64_t)a3 forZone:(uint64_t)a4
{
  OUTLINED_FUNCTION_39();
  v11 = v10;
  v13 = v12;
  v45 = *MEMORY[0x1E69E9840];
  v15 = v14;
  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = [(_DKSyncCloudKitKnowledgeStorage *)v13 hasZoneDeletionChangesForZone:v15];
  if ((v11 & 1) != 0 || !v16)
  {
    if (v16 & 1 | ((v11 & 1) == 0))
    {
      goto LABEL_14;
    }

    [*(v13 + 112) addObject:v15];
    v18 = +[_CDLogging syncChannel];
    if (!OUTLINED_FUNCTION_44(v18))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  [*(v13 + 112) removeObject:v15];
  v17 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_44(v17))
  {
LABEL_15:
    v32 = [objc_opt_class() description];
    [*(v13 + 112) count];
    v33 = [OUTLINED_FUNCTION_37() numberWithUnsignedInteger:?];
    v34 = [*(v13 + 112) valueForKeyPath:@"zoneName"];
    OUTLINED_FUNCTION_13();
    v39 = _CDPrettyPrintCollection(v35, v36, v37, v38);
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_12_1();
    _os_log_debug_impl(v40, v41, v42, v43, v44, 0x2Au);
  }

LABEL_8:

  v19 = *(v13 + 112);
  OUTLINED_FUNCTION_45();
  v21 = [v20 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v22 = a10;
  if (v22)
  {
    v23 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      v26 = *(v13 + 112);
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_43(v27, v28, v29, v30, v31);
    }
  }

  else
  {
    [*(v13 + 16) setData:v21 forKey:@"ZoneIDsWithDeletionChanges"];
  }

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

- (void)addSourceDeviceIdentifierWithRecordZoneID:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [v3 zoneName];
    if ([v5 hasPrefix:@"source-device-id:"])
    {
      v6 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v3];
      +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_71() length])
      {
        if (([v3 isEqual:0x1E7366000uLL] & 1) == 0)
        {
          v7 = [*(a1 + 80) objectForKeyedSubscript:v6];

          if (!v7)
          {
            v9 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v10 = [objc_opt_class() description];
              OUTLINED_FUNCTION_8_0();
              v13 = v6;
              OUTLINED_FUNCTION_33(&dword_191750000, v9, v11, "%{public}@: Adding peer source device id %@", v12);
            }

            [*(a1 + 80) setObject:v3 forKeyedSubscript:v6];
            [(_DKSyncCloudKitKnowledgeStorage *)a1 configurePeerWithSourceDeviceID:v6 zoneID:v3];
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeSourceDeviceIdentifierWithRecordZoneID:(id *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [v3 zoneName];
    if ([v5 hasPrefix:@"source-device-id:"])
    {
      v6 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v3];
      +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_71() length])
      {
        if (([v3 isEqual:0x1E7366000uLL] & 1) == 0)
        {
          v7 = [a1[10] objectForKeyedSubscript:v6];

          if (v7)
          {
            v8 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v13 = [objc_opt_class() description];
              OUTLINED_FUNCTION_2_5();
              v16 = v6;
              OUTLINED_FUNCTION_33(&dword_191750000, v8, v14, "%{public}@: Deleting peer source device id %{public}@", v15);
            }

            [a1[10] setObject:0 forKeyedSubscript:v6];
            [a1[11] setObject:0 forKeyedSubscript:v3];
            v9 = a1[4];
            v10 = [v3 zoneName];
            v11 = [v9 peerWithZoneName:v10 sourceDeviceID:v6];

            [a1[4] removeActiveTransports:4 fromPeer:v11];
            [a1 setHasAdditionsFlag:0 forPeer:v11];
            [a1 setHasDeletionsFlag:0 forPeer:v11];
            if (![a1[4] activeTransportsForPeer:v11])
            {
              [a1[4] removePeer:v11];
            }
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)commitFetchDatabaseChangesServerChangeToken
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_63(v3))
    {
      v16 = [objc_opt_class() description];
      OUTLINED_FUNCTION_10_3();
      v32 = @"FetchDatabaseChangesServerChangeToken";
      OUTLINED_FUNCTION_17_1();
      _os_log_debug_impl(v17, v18, v19, v20, v21, 0x16u);
    }

    if (*(a1 + 128))
    {
      OUTLINED_FUNCTION_45();
      v5 = [v4 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
      v2 = v28;
      v6 = +[_CDLogging syncChannel];
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v22 = [objc_opt_class() description];
          v23 = *(a1 + 128);
          *buf = 138544130;
          v30 = v22;
          v31 = 2114;
          v32 = @"FetchDatabaseChangesServerChangeToken";
          v33 = 2112;
          v34 = v23;
          v35 = 2112;
          v36 = v5;
          _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Setting token %{public}@ to %@ (%@)", buf, 0x2Au);
        }

        [*(a1 + 16) setData:v5 forKey:@"FetchDatabaseChangesServerChangeToken"];
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_opt_class() description];
          v25 = [v2 domain];
          [v2 code];
          *buf = 138544386;
          v30 = v24;
          OUTLINED_FUNCTION_25_0();
          v32 = @"FetchDatabaseChangesServerChangeToken";
          v33 = v26;
          v34 = v25;
          OUTLINED_FUNCTION_23_0();
          v37 = v2;
          OUTLINED_FUNCTION_17(&dword_191750000, v7, v27, "%{public}@: Error archiving token %{public}@: %{public}@:%lld (%@)", buf);
        }
      }
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_63(v8))
      {
        v9 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_3();
        v32 = @"FetchDatabaseChangesServerChangeToken";
        OUTLINED_FUNCTION_17_1();
        _os_log_debug_impl(v10, v11, v12, v13, v14, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setPrewarmedFlag
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_80(v3))
    {
      v5 = [objc_opt_class() description];
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_3();
      _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
    }

    *(a1 + 97) = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)fastForwardPastDeletionsInNewZone:(void *)a3 sourceDeviceID:
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v8 = a3;
    v9 = [OUTLINED_FUNCTION_71() underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = [v7 zoneID];
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [objc_opt_class() description];
      v4 = [v10 zoneName];
      v33 = 138543618;
      v34 = v12;
      v35 = 2114;
      v36 = v4;
      OUTLINED_FUNCTION_33(&dword_191750000, v11, v13, "%{public}@: Fast forwarding past deletions in zone with name %{public}@", &v33);
    }

    v14 = [v7 currentServerChangeToken];
    if (v14)
    {
      [(_DKSyncCloudKitKnowledgeStorage *)a1 _setPreviousServerChangeToken:v14 forRecordZoneID:v10];
    }

    else
    {
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        v16 = [OUTLINED_FUNCTION_67() zoneName];
        v33 = 138543618;
        v34 = v4;
        v35 = 2114;
        v36 = v16;
        OUTLINED_FUNCTION_43(&dword_191750000, v15, v17, "%{public}@: Unable to fast forward past deletions in zone with name %{public}@ due to missing currentServerChangeToken", &v33);
      }
    }

    v18 = *(a1 + 32);
    v19 = [v10 zoneName];
    v20 = [v18 peerWithZoneName:v19 sourceDeviceID:v3];

    v21 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_79(v21))
    {
      v31 = v7;
      v32 = [objc_opt_class() description];
      v22 = &stru_1F05B9908;
      if ([v20 me])
      {
        v23 = @"pseudo ";
      }

      else
      {
        v23 = &stru_1F05B9908;
      }

      v24 = [v20 identifier];
      v25 = [v20 model];
      if (v25)
      {
        v26 = MEMORY[0x1E696AEC0];
        v30 = [v20 model];
        v22 = [v26 stringWithFormat:@" (%@)", v30];
      }

      v27 = [v10 zoneName];
      v33 = 138544386;
      v34 = v32;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v27;
      OUTLINED_FUNCTION_49(&dword_191750000, v3, v28, "%{public}@: Instantiated %{public}@peer %{public}@%{public}@ from new zone with name %{public}@", &v33);

      if (v25)
      {
      }

      v7 = v31;
    }

    [(_DKSyncCloudKitKnowledgeStorage *)a1 populateLastSeenDateIfNeededByPeer:v20];
    [*(a1 + 32) addActiveTransports:4 toPeer:v20];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (uint64_t)populateLastSeenDateIfNeededByPeer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7 = v3;
    v5 = [v3 lastSeenDate];
    if (!v5)
    {
      v3 = [v7 me];
      v4 = v7;
      if (v3)
      {
        goto LABEL_6;
      }

      v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1296000.0];
      [*(a1 + 32) setLastSeenDate:v5 onPeer:v7];
    }

    v4 = v7;
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)hasZoneAdditionChangesForZone:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v6 = __65___DKSyncCloudKitKnowledgeStorage_hasZoneAdditionChangesForZone___block_invoke;
    v7 = &unk_1E7367440;
    v8 = a1;
    if (hasZoneAdditionChangesForZone__onceToken != -1)
    {
      dispatch_once(&hasZoneAdditionChangesForZone__onceToken, block);
    }

    a1 = [*(a1 + 104) containsObject:v3];
  }

  return a1;
}

- (uint64_t)hasZoneDeletionChangesForZone:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v6 = __65___DKSyncCloudKitKnowledgeStorage_hasZoneDeletionChangesForZone___block_invoke;
    v7 = &unk_1E7367440;
    v8 = a1;
    if (hasZoneDeletionChangesForZone__onceToken != -1)
    {
      dispatch_once(&hasZoneDeletionChangesForZone__onceToken, block);
    }

    a1 = [*(a1 + 112) containsObject:v3];
  }

  return a1;
}

- (void)syncDownDeletionsFromCloudWithZoneID:(uint64_t)a3 completion:(uint64_t)a4
{
  OUTLINED_FUNCTION_10_2();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v27;
  if (v29)
  {
    v33 = os_transaction_create();
    v34 = objc_opt_new();
    a9 = MEMORY[0x1E69E9820];
    a10 = 3221225472;
    a11 = __83___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_completion___block_invoke;
    a12 = &unk_1E7367D18;
    a13 = v34;
    v35 = v31;
    a14 = v35;
    v36 = v32;
    a15 = v33;
    a16 = v36;
    v37 = v33;
    v38 = v34;
    [(_DKSyncCloudKitKnowledgeStorage *)v29 syncDownDeletionsFromCloudWithZoneID:v35 deletedRecordIDsAndTypes:v38 attempt:1 completion:&a9];
  }

  OUTLINED_FUNCTION_9_0();
}

- (id)_previousServerChangeTokenKeyForRecordZoneID:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [a2 zoneName];
    v4 = [v2 stringWithFormat:@"FetchRecordZoneChangesPreviousServerChangeToken/%@", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetPreviousServerChangeTokenForRecordZoneID:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [(_DKSyncCloudKitKnowledgeStorage *)a1 _previousServerChangeTokenKeyForRecordZoneID:a2];
    [*(a1 + 16) removeObjectForKey:v4];
    v5 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_80(v5))
    {
      v7 = [objc_opt_class() description];
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_11_3();
      _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_44(v5))
    {
      v6 = [objc_opt_class() description];
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = @"com.apple.coreduet.sync.update-source-device-identifiers";
      OUTLINED_FUNCTION_33(&dword_191750000, v4, v7, "%{public}@: Running periodic job: %{public}@", &v18);
    }

    v8 = [*(a1 + 40) activity];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v13 = __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke;
    v14 = &unk_1E7367EA8;
    v15 = a1;
    v16 = v9;
    v17 = v3;
    v10 = v8;
    [(_DKSyncCloudKitKnowledgeStorage *)a1 performUpdateSourceDeviceIdentifiersWithCompletion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)startShouldUpdateSourceDeviceIdentifiers
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Single device should update synced device identifiers", v5);
}

- (void)registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createZoneWithZoneID:completion:.cold.1()
{
  OUTLINED_FUNCTION_68();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createZoneWithZoneID:completion:.cold.2()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Queuing operation to create zone", v5);
}

- (void)_deleteZoneWithZoneID:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Queuing operation to delete zone", v5);
}

- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Queuing operation to fetch sync device identifiers", v5);
}

- (void)fetchChangedZonesWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedZonesWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_68();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() description];
  v2 = [v0 domain];
  [v0 code];
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x34u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedZonesWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_68();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedZonesWithCompletion:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedZonesWithCompletion:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_33(&dword_191750000, v6, v4, "%{public}@: Queuing operation to fetch changed zones from token %{public}@", v5);
}

- (void)hasAdditionsFlagForPeer:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E695BA90]);
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B790]];
  *v0 = [(_DKSyncCloudKitKnowledgeStorage *)v1 hasZoneAdditionChangesForZone:v5];
}

- (void)hasAdditionsFlagForPeer:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_58(v1, v2, v3, v4, v5);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHasAdditionsFlag:(char)a3 forPeer:.cold.1(void *a1, uint64_t a2, char a3)
{
  v6 = objc_alloc(MEMORY[0x1E695BA90]);
  v7 = [a1 zoneName];
  v14 = [v6 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B790]];

  [(_DKSyncCloudKitKnowledgeStorage *)a2 setHasZoneAdditionChanges:v14 forZone:v8, v9, v10, v11, v12, v13, v14];
}

- (void)hasDeletionsFlagForPeer:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E695BA90]);
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B790]];
  *v0 = [(_DKSyncCloudKitKnowledgeStorage *)v1 hasZoneDeletionChangesForZone:v5];
}

- (void)setHasDeletionsFlag:(char)a3 forPeer:.cold.1(void *a1, uint64_t a2, char a3)
{
  v6 = objc_alloc(MEMORY[0x1E695BA90]);
  v7 = [a1 zoneName];
  v14 = [v6 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B790]];

  [(_DKSyncCloudKitKnowledgeStorage *)a2 setHasZoneDeletionChanges:v14 forZone:v8, v9, v10, v11, v12, v13, v14];
}

- (void)syncDownAdditionsFromCloudWithZoneID:windows:streamNames:limit:fetchOrder:completion:.cold.1()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_33(&dword_191750000, v6, v4, "%{public}@: Queuing operation to sync down records from %{public}@", v5);
}

- (uint64_t)syncDownAdditionsFromCloudWithZoneID:(uint64_t)a1 windows:(uint64_t *)a2 streamNames:limit:fetchOrder:completion:.cold.2(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = +[_DKSyncErrors internalFailure];
  *a2 = v4;
  (*(a1 + 16))(a1, 0, 0, v4);
  return 0;
}

- (void)syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:.cold.1()
{
  OUTLINED_FUNCTION_68();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:.cold.2()
{
  OUTLINED_FUNCTION_46();
  *v1 = 138543618;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_33(&dword_191750000, v5, v1, "%{public}@: Queuing operation to sync down deletions from the cloud for %@", v4);
}

- (void)syncDownDeletionsFromCloudWithZoneID:deletedRecordIDsAndTypes:attempt:completion:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)syncUpToCloudWithRecordsToSave:recordIDsToDelete:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)syncUpToCloudWithRecordsToSave:recordIDsToDelete:completion:.cold.2()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Queuing operation to sync to the cloud", v5);
}

@end