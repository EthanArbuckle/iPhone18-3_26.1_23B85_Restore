@interface CallHistoryDBHandle
+ (NSString)objectId;
+ (id)createForClient;
+ (id)createForServer;
+ (id)createWithDBManager:(id)a3;
+ (void)createForClient;
- (BOOL)handleSaveForCallRecordContext:(id)a3 error:(id *)a4;
- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)a3;
- (BOOL)performSaveWithBackgroundTaskAssertion:(id)a3 error:(id *)a4;
- (BOOL)resetAllTimers;
- (BOOL)save:(id *)a3;
- (BOOL)saveTimers:(id)a3;
- (CallHistoryDBHandle)initWithDBManager:(id)a3;
- (id)callDBProperties;
- (id)createCallRecord;
- (id)fetchAllObjectsWithUniqueId:(id)a3;
- (id)fetchManagedCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7;
- (id)fetchManagedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7;
- (id)fetchObjectWithUniqueId:(id)a3;
- (id)fetchObjectsWithUniqueIds:(id)a3;
- (id)fetchWithPredicate:(id)a3 forEntity:(id)a4 withLimit:(BOOL)a5;
- (id)getArrayForCallTypeMask:(unsigned int)a3;
- (id)timerIncoming;
- (id)timerLifetime;
- (id)timerOutgoing;
- (id)updateManagedCallsWithPredicate:(id)a3 propertiesToUpdate:(id)a4;
- (int64_t)callHistoryDBFetchLimit;
- (int64_t)deleteManagedCalls:(id)a3;
- (int64_t)deleteManagedCallsWithPredicate:(id)a3;
- (unint64_t)fetchManagedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4;
- (void)callDBProperties;
- (void)createCallRecord;
- (void)dealloc;
- (void)deleteAll;
- (void)deleteObjectWithUniqueId:(id)a3;
- (void)deleteObjectsWithUniqueIds:(id)a3;
- (void)handleCallDBPropContextDidSaveNotification:(id)a3;
- (void)handleCallRecordContextDidSaveNotification:(id)a3;
- (void)handlePersistentStoreChangedNotification:(id)a3;
- (void)mergeCallRecordChangesFromRemoteAppSave;
- (void)postTimersChangedNotification;
- (void)registerForNotifications:(id)a3;
- (void)resetTimers;
- (void)unRegisterForNotifications;
- (void)updateCallDBProperties;
@end

@implementation CallHistoryDBHandle

+ (id)createForClient
{
  v2 = objc_alloc_init(CallDBManagerClient);
  if (v2)
  {
    v3 = [CallHistoryDBHandle createWithDBManager:v2];
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = +[CHLogServer sharedInstance];
    v5 = [v4 logHandleForDomain:"ch.dbhandle"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CallHistoryDBHandle createForClient];
    }
  }

  else
  {
    v6 = +[CHLogServer sharedInstance];
    v5 = [v6 logHandleForDomain:"ch.dbhandle"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CallHistoryDBHandle createForClient];
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (int64_t)callHistoryDBFetchLimit
{
  v3 = [(CallHistoryDBHandle *)self featureFlags];
  v4 = [v3 increaseCallHistoryEnabled];

  if (!v4)
  {
    return 200;
  }

  v5 = [(CallHistoryDBHandle *)self featureFlags];
  v6 = [v5 keepCallsEnabled];
  v7 = &kCallHistoryNoFetchLimit;
  if (!v6)
  {
    v7 = &kCallHistoryIncreasedFetchLimit;
  }

  v8 = *v7;

  return v8;
}

+ (NSString)objectId
{
  if (objectId_onceToken != -1)
  {
    +[CallHistoryDBHandle objectId];
  }

  v3 = objectId_sObjectId;

  return v3;
}

void __31__CallHistoryDBHandle_objectId__block_invoke()
{
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v8 bundleIdentifier];
  v1 = [v0 copy];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = objectId_sObjectId;
    objectId_sObjectId = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = [v5 copy];
    v7 = objectId_sObjectId;
    objectId_sObjectId = v6;
  }
}

- (CallHistoryDBHandle)initWithDBManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CallHistoryDBHandle;
  v6 = [(CHLogger *)&v14 initWithDomain:"ch.dbhandle"];
  if (v6)
  {
    v7 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v6->_featureFlags;
    v6->_featureFlags = v7;

    v9 = [v5 createManagedObjectContext];
    fCallRecordContext = v6->fCallRecordContext;
    v6->fCallRecordContext = v9;

    v11 = [v5 createManagedObjectContext];
    fCallDBPropertiesContext = v6->fCallDBPropertiesContext;
    v6->fCallDBPropertiesContext = v11;

    [(NSManagedObjectContext *)v6->fCallRecordContext setMergePolicy:*MEMORY[0x1E695D370]];
    [(NSManagedObjectContext *)v6->fCallDBPropertiesContext setUndoManager:0];
    [(NSManagedObjectContext *)v6->fCallRecordContext setUndoManager:0];
    objc_storeStrong(&v6->callDBManager, a3);
  }

  return v6;
}

- (id)callDBProperties
{
  v3 = [(CallHistoryDBHandle *)self fetchWithPredicate:0 forEntity:@"CallDBProperties"];
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v5 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle callDBProperties];
    }

    goto LABEL_8;
  }

  if ([v4 count] >= 2)
  {
    v5 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle callDBProperties];
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v4 firstObject];
LABEL_9:

  return v6;
}

+ (id)createWithDBManager:(id)a3
{
  v3 = a3;
  v4 = [[CallHistoryDBHandle alloc] initWithDBManager:v3];

  return v4;
}

+ (id)createForServer
{
  v2 = objc_alloc_init(CallDBManagerServer);
  if (v2)
  {
    v3 = [CallHistoryDBHandle createWithDBManager:v2];
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = +[CHLogServer sharedInstance];
    v5 = [v4 logHandleForDomain:"ch.dbhandle"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CallHistoryDBHandle createForClient];
    }
  }

  else
  {
    v6 = +[CHLogServer sharedInstance];
    v5 = [v6 logHandleForDomain:"ch.dbhandle"];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CallHistoryDBHandle createForClient];
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (void)registerForNotifications:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E695D350];
  fCallRecordContext = self->fCallRecordContext;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke;
  v38[3] = &unk_1E81DC0C8;
  v8 = v4;
  v39 = v8;
  objc_copyWeak(&v40, location);
  v9 = [v5 addObserverForName:v6 object:fCallRecordContext queue:0 usingBlock:v38];
  observerCallRecordRef = self->_observerCallRecordRef;
  self->_observerCallRecordRef = v9;

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  fCallDBPropertiesContext = self->fCallDBPropertiesContext;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_3;
  v35[3] = &unk_1E81DC0C8;
  v13 = v8;
  v36 = v13;
  objc_copyWeak(&v37, location);
  v14 = [v11 addObserverForName:v6 object:fCallDBPropertiesContext queue:0 usingBlock:v35];
  observerCallDBPropRef = self->_observerCallDBPropRef;
  self->_observerCallDBPropRef = v14;

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  callDBManager = self->callDBManager;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_5;
  v32[3] = &unk_1E81DC0C8;
  v18 = v13;
  v33 = v18;
  objc_copyWeak(&v34, location);
  v19 = [v16 addObserverForName:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:callDBManager queue:0 usingBlock:v32];
  moveCallRecordsFromTempStoreRef = self->_moveCallRecordsFromTempStoreRef;
  self->_moveCallRecordsFromTempStoreRef = v19;

  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  v22 = [(CallHistoryDBHandle *)self callDBManager];
  v23 = [v22 dbManager];
  v24 = [v23 fPersistentStoreCoordinator];
  v25 = *MEMORY[0x1E695D3E0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_7;
  v29[3] = &unk_1E81DC0C8;
  v26 = v18;
  v30 = v26;
  objc_copyWeak(&v31, location);
  v27 = [v21 addObserverForName:v25 object:v24 queue:0 usingBlock:v29];
  dataStoreAddedRef = self->_dataStoreAddedRef;
  self->_dataStoreAddedRef = v27;

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v40);

  objc_destroyWeak(location);
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_2;
  v6[3] = &unk_1E81DC0A0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) userInfo];
    [v4 handleCallRecordContextDidSaveNotification:v3];

    WeakRetained = v4;
  }
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_4;
  v6[3] = &unk_1E81DC0A0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) userInfo];
    [v4 handleCallDBPropContextDidSaveNotification:v3];

    WeakRetained = v4;
  }
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_6;
  v6[3] = &unk_1E81DC0F0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v4, v6);
  objc_destroyWeak(&v8);
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained callDBManager];
    v3 = [v2 tempDBLocation:0];

    [v4 moveCallRecordsFromDatabaseAtURL:v3];
    WeakRetained = v4;
  }
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_8;
  v6[3] = &unk_1E81DC0A0;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __48__CallHistoryDBHandle_registerForNotifications___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) userInfo];
    [v4 handlePersistentStoreChangedNotification:v3];

    WeakRetained = v4;
  }
}

- (void)unRegisterForNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E695D350];
  [v3 removeObserver:self->_observerCallRecordRef name:*MEMORY[0x1E695D350] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self->_observerCallDBPropRef name:v4 object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self->_moveCallRecordsFromTempStoreRef name:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self->_dataStoreAddedRef name:*MEMORY[0x1E695D3E0] object:0];
}

- (void)handlePersistentStoreChangedNotification:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKey:*MEMORY[0x1E695D2C8]];
  if ([v4 count])
  {
    v5 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = [v4 count];
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Handling persistent store added notification, store count: %lu", buf, 0xCu);
    }

    if ([(NSManagedObjectContext *)self->fCallRecordContext hasChanges])
    {
      [(CallHistoryDBHandle *)self save:0];
    }

    v6 = [(CallHistoryDBHandle *)self callDBManager];
    v7 = [v6 notifyDataStoreChanged];

    if (v7)
    {
      v8 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(CallHistoryDBHandle *)self callDBManager];
        v10 = getCHNotifyDataStoreChangeReasonAsString([v9 notifyDataStoreChangeReason]);
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Sending out database change notification when data store is added, reason: %{public}@", buf, 0xCu);
      }

      v15 = @"kCallHistoryDatabaseInitializedKey";
      v16 = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v12 = [[NotificationSender alloc] initWithName:@"kCallHistoryDatabaseChangedNotification"];
      [(NotificationSender *)v12 setUserInfo:v11];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v12 userInfo:v11];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Moving records from temp to permanent database", buf, 2u);
  }

  if (v4)
  {
    v6 = [DBManager versionForDBAtLocation:v4];
    v7 = [(CHLogger *)self logHandle];
    v8 = v7;
    if (v6 > 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v81 = v4;
        v82 = 2048;
        v83 = v6;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Database at location %{public}@ has version %ld", buf, 0x16u);
      }

      v8 = [CallDBManagerServer getDestinationModelForVersion:v6];
      if ([DBManager isDataStoreAtURLInitialized:v4 withModelAtURL:v8])
      {
        v9 = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Input database not in use", buf, 2u);
        }
      }

      else
      {
        v9 = [DBManager instanceWithModelURL:v8];
        if ([v9 addDataStoreAtLocation:v4 isEncrypted:0])
        {
          v11 = [v9 createManagedObjectContext];
          v12 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:v11];
          if (v12)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695D5E0]);
            [v13 setEntity:v12];
            v78 = 0;
            v73 = [v11 executeFetchRequest:v13 error:&v78];
            v14 = v78;
            v15 = [(CHLogger *)self logHandle];
            v16 = v15;
            if (v14)
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
              }

              v10 = 0;
              v17 = v14;
              v18 = v73;
            }

            else
            {
              v68 = v13;
              v69 = v12;
              v70 = v9;
              v71 = v8;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v73 count];
                *buf = 134218242;
                v81 = v21;
                v82 = 2114;
                v83 = v4;
                _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Moving %lu records from input database %{public}@ into permanent database", buf, 0x16u);
              }

              v72 = v4;

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v22 = v73;
              v23 = [v22 countByEnumeratingWithState:&v74 objects:v79 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v75;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v75 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v74 + 1) + 8 * i);
                    v28 = [(CallHistoryDBHandle *)self createCallRecord];
                    v29 = [v27 address];
                    [v28 setAddress:v29];

                    v30 = [v27 answered];
                    [v28 setAnswered:v30];

                    v31 = [v27 date];
                    [v28 setDate:v31];

                    v32 = [v27 duration];
                    [v28 setDuration:v32];

                    v33 = [v27 face_time_data];
                    [v28 setFace_time_data:v33];

                    v34 = [v27 name];
                    [v28 setName:v34];

                    v35 = [v27 read];
                    [v28 setRead:v35];

                    v36 = [v27 unique_id];
                    [v28 setUnique_id:v36];

                    v37 = [v27 calltype];
                    [v28 setCalltype:v37];

                    v38 = [v27 originated];
                    [v28 setOriginated:v38];

                    v39 = [v27 disconnected_cause];
                    [v28 setDisconnected_cause:v39];

                    v40 = [v27 number_availability];
                    [v28 setNumber_availability:v40];

                    v41 = [v27 iso_country_code];
                    [v28 setIso_country_code:v41];

                    v42 = [v28 managedObjectContext];
                    if (v42)
                    {
                      v43 = [v27 compositeCallCategoryForContext:v42];
                      [v28 setCall_category:v43];

                      v44 = [v27 compositeHandleTypeForContext:v42];
                      [v28 setHandle_type:v44];

                      if ([v27 supportsImageURL])
                      {
                        v45 = [v27 imageURL];
                        [v28 setImageURL:v45];
                      }

                      else
                      {
                        [v28 setImageURL:0];
                      }

                      v46 = [v27 compositeJunkConfidenceForContext:v42];
                      [v28 setJunkConfidence:v46];

                      v47 = [v27 compositeLocalParticipantUUIDForContext:v42];
                      [v28 setLocalParticipantUUID:v47];

                      v48 = [v27 compositeOutgoingLocalParticipantUUIDForContext:v42];
                      [v28 setOutgoingLocalParticipantUUID:v48];

                      v49 = [v27 compositeParticipantGroupUUIDForContext:v42];
                      [v28 setParticipantGroupUUID:v49];

                      v50 = [v27 compositeRemoteParticipantHandlesForContext:v42];
                      [v28 setRemoteParticipantHandles:v50];

                      v51 = [v27 compositeServiceProviderForContext:v42];
                      [v28 setService_provider:v51];

                      if ([v27 supportsHasMessage])
                      {
                        v52 = [v27 hasMessage];
                        [v28 setHasMessage:v52];
                      }

                      else
                      {
                        [v28 setHasMessage:0];
                      }

                      if ([v27 supportsJunkIdentificationCategory])
                      {
                        v53 = [v27 junkIdentificationCategory];
                        [v28 setJunkIdentificationCategory:v53];
                      }

                      else
                      {
                        [v28 setJunkIdentificationCategory:0];
                      }

                      if ([v27 supportsAutoAnsweredReason])
                      {
                        v54 = [v27 autoAnsweredReason];
                        [v28 setAutoAnsweredReason:v54];
                      }

                      else
                      {
                        [v28 setAutoAnsweredReason:0];
                      }

                      v55 = [v27 compositeEmergencyMediaItemsForContext:v42];
                      [v28 setEmergencyMediaItems:v55];

                      if ([v27 supportsEmergencyMedia])
                      {
                        v56 = [v27 usedEmergencyVideoStreaming];
                      }

                      else
                      {
                        v56 = 0;
                      }

                      [v28 setUsedEmergencyVideoStreaming:v56];
                      if ([v27 supportsEmergencyMedia])
                      {
                        v57 = [v27 wasEmergencyCall];
                      }

                      else
                      {
                        v57 = 0;
                      }

                      [v28 setWasEmergencyCall:v57];
                      if ([v27 supportsBlockedBy])
                      {
                        v58 = [v27 blockedByExtension];
                        [v28 setBlockedByExtension:v58];
                      }

                      else
                      {
                        [v28 setBlockedByExtension:0];
                      }

                      if ([v27 supportsBlockedByName])
                      {
                        v59 = [v27 blockedByExtensionName];
                        [v28 setBlockedByExtensionName:v59];
                      }

                      else
                      {
                        [v28 setBlockedByExtensionName:0];
                      }

                      if ([v27 supportsIdentityExtension])
                      {
                        v60 = [v27 identityExtension];
                        [v28 setIdentityExtension:v60];
                      }

                      else
                      {
                        [v28 setIdentityExtension:0];
                      }

                      v61 = [v27 compositeCallDirectoryIdentityType:v42];
                      [v28 setCallDirectoryIdentityType:v61];

                      if ([v27 supportsScreenSharingType])
                      {
                        [v27 screenSharingType];
                      }

                      else
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
                      }
                      v62 = ;
                      [v28 setScreenSharingType:v62];

                      v63 = [v27 compositeInitiatorHandleForContext:v42];
                      [v28 setInitiator:v63];

                      if ([v27 supportsReminderUUID])
                      {
                        v64 = [v27 reminderUUID];
                        [v28 setReminderUUID:v64];
                      }

                      else
                      {
                        [v28 setReminderUUID:0];
                      }

                      if ([v27 supportsCommunicationTrustScore])
                      {
                        v65 = [v27 communicationTrustScore];
                        [v28 setCommunicationTrustScore:v65];
                      }

                      else
                      {
                        [v28 setCommunicationTrustScore:0];
                      }
                    }

                    [v11 deleteObject:v27];
                  }

                  v24 = [v22 countByEnumeratingWithState:&v74 objects:v79 count:16];
                }

                while (v24);
              }

              if ([(CallHistoryDBHandle *)self save:0])
              {
                v8 = v71;
                v4 = v72;
                v12 = v69;
                v9 = v70;
                v13 = v68;
                v17 = 0;
                v18 = v73;
                if (![(CallHistoryDBHandle *)self handleSaveForCallRecordContext:v11 error:0])
                {
                  v66 = [(CHLogger *)self logHandle];
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C3E90000, v66, OS_LOG_TYPE_DEFAULT, "Failed to delete calls from the input database", buf, 2u);
                  }
                }

                [v70 removeDataStoreAtLocation:v72];
                v10 = 1;
              }

              else
              {
                v67 = [(CHLogger *)self logHandle];
                v8 = v71;
                v4 = v72;
                v12 = v69;
                v9 = v70;
                v13 = v68;
                v17 = 0;
                v18 = v73;
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C3E90000, v67, OS_LOG_TYPE_DEFAULT, "Failed to save calls from input database to perm database", buf, 2u);
                }

                v10 = 0;
              }
            }
          }

          else
          {
            v13 = [(CHLogger *)self logHandle];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [CallDBManagerClient willMoveCallsFromTempDatabase];
            }

            v10 = 0;
          }

          goto LABEL_22;
        }
      }

      v10 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
    }
  }

  else
  {
    v8 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
    }
  }

  v10 = 0;
LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)handleCallRecordContextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "handleCallRecordContextDidSaveNotification", v14, 2u);
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695D328]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695D2F8]];

  v9 = objc_opt_new();
  [v9 setObject:@"External" forKeyedSubscript:@"kNotificationReason"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count") + objc_msgSend(v8, "count")}];
  [v9 setObject:v10 forKeyedSubscript:@"kNotificationChangeCount"];

  [(CallHistoryDBHandle *)self setCallsDidChangeDarwinNotificationCount:[(CallHistoryDBHandle *)self callsDidChangeDarwinNotificationCount]+ 1];
  notify_post("com.apple.callhistory.notification.calls-changed");
  notify_post("com.apple.CallHistoryPluginHelper.launchnotification");
  if ([v6 count])
  {
    v11 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v11 postNotificationName:@"kCallHistoryCallRecordInsertedNotification" object:0 userInfo:0 deliverImmediately:1];
  }

  [v9 setObject:@"Internal" forKeyedSubscript:@"kNotificationReason"];
  v12 = [[NotificationSender alloc] initWithName:@"kCallHistoryDatabaseChangedNotification"];
  [(NotificationSender *)v12 setUserInfo:v9];
  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v12 userInfo:v9];
}

- (void)handleCallDBPropContextDidSaveNotification:(id)a3
{
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  v5 = [objc_opt_class() objectId];
  [v4 postNotificationName:@"kCallHistoryTimersDistributedSaveNotification" object:v5 userInfo:0];

  [(CallHistoryDBHandle *)self postTimersChangedNotification];
}

- (void)postTimersChangedNotification
{
  v7 = [(CallHistoryDBHandle *)self callDBProperties];
  v2 = MEMORY[0x1E695DF20];
  v3 = [v7 timer_incoming];
  v4 = [v7 timer_outgoing];
  v5 = [v7 timer_lifetime];
  v6 = [v2 dictionaryWithObjectsAndKeys:{v3, @"kCHTimerIncomingKey", v4, @"kCHTimerOutgoingKey", v5, @"kCHTimerLifetimeKey", 0}];

  notifyClientsOfEvent(@"kCallHistoryTimersChangedNotification", v6);
}

- (void)mergeCallRecordChangesFromRemoteAppSave
{
  if ([(CallHistoryDBHandle *)self callsDidChangeDarwinNotificationCount])
  {
    v3 = [(CallHistoryDBHandle *)self callsDidChangeDarwinNotificationCount]- 1;

    [(CallHistoryDBHandle *)self setCallsDidChangeDarwinNotificationCount:v3];
  }

  else
  {
    [(NSManagedObjectContext *)self->fCallRecordContext reset];
    v4 = [[NotificationSender alloc] initWithName:@"kCallHistoryDatabaseChangedNotification"];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v4 userInfo:0];

    v6 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Got call record save notification from other app", v7, 2u);
    }
  }
}

- (id)fetchWithPredicate:(id)a3 forEntity:(id)a4 withLimit:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  ct_green_tea_logger_create_static();
  v10 = getCTGreenTeaOsLogHandle();
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_INFO, "Read: %{public}@", buf, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v12 setReturnsObjectsAsFaults:0];
  if (v8)
  {
    [v12 setPredicate:v8];
  }

  v13 = [DBManager entityDescriptionHavingName:v9 forContext:self->fCallRecordContext];
  if (!v13)
  {
    v19 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchWithPredicate:forEntity:withLimit:];
    }

    goto LABEL_23;
  }

  [v12 setEntity:v13];
  if ([v9 isEqualToString:@"CallRecord"])
  {
    v28[0] = @"remoteParticipantHandles";
    v28[1] = @"emergencyMediaItems";
    v28[2] = @"initiatorHandle";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    [v12 setRelationshipKeyPathsForPrefetching:v14];

    v15 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
    v27 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [v12 setSortDescriptors:v16];

    if (v5)
    {
      [v12 setFetchLimit:{-[CallHistoryDBHandle callHistoryDBFetchLimit](self, "callHistoryDBFetchLimit")}];
    }

    fCallRecordContext = self->fCallRecordContext;
    v26 = 0;
    v18 = [(NSManagedObjectContext *)fCallRecordContext executeFetchRequest:v12 error:&v26];
    v19 = v26;

LABEL_15:
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ([v9 isEqualToString:@"CallDBProperties"])
  {
    fCallDBPropertiesContext = self->fCallDBPropertiesContext;
    v25 = 0;
    v18 = [(NSManagedObjectContext *)fCallDBPropertiesContext executeFetchRequest:v12 error:&v25];
    v19 = v25;
    goto LABEL_15;
  }

  v21 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_1C3E90000, v21, OS_LOG_TYPE_DEFAULT, "Context for given entity %{public}@ not created", buf, 0xCu);
  }

  v19 = 0;
LABEL_20:
  v22 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle fetchWithPredicate:forEntity:withLimit:];
  }

LABEL_23:
  v18 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (int64_t)deleteManagedCallsWithPredicate:(id)a3
{
  v4 = [(CallHistoryDBHandle *)self fetchManagedCallsWithPredicate:a3 sortDescriptors:0 limit:0 offset:0 batchSize:0];
  if (v4)
  {
    v5 = [(CallHistoryDBHandle *)self deleteManagedCalls:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)deleteManagedCalls:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v4 count];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)fetchManagedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[CallRecord fetchRequest];
  [v8 setPredicate:v7];

  [v8 setSortDescriptors:v6];
  [v8 setFetchLimit:{-[CallHistoryDBHandle callHistoryDBFetchLimit](self, "callHistoryDBFetchLimit")}];
  ct_green_tea_logger_create_static();
  v9 = getCTGreenTeaOsLogHandle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 entityName];
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_INFO, "Count: %@", buf, 0xCu);
  }

  fCallRecordContext = self->fCallRecordContext;
  v20 = 0;
  v13 = [(NSManagedObjectContext *)fCallRecordContext countForFetchRequest:v8 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL && v14 != 0)
  {
    v17 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchManagedCallCountWithPredicate:sortDescriptors:];
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)fetchManagedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7
{
  v29[3] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a3;
  v14 = +[CallRecord fetchRequest];
  [v14 setFetchBatchSize:a7];
  [v14 setFetchLimit:a5];
  [v14 setFetchOffset:a6];
  [v14 setPredicate:v13];

  [v14 setReturnsObjectsAsFaults:0];
  [v14 setSortDescriptors:v12];

  v29[0] = @"remoteParticipantHandles";
  v29[1] = @"emergencyMediaItems";
  v29[2] = @"initiatorHandle";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  [v14 setRelationshipKeyPathsForPrefetching:v15];

  ct_green_tea_logger_create_static();
  v16 = getCTGreenTeaOsLogHandle();
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = [v14 entityName];
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&dword_1C3E90000, v17, OS_LOG_TYPE_INFO, "Read: %@", buf, 0xCu);
  }

  fCallRecordContext = self->fCallRecordContext;
  v26 = 0;
  v20 = [(NSManagedObjectContext *)fCallRecordContext executeFetchRequest:v14 error:&v26];
  v21 = v26;
  v22 = v21;
  if (!v20 && v21)
  {
    v23 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchManagedCallsWithPredicate:sortDescriptors:limit:offset:batchSize:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)fetchManagedCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7
{
  v46[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = +[CallRecord fetchRequest];
  [v14 setFetchBatchSize:a7];
  [v14 setFetchLimit:a5];
  [v14 setFetchOffset:a6];
  [v14 setPredicate:v12];
  v46[0] = @"unique_id";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [v14 setPropertiesToFetch:v15];

  [v14 setResultType:2];
  [v14 setSortDescriptors:v13];
  ct_green_tea_logger_create_static();
  v16 = getCTGreenTeaOsLogHandle();
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = [v14 entityName];
    *buf = 138412290;
    v45 = v18;
    _os_log_impl(&dword_1C3E90000, v17, OS_LOG_TYPE_INFO, "Read: %@", buf, 0xCu);
  }

  fCallRecordContext = self->fCallRecordContext;
  v42 = 0;
  v20 = [(NSManagedObjectContext *)fCallRecordContext executeFetchRequest:v14 error:&v42];
  v21 = v42;
  v22 = v21;
  if (v20)
  {
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = v20;
    v25 = [v24 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v34 = v20;
      v35 = v22;
      v36 = v13;
      v37 = v12;
      v27 = *v39;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v38 + 1) + 8 * i) objectForKeyedSubscript:{@"unique_id", v34, v35, v36, v37, v38}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
            if ([v30 length])
            {
              [v23 addObject:v30];
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v26);
      v13 = v36;
      v12 = v37;
      v20 = v34;
      v22 = v35;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v21)
  {
    v24 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchManagedCallIdentifiersWithPredicate:sortDescriptors:limit:offset:batchSize:];
    }

    v23 = 0;
    goto LABEL_21;
  }

  v23 = 0;
LABEL_22:
  v31 = [v23 copy];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)updateManagedCallsWithPredicate:(id)a3 propertiesToUpdate:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CallHistoryDBHandle *)self fetchManagedCallsWithPredicate:a3 sortDescriptors:0 limit:0 offset:0 batchSize:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [v6 allKeys];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [v6 objectForKeyedSubscript:v16];
              [v10 setValue:v17 forKey:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return obj;
}

- (id)createCallRecord
{
  v3 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:self->fCallRecordContext];
  if (v3)
  {
    v4 = [[CallRecord alloc] initWithEntity:v3 insertIntoManagedObjectContext:self->fCallRecordContext];
  }

  else
  {
    v5 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle createCallRecord];
    }

    v4 = 0;
  }

  return v4;
}

- (id)getArrayForCallTypeMask:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v9[1] = 2;
  v9[2] = 16;
  v9[3] = 8;
  v9[4] = 4;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 5; ++i)
  {
    if ((v9[i] & a3) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fetchAllObjectsWithUniqueId:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"unique_id == %@", v4];
  v6 = [(CallHistoryDBHandle *)self fetchWithPredicate:v5 forEntity:@"CallRecord"];
  if (![v6 count])
  {
    v7 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Database has no calls with %{public}@ UUID", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fetchObjectWithUniqueId:(id)a3
{
  v4 = [(CallHistoryDBHandle *)self fetchAllObjectsWithUniqueId:a3];
  if ([v4 count] >= 2)
  {
    v5 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Multiple object with same uniqueId found but only one requested. Returning last matched object.", v8, 2u);
    }
  }

  v6 = [v4 lastObject];

  return v6;
}

- (id)fetchObjectsWithUniqueIds:(id)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"unique_id IN %@", a3];
  v5 = [(CallHistoryDBHandle *)self fetchWithPredicate:v4 forEntity:@"CallRecord"];

  return v5;
}

- (void)deleteObjectWithUniqueId:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CallHistoryDBHandle *)self fetchObjectWithUniqueId:v4];
  if (v5)
  {
    [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:v5];
  }

  else
  {
    v6 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Record with %{public}@ uniqueId does not exist", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectsWithUniqueIds:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CallHistoryDBHandle *)self fetchObjectsWithUniqueIds:v4];
  v6 = v5;
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

          [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "Record with %{public}@ uniqueIds does not exist", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)deleteAll
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CallHistoryDBHandle *)self fetchAllNoLimit];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)performSaveWithBackgroundTaskAssertion:(id)a3 error:(id *)a4
{
  v5 = a3;
  BackgroundTaskAssertion = createBackgroundTaskAssertion();
  v7 = [v5 save:a4];

  if (BackgroundTaskAssertion)
  {
    CFRelease(BackgroundTaskAssertion);
  }

  return v7;
}

- (void)updateCallDBProperties
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(NSManagedObjectContext *)self->fCallRecordContext insertedObjects];
  v32 = self;
  v4 = [(CallHistoryDBHandle *)self callDBProperties];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v33 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v4;
          v12 = v10;
          v13 = [v12 calltype];
          v14 = [v13 integerValue];

          if (v14 == 1)
          {
            v15 = [v12 duration];
            [v15 doubleValue];
            v17 = v16;

            if (v17 > 0.0)
            {
              v18 = [v12 originated];
              v19 = [v18 BOOLValue];

              if (v19)
              {
                v20 = [v11 timer_outgoing];
                [v20 doubleValue];
                v22 = v17 + v21;

                v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
                [v11 setTimer_outgoing:v23];
              }

              else
              {
                v24 = [v11 timer_incoming];
                [v24 doubleValue];
                v26 = v17 + v25;

                v23 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
                [v11 setTimer_incoming:v23];
              }

              v27 = [v11 timer_lifetime];
              [v27 doubleValue];
              v29 = v17 + v28;

              v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
              [v11 setTimer_lifetime:v30];

              v5 = v33;
            }
          }

          v4 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  if ([(NSManagedObjectContext *)v32->fCallDBPropertiesContext hasChanges])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __45__CallHistoryDBHandle_updateCallDBProperties__block_invoke;
    v34[3] = &unk_1E81DBF38;
    v34[4] = v32;
    [(CallHistoryDBHandle *)v32 saveTimers:v34];
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleSaveForCallRecordContext:(id)a3 error:(id *)a4
{
  v14 = 0;
  v6 = [(CallHistoryDBHandle *)self performSaveWithBackgroundTaskAssertion:a3 error:&v14];
  v7 = v14;
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    *a4 = v8;
  }

  v10 = [(CHLogger *)self logHandle];
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "Save performed successfully", v13, 2u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle handleSaveForCallRecordContext:error:];
  }

  return v6;
}

- (BOOL)save:(id *)a3
{
  v5 = [(NSManagedObjectContext *)self->fCallRecordContext persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  v7 = [v6 count];

  if (v7)
  {
    if ([(NSManagedObjectContext *)self->fCallRecordContext hasChanges])
    {
      [(CallHistoryDBHandle *)self updateCallDBProperties];
      fCallRecordContext = self->fCallRecordContext;

      return [(CallHistoryDBHandle *)self handleSaveForCallRecordContext:fCallRecordContext error:a3];
    }

    else
    {
      v11 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "No changes in the data context to save", v12, 2u);
      }

      return 1;
    }
  }

  else
  {
    v10 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle save:];
    }

    return 0;
  }
}

- (id)timerIncoming
{
  v2 = [(CallHistoryDBHandle *)self callDBProperties];
  v3 = [v2 timer_incoming];

  return v3;
}

- (id)timerOutgoing
{
  v2 = [(CallHistoryDBHandle *)self callDBProperties];
  v3 = [v2 timer_outgoing];

  return v3;
}

- (id)timerLifetime
{
  v2 = [(CallHistoryDBHandle *)self callDBProperties];
  v3 = [v2 timer_lifetime];

  return v3;
}

- (BOOL)saveTimers:(id)a3
{
  v4 = a3;
  v5 = [(NSManagedObjectContext *)self->fCallDBPropertiesContext persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(CallHistoryDBHandle *)self callDBProperties];
    fCallDBPropertiesContext = self->fCallDBPropertiesContext;
    v16 = 0;
    v10 = [(CallHistoryDBHandle *)self performSaveWithBackgroundTaskAssertion:fCallDBPropertiesContext error:&v16];
    v11 = v16;
    v12 = v11;
    if (!v10)
    {
      if ([v11 code] != 133020)
      {
        v14 = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CallHistoryDBHandle saveTimers:];
        }

        v13 = 0;
        goto LABEL_12;
      }

      [(NSManagedObjectContext *)self->fCallDBPropertiesContext refreshObject:v8 mergeChanges:0];
      v4[2](v4);
    }

    v13 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v8 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle save:];
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)resetTimers
{
  v3 = [(CallHistoryDBHandle *)self callDBProperties];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [v3 setTimer_incoming:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [v3 setTimer_outgoing:v5];

  v6 = MEMORY[0x1E696AD98];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];

  [DBManager setPropertyValue:v8 forKey:@"timer_last_reset" forContext:self->fCallDBPropertiesContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__CallHistoryDBHandle_resetTimers__block_invoke;
  v9[3] = &unk_1E81DBF38;
  v9[4] = self;
  [(CallHistoryDBHandle *)self saveTimers:v9];
}

- (BOOL)resetAllTimers
{
  v2 = self;
  v3 = [(CallHistoryDBHandle *)self callDBProperties];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [v3 setTimer_all:v4];
  [v3 setTimer_incoming:v4];
  [v3 setTimer_outgoing:v4];
  [v3 setTimer_lifetime:v4];
  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [v5 numberWithDouble:?];

  [DBManager setPropertyValue:v7 forKey:@"timer_last_reset" forContext:v2->fCallDBPropertiesContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__CallHistoryDBHandle_resetAllTimers__block_invoke;
  v9[3] = &unk_1E81DBF38;
  v9[4] = v2;
  LOBYTE(v2) = [(CallHistoryDBHandle *)v2 saveTimers:v9];

  return v2;
}

- (void)dealloc
{
  [(CallHistoryDBHandle *)self unRegisterForNotifications];
  v3.receiver = self;
  v3.super_class = CallHistoryDBHandle;
  [(CallHistoryDBHandle *)&v3 dealloc];
}

- (void)callDBProperties
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createForClient
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)moveCallRecordsFromDatabaseAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)moveCallRecordsFromDatabaseAtURL:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)moveCallRecordsFromDatabaseAtURL:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchWithPredicate:forEntity:withLimit:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchWithPredicate:forEntity:withLimit:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchManagedCallCountWithPredicate:sortDescriptors:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchManagedCallsWithPredicate:sortDescriptors:limit:offset:batchSize:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchManagedCallIdentifiersWithPredicate:sortDescriptors:limit:offset:batchSize:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createCallRecord
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleSaveForCallRecordContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)save:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveTimers:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end