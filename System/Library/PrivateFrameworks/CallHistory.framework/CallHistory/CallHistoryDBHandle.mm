@interface CallHistoryDBHandle
+ (NSString)objectId;
+ (id)createForClient;
+ (id)createForServer;
+ (id)createWithDBManager:(id)manager;
+ (void)createForClient;
- (BOOL)handleSaveForCallRecordContext:(id)context error:(id *)error;
- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)l;
- (BOOL)performSaveWithBackgroundTaskAssertion:(id)assertion error:(id *)error;
- (BOOL)resetAllTimers;
- (BOOL)save:(id *)save;
- (BOOL)saveTimers:(id)timers;
- (CallHistoryDBHandle)initWithDBManager:(id)manager;
- (id)callDBProperties;
- (id)createCallRecord;
- (id)fetchAllObjectsWithUniqueId:(id)id;
- (id)fetchManagedCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchManagedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchObjectWithUniqueId:(id)id;
- (id)fetchObjectsWithUniqueIds:(id)ids;
- (id)fetchWithPredicate:(id)predicate forEntity:(id)entity withLimit:(BOOL)limit;
- (id)getArrayForCallTypeMask:(unsigned int)mask;
- (id)timerIncoming;
- (id)timerLifetime;
- (id)timerOutgoing;
- (id)updateManagedCallsWithPredicate:(id)predicate propertiesToUpdate:(id)update;
- (int64_t)callHistoryDBFetchLimit;
- (int64_t)deleteManagedCalls:(id)calls;
- (int64_t)deleteManagedCallsWithPredicate:(id)predicate;
- (unint64_t)fetchManagedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (void)callDBProperties;
- (void)createCallRecord;
- (void)dealloc;
- (void)deleteAll;
- (void)deleteObjectWithUniqueId:(id)id;
- (void)deleteObjectsWithUniqueIds:(id)ids;
- (void)handleCallDBPropContextDidSaveNotification:(id)notification;
- (void)handleCallRecordContextDidSaveNotification:(id)notification;
- (void)handlePersistentStoreChangedNotification:(id)notification;
- (void)mergeCallRecordChangesFromRemoteAppSave;
- (void)postTimersChangedNotification;
- (void)registerForNotifications:(id)notifications;
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
  featureFlags = [(CallHistoryDBHandle *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (!increaseCallHistoryEnabled)
  {
    return 200;
  }

  featureFlags2 = [(CallHistoryDBHandle *)self featureFlags];
  keepCallsEnabled = [featureFlags2 keepCallsEnabled];
  v7 = &kCallHistoryNoFetchLimit;
  if (!keepCallsEnabled)
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

- (CallHistoryDBHandle)initWithDBManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = CallHistoryDBHandle;
  v6 = [(CHLogger *)&v14 initWithDomain:"ch.dbhandle"];
  if (v6)
  {
    v7 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v6->_featureFlags;
    v6->_featureFlags = v7;

    createManagedObjectContext = [managerCopy createManagedObjectContext];
    fCallRecordContext = v6->fCallRecordContext;
    v6->fCallRecordContext = createManagedObjectContext;

    createManagedObjectContext2 = [managerCopy createManagedObjectContext];
    fCallDBPropertiesContext = v6->fCallDBPropertiesContext;
    v6->fCallDBPropertiesContext = createManagedObjectContext2;

    [(NSManagedObjectContext *)v6->fCallRecordContext setMergePolicy:*MEMORY[0x1E695D370]];
    [(NSManagedObjectContext *)v6->fCallDBPropertiesContext setUndoManager:0];
    [(NSManagedObjectContext *)v6->fCallRecordContext setUndoManager:0];
    objc_storeStrong(&v6->callDBManager, manager);
  }

  return v6;
}

- (id)callDBProperties
{
  v3 = [(CallHistoryDBHandle *)self fetchWithPredicate:0 forEntity:@"CallDBProperties"];
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle callDBProperties];
    }

    goto LABEL_8;
  }

  if ([v4 count] >= 2)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle callDBProperties];
    }

LABEL_8:

    firstObject = 0;
    goto LABEL_9;
  }

  firstObject = [v4 firstObject];
LABEL_9:

  return firstObject;
}

+ (id)createWithDBManager:(id)manager
{
  managerCopy = manager;
  v4 = [[CallHistoryDBHandle alloc] initWithDBManager:managerCopy];

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

- (void)registerForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  objc_initWeak(location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E695D350];
  fCallRecordContext = self->fCallRecordContext;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke;
  v38[3] = &unk_1E81DC0C8;
  v8 = notificationsCopy;
  v39 = v8;
  objc_copyWeak(&v40, location);
  v9 = [defaultCenter addObserverForName:v6 object:fCallRecordContext queue:0 usingBlock:v38];
  observerCallRecordRef = self->_observerCallRecordRef;
  self->_observerCallRecordRef = v9;

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  fCallDBPropertiesContext = self->fCallDBPropertiesContext;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_3;
  v35[3] = &unk_1E81DC0C8;
  v13 = v8;
  v36 = v13;
  objc_copyWeak(&v37, location);
  v14 = [defaultCenter2 addObserverForName:v6 object:fCallDBPropertiesContext queue:0 usingBlock:v35];
  observerCallDBPropRef = self->_observerCallDBPropRef;
  self->_observerCallDBPropRef = v14;

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  callDBManager = self->callDBManager;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_5;
  v32[3] = &unk_1E81DC0C8;
  v18 = v13;
  v33 = v18;
  objc_copyWeak(&v34, location);
  v19 = [defaultCenter3 addObserverForName:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:callDBManager queue:0 usingBlock:v32];
  moveCallRecordsFromTempStoreRef = self->_moveCallRecordsFromTempStoreRef;
  self->_moveCallRecordsFromTempStoreRef = v19;

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  callDBManager = [(CallHistoryDBHandle *)self callDBManager];
  dbManager = [callDBManager dbManager];
  fPersistentStoreCoordinator = [dbManager fPersistentStoreCoordinator];
  v25 = *MEMORY[0x1E695D3E0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__CallHistoryDBHandle_registerForNotifications___block_invoke_7;
  v29[3] = &unk_1E81DC0C8;
  v26 = v18;
  v30 = v26;
  objc_copyWeak(&v31, location);
  v27 = [defaultCenter4 addObserverForName:v25 object:fPersistentStoreCoordinator queue:0 usingBlock:v29];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E695D350];
  [defaultCenter removeObserver:self->_observerCallRecordRef name:*MEMORY[0x1E695D350] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self->_observerCallDBPropRef name:v4 object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self->_moveCallRecordsFromTempStoreRef name:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self->_dataStoreAddedRef name:*MEMORY[0x1E695D3E0] object:0];
}

- (void)handlePersistentStoreChangedNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [notification objectForKey:*MEMORY[0x1E695D2C8]];
  if ([v4 count])
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = [v4 count];
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Handling persistent store added notification, store count: %lu", buf, 0xCu);
    }

    if ([(NSManagedObjectContext *)self->fCallRecordContext hasChanges])
    {
      [(CallHistoryDBHandle *)self save:0];
    }

    callDBManager = [(CallHistoryDBHandle *)self callDBManager];
    notifyDataStoreChanged = [callDBManager notifyDataStoreChanged];

    if (notifyDataStoreChanged)
    {
      logHandle2 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        callDBManager2 = [(CallHistoryDBHandle *)self callDBManager];
        v10 = getCHNotifyDataStoreChangeReasonAsString([callDBManager2 notifyDataStoreChangeReason]);
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Sending out database change notification when data store is added, reason: %{public}@", buf, 0xCu);
      }

      v15 = @"kCallHistoryDatabaseInitializedKey";
      v16 = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v12 = [[NotificationSender alloc] initWithName:@"kCallHistoryDatabaseChangedNotification"];
      [(NotificationSender *)v12 setUserInfo:v11];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v12 userInfo:v11];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)l
{
  v84 = *MEMORY[0x1E69E9840];
  lCopy = l;
  logHandle = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Moving records from temp to permanent database", buf, 2u);
  }

  if (lCopy)
  {
    v6 = [DBManager versionForDBAtLocation:lCopy];
    logHandle2 = [(CHLogger *)self logHandle];
    logHandle8 = logHandle2;
    if (v6 > 0)
    {
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v81 = lCopy;
        v82 = 2048;
        v83 = v6;
        _os_log_impl(&dword_1C3E90000, logHandle8, OS_LOG_TYPE_DEFAULT, "Database at location %{public}@ has version %ld", buf, 0x16u);
      }

      logHandle8 = [CallDBManagerServer getDestinationModelForVersion:v6];
      if ([DBManager isDataStoreAtURLInitialized:lCopy withModelAtURL:logHandle8])
      {
        logHandle3 = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "Input database not in use", buf, 2u);
        }
      }

      else
      {
        logHandle3 = [DBManager instanceWithModelURL:logHandle8];
        if ([logHandle3 addDataStoreAtLocation:lCopy isEncrypted:0])
        {
          createManagedObjectContext = [logHandle3 createManagedObjectContext];
          v12 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:createManagedObjectContext];
          if (v12)
          {
            logHandle7 = objc_alloc_init(MEMORY[0x1E695D5E0]);
            [logHandle7 setEntity:v12];
            v78 = 0;
            v73 = [createManagedObjectContext executeFetchRequest:logHandle7 error:&v78];
            v14 = v78;
            logHandle4 = [(CHLogger *)self logHandle];
            v16 = logHandle4;
            if (v14)
            {
              if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
              {
                [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
              }

              v10 = 0;
              v17 = v14;
              v18 = v73;
            }

            else
            {
              v68 = logHandle7;
              v69 = v12;
              v70 = logHandle3;
              v71 = logHandle8;
              if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v73 count];
                *buf = 134218242;
                v81 = v21;
                v82 = 2114;
                v83 = lCopy;
                _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Moving %lu records from input database %{public}@ into permanent database", buf, 0x16u);
              }

              v72 = lCopy;

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
                    createCallRecord = [(CallHistoryDBHandle *)self createCallRecord];
                    address = [v27 address];
                    [createCallRecord setAddress:address];

                    answered = [v27 answered];
                    [createCallRecord setAnswered:answered];

                    date = [v27 date];
                    [createCallRecord setDate:date];

                    duration = [v27 duration];
                    [createCallRecord setDuration:duration];

                    face_time_data = [v27 face_time_data];
                    [createCallRecord setFace_time_data:face_time_data];

                    name = [v27 name];
                    [createCallRecord setName:name];

                    read = [v27 read];
                    [createCallRecord setRead:read];

                    unique_id = [v27 unique_id];
                    [createCallRecord setUnique_id:unique_id];

                    calltype = [v27 calltype];
                    [createCallRecord setCalltype:calltype];

                    originated = [v27 originated];
                    [createCallRecord setOriginated:originated];

                    disconnected_cause = [v27 disconnected_cause];
                    [createCallRecord setDisconnected_cause:disconnected_cause];

                    number_availability = [v27 number_availability];
                    [createCallRecord setNumber_availability:number_availability];

                    iso_country_code = [v27 iso_country_code];
                    [createCallRecord setIso_country_code:iso_country_code];

                    managedObjectContext = [createCallRecord managedObjectContext];
                    if (managedObjectContext)
                    {
                      v43 = [v27 compositeCallCategoryForContext:managedObjectContext];
                      [createCallRecord setCall_category:v43];

                      v44 = [v27 compositeHandleTypeForContext:managedObjectContext];
                      [createCallRecord setHandle_type:v44];

                      if ([v27 supportsImageURL])
                      {
                        imageURL = [v27 imageURL];
                        [createCallRecord setImageURL:imageURL];
                      }

                      else
                      {
                        [createCallRecord setImageURL:0];
                      }

                      v46 = [v27 compositeJunkConfidenceForContext:managedObjectContext];
                      [createCallRecord setJunkConfidence:v46];

                      v47 = [v27 compositeLocalParticipantUUIDForContext:managedObjectContext];
                      [createCallRecord setLocalParticipantUUID:v47];

                      v48 = [v27 compositeOutgoingLocalParticipantUUIDForContext:managedObjectContext];
                      [createCallRecord setOutgoingLocalParticipantUUID:v48];

                      v49 = [v27 compositeParticipantGroupUUIDForContext:managedObjectContext];
                      [createCallRecord setParticipantGroupUUID:v49];

                      v50 = [v27 compositeRemoteParticipantHandlesForContext:managedObjectContext];
                      [createCallRecord setRemoteParticipantHandles:v50];

                      v51 = [v27 compositeServiceProviderForContext:managedObjectContext];
                      [createCallRecord setService_provider:v51];

                      if ([v27 supportsHasMessage])
                      {
                        hasMessage = [v27 hasMessage];
                        [createCallRecord setHasMessage:hasMessage];
                      }

                      else
                      {
                        [createCallRecord setHasMessage:0];
                      }

                      if ([v27 supportsJunkIdentificationCategory])
                      {
                        junkIdentificationCategory = [v27 junkIdentificationCategory];
                        [createCallRecord setJunkIdentificationCategory:junkIdentificationCategory];
                      }

                      else
                      {
                        [createCallRecord setJunkIdentificationCategory:0];
                      }

                      if ([v27 supportsAutoAnsweredReason])
                      {
                        autoAnsweredReason = [v27 autoAnsweredReason];
                        [createCallRecord setAutoAnsweredReason:autoAnsweredReason];
                      }

                      else
                      {
                        [createCallRecord setAutoAnsweredReason:0];
                      }

                      v55 = [v27 compositeEmergencyMediaItemsForContext:managedObjectContext];
                      [createCallRecord setEmergencyMediaItems:v55];

                      if ([v27 supportsEmergencyMedia])
                      {
                        usedEmergencyVideoStreaming = [v27 usedEmergencyVideoStreaming];
                      }

                      else
                      {
                        usedEmergencyVideoStreaming = 0;
                      }

                      [createCallRecord setUsedEmergencyVideoStreaming:usedEmergencyVideoStreaming];
                      if ([v27 supportsEmergencyMedia])
                      {
                        wasEmergencyCall = [v27 wasEmergencyCall];
                      }

                      else
                      {
                        wasEmergencyCall = 0;
                      }

                      [createCallRecord setWasEmergencyCall:wasEmergencyCall];
                      if ([v27 supportsBlockedBy])
                      {
                        blockedByExtension = [v27 blockedByExtension];
                        [createCallRecord setBlockedByExtension:blockedByExtension];
                      }

                      else
                      {
                        [createCallRecord setBlockedByExtension:0];
                      }

                      if ([v27 supportsBlockedByName])
                      {
                        blockedByExtensionName = [v27 blockedByExtensionName];
                        [createCallRecord setBlockedByExtensionName:blockedByExtensionName];
                      }

                      else
                      {
                        [createCallRecord setBlockedByExtensionName:0];
                      }

                      if ([v27 supportsIdentityExtension])
                      {
                        identityExtension = [v27 identityExtension];
                        [createCallRecord setIdentityExtension:identityExtension];
                      }

                      else
                      {
                        [createCallRecord setIdentityExtension:0];
                      }

                      v61 = [v27 compositeCallDirectoryIdentityType:managedObjectContext];
                      [createCallRecord setCallDirectoryIdentityType:v61];

                      if ([v27 supportsScreenSharingType])
                      {
                        [v27 screenSharingType];
                      }

                      else
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
                      }
                      v62 = ;
                      [createCallRecord setScreenSharingType:v62];

                      v63 = [v27 compositeInitiatorHandleForContext:managedObjectContext];
                      [createCallRecord setInitiator:v63];

                      if ([v27 supportsReminderUUID])
                      {
                        reminderUUID = [v27 reminderUUID];
                        [createCallRecord setReminderUUID:reminderUUID];
                      }

                      else
                      {
                        [createCallRecord setReminderUUID:0];
                      }

                      if ([v27 supportsCommunicationTrustScore])
                      {
                        communicationTrustScore = [v27 communicationTrustScore];
                        [createCallRecord setCommunicationTrustScore:communicationTrustScore];
                      }

                      else
                      {
                        [createCallRecord setCommunicationTrustScore:0];
                      }
                    }

                    [createManagedObjectContext deleteObject:v27];
                  }

                  v24 = [v22 countByEnumeratingWithState:&v74 objects:v79 count:16];
                }

                while (v24);
              }

              if ([(CallHistoryDBHandle *)self save:0])
              {
                logHandle8 = v71;
                lCopy = v72;
                v12 = v69;
                logHandle3 = v70;
                logHandle7 = v68;
                v17 = 0;
                v18 = v73;
                if (![(CallHistoryDBHandle *)self handleSaveForCallRecordContext:createManagedObjectContext error:0])
                {
                  logHandle5 = [(CHLogger *)self logHandle];
                  if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C3E90000, logHandle5, OS_LOG_TYPE_DEFAULT, "Failed to delete calls from the input database", buf, 2u);
                  }
                }

                [v70 removeDataStoreAtLocation:v72];
                v10 = 1;
              }

              else
              {
                logHandle6 = [(CHLogger *)self logHandle];
                logHandle8 = v71;
                lCopy = v72;
                v12 = v69;
                logHandle3 = v70;
                logHandle7 = v68;
                v17 = 0;
                v18 = v73;
                if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C3E90000, logHandle6, OS_LOG_TYPE_DEFAULT, "Failed to save calls from input database to perm database", buf, 2u);
                }

                v10 = 0;
              }
            }
          }

          else
          {
            logHandle7 = [(CHLogger *)self logHandle];
            if (os_log_type_enabled(logHandle7, OS_LOG_TYPE_ERROR))
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

    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
    }
  }

  else
  {
    logHandle8 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle8, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle moveCallRecordsFromDatabaseAtURL:];
    }
  }

  v10 = 0;
LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)handleCallRecordContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  logHandle = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "handleCallRecordContextDidSaveNotification", v14, 2u);
  }

  v6 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x1E695D328]];
  v7 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];
  v8 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x1E695D2F8]];

  v9 = objc_opt_new();
  [v9 setObject:@"External" forKeyedSubscript:@"kNotificationReason"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count") + objc_msgSend(v8, "count")}];
  [v9 setObject:v10 forKeyedSubscript:@"kNotificationChangeCount"];

  [(CallHistoryDBHandle *)self setCallsDidChangeDarwinNotificationCount:[(CallHistoryDBHandle *)self callsDidChangeDarwinNotificationCount]+ 1];
  notify_post("com.apple.callhistory.notification.calls-changed");
  notify_post("com.apple.CallHistoryPluginHelper.launchnotification");
  if ([v6 count])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"kCallHistoryCallRecordInsertedNotification" object:0 userInfo:0 deliverImmediately:1];
  }

  [v9 setObject:@"Internal" forKeyedSubscript:@"kNotificationReason"];
  v12 = [[NotificationSender alloc] initWithName:@"kCallHistoryDatabaseChangedNotification"];
  [(NotificationSender *)v12 setUserInfo:v9];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v12 userInfo:v9];
}

- (void)handleCallDBPropContextDidSaveNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  objectId = [objc_opt_class() objectId];
  [defaultCenter postNotificationName:@"kCallHistoryTimersDistributedSaveNotification" object:objectId userInfo:0];

  [(CallHistoryDBHandle *)self postTimersChangedNotification];
}

- (void)postTimersChangedNotification
{
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  v2 = MEMORY[0x1E695DF20];
  timer_incoming = [callDBProperties timer_incoming];
  timer_outgoing = [callDBProperties timer_outgoing];
  timer_lifetime = [callDBProperties timer_lifetime];
  v6 = [v2 dictionaryWithObjectsAndKeys:{timer_incoming, @"kCHTimerIncomingKey", timer_outgoing, @"kCHTimerOutgoingKey", timer_lifetime, @"kCHTimerLifetimeKey", 0}];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"kCallHistoryDatabaseChangedInternalNotification" object:v4 userInfo:0];

    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Got call record save notification from other app", v7, 2u);
    }
  }
}

- (id)fetchWithPredicate:(id)predicate forEntity:(id)entity withLimit:(BOOL)limit
{
  limitCopy = limit;
  v31 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  entityCopy = entity;
  ct_green_tea_logger_create_static();
  v10 = getCTGreenTeaOsLogHandle();
  v11 = v10;
  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = entityCopy;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_INFO, "Read: %{public}@", buf, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v12 setReturnsObjectsAsFaults:0];
  if (predicateCopy)
  {
    [v12 setPredicate:predicateCopy];
  }

  v13 = [DBManager entityDescriptionHavingName:entityCopy forContext:self->fCallRecordContext];
  if (!v13)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchWithPredicate:forEntity:withLimit:];
    }

    goto LABEL_23;
  }

  [v12 setEntity:v13];
  if ([entityCopy isEqualToString:@"CallRecord"])
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

    if (limitCopy)
    {
      [v12 setFetchLimit:{-[CallHistoryDBHandle callHistoryDBFetchLimit](self, "callHistoryDBFetchLimit")}];
    }

    fCallRecordContext = self->fCallRecordContext;
    v26 = 0;
    v18 = [(NSManagedObjectContext *)fCallRecordContext executeFetchRequest:v12 error:&v26];
    logHandle = v26;

LABEL_15:
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ([entityCopy isEqualToString:@"CallDBProperties"])
  {
    fCallDBPropertiesContext = self->fCallDBPropertiesContext;
    v25 = 0;
    v18 = [(NSManagedObjectContext *)fCallDBPropertiesContext executeFetchRequest:v12 error:&v25];
    logHandle = v25;
    goto LABEL_15;
  }

  logHandle2 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = entityCopy;
    _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Context for given entity %{public}@ not created", buf, 0xCu);
  }

  logHandle = 0;
LABEL_20:
  logHandle3 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle fetchWithPredicate:forEntity:withLimit:];
  }

LABEL_23:
  v18 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (int64_t)deleteManagedCallsWithPredicate:(id)predicate
{
  v4 = [(CallHistoryDBHandle *)self fetchManagedCallsWithPredicate:predicate sortDescriptors:0 limit:0 offset:0 batchSize:0];
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

- (int64_t)deleteManagedCalls:(id)calls
{
  v17 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [callsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(callsCopy);
        }

        [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:*(*(&v12 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [callsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [callsCopy count];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)fetchManagedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  v23 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v8 = +[CallRecord fetchRequest];
  [v8 setPredicate:predicateCopy];

  [v8 setSortDescriptors:descriptorsCopy];
  [v8 setFetchLimit:{-[CallHistoryDBHandle callHistoryDBFetchLimit](self, "callHistoryDBFetchLimit")}];
  ct_green_tea_logger_create_static();
  v9 = getCTGreenTeaOsLogHandle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    entityName = [v8 entityName];
    *buf = 138412290;
    v22 = entityName;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_INFO, "Count: %@", buf, 0xCu);
  }

  fCallRecordContext = self->fCallRecordContext;
  v20 = 0;
  v13 = [(NSManagedObjectContext *)fCallRecordContext countForFetchRequest:v8 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL && v14 != 0)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchManagedCallCountWithPredicate:sortDescriptors:];
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)fetchManagedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v29[3] = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v14 = +[CallRecord fetchRequest];
  [v14 setFetchBatchSize:size];
  [v14 setFetchLimit:limit];
  [v14 setFetchOffset:offset];
  [v14 setPredicate:predicateCopy];

  [v14 setReturnsObjectsAsFaults:0];
  [v14 setSortDescriptors:descriptorsCopy];

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
    entityName = [v14 entityName];
    *buf = 138412290;
    v28 = entityName;
    _os_log_impl(&dword_1C3E90000, v17, OS_LOG_TYPE_INFO, "Read: %@", buf, 0xCu);
  }

  fCallRecordContext = self->fCallRecordContext;
  v26 = 0;
  v20 = [(NSManagedObjectContext *)fCallRecordContext executeFetchRequest:v14 error:&v26];
  v21 = v26;
  v22 = v21;
  if (!v20 && v21)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle fetchManagedCallsWithPredicate:sortDescriptors:limit:offset:batchSize:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)fetchManagedCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  v46[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v14 = +[CallRecord fetchRequest];
  [v14 setFetchBatchSize:size];
  [v14 setFetchLimit:limit];
  [v14 setFetchOffset:offset];
  [v14 setPredicate:predicateCopy];
  v46[0] = @"unique_id";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [v14 setPropertiesToFetch:v15];

  [v14 setResultType:2];
  [v14 setSortDescriptors:descriptorsCopy];
  ct_green_tea_logger_create_static();
  v16 = getCTGreenTeaOsLogHandle();
  v17 = v16;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    entityName = [v14 entityName];
    *buf = 138412290;
    v45 = entityName;
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
    logHandle = v20;
    v25 = [logHandle countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v34 = v20;
      v35 = v22;
      v36 = descriptorsCopy;
      v37 = predicateCopy;
      v27 = *v39;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(logHandle);
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

        v26 = [logHandle countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v26);
      descriptorsCopy = v36;
      predicateCopy = v37;
      v20 = v34;
      v22 = v35;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v21)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
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

- (id)updateManagedCallsWithPredicate:(id)predicate propertiesToUpdate:(id)update
{
  v32 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  [(CallHistoryDBHandle *)self fetchManagedCallsWithPredicate:predicate sortDescriptors:0 limit:0 offset:0 batchSize:0];
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
        allKeys = [updateCopy allKeys];
        v12 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [updateCopy objectForKeyedSubscript:v16];
              [v10 setValue:v17 forKey:v16];
            }

            v13 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle createCallRecord];
    }

    v4 = 0;
  }

  return v4;
}

- (id)getArrayForCallTypeMask:(unsigned int)mask
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
    if ((v9[i] & mask) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fetchAllObjectsWithUniqueId:(id)id
{
  v12 = *MEMORY[0x1E69E9840];
  idCopy = id;
  idCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"unique_id == %@", idCopy];
  v6 = [(CallHistoryDBHandle *)self fetchWithPredicate:idCopy forEntity:@"CallRecord"];
  if (![v6 count])
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = idCopy;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Database has no calls with %{public}@ UUID", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fetchObjectWithUniqueId:(id)id
{
  v4 = [(CallHistoryDBHandle *)self fetchAllObjectsWithUniqueId:id];
  if ([v4 count] >= 2)
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Multiple object with same uniqueId found but only one requested. Returning last matched object.", v8, 2u);
    }
  }

  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)fetchObjectsWithUniqueIds:(id)ids
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"unique_id IN %@", ids];
  v5 = [(CallHistoryDBHandle *)self fetchWithPredicate:v4 forEntity:@"CallRecord"];

  return v5;
}

- (void)deleteObjectWithUniqueId:(id)id
{
  v10 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = [(CallHistoryDBHandle *)self fetchObjectWithUniqueId:idCopy];
  if (v5)
  {
    [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:v5];
  }

  else
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = idCopy;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Record with %{public}@ uniqueId does not exist", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectsWithUniqueIds:(id)ids
{
  v20 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  v5 = [(CallHistoryDBHandle *)self fetchObjectsWithUniqueIds:idsCopy];
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
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = idsCopy;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Record with %{public}@ uniqueIds does not exist", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)deleteAll
{
  v14 = *MEMORY[0x1E69E9840];
  fetchAllNoLimit = [(CallHistoryDBHandle *)self fetchAllNoLimit];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [fetchAllNoLimit countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(fetchAllNoLimit);
        }

        [(NSManagedObjectContext *)self->fCallRecordContext deleteObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [fetchAllNoLimit countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)performSaveWithBackgroundTaskAssertion:(id)assertion error:(id *)error
{
  assertionCopy = assertion;
  BackgroundTaskAssertion = createBackgroundTaskAssertion();
  v7 = [assertionCopy save:error];

  if (BackgroundTaskAssertion)
  {
    CFRelease(BackgroundTaskAssertion);
  }

  return v7;
}

- (void)updateCallDBProperties
{
  v40 = *MEMORY[0x1E69E9840];
  insertedObjects = [(NSManagedObjectContext *)self->fCallRecordContext insertedObjects];
  selfCopy = self;
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = insertedObjects;
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
          v11 = callDBProperties;
          v12 = v10;
          calltype = [v12 calltype];
          integerValue = [calltype integerValue];

          if (integerValue == 1)
          {
            duration = [v12 duration];
            [duration doubleValue];
            v17 = v16;

            if (v17 > 0.0)
            {
              originated = [v12 originated];
              bOOLValue = [originated BOOLValue];

              if (bOOLValue)
              {
                timer_outgoing = [v11 timer_outgoing];
                [timer_outgoing doubleValue];
                v22 = v17 + v21;

                v23 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
                [v11 setTimer_outgoing:v23];
              }

              else
              {
                timer_incoming = [v11 timer_incoming];
                [timer_incoming doubleValue];
                v26 = v17 + v25;

                v23 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
                [v11 setTimer_incoming:v23];
              }

              timer_lifetime = [v11 timer_lifetime];
              [timer_lifetime doubleValue];
              v29 = v17 + v28;

              v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
              [v11 setTimer_lifetime:v30];

              v5 = v33;
            }
          }

          callDBProperties = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  if ([(NSManagedObjectContext *)selfCopy->fCallDBPropertiesContext hasChanges])
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __45__CallHistoryDBHandle_updateCallDBProperties__block_invoke;
    v34[3] = &unk_1E81DBF38;
    v34[4] = selfCopy;
    [(CallHistoryDBHandle *)selfCopy saveTimers:v34];
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleSaveForCallRecordContext:(id)context error:(id *)error
{
  v14 = 0;
  v6 = [(CallHistoryDBHandle *)self performSaveWithBackgroundTaskAssertion:context error:&v14];
  v7 = v14;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  logHandle = [(CHLogger *)self logHandle];
  v11 = logHandle;
  if (v6)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "Save performed successfully", v13, 2u);
    }
  }

  else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle handleSaveForCallRecordContext:error:];
  }

  return v6;
}

- (BOOL)save:(id *)save
{
  persistentStoreCoordinator = [(NSManagedObjectContext *)self->fCallRecordContext persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  v7 = [persistentStores count];

  if (v7)
  {
    if ([(NSManagedObjectContext *)self->fCallRecordContext hasChanges])
    {
      [(CallHistoryDBHandle *)self updateCallDBProperties];
      fCallRecordContext = self->fCallRecordContext;

      return [(CallHistoryDBHandle *)self handleSaveForCallRecordContext:fCallRecordContext error:save];
    }

    else
    {
      logHandle = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "No changes in the data context to save", v12, 2u);
      }

      return 1;
    }
  }

  else
  {
    logHandle2 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      [CallHistoryDBHandle save:];
    }

    return 0;
  }
}

- (id)timerIncoming
{
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  timer_incoming = [callDBProperties timer_incoming];

  return timer_incoming;
}

- (id)timerOutgoing
{
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  timer_outgoing = [callDBProperties timer_outgoing];

  return timer_outgoing;
}

- (id)timerLifetime
{
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  timer_lifetime = [callDBProperties timer_lifetime];

  return timer_lifetime;
}

- (BOOL)saveTimers:(id)timers
{
  timersCopy = timers;
  persistentStoreCoordinator = [(NSManagedObjectContext *)self->fCallDBPropertiesContext persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  v7 = [persistentStores count];

  if (v7)
  {
    callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
    fCallDBPropertiesContext = self->fCallDBPropertiesContext;
    v16 = 0;
    v10 = [(CallHistoryDBHandle *)self performSaveWithBackgroundTaskAssertion:fCallDBPropertiesContext error:&v16];
    v11 = v16;
    v12 = v11;
    if (!v10)
    {
      if ([v11 code] != 133020)
      {
        logHandle = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [CallHistoryDBHandle saveTimers:];
        }

        v13 = 0;
        goto LABEL_12;
      }

      [(NSManagedObjectContext *)self->fCallDBPropertiesContext refreshObject:callDBProperties mergeChanges:0];
      timersCopy[2](timersCopy);
    }

    v13 = 1;
LABEL_12:

    goto LABEL_13;
  }

  callDBProperties = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(callDBProperties, OS_LOG_TYPE_ERROR))
  {
    [CallHistoryDBHandle save:];
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)resetTimers
{
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [callDBProperties setTimer_incoming:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [callDBProperties setTimer_outgoing:v5];

  v6 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
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
  selfCopy = self;
  callDBProperties = [(CallHistoryDBHandle *)self callDBProperties];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  [callDBProperties setTimer_all:v4];
  [callDBProperties setTimer_incoming:v4];
  [callDBProperties setTimer_outgoing:v4];
  [callDBProperties setTimer_lifetime:v4];
  v5 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v7 = [v5 numberWithDouble:?];

  [DBManager setPropertyValue:v7 forKey:@"timer_last_reset" forContext:selfCopy->fCallDBPropertiesContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__CallHistoryDBHandle_resetAllTimers__block_invoke;
  v9[3] = &unk_1E81DBF38;
  v9[4] = selfCopy;
  LOBYTE(selfCopy) = [(CallHistoryDBHandle *)selfCopy saveTimers:v9];

  return selfCopy;
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