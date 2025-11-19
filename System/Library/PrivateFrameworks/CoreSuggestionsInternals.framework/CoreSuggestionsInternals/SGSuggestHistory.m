@interface SGSuggestHistory
+ (id)newTestingInstanceWithSharedKVS:(id)a3;
+ (id)sharedSuggestHistory;
+ (void)reset;
+ (void)resetNoFlush;
- (BOOL)_anyHash:(id)a3 inSet:(id)a4;
- (BOOL)hasConfirmedField:(id)a3 value:(id)a4 forStorageEvent:(id)a5;
- (BOOL)hasContact:(id)a3;
- (BOOL)hasContactDetail:(id)a3 forContact:(id)a4;
- (BOOL)hasContactDetailKey:(id)a3;
- (BOOL)hasStorageContact:(id)a3;
- (BOOL)isConfirmedEvent:(id)a3;
- (BOOL)isConfirmedEventWithoutTimeStamp:(id)a3;
- (BOOL)isConfirmedReminder:(id)a3;
- (BOOL)isRejectedEvent:(id)a3;
- (BOOL)isRejectedReminder:(id)a3;
- (BOOL)isUpdatableContact:(id)a3;
- (BOOL)isValidCancelledEvent:(id)a3;
- (BOOL)isValidNewEvent:(id)a3;
- (BOOL)isValidNewReminder:(id)a3;
- (BOOL)isValidSuggestion:(id)a3;
- (BOOL)needsMigration;
- (NSUbiquitousKeyValueStore)kvs;
- (SGSuggestHistory)init;
- (SGSuggestHistory)initWithKVS:(id)a3 kvStoreIdentifier:(id)a4;
- (id)_canaryHash;
- (id)description;
- (id)hashesByAddingCompatibilityHashesToHashes:(id)a3 forMatching:(BOOL)a4;
- (id)identityBasedHashesForPseudoEvent:(id)a3 withCreationTime:(SGUnixTimestamp_)a4;
- (id)identityBasedHashesForPseudoReminder:(id)a3 withCreationTime:(SGUnixTimestamp_)a4;
- (id)keysForContact:(id)a3;
- (id)keysForContactDetail:(id)a3 ofContact:(id)a4;
- (id)keysForCuratedContactDetail:(id)a3 ofContact:(id)a4;
- (id)keysForStorageContact:(id)a3;
- (id)kvsIfSyncSupported;
- (id)legacyIOS13HashesForClassicHashes:(id)a3;
- (id)legacyManateeSecret;
- (id)loadResetInfo;
- (id)mutableSetForKey:(id)a3;
- (id)salt;
- (void)_setHashes:(id)a3 forKey:(id)a4;
- (void)_setInternalStateAccordingToKVS:(id)a3;
- (void)addSuggestHistoryObserver:(id)a3;
- (void)confirmEvent:(id)a3;
- (void)confirmEventFromExternalDevice:(id)a3;
- (void)confirmFieldValues:(id)a3 forStorageEvent:(id)a4;
- (void)confirmOrRejectDetail:(id)a3 forContact:(id)a4;
- (void)confirmOrRejectDetailHashes:(id)a3;
- (void)confirmOrRejectRecordForContact:(id)a3;
- (void)confirmReminder:(id)a3;
- (void)confirmReminderFromExternalDevice:(id)a3;
- (void)confirmStorageEvent:(id)a3;
- (void)handleSyncedDataChanged:(id)a3;
- (void)migrateFromKVS:(id)a3 withCompletion:(id)a4;
- (void)migrateIfNeeded;
- (void)pushAll:(id)a3;
- (void)pushConfirmedEventFields:(id)a3;
- (void)pushConfirmedEventWithoutTimestampFields:(id)a3;
- (void)pushConfirmedEvents:(id)a3;
- (void)pushConfirmedEventsWithoutTimestamp:(id)a3;
- (void)pushConfirmedReminders:(id)a3;
- (void)pushContacts:(id)a3;
- (void)pushDontUpdate:(id)a3;
- (void)pushEmptyHashesForTestingKey:(id)a3;
- (void)pushRejectedEvents:(id)a3;
- (void)pushRejectedReminders:(id)a3;
- (void)pushResetInfo:(id)a3;
- (void)pushStorageDetails:(id)a3;
- (void)recordSuccessfulMigration;
- (void)rejectContact:(id)a3;
- (void)rejectContactDetailKey:(id)a3;
- (void)rejectEvent:(id)a3;
- (void)rejectEventFromExternalDevice:(id)a3;
- (void)rejectRealtimeContact:(id)a3;
- (void)rejectReminder:(id)a3;
- (void)rejectReminderFromExternalDevice:(id)a3;
- (void)rejectStorageEvent:(id)a3;
- (void)removeConfirmationHistoryForEntityWithOpaqueKey:(id)a3 creationTimestamp:(SGUnixTimestamp_)a4;
- (void)removeConfirmationHistoryForEvent:(id)a3;
- (void)reset;
- (void)resetNoFlush;
- (void)setInternalStateAccordingToKVS;
- (void)setMigrateFromStore:(id)a3;
- (void)writeAndPushConfirmedEventHashes:(id)a3;
- (void)writeAndPushConfirmedEventWithoutTimestampHashes:(id)a3;
- (void)writeAndPushConfirmedReminderHashes:(id)a3;
- (void)writeAndPushRejectedEventHashes:(id)a3;
- (void)writeAndPushRejectedReminderHashes:(id)a3;
@end

@implementation SGSuggestHistory

+ (id)sharedSuggestHistory
{
  if (sharedSuggestHistory_onceToken != -1)
  {
    dispatch_once(&sharedSuggestHistory_onceToken, &__block_literal_global_8521);
  }

  v3 = sharedSuggestHistory_instance;

  return v3;
}

- (void)pushEmptyHashesForTestingKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(SGSuggestHistory *)self _setHashes:v5 forKey:v4];
}

- (BOOL)hasConfirmedField:(id)a3 value:(id)a4 forStorageEvent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  lock = self->_lock;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__SGSuggestHistory_hasConfirmedField_value_forStorageEvent___block_invoke;
  v23[3] = &unk_27894CA00;
  v27 = &v28;
  v23[4] = self;
  v12 = v8;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v10;
  v26 = v14;
  [(_PASLock *)lock runWithLockAcquired:v23];
  if (v29[3])
  {
    v15 = 1;
  }

  else
  {
    v16 = self->_lock;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__SGSuggestHistory_hasConfirmedField_value_forStorageEvent___block_invoke_2;
    v18[3] = &unk_27894CA00;
    v22 = &v28;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    [(_PASLock *)v16 runWithLockAcquired:v18];

    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v28, 8);
  return v15 & 1;
}

void __60__SGSuggestHistory_hasConfirmedField_value_forStorageEvent___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v9 = [v3 _hashesForConfirmedField:v4 value:v5 storageEvent:v6 forMatching:1];
  v8 = v7[7];

  *(*(a1[8] + 8) + 24) = [v3 _anyHash:v9 inSet:v8];
}

void __60__SGSuggestHistory_hasConfirmedField_value_forStorageEvent___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v9 = [v3 _hashesForConfirmedField:v4 value:v5 storageEvent:v6 forMatching:1];
  v8 = v7[8];

  *(*(a1[8] + 8) + 24) = [v3 _anyHash:v9 inSet:v8];
}

- (void)confirmFieldValues:(id)a3 forStorageEvent:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2 * objc_msgSend(v6, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [(SGSuggestHistory *)self _hashesForConfirmedField:v14 value:v15 storageEvent:v7 forMatching:0];
        [v8 addObjectsFromArray:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  lock = self->_lock;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __55__SGSuggestHistory_confirmFieldValues_forStorageEvent___block_invoke;
  v29[3] = &unk_27894C960;
  v18 = v8;
  v30 = v18;
  v31 = self;
  [(_PASLock *)lock runWithLockAcquired:v29];
  v19 = self->_lock;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __55__SGSuggestHistory_confirmFieldValues_forStorageEvent___block_invoke_2;
  v26 = &unk_27894C960;
  v27 = v18;
  v28 = self;
  v20 = v18;
  [(_PASLock *)v19 runWithLockAcquired:&v23];
  v21 = [v7 recordId];
  [SGDNotificationBroadcaster emitEventUpdated:v21];

  v22 = *MEMORY[0x277D85DE8];
}

void __55__SGSuggestHistory_confirmFieldValues_forStorageEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[7];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushConfirmedEventFields:v5];
}

void __55__SGSuggestHistory_confirmFieldValues_forStorageEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2[8];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushConfirmedEventWithoutTimestampFields:v5];
}

- (BOOL)hasContactDetailKey:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 serialize];
  v19[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [(SGSuggestHistory *)self hashesForStrings:v6 forMatching:1];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SGSuggestHistory_hasContactDetailKey___block_invoke;
  v12[3] = &unk_27894C988;
  v14 = &v15;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  [(_PASLock *)lock runWithLockAcquired:v12];
  LOBYTE(v7) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t __40__SGSuggestHistory_hasContactDetailKey___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _anyHash:*(a1 + 40) inSet:*(a2 + 72)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)hasContactDetail:(id)a3 forContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SGSuggestHistory_hasContactDetail_forContact___block_invoke;
  v12[3] = &unk_27894C9D8;
  v15 = &v16;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(_PASLock *)lock runWithLockAcquired:v12];
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

void __48__SGSuggestHistory_hasContactDetail_forContact___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v8 = [v3 hashesForContactDetail:v4 fromContact:v5 forMatching:1];
  v7 = v6[9];

  *(*(a1[7] + 8) + 24) = [v3 _anyHash:v8 inSet:v7];
}

- (void)rejectEventFromExternalDevice:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSuggestHistory *)self kvs];
  v6 = [SGSuggestHistory newTestingInstanceWithSharedKVS:v5];

  v7 = [v4 opaqueKey];
  v8 = [v6 rejectHashesForOpaqueKey:v7 forMatching:0];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8313;
  v18 = __Block_byref_object_dispose__8314;
  v19 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SGSuggestHistory_rejectEventFromExternalDevice___block_invoke;
  v13[3] = &unk_27894C710;
  v13[4] = &v14;
  [(_PASLock *)lock runWithLockAcquired:v13];
  [v15[5] addObjectsFromArray:v8];
  [(SGSuggestHistory *)self _setHashes:v15[5] forKey:@"rejectedEvents"];
  v20 = *MEMORY[0x277CCA7B0];
  v21[0] = &unk_284749308;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"new data" object:self userInfo:v10];
  [(SGSuggestHistory *)self handleSyncedDataChanged:v11];

  _Block_object_dispose(&v14, 8);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __50__SGSuggestHistory_rejectEventFromExternalDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 24) mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)confirmEventFromExternalDevice:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSuggestHistory *)self kvs];
  v6 = [SGSuggestHistory newTestingInstanceWithSharedKVS:v5];

  v7 = [v4 opaqueKey];
  v8 = [v4 creationDate];
  [v8 timeIntervalSince1970];
  v9 = [v6 confirmHashesForOpaqueKey:v7 withCreationTime:0 forMatching:?];

  v10 = [v4 opaqueKey];
  v11 = [v6 confirmHashesForOpaqueKeyWithoutTimestamp:v10 forMatching:0];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8313;
  v27 = __Block_byref_object_dispose__8314;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8313;
  v21 = __Block_byref_object_dispose__8314;
  v22 = 0;
  lock = self->_lock;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SGSuggestHistory_confirmEventFromExternalDevice___block_invoke;
  v16[3] = &unk_27894C7B0;
  v16[4] = &v23;
  v16[5] = &v17;
  [(_PASLock *)lock runWithLockAcquired:v16];
  [v24[5] addObjectsFromArray:v9];
  [v18[5] addObjectsFromArray:v11];
  [(SGSuggestHistory *)self _setHashes:v24[5] forKey:@"events"];
  [(SGSuggestHistory *)self _setHashes:v18[5] forKey:@"eventsWithoutTimestamp"];
  v29 = *MEMORY[0x277CCA7B0];
  v30[0] = &unk_284749308;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v14 = [MEMORY[0x277CCAB88] notificationWithName:@"new data" object:self userInfo:v13];
  [(SGSuggestHistory *)self handleSyncedDataChanged:v14];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SGSuggestHistory_confirmEventFromExternalDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = v4[2];
  v9 = [v8 mutableCopy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8](v9, v11);
}

- (void)addSuggestHistoryObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:1630 description:{@"Invalid parameter not satisfying: %@", @"suggestHistoryObserver"}];
  }

  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SGSuggestHistory_addSuggestHistoryObserver___block_invoke;
  v9[3] = &unk_27894C6E8;
  v10 = v5;
  v7 = v5;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

- (BOOL)isValidSuggestion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 state] == 1)
    {
      v6 = [v5 contact];
      v7 = [(SGSuggestHistory *)self hasContact:v6];
LABEL_4:
      v8 = !v7;
LABEL_19:

      goto LABEL_20;
    }

    if ([v5 state] == 2)
    {
      v6 = [v5 contact];
      v10 = [(SGSuggestHistory *)self isUpdatableContact:v6];
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v9 = [v5 state];
    switch(v9)
    {
      case 3:
        v6 = [v5 event];
        v10 = [(SGSuggestHistory *)self isValidCancelledEvent:v6];
        goto LABEL_18;
      case 2:
        v6 = [v5 event];
        v7 = [(SGSuggestHistory *)self isRejectedEvent:v6];
        goto LABEL_4;
      case 1:
        v6 = [v5 event];
        v10 = [(SGSuggestHistory *)self isValidNewEvent:v6];
LABEL_18:
        v8 = v10;
        goto LABEL_19;
    }

LABEL_15:
    v8 = 1;
LABEL_20:

    goto LABEL_21;
  }

  v11 = sgLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 138412290;
    v16 = objc_opt_class();
    v14 = v16;
    _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "Argument must be of type SGRealtimeContact or SGRealtimeEvent, but was %@", &v15, 0xCu);
  }

  v8 = 1;
LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isRejectedReminder:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SGSuggestHistory_isRejectedReminder___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __39__SGSuggestHistory_isRejectedReminder___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v8 = [v4 opaqueKey];
  v6 = [v3 rejectHashesForOpaqueKey:v8 forMatching:1];
  v7 = v5[5];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v6 inSet:v7];
}

- (BOOL)isConfirmedReminder:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SGSuggestHistory_isConfirmedReminder___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __40__SGSuggestHistory_isConfirmedReminder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v4 opaqueKey];
  v6 = [*(a1 + 40) creationDate];
  [v6 timeIntervalSince1970];
  v7 = [v3 confirmHashesForRemindersOpaqueKey:v9 withCreationTime:1 forMatching:?];
  v8 = v5[4];

  *(*(*(a1 + 48) + 8) + 24) = [v3 _anyHash:v7 inSet:v8];
}

- (BOOL)isValidNewReminder:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SGSuggestHistory_isValidNewReminder___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __39__SGSuggestHistory_isValidNewReminder___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isConfirmedReminder:*(a1 + 40)];
  if (result)
  {
    v3 = 0;
  }

  else
  {
    result = [*(a1 + 32) isRejectedReminder:*(a1 + 40)];
    v3 = result ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (void)removeConfirmationHistoryForEntityWithOpaqueKey:(id)a3 creationTimestamp:(SGUnixTimestamp_)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SGSuggestHistory_removeConfirmationHistoryForEntityWithOpaqueKey_creationTimestamp___block_invoke;
  v9[3] = &unk_27894C9B0;
  v9[4] = self;
  v10 = v6;
  secondsFromUnixEpoch = a4.secondsFromUnixEpoch;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __86__SGSuggestHistory_removeConfirmationHistoryForEntityWithOpaqueKey_creationTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) rejectHashesForOpaqueKey:*(a1 + 40) forMatching:1];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        if ([v3[3] containsObject:v10])
        {
          v11 = [*(a1 + 32) _canaryHash];
          v12 = [v10 isEqual:v11];

          if ((v12 & 1) == 0)
          {
            [v3[3] removeObject:v10];
            v7 = 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v6);
    if (v7)
    {
      [*(a1 + 32) pushRejectedEvents:v3];
    }
  }

  v33 = v4;
  v13 = [*(a1 + 32) confirmHashesForOpaqueKey:*(a1 + 40) withCreationTime:1 forMatching:*(a1 + 48)];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v39;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        if ([v3[1] containsObject:v19])
        {
          v20 = [*(a1 + 32) _canaryHash];
          v21 = [v19 isEqual:v20];

          if ((v21 & 1) == 0)
          {
            [v3[1] removeObject:v19];
            v16 = 1;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v15);
    if (v16)
    {
      [*(a1 + 32) pushConfirmedEvents:v3];
    }
  }

  v22 = [*(a1 + 32) confirmHashesForOpaqueKeyWithoutTimestamp:*(a1 + 40) forMatching:1];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v32 = v13;
    v25 = 0;
    v26 = *v35;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v34 + 1) + 8 * k);
        if ([v3[2] containsObject:{v28, v32}])
        {
          v29 = [*(a1 + 32) _canaryHash];
          v30 = [v28 isEqual:v29];

          if ((v30 & 1) == 0)
          {
            [v3[2] removeObject:v28];
            v25 = 1;
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
    v13 = v32;
    if (v25)
    {
      [*(a1 + 32) pushConfirmedEventsWithoutTimestamp:v3];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)removeConfirmationHistoryForEvent:(id)a3
{
  v4 = a3;
  v6 = [v4 opaqueKey];
  v5 = [v4 creationDate];

  [v5 timeIntervalSince1970];
  [(SGSuggestHistory *)self removeConfirmationHistoryForEntityWithOpaqueKey:v6 creationTimestamp:?];
}

- (BOOL)isRejectedEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SGSuggestHistory_isRejectedEvent___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __36__SGSuggestHistory_isRejectedEvent___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v8 = [v4 opaqueKey];
  v6 = [v3 rejectHashesForOpaqueKey:v8 forMatching:1];
  v7 = v5[3];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v6 inSet:v7];
}

- (BOOL)isConfirmedEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SGSuggestHistory_isConfirmedEvent___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __37__SGSuggestHistory_isConfirmedEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v9 = [v4 opaqueKey];
  v6 = [*(a1 + 40) creationDate];
  [v6 timeIntervalSince1970];
  v7 = [v3 confirmHashesForOpaqueKey:v9 withCreationTime:1 forMatching:?];
  v8 = v5[1];

  *(*(*(a1 + 48) + 8) + 24) = [v3 _anyHash:v7 inSet:v8];
}

- (BOOL)isConfirmedEventWithoutTimeStamp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SGSuggestHistory_isConfirmedEventWithoutTimeStamp___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __53__SGSuggestHistory_isConfirmedEventWithoutTimeStamp___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v8 = [v4 opaqueKey];
  v6 = [v3 confirmHashesForOpaqueKeyWithoutTimestamp:v8 forMatching:1];
  v7 = v5[2];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v6 inSet:v7];
}

- (BOOL)isUpdatableContact:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SGSuggestHistory_isUpdatableContact___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __39__SGSuggestHistory_isUpdatableContact___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v7 = [v3 hashesForContact:v4 forMatching:1];
  v6 = v5[10];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v7 inSet:v6] ^ 1;
}

- (BOOL)isValidCancelledEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SGSuggestHistory_isValidCancelledEvent___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __42__SGSuggestHistory_isValidCancelledEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isConfirmedEvent:*(a1 + 40)];
  if (result)
  {
    v3 = 0;
  }

  else
  {
    result = [*(a1 + 32) isRejectedEvent:*(a1 + 40)];
    v3 = result ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (BOOL)isValidNewEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SGSuggestHistory_isValidNewEvent___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __36__SGSuggestHistory_isValidNewEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isConfirmedEvent:*(a1 + 40)];
  if (result & 1) != 0 || (result = [*(a1 + 32) isConfirmedEventWithoutTimeStamp:*(a1 + 40)], (result))
  {
    v3 = 0;
  }

  else
  {
    result = [*(a1 + 32) isRejectedEvent:*(a1 + 40)];
    v3 = result ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (BOOL)hasStorageContact:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SGSuggestHistory_hasStorageContact___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __38__SGSuggestHistory_hasStorageContact___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v7 = [v3 hashesForStorageContact:v4 forMatching:1];
  v6 = v5[6];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v7 inSet:v6];
}

- (BOOL)hasContact:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SGSuggestHistory_hasContact___block_invoke;
  v8[3] = &unk_27894C988;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

void __31__SGSuggestHistory_hasContact___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v7 = [v3 hashesForContact:v4 forMatching:1];
  v6 = v5[6];

  *(*(a1[6] + 8) + 24) = [v3 _anyHash:v7 inSet:v6];
}

- (BOOL)_anyHash:(id)a3 inSet:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v7 containsObject:{v13, v19}])
        {
          v14 = [(SGSuggestHistory *)self _canaryHash];
          v15 = [v13 isEqual:v14];

          if (!v15)
          {
            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)rejectReminderFromExternalDevice:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSuggestHistory *)self kvs];
  v6 = [SGSuggestHistory newTestingInstanceWithSharedKVS:v5];

  v7 = [v4 opaqueKey];
  v8 = [v6 rejectHashesForOpaqueKey:v7 forMatching:0];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8313;
  v18 = __Block_byref_object_dispose__8314;
  v19 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SGSuggestHistory_rejectReminderFromExternalDevice___block_invoke;
  v13[3] = &unk_27894C710;
  v13[4] = &v14;
  [(_PASLock *)lock runWithLockAcquired:v13];
  [v15[5] addObjectsFromArray:v8];
  [(SGSuggestHistory *)self _setHashes:v15[5] forKey:@"rejectedReminders"];
  v20 = *MEMORY[0x277CCA7B0];
  v21[0] = &unk_284749308;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"new data" object:self userInfo:v10];
  [(SGSuggestHistory *)self handleSyncedDataChanged:v11];

  _Block_object_dispose(&v14, 8);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SGSuggestHistory_rejectReminderFromExternalDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 40) mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)confirmReminderFromExternalDevice:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SGSuggestHistory *)self kvs];
  v6 = [SGSuggestHistory newTestingInstanceWithSharedKVS:v5];

  v7 = [v4 opaqueKey];
  v8 = [v4 creationDate];
  [v8 timeIntervalSince1970];
  v9 = [v6 confirmHashesForRemindersOpaqueKey:v7 withCreationTime:0 forMatching:?];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8313;
  v19 = __Block_byref_object_dispose__8314;
  v20 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SGSuggestHistory_confirmReminderFromExternalDevice___block_invoke;
  v14[3] = &unk_27894C710;
  v14[4] = &v15;
  [(_PASLock *)lock runWithLockAcquired:v14];
  [v16[5] addObjectsFromArray:v9];
  [(SGSuggestHistory *)self _setHashes:v16[5] forKey:@"reminders"];
  v21 = *MEMORY[0x277CCA7B0];
  v22[0] = &unk_284749308;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v12 = [MEMORY[0x277CCAB88] notificationWithName:@"new data" object:self userInfo:v11];
  [(SGSuggestHistory *)self handleSyncedDataChanged:v12];

  _Block_object_dispose(&v15, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SGSuggestHistory_confirmReminderFromExternalDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)writeAndPushRejectedReminderHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SGSuggestHistory_writeAndPushRejectedReminderHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __55__SGSuggestHistory_writeAndPushRejectedReminderHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[5];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushRejectedReminders:v5];
}

- (void)rejectReminder:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 opaqueKey];
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Rejecting reminder with opaqueKey %@", &v10, 0xCu);
  }

  v6 = [v4 opaqueKey];
  v7 = [(SGSuggestHistory *)self rejectHashesForOpaqueKey:v6 forMatching:0];
  [(SGSuggestHistory *)self writeAndPushRejectedReminderHashes:v7];

  [SGDNotificationBroadcaster emitReminderUpdated:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeAndPushConfirmedReminderHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SGSuggestHistory_writeAndPushConfirmedReminderHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __56__SGSuggestHistory_writeAndPushConfirmedReminderHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushConfirmedReminders:v5];
}

- (void)confirmReminder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v4 opaqueKey];
    v12 = 138412290;
    v13 = v11;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Confirming reminder with opaqueKey %@", &v12, 0xCu);
  }

  v6 = [v4 opaqueKey];
  v7 = [v4 creationDate];
  [v7 timeIntervalSince1970];
  v8 = [(SGSuggestHistory *)self confirmHashesForRemindersOpaqueKey:v6 withCreationTime:0 forMatching:?];
  [(SGSuggestHistory *)self writeAndPushConfirmedReminderHashes:v8];

  v9 = [v4 recordId];
  [SGDNotificationBroadcaster emitReminderUpdated:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)writeAndPushRejectedEventHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SGSuggestHistory_writeAndPushRejectedEventHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __52__SGSuggestHistory_writeAndPushRejectedEventHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushRejectedEvents:v5];
}

- (void)rejectStorageEvent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Rejecting storage event %@", &v9, 0xCu);
  }

  v6 = [v4 opaqueKey];
  v7 = [(SGSuggestHistory *)self rejectHashesForOpaqueKey:v6 forMatching:0];
  [(SGSuggestHistory *)self writeAndPushRejectedEventHashes:v7];

  [SGDNotificationBroadcaster emitEventUpdated:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)rejectEvent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Rejecting event %@", &v9, 0xCu);
  }

  v6 = [v4 opaqueKey];
  v7 = [(SGSuggestHistory *)self rejectHashesForOpaqueKey:v6 forMatching:0];
  [(SGSuggestHistory *)self writeAndPushRejectedEventHashes:v7];

  [SGDNotificationBroadcaster emitEventUpdated:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeAndPushConfirmedEventWithoutTimestampHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SGSuggestHistory_writeAndPushConfirmedEventWithoutTimestampHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __69__SGSuggestHistory_writeAndPushConfirmedEventWithoutTimestampHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushConfirmedEventsWithoutTimestamp:v5];
}

- (void)writeAndPushConfirmedEventHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SGSuggestHistory_writeAndPushConfirmedEventHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __53__SGSuggestHistory_writeAndPushConfirmedEventHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushConfirmedEvents:v5];
}

- (void)confirmStorageEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Confirming storage event %@", &v12, 0xCu);
  }

  v6 = [v4 opaqueKey];
  [v4 creationTimestamp];
  v7 = [(SGSuggestHistory *)self confirmHashesForOpaqueKey:v6 withCreationTime:0 forMatching:?];
  [(SGSuggestHistory *)self writeAndPushConfirmedEventHashes:v7];

  v8 = [v4 opaqueKey];
  v9 = [(SGSuggestHistory *)self confirmHashesForOpaqueKeyWithoutTimestamp:v8 forMatching:0];
  [(SGSuggestHistory *)self writeAndPushConfirmedEventWithoutTimestampHashes:v9];

  v10 = [v4 recordId];
  [SGDNotificationBroadcaster emitEventUpdated:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)confirmEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Confirming event %@", &v13, 0xCu);
  }

  v6 = [v4 opaqueKey];
  v7 = [v4 creationDate];
  [v7 timeIntervalSince1970];
  v8 = [(SGSuggestHistory *)self confirmHashesForOpaqueKey:v6 withCreationTime:0 forMatching:?];
  [(SGSuggestHistory *)self writeAndPushConfirmedEventHashes:v8];

  v9 = [v4 opaqueKey];
  v10 = [(SGSuggestHistory *)self confirmHashesForOpaqueKeyWithoutTimestamp:v9 forMatching:0];
  [(SGSuggestHistory *)self writeAndPushConfirmedEventWithoutTimestampHashes:v10];

  v11 = [v4 recordId];
  [SGDNotificationBroadcaster emitEventUpdated:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)rejectContact:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Rejecting contact %@", buf, 0xCu);
  }

  lock = self->_lock;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __34__SGSuggestHistory_rejectContact___block_invoke;
  v12 = &unk_27894C960;
  v13 = self;
  v14 = v4;
  v7 = v4;
  [(_PASLock *)lock runWithLockAcquired:&v9];
  [SGDNotificationBroadcaster emitContactUpdated:0, v9, v10, v11, v12, v13];

  v8 = *MEMORY[0x277D85DE8];
}

void __34__SGSuggestHistory_rejectContact___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = [*(a1 + 32) hashesForContact:*(a1 + 40) forMatching:0];
  [v2 addObjectsFromArray:v3];
}

- (void)rejectRealtimeContact:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Rejecting contact %@", buf, 0xCu);
  }

  lock = self->_lock;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42__SGSuggestHistory_rejectRealtimeContact___block_invoke;
  v12 = &unk_27894C960;
  v13 = v4;
  v14 = self;
  v7 = v4;
  [(_PASLock *)lock runWithLockAcquired:&v9];
  [SGDNotificationBroadcaster emitContactUpdated:0, v9, v10, v11, v12];

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SGSuggestHistory_rejectRealtimeContact___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) state] == 1)
  {
    v4 = v3[6];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) contact];
    v7 = [v5 hashesForContact:v6 forMatching:0];
    [v4 addObjectsFromArray:v7];

    [*(a1 + 40) pushContacts:v3];
  }

  else if ([*(a1 + 32) state] == 2)
  {
    v8 = v3[10];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) contact];
    v11 = [v9 hashesForContact:v10 forMatching:0];
    [v8 addObjectsFromArray:v11];

    [*(a1 + 40) pushDontUpdate:v3];
  }

  else
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) state];
      v15[0] = 67109120;
      v15[1] = v14;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "Don't know how to deal with this realtime contact state (state = %i)", v15, 8u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)rejectContactDetailKey:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 serialize];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(SGSuggestHistory *)self hashesForStrings:v5 forMatching:0];
  [(SGSuggestHistory *)self confirmOrRejectDetailHashes:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)confirmOrRejectRecordForContact:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Confirming or rejecting contact %@", buf, 0xCu);
  }

  lock = self->_lock;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __52__SGSuggestHistory_confirmOrRejectRecordForContact___block_invoke;
  v13 = &unk_27894C960;
  v14 = self;
  v15 = v4;
  v7 = v4;
  [(_PASLock *)lock runWithLockAcquired:&v10];
  v8 = [v7 recordId];
  [SGDNotificationBroadcaster emitContactUpdated:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __52__SGSuggestHistory_confirmOrRejectRecordForContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[6];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  v6 = [v4 hashesForStorageContact:v5 forMatching:0];
  [v3 addObjectsFromArray:v6];

  [*(a1 + 32) pushContacts:v7];
}

- (void)confirmOrRejectDetail:(id)a3 forContact:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "Confirming or rejecting record for contact %@", &v12, 0xCu);
  }

  v9 = [(SGSuggestHistory *)self hashesForContactDetail:v7 fromContact:v6 forMatching:0];

  [(SGSuggestHistory *)self confirmOrRejectDetailHashes:v9];
  v10 = [v6 recordId];
  [SGDNotificationBroadcaster emitContactUpdated:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)confirmOrRejectDetailHashes:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SGSuggestHistory_confirmOrRejectDetailHashes___block_invoke;
  v7[3] = &unk_27894C960;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __48__SGSuggestHistory_confirmOrRejectDetailHashes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[9];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObjectsFromArray:v4];
  [*(a1 + 40) pushStorageDetails:v5];
}

- (void)handleSyncedDataChanged:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__8313;
  v75 = __Block_byref_object_dispose__8314;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__8313;
  v69 = __Block_byref_object_dispose__8314;
  v70 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__8313;
  v63[4] = __Block_byref_object_dispose__8314;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__8313;
  v61 = __Block_byref_object_dispose__8314;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__8313;
  v55 = __Block_byref_object_dispose__8314;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__8313;
  v49 = __Block_byref_object_dispose__8314;
  v50 = 0;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7B0]];
  v7 = [v6 unsignedIntegerValue];

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v82 = v7;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "Suggestions history synced data change, reason=%i", buf, 8u);
  }

  lock = self->_lock;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __44__SGSuggestHistory_handleSyncedDataChanged___block_invoke;
  v44[3] = &unk_27894C938;
  v44[4] = self;
  v44[5] = &v71;
  v44[6] = &v65;
  v44[7] = v63;
  v44[8] = &v57;
  v44[9] = &v51;
  v44[10] = &v45;
  v44[11] = v7;
  [(_PASLock *)lock runWithLockAcquired:v44];
  if (v66[5])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v72[5];
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v80 count:16];
    if (v11)
    {
      v12 = *v41;
      do
      {
        v13 = 0;
        do
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v40 + 1) + 8 * v13++) processNewConfirmOrRejectEventHashes:v66[5]];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v80 count:16];
      }

      while (v11);
    }
  }

  if (v58[5])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = v72[5];
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v79 count:16];
    if (v15)
    {
      v16 = *v37;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v36 + 1) + 8 * v17++) processNewConfirmOrRejectEventHashes:v58[5]];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v79 count:16];
      }

      while (v15);
    }
  }

  if (v52[5])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v72[5];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v78 count:16];
    if (v19)
    {
      v20 = *v33;
      do
      {
        v21 = 0;
        do
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v32 + 1) + 8 * v21++) processNewConfirmedOrRejectedReminderHashes:v52[5]];
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v32 objects:v78 count:16];
      }

      while (v19);
    }
  }

  if (v46[5])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v72[5];
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v77 count:16];
    if (v23)
    {
      v24 = *v29;
      do
      {
        v25 = 0;
        do
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v28 + 1) + 8 * v25++) processNewConfirmedOrRejectedReminderHashes:{v46[5], v28}];
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v28 objects:v77 count:16];
      }

      while (v23);
    }
  }

  if (v7 == 3)
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory calling migrateIfNeeded due to NSUbiquitousKeyValueStoreAccountChange", buf, 2u);
    }

    [(SGSuggestHistory *)self migrateIfNeeded];
  }

  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __44__SGSuggestHistory_handleSyncedDataChanged___block_invoke(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(v3 + 13);
  *(v3 + 13) = 0;

  v5 = *(v3 + 14);
  *(v3 + 14) = 0;

  v6 = [*(v3 + 12) copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 88);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "Exceeded iCloud key value storage quota. Can't store any more acted on suggestions.", buf, 2u);
      }

      goto LABEL_62;
    }

    if (v9 == 3)
    {
      [*(a1 + 32) _setInternalStateAccordingToKVS:v3];
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_10;
      }

LABEL_62:
    }
  }

  else
  {
    if (!v9)
    {
      v10 = [*(a1 + 32) loadResetInfo];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = [v11 unsignedLongValue];

      v13 = [*(v3 + 11) objectAtIndexedSubscript:0];
      v14 = [v13 unsignedLongValue];

      if (v12 > v14)
      {
        v15 = [v10 objectAtIndexedSubscript:1];
        [v15 doubleValue];
        v17 = v16;

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v19 = vabdd_f64(v18, v17);
        v20 = sgLogHandle();
        v21 = v20;
        if (v19 < 900.0)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v79 = 0x408C200000000000;
            _os_log_impl(&dword_231E60000, v21, OS_LOG_TYPE_INFO, "Resetting history due to a KVS reset event within %g sec time window.", buf, 0xCu);
          }

          [*(a1 + 32) _setInternalStateAccordingToKVS:v3];
          goto LABEL_62;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, "Suppressing KVS history reset because time window has expired.", buf, 2u);
        }

        objc_storeStrong(v3 + 11, v10);
      }

      v10 = [*(a1 + 32) setForKey:@"events"];
      if (([v10 isEqualToSet:*(v3 + 1)]& 1) == 0)
      {
        v22 = [v10 mutableCopy];
        v23 = *(*(a1 + 48) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        [*(*(*(a1 + 48) + 8) + 40) minusSet:*(v3 + 1)];
        v25 = sgEventsLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v10 count];
          v27 = [*(*(*(a1 + 48) + 8) + 40) count];
          *buf = 134349312;
          v79 = v26;
          v80 = 2050;
          v81 = v27;
          _os_log_impl(&dword_231E60000, v25, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated confirmed event hashes (%{public}lu total, %{public}lu new)", buf, 0x16u);
        }

        [*(v3 + 1) unionSet:v10];
        [*(a1 + 32) pushConfirmedEvents:v3];
      }

      v28 = [*(a1 + 32) setForKey:@"eventsWithoutTimestamp"];
      if (([v28 isEqualToSet:*(v3 + 2)] & 1) == 0)
      {
        v29 = [v28 mutableCopy];
        v30 = *(*(a1 + 56) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        [*(*(*(a1 + 56) + 8) + 40) minusSet:*(v3 + 2)];
        v32 = sgEventsLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v28 count];
          v34 = [*(*(*(a1 + 56) + 8) + 40) count];
          *buf = 134349312;
          v79 = v33;
          v80 = 2050;
          v81 = v34;
          _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated confirmed event hashes (%{public}lu total, %{public}lu new)", buf, 0x16u);
        }

        [*(v3 + 2) unionSet:v28];
        [*(a1 + 32) pushConfirmedEventsWithoutTimestamp:v3];
      }

      v35 = [*(a1 + 32) setForKey:@"rejectedEvents"];
      if (([v35 isEqualToSet:*(v3 + 3)] & 1) == 0)
      {
        v36 = [v35 mutableCopy];
        v37 = *(*(a1 + 64) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v36;

        [*(*(*(a1 + 64) + 8) + 40) minusSet:*(v3 + 3)];
        v39 = sgEventsLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v35 count];
          v41 = [*(*(*(a1 + 64) + 8) + 40) count];
          *buf = 134349312;
          v79 = v40;
          v80 = 2050;
          v81 = v41;
          _os_log_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated rejected event hashes (%{public}lu total, %{public}lu new)", buf, 0x16u);
        }

        [*(v3 + 3) unionSet:v35];
        [*(a1 + 32) pushRejectedEvents:v3];
      }

      v42 = [*(a1 + 32) setForKey:@"confirmedEventFields"];
      if (([v42 isEqualToSet:*(v3 + 7)] & 1) == 0)
      {
        v43 = sgEventsLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v42 count];
          *buf = 134349056;
          v79 = v44;
          _os_log_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated confirmed event field hashes (%{public}lu total)", buf, 0xCu);
        }

        [*(v3 + 7) unionSet:v42];
        [*(a1 + 32) pushConfirmedEventFields:v3];
      }

      v45 = [*(a1 + 32) setForKey:@"confirmedEventWithoutTimestampFields"];
      if (([v45 isEqualToSet:*(v3 + 8)] & 1) == 0)
      {
        v46 = sgEventsLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v45 count];
          *buf = 134349056;
          v79 = v47;
          _os_log_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated confirmed event field without timestamp hashes (%{public}lu total)", buf, 0xCu);
        }

        [*(v3 + 8) unionSet:v45];
        [*(a1 + 32) pushConfirmedEventWithoutTimestampFields:v3];
      }

      v48 = [*(a1 + 32) setForKey:@"reminders"];
      if (([v48 isEqualToSet:*(v3 + 4)] & 1) == 0)
      {
        v49 = [v48 mutableCopy];
        v50 = *(*(a1 + 72) + 8);
        v51 = *(v50 + 40);
        *(v50 + 40) = v49;

        [*(*(*(a1 + 72) + 8) + 40) minusSet:*(v3 + 4)];
        v52 = sgRemindersLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [v48 count];
          v54 = [*(*(*(a1 + 72) + 8) + 40) count];
          *buf = 134349312;
          v79 = v53;
          v80 = 2050;
          v81 = v54;
          _os_log_impl(&dword_231E60000, v52, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated confirmed reminder hashes (%{public}lu total, %{public}lu new)", buf, 0x16u);
        }

        [*(v3 + 4) unionSet:v48];
        [*(a1 + 32) pushConfirmedReminders:v3];
      }

      v55 = [*(a1 + 32) setForKey:@"rejectedReminders"];
      v77 = v55;
      if (([v55 isEqualToSet:*(v3 + 5)] & 1) == 0)
      {
        v56 = [v55 mutableCopy];
        v57 = *(*(a1 + 80) + 8);
        v58 = *(v57 + 40);
        *(v57 + 40) = v56;

        [*(*(*(a1 + 80) + 8) + 40) minusSet:*(v3 + 5)];
        v59 = sgRemindersLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [v55 count];
          v61 = [*(*(*(a1 + 80) + 8) + 40) count];
          *buf = 134349312;
          v79 = v60;
          v55 = v77;
          v80 = 2048;
          v81 = v61;
          _os_log_impl(&dword_231E60000, v59, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory - Receive updated rejected reminder hashes (%{public}lu total %lu new)", buf, 0x16u);
        }

        [*(v3 + 5) unionSet:v55];
        [*(a1 + 32) pushRejectedReminders:v3];
      }

      v76 = v48;
      v62 = [*(a1 + 32) setForKey:@"newContacts"];
      if (([v62 isEqualToSet:*(v3 + 6)] & 1) == 0)
      {
        v63 = sgLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v72 = [v62 count];
          *buf = 134217984;
          v79 = v72;
          _os_log_debug_impl(&dword_231E60000, v63, OS_LOG_TYPE_DEBUG, "Receive updated contact hashes (%lu total)", buf, 0xCu);
        }

        [*(v3 + 6) unionSet:v62];
        [*(a1 + 32) pushContacts:v3];
      }

      v64 = [*(a1 + 32) setForKey:@"storageDetails"];
      if (([v64 isEqualToSet:*(v3 + 9)] & 1) == 0)
      {
        v65 = sgLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v73 = [v64 count];
          *buf = 134217984;
          v79 = v73;
          _os_log_debug_impl(&dword_231E60000, v65, OS_LOG_TYPE_DEBUG, "Receive updated storage detail hashes (%lu total)", buf, 0xCu);
        }

        [*(v3 + 9) unionSet:v64];
        [*(a1 + 32) pushStorageDetails:v3];
      }

      v66 = [*(a1 + 32) setForKey:@"dontUpdate"];
      if (([v66 isEqualToSet:*(v3 + 10)] & 1) == 0)
      {
        v75 = v45;
        v67 = v42;
        v68 = v35;
        v69 = v28;
        v70 = sgLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v74 = [v66 count];
          *buf = 134217984;
          v79 = v74;
          _os_log_debug_impl(&dword_231E60000, v70, OS_LOG_TYPE_DEBUG, "Receive updated don't-update hashes (%lu total)", buf, 0xCu);
        }

        [*(v3 + 10) unionSet:v66];
        [*(a1 + 32) pushDontUpdate:v3];
        v28 = v69;
        v35 = v68;
        v42 = v67;
        v45 = v75;
      }

      goto LABEL_62;
    }

    if (v9 == 1)
    {
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
LABEL_10:
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "KVS account change", buf, 2u);
        goto LABEL_62;
      }

      goto LABEL_62;
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  [(SGSuggestHistory *)self resetNoFlush];
  backingKVStore = self->_backingKVStore;

  [(NSUbiquitousKeyValueStore *)backingKVStore synchronize];
}

- (void)resetNoFlush
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Resetting suggestions history", buf, 2u);
  }

  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__SGSuggestHistory_resetNoFlush__block_invoke;
  v5[3] = &unk_27894C6E8;
  v5[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v5];
}

void __32__SGSuggestHistory_resetNoFlush__block_invoke(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = a2[13];
  a2[13] = 0;
  v4 = a2;

  v5 = v4[14];
  v4[14] = 0;

  v6 = objc_opt_new();
  v7 = v4[6];
  v4[6] = v6;

  v8 = objc_opt_new();
  v9 = v4[9];
  v4[9] = v8;

  v10 = objc_opt_new();
  v11 = v4[1];
  v4[1] = v10;

  v12 = objc_opt_new();
  v13 = v4[2];
  v4[2] = v12;

  v14 = objc_opt_new();
  v15 = v4[3];
  v4[3] = v14;

  v16 = objc_opt_new();
  v17 = v4[7];
  v4[7] = v16;

  v18 = objc_opt_new();
  v19 = v4[8];
  v4[8] = v18;

  v20 = objc_opt_new();
  v21 = v4[4];
  v4[4] = v20;

  v22 = objc_opt_new();
  v23 = v4[5];
  v4[5] = v22;

  v24 = objc_opt_new();
  v25 = v4[10];
  v4[10] = v24;

  v26 = MEMORY[0x277CCABB0];
  v27 = [v4[11] objectAtIndexedSubscript:0];
  v28 = [v26 numberWithUnsignedLong:{objc_msgSend(v27, "unsignedLongValue") + 1}];
  v34[0] = v28;
  v29 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v30 = [v29 numberWithDouble:?];
  v34[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v32 = v4[11];
  v4[11] = v31;

  [*(a1 + 32) pushAll:v4];
  v33 = *MEMORY[0x277D85DE8];
}

- (id)identityBasedHashesForPseudoReminder:(id)a3 withCreationTime:(SGUnixTimestamp_)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v8 = [v7 serialize];
  v9 = [(SGSuggestHistory *)self confirmHashesForRemindersOpaqueKey:v8 withCreationTime:1 forMatching:a4.secondsFromUnixEpoch];

  v10 = [v7 serialize];
  v11 = [(SGSuggestHistory *)self rejectHashesForOpaqueKey:v10 forMatching:1];

  v12 = objc_autoreleasePoolPush();
  v13 = [v9 arrayByAddingObjectsFromArray:v11];
  objc_autoreleasePoolPop(v12);

  return v13;
}

- (id)identityBasedHashesForPseudoEvent:(id)a3 withCreationTime:(SGUnixTimestamp_)a4
{
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:947 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v8 = [v7 serialize];
  v9 = [(SGSuggestHistory *)self confirmHashesForOpaqueKey:v8 withCreationTime:1 forMatching:a4.secondsFromUnixEpoch];

  v10 = [v7 serialize];
  v11 = [(SGSuggestHistory *)self rejectHashesForOpaqueKey:v10 forMatching:1];

  v12 = objc_autoreleasePoolPush();
  v13 = [v9 arrayByAddingObjectsFromArray:v11];
  objc_autoreleasePoolPop(v12);

  return v13;
}

- (id)hashesByAddingCompatibilityHashesToHashes:(id)a3 forMatching:(BOOL)a4
{
  v4 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [(SGSuggestHistory *)self legacyIOS13HashesForClassicHashes:v6];
    v9 = v8;
    v10 = MEMORY[0x277CBEBF8];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = objc_autoreleasePoolPush();
    v13 = [(SGSuggestHistory *)self _canaryHash];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v15 = [v14 arrayByAddingObjectsFromArray:v7];
    v16 = [v15 arrayByAddingObjectsFromArray:v11];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [v6 copy];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)legacyIOS13HashesForClassicHashes:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestHistory *)self legacyManateeSecret];
  v6 = [v5 length];
  v7 = sgLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK will use legacy manatee hashes", buf, 2u);
    }

    if (legacyIOS13HashesForClassicHashes___pasOnceToken66 != -1)
    {
      dispatch_once(&legacyIOS13HashesForClassicHashes___pasOnceToken66, &__block_literal_global_177_8382);
    }

    v11 = legacyIOS13HashesForClassicHashes___pasExprOnceResult;
    v12 = v5;
    v7 = v11;
    v9 = sgMap();
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGCK legacy Manatee salt not supported", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __54__SGSuggestHistory_legacyIOS13HashesForClassicHashes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  if (v4 == [*(a1 + 32) length] + 32 && !memcmp(objc_msgSend(*(a1 + 32), "bytes"), objc_msgSend(v3, "bytes"), objc_msgSend(*(a1 + 32), "length")))
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_231E60000, v8, OS_LOG_TYPE_FAULT, "SGCK legacyIOS13HashesForClassicHashes was passed a hash that is already a ios13 hash", v9, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) mutableCopy];
    v6 = SGSha256HMACData(v3, *(a1 + 40));
    [v5 appendData:v6];
  }

  return v5;
}

void __54__SGSuggestHistory_legacyIOS13HashesForClassicHashes___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [@"v2_" dataUsingEncoding:4];
  v2 = legacyIOS13HashesForClassicHashes___pasExprOnceResult;
  legacyIOS13HashesForClassicHashes___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_canaryHash
{
  if (_canaryHash__pasOnceToken63 != -1)
  {
    dispatch_once(&_canaryHash__pasOnceToken63, &__block_literal_global_172);
  }

  v3 = _canaryHash__pasExprOnceResult;

  return v3;
}

void __31__SGSuggestHistory__canaryHash__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];
  v4 = [v1 initWithFormat:@"canary_%@", v3];
  v5 = [v4 dataUsingEncoding:4];
  v6 = _canaryHash__pasExprOnceResult;
  _canaryHash__pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

- (id)keysForCuratedContactDetail:(id)a3 ofContact:(id)a4
{
  v5 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBDA78] stringFromContact:v6 style:0];
  v10 = v9;
  if (v9)
  {
    v11 = SGNormalizeName(v9);
    [v8 addObject:v11];
  }

  v12 = [v6 emailAddresses];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v6 emailAddresses];
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = [v15 value];
    v17 = SGNormalizeEmailAddress();
    [v8 addObject:v17];
  }

  v18 = SGDelimitedStringsSerializeArray();
  v19 = [v5 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = [v5 value];
    v22 = SGNormalizeEmailAddress();
    v23 = [v22 stringByAppendingString:v18];
    [v7 addObject:v23];
  }

  v24 = [v5 value];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    v26 = [v5 value];
    v27 = [v26 stringValue];
    v28 = SGNormalizePhoneNumber();
    v29 = [v28 stringByAppendingString:v18];
    [v7 addObject:v29];
  }

  v30 = [v5 value];
  objc_opt_class();
  v31 = objc_opt_isKindOfClass();

  if (v31)
  {
    v32 = [v5 value];
    v33 = SGNormalizeCNAddress(v32);
    v34 = [v33 stringByAppendingString:v18];
    [v7 addObject:v34];
  }

  objc_autoreleasePoolPop(context);

  return v7;
}

- (id)keysForContactDetail:(id)a3 ofContact:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v6 name];

  if (v9)
  {
    v10 = [v6 name];
    v11 = [v10 fullName];
    v12 = SGNormalizeName(v11);
    [v8 addObject:v12];
  }

  v13 = [v6 emailAddresses];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v6 emailAddresses];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 emailAddress];
    v18 = SGNormalizeEmailAddress();
    [v8 addObject:v18];
  }

  v19 = SGDelimitedStringsSerializeArray();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v8;
    v44 = v6;
    v42 = v5;
    v20 = [[SGSocialProfileDetails alloc] initWithSocialProfile:v42];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = [(SGSocialProfileDetails *)v20 uniqueIdentifiers];
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          SGNormalizeSocialProfile(v26);
          v27 = [objc_claimAutoreleasedReturnValue() stringByAppendingString:v19];
          [v7 addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v23);
    }

    v8 = v43;
    v6 = v44;
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = [v5 emailAddress];
    v29 = SGNormalizeEmailAddress();
    v30 = [v29 stringByAppendingString:v19];
    [v7 addObject:v30];
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [v5 phoneNumber];
    v32 = SGNormalizePhoneNumber();
    v33 = [v32 stringByAppendingString:v19];
    [v7 addObject:v33];
  }

  if (objc_opt_respondsToSelector())
  {
    v34 = [v5 address];
    v35 = SGNormalizeAddress(v34);
    v36 = [v35 stringByAppendingString:v19];
    [v7 addObject:v36];
  }

  if (objc_opt_respondsToSelector())
  {
    v37 = [v5 dateString];
    v38 = SGNormalizeBirthday(v37);
    v39 = [v38 stringByAppendingString:v19];
    [v7 addObject:v39];
  }

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)keysForStorageContact:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 profiles];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 title];

        if (v11)
        {
          v12 = [v10 title];
          v13 = SGNormalizeName(v12);
          [v4 addObject:v13];
        }

        v14 = [v10 duplicateKey];
        if ([v14 entityType] == 4)
        {
          v15 = [v14 identityKey];
          if ([v15 hasEmailAddress])
          {
            v16 = [v15 emailAddress];
            [v4 addObject:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)keysForContact:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];
  v6 = [v5 fullName];

  if (v6)
  {
    v7 = [v3 name];
    v8 = [v7 fullName];
    v9 = SGNormalizeName(v8);
    [v4 addObject:v9];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v3 emailAddresses];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) emailAddress];
        v16 = SGNormalizeEmailAddress();
        [v4 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)pushAll:(id)a3
{
  v4 = a3;
  [(SGSuggestHistory *)self pushConfirmedEvents:v4];
  [(SGSuggestHistory *)self pushConfirmedEventsWithoutTimestamp:v4];
  [(SGSuggestHistory *)self pushRejectedEvents:v4];
  [(SGSuggestHistory *)self pushConfirmedEventFields:v4];
  [(SGSuggestHistory *)self pushConfirmedEventWithoutTimestampFields:v4];
  [(SGSuggestHistory *)self pushConfirmedReminders:v4];
  [(SGSuggestHistory *)self pushRejectedReminders:v4];
  [(SGSuggestHistory *)self pushContacts:v4];
  [(SGSuggestHistory *)self pushStorageDetails:v4];
  [(SGSuggestHistory *)self pushDontUpdate:v4];
  [(SGSuggestHistory *)self pushResetInfo:v4];
}

- (void)setInternalStateAccordingToKVS
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__SGSuggestHistory_setInternalStateAccordingToKVS__block_invoke;
  v3[3] = &unk_27894C6E8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_setInternalStateAccordingToKVS:(id)a3
{
  v29 = a3;
  v5 = [(SGSuggestHistory *)self mutableSetForKey:@"events"];
  v6 = v29[1];
  v29[1] = v5;

  v7 = [(SGSuggestHistory *)self mutableSetForKey:@"eventsWithoutTimestamp"];
  v8 = v29[2];
  v29[2] = v7;

  v9 = [(SGSuggestHistory *)self mutableSetForKey:@"rejectedEvents"];
  v10 = v29[3];
  v29[3] = v9;

  v11 = [(SGSuggestHistory *)self mutableSetForKey:@"confirmedEventFields"];
  v12 = v29[7];
  v29[7] = v11;

  v13 = [(SGSuggestHistory *)self mutableSetForKey:@"confirmedEventWithoutTimestampFields"];
  v14 = v29[8];
  v29[8] = v13;

  v15 = [(SGSuggestHistory *)self mutableSetForKey:@"reminders"];
  v16 = v29[4];
  v29[4] = v15;

  v17 = [(SGSuggestHistory *)self mutableSetForKey:@"rejectedReminders"];
  v18 = v29[5];
  v29[5] = v17;

  v19 = [(SGSuggestHistory *)self mutableSetForKey:@"newContacts"];
  v20 = v29[6];
  v29[6] = v19;

  v21 = [(SGSuggestHistory *)self mutableSetForKey:@"storageDetails"];
  v22 = v29[9];
  v29[9] = v21;

  v23 = [(SGSuggestHistory *)self mutableSetForKey:@"dontUpdate"];
  v24 = v29[10];
  v29[10] = v23;

  v25 = [(SGSuggestHistory *)self loadResetInfo];
  v26 = v29[11];
  v29[11] = v25;

  v27 = v29;
  if (!v29[1] || !v29[2] || !v29[3] || !v29[7] || !v29[8] || !v29[4] || !v29[5] || !v29[6] || !v29[9] || !v29[10])
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:738 description:@"Suggest history sets must not be nil"];

    v27 = v29;
  }
}

- (void)pushResetInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v4[11] objectAtIndexedSubscript:0];
    v9 = [v8 unsignedLongValue];
    v10 = [v4[11] objectAtIndexedSubscript:1];
    [v10 doubleValue];
    v12 = 134218240;
    v13 = v9;
    v14 = 2048;
    v15 = v11;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing reset info (generation %lu, timestamp %.1f)", &v12, 0x16u);
  }

  v6 = [(SGSuggestHistory *)self kvs];
  [v6 setArray:v4[11] forKey:@"resetInfo"];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pushDontUpdate:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[10] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing do-not-update set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[10] forKey:@"dontUpdate"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushStorageDetails:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[9] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing storage details set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[9] forKey:@"storageDetails"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushContacts:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[6] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing contacts set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[6] forKey:@"newContacts"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushConfirmedEventWithoutTimestampFields:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[8] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing confirmed event without timestamp fields set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[8] forKey:@"confirmedEventWithoutTimestampFields"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushConfirmedEventFields:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[7] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing confirmed event fields set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[7] forKey:@"confirmedEventFields"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushRejectedReminders:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[5] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing rejected reminders set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[5] forKey:@"rejectedReminders"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushConfirmedReminders:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[4] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing confirmed reminders set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[4] forKey:@"reminders"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushRejectedEvents:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[3] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing rejected events set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[3] forKey:@"rejectedEvents"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushConfirmedEventsWithoutTimestamp:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[2] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing confirmed events without timestamp set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[2] forKey:@"eventsWithoutTimestamp"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushConfirmedEvents:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4[1] count];
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "Pushing confirmed events set with %i items", v8, 8u);
  }

  [(SGSuggestHistory *)self _setHashes:v4[1] forKey:@"events"];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setHashes:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = [(SGSuggestHistory *)self _canaryHash];
  v9 = [v14 containsObject:v8];

  if (v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"![hashes containsObject:[self _canaryHash]]"}];
  }

  if ([v14 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    if (_setHashes_forKey___pasOnceToken51 != -1)
    {
      dispatch_once(&_setHashes_forKey___pasOnceToken51, &__block_literal_global_154);
    }

    v11 = _setHashes_forKey___pasExprOnceResult;
  }

  v12 = [(SGSuggestHistory *)self kvs];
  [v12 setObject:v11 forKey:v7];

  [(SGSuggestHistory *)self _tellObserversHashesDidChange];
}

void __38__SGSuggestHistory__setHashes_forKey___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277CCAAB0];
  v2 = objc_opt_new();
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
  v4 = _setHashes_forKey___pasExprOnceResult;
  _setHashes_forKey___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __49__SGSuggestHistory__tellObserversHashesDidChange__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a2 + 96) copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
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

        [*(*(&v9 + 1) + 8 * v7++) hashesDidChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8313;
  v10 = __Block_byref_object_dispose__8314;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SGSuggestHistory_description__block_invoke;
  v5[3] = &unk_27894C710;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__SGSuggestHistory_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v18 = [v2 alloc];
  v17 = [v3[1] count];
  v4 = [v3[2] count];
  v5 = [v3[3] count];
  v6 = [v3[4] count];
  v7 = [v3[5] count];
  v8 = [v3[7] count];
  v9 = [v3[8] count];
  v10 = [v3[6] count];
  v11 = [v3[9] count];
  v12 = v3[10];

  v13 = [v18 initWithFormat:@"Suggest history with %d confirmed event hashes, %d confirmed event without timestamp hashes, %d rejected event hashes, %d confirmed reminder hashes, %d rejected reminder hashes, %d confirmed event field hashes, %d confirmed event without timestamp field hashes, %d contact hashes, %d storage detail hashes, and %d no-update hashes.", v17, v4, v5, v6, v7, v8, v9, v10, v11, objc_msgSend(v12, "count")];
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return MEMORY[0x2821F96F8](v13, v15);
}

- (id)loadResetInfo
{
  v2 = [(SGSuggestHistory *)self kvs];
  v3 = [v2 arrayForKey:@"resetInfo"];

  if (v3 && [v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectAtIndexedSubscript:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "Empty or corrupt resetInfo", v9, 2u);
  }

  v3 = &unk_28474A510;
LABEL_10:

  return v3;
}

- (id)mutableSetForKey:(id)a3
{
  v4 = a3;
  v5 = [(SGSuggestHistory *)self kvs];
  v6 = [v5 dataForKey:v4];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    if (mutableSetForKey___pasOnceToken49 != -1)
    {
      dispatch_once(&mutableSetForKey___pasOnceToken49, &__block_literal_global_141);
    }

    v8 = [v7 unarchivedObjectOfClasses:mutableSetForKey___pasExprOnceResult fromData:v6 error:0];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = [v8 mutableCopy];
      }
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

void __37__SGSuggestHistory_mutableSetForKey___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  v6 = mutableSetForKey___pasExprOnceResult;
  mutableSetForKey___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

- (id)legacyManateeSecret
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8313;
  v10 = __Block_byref_object_dispose__8314;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SGSuggestHistory_legacyManateeSecret__block_invoke;
  v5[3] = &unk_27894C8C0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__SGSuggestHistory_legacyManateeSecret__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = v7[14];
  if (!v3)
  {
    v4 = [*(a1 + 32) kvs];
    v5 = [v4 dataForKey:@"SGSaltManatee"];
    v6 = v7[14];
    v7[14] = v5;

    v3 = v7[14];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (id)salt
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8313;
  v10 = __Block_byref_object_dispose__8314;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__SGSuggestHistory_salt__block_invoke;
  v5[3] = &unk_27894C8C0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__SGSuggestHistory_salt__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = v11[13];
  if (!v3)
  {
    v4 = [*(a1 + 32) kvs];
    v5 = [v4 dataForKey:@"SGSalt"];
    v6 = v11[13];
    v11[13] = v5;

    v3 = v11[13];
    if (!v3)
    {
      v7 = SGRandomDataOfLength(0x20uLL);
      v8 = [v7 copy];
      v9 = v11[13];
      v11[13] = v8;

      v10 = [*(a1 + 32) kvs];
      [v10 setData:v11[13] forKey:@"SGSalt"];

      v3 = v11[13];
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (SGSuggestHistory)init
{
  v3 = objc_alloc(MEMORY[0x277CCAD80]);
  v4 = *MEMORY[0x277D02460];
  v5 = [v3 initWithStoreIdentifier:*MEMORY[0x277D02460] type:1];
  v6 = [(SGSuggestHistory *)self initWithKVS:v5 kvStoreIdentifier:v4];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD80]) initWithStoreIdentifier:v4 type:0];
    [(SGSuggestHistory *)v6 setMigrateFromStore:v7];
  }

  return v6;
}

- (SGSuggestHistory)initWithKVS:(id)a3 kvStoreIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = SGSuggestHistory;
  v9 = [(SGSuggestHistory *)&v24 init];
  if (v9)
  {
    v10 = [v8 copy];
    kvStoreIdentifier = v9->_kvStoreIdentifier;
    v9->_kvStoreIdentifier = v10;

    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = *(v12 + 96);
    *(v12 + 96) = v13;

    v15 = objc_opt_new();
    noCloudFakeBackingKVStore = v9->_noCloudFakeBackingKVStore;
    v9->_noCloudFakeBackingKVStore = v15;

    objc_storeStrong(&v9->_backingKVStore, a3);
    if (!v9->_backingKVStore)
    {
      v17 = sgLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGSuggestHistory is a no-op with kvs == nil!", v23, 2u);
      }

      objc_storeStrong(&v9->_backingKVStore, v9->_noCloudFakeBackingKVStore);
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v9 selector:sel_handleSyncedDataChanged_ name:*MEMORY[0x277CCA7C0] object:v9->_backingKVStore];

    if (![(NSUbiquitousKeyValueStore *)v9->_backingKVStore synchronize])
    {
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "Something went wrong with trying to synchronize icloud store", v23, 2u);
      }
    }

    [(SGSuggestHistory *)v9 _setInternalStateAccordingToKVS:v12];
    *(v12 + 128) = 0;
    v20 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v12];
    lock = v9->_lock;
    v9->_lock = v20;
  }

  return v9;
}

- (NSUbiquitousKeyValueStore)kvs
{
  if ([MEMORY[0x277D02098] syncHistoryToCloud])
  {
    v3 = 16;
  }

  else
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "Suppressing cloud sync. This should happen in testing only.", v7, 2u);
    }

    v3 = 24;
  }

  v5 = *(&self->super.isa + v3);

  return v5;
}

- (void)migrateFromKVS:(id)a3 withCompletion:(id)a4
{
  v62[10] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__8313;
  v52 = __Block_byref_object_dispose__8314;
  v53 = 0;
  lock = self->_lock;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke;
  v47[3] = &unk_27894C7B0;
  v47[4] = &v54;
  v47[5] = &v48;
  [(_PASLock *)lock runWithLockAcquired:v47];
  if (*(v55 + 24) == 1)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS aborting to avoid re-entrancy", buf, 2u);
    }

    v8[2](v8, 0);
  }

  else
  {
    v62[0] = @"events";
    v62[1] = @"eventsWithoutTimestamp";
    v62[2] = @"rejectedEvents";
    v62[3] = @"reminders";
    v62[4] = @"rejectedReminders";
    v62[5] = @"newContacts";
    v62[6] = @"storageDetails";
    v62[7] = @"dontUpdate";
    v62[8] = @"confirmedEventFields";
    v62[9] = @"confirmedEventWithoutTimestampFields";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:10];
    v12 = self->_lock;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_103;
    v40[3] = &unk_27894C800;
    v30 = v11;
    v41 = v30;
    v13 = v7;
    v42 = v13;
    v14 = v12;
    v46 = a2;
    v43 = v14;
    v44 = self;
    v45 = v8;
    v15 = [v40 copy];
    if (v49[5] && ([MEMORY[0x277CBEAA8] date], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "timeIntervalSinceDate:", v49[5]), v18 = v17 < 600.0, v16, v18))
    {
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x277CBEAA8] date];
        [v20 timeIntervalSinceDate:v49[5]];
        *buf = 134218240;
        v59 = v21;
        v60 = 2048;
        v61 = 0x4082C00000000000;
        _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS aborting, %f sec elapsed since last migration but cooldown period is %f", buf, 0x16u);
      }

      v15[2](v15, 0);
    }

    else
    {
      [(_PASLock *)v14 runWithLockAcquired:&__block_literal_global_117, v30];
      v22 = [(SGSuggestHistory *)self kvsIfSyncSupported];
      if (v22)
      {
        v23 = objc_opt_new();
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_119;
        v38[3] = &unk_278955BA8;
        v24 = v23;
        v39 = v24;
        [v13 synchronizeWithCompletionHandler:v38];
        v25 = +[SGDCloudKitSync sharedInstance];
        v26 = [v25 privacySalt];

        objc_initWeak(buf, self);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_122;
        v31[3] = &unk_27894C898;
        v32 = v22;
        objc_copyWeak(&v37, buf);
        v36 = v15;
        v27 = v24;
        v33 = v27;
        v34 = v13;
        v35 = v30;
        [v26 wait:v31];

        objc_destroyWeak(&v37);
        objc_destroyWeak(buf);
      }

      else
      {
        v28 = sgLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_231E60000, v28, OS_LOG_TYPE_FAULT, "SGSuggestHistory: migrateFromKVS aborting due to nil destination kvs", buf, 2u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }

        v15[2](v15, 0);
      }
    }
  }

  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  v29 = *MEMORY[0x277D85DE8];
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = *(a2 + 128);
  *(a2 + 128) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a2 + 136));
}

uint64_t __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_103(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS succeeded, deleting keys from fromKVS: %@", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 40) setData:0 forKey:*(*(&v18 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_104;
  v17[3] = &unk_27894C7D8;
  v11 = *(a1 + 72);
  v12 = *(a1 + 48);
  v17[4] = *(a1 + 56);
  v17[5] = v11;
  [v12 runWithLockAcquired:v17];
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"failed";
    if (a2)
    {
      v14 = @"succeeded";
    }

    *buf = 138412290;
    v24 = v14;
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS %@, calling completion block...", buf, 0xCu);
  }

  result = (*(*(a1 + 64) + 16))();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_119(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SGSuggestHistory: migrateFromKVS error syncing fromKVS (will still proceed with migration, this is a best-effort thing): %@", &v7, 0xCu);
    }

    [*(a1 + 32) fail:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS successfully synced fromKVS", &v7, 2u);
    }

    [*(a1 + 32) succeed:MEMORY[0x277CBEC38]];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_122(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_2;
  v9[3] = &unk_27894C870;
  objc_copyWeak(&v16, a1 + 9);
  v15 = a1[8];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[4];
  v8 = v5;
  v13 = v8;
  v14 = a1[7];
  [v7 synchronizeWithCompletionHandler:v9];

  objc_destroyWeak(&v16);
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained needsMigration] & 1) != 0)
  {
    if (!v3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_123;
      v15[3] = &unk_27894C848;
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v18 = *(a1 + 72);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      *&v13 = v11;
      *(&v13 + 1) = v12;
      *&v14 = v9;
      *(&v14 + 1) = v10;
      v16 = v14;
      v17 = v13;
      [v8 wait:v15];

      goto LABEL_9;
    }

    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGSuggestHistory: migrateFromKVS bailing due to error syncing dest KVS: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS bailing, migration no longer needed after attempting to sync dest KVS", buf, 2u);
    }
  }

  (*(*(a1 + 72) + 16))();
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dataForKey:@"SGSalt"];
  v8 = [*(a1 + 40) dataForKey:@"SGSalt"];

  v57 = a1;
  if (v8)
  {
    v9 = [*(a1 + 40) dataForKey:@"SGSalt"];
    v10 = [v7 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      log = sgLogHandle();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(v57 + 40) dataForKey:@"SGSalt"];
        *buf = 138478083;
        v66 = v11;
        v67 = 2113;
        v68 = v7;
        v12 = "SGSuggestHistory: bailing with success because new (%{private}@) and old (%{private}@) kvs have different salts";
LABEL_13:
        _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);

        goto LABEL_57;
      }

      goto LABEL_57;
    }
  }

  else if (v7)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v66 = v7;
      _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS copying salt %{private}@ to new kvs", buf, 0xCu);
    }

    [*(a1 + 40) setData:v7 forKey:@"SGSalt"];
  }

  v14 = [*(v57 + 40) dataForKey:@"SGSaltManatee"];

  v15 = *(v57 + 48);
  if (!v14)
  {
    if (v15)
    {
      [*(v57 + 40) setData:*(v57 + 48) forKey:@"SGSaltManatee"];
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v57 + 48);
        *buf = 138477827;
        v66 = v20;
        v21 = "SGSuggestHistory: migrateFromKVS copying legacy manatee salt %{private}@";
        v22 = v19;
        v23 = 12;
LABEL_19:
        _os_log_impl(&dword_231E60000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else
    {
      v19 = sgLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = "SGSuggestHistory: migrateFromKVS not copying legacy manatee salt because no legacy manatee salt has been generated";
        v22 = v19;
        v23 = 2;
        goto LABEL_19;
      }
    }

LABEL_21:
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    log = *(v57 + 56);
    v24 = [log countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v24)
    {
      v25 = v24;
      v54 = v7;
      v55 = v6;
      v56 = v5;
      v60 = *v62;
      v26 = v57;
      do
      {
        v27 = 0;
        v58 = v25;
        do
        {
          if (*v62 != v60)
          {
            objc_enumerationMutation(log);
          }

          v28 = *(*(&v61 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = [*(v26 + 32) dataForKey:v28];
          if (v30)
          {
            v31 = MEMORY[0x277CCAAC8];
            v32 = objc_autoreleasePoolPush();
            v33 = objc_alloc(MEMORY[0x277CBEB98]);
            v34 = objc_opt_class();
            v35 = [v33 initWithObjects:{v34, objc_opt_class(), 0}];
            objc_autoreleasePoolPop(v32);
            v36 = [v31 unarchivedObjectOfClasses:v35 fromData:v30 error:0];

            if (v36)
            {
              v37 = [*(v26 + 40) dataForKey:v28];
              if (v37)
              {
                v38 = MEMORY[0x277CCAAC8];
                v39 = objc_autoreleasePoolPush();
                v40 = objc_alloc(MEMORY[0x277CBEB98]);
                v41 = objc_opt_class();
                v42 = [v40 initWithObjects:{v41, objc_opt_class(), 0}];
                objc_autoreleasePoolPop(v39);
                v43 = [v38 unarchivedObjectOfClasses:v42 fromData:v37 error:0];

                v44 = [v43 count];
                [v43 unionSet:v36];
                v45 = [v43 count];
                v46 = sgLogHandle();
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
                if (v45 == v44)
                {
                  if (v47)
                  {
                    *buf = 138543362;
                    v66 = v28;
                    _os_log_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ fromKVS does not have any entries that aren't already in dest", buf, 0xCu);
                  }

                  v26 = v57;
                }

                else
                {
                  if (v47)
                  {
                    *buf = 138543618;
                    v66 = v28;
                    v67 = 2048;
                    v68 = v45 - v44;
                    _os_log_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ fromKVS migrating %tu entries from fromKVS to dest kvs that dest kvs didn't already have", buf, 0x16u);
                  }

                  v46 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v43 requiringSecureCoding:1 error:0];
                  v50 = sgLogHandle();
                  v51 = v50;
                  v26 = v57;
                  if (v46)
                  {
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v52 = [v46 length];
                      *buf = 138543618;
                      v66 = v28;
                      v67 = 2048;
                      v68 = v52;
                      _os_log_impl(&dword_231E60000, v51, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ newDestData is length %tu", buf, 0x16u);
                    }

                    [*(v57 + 40) setData:v46 forKey:v28];
                  }

                  else
                  {
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543875;
                      v66 = v28;
                      v67 = 2113;
                      v68 = v36;
                      v69 = 2113;
                      v70 = v43;
                      _os_log_fault_impl(&dword_231E60000, v51, OS_LOG_TYPE_FAULT, "SGSuggestHistory: migrateFromKVS newDestData is nil for key %{public}@! this should not happen. src: %{private}@, dest: %{private}@", buf, 0x20u);
                    }

                    if (_PASEvaluateLogFaultAndProbCrashCriteria())
                    {
                      goto LABEL_58;
                    }

                    v46 = 0;
                  }
                }
              }

              else
              {
                v49 = sgLogHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v66 = v28;
                  _os_log_impl(&dword_231E60000, v49, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ fromKVS does not have any existing entries in dest, so copying the serialized object directly", buf, 0xCu);
                }

                [*(v26 + 40) setData:v30 forKey:v28];
              }

              v25 = v58;
            }

            else
            {
              v48 = sgLogHandle();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v66 = v28;
                _os_log_fault_impl(&dword_231E60000, v48, OS_LOG_TYPE_FAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ failed to decode data in fromKVS, so skipping", buf, 0xCu);
              }

              if (_PASEvaluateLogFaultAndProbCrashCriteria())
              {
LABEL_58:
                abort();
              }

              v36 = 0;
            }
          }

          else
          {
            v36 = sgLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v66 = v28;
              _os_log_impl(&dword_231E60000, v36, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateFromKVS for key %{public}@ has no existing data in fromKVS, so skipping", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v29);
          ++v27;
        }

        while (v25 != v27);
        v25 = [log countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v25);
      v6 = v55;
      v5 = v56;
      v7 = v54;
    }

    goto LABEL_57;
  }

  v16 = [*(v57 + 40) dataForKey:@"SGSaltManatee"];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    goto LABEL_21;
  }

  log = sgLogHandle();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v18 = *(v57 + 48);
    v11 = [*(v57 + 40) dataForKey:@"SGSaltManatee"];
    *buf = 138478083;
    v66 = v18;
    v67 = 2113;
    v68 = v11;
    v12 = "SGSuggestHistory: migrateFromKVS legacy manatee salt %{private}@ in fromKVS conflicts with existing legacy manatee salt %{private}@ in dest, so we're going to bail with success";
    goto LABEL_13;
  }

LABEL_57:

  (*(*(v57 + 64) + 16))();
  v53 = *MEMORY[0x277D85DE8];
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_115(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  v5 = v3[17];
  v3[17] = v4;
}

void __50__SGSuggestHistory_migrateFromKVS_withCompletion___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((v3[128] & 1) == 0)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGSuggestHistory.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"guardedData->isMigrating"}];

    v3 = v5;
  }

  v3[128] = 0;
}

- (void)recordSuccessfulMigration
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = SGRandomDataOfLength(9uLL);
  v6 = [v5 base64EncodedStringWithOptions:0];
  v7 = [v4 initWithFormat:@"SGSuggestHistory-Migration-%@", v6];

  if ([v7 lengthOfBytesUsingEncoding:4] >= 0x41)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGSuggestHistory.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"[migrationToken lengthOfBytesUsingEncoding:NSUTF8StringEncoding] <= 64"}];
  }

  [MEMORY[0x277D02098] setDidKVSMigrationToken:v7 forIdentifier:self->_kvStoreIdentifier];
  v8 = [(SGSuggestHistory *)self kvs];
  [v8 setObject:&unk_2847492D8 forKey:v7];

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: recording successful migration using token %{public}@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)needsMigration
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D02098] didKVSMigrationTokenForIdentifier:self->_kvStoreIdentifier];
  if (!v3)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v9 = "SGSuggestHistory: needsMigration returning YES because migrationToken is nil";
      v10 = v6;
      v11 = 2;
LABEL_10:
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }

LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

  v4 = [(SGSuggestHistory *)self kvsIfSyncSupported];
  v5 = [v4 objectForKey:v3];

  v6 = sgLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      v14 = 138543362;
      v15 = v3;
      v9 = "SGSuggestHistory: needsMigration returning YES because migrationToken %{public}@ is not set in the KVS";
      v10 = v6;
      v11 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    v14 = 138543362;
    v15 = v3;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: needsMigration returning NO because migrationToken %{public}@ is already set in the KVS", &v14, 0xCu);
  }

  v8 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)migrateIfNeeded
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: Entering migrateIfNeeded", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8313;
  v34 = __Block_byref_object_dispose__8314;
  v35 = 0;
  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __35__SGSuggestHistory_migrateIfNeeded__block_invoke;
  v30[3] = &unk_27894C710;
  v30[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v30];
  v5 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (!v5)
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: Exiting migrateIfNeeded (fromKVS is nil)", &buf, 2u);
    }

    goto LABEL_13;
  }

  if (![(SGSuggestHistory *)self needsMigration])
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: Exiting migrateIfNeeded (migration not needed)", &buf, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SGSuggestHistory migration: %@", self->_kvStoreIdentifier];
  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateIfNeeded session %{public}@", &buf, 0xCu);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277D425A0];
  v10 = v6;
  v11 = [v9 autoreleasingSerialQueueWithLabel:objc_msgSend(v6 qosClass:{"UTF8String"), 17}];
  objc_autoreleasePoolPop(v8);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8313;
  v34 = __Block_byref_object_dispose__8314;
  v35 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = v6;
  [v6 UTF8String];
  v14 = os_transaction_create();
  objc_autoreleasePoolPop(v12);
  v15 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v14;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SGSuggestHistory_migrateIfNeeded__block_invoke_77;
  block[3] = &unk_278955BF0;
  block[4] = &buf;
  v16 = dispatch_block_create(0, block);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __35__SGSuggestHistory_migrateIfNeeded__block_invoke_78;
  v22[3] = &unk_27894C788;
  objc_copyWeak(&v27, &location);
  v23 = v5;
  v24 = v11;
  v25 = v16;
  p_buf = &buf;
  v17 = v16;
  v18 = v11;
  dispatch_async(v18, v22);
  v19 = dispatch_time(0, 300000000000);
  dispatch_after(v19, v18, v17);

  objc_destroyWeak(&v27);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __35__SGSuggestHistory_migrateIfNeeded__block_invoke_77(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_231E60000, v3, OS_LOG_TYPE_FAULT, "SGSuggestHistory: Timed out in migrateIfNeeded -- Ending transaction but migration will continue (unless we probabilistically crash)", v5, 2u);
  }

  result = _PASEvaluateLogFaultAndProbCrashCriteria();
  if (result)
  {
    abort();
  }

  return result;
}

void __35__SGSuggestHistory_migrateIfNeeded__block_invoke_78(uint64_t a1)
{
  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateIfNeeded on queue", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SGSuggestHistory_migrateIfNeeded__block_invoke_79;
    v8[3] = &unk_27894C760;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v7 = *(a1 + 48);
    v5 = v7;
    v11 = v7;
    v10 = WeakRetained;
    [v10 migrateFromKVS:v4 withCompletion:v8];

    v6 = v9;
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateIfNeeded aborting due to nil strongSelf", buf, 2u);
    }
  }
}

void __35__SGSuggestHistory_migrateIfNeeded__block_invoke_79(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SGSuggestHistory_migrateIfNeeded__block_invoke_2;
  block[3] = &unk_27894C738;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  v10 = a2;
  v8 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __35__SGSuggestHistory_migrateIfNeeded__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  dispatch_block_cancel(*(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v6 = @"SUCCESS";
    }

    else
    {
      v6 = @"FAILURE";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGSuggestHistory: migrateIfNeeded %@", &v8, 0xCu);
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) recordSuccessfulMigration];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setMigrateFromStore:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SGSuggestHistory_setMigrateFromStore___block_invoke;
  v7[3] = &unk_27894C6E8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [(SGSuggestHistory *)self migrateIfNeeded];
}

- (id)kvsIfSyncSupported
{
  backingKVStore = self->_backingKVStore;
  if (backingKVStore == self->_noCloudFakeBackingKVStore)
  {
    v4 = 0;
  }

  else
  {
    v4 = backingKVStore;
  }

  return v4;
}

+ (void)resetNoFlush
{
  v2 = +[SGSuggestHistory sharedSuggestHistory];
  [v2 resetNoFlush];
}

+ (void)reset
{
  v2 = +[SGSuggestHistory sharedSuggestHistory];
  [v2 reset];
}

+ (id)newTestingInstanceWithSharedKVS:(id)a3
{
  v3 = a3;
  v4 = [SGSuggestHistory alloc];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [(SGSuggestHistory *)v4 initWithKVS:v3 kvStoreIdentifier:v6];

  return v7;
}

uint64_t __40__SGSuggestHistory_sharedSuggestHistory__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedSuggestHistory_instance;
  sharedSuggestHistory_instance = v0;

  v2 = sharedSuggestHistory_instance;

  return [v2 migrateIfNeeded];
}

@end