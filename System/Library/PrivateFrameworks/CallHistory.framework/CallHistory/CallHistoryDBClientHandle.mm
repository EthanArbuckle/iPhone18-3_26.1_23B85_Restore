@interface CallHistoryDBClientHandle
+ (id)createForClient;
+ (id)createForServer;
- (BOOL)createCallRecord:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (BOOL)createCallRecords:(id)a3 error:(id *)a4;
- (BOOL)deleteAll:(id *)a3;
- (BOOL)deleteObjectWithUniqueId:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (BOOL)deleteObjectsWithUniqueIds:(id)a3 error:(id *)a4;
- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)a3;
- (BOOL)resetAllTimers;
- (BOOL)saveDatabase:(id *)a3;
- (BOOL)updateCallRecord_sync:(id)a3 withCall:(id)a4;
- (BOOL)updateCallRecord_sync:(id)a3 withChangeDict:(id)a4;
- (BOOL)willHandleNotification_sync:(id)a3;
- (CallDBManager)manager;
- (CallHistoryDBHandle)dbStoreHandle;
- (id)convertToCHRecentCalls_sync:(id)a3;
- (id)convertToCHRecentCalls_sync:(id)a3 limit:(unint64_t)a4;
- (id)fetchAll;
- (id)fetchAllNoLimit;
- (id)fetchAllObjectsWithUniqueId:(id)a3;
- (id)fetchCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7;
- (id)fetchCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7;
- (id)fetchCoalescedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7;
- (id)fetchObjectWithUniqueId:(id)a3;
- (id)fetchObjectsWithPredicate:(id)a3;
- (id)fetchObjectsWithUniqueIds:(id)a3;
- (id)fetchWithCallTypes:(unsigned int)a3;
- (id)init:(BOOL)a3;
- (id)timerIncoming;
- (id)timerLastReset;
- (id)timerLifetime;
- (id)timerOutgoing;
- (id)updateAllCallRecords:(id)a3 error:(id *)a4;
- (id)updateAllCallRecords_sync:(id)a3 error:(id *)a4;
- (id)updateCallRecords:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (id)updateCallRecordsWithCalls:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (id)updateCallRecordsWithCalls_sync:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (id)updateCallRecords_sync:(id)a3 error:(id *)a4 save:(BOOL)a5;
- (id)updateCallsWithPredicate:(id)a3 propertiesToUpdate:(id)a4 error:(id *)a5;
- (int64_t)deleteCallsWithPredicate:(id)a3;
- (unint64_t)fetchCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4;
- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4;
- (unsigned)getCallStatus_sync:(id)a3 isOriginated:(id)a4 isAnswered:(id)a5;
- (void)dealloc;
- (void)handleCallTimersSave_sync:(id)a3;
- (void)parseCallStatus_sync:(unsigned int)a3 isAnswered:(BOOL *)a4 isOriginated:(BOOL *)a5;
- (void)registerForNotifications;
- (void)resetTimers;
- (void)setStoreObject_sync:(id)a3 withClientObject:(id)a4;
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
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CallHistoryDBClientHandle_registerForNotifications__block_invoke;
  v6[3] = &unk_1E81DC7F8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:@"kCallHistoryTimersDistributedSaveNotification" object:0 queue:0 usingBlock:v6];
  observerCallTimersRef = self->_observerCallTimersRef;
  self->_observerCallTimersRef = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)parseCallStatus_sync:(unsigned int)a3 isAnswered:(BOOL *)a4 isOriginated:(BOOL *)a5
{
  if (a4 && a5)
  {
    *a4 = 0;
    *a5 = 0;
    switch(a3)
    {
      case 1u:
LABEL_12:
        *a4 = 1;
        return;
      case 2u:
        a4 = a5;
        goto LABEL_12;
      case 4u:
        goto LABEL_12;
    }

    v5 = a3 != 8 && a3 == 16;
    a4 = a5;
    if (v5)
    {
      goto LABEL_12;
    }
  }
}

- (unsigned)getCallStatus_sync:(id)a3 isOriginated:(id)a4 isAnswered:(id)a5
{
  if (!a3 || !a4 || !a5)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = [a5 BOOLValue];
  v10 = [v7 BOOLValue];

  [v8 doubleValue];
  v12 = v11;

  return [CHManager CHCallStatusForCallWithDuration:v10 isOriginated:v9 isAnswered:v12];
}

- (void)setStoreObject_sync:(id)a3 withClientObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v53 = 0;
  -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [v7 callStatus], &v53 + 1, &v53);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v53)];
  [v6 setAnswered:v8];

  v9 = [v7 date];
  [v6 setDate:v9];

  v10 = [v7 disconnectedCause];
  [v6 setDisconnected_cause:v10];

  v11 = MEMORY[0x1E696AD98];
  [v7 duration];
  v12 = [v11 numberWithDouble:?];
  [v6 setDuration:v12];

  v13 = [v7 bytesOfDataUsed];
  [v6 setFace_time_data:v13];

  v14 = [v7 filteredOutReason];
  [v6 setFiltered_out_reason:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "handleType")}];
  [v6 setHandle_type:v15];

  v16 = [v7 imageURL];
  [v6 setImageURL:v16];

  v17 = [v7 isoCountryCode];
  [v6 setIso_country_code:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "junkConfidence")}];
  [v6 setJunkConfidence:v18];

  v19 = [v7 junkIdentificationCategory];
  [v6 setJunkIdentificationCategory:v19];

  v20 = [CHRecentCall getLocationForCall:v7];
  [v6 setLocation:v20];

  v21 = [v7 localParticipantUUID];
  [v6 setLocalParticipantUUID:v21];

  v22 = [v7 name];
  [v6 setName:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v7, "callerIdAvailability")}];
  [v6 setNumber_availability:v23];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:v53];
  [v6 setOriginated:v24];

  v25 = [v7 outgoingLocalParticipantUUID];
  [v6 setOutgoingLocalParticipantUUID:v25];

  v26 = [v7 participantGroupUUID];
  [v6 setParticipantGroupUUID:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "read")}];
  [v6 setRead:v27];

  v28 = [v7 serviceProvider];
  [v6 setService_provider:v28];

  v29 = [v7 uniqueId];
  [v6 setUnique_id:v29];

  v30 = [v7 conversationID];
  [v6 setConversationID:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "verificationStatus")}];
  [v6 setVerificationStatus:v31];

  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "autoAnsweredReason")}];
  [v6 setAutoAnsweredReason:v32];

  [v6 setUsedEmergencyVideoStreaming:{objc_msgSend(v7, "usedEmergencyVideoStreaming")}];
  [v6 setWasEmergencyCall:{objc_msgSend(v7, "wasEmergencyCall")}];
  v33 = [v7 blockedByExtension];
  [v6 setBlockedByExtension:v33];

  v34 = [v7 blockedByExtensionName];
  [v6 setBlockedByExtensionName:v34];

  v35 = [v7 identityExtension];
  [v6 setIdentityExtension:v35];

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "callDirectoryIdentityType")}];
  [v6 setCallDirectoryIdentityType:v36];

  v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "screenSharingType")}];
  [v6 setScreenSharingType:v37];

  v38 = [v7 reminderUUID];
  [v6 setReminderUUID:v38];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "communicationTrustScore")}];
  [v6 setCommunicationTrustScore:v39];

  v40 = [v6 managedObjectContext];
  v41 = [v7 initiator];

  if (v41 && v40)
  {
    v42 = [v7 initiator];
    v43 = [CHManagedHandle managedHandleForHandle:v42 inManagedObjectContext:v40];
    [v6 setInitiator:v43];
  }

  v44 = [v7 remoteParticipantHandles];

  if (v44 && v40)
  {
    v45 = [v7 remoteParticipantHandles];
    v46 = [CHManagedHandle managedHandlesForHandles:v45 inManagedObjectContext:v40];
    [v6 setRemoteParticipantHandles:v46];
  }

  v47 = [v7 emergencyMediaItems];

  if (v47 && v40)
  {
    v48 = [v7 emergencyMediaItems];
    v49 = [EmergencyMediaItem managedEmergencyMediaItemsForEmergencyMediaItems:v48 inManagedObjectContext:v40];
    [v6 setEmergencyMediaItems:v49];
  }

  v50 = [v7 callerId];
  [v6 setAddress:v50];

  v51 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "callCategory")}];
  [v6 setCall_category:v51];

  v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "callType")}];
  [v6 setCalltype:v52];
}

- (id)convertToCHRecentCalls_sync:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) chRecentCall];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)convertToCHRecentCalls_sync:(id)a3 limit:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
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
        v14 = [v12 chRecentCall];
        v15 = v14;
        if (v11)
        {
          v16 = [v11 coalescedCallWithCall:v14 usingStrategy:@"kCHCoalescingStrategyRecents"];
        }

        else
        {
          v16 = v14;
        }

        v17 = v16;
        v18 = v16;
        if (!v16)
        {
          [v23 addObject:v11];
          v18 = v15;
          if (a4)
          {
            v19 = [v23 count];
            v18 = v15;
            if (v19 == a4)
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

- (id)init:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = CallHistoryDBClientHandle;
  v4 = [(CHSynchronizedLoggable *)&v21 initWithName:"ch.clientdbhandle"];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [CHNotifyObserver alloc];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.callhistory.notification.calls-changed"];
    v7 = [(CHSynchronizedLoggable *)v4 queue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __34__CallHistoryDBClientHandle_init___block_invoke;
    v18[3] = &unk_1E81DBF80;
    objc_copyWeak(&v19, &location);
    v8 = [(CHNotifyObserver *)v5 initWithName:v6 queue:v7 callback:v18];
    callsDidChangeNotifyObserver = v4->_callsDidChangeNotifyObserver;
    v4->_callsDidChangeNotifyObserver = v8;

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __34__CallHistoryDBClientHandle_init___block_invoke_2;
    v15 = &unk_1E81DC7D0;
    v17 = a3;
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
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self->_observerCallTimersRef name:@"kCallHistoryTimersDistributedSaveNotification" object:0];
}

- (int64_t)deleteCallsWithPredicate:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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

- (unint64_t)fetchCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v13 = v8;
  v9 = v7;
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

- (id)fetchCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
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
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v22 = a5;
  v23 = a6;
  v24 = a7;
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

- (id)fetchCallIdentifiersWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
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
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v20 = v15;
  v22 = a5;
  v23 = a6;
  v24 = a7;
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

- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)a3 sortDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CallHistoryDBClientHandle_fetchCoalescedCallCountWithPredicate_sortDescriptors___block_invoke;
  v12[3] = &unk_1E81DC898;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
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

- (id)fetchCoalescedCallsWithPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 batchSize:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
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
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v22 = a6;
  v23 = a7;
  v20 = v15;
  v21 = &v25;
  v24 = a5;
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

- (id)updateCallsWithPredicate:(id)a3 propertiesToUpdate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v18 = &v20;
  v19 = &v26;
  [(CHSynchronizedLoggable *)self executeSync:v15];
  if (a5)
  {
    v12 = v21[5];
    if (v12)
    {
      *a5 = v12;
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

- (id)fetchWithCallTypes:(unsigned int)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CallHistoryDBClientHandle_fetchWithCallTypes___block_invoke;
  v5[3] = &unk_1E81DC8E8;
  v5[4] = self;
  v6 = a3;
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

- (id)fetchObjectsWithPredicate:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CallHistoryDBClientHandle_fetchObjectsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC910;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)fetchAllObjectsWithUniqueId:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__CallHistoryDBClientHandle_fetchAllObjectsWithUniqueId___block_invoke;
  v8[3] = &unk_1E81DC938;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)fetchObjectWithUniqueId:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CallHistoryDBClientHandle_fetchObjectWithUniqueId___block_invoke;
  v8[3] = &unk_1E81DC960;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)fetchObjectsWithUniqueIds:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CallHistoryDBClientHandle_fetchObjectsWithUniqueIds___block_invoke;
  v8[3] = &unk_1E81DC910;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (BOOL)deleteAll:(id *)a3
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
  v8[5] = a3;
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

- (BOOL)deleteObjectWithUniqueId:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v8 = a3;
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
  v15 = v8;
  v17 = a5;
  v16 = a4;
  v11 = v8;
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

- (BOOL)deleteObjectsWithUniqueIds:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v13 = v6;
  v14 = a4;
  v9 = v6;
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

- (BOOL)createCallRecord:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v8 = a3;
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
  v15 = v8;
  v17 = a5;
  v16 = a4;
  v11 = v8;
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

- (BOOL)createCallRecords:(id)a3 error:(id *)a4
{
  v6 = a3;
  ct_green_tea_logger_create_static();
  v7 = getCTGreenTeaOsLogHandle();
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_INFO, "Insert", buf, 2u);
  }

  if ([v6 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__CallHistoryDBClientHandle_createCallRecords_error___block_invoke;
    v11[3] = &unk_1E81DC9D8;
    v12 = v6;
    v13 = self;
    v14 = a4;
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

- (id)updateCallRecords:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CallHistoryDBClientHandle_updateCallRecords_error_save___block_invoke;
  v12[3] = &unk_1E81DCA00;
  v12[4] = self;
  v13 = v8;
  v14 = a4;
  v15 = a5;
  v9 = v8;
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

- (id)updateCallRecordsWithCalls:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CallHistoryDBClientHandle_updateCallRecordsWithCalls_error_save___block_invoke;
  v12[3] = &unk_1E81DCA00;
  v12[4] = self;
  v13 = v8;
  v14 = a4;
  v15 = a5;
  v9 = v8;
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

- (id)updateAllCallRecords:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CallHistoryDBClientHandle_updateAllCallRecords_error___block_invoke;
  v10[3] = &unk_1E81DC348;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v7 = v6;
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
  v3 = [(CHSynchronizedLoggable *)self queue];
  dispatch_assert_queue_V2(v3);

  dbStoreHandle = self->dbStoreHandle;

  return dbStoreHandle;
}

- (CallDBManager)manager
{
  v2 = self;
  objc_sync_enter(v2);
  manager = v2->_manager;
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
    v6[4] = v2;
    v6[5] = &v7;
    [(CHSynchronizedLoggable *)v2 executeSync:v6];
    objc_storeStrong(&v2->_manager, v8[5]);
    _Block_object_dispose(&v7, 8);

    manager = v2->_manager;
  }

  v4 = manager;
  objc_sync_exit(v2);

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

- (void)handleCallTimersSave_sync:(id)a3
{
  if ([(CallHistoryDBClientHandle *)self willHandleNotification_sync:a3])
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle mergeCallDBPropChangesFromRemoteAppSave];
    [(CallHistoryDBHandle *)self->dbStoreHandle postTimersChangedNotification];
    v4 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Got timers save notification from other app", v5, 2u);
    }
  }
}

- (BOOL)willHandleNotification_sync:(id)a3
{
  v3 = [a3 object];
  v4 = +[CallHistoryDBHandle objectId];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

- (id)updateCallRecords_sync:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = v8;
  v10 = [v8 allKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v9 addObject:*(*(&v38 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    v16 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "No calls to update", buf, 2u);
    }

    goto LABEL_32;
  }

  v15 = [(CallHistoryDBHandle *)self->dbStoreHandle fetchObjectsWithUniqueIds:v9];
  v16 = v15;
  if (!v15 || ![v15 count])
  {
    v27 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v9;
      _os_log_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_DEFAULT, "Objects with given uniqueIds: %{public}@ to update do not exist", buf, 0xCu);
    }

LABEL_32:
    v32 = 0;
    goto LABEL_33;
  }

  v30 = a4;
  v31 = v5;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = v16;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v35;
  do
  {
    v20 = v16;
    for (j = 0; j != v18; ++j)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v20);
      }

      v22 = *(*(&v34 + 1) + 8 * j);
      v23 = [v22 unique_id];
      v24 = [v33 objectForKey:v23];

      if (v24)
      {
        if (![(CallHistoryDBClientHandle *)self updateCallRecord_sync:v22 withChangeDict:v24])
        {
          goto LABEL_22;
        }

        v25 = [v22 chRecentCall];
        [v32 addObject:v25];
      }

      else
      {
        v25 = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v22 unique_id];
          *buf = 138543362;
          v44 = v26;
          _os_log_impl(&dword_1C3E90000, v25, OS_LOG_TYPE_DEFAULT, "Properties dict not found for call with uniqueId: %{public}@", buf, 0xCu);
        }
      }

LABEL_22:
    }

    v16 = v20;
    v18 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v18);
LABEL_24:

  if ([v32 count] && v31)
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:v30];
  }

LABEL_33:

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)updateCallRecordsWithCalls_sync:(id)a3 error:(id *)a4 save:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = v8;
  v10 = [v8 allKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v9 addObject:*(*(&v38 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    v16 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "No calls to update", buf, 2u);
    }

    goto LABEL_32;
  }

  v15 = [(CallHistoryDBHandle *)self->dbStoreHandle fetchObjectsWithUniqueIds:v9];
  v16 = v15;
  if (!v15 || ![v15 count])
  {
    v27 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v9;
      _os_log_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_DEFAULT, "Objects with given uniqueIds:%@ to update do not exist", buf, 0xCu);
    }

LABEL_32:
    v32 = 0;
    goto LABEL_33;
  }

  v30 = a4;
  v31 = v5;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = v16;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v35;
  do
  {
    v20 = v16;
    for (j = 0; j != v18; ++j)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v20);
      }

      v22 = *(*(&v34 + 1) + 8 * j);
      v23 = [v22 unique_id];
      v24 = [v33 objectForKey:v23];

      if (v24)
      {
        if (![(CallHistoryDBClientHandle *)self updateCallRecord_sync:v22 withCall:v24])
        {
          goto LABEL_22;
        }

        v25 = [v22 chRecentCall];
        [v32 addObject:v25];
      }

      else
      {
        v25 = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v22 unique_id];
          *buf = 138412290;
          v44 = v26;
          _os_log_impl(&dword_1C3E90000, v25, OS_LOG_TYPE_DEFAULT, "Updated call not found for call with uniqueId: %@", buf, 0xCu);
        }
      }

LABEL_22:
    }

    v16 = v20;
    v18 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v18);
LABEL_24:

  if ([v32 count] && v31)
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:v30];
  }

LABEL_33:

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)updateAllCallRecords_sync:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(CallHistoryDBHandle *)self->dbStoreHandle fetchAll];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([(CallHistoryDBClientHandle *)self updateCallRecord_sync:v13 withChangeDict:v6])
        {
          v14 = [v13 chRecentCall];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(CallHistoryDBHandle *)self->dbStoreHandle save:a4];
    ct_green_tea_logger_create_static();
    v15 = getCTGreenTeaOsLogHandle();
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_INFO, "Modify: %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)updateCallRecord_sync:(id)a3 withChangeDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:kCallUpdatePropertyOutgoingLocalParticipantUUID];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v6 outgoingLocalParticipantUUID];
  v11 = v9;
  v12 = v11;
  if (!(v11 | v10))
  {
    goto LABEL_5;
  }

  if (!v11)
  {

    goto LABEL_8;
  }

  v13 = [v10 isEqual:v11];

  if ((v13 & 1) == 0)
  {
LABEL_8:
    [v6 setOutgoingLocalParticipantUUID:v12];
    v14 = 1;
    goto LABEL_9;
  }

LABEL_5:
  v14 = 0;
LABEL_9:

LABEL_10:
  v15 = [v7 objectForKeyedSubscript:kCallUpdatePropertyRead];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v6 read];
  v18 = v16;
  v19 = v18;
  if (v18 | v17)
  {
    if (v18)
    {
      v20 = [v17 isEqual:v18];

      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    [v6 setRead:v19];
    v14 = 1;
  }

LABEL_17:

LABEL_18:
  v21 = [v7 objectForKeyedSubscript:kCallUpdatePropertyBytesUsed];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = v21;
  v23 = [v6 face_time_data];
  v24 = v22;
  v25 = v24;
  if (v24 | v23)
  {
    if (v24)
    {
      v26 = [v23 isEqual:v24];

      if (v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    [v6 setFace_time_data:v25];
    v14 = 1;
  }

LABEL_25:

LABEL_26:
  v27 = [v7 objectForKeyedSubscript:kCallUpdatePropertyCallStatus];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = 0;
    -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [v27 integerValue], &v60 + 1, &v60);
    v28 = [v6 answered];
    v29 = [v28 BOOLValue];
    v30 = HIBYTE(v60);

    if (v30 != v29)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v60)];
      [v6 setAnswered:v31];

      v14 = 1;
    }

    v32 = [v6 originated];
    v33 = [v32 BOOLValue];
    v34 = v60;

    if (v34 != v33)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithBool:v60];
      [v6 setOriginated:v35];

      v14 = 1;
    }
  }

  v36 = [v7 objectForKeyedSubscript:kCallUpdatePropertyHasMessage];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
    v38 = [v6 hasMessage];
    v39 = v37;
    v40 = v39;
    if (v39 | v38)
    {
      if (v39)
      {
        v41 = [v38 isEqual:v39];

        if (v41)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      [v6 setHasMessage:v40];
      v14 = 1;
    }

LABEL_38:
  }

  v42 = [v7 objectForKeyedSubscript:kCallUpdatePropertyAutoAnsweredReason];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v43 = v42;
  v44 = [v6 autoAnsweredReason];
  v45 = v43;
  v46 = v45;
  if (v45 | v44)
  {
    if (v45)
    {
      v47 = [v44 isEqual:v45];

      if (v47)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    [v6 setAutoAnsweredReason:v46];
    v14 = 1;
  }

LABEL_46:

LABEL_47:
  v48 = [v7 objectForKeyedSubscript:kCallUpdatePropertyEmergencyMediaItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = [[CHEmergencyMediaItem alloc] initWithDictionary:v48];
    if (v49)
    {
      v14 = [v6 addEmergencyMediaItem:v49];
    }
  }

  v50 = [v7 objectForKeyedSubscript:kCallUpdatePropertyReminderUUID];

  v51 = [MEMORY[0x1E695DFB0] null];

  if (v50 == v51)
  {
    v57 = [v6 reminderUUID];
    if (v57)
    {
      v58 = v57;

      [v6 setReminderUUID:0];
      v14 = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v50;
      v53 = [v6 reminderUUID];
      v54 = v52;
      v55 = v54;
      if (v54 | v53)
      {
        if (v54)
        {
          v56 = [v53 isEqual:v54];

          if (v56)
          {
            goto LABEL_61;
          }
        }

        else
        {
        }

        [v6 setReminderUUID:v55];
        v14 = 1;
      }

LABEL_61:
    }
  }

  return v14;
}

- (BOOL)updateCallRecord_sync:(id)a3 withCall:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 chRecentCall];
  v9 = [v8 isEqual:v7];
  if ((v9 & 1) == 0)
  {
    v46 = 0;
    -[CallHistoryDBClientHandle parseCallStatus_sync:isAnswered:isOriginated:](self, "parseCallStatus_sync:isAnswered:isOriginated:", [v7 callStatus], &v46 + 1, &v46);
    v10 = [v7 uniqueId];
    [v6 setUnique_id:v10];

    v11 = [v7 outgoingLocalParticipantUUID];
    [v6 setOutgoingLocalParticipantUUID:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "read")}];
    [v6 setRead:v12];

    v13 = [v7 bytesOfDataUsed];
    [v6 setFace_time_data:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v46)];
    [v6 setAnswered:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:v46];
    [v6 setOriginated:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "hasMessage")}];
    [v6 setHasMessage:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "autoAnsweredReason")}];
    [v6 setAutoAnsweredReason:v17];

    v18 = [v7 participantGroupUUID];
    [v6 setParticipantGroupUUID:v18];

    v19 = MEMORY[0x1E696AD98];
    [v7 duration];
    v20 = [v19 numberWithDouble:?];
    [v6 setDuration:v20];

    v21 = [v6 localParticipantUUID];
    if (v21)
    {
      v22 = v6;
    }

    else
    {
      v22 = v7;
    }

    v23 = [v22 localParticipantUUID];
    [v6 setLocalParticipantUUID:v23];

    v24 = [v6 outgoingLocalParticipantUUID];
    if (v24)
    {
      v25 = v6;
    }

    else
    {
      v25 = v7;
    }

    v26 = [v25 outgoingLocalParticipantUUID];
    [v6 setOutgoingLocalParticipantUUID:v26];

    v27 = [v6 verificationStatus];
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    if (v27 == v28)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "verificationStatus")}];
    }

    else
    {
      [v6 verificationStatus];
    }
    v29 = ;
    [v6 setVerificationStatus:v29];

    v30 = [v6 date];
    v31 = [v7 date];
    if ([v30 compare:v31] == 1)
    {
      v32 = v7;
    }

    else
    {
      v32 = v6;
    }

    v33 = [v32 date];
    [v6 setDate:v33];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = [v7 emergencyMediaItems];
    v35 = [v34 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(v34);
          }

          [v6 addEmergencyMediaItem:*(*(&v42 + 1) + 8 * i)];
        }

        v36 = [v34 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v36);
    }

    v39 = [v7 reminderUUID];
    [v6 setReminderUUID:v39];
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

- (BOOL)saveDatabase:(id *)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CallHistoryDBClientHandle_saveDatabase___block_invoke;
  v4[3] = &unk_1E81DC988;
  v4[4] = self;
  v4[5] = a3;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v4];
}

- (BOOL)moveCallRecordsFromDatabaseAtURL:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CallHistoryDBClientHandle_moveCallRecordsFromDatabaseAtURL___block_invoke;
  v7[3] = &unk_1E81DCA50;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v7];

  return self;
}

@end