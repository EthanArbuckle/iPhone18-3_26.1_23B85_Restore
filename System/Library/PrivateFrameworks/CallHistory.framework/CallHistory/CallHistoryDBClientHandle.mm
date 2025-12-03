@interface CallHistoryDBClientHandle
+ (id)createForClient;
+ (id)createForServer;
- (BOOL)createCallRecord:(id)record error:(id *)error save:(BOOL)save;
- (BOOL)createCallRecords:(id)records error:(id *)error;
- (BOOL)deleteAll:(id *)all;
- (BOOL)deleteObjectWithUniqueId:(id)id error:(id *)error save:(BOOL)save;
- (BOOL)deleteObjectsWithUniqueIds:(id)ids error:(id *)error;
- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)l;
- (BOOL)resetAllTimers;
- (BOOL)saveDatabase:(id *)database;
- (BOOL)updateCallRecord_sync:(id)record_sync withCall:(id)call;
- (BOOL)updateCallRecord_sync:(id)record_sync withChangeDict:(id)dict;
- (BOOL)willHandleNotification_sync:(id)notification_sync;
- (CallDBManager)manager;
- (CallHistoryDBHandle)dbStoreHandle;
- (id)convertToCHRecentCalls_sync:(id)calls_sync;
- (id)convertToCHRecentCalls_sync:(id)calls_sync limit:(unint64_t)limit;
- (id)fetchAll;
- (id)fetchAllNoLimit;
- (id)fetchAllObjectsWithUniqueId:(id)id;
- (id)fetchCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchCoalescedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchObjectWithUniqueId:(id)id;
- (id)fetchObjectsWithPredicate:(id)predicate;
- (id)fetchObjectsWithUniqueIds:(id)ids;
- (id)fetchWithCallTypes:(unsigned int)types;
- (id)init:(BOOL)init;
- (id)timerIncoming;
- (id)timerLastReset;
- (id)timerLifetime;
- (id)timerOutgoing;
- (id)updateAllCallRecords:(id)records error:(id *)error;
- (id)updateAllCallRecords_sync:(id)records_sync error:(id *)error;
- (id)updateCallRecords:(id)records error:(id *)error save:(BOOL)save;
- (id)updateCallRecordsWithCalls:(id)calls error:(id *)error save:(BOOL)save;
- (id)updateCallRecordsWithCalls_sync:(id)calls_sync error:(id *)error save:(BOOL)save;
- (id)updateCallRecords_sync:(id)records_sync error:(id *)error save:(BOOL)save;
- (id)updateCallsWithPredicate:(id)predicate propertiesToUpdate:(id)update error:(id *)error;
- (int64_t)deleteCallsWithPredicate:(id)predicate;
- (unint64_t)fetchCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (unsigned)getCallStatus_sync:(id)status_sync isOriginated:(id)originated isAnswered:(id)answered;
- (void)dealloc;
- (void)handleCallTimersSave_sync:(id)save_sync;
- (void)parseCallStatus_sync:(unsigned int)status_sync isAnswered:(BOOL *)answered isOriginated:(BOOL *)originated;
- (void)registerForNotifications;
- (void)resetTimers;
- (void)setStoreObject_sync:(id)object_sync withClientObject:(id)object;
- (void)unRegisterForNotifications;
@end

@implementation CallHistoryDBClientHandle

+ (id)createForClient
{
  v2 = [[CallHistoryDBClientHandle alloc] init:1];

  return v2;
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CallHistoryDBClientHandle_registerForNotifications__block_invoke;
  v6[3] = &unk_1E81DC7F8;
  objc_copyWeak(&v7, &location);
  v4 = [defaultCenter addObserverForName:@"kCallHistoryTimersDistributedSaveNotification" object:0 queue:0 usingBlock:v6];
  observerCallTimersRef = self->_observerCallTimersRef;
  self->_observerCallTimersRef = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)parseCallStatus_sync:(unsigned int)status_sync isAnswered:(BOOL *)answered isOriginated:(BOOL *)originated
{
  if (answered && originated)
  {
    *answered = 0;
    *originated = 0;
    switch(status_sync)
    {
      case 1u:
LABEL_12:
        *answered = 1;
        return;
      case 2u:
        answered = originated;
        goto LABEL_12;
      case 4u:
        goto LABEL_12;
    }

    v5 = status_sync != 8 && status_sync == 16;
    answered = originated;
    if (v5)
    {
      goto LABEL_12;
    }
  }
}

- (unsigned)getCallStatus_sync:(id)status_sync isOriginated:(id)originated isAnswered:(id)answered
{
  if (!status_sync || !originated || !answered)
  {
    return 0;
  }

  originatedCopy = originated;
  status_syncCopy = status_sync;
  bOOLValue = [answered BOOLValue];
  bOOLValue2 = [originatedCopy BOOLValue];

  [status_syncCopy doubleValue];
  v12 = v11;

  return [CHManager CHCallStatusForCallWithDuration:bOOLValue2 isOriginated:bOOLValue isAnswered:v12];
}

- (void)setStoreObject_sync:(id)object_sync withClientObject:(id)object
{
  object_syncCopy = object_sync;
  objectCopy = object;
  v53 = 0;
  -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [objectCopy callStatus], &v53 + 1, &v53);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v53)];
  [object_syncCopy setAnswered:v8];

  date = [objectCopy date];
  [object_syncCopy setDate:date];

  disconnectedCause = [objectCopy disconnectedCause];
  [object_syncCopy setDisconnected_cause:disconnectedCause];

  v11 = MEMORY[0x1E696AD98];
  [objectCopy duration];
  v12 = [v11 numberWithDouble:?];
  [object_syncCopy setDuration:v12];

  bytesOfDataUsed = [objectCopy bytesOfDataUsed];
  [object_syncCopy setFace_time_data:bytesOfDataUsed];

  filteredOutReason = [objectCopy filteredOutReason];
  [object_syncCopy setFiltered_out_reason:filteredOutReason];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "handleType")}];
  [object_syncCopy setHandle_type:v15];

  imageURL = [objectCopy imageURL];
  [object_syncCopy setImageURL:imageURL];

  isoCountryCode = [objectCopy isoCountryCode];
  [object_syncCopy setIso_country_code:isoCountryCode];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "junkConfidence")}];
  [object_syncCopy setJunkConfidence:v18];

  junkIdentificationCategory = [objectCopy junkIdentificationCategory];
  [object_syncCopy setJunkIdentificationCategory:junkIdentificationCategory];

  v20 = [CHRecentCall getLocationForCall:objectCopy];
  [object_syncCopy setLocation:v20];

  localParticipantUUID = [objectCopy localParticipantUUID];
  [object_syncCopy setLocalParticipantUUID:localParticipantUUID];

  name = [objectCopy name];
  [object_syncCopy setName:name];

  v23 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(objectCopy, "callerIdAvailability")}];
  [object_syncCopy setNumber_availability:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:v53];
  [object_syncCopy setOriginated:v24];

  outgoingLocalParticipantUUID = [objectCopy outgoingLocalParticipantUUID];
  [object_syncCopy setOutgoingLocalParticipantUUID:outgoingLocalParticipantUUID];

  participantGroupUUID = [objectCopy participantGroupUUID];
  [object_syncCopy setParticipantGroupUUID:participantGroupUUID];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objectCopy, "read")}];
  [object_syncCopy setRead:v27];

  serviceProvider = [objectCopy serviceProvider];
  [object_syncCopy setService_provider:serviceProvider];

  uniqueId = [objectCopy uniqueId];
  [object_syncCopy setUnique_id:uniqueId];

  conversationID = [objectCopy conversationID];
  [object_syncCopy setConversationID:conversationID];

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "verificationStatus")}];
  [object_syncCopy setVerificationStatus:v31];

  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "autoAnsweredReason")}];
  [object_syncCopy setAutoAnsweredReason:v32];

  [object_syncCopy setUsedEmergencyVideoStreaming:{objc_msgSend(objectCopy, "usedEmergencyVideoStreaming")}];
  [object_syncCopy setWasEmergencyCall:{objc_msgSend(objectCopy, "wasEmergencyCall")}];
  blockedByExtension = [objectCopy blockedByExtension];
  [object_syncCopy setBlockedByExtension:blockedByExtension];

  blockedByExtensionName = [objectCopy blockedByExtensionName];
  [object_syncCopy setBlockedByExtensionName:blockedByExtensionName];

  identityExtension = [objectCopy identityExtension];
  [object_syncCopy setIdentityExtension:identityExtension];

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "callDirectoryIdentityType")}];
  [object_syncCopy setCallDirectoryIdentityType:v36];

  v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "screenSharingType")}];
  [object_syncCopy setScreenSharingType:v37];

  reminderUUID = [objectCopy reminderUUID];
  [object_syncCopy setReminderUUID:reminderUUID];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "communicationTrustScore")}];
  [object_syncCopy setCommunicationTrustScore:v39];

  managedObjectContext = [object_syncCopy managedObjectContext];
  initiator = [objectCopy initiator];

  if (initiator && managedObjectContext)
  {
    initiator2 = [objectCopy initiator];
    v43 = [CHManagedHandle managedHandleForHandle:initiator2 inManagedObjectContext:managedObjectContext];
    [object_syncCopy setInitiator:v43];
  }

  remoteParticipantHandles = [objectCopy remoteParticipantHandles];

  if (remoteParticipantHandles && managedObjectContext)
  {
    remoteParticipantHandles2 = [objectCopy remoteParticipantHandles];
    v46 = [CHManagedHandle managedHandlesForHandles:remoteParticipantHandles2 inManagedObjectContext:managedObjectContext];
    [object_syncCopy setRemoteParticipantHandles:v46];
  }

  emergencyMediaItems = [objectCopy emergencyMediaItems];

  if (emergencyMediaItems && managedObjectContext)
  {
    emergencyMediaItems2 = [objectCopy emergencyMediaItems];
    v49 = [EmergencyMediaItem managedEmergencyMediaItemsForEmergencyMediaItems:emergencyMediaItems2 inManagedObjectContext:managedObjectContext];
    [object_syncCopy setEmergencyMediaItems:v49];
  }

  callerId = [objectCopy callerId];
  [object_syncCopy setAddress:callerId];

  v51 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "callCategory")}];
  [object_syncCopy setCall_category:v51];

  v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objectCopy, "callType")}];
  [object_syncCopy setCalltype:v52];
}

- (id)convertToCHRecentCalls_sync:(id)calls_sync
{
  v18 = *MEMORY[0x1E69E9840];
  calls_syncCopy = calls_sync;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = calls_syncCopy;
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

        chRecentCall = [*(*(&v13 + 1) + 8 * i) chRecentCall];
        [v4 addObject:chRecentCall];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)convertToCHRecentCalls_sync:(id)calls_sync limit:(unint64_t)limit
{
  v29 = *MEMORY[0x1E69E9840];
  calls_syncCopy = calls_sync;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:limit];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = calls_syncCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  obj = v6;
  if (v7)
  {
    v8 = v7;
    v6 = 0;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = v6;
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        chRecentCall = [v12 chRecentCall];
        v15 = chRecentCall;
        if (v11)
        {
          v16 = [v11 coalescedCallWithCall:chRecentCall usingStrategy:@"kCHCoalescingStrategyRecents"];
        }

        else
        {
          v16 = chRecentCall;
        }

        v17 = v16;
        v18 = v16;
        if (!v16)
        {
          [v23 addObject:v11];
          v18 = v15;
          if (limit)
          {
            v19 = [v23 count];
            v18 = v15;
            if (v19 == limit)
            {

              objc_autoreleasePoolPop(v13);
              v6 = obj;
              goto LABEL_17;
            }
          }
        }

        v6 = v18;

        objc_autoreleasePoolPop(v13);
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      [v23 addObject:v6];
      goto LABEL_17;
    }
  }

  else
  {
LABEL_17:
  }

  v20 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)createForServer
{
  v2 = [[CallHistoryDBClientHandle alloc] init:0];

  return v2;
}

- (id)init:(BOOL)init
{
  v21.receiver = self;
  v21.super_class = CallHistoryDBClientHandle;
  v4 = [(CHSynchronizedLoggable *)&v21 initWithName:"ch.clientdbhandle"];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [CHNotifyObserver alloc];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.callhistory.notification.calls-changed"];
    queue = [(CHSynchronizedLoggable *)v4 queue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __34__CallHistoryDBClientHandle_init___block_invoke;
    v18[3] = &unk_1E81DBF80;
    objc_copyWeak(&v19, &location);
    v8 = [(CHNotifyObserver *)v5 initWithName:v6 queue:queue callback:v18];
    callsDidChangeNotifyObserver = v4->_callsDidChangeNotifyObserver;
    v4->_callsDidChangeNotifyObserver = v8;

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __34__CallHistoryDBClientHandle_init___block_invoke_2;
    v15 = &unk_1E81DC7D0;
    initCopy = init;
    v10 = v4;
    v16 = v10;
    [(CHSynchronizedLoggable *)v10 execute:&v12];
    [(CallHistoryDBClientHandle *)v10 registerForNotifications:v12];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __34__CallHistoryDBClientHandle_init___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleCallRecordSave_sync];
    WeakRetained = v2;
  }
}

void __34__CallHistoryDBClientHandle_init___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    +[CallHistoryDBHandle createForClient];
  }

  else
  {
    +[CallHistoryDBHandle createForServer];
  }
  v2 = ;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = v5[3];
  v7 = [v5 queue];
  [v6 registerForNotifications:v7];

  v8 = [*(*(a1 + 32) + 24) callDBManager];
  [v8 createDataStore];
}

void __53__CallHistoryDBClientHandle_registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__CallHistoryDBClientHandle_registerForNotifications__block_invoke_2;
    v6[3] = &unk_1E81DBE38;
    v7 = WeakRetained;
    v8 = v3;
    [v7 execute:v6];
  }
}

- (void)unRegisterForNotifications
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self->_observerCallTimersRef name:@"kCallHistoryTimersDistributedSaveNotification" object:0];
}

- (int64_t)deleteCallsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CallHistoryDBClientHandle_deleteCallsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC2D0;
  v10 = &v11;
  v8[4] = self;
  v5 = predicateCopy;
  v9 = v5;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __54__CallHistoryDBClientHandle_deleteCallsWithPredicate___block_invoke(void *a1)
{
  ct_green_tea_logger_create_static();
  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_INFO, "Delete", v5, 2u);
  }

  result = [*(a1[4] + 24) deleteManagedCallsWithPredicate:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)fetchCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CallHistoryDBClientHandle_fetchCallCountWithPredicate_sortDescriptors___block_invoke;
  v12[3] = &unk_1E81DC820;
  v15 = &v16;
  v12[4] = self;
  v8 = predicateCopy;
  v13 = v8;
  v9 = descriptorsCopy;
  v14 = v9;
  [(CHSynchronizedLoggable *)self executeSync:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __73__CallHistoryDBClientHandle_fetchCallCountWithPredicate_sortDescriptors___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) fetchManagedCallCountWithPredicate:a1[5] sortDescriptors:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (id)fetchCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__CallHistoryDBClientHandle_fetchCallsWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC848;
  v18[4] = self;
  v14 = predicateCopy;
  v19 = v14;
  v15 = descriptorsCopy;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  v20 = v15;
  v21 = &v25;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __92__CallHistoryDBClientHandle_fetchCallsWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchManagedCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  if (v3)
  {
    v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

- (id)fetchCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__CallHistoryDBClientHandle_fetchCallIdentifiersWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC870;
  v21 = &v25;
  v18[4] = self;
  v14 = predicateCopy;
  v19 = v14;
  v15 = descriptorsCopy;
  v20 = v15;
  limitCopy = limit;
  offsetCopy = offset;
  sizeCopy = size;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __102__CallHistoryDBClientHandle_fetchCallIdentifiersWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 24) fetchManagedCallIdentifiersWithPredicate:a1[5] sortDescriptors:a1[6] limit:a1[8] offset:a1[9] batchSize:a1[10]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CallHistoryDBClientHandle_fetchCoalescedCallCountWithPredicate_sortDescriptors___block_invoke;
  v12[3] = &unk_1E81DC898;
  v12[4] = self;
  v8 = predicateCopy;
  v13 = v8;
  v9 = descriptorsCopy;
  v14 = v9;
  v15 = &v16;
  [(CHSynchronizedLoggable *)self executeSync:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __82__CallHistoryDBClientHandle_fetchCoalescedCallCountWithPredicate_sortDescriptors___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1[4] + 24) fetchManagedCallsWithPredicate:a1[5] sortDescriptors:a1[6] limit:0 offset:0 batchSize:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v14 = v2;
    v6 = 0;
    v7 = *v16;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v15 + 1) + 8 * v8) chRecentCall];
        v11 = [v9 coalescedCallWithCall:v10 usingStrategy:@"kCHCoalescingStrategyRecents"];
        v12 = v11;
        if (!v11)
        {
          ++*(*(a1[7] + 8) + 24);
          v12 = v10;
        }

        v6 = v12;

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);

    v2 = v14;
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (id)fetchCoalescedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__CallHistoryDBClientHandle_fetchCoalescedCallsWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC848;
  v18[4] = self;
  v14 = predicateCopy;
  v19 = v14;
  v15 = descriptorsCopy;
  offsetCopy = offset;
  sizeCopy = size;
  v20 = v15;
  v21 = &v25;
  limitCopy = limit;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __101__CallHistoryDBClientHandle_fetchCoalescedCallsWithPredicate_sortDescriptors_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchManagedCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limit:0 offset:*(a1 + 64) batchSize:*(a1 + 72)];
  if (v3)
  {
    v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3 limit:*(a1 + 80)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  objc_autoreleasePoolPop(v2);
}

- (id)updateCallsWithPredicate:(id)predicate propertiesToUpdate:(id)update error:(id *)error
{
  predicateCopy = predicate;
  updateCopy = update;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__CallHistoryDBClientHandle_updateCallsWithPredicate_propertiesToUpdate_error___block_invoke;
  v15[3] = &unk_1E81DC8C0;
  v15[4] = self;
  v10 = predicateCopy;
  v16 = v10;
  v11 = updateCopy;
  v17 = v11;
  v18 = &v20;
  v19 = &v26;
  [(CHSynchronizedLoggable *)self executeSync:v15];
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __79__CallHistoryDBClientHandle_updateCallsWithPredicate_propertiesToUpdate_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) updateManagedCallsWithPredicate:*(a1 + 40) propertiesToUpdate:*(a1 + 48)];
  if (v3)
  {
    ct_green_tea_logger_create_static();
    v4 = getCTGreenTeaOsLogHandle();
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_INFO, "Modify: %@", buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 24);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [v7 save:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (v9)
    {
      v10 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (id)fetchAll
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CallHistoryDBClientHandle_fetchAll__block_invoke;
  v4[3] = &unk_1E81DC528;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

id __37__CallHistoryDBClientHandle_fetchAll__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchAll];
  v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)fetchAllNoLimit
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CallHistoryDBClientHandle_fetchAllNoLimit__block_invoke;
  v4[3] = &unk_1E81DC528;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

id __44__CallHistoryDBClientHandle_fetchAllNoLimit__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchAllNoLimit];
  v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)fetchWithCallTypes:(unsigned int)types
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CallHistoryDBClientHandle_fetchWithCallTypes___block_invoke;
  v5[3] = &unk_1E81DC8E8;
  v5[4] = self;
  typesCopy = types;
  v3 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v5];

  return v3;
}

id __48__CallHistoryDBClientHandle_fetchWithCallTypes___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchWithCallTypes:*(a1 + 40)];
  v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)fetchObjectsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CallHistoryDBClientHandle_fetchObjectsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC910;
  v8[4] = self;
  v9 = predicateCopy;
  v5 = predicateCopy;
  v6 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v8];

  return v6;
}

id __55__CallHistoryDBClientHandle_fetchObjectsWithPredicate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchObjectsWithPredicate:*(a1 + 40)];
  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v3 count];
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Fetching calls from DBStoreHandle. Got back %lu calls", &v10, 0xCu);
  }

  v5 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];
  v6 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Converting records into CHRecentCall objects. Returning %lu calls", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fetchAllObjectsWithUniqueId:(id)id
{
  idCopy = id;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CallHistoryDBClientHandle_fetchAllObjectsWithUniqueId___block_invoke;
  v8[3] = &unk_1E81DC938;
  v8[4] = self;
  v9 = idCopy;
  v5 = idCopy;
  v6 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v8];

  return v6;
}

id __57__CallHistoryDBClientHandle_fetchAllObjectsWithUniqueId___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [*(*(a1 + 32) + 24) fetchAllObjectsWithUniqueId:*(a1 + 40)];
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
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) chRecentCall];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)fetchObjectWithUniqueId:(id)id
{
  idCopy = id;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CallHistoryDBClientHandle_fetchObjectWithUniqueId___block_invoke;
  v8[3] = &unk_1E81DC960;
  v8[4] = self;
  v9 = idCopy;
  v5 = idCopy;
  v6 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v8];

  return v6;
}

id __53__CallHistoryDBClientHandle_fetchObjectWithUniqueId___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchObjectWithUniqueId:*(a1 + 40)];
  v4 = [v3 chRecentCall];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)fetchObjectsWithUniqueIds:(id)ids
{
  idsCopy = ids;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CallHistoryDBClientHandle_fetchObjectsWithUniqueIds___block_invoke;
  v8[3] = &unk_1E81DC910;
  v8[4] = self;
  v9 = idsCopy;
  v5 = idsCopy;
  v6 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v8];

  return v6;
}

id __55__CallHistoryDBClientHandle_fetchObjectsWithUniqueIds___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) fetchObjectsWithUniqueIds:*(a1 + 40)];
  v4 = [*(a1 + 32) convertToCHRecentCalls_sync:v3];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (BOOL)deleteAll:(id *)all
{
  ct_green_tea_logger_create_static();
  v5 = getCTGreenTeaOsLogHandle();
  v6 = v5;
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_INFO, "Delete", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CallHistoryDBClientHandle_deleteAll___block_invoke;
  v8[3] = &unk_1E81DC988;
  v8[4] = self;
  v8[5] = all;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v8];
}

uint64_t __39__CallHistoryDBClientHandle_deleteAll___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) deleteAll];
  v3 = [*(*(a1 + 32) + 24) save:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)deleteObjectWithUniqueId:(id)id error:(id *)error save:(BOOL)save
{
  idCopy = id;
  ct_green_tea_logger_create_static();
  v9 = getCTGreenTeaOsLogHandle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_INFO, "Delete", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CallHistoryDBClientHandle_deleteObjectWithUniqueId_error_save___block_invoke;
  v14[3] = &unk_1E81DC9B0;
  v14[4] = self;
  v15 = idCopy;
  saveCopy = save;
  errorCopy = error;
  v11 = idCopy;
  v12 = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v14];

  return v12;
}

uint64_t __65__CallHistoryDBClientHandle_deleteObjectWithUniqueId_error_save___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) deleteObjectWithUniqueId:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v3 = [*(*(a1 + 32) + 24) save:*(a1 + 48)];
  }

  else
  {
    v3 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)deleteObjectsWithUniqueIds:(id)ids error:(id *)error
{
  idsCopy = ids;
  ct_green_tea_logger_create_static();
  v7 = getCTGreenTeaOsLogHandle();
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_INFO, "Delete", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CallHistoryDBClientHandle_deleteObjectsWithUniqueIds_error___block_invoke;
  v12[3] = &unk_1E81DC9D8;
  v12[4] = self;
  v13 = idsCopy;
  errorCopy = error;
  v9 = idsCopy;
  v10 = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v12];

  return v10;
}

uint64_t __62__CallHistoryDBClientHandle_deleteObjectsWithUniqueIds_error___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 24) deleteObjectsWithUniqueIds:a1[5]];
  v3 = [*(a1[4] + 24) save:a1[6]];
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (BOOL)createCallRecord:(id)record error:(id *)error save:(BOOL)save
{
  recordCopy = record;
  ct_green_tea_logger_create_static();
  v9 = getCTGreenTeaOsLogHandle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_INFO, "Insert", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__CallHistoryDBClientHandle_createCallRecord_error_save___block_invoke;
  v14[3] = &unk_1E81DC9B0;
  v14[4] = self;
  v15 = recordCopy;
  saveCopy = save;
  errorCopy = error;
  v11 = recordCopy;
  v12 = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v14];

  return v12;
}

uint64_t __57__CallHistoryDBClientHandle_createCallRecord_error_save___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 24) createCallRecord];
  [*(a1 + 32) setStoreObject_sync:v3 withClientObject:*(a1 + 40)];
  if (*(a1 + 56) == 1)
  {
    v4 = [*(*(a1 + 32) + 24) save:*(a1 + 48)];
  }

  else
  {
    v4 = 1;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

- (BOOL)createCallRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  ct_green_tea_logger_create_static();
  v7 = getCTGreenTeaOsLogHandle();
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_INFO, "Insert", buf, 2u);
  }

  if ([recordsCopy count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__CallHistoryDBClientHandle_createCallRecords_error___block_invoke;
    v11[3] = &unk_1E81DC9D8;
    v12 = recordsCopy;
    selfCopy = self;
    errorCopy = error;
    v9 = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v11];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __53__CallHistoryDBClientHandle_createCallRecords_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(*(a1 + 40) + 24) createCallRecord];
        if (!v9)
        {
          objc_autoreleasePoolPop(v8);

          result = 0;
          goto LABEL_12;
        }

        v10 = v9;
        [*(a1 + 40) setStoreObject_sync:v9 withClientObject:v7];

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  result = [*(*(a1 + 40) + 24) save:{*(a1 + 48), v13}];
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)updateCallRecords:(id)records error:(id *)error save:(BOOL)save
{
  recordsCopy = records;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CallHistoryDBClientHandle_updateCallRecords_error_save___block_invoke;
  v12[3] = &unk_1E81DCA00;
  v12[4] = self;
  v13 = recordsCopy;
  errorCopy = error;
  saveCopy = save;
  v9 = recordsCopy;
  v10 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v12];

  return v10;
}

id __58__CallHistoryDBClientHandle_updateCallRecords_error_save___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updateCallRecords_sync:*(a1 + 40) error:*(a1 + 48) save:*(a1 + 56)];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)updateCallRecordsWithCalls:(id)calls error:(id *)error save:(BOOL)save
{
  callsCopy = calls;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CallHistoryDBClientHandle_updateCallRecordsWithCalls_error_save___block_invoke;
  v12[3] = &unk_1E81DCA00;
  v12[4] = self;
  v13 = callsCopy;
  errorCopy = error;
  saveCopy = save;
  v9 = callsCopy;
  v10 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v12];

  return v10;
}

id __67__CallHistoryDBClientHandle_updateCallRecordsWithCalls_error_save___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updateCallRecordsWithCalls_sync:*(a1 + 40) error:*(a1 + 48) save:*(a1 + 56)];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)updateAllCallRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CallHistoryDBClientHandle_updateAllCallRecords_error___block_invoke;
  v10[3] = &unk_1E81DC348;
  v10[4] = self;
  v11 = recordsCopy;
  errorCopy = error;
  v7 = recordsCopy;
  v8 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v10];

  return v8;
}

id __56__CallHistoryDBClientHandle_updateAllCallRecords_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) updateAllCallRecords_sync:*(a1 + 40) error:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)timerIncoming
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CallHistoryDBClientHandle_timerIncoming__block_invoke;
  v4[3] = &unk_1E81DCA28;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (id)timerOutgoing
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CallHistoryDBClientHandle_timerOutgoing__block_invoke;
  v4[3] = &unk_1E81DCA28;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (id)timerLastReset
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__CallHistoryDBClientHandle_timerLastReset__block_invoke;
  v4[3] = &unk_1E81DCA28;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (id)timerLifetime
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CallHistoryDBClientHandle_timerLifetime__block_invoke;
  v4[3] = &unk_1E81DCA28;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (void)resetTimers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__CallHistoryDBClientHandle_resetTimers__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self executeSync:v2];
}

- (BOOL)resetAllTimers
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CallHistoryDBClientHandle_resetAllTimers__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (CallHistoryDBHandle)dbStoreHandle
{
  queue = [(CHSynchronizedLoggable *)self queue];
  dispatch_assert_queue_V2(queue);

  dbStoreHandle = self->dbStoreHandle;

  return dbStoreHandle;
}

- (CallDBManager)manager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  manager = selfCopy->_manager;
  if (!manager)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__4;
    v11 = __Block_byref_object_dispose__4;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__CallHistoryDBClientHandle_manager__block_invoke;
    v6[3] = &unk_1E81DC2F8;
    v6[4] = selfCopy;
    v6[5] = &v7;
    [(CHSynchronizedLoggable *)selfCopy executeSync:v6];
    objc_storeStrong(&selfCopy->_manager, v8[5]);
    _Block_object_dispose(&v7, 8);

    manager = selfCopy->_manager;
  }

  v4 = manager;
  objc_sync_exit(selfCopy);

  return v4;
}

void __36__CallHistoryDBClientHandle_manager__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dbStoreHandle];
  v2 = [v5 callDBManager];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)handleCallTimersSave_sync:(id)save_sync
{
  if ([(CallHistoryDBClientHandle *)self willHandleNotification_sync:save_sync])
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle mergeCallDBPropChangesFromRemoteAppSave];
    [(CallHistoryDBHandle *)self->dbStoreHandle postTimersChangedNotification];
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Got timers save notification from other app", v5, 2u);
    }
  }
}

- (BOOL)willHandleNotification_sync:(id)notification_sync
{
  object = [notification_sync object];
  v4 = +[CallHistoryDBHandle objectId];
  v5 = [object isEqual:v4];

  return v5 ^ 1;
}

- (id)updateCallRecords_sync:(id)records_sync error:(id *)error save:(BOOL)save
{
  saveCopy = save;
  v46 = *MEMORY[0x1E69E9840];
  records_syncCopy = records_sync;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = records_syncCopy;
  allKeys = [records_syncCopy allKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [allKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        [v9 addObject:*(*(&v38 + 1) + 8 * i)];
      }

      v12 = [allKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "No calls to update", buf, 2u);
    }

    goto LABEL_32;
  }

  v15 = [(CallHistoryDBHandle *)self->dbStoreHandle fetchObjectsWithUniqueIds:v9];
  logHandle = v15;
  if (!v15 || ![v15 count])
  {
    logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v9;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Objects with given uniqueIds: %{public}@ to update do not exist", buf, 0xCu);
    }

LABEL_32:
    v32 = 0;
    goto LABEL_33;
  }

  errorCopy = error;
  v31 = saveCopy;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  logHandle = logHandle;
  v17 = [logHandle countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v35;
  do
  {
    v20 = logHandle;
    for (j = 0; j != v18; ++j)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v20);
      }

      v22 = *(*(&v34 + 1) + 8 * j);
      unique_id = [v22 unique_id];
      v24 = [v33 objectForKey:unique_id];

      if (v24)
      {
        if (![(CallHistoryDBClientHandle *)self updateCallRecord_sync:v22 withChangeDict:v24])
        {
          goto LABEL_22;
        }

        chRecentCall = [v22 chRecentCall];
        [v32 addObject:chRecentCall];
      }

      else
      {
        chRecentCall = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(chRecentCall, OS_LOG_TYPE_DEFAULT))
        {
          unique_id2 = [v22 unique_id];
          *buf = 138543362;
          v44 = unique_id2;
          _os_log_impl(&dword_1C3E90000, chRecentCall, OS_LOG_TYPE_DEFAULT, "Properties dict not found for call with uniqueId: %{public}@", buf, 0xCu);
        }
      }

LABEL_22:
    }

    logHandle = v20;
    v18 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v18);
LABEL_24:

  if ([v32 count] && v31)
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:errorCopy];
  }

LABEL_33:

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)updateCallRecordsWithCalls_sync:(id)calls_sync error:(id *)error save:(BOOL)save
{
  saveCopy = save;
  v46 = *MEMORY[0x1E69E9840];
  calls_syncCopy = calls_sync;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = calls_syncCopy;
  allKeys = [calls_syncCopy allKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [allKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        [v9 addObject:*(*(&v38 + 1) + 8 * i)];
      }

      v12 = [allKeys countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "No calls to update", buf, 2u);
    }

    goto LABEL_32;
  }

  v15 = [(CallHistoryDBHandle *)self->dbStoreHandle fetchObjectsWithUniqueIds:v9];
  logHandle = v15;
  if (!v15 || ![v15 count])
  {
    logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v9;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Objects with given uniqueIds:%@ to update do not exist", buf, 0xCu);
    }

LABEL_32:
    v32 = 0;
    goto LABEL_33;
  }

  errorCopy = error;
  v31 = saveCopy;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  logHandle = logHandle;
  v17 = [logHandle countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v35;
  do
  {
    v20 = logHandle;
    for (j = 0; j != v18; ++j)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v20);
      }

      v22 = *(*(&v34 + 1) + 8 * j);
      unique_id = [v22 unique_id];
      v24 = [v33 objectForKey:unique_id];

      if (v24)
      {
        if (![(CallHistoryDBClientHandle *)self updateCallRecord_sync:v22 withCall:v24])
        {
          goto LABEL_22;
        }

        chRecentCall = [v22 chRecentCall];
        [v32 addObject:chRecentCall];
      }

      else
      {
        chRecentCall = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(chRecentCall, OS_LOG_TYPE_DEFAULT))
        {
          unique_id2 = [v22 unique_id];
          *buf = 138412290;
          v44 = unique_id2;
          _os_log_impl(&dword_1C3E90000, chRecentCall, OS_LOG_TYPE_DEFAULT, "Updated call not found for call with uniqueId: %@", buf, 0xCu);
        }
      }

LABEL_22:
    }

    logHandle = v20;
    v18 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v18);
LABEL_24:

  if ([v32 count] && v31)
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:errorCopy];
  }

LABEL_33:

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)updateAllCallRecords_sync:(id)records_sync error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  records_syncCopy = records_sync;
  v7 = objc_opt_new();
  fetchAll = [(CallHistoryDBHandle *)self->dbStoreHandle fetchAll];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [fetchAll countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(fetchAll);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([(CallHistoryDBClientHandle *)self updateCallRecord_sync:v13 withChangeDict:records_syncCopy])
        {
          chRecentCall = [v13 chRecentCall];
          [v7 addObject:chRecentCall];
        }
      }

      v10 = [fetchAll countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:error];
    ct_green_tea_logger_create_static();
    v15 = getCTGreenTeaOsLogHandle();
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = records_syncCopy;
      _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_INFO, "Modify: %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)updateCallRecord_sync:(id)record_sync withChangeDict:(id)dict
{
  record_syncCopy = record_sync;
  dictCopy = dict;
  v8 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyOutgoingLocalParticipantUUID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  outgoingLocalParticipantUUID = [record_syncCopy outgoingLocalParticipantUUID];
  v11 = v9;
  v12 = v11;
  if (!(v11 | outgoingLocalParticipantUUID))
  {
    goto LABEL_5;
  }

  if (!v11)
  {

    goto LABEL_8;
  }

  v13 = [outgoingLocalParticipantUUID isEqual:v11];

  if ((v13 & 1) == 0)
  {
LABEL_8:
    [record_syncCopy setOutgoingLocalParticipantUUID:v12];
    v14 = 1;
    goto LABEL_9;
  }

LABEL_5:
  v14 = 0;
LABEL_9:

LABEL_10:
  v15 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyRead];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = v15;
  read = [record_syncCopy read];
  v18 = v16;
  v19 = v18;
  if (v18 | read)
  {
    if (v18)
    {
      v20 = [read isEqual:v18];

      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    [record_syncCopy setRead:v19];
    v14 = 1;
  }

LABEL_17:

LABEL_18:
  v21 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyBytesUsed];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = v21;
  face_time_data = [record_syncCopy face_time_data];
  v24 = v22;
  v25 = v24;
  if (v24 | face_time_data)
  {
    if (v24)
    {
      v26 = [face_time_data isEqual:v24];

      if (v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    [record_syncCopy setFace_time_data:v25];
    v14 = 1;
  }

LABEL_25:

LABEL_26:
  v27 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyCallStatus];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = 0;
    -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [v27 integerValue], &v60 + 1, &v60);
    answered = [record_syncCopy answered];
    bOOLValue = [answered BOOLValue];
    v30 = HIBYTE(v60);

    if (v30 != bOOLValue)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v60)];
      [record_syncCopy setAnswered:v31];

      v14 = 1;
    }

    originated = [record_syncCopy originated];
    bOOLValue2 = [originated BOOLValue];
    v34 = v60;

    if (v34 != bOOLValue2)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithBool:v60];
      [record_syncCopy setOriginated:v35];

      v14 = 1;
    }
  }

  v36 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyHasMessage];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
    hasMessage = [record_syncCopy hasMessage];
    v39 = v37;
    v40 = v39;
    if (v39 | hasMessage)
    {
      if (v39)
      {
        v41 = [hasMessage isEqual:v39];

        if (v41)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      [record_syncCopy setHasMessage:v40];
      v14 = 1;
    }

LABEL_38:
  }

  v42 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyAutoAnsweredReason];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v43 = v42;
  autoAnsweredReason = [record_syncCopy autoAnsweredReason];
  v45 = v43;
  v46 = v45;
  if (v45 | autoAnsweredReason)
  {
    if (v45)
    {
      v47 = [autoAnsweredReason isEqual:v45];

      if (v47)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    [record_syncCopy setAutoAnsweredReason:v46];
    v14 = 1;
  }

LABEL_46:

LABEL_47:
  v48 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyEmergencyMediaItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = [[CHEmergencyMediaItem alloc] initWithDictionary:v48];
    if (v49)
    {
      v14 = [record_syncCopy addEmergencyMediaItem:v49];
    }
  }

  v50 = [dictCopy objectForKeyedSubscript:kCallUpdatePropertyReminderUUID];

  null = [MEMORY[0x1E695DFB0] null];

  if (v50 == null)
  {
    reminderUUID = [record_syncCopy reminderUUID];
    if (reminderUUID)
    {
      v58 = reminderUUID;

      [record_syncCopy setReminderUUID:0];
      v14 = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v50;
      reminderUUID2 = [record_syncCopy reminderUUID];
      v54 = v52;
      v55 = v54;
      if (v54 | reminderUUID2)
      {
        if (v54)
        {
          v56 = [reminderUUID2 isEqual:v54];

          if (v56)
          {
            goto LABEL_61;
          }
        }

        else
        {
        }

        [record_syncCopy setReminderUUID:v55];
        v14 = 1;
      }

LABEL_61:
    }
  }

  return v14;
}

- (BOOL)updateCallRecord_sync:(id)record_sync withCall:(id)call
{
  v48 = *MEMORY[0x1E69E9840];
  record_syncCopy = record_sync;
  callCopy = call;
  chRecentCall = [record_syncCopy chRecentCall];
  v9 = [chRecentCall isEqual:callCopy];
  if ((v9 & 1) == 0)
  {
    v46 = 0;
    -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [callCopy callStatus], &v46 + 1, &v46);
    uniqueId = [callCopy uniqueId];
    [record_syncCopy setUnique_id:uniqueId];

    outgoingLocalParticipantUUID = [callCopy outgoingLocalParticipantUUID];
    [record_syncCopy setOutgoingLocalParticipantUUID:outgoingLocalParticipantUUID];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(callCopy, "read")}];
    [record_syncCopy setRead:v12];

    bytesOfDataUsed = [callCopy bytesOfDataUsed];
    [record_syncCopy setFace_time_data:bytesOfDataUsed];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v46)];
    [record_syncCopy setAnswered:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:v46];
    [record_syncCopy setOriginated:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(callCopy, "hasMessage")}];
    [record_syncCopy setHasMessage:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(callCopy, "autoAnsweredReason")}];
    [record_syncCopy setAutoAnsweredReason:v17];

    participantGroupUUID = [callCopy participantGroupUUID];
    [record_syncCopy setParticipantGroupUUID:participantGroupUUID];

    v19 = MEMORY[0x1E696AD98];
    [callCopy duration];
    v20 = [v19 numberWithDouble:?];
    [record_syncCopy setDuration:v20];

    localParticipantUUID = [record_syncCopy localParticipantUUID];
    if (localParticipantUUID)
    {
      v22 = record_syncCopy;
    }

    else
    {
      v22 = callCopy;
    }

    localParticipantUUID2 = [v22 localParticipantUUID];
    [record_syncCopy setLocalParticipantUUID:localParticipantUUID2];

    outgoingLocalParticipantUUID2 = [record_syncCopy outgoingLocalParticipantUUID];
    if (outgoingLocalParticipantUUID2)
    {
      v25 = record_syncCopy;
    }

    else
    {
      v25 = callCopy;
    }

    outgoingLocalParticipantUUID3 = [v25 outgoingLocalParticipantUUID];
    [record_syncCopy setOutgoingLocalParticipantUUID:outgoingLocalParticipantUUID3];

    verificationStatus = [record_syncCopy verificationStatus];
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    if (verificationStatus == v28)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(callCopy, "verificationStatus")}];
    }

    else
    {
      [record_syncCopy verificationStatus];
    }
    v29 = ;
    [record_syncCopy setVerificationStatus:v29];

    date = [record_syncCopy date];
    date2 = [callCopy date];
    if ([date compare:date2] == 1)
    {
      v32 = callCopy;
    }

    else
    {
      v32 = record_syncCopy;
    }

    date3 = [v32 date];
    [record_syncCopy setDate:date3];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    emergencyMediaItems = [callCopy emergencyMediaItems];
    v35 = [emergencyMediaItems countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v43;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(emergencyMediaItems);
          }

          [record_syncCopy addEmergencyMediaItem:*(*(&v42 + 1) + 8 * i)];
        }

        v36 = [emergencyMediaItems countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v36);
    }

    reminderUUID = [callCopy reminderUUID];
    [record_syncCopy setReminderUUID:reminderUUID];
  }

  v40 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (void)dealloc
{
  [(CallHistoryDBClientHandle *)self unRegisterForNotifications];
  v3.receiver = self;
  v3.super_class = CallHistoryDBClientHandle;
  [(CallHistoryDBClientHandle *)&v3 dealloc];
}

- (BOOL)saveDatabase:(id *)database
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CallHistoryDBClientHandle_saveDatabase___block_invoke;
  v4[3] = &unk_1E81DC988;
  v4[4] = self;
  v4[5] = database;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v4];
}

- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)l
{
  lCopy = l;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CallHistoryDBClientHandle_moveCallRecordsFromDatabaseAtURL___block_invoke;
  v7[3] = &unk_1E81DCA50;
  v7[4] = self;
  v8 = lCopy;
  v5 = lCopy;
  LOBYTE(self) = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v7];

  return self;
}

@end