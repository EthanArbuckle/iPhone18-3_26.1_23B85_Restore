@interface _DKSyncCloudKitKnowledgeStorage
+ (id)deviceIDFromZoneID:(id)d;
+ (id)sharedInstance;
+ (id)zoneIDWithDeviceID:(id)d;
+ (void)setMySyncZoneID:(uint64_t)d;
- (BOOL)hasAdditionsFlagForPeer:(id)peer;
- (BOOL)hasDeletionsFlagForPeer:(id)peer;
- (_DKSyncCloudKitKnowledgeStorage)init;
- (id)_handleAnySpecialnessWithOperationError:(id *)error;
- (id)_previousServerChangeTokenKeyForRecordZoneID:(uint64_t)d;
- (id)executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob;
- (id)name;
- (int64_t)transportType;
- (uint64_t)_queueOperationForPrivateCloudDatabase:(int)database dependent:(void *)dependent policy:(void *)policy error:;
- (uint64_t)hasZoneAdditionChangesForZone:(uint64_t)zone;
- (uint64_t)hasZoneDeletionChangesForZone:(uint64_t)zone;
- (uint64_t)populateLastSeenDateIfNeededByPeer:(uint64_t)peer;
- (uint64_t)scheduleRetryUpdateSourceDeviceIdentifiers;
- (uint64_t)startShouldUpdateSourceDeviceIdentifiers;
- (void)_cloudSyncAvailabilityDidChange:(id)change;
- (void)_createPushConnection;
- (void)_createZoneWithZoneID:(void *)d completion:;
- (void)_deleteZoneWithZoneID:(void *)d completion:;
- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:(void *)completion;
- (void)_registerCloudSyncAvailablityObserver;
- (void)_registerDatabaseChangesSubscription;
- (void)_resetPreviousServerChangeTokenForRecordZoneID:(uint64_t)d;
- (void)_unregisterCloudSyncAvailablityObserver;
- (void)addSourceDeviceIdentifierWithRecordZoneID:(uint64_t)d;
- (void)cancelOutstandingOperations;
- (void)clearPrewarmedFlag;
- (void)commitFetchDatabaseChangesServerChangeToken;
- (void)configureCloudPseudoPeerWithMySyncZoneID:(id *)d;
- (void)configurePeerWithSourceDeviceID:(void *)d zoneID:;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)fastForwardPastDeletionsInNewZone:(void *)zone sourceDeviceID:;
- (void)fetchChangedZonesWithCompletion:(id *)completion;
- (void)fetchEventsFromPeer:(id)peer windows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order highPriority:(BOOL)priority completion:(id)completion;
- (void)fetchSourceDeviceIDFromPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion;
- (void)finishStartBecauseCloudIsAvailable;
- (void)finishStartOrError:(uint64_t)error;
- (void)finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:(void *)d orError:(void *)error completion:;
- (void)performUpdateSourceDeviceIdentifiersWithCompletion:(uint64_t)completion;
- (void)prewarmFetchWithCompletion:(id)completion;
- (void)registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(id *)completion;
- (void)removeSourceDeviceIdentifierWithRecordZoneID:(id *)d;
- (void)runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(uint64_t)completion;
- (void)setFetchDelegate:(id)delegate;
- (void)setHasAdditionsFlag:(BOOL)flag forPeer:(id)peer;
- (void)setHasDeletionsFlag:(BOOL)flag forPeer:(id)peer;
- (void)setHasZoneAdditionChanges:(uint64_t)changes forZone:(uint64_t)zone;
- (void)setHasZoneDeletionChanges:(uint64_t)changes forZone:(uint64_t)zone;
- (void)setPrewarmedFlag;
- (void)setZoneIDsBySourceDeviceID:(uint64_t)d;
- (void)start;
- (void)startShouldUpdateSourceDeviceIdentifiers;
- (void)syncDownAdditionsFromCloudWithZoneID:(void *)d windows:(void *)windows streamNames:(unint64_t)names limit:(void *)limit fetchOrder:(void *)order completion:;
- (void)syncDownDeletionsFromCloudWithZoneID:(uint64_t)d completion:(uint64_t)completion;
- (void)syncDownDeletionsFromCloudWithZoneID:(void *)d deletedRecordIDsAndTypes:(void *)types attempt:(void *)attempt completion:;
- (void)syncUpToCloudWithRecordsToSave:(void *)save recordIDsToDelete:(void *)delete completion:;
- (void)unregisterUpdateSourceDeviceIdentifiersPeriodicJob;
- (void)updateSourceDeviceIdentifiersWithRecordZonesByZoneID:(void *)d completion:;
- (void)updateStorageWithAddedEvents:(id)events deletedEventIDs:(id)ds highPriority:(BOOL)priority completion:(id)completion;
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

+ (void)setMySyncZoneID:(uint64_t)d
{
  v2 = a2;
  objc_opt_self();
  v3 = _DKMySyncZoneID;
  _DKMySyncZoneID = v2;
}

+ (id)zoneIDWithDeviceID:(id)d
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"source-device-id:", d];
  v4 = objc_alloc(MEMORY[0x1E695BA90]);
  v5 = [v4 initWithZoneName:v3 ownerName:*MEMORY[0x1E695B790]];

  return v5;
}

+ (id)deviceIDFromZoneID:(id)d
{
  dCopy = d;
  zoneName = [dCopy zoneName];
  v5 = [zoneName hasPrefix:@"source-device-id:"];

  if (v5)
  {
    zoneName2 = [dCopy zoneName];
    v7 = [zoneName2 substringFromIndex:{objc_msgSend(@"source-device-id:", "length")}];
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

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    outstandingOperations = v2->_outstandingOperations;
    v2->_outstandingOperations = weakObjectsHashTable;
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
  if (self)
  {
    if ([*(self + 32) isSingleDevice])
    {
      v2 = [*(self + 16) numberForKey:@"HaveCreatedMyZone"];
      v3 = v2;
      if (v2 && [v2 BOOLValue])
      {
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v4 = *(self + 24);
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

- (void)registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(id *)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (!completion[5])
    {
      v5 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [_DKSyncCloudKitKnowledgeStorage registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:];
      }

      objc_initWeak(&location, completion);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __98___DKSyncCloudKitKnowledgeStorage_registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke;
      v15 = &unk_1E7367E80;
      objc_copyWeak(&v18, &location);
      completionCopy = completion;
      v17 = v3;
      v6 = MEMORY[0x193B00C50](&v12);
      executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob = [(_DKSyncCloudKitKnowledgeStorage *)completion executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob];
      v8 = [_DKSyncSerializer underlyingQueue:v12];
      v9 = [_CDPeriodicSchedulerJob jobWithInterval:@"com.apple.coreduet.sync.update-source-device-identifiers" schedulerJobName:v8 queue:1 asynchronousHandler:v6 handler:30.0];
      v10 = completion[5];
      completion[5] = v9;

      [completion[5] setExecutionCriteria:executionCriteriaForUpdateSourceDeviceIdentifiersPeriodicJob];
      v11 = +[_CDPeriodicScheduler sharedInstance];
      [v11 registerJob:completion[5]];

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

  allObjects = [(NSHashTable *)self->_outstandingOperations allObjects];
  v5 = [allObjects copy];

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

- (void)_cloudSyncAvailabilityDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke;
  v3[3] = &unk_1E7367440;
  v3[4] = self;
  [_DKSyncSerializer performAsyncBlock:v3];
}

- (void)_createZoneWithZoneID:(void *)d completion:
{
  v30[1] = *MEMORY[0x1E69E9840];
  v22 = a2;
  dCopy = d;
  if (self)
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

    group = [(_DKModifyRecordZonesOperation *)v11 group];
    [group setName:@"CreateZone"];

    objc_initWeak(&location, v11);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68___DKSyncCloudKitKnowledgeStorage__createZoneWithZoneID_completion___block_invoke;
    v24[3] = &unk_1E7367B10;
    objc_copyWeak(&v28, &location);
    v24[4] = self;
    v14 = v9;
    v25 = v14;
    v15 = dCopy;
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
    v18 = [(_DKSyncCloudKitKnowledgeStorage *)self _queueOperationForPrivateCloudDatabase:v11 dependent:1 policy:0 error:&v23];
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

    if (([*(self + 16) BOOLForKey:{@"DidRegisterDatabaseChangesSubscription", v22}] & 1) == 0)
    {
      [(_DKSyncCloudKitKnowledgeStorage *)self _registerDatabaseChangesSubscription];
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_deleteZoneWithZoneID:(void *)d completion:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  dCopy = d;
  if (self)
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

    group = [(_DKModifyRecordZonesOperation *)v12 group];
    [group setName:@"DeleteZone"];

    objc_initWeak(&location, v12);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68___DKSyncCloudKitKnowledgeStorage__deleteZoneWithZoneID_completion___block_invoke;
    v24[3] = &unk_1E7367B10;
    objc_copyWeak(&v28, &location);
    v24[4] = self;
    v15 = v9;
    v25 = v15;
    v16 = dCopy;
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
    v19 = [(_DKSyncCloudKitKnowledgeStorage *)self _queueOperationForPrivateCloudDatabase:v12 dependent:1 policy:0 error:&v23];
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

- (void)_performThrottledUpdateSourceDeviceIdentifiersWithCompletion:(void *)completion
{
  location[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
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

    group = [v7 group];
    [group setName:@"UpdateSourceDeviceIdentifiers"];

    objc_initWeak(location, completion);
    objc_initWeak(&from, v7);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke;
    v18[3] = &unk_1E7367A98;
    objc_copyWeak(&v21, location);
    objc_copyWeak(&v22, &from);
    v18[4] = completion;
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
    v13 = [(_DKSyncCloudKitKnowledgeStorage *)completion _queueOperationForPrivateCloudDatabase:v7 dependent:1 policy:0 error:&v17];
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

- (void)fetchChangedZonesWithCompletion:(id *)completion
{
  v51 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (completion)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = os_transaction_create();
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage fetchChangedZonesWithCompletion:];
    }

    v6 = completion[2];
    v7 = completion[16];
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

          objc_storeStrong(completion + 16, v7);
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

          [completion[2] removeObjectForKey:@"FetchDatabaseChangesServerChangeToken"];
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

    group = [(_DKFetchDatabaseChangesOperation *)v15 group];
    [group setName:@"FetchChangedZones"];

    [(_DKFetchDatabaseChangesOperation *)v15 setFetchAllChanges:1];
    objc_initWeak(&location, completion);
    objc_initWeak(&from, v15);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke;
    v38[3] = &unk_1E7367B88;
    v38[4] = completion;
    objc_copyWeak(&v39, &location);
    [(_DKFetchDatabaseChangesOperation *)v15 setRecordZoneWithIDChangedBlock:v38];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_182;
    v36[3] = &unk_1E7367B88;
    v36[4] = completion;
    objc_copyWeak(&v37, &location);
    [(_DKFetchDatabaseChangesOperation *)v15 setRecordZoneWithIDWasDeletedBlock:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_184;
    v35[3] = &unk_1E7367BB0;
    v35[4] = completion;
    [(_DKFetchDatabaseChangesOperation *)v15 setChangeTokenUpdatedBlock:v35];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_187;
    v29[3] = &unk_1E7367C00;
    objc_copyWeak(&v33, &from);
    v29[4] = completion;
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
    v22 = [(_DKSyncCloudKitKnowledgeStorage *)completion _queueOperationForPrivateCloudDatabase:v15 dependent:0 policy:0 error:&v28];
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

- (BOOL)hasAdditionsFlagForPeer:(id)peer
{
  peerCopy = peer;
  zoneName = [peerCopy zoneName];
  if (zoneName)
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

- (void)setHasAdditionsFlag:(BOOL)flag forPeer:(id)peer
{
  peerCopy = peer;
  zoneName = [peerCopy zoneName];

  if (zoneName)
  {
    [(_DKSyncCloudKitKnowledgeStorage *)peerCopy setHasAdditionsFlag:flag forPeer:?];
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

- (BOOL)hasDeletionsFlagForPeer:(id)peer
{
  peerCopy = peer;
  zoneName = [peerCopy zoneName];
  if (zoneName)
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

- (void)setHasDeletionsFlag:(BOOL)flag forPeer:(id)peer
{
  peerCopy = peer;
  zoneName = [peerCopy zoneName];

  if (zoneName)
  {
    [(_DKSyncCloudKitKnowledgeStorage *)peerCopy setHasDeletionsFlag:flag forPeer:?];
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

- (void)prewarmFetchWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v4);

  if (self->_isPrewarmed)
  {
    v5 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
  {
    [(_DKSyncCloudKitKnowledgeStorage *)&self->super.isa fetchChangedZonesWithCompletion:completionCopy];
  }

  else
  {
    v5 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v6 = +[_DKSyncErrors disabled];
    (*(completionCopy + 2))(completionCopy, v6);
  }

  v5 = completionCopy;
LABEL_9:
}

- (void)fetchEventsFromPeer:(id)peer windows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order highPriority:(BOOL)priority completion:(id)completion
{
  peerCopy = peer;
  windowsCopy = windows;
  namesCopy = names;
  completionCopy = completion;
  v18 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v18);

  if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
  {
    zoneName = [peerCopy zoneName];
    if (zoneName)
    {
      v20 = objc_alloc(MEMORY[0x1E695BA90]);
      v21 = [v20 initWithZoneName:zoneName ownerName:*MEMORY[0x1E695B790]];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __116___DKSyncCloudKitKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke;
      v23[3] = &unk_1E7367C50;
      v24 = completionCopy;
      [(_DKSyncCloudKitKnowledgeStorage *)self syncDownAdditionsFromCloudWithZoneID:v21 windows:windowsCopy streamNames:namesCopy limit:limit fetchOrder:order completion:v23];
    }

    else
    {
      v22 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [_DKSyncCloudKitKnowledgeStorage hasAdditionsFlagForPeer:];
      }

      if (!completionCopy)
      {
        goto LABEL_11;
      }

      v21 = +[_DKSyncErrors invalidRequest];
      (*(completionCopy + 2))(completionCopy, 0, 0, v21);
    }

LABEL_11:
    goto LABEL_12;
  }

  if (completionCopy)
  {
    zoneName = +[_DKSyncErrors disabled];
    (*(completionCopy + 2))(completionCopy, 0, 0, zoneName);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)syncDownAdditionsFromCloudWithZoneID:(void *)d windows:(void *)windows streamNames:(unint64_t)names limit:(void *)limit fetchOrder:(void *)order completion:
{
  v96 = *MEMORY[0x1E69E9840];
  v67 = a2;
  dCopy = d;
  windowsCopy = windows;
  orderCopy = order;
  val = self;
  if (self)
  {
    v63 = os_transaction_create();
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v53 = [objc_opt_class() description];
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dCopy, "count")}];
      v55 = _CDPrettyPrintCollection(windowsCopy, 0, 0, 0);
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

    if ([dCopy count])
    {
      if ([dCopy count] < 2)
      {
        firstObject = [dCopy firstObject];
      }

      else
      {
        firstObject2 = [dCopy firstObject];
        startDate = [(_DKSyncWindow *)firstObject2 startDate];
        lastObject = [dCopy lastObject];
        urgency = [(_DKSyncType *)lastObject urgency];
        firstObject = [_DKSyncWindow syncWindowWithStartDate:startDate endDate:urgency];

        v17 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v56 = [objc_opt_class() description];
          v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dCopy, "count")}];
          v58 = _CDPrettyPrintCollection(windowsCopy, 0, 0, 0);
          *buf = 138544642;
          *&buf[4] = v56;
          v86 = 2112;
          v87 = v57;
          v88 = 2114;
          v89 = firstObject;
          v90 = 2114;
          v91 = dCopy;
          v92 = 2112;
          v93 = v67;
          v94 = 2114;
          v95 = v58;
          _os_log_error_impl(&dword_191750000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Combining sync down request windows into 1 of %@ windows (%{public}@ instead of %{public}@) from %@ for streams %{public}@", buf, 0x3Eu);
        }
      }

      startDate2 = [(_DKSyncWindow *)firstObject startDate];
      urgency2 = [(_DKSyncType *)firstObject urgency];
      if (limit == 2)
      {
        v20 = @"%K >= %@";
      }

      else
      {
        v20 = @"%K > %@";
      }

      if (limit == 2)
      {
        v21 = @"%K < %@";
      }

      else
      {
        v21 = @"%K <= %@";
      }

      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:v20, @"eventCreationDate", startDate2];
      v23 = [MEMORY[0x1E696AE18] predicateWithFormat:v21, @"eventCreationDate", urgency2];
      v24 = MEMORY[0x1E696AB28];
      v84[0] = v22;
      v84[1] = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
      v26 = [v24 andPredicateWithSubpredicates:v25];

      windowsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"streamName", windowsCopy];
      v28 = MEMORY[0x1E696AB28];
      v83[0] = v26;
      v83[1] = windowsCopy;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
      v61 = [v28 andPredicateWithSubpredicates:v29];

      v60 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"eventCreationDate" ascending:limit != 2];
      v30 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"DKEvent" predicate:v61];
      v82 = v60;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      [v30 setSortDescriptors:v31];

      v32 = @"SyncDownAdditionsFromCloud";
      if (names == 1)
      {
        v32 = @"QueryRecordFromCloud";
      }

      v33 = v32;
      v34 = *MEMORY[0x1E695B7A8];
      if (names)
      {
        namesCopy = names;
      }

      else
      {
        namesCopy = *MEMORY[0x1E695B7A8];
      }

      if (v34)
      {
        v36 = namesCopy > v34;
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      if (((namesCopy > 1) & v37) != 0)
      {
        v38 = *MEMORY[0x1E695B7A8];
      }

      else
      {
        v38 = namesCopy;
      }

      v39 = [(CKQueryOperation *)[_DKQueryOperation alloc] initWithQuery:v30];
      v40 = objc_opt_new();
      [(_DKQueryOperation *)v39 setGroup:v40];

      group = [(_DKQueryOperation *)v39 group];
      [group setName:v33];

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
      v73 = dCopy;
      objc_copyWeak(&v76, &from);
      v77[1] = v38;
      v77[2] = limit;
      v45 = orderCopy;
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

      v47 = windowsCopy;
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

    else if (([_DKSyncCloudKitKnowledgeStorage syncDownAdditionsFromCloudWithZoneID:orderCopy windows:buf streamNames:? limit:? fetchOrder:? completion:?]& 1) == 0)
    {
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)syncDownDeletionsFromCloudWithZoneID:(void *)d deletedRecordIDsAndTypes:(void *)types attempt:(void *)attempt completion:
{
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  dCopy = d;
  attemptCopy = attempt;
  if (self)
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
      v26 = [(_DKSyncCloudKitKnowledgeStorage *)self _previousServerChangeTokenForRecordZoneID:v9];
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

      group = [(_DKFetchRecordZoneChangesOperation *)v15 group];
      [group setName:@"SyncDownDeletionsFromCloud"];

      [(_DKFetchRecordZoneChangesOperation *)v15 setFetchAllChanges:1];
      objc_initWeak(&location, self);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke;
      v37[3] = &unk_1E7367D40;
      v18 = dCopy;
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
      v30[4] = self;
      v31 = v9;
      objc_copyWeak(v34, &location);
      v34[1] = types;
      v32 = v18;
      v19 = attemptCopy;
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
      v22 = [(_DKSyncCloudKitKnowledgeStorage *)self _queueOperationForPrivateCloudDatabase:v15 dependent:1 policy:v21 error:&v29];
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

- (void)fetchSourceDeviceIDFromPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  if (completionCopy)
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    sourceDeviceID = [peerCopy sourceDeviceID];
    v10 = [v8 initWithUUIDString:sourceDeviceID];

    if (v10)
    {
      (*(completionCopy + 2))(completionCopy, v10, 0, 0);
    }

    else
    {
      v11 = +[_DKSyncErrors invalidData];
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }
}

- (void)setFetchDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = delegateCopy;
}

- (void)updateStorageWithAddedEvents:(id)events deletedEventIDs:(id)ds highPriority:(BOOL)priority completion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dsCopy = ds;
  completionCopy = completion;
  if ([eventsCopy count] || -[_DKSyncDeletedEventIDs count](dsCopy))
  {
    v11 = 0x1E7366000uLL;
    if ([eventsCopy count])
    {
      v12 = [_DKEventCKConverter alloc];
      v13 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      v14 = [(_DKEventCKConverter *)v12 initWithZoneID:v13];

      v15 = [(_DKEventCKConverter *)v14 recordsFromEvents:eventsCopy];
    }

    else
    {
      v15 = 0;
    }

    if ([(_DKSyncDeletedEventIDs *)dsCopy count])
    {
      v38 = v15;
      v39 = completionCopy;
      v40 = eventsCopy;
      v43 = objc_opt_new();
      [(_DKSyncDeletedEventIDs *)dsCopy sourceDeviceIDs];
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
            v24 = dsCopy;
            v25 = [(_DKSyncDeletedEventIDs *)dsCopy deletedEventIDsForSourceDeviceID:v19];
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
            dsCopy = v24;
            v11 = v21;
          }

          while (v17 != v18);
          v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v17);
      }

      completionCopy = v39;
      eventsCopy = v40;
      v15 = v38;
    }

    else
    {
      v43 = 0;
    }

    v27 = [v15 count];
    if (v27 != [eventsCopy count])
    {
      v28 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = [objc_opt_class() description];
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count") - objc_msgSend(v15, "count")}];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
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
    if (v29 != [(_DKSyncDeletedEventIDs *)dsCopy count])
    {
      v30 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = [objc_opt_class() description];
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKSyncDeletedEventIDs count](dsCopy) - objc_msgSend(v43, "count")}];
        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](dsCopy)];
        *buf = 138543874;
        v51 = v35;
        v52 = 2112;
        v53 = v36;
        v54 = 2112;
        v55 = v37;
        _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Unable to convert %@ of %@ deleted events", buf, 0x20u);
      }
    }

    [(_DKSyncCloudKitKnowledgeStorage *)self syncUpToCloudWithRecordsToSave:v15 recordIDsToDelete:v43 completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)syncUpToCloudWithRecordsToSave:(void *)save recordIDsToDelete:(void *)delete completion:
{
  location[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  saveCopy = save;
  deleteCopy = delete;
  if (self)
  {
    v10 = os_transaction_create();
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncCloudKitKnowledgeStorage syncUpToCloudWithRecordsToSave:recordIDsToDelete:completion:];
    }

    v12 = [[_DKModifyRecordsOperation alloc] initWithRecordsToSave:v7 recordIDsToDelete:saveCopy];
    v13 = objc_opt_new();
    [(_DKModifyRecordsOperation *)v12 setGroup:v13];

    group = [(_DKModifyRecordsOperation *)v12 group];
    [group setName:@"SyncUpToCloud"];

    [(_DKModifyRecordsOperation *)v12 setSavePolicy:1];
    [(_DKModifyRecordsOperation *)v12 setAtomic:1];
    objc_initWeak(location, self);
    objc_initWeak(&from, v12);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke;
    v24[3] = &unk_1E7367E58;
    objc_copyWeak(&v29, &from);
    v24[4] = self;
    v25 = v7;
    v26 = saveCopy;
    objc_copyWeak(&v30, location);
    v15 = deleteCopy;
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
    v19 = [(_DKSyncCloudKitKnowledgeStorage *)self _queueOperationForPrivateCloudDatabase:v12 dependent:1 policy:v18 error:&v23];
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
  if (self)
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

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate) connection:didReceivePublicToken:];
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
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
  if (self && *(self + 48) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
    *(self + 48) = 0;
  }
}

- (void)_registerCloudSyncAvailablityObserver
{
  if (self && (*(self + 48) & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__cloudSyncAvailabilityDidChange_ name:@"_DKCloudSyncAvailablityChangedNotification" object:0];
    *(self + 48) = 1;
  }
}

- (void)finishStartBecauseCloudIsAvailable
{
  if (self)
  {
    if ([(_DKSyncCloudKitKnowledgeStorage *)self startShouldUpdateSourceDeviceIdentifiers])
    {
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_14();
      v3 = __69___DKSyncCloudKitKnowledgeStorage_finishStartBecauseCloudIsAvailable__block_invoke;
      v4 = &unk_1E73675F8;
      selfCopy = self;
      [(_DKSyncCloudKitKnowledgeStorage *)self registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:v2];
    }

    else
    {

      [(_DKSyncCloudKitKnowledgeStorage *)self finishStartOrError:?];
    }
  }
}

- (void)_createPushConnection
{
  v32 = *MEMORY[0x1E69E9840];
  if (self && !*(self + 64))
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
    v10 = *(self + 64);
    *(self + 64) = v9;

    v11 = *(self + 64);
    if (v11)
    {
      [v11 setEnabledTopics:0 ignoredTopics:0 opportunisticTopics:&unk_1F05EF1E8];
      [*(self + 64) setDelegate:self];
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
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    if (*(self + 40))
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

      v5 = *(self + 40);
      *(self + 40) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishStartOrError:(uint64_t)error
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (v3)
    {
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = [objc_opt_class() description];
        domain = [v3 domain];
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
      if (([*(error + 16) BOOLForKey:@"DidRegisterDatabaseChangesSubscription"] & 1) == 0)
      {
        [(_DKSyncCloudKitKnowledgeStorage *)error _registerDatabaseChangesSubscription];
      }

      if ((*(error + 152) & 1) == 0)
      {
        *(error + 152) = 1;
        v7 = +[_CDObservationCenter sharedInstance];
        [v7 postNotificationName:@"_DKCloudTransportAvailablityChangedNotification" userInfo:0 sender:error];
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)configureCloudPseudoPeerWithMySyncZoneID:(id *)d
{
  v20 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v4 = a2;
    v5 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v4];
    v6 = d[4];
    zoneName = [v4 zoneName];

    v8 = [v6 peerWithZoneName:zoneName sourceDeviceID:v5];

    [v8 setMe:1];
    [d[4] addActiveTransports:8 toPeer:v8];
    [d[4] addActiveTransports:4 toPeer:v8];
    v9 = +[_CDLogging syncChannel];
    if (OUTLINED_FUNCTION_44(v9))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v11 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_73() me];
      identifier = [v8 identifier];
      model = [v8 model];
      if (model)
      {
        v14 = MEMORY[0x1E696AEC0];
        model2 = [v8 model];
        v11 = [v14 stringWithFormat:@" (%@)", model2];
      }

      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_12_1();
      _os_log_debug_impl(v15, v16, v17, v18, v19, 0x2Au);
      if (model)
      {
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerDatabaseChangesSubscription
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self)
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
    selfCopy = self;
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
    [(_DKSyncCloudKitKnowledgeStorage *)self _queueOperationForPrivateCloudDatabase:v5 dependent:0 policy:0 error:&v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_queueOperationForPrivateCloudDatabase:(int)database dependent:(void *)dependent policy:(void *)policy error:
{
  v98 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dependentCopy = dependent;
  if (!self)
  {
    v21 = 0;
    goto LABEL_77;
  }

  v11 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v11);

  if (policy)
  {
    *policy = 0;
  }

  v12 = *(self + 56);
  if (!v12)
  {
    privateCloudDatabase = objc_opt_new();
    [privateCloudDatabase setUseZoneWidePCS:1];
    v11 = @"com.apple.knowledgestore4";
    v14 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.knowledgestore4" environment:1];
    v15 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v14 options:privateCloudDatabase];
    v16 = *(self + 56);
    *(self + 56) = v15;

    if (!*(self + 56))
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

      if (policy)
      {
        *policy = +[_DKSyncErrors disabled];
      }

LABEL_36:
      v21 = 0;
      goto LABEL_76;
    }

    v12 = *(self + 56);
  }

  privateCloudDatabase = [v12 privateCloudDatabase];
  if (privateCloudDatabase)
  {
    v17 = objc_opt_new();
    [v17 setContainer:*(self + 56)];
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
    syncType = [*(self + 160) syncType];
    v83 = syncType;
    if (syncType)
    {
      xpcActivity = [(_DKSyncType *)syncType xpcActivity];
      if (xpcActivity)
      {
LABEL_17:
        v24 = xpcActivity;
        v82 = xpcActivity;
        if (!xpc_activity_get_state(xpcActivity))
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

          if (policy)
          {
            *policy = +[_DKSyncErrors internalFailure];
          }

          v92 = 0;
          goto LABEL_75;
        }

        v78 = v18;
        [v17 setXpcActivity:v24];
LABEL_23:
        [v9 setConfiguration:v17];
        [v9 setDatabase:privateCloudDatabase];
        if (database)
        {
          WeakRetained = objc_loadWeakRetained((self + 136));
          v26 = WeakRetained;
          if (WeakRetained && ([WeakRetained isFinished] & 1) == 0)
          {
            [v9 addDependency:v26];
          }

          objc_storeWeak((self + 136), v9);
        }

        v80 = dependentCopy;
        v27 = objc_alloc(MEMORY[0x1E695B8E8]);
        group = [v9 group];
        name = [group name];
        v30 = [v27 initWithEventName:name];

        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __97___DKSyncCloudKitKnowledgeStorage__queueOperationForPrivateCloudDatabase_dependent_policy_error___block_invoke;
        v88[3] = &unk_1E7367A48;
        v31 = v30;
        v89 = v31;
        v32 = v9;
        v90 = v32;
        selfCopy = self;
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
        v79 = privateCloudDatabase;
        v81 = v9;
        v46 = +[_DKSyncUrgencyTracker sharedInstance];
        allUrgencies = [(_DKSyncUrgencyTracker *)v46 allUrgencies];

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v48 = allUrgencies;
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
          version = [v56 version];
          [v31 setMetricValue:version forKey:@"version(down)"];

          version2 = [v57 version];
          [v31 setMetricValue:version2 forKey:@"version(up)"];
        }

        [_DKSyncSerializer addOperation:v76];
        [*(self + 144) addObject:v76];
        [_DKSyncSerializer addOperation:v77];
        [*(self + 144) addObject:v77];
        v92 = 1;

        dependentCopy = v80;
        v9 = v81;
        privateCloudDatabase = v79;
        v36 = v78;
LABEL_75:

        v21 = v92;
        goto LABEL_76;
      }
    }

    else if (*(self + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        xpcActivity = [*(self + 40) activity];
        if (xpcActivity)
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

  if (!policy)
  {
    goto LABEL_36;
  }

  +[_DKSyncErrors disabled];
  *policy = v21 = 0;
LABEL_76:

LABEL_77:
  v60 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)_handleAnySpecialnessWithOperationError:(id *)error
{
  v145 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (error)
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
        domain = [v6 domain];
        [v6 code];
        OUTLINED_FUNCTION_65();
        *(v104 + 196) = v102;
        v139 = 2114;
        *(v104 + 206) = domain;
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(v105, v106, v107, v108, v109, 0x2Au);
      }

      v112 = v6;
      zoneName = [_DKCKError zoneIDsWithUnrecoverableDecryptionError:v6];
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
      v20 = zoneName;
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
                v29 = [error[4] existingPeerWithSourceDeviceID:v28];
                v9 = v29;
                if (v29)
                {
                  zoneName = [v29 zoneName];

                  if (zoneName)
                  {
                    syncChannel = [*(v10 + 648) syncChannel];
                    if (OUTLINED_FUNCTION_60(syncChannel))
                    {
                      v119 = [objc_opt_class() description];
                      v64 = [v9 me];
                      v65 = @"pseudo ";
                      if (!v64)
                      {
                        v65 = &stru_1F05B9908;
                      }

                      v117 = v65;
                      identifier = [v9 identifier];
                      model = [v9 model];
                      if (model)
                      {
                        v66 = MEMORY[0x1E696AEC0];
                        model2 = [v9 model];
                        v110 = model2;
                        v114 = [v66 stringWithFormat:@" (%@)"];
                      }

                      OUTLINED_FUNCTION_65();
                      *(v67 + 196) = v119;
                      v139 = 2114;
                      *(v67 + 206) = v117;
                      v140 = 2114;
                      v141 = identifier;
                      v142 = 2114;
                      *(v67 + 226) = v68;
                      v143 = 2114;
                      *(v67 + 236) = v26;
                      OUTLINED_FUNCTION_19();
                      _os_log_error_impl(v69, v70, v71, "%{public}@: Deactivating %{public}@peer %{public}@%{public}@ due to unrecoverable decryption error for zone %{public}@", v72, 0x34u);
                      if (model)
                      {
                      }

                      v10 = 0x1E7366000;
                    }

                    [error[4] removeActiveTransports:4 fromPeer:v9];
                    [error setHasAdditionsFlag:0 forPeer:v9];
                    [error setHasDeletionsFlag:0 forPeer:v9];
                    goto LABEL_29;
                  }
                }

                syncChannel2 = [*(v10 + 648) syncChannel];
                if (OUTLINED_FUNCTION_63(syncChannel2))
                {
                  v44 = [objc_opt_class() description];
                  OUTLINED_FUNCTION_9_1(v44, v45, v46, v47, v48, v49, v50, v51, v110, v111, v112, v113, v114, model2, v116, *(&v116 + 1), v117, model, v119, v44, v121);
                  OUTLINED_FUNCTION_17_1();
                  _os_log_debug_impl(v52, v53, v54, "%{public}@: Ignoring unrecoverable decryption error for unknown peer zone %{public}@", v55, 0x16u);
                }

LABEL_27:
              }

              else
              {
                syncChannel3 = [*(v10 + 648) syncChannel];
                if (OUTLINED_FUNCTION_80(syncChannel3))
                {
                  zoneName = [objc_opt_class() description];
                  OUTLINED_FUNCTION_9_1(zoneName, v56, v57, v58, v59, v60, v61, v62, v110, v111, v112, v113, v114, model2, v116, *(&v116 + 1), v117, model, v119, identifier, v121);
                  _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Ignoring unrecoverable decryption error for non-peer zone %{public}@", v63, 0x16u);
                  goto LABEL_27;
                }
              }

LABEL_29:

              v20 = v123;
              goto LABEL_30;
            }

            [(_DKEventStatsCounter *)qword_1EADBD5B8 incrementCountByNumber:?];
            if ([error[15] containsObject:v26])
            {
              syncChannel4 = [*(v10 + 648) syncChannel];
              if (OUTLINED_FUNCTION_60(syncChannel4))
              {
                v9 = [objc_opt_class() description];
                OUTLINED_FUNCTION_9_1(v9, v33, v34, v35, v36, v37, v38, v39, v110, v111, v112, v113, v114, model2, v116, *(&v116 + 1), v117, model, v119, identifier, v121);
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

      v74 = error[15];
      if (v74)
      {
        [v74 unionSet:v20];
      }

      else
      {
        v79 = [v20 mutableCopy];
        v80 = error[15];
        error[15] = v79;
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
              OUTLINED_FUNCTION_9_1(v90, v91, v92, v93, v94, v95, v96, v97, v110, v111, v112, v113, v114, model2, v116, *(&v116 + 1), v117, model, v119, identifier, v122);
              _os_log_impl(&dword_191750000, v89, OS_LOG_TYPE_INFO, "%{public}@: Fixing unrecoverable decryption error for zone %{public}@", v98, 0x16u);
            }

            if ([v88 isEqual:v124])
            {
              [error[2] setBool:0 forKey:@"HaveCreatedMyZone"];
            }

            v125[0] = MEMORY[0x1E69E9820];
            v125[1] = 3221225472;
            v125[2] = __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_87;
            v125[3] = &unk_1E7367A20;
            v125[4] = error;
            v125[5] = v88;
            v126 = v124;
            v127 = v81;
            v99 = v82;
            v128 = v99;
            [(_DKSyncCloudKitKnowledgeStorage *)error _deleteZoneWithZoneID:v88 completion:v125];
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
        domain2 = [v6 domain];
        [v6 code];
        OUTLINED_FUNCTION_65();
        *(v78 + 196) = v76;
        v139 = 2114;
        *(v78 + 206) = domain2;
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

- (void)performUpdateSourceDeviceIdentifiersWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = *(completion + 24);
    v6 = +[_DKSyncSerializer underlyingQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86___DKSyncCloudKitKnowledgeStorage_performUpdateSourceDeviceIdentifiersWithCompletion___block_invoke;
    v13[3] = &unk_1E73674E0;
    v13[4] = completion;
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

- (void)updateSourceDeviceIdentifiersWithRecordZonesByZoneID:(void *)d completion:
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dCopy = d;
  if (self)
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

    v64 = dCopy;

    v68 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
    zoneName = MEMORY[0x1E695DF90];
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
          zoneName = [v14 zoneName];
          if ([zoneName hasPrefix:@"source-device-id:"])
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
                [self[11] setObject:v16 forKeyedSubscript:v14];
              }

              else if (v18)
              {
                v39 = [objc_opt_class() description];
                OUTLINED_FUNCTION_14_1(v39, v40, v41, v42, v43, v44, v45, v46, v64, v65, v47);
                *(v48 + 14) = zoneName;
                _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Invalid source device id from zone name: %@", buf, 0x16u);
              }

              v12 = v68;
            }
          }

          [self[15] removeObject:v14];
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

    dCopy = v64;
    v5 = v65;
    if (v67)
    {
      v50 = v66;
      [(_DKSyncCloudKitKnowledgeStorage *)self finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:v66 orError:0 completion:v64];
    }

    else
    {
      [self[2] setBool:0 forKey:@"HaveCreatedMyZone"];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __99___DKSyncCloudKitKnowledgeStorage_updateSourceDeviceIdentifiersWithRecordZonesByZoneID_completion___block_invoke;
      v70[3] = &unk_1E7367AC0;
      v70[4] = self;
      v71 = v12;
      v50 = v66;
      v72 = v66;
      v73 = v64;
      [(_DKSyncCloudKitKnowledgeStorage *)self _createZoneWithZoneID:v71 completion:v70];
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:(void *)d orError:(void *)error completion:
{
  v10 = a2;
  dCopy = d;
  errorCopy = error;
  v9 = errorCopy;
  if (self)
  {
    if (dCopy)
    {
      if (!errorCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    *(self + 72) = 0;
    [(_DKSyncCloudKitKnowledgeStorage *)self setZoneIDsBySourceDeviceID:v10];
    if (v9)
    {
LABEL_4:
      (v9)[2](v9, dCopy);
    }
  }

LABEL_5:
}

- (void)setZoneIDsBySourceDeviceID:(uint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (d)
  {
    objc_storeStrong((d + 80), a2);
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
          [(_DKSyncCloudKitKnowledgeStorage *)d configurePeerWithSourceDeviceID:v10 zoneID:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)configurePeerWithSourceDeviceID:(void *)d zoneID:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a2;
  dCopy = d;
  if (self)
  {
    v8 = [*(self + 32) existingPeerWithSourceDeviceID:v6];
    v9 = v8;
    if (v8 && ([v8 zoneName], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if (([*(self + 32) activeTransportsForPeer:v9] & 4) == 0)
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
          model = [OUTLINED_FUNCTION_67() model];
          if (model)
          {
            v17 = MEMORY[0x1E696AEC0];
            model2 = [v9 model];
            v14 = [v17 stringWithFormat:@" (%@)", model2];
          }

          zoneName = [dCopy zoneName];
          v25 = 138544386;
          v26 = v21;
          v27 = 2114;
          v28 = v15;
          v29 = 2114;
          v30 = v3;
          v31 = 2114;
          v32 = v14;
          v33 = 2112;
          v34 = zoneName;
          OUTLINED_FUNCTION_49(&dword_191750000, v10, v19, "%{public}@: Instantiated existing %{public}@peer %{public}@%{public}@ with zone name %@", &v25);

          if (model)
          {
          }
        }

        [(_DKSyncCloudKitKnowledgeStorage *)self populateLastSeenDateIfNeededByPeer:v9];
        [*(self + 32) addActiveTransports:4 toPeer:v9];
      }
    }

    else
    {
      v12 = [*(self + 88) objectForKeyedSubscript:dCopy];
      if (v12)
      {
        [(_DKSyncCloudKitKnowledgeStorage *)self fastForwardPastDeletionsInNewZone:v12 sourceDeviceID:v6];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __74___DKSyncCloudKitKnowledgeStorage_configurePeerWithSourceDeviceID_zoneID___block_invoke;
        v22[3] = &unk_1E7367C28;
        v22[4] = self;
        v23 = dCopy;
        v24 = v6;
        [(_DKSyncCloudKitKnowledgeStorage *)self performUpdateSourceDeviceIdentifiersWithCompletion:v22];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setHasZoneAdditionChanges:(uint64_t)changes forZone:(uint64_t)zone
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

- (void)setHasZoneDeletionChanges:(uint64_t)changes forZone:(uint64_t)zone
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

- (void)addSourceDeviceIdentifierWithRecordZoneID:(uint64_t)d
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (d)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    zoneName = [v3 zoneName];
    if ([zoneName hasPrefix:@"source-device-id:"])
    {
      v6 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v3];
      +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_71() length])
      {
        if (([v3 isEqual:0x1E7366000uLL] & 1) == 0)
        {
          v7 = [*(d + 80) objectForKeyedSubscript:v6];

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

            [*(d + 80) setObject:v3 forKeyedSubscript:v6];
            [(_DKSyncCloudKitKnowledgeStorage *)d configurePeerWithSourceDeviceID:v6 zoneID:v3];
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeSourceDeviceIdentifierWithRecordZoneID:(id *)d
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (d)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    zoneName = [v3 zoneName];
    if ([zoneName hasPrefix:@"source-device-id:"])
    {
      v6 = [_DKSyncCloudKitKnowledgeStorage deviceIDFromZoneID:v3];
      +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_71() length])
      {
        if (([v3 isEqual:0x1E7366000uLL] & 1) == 0)
        {
          v7 = [d[10] objectForKeyedSubscript:v6];

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

            [d[10] setObject:0 forKeyedSubscript:v6];
            [d[11] setObject:0 forKeyedSubscript:v3];
            v9 = d[4];
            zoneName2 = [v3 zoneName];
            v11 = [v9 peerWithZoneName:zoneName2 sourceDeviceID:v6];

            [d[4] removeActiveTransports:4 fromPeer:v11];
            [d setHasAdditionsFlag:0 forPeer:v11];
            [d setHasDeletionsFlag:0 forPeer:v11];
            if (![d[4] activeTransportsForPeer:v11])
            {
              [d[4] removePeer:v11];
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
  if (self)
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

    if (*(self + 128))
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
          v23 = *(self + 128);
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

        [*(self + 16) setData:v5 forKey:@"FetchDatabaseChangesServerChangeToken"];
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_opt_class() description];
          domain = [v2 domain];
          [v2 code];
          *buf = 138544386;
          v30 = v24;
          OUTLINED_FUNCTION_25_0();
          v32 = @"FetchDatabaseChangesServerChangeToken";
          v33 = v26;
          v34 = domain;
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
  if (self)
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

    *(self + 97) = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)fastForwardPastDeletionsInNewZone:(void *)zone sourceDeviceID:
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self)
  {
    zoneCopy = zone;
    underlyingQueue = [OUTLINED_FUNCTION_71() underlyingQueue];
    dispatch_assert_queue_V2(underlyingQueue);

    zoneID = [v7 zoneID];
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [objc_opt_class() description];
      zoneName = [zoneID zoneName];
      v33 = 138543618;
      v34 = v12;
      v35 = 2114;
      v36 = zoneName;
      OUTLINED_FUNCTION_33(&dword_191750000, v11, v13, "%{public}@: Fast forwarding past deletions in zone with name %{public}@", &v33);
    }

    currentServerChangeToken = [v7 currentServerChangeToken];
    if (currentServerChangeToken)
    {
      [(_DKSyncCloudKitKnowledgeStorage *)self _setPreviousServerChangeToken:currentServerChangeToken forRecordZoneID:zoneID];
    }

    else
    {
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        zoneName2 = [OUTLINED_FUNCTION_67() zoneName];
        v33 = 138543618;
        v34 = zoneName;
        v35 = 2114;
        v36 = zoneName2;
        OUTLINED_FUNCTION_43(&dword_191750000, v15, v17, "%{public}@: Unable to fast forward past deletions in zone with name %{public}@ due to missing currentServerChangeToken", &v33);
      }
    }

    v18 = *(self + 32);
    zoneName3 = [zoneID zoneName];
    v20 = [v18 peerWithZoneName:zoneName3 sourceDeviceID:v3];

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

      identifier = [v20 identifier];
      model = [v20 model];
      if (model)
      {
        v26 = MEMORY[0x1E696AEC0];
        model2 = [v20 model];
        v22 = [v26 stringWithFormat:@" (%@)", model2];
      }

      zoneName4 = [zoneID zoneName];
      v33 = 138544386;
      v34 = v32;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = identifier;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = zoneName4;
      OUTLINED_FUNCTION_49(&dword_191750000, v3, v28, "%{public}@: Instantiated %{public}@peer %{public}@%{public}@ from new zone with name %{public}@", &v33);

      if (model)
      {
      }

      v7 = v31;
    }

    [(_DKSyncCloudKitKnowledgeStorage *)self populateLastSeenDateIfNeededByPeer:v20];
    [*(self + 32) addActiveTransports:4 toPeer:v20];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (uint64_t)populateLastSeenDateIfNeededByPeer:(uint64_t)peer
{
  v3 = a2;
  v4 = v3;
  if (peer)
  {
    v7 = v3;
    lastSeenDate = [v3 lastSeenDate];
    if (!lastSeenDate)
    {
      v3 = [v7 me];
      v4 = v7;
      if (v3)
      {
        goto LABEL_6;
      }

      lastSeenDate = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1296000.0];
      [*(peer + 32) setLastSeenDate:lastSeenDate onPeer:v7];
    }

    v4 = v7;
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)hasZoneAdditionChangesForZone:(uint64_t)zone
{
  v3 = a2;
  if (zone)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v6 = __65___DKSyncCloudKitKnowledgeStorage_hasZoneAdditionChangesForZone___block_invoke;
    v7 = &unk_1E7367440;
    zoneCopy = zone;
    if (hasZoneAdditionChangesForZone__onceToken != -1)
    {
      dispatch_once(&hasZoneAdditionChangesForZone__onceToken, block);
    }

    zone = [*(zone + 104) containsObject:v3];
  }

  return zone;
}

- (uint64_t)hasZoneDeletionChangesForZone:(uint64_t)zone
{
  v3 = a2;
  if (zone)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v6 = __65___DKSyncCloudKitKnowledgeStorage_hasZoneDeletionChangesForZone___block_invoke;
    v7 = &unk_1E7367440;
    zoneCopy = zone;
    if (hasZoneDeletionChangesForZone__onceToken != -1)
    {
      dispatch_once(&hasZoneDeletionChangesForZone__onceToken, block);
    }

    zone = [*(zone + 112) containsObject:v3];
  }

  return zone;
}

- (void)syncDownDeletionsFromCloudWithZoneID:(uint64_t)d completion:(uint64_t)completion
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

- (id)_previousServerChangeTokenKeyForRecordZoneID:(uint64_t)d
{
  if (d)
  {
    v2 = MEMORY[0x1E696AEC0];
    zoneName = [a2 zoneName];
    v4 = [v2 stringWithFormat:@"FetchRecordZoneChangesPreviousServerChangeToken/%@", zoneName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetPreviousServerChangeTokenForRecordZoneID:(uint64_t)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v4 = [(_DKSyncCloudKitKnowledgeStorage *)d _previousServerChangeTokenKeyForRecordZoneID:a2];
    [*(d + 16) removeObjectForKey:v4];
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

- (void)runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:(uint64_t)completion
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
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

    activity = [*(completion + 40) activity];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_14();
    v13 = __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke;
    v14 = &unk_1E7367EA8;
    completionCopy = completion;
    v16 = v9;
    v17 = v3;
    v10 = activity;
    [(_DKSyncCloudKitKnowledgeStorage *)completion performUpdateSourceDeviceIdentifiersWithCompletion:v12];
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