@interface DNDSIDSSyncEngine
- (BOOL)_queue_cancelInflightExpirationTimer;
- (BOOL)_queue_cancelRetryTimer;
- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (DNDSIDSSyncEngine)initWithMetadataStore:(id)store syncService:(id)service keybag:(id)keybag role:(unint64_t)role syncState:(unint64_t)state inflightExpirationTime:(unint64_t)time;
- (double)_queue_earliestExpirationTimeSinceNowForInflightMetadata;
- (id)_queue_dataSourceForZone:(id)zone;
- (id)inflightMetadata;
- (unint64_t)pairSyncState;
- (void)_queue_handleAckMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_handleMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_handleReplaceMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_handleResyncMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_handleUnlockMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_handleUpdateMessage:(id)message fromPairedDeviceIdentifier:(id)identifier;
- (void)_queue_removeAllInflightMetadata;
- (void)_queue_removeAllInflightMetadataWithExpirationDate:(id)date;
- (void)_queue_resetRetryTimer;
- (void)_queue_restartInflightExpirationTimer;
- (void)_queue_sendAckWithMetadata:(id)metadata forAction:(id)action toDeviceWithIdentifier:(id)identifier;
- (void)_queue_sendModifiedRecordIDs:(id)ds deletedRecordIDs:(id)iDs toDeviceWithIdentifier:(id)identifier;
- (void)_queue_sendResyncMessageToDeviceWithIdentifier:(id)identifier;
- (void)_queue_sendUnlockMessageToDeviceWithIdentifier:(id)identifier;
- (void)_queue_startInflightExpirationTimer;
- (void)_queue_startRetryTimer;
- (void)_queue_syncDataSourcesToDeviceWithIdentifier:(id)identifier;
- (void)_queue_validate;
- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)setDataSource:(id)source forZone:(id)zone;
- (void)setDidFireMetadataExpirationTimer:(id)timer;
- (void)setDidReceiveUnlockMessage:(id)message;
- (void)setPairedDevice:(id)device syncEnabled:(BOOL)enabled;
- (void)sync;
- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier;
- (void)syncService:(id)service didSendWithRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error;
- (void)validate;
@end

@implementation DNDSIDSSyncEngine

- (DNDSIDSSyncEngine)initWithMetadataStore:(id)store syncService:(id)service keybag:(id)keybag role:(unint64_t)role syncState:(unint64_t)state inflightExpirationTime:(unint64_t)time
{
  storeCopy = store;
  serviceCopy = service;
  keybagCopy = keybag;
  v35.receiver = self;
  v35.super_class = DNDSIDSSyncEngine;
  v17 = [(DNDSIDSSyncEngine *)&v35 init];
  if (v17)
  {
    if ((state & 2) != 0)
    {
      v18 = DNDSLogIDSSyncEngine;
      v20 = os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT);
      if (state)
      {
        if (v20)
        {
          *buf = 0;
          v19 = "IDS sync engine is available";
          goto LABEL_10;
        }
      }

      else if (v20)
      {
        *buf = 0;
        v19 = "IDS sync engine is disabled because of unsupported device";
        goto LABEL_10;
      }
    }

    else
    {
      v18 = DNDSLogIDSSyncEngine;
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "IDS sync engine is disabled because of feature flag";
LABEL_10:
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      }
    }

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.donotdisturb.server.DNDSIDSSyncEngine", v21);
    queue = v17->_queue;
    v17->_queue = v22;

    v17->_role = role;
    v17->_syncState = state;
    v17->_retriesAvailable = 3;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sourcesByZone = v17->_sourcesByZone;
    v17->_sourcesByZone = strongToWeakObjectsMapTable;

    objc_storeStrong(&v17->_metadataStore, store);
    v17->_inflightExpirationTime = time;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    inflightDateByRequestIdentifier = v17->_inflightDateByRequestIdentifier;
    v17->_inflightDateByRequestIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    inflightMetadataByRequestIdentifier = v17->_inflightMetadataByRequestIdentifier;
    v17->_inflightMetadataByRequestIdentifier = dictionary2;

    v30 = [MEMORY[0x277CBEB58] set];
    inflightMetadata = v17->_inflightMetadata;
    v17->_inflightMetadata = v30;

    objc_storeStrong(&v17->_syncService, service);
    [(DNDSSyncService *)v17->_syncService setDelegate:v17];
    objc_storeStrong(&v17->_keybag, keybag);
    [(DNDSSyncService *)v17->_syncService resume];
    [keybagCopy addObserver:v17];
    [(DNDSIDSSyncEngine *)v17 validate];
    DNDSRegisterSysdiagnoseDataProvider(v17);
  }

  return v17;
}

- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete
{
  saveCopy = save;
  deleteCopy = delete;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DNDSIDSSyncEngine_addRecordIDsToSave_recordIDsToDelete___block_invoke;
  block[3] = &unk_278F89E30;
  block[4] = self;
  v12 = deleteCopy;
  v13 = saveCopy;
  v9 = saveCopy;
  v10 = deleteCopy;
  dispatch_async(queue, block);
}

void __58__DNDSIDSSyncEngine_addRecordIDsToSave_recordIDsToDelete___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((~*(*(a1 + 32) + 32) & 7) != 0)
  {
    v4 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 32);
      *buf = 134349056;
      v9 = v5;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring records as the sync engine is disabled: %{public}llu", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [*(*(a1 + 32) + 40) setDeletedAtDate:v7 forRecordIDs:*(a1 + 40)];
    [*(*(a1 + 32) + 40) setLastModifiedDate:v7 forRecordIDs:*(a1 + 48)];
    [*(a1 + 32) _queue_resetRetryTimer];
    v2 = [*(*(a1 + 32) + 24) deviceIdentifier];
    if (v2)
    {
      [*(a1 + 32) _queue_syncDataSourcesToDeviceWithIdentifier:v2];
    }

    v3 = *MEMORY[0x277D85DE8];
  }
}

- (void)setDataSource:(id)source forZone:(id)zone
{
  sourceCopy = source;
  zoneCopy = zone;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSIDSSyncEngine_setDataSource_forZone___block_invoke;
  block[3] = &unk_278F89E30;
  v12 = sourceCopy;
  selfCopy = self;
  v14 = zoneCopy;
  v9 = zoneCopy;
  v10 = sourceCopy;
  dispatch_async(queue, block);
}

uint64_t __43__DNDSIDSSyncEngine_setDataSource_forZone___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = [v3 objectForKey:v4];
    if (!v5 || (v6 = *(a1 + 32), v5, !v6))
    {
      [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:*(a1 + 48)];
      [*(a1 + 40) _queue_resetRetryTimer];
    }
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }

  v7 = [*(*(a1 + 40) + 24) deviceIdentifier];
  v8 = v7;
  if (*(a1 + 32) && v7)
  {
    v10 = v7;
    v7 = [*(a1 + 40) _queue_syncDataSourcesToDeviceWithIdentifier:v7];
    v8 = v10;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

- (void)setPairedDevice:(id)device syncEnabled:(BOOL)enabled
{
  deviceCopy = device;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DNDSIDSSyncEngine_setPairedDevice_syncEnabled___block_invoke;
  block[3] = &unk_278F89E58;
  enabledCopy = enabled;
  block[4] = self;
  v10 = deviceCopy;
  v8 = deviceCopy;
  dispatch_async(queue, block);
}

void __49__DNDSIDSSyncEngine_setPairedDevice_syncEnabled___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = (*(*(a1 + 32) + 32) >> 2) & 1;
  if (v3 != v2)
  {
    v4 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      v28 = 136446210;
      v29 = v5;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "IDS sync engine changed to %{public}s", &v28, 0xCu);
    }

    v6 = 4;
    if (!*(a1 + 48))
    {
      v6 = 0;
    }

    *(*(a1 + 32) + 32) = *(*(a1 + 32) + 32) & 0xFFFFFFFFFFFFFFFBLL | v6;
  }

  v7 = *(a1 + 32);
  if ((~*(v7 + 32) & 3) != 0)
  {
    v10 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 32);
      v28 = 134349056;
      v29 = v11;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring paired device/enabled change as the sync engine is not available: %{public}llu", &v28, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(v7 + 24);
    if (v8 == v9 || v8 && v9 && ([v8 isEqual:?] & 1) != 0)
    {
      if (v3 == v2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v14 = DNDSLogIDSSyncEngine;
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 32) + 24);
        v16 = v14;
        v17 = [v15 deviceIdentifier];
        v18 = [*(a1 + 40) deviceIdentifier];
        v28 = 138543618;
        v29 = v17;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Paired device changed from %{public}@ to %{public}@", &v28, 0x16u);
      }

      [*(a1 + 32) _queue_resetRetryTimer];
      v19 = *(a1 + 40);
      if (v19 && [v19 configurationSyncProtocolVersion] >= 0xB && objc_msgSend(*(a1 + 40), "configurationSyncProtocolVersion") <= 0xC && objc_msgSend(*(a1 + 40), "syncServiceType") == 1)
      {
        v20 = [*(a1 + 40) copy];
      }

      else
      {
        v21 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 40);
          v28 = 138412290;
          v29 = v22;
          _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring paired device not supported by IDS Sync Engine: %@", &v28, 0xCu);
        }

        v20 = 0;
      }

      v23 = *(a1 + 32);
      v24 = *(v23 + 24);
      *(v23 + 24) = v20;
    }

    [*(a1 + 32) _queue_validate];
    v13 = [*(a1 + 40) deviceIdentifier];
    if (v13)
    {
      v25 = [*(*(a1 + 32) + 40) hasPerformedInitialSyncForPairedDeviceIdentifier:v13];
      v26 = *(a1 + 32);
      if (v25)
      {
        [v26 _queue_syncDataSourcesToDeviceWithIdentifier:v13];
      }

      else
      {
        [v26 _queue_sendResyncMessageToDeviceWithIdentifier:v13];
      }
    }
  }

LABEL_36:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)setDidReceiveUnlockMessage:(id)message
{
  messageCopy = message;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DNDSIDSSyncEngine_setDidReceiveUnlockMessage___block_invoke;
  v7[3] = &unk_278F89E80;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

uint64_t __48__DNDSIDSSyncEngine_setDidReceiveUnlockMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setDidFireMetadataExpirationTimer:(id)timer
{
  timerCopy = timer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__DNDSIDSSyncEngine_setDidFireMetadataExpirationTimer___block_invoke;
  v7[3] = &unk_278F89E80;
  v7[4] = self;
  v8 = timerCopy;
  v6 = timerCopy;
  dispatch_async(queue, v7);
}

uint64_t __55__DNDSIDSSyncEngine_setDidFireMetadataExpirationTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (unint64_t)pairSyncState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__DNDSIDSSyncEngine_pairSyncState__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)validate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DNDSIDSSyncEngine_validate__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DNDSIDSSyncEngine_sync__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__DNDSIDSSyncEngine_sync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((~*(v1 + 32) & 7) == 0 && *(v1 + 24) && [*(v1 + 48) hasUnlockedSinceBoot])
  {
    v3 = *(a1 + 32);
    v4 = [v3[3] deviceIdentifier];
    [v3 _queue_syncDataSourcesToDeviceWithIdentifier:v4];
  }
}

- (id)inflightMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__DNDSIDSSyncEngine_inflightMetadata__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__DNDSIDSSyncEngine_inflightMetadata__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)syncService:(id)service didReceiveMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__DNDSIDSSyncEngine_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke;
  block[3] = &unk_278F89E30;
  block[4] = self;
  v15 = messageCopy;
  v16 = identifierCopy;
  v12 = identifierCopy;
  v13 = messageCopy;
  dispatch_sync(queue, block);
}

void __102__DNDSIDSSyncEngine_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke(void *a1)
{
  v3 = (a1 + 4);
  v2 = a1[4];
  if ((~v2[8] & 7) != 0)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
    {
      __102__DNDSIDSSyncEngine_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_1(v3);
    }
  }

  else
  {
    [v2 _queue_handleMessage:a1[5] fromPairedDeviceIdentifier:a1[6]];
    v4 = a1[4];
    v5 = a1[6];

    [v4 _queue_syncDataSourcesToDeviceWithIdentifier:v5];
  }
}

- (BOOL)syncService:(id)service shouldAcceptIncomingMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type fromDeviceIdentifier:(id)identifier
{
  serviceCopy = service;
  typeCopy = type;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke;
  v19[3] = &unk_278F89EF8;
  v20 = serviceCopy;
  selfCopy = self;
  v22 = typeCopy;
  v23 = identifierCopy;
  v24 = &v26;
  numberCopy = number;
  v15 = identifierCopy;
  v16 = typeCopy;
  v17 = serviceCopy;
  dispatch_sync(queue, v19);
  LOBYTE(queue) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return queue;
}

void __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke(uint64_t a1)
{
  v1 = a1 + 40;
  if (*(a1 + 32) == *(*(a1 + 40) + 16) && [*(a1 + 48) isEqualToString:@"syncEngine"])
  {
    if ((~*(*v1 + 32) & 7) != 0)
    {
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
      {
        __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_1(v1);
      }
    }

    else
    {
      v3 = [*(*v1 + 24) deviceIdentifier];
      v4 = [v3 isEqualToString:*(a1 + 56)];

      if (v4)
      {
        if ((*(a1 + 72) - 13) > 0xFFFFFFFFFFFFFFFDLL)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
        {
          __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_3((a1 + 72));
        }
      }

      else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
      {
        __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_2((a1 + 56), v1);
      }
    }
  }
}

- (void)syncService:(id)service didSendWithRequestIdentifier:(id)identifier withSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke;
  v14[3] = &unk_278F89F20;
  successCopy = success;
  v14[4] = self;
  v15 = errorCopy;
  v16 = identifierCopy;
  v12 = identifierCopy;
  v13 = errorCopy;
  dispatch_sync(queue, v14);
}

void __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((~*(v1 + 8) & 7) != 0)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
    {
      __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke_cold_1(v2);
    }
  }

  else
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
      {
        __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke_cold_2(a1);
      }

      [*v2 _queue_startRetryTimer];
      v1 = *v2;
    }

    v4 = [v1[12] objectForKeyedSubscript:*(a1 + 48)];
    [*(*(a1 + 32) + 112) minusSet:v4];
    [*(*(a1 + 32) + 96) setObject:0 forKeyedSubscript:*(a1 + 48)];
    [*(*(a1 + 32) + 104) setObject:0 forKeyedSubscript:*(a1 + 48)];
    [*(a1 + 32) _queue_restartInflightExpirationTimer];
    v5 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 count];
      v8 = [*(*v2 + 14) count];
      v14 = 134349312;
      v15 = v7;
      v16 = 2050;
      v17 = v8;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Removed %{public}llu inflight records; %{public}llu remaining", &v14, 0x16u);
    }

    v9 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*v2 + 12);
      v11 = v9;
      v12 = [v10 count];
      v14 = 134349056;
      v15 = v12;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}llu outstanding request identifiers", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DNDSIDSSyncEngine_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__DNDSIDSSyncEngine_keybagDidUnlockForTheFirstTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((~*(v1 + 32) & 7) == 0)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = [v3 deviceIdentifier];
      [v1 _queue_sendUnlockMessageToDeviceWithIdentifier:v4];

      v5 = DNDSLogIDSSyncEngine;
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Sync because keybag is unlocked", buf, 2u);
      }

      v6 = *(*(a1 + 32) + 40);
      v7 = [MEMORY[0x277CBEAA8] date];
      LOBYTE(v6) = [v6 isValidAtDate:v7];

      if ((v6 & 1) == 0)
      {
        v8 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Metadata store is invalid; purging", v11, 2u);
        }

        [*(*(a1 + 32) + 40) purge];
      }

      v9 = *(a1 + 32);
      v10 = [v9[3] deviceIdentifier];
      [v9 _queue_syncDataSourcesToDeviceWithIdentifier:v10];
    }
  }
}

void __53__DNDSIDSSyncEngine_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 8) dictionaryRepresentation];
  v3 = [v2 allKeys];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"zones"];

  v4 = [*(*(a1 + 40) + 24) deviceIdentifier];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"pairedDevice"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 40) + 32)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"syncState"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 40) + 80)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"retriesAvailable"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 40) + 88)];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"inflightExpirationTime"];

  v8 = [*(*(a1 + 40) + 112) description];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"inflightMetadata"];

  v9 = [*(*(a1 + 40) + 96) description];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"inflightMetadataByRequestIdentifier"];

  v10 = [*(*(a1 + 40) + 104) description];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"inflightDateByRequestIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 40) + 120)];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"role"];
}

- (id)_queue_dataSourceForZone:(id)zone
{
  queue = self->_queue;
  zoneCopy = zone;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMapTable *)self->_sourcesByZone objectForKey:zoneCopy];

  return v6;
}

- (void)_queue_syncDataSourcesToDeviceWithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v20 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Will not sync because keybag is locked";
    goto LABEL_18;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v20 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Will not sync because sync is inactive";
LABEL_18:
    v22 = v20;
LABEL_19:
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_20;
  }

  v5 = DNDSLogIDSSyncEngine;
  v6 = os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT);
  if (!identifierCopy)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "Will not sync because pairedDeviceIdentifier is nil";
    v22 = v5;
    goto LABEL_19;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Performing sync for all data sources", buf, 2u);
  }

  v24 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore modifiedRecordIDsForPairedDeviceIdentifier:identifierCopy];
  v7 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore deletedRecordIDsForPairedDeviceIdentifier:identifierCopy];
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_sourcesByZone;
  v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMapTable *)self->_sourcesByZone objectForKey:*(*(&v25 + 1) + 8 * i)];
        v15 = [v14 recordIDsForIDSSyncEngine:self];
        [array addObjectsFromArray:v15];
      }

      v11 = [(NSMapTable *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v16 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore unknownRecordIDsInRecordIDs:array];
  metadataStore = self->_metadataStore;
  date = [MEMORY[0x277CBEAA8] date];
  [(DNDSIDSSyncEngineMetadataStoring *)metadataStore setLastModifiedDate:date forRecordIDs:v16];

  v19 = [v16 arrayByAddingObjectsFromArray:v24];
  [(DNDSIDSSyncEngine *)self _queue_sendModifiedRecordIDs:v19 deletedRecordIDs:v7 toDeviceWithIdentifier:identifierCopy];

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendAckWithMetadata:(id)metadata forAction:(id)action toDeviceWithIdentifier:(id)identifier
{
  v48 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  actionCopy = action;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v29 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v30 = "Will not send ack because keybag is locked";
LABEL_18:
    _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    goto LABEL_19;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v29 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v30 = "Will not send ack because sync is inactive";
    goto LABEL_18;
  }

  v11 = DNDSLogIDSSyncEngine;
  if (actionCopy)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      *buf = 138543618;
      v45 = actionCopy;
      v46 = 2050;
      v47 = [metadataCopy count];
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Sending ack for action %{public}@ with %{public}llu record metadata items", buf, 0x16u);
    }

    v13 = objc_alloc_init(DNDSApplicationIdentifierMapper);
    v32 = objc_alloc_init(DNDSContactProvider);
    v33 = v13;
    v14 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:3 redactSensitiveData:0 contactProvider:v32 applicationIdentifierMapper:v13];
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = metadataCopy;
    v16 = metadataCopy;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentationWithContext:v14];
          [array addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v18);
    }

    v41[0] = @"action";
    v41[1] = @"ackAction";
    v42[0] = @"ack";
    v42[1] = actionCopy;
    v42[2] = array;
    v41[2] = @"metadataAck";
    v41[3] = @"syncDate";
    v22 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v24 = [v22 numberWithDouble:?];
    v42[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

    v26 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
    syncService = self->_syncService;
    configurationSyncProtocolVersion = [(DNDSPairedDevice *)self->_pairedDevice configurationSyncProtocolVersion];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __81__DNDSIDSSyncEngine__queue_sendAckWithMetadata_forAction_toDeviceWithIdentifier___block_invoke;
    v35[3] = &unk_278F89F70;
    v36 = v16;
    [(DNDSSyncService *)syncService sendMessage:v25 withVersionNumber:configurationSyncProtocolVersion messageType:@"syncEngine" toDestinations:v26 completionHandler:v35];

    metadataCopy = v34;
  }

  else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    [DNDSIDSSyncEngine _queue_sendAckWithMetadata:forAction:toDeviceWithIdentifier:];
  }

LABEL_19:

  v31 = *MEMORY[0x277D85DE8];
}

void __81__DNDSIDSSyncEngine__queue_sendAckWithMetadata_forAction_toDeviceWithIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DNDSLogIDSSyncEngine;
  if (a2)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v10 = 134349056;
      v11 = [v7 count];
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sent %{public}llu record metadata items in ack", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    __81__DNDSIDSSyncEngine__queue_sendAckWithMetadata_forAction_toDeviceWithIdentifier___block_invoke_cold_1();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendUnlockMessageToDeviceWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v7 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v10 = 0;
    v8 = "Will not send unlock message because keybag is locked";
LABEL_8:
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 2u);
    goto LABEL_9;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v7 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v10 = 0;
    v8 = "Will not send unlock message because sync is inactive";
    goto LABEL_8;
  }

  v11 = @"action";
  v12[0] = @"unlock";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  [(DNDSSyncService *)self->_syncService sendMessage:v5 withVersionNumber:[(DNDSPairedDevice *)self->_pairedDevice configurationSyncProtocolVersion] messageType:@"syncEngine" toDestinations:v6 completionHandler:&__block_literal_global];

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

void __68__DNDSIDSSyncEngine__queue_sendUnlockMessageToDeviceWithIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = DNDSLogIDSSyncEngine;
  if (a2)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Sent unlock message", v6, 2u);
    }
  }

  else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    __68__DNDSIDSSyncEngine__queue_sendUnlockMessageToDeviceWithIdentifier___block_invoke_cold_1();
  }
}

- (void)_queue_sendResyncMessageToDeviceWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v7 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v10 = 0;
    v8 = "Will not sync because keybag is locked";
LABEL_8:
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 2u);
    goto LABEL_9;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v7 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v10 = 0;
    v8 = "Will not send resync message because sync is inactive";
    goto LABEL_8;
  }

  v11 = @"action";
  v12[0] = @"resync";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  [(DNDSSyncService *)self->_syncService sendMessage:v5 withVersionNumber:[(DNDSPairedDevice *)self->_pairedDevice configurationSyncProtocolVersion] messageType:@"syncEngine" toDestinations:v6 completionHandler:&__block_literal_global_83];

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

void __68__DNDSIDSSyncEngine__queue_sendResyncMessageToDeviceWithIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = DNDSLogIDSSyncEngine;
  if (a2)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Sent resync message", v6, 2u);
    }
  }

  else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    __68__DNDSIDSSyncEngine__queue_sendResyncMessageToDeviceWithIdentifier___block_invoke_cold_1();
  }
}

- (void)_queue_sendModifiedRecordIDs:(id)ds deletedRecordIDs:(id)iDs toDeviceWithIdentifier:(id)identifier
{
  v105 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v18 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    *buf = 0;
    v19 = "Will not send records because keybag is locked";
LABEL_20:
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    goto LABEL_69;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v18 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    *buf = 0;
    v19 = "Will not send records because sync is inactive";
    goto LABEL_20;
  }

  if (!identifierCopy)
  {
    v18 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    *buf = 0;
    v19 = "Will not send records because pairedDeviceIdentifier is nil";
    goto LABEL_20;
  }

  if (![dsCopy count] && !objc_msgSend(iDsCopy, "count"))
  {
    goto LABEL_69;
  }

  v11 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 134349312;
    v102 = [dsCopy count];
    v103 = 2048;
    v104 = [iDsCopy count];
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Sending %{public}llu modified records and %{publi}llu deleted record IDs", buf, 0x16u);
  }

  role = self->_role;
  v75 = iDsCopy;
  v73 = identifierCopy;
  if (role == 1)
  {
    goto LABEL_13;
  }

  if (!role)
  {
    v14 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore hasPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy];
    v15 = DNDSLogIDSSyncEngine;
    v16 = os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Paired device has never synced; sending as replace", buf, 2u);
      }

      [(DNDSIDSSyncEngine *)self _queue_removeAllInflightMetadata];
      [(DNDSIDSSyncEngine *)self _queue_cancelInflightExpirationTimer];
      v17 = @"replace";
      goto LABEL_25;
    }

    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Paired device has synced before; sending as update", buf, 2u);
    }

LABEL_13:
    v17 = @"update";
LABEL_25:
    v70 = v17;
    goto LABEL_26;
  }

  v70 = 0;
LABEL_26:
  v20 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v71 = objc_alloc_init(DNDSContactProvider);
  v72 = v20;
  v79 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:3 redactSensitiveData:0 contactProvider:v71 applicationIdentifierMapper:v20];
  array = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CBEB58] set];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = dsCopy;
  obj = dsCopy;
  v22 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v90;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v90 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v89 + 1) + 8 * i);
        v27 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore recordMetadataForRecordID:v26, v70];
        if (v27)
        {
          if ([(NSMutableSet *)self->_inflightMetadata containsObject:v27])
          {
            v28 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
              recordID = [v27 recordID];
              *buf = 138543362;
              v102 = recordID;
              _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_DEFAULT, "Metadata for modified record with ID %{public}@ is already syncing", buf, 0xCu);
            }
          }

          else
          {
            v31 = [[DNDSIDSRecord alloc] initWithMetadata:v27];
            v32 = [v26 zone];
            v33 = [(DNDSIDSSyncEngine *)self _queue_dataSourceForZone:v32];

            [v33 idsSyncEngine:self prepareRecordToSave:v31];
            v34 = [(DNDSIDSRecord *)v31 dictionaryRepresentationWithContext:v79];
            if (v34)
            {
              [array addObject:v34];
              [v21 addObject:v27];
            }

            else
            {
              v35 = DNDSLogIDSSyncEngine;
              if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
              {
                [(DNDSIDSSyncEngine *)&v98 _queue_sendModifiedRecordIDs:v35 deletedRecordIDs:v27 toDeviceWithIdentifier:&v99];
              }
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v23);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v36 = v75;
  v37 = [v36 countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v86;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v86 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore recordMetadataForRecordID:*(*(&v85 + 1) + 8 * j), v70];
        if (v41)
        {
          if ([(NSMutableSet *)self->_inflightMetadata containsObject:v41])
          {
            v42 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v42;
              recordID2 = [v41 recordID];
              *buf = 138543362;
              v102 = recordID2;
              _os_log_impl(&dword_24912E000, v43, OS_LOG_TYPE_DEFAULT, "Metadata for deleted record with ID %{public}@ is already syncing", buf, 0xCu);
            }
          }

          else
          {
            v45 = [v41 dictionaryRepresentationWithContext:v79];
            if (v45)
            {
              [array2 addObject:v45];
              [v21 addObject:v41];
            }

            else
            {
              v46 = DNDSLogIDSSyncEngine;
              if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
              {
                [(DNDSIDSSyncEngine *)&v95 _queue_sendModifiedRecordIDs:v46 deletedRecordIDs:v41 toDeviceWithIdentifier:&v96];
              }
            }
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v38);
  }

  v47 = [v21 count];
  v48 = DNDSLogIDSSyncEngine;
  v49 = os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT);
  if (v47)
  {
    identifierCopy = v73;
    if (v49)
    {
      v50 = v48;
      v51 = [array count];
      v52 = [array2 count];
      *buf = 134349312;
      v102 = v51;
      v103 = 2050;
      v104 = v52;
      _os_log_impl(&dword_24912E000, v50, OS_LOG_TYPE_DEFAULT, "Syncing %{public}llu modifications and %{public}llu deletions", buf, 0x16u);
    }

    v93[0] = @"action";
    v93[1] = @"modifiedRecords";
    v94[0] = v70;
    v94[1] = array;
    v93[2] = @"deletedMetadata";
    v94[2] = array2;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:{3, v70}];
    v54 = [MEMORY[0x277CBEB98] setWithObject:v73];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(NSMutableDictionary *)self->_inflightMetadataByRequestIdentifier setObject:v21 forKeyedSubscript:uUIDString];
    date = [MEMORY[0x277CBEAA8] date];
    [(NSMutableDictionary *)self->_inflightDateByRequestIdentifier setObject:date forKeyedSubscript:uUIDString];

    [(NSMutableSet *)self->_inflightMetadata unionSet:v21];
    [(DNDSIDSSyncEngine *)self _queue_restartInflightExpirationTimer];
    v58 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      v60 = [v21 count];
      v61 = [(NSMutableSet *)self->_inflightMetadata count];
      *buf = 134349312;
      v102 = v60;
      v103 = 2050;
      v104 = v61;
      _os_log_impl(&dword_24912E000, v59, OS_LOG_TYPE_DEFAULT, "Added %{public}llu inflight records; %{public}llu remaining", buf, 0x16u);
    }

    v62 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      inflightMetadataByRequestIdentifier = self->_inflightMetadataByRequestIdentifier;
      v64 = v62;
      v65 = [(NSMutableDictionary *)inflightMetadataByRequestIdentifier count];
      *buf = 134349056;
      v102 = v65;
      _os_log_impl(&dword_24912E000, v64, OS_LOG_TYPE_DEFAULT, "%{public}llu outstanding request identifiers", buf, 0xCu);
    }

    syncService = self->_syncService;
    configurationSyncProtocolVersion = [(DNDSPairedDevice *)self->_pairedDevice configurationSyncProtocolVersion];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke;
    v80[3] = &unk_278F89FE0;
    v80[4] = self;
    v81 = uUIDString;
    v82 = obj;
    v83 = v36;
    v84 = v21;
    v68 = uUIDString;
    [(DNDSSyncService *)syncService sendMessage:v53 withVersionNumber:configurationSyncProtocolVersion messageType:@"syncEngine" toDestinations:v54 identifyingCompletionHandler:v80];
  }

  else
  {
    identifierCopy = v73;
    if (v49)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Update message is empty; will not send", buf, 2u);
    }
  }

  dsCopy = v74;
  iDsCopy = v75;
LABEL_69:

  v69 = *MEMORY[0x277D85DE8];
}

void __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke_2;
  block[3] = &unk_278F89FB8;
  v16 = *(a1 + 32);
  v9 = *(v16 + 56);
  v10 = *(&v16 + 1);
  v23 = a2;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v18 = v16;
  v19 = v13;
  v20 = v7;
  v21 = *(a1 + 64);
  v22 = v8;
  v14 = v8;
  v15 = v7;
  dispatch_sync(v9, block);
}

uint64_t __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 96) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 104) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = DNDSLogIDSSyncEngine;
  if (*(a1 + 88) == 1)
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v4 = v2;
      v5 = [v3 count];
      v6 = [*(a1 + 56) count];
      v10 = 134349312;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Sent %{public}llu modified record IDs and %{publi}llu deleted record IDs", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 96) setObject:*(a1 + 72) forKeyedSubscript:*(a1 + 64)];
    v7 = [MEMORY[0x277CBEAA8] date];
    [*(*(a1 + 32) + 104) setObject:v7 forKeyedSubscript:*(a1 + 64)];

    result = [*(a1 + 32) _queue_restartInflightExpirationTimer];
  }

  else
  {
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
    {
      __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke_2_cold_1(a1);
    }

    [*(*(a1 + 32) + 112) minusSet:*(a1 + 72)];
    result = [*(a1 + 32) _queue_startRetryTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_startRetryTimer
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_retriesAvailable)
  {
    if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
    {
      if ((~LODWORD(self->_syncState) & 7) == 0)
      {
        retriesAvailable = self->_retriesAvailable;
        self->_retriesAvailable = retriesAvailable - 1;
        v4 = 4 - retriesAvailable;
        v5 = 1 << (4 - retriesAvailable);
        v6 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v17 = 16 * v5;
          _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Retry timer will fire in %llus", buf, 0xCu);
        }

        v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
        retryTimer = self->_retryTimer;
        self->_retryTimer = v7;

        v9 = self->_retryTimer;
        v10 = dispatch_time(0, 16000000000 * v5);
        dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
        v11 = self->_retryTimer;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __43__DNDSIDSSyncEngine__queue_startRetryTimer__block_invoke;
        v15[3] = &unk_278F8A008;
        v15[4] = self;
        v15[5] = v4;
        dispatch_source_set_event_handler(v11, v15);
        dispatch_resume(self->_retryTimer);
        goto LABEL_14;
      }

      v12 = DNDSLogIDSSyncEngine;
      if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v13 = "Will not set retry timer because sync is inactive";
    }

    else
    {
      v12 = DNDSLogIDSSyncEngine;
      if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v13 = "Will not set retry timer because keybag is locked";
    }

    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_14;
  }

  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    [DNDSIDSSyncEngine _queue_startRetryTimer];
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

void __43__DNDSIDSSyncEngine__queue_startRetryTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 134349056;
    v9 = v3;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Retry timer fired (attempt #%{public}llu)", &v8, 0xCu);
  }

  [*(a1 + 32) _queue_cancelRetryTimer];
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5)
  {
    v6 = [v5 deviceIdentifier];
    [v4 _queue_syncDataSourcesToDeviceWithIdentifier:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resetRetryTimer
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(DNDSIDSSyncEngine *)self _queue_cancelRetryTimer])
  {
    v3 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Resetting retry timer", v4, 2u);
    }

    self->_retriesAvailable = 3;
  }
}

- (BOOL)_queue_cancelRetryTimer
{
  dispatch_assert_queue_V2(self->_queue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v4 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling retry timer", v7, 2u);
    }

    dispatch_source_cancel(self->_retryTimer);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  return retryTimer != 0;
}

- (double)_queue_earliestExpirationTimeSinceNowForInflightMetadata
{
  v22 = *MEMORY[0x277D85DE8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_inflightDateByRequestIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_inflightDateByRequestIdentifier objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v8), v17];
        v10 = [v9 earlierDate:distantFuture];

        if (v10 == v9)
        {
          v11 = v9;

          distantFuture = v11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = [distantFuture dateByAddingTimeInterval:self->_inflightExpirationTime];
  [v12 timeIntervalSinceNow];
  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_queue_restartInflightExpirationTimer
{
  [(DNDSIDSSyncEngine *)self _queue_cancelInflightExpirationTimer];

  [(DNDSIDSSyncEngine *)self _queue_startInflightExpirationTimer];
}

- (void)_queue_startInflightExpirationTimer
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (![(NSMutableSet *)self->_inflightMetadata count])
  {
    v11 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "No inflight metadata; will not start expiration timer";
LABEL_13:
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_14;
  }

  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v11 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Will not set expiration timer because keybag is locked";
    goto LABEL_13;
  }

  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v11 = DNDSLogIDSSyncEngine;
    if (!os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Will not set expiration retry timer because sync is inactive";
    goto LABEL_13;
  }

  [(DNDSIDSSyncEngine *)self _queue_earliestExpirationTimeSinceNowForInflightMetadata];
  v4 = (v3 * 1000000000.0);
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Expiration timer will fire in %llus", buf, 0xCu);
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  inflightExpirationTimer = self->_inflightExpirationTimer;
  self->_inflightExpirationTimer = v6;

  v8 = self->_inflightExpirationTimer;
  v9 = dispatch_time(0, v4);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10 = self->_inflightExpirationTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__DNDSIDSSyncEngine__queue_startInflightExpirationTimer__block_invoke;
  handler[3] = &unk_278F89ED0;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_inflightExpirationTimer);
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __56__DNDSIDSSyncEngine__queue_startInflightExpirationTimer__block_invoke(uint64_t a1)
{
  v2 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Expiration timer fired", v6, 2u);
  }

  [*(a1 + 32) _queue_cancelInflightExpirationTimer];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 _queue_removeAllInflightMetadataWithExpirationDate:v4];

  result = *(*(a1 + 32) + 136);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_queue_cancelInflightExpirationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  inflightExpirationTimer = self->_inflightExpirationTimer;
  if (inflightExpirationTimer)
  {
    v4 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling expiration timer", v7, 2u);
    }

    dispatch_source_cancel(self->_inflightExpirationTimer);
    v5 = self->_inflightExpirationTimer;
    self->_inflightExpirationTimer = 0;
  }

  return inflightExpirationTimer != 0;
}

- (void)_queue_removeAllInflightMetadata
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableSet *)self->_inflightMetadata removeAllObjects];
  [(NSMutableDictionary *)self->_inflightMetadataByRequestIdentifier removeAllObjects];
  inflightDateByRequestIdentifier = self->_inflightDateByRequestIdentifier;

  [(NSMutableDictionary *)inflightDateByRequestIdentifier removeAllObjects];
}

- (void)_queue_removeAllInflightMetadataWithExpirationDate:(id)date
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  v22 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_inflightDateByRequestIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_inflightDateByRequestIdentifier objectForKeyedSubscript:v10];
        v12 = [v11 dateByAddingTimeInterval:self->_inflightExpirationTime];
        v13 = [dateCopy laterDate:v12];

        if (v13 == dateCopy)
        {
          [v22 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v22;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        v20 = [(NSMutableDictionary *)self->_inflightMetadataByRequestIdentifier objectForKeyedSubscript:v19];
        [(NSMutableDictionary *)self->_inflightMetadataByRequestIdentifier setObject:0 forKeyedSubscript:v19];
        [(NSMutableDictionary *)self->_inflightDateByRequestIdentifier setObject:0 forKeyedSubscript:v19];
        [(NSMutableSet *)self->_inflightMetadata minusSet:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if ((~LODWORD(self->_syncState) & 7) != 0)
  {
    v9 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Will not handle message because sync is inactive", v10, 2u);
    }
  }

  else
  {
    v8 = [messageCopy bs_safeStringForKey:@"action"];
    if ([v8 isEqualToString:@"update"])
    {
      [(DNDSIDSSyncEngine *)self _queue_handleUpdateMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
    }

    else if ([v8 isEqualToString:@"replace"])
    {
      [(DNDSIDSSyncEngine *)self _queue_handleReplaceMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
    }

    else if ([v8 isEqualToString:@"ack"])
    {
      [(DNDSIDSSyncEngine *)self _queue_handleAckMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
    }

    else if ([v8 isEqualToString:@"unlock"])
    {
      [(DNDSIDSSyncEngine *)self _queue_handleUnlockMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
    }

    else if ([v8 isEqualToString:@"resync"])
    {
      [(DNDSIDSSyncEngine *)self _queue_handleResyncMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
    }

    else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
    {
      [DNDSIDSSyncEngine _queue_handleMessage:fromPairedDeviceIdentifier:];
    }
  }
}

- (void)_queue_handleResyncMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v7 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Received resync message", v8, 2u);
  }

  [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore removePairedDeviceIdentifier:identifierCopy];
  [(DNDSIDSSyncEngine *)self _queue_removeAllInflightMetadata];
  [(DNDSIDSSyncEngine *)self _queue_cancelInflightExpirationTimer];
  [(DNDSIDSSyncEngine *)self _queue_syncDataSourcesToDeviceWithIdentifier:identifierCopy];
}

- (void)_queue_handleAckMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [messageCopy bs_safeArrayForKey:@"metadataAck"];
  v27 = [messageCopy bs_safeNumberForKey:@"syncDate"];
  v8 = [messageCopy bs_safeStringForKey:@"ackAction"];
  v9 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v8;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Received ack message for action %{public}@", buf, 0xCu);
  }

  v26 = v8;
  v10 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v24 = objc_alloc_init(DNDSContactProvider);
  v25 = v10;
  v11 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:3 redactSensitiveData:0 contactProvider:v24 applicationIdentifierMapper:v10];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:*(*(&v29 + 1) + 8 * i) context:v11];
        [array addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v19 = MEMORY[0x277CBEAA8];
  [v27 doubleValue];
  v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
  if ([v26 isEqualToString:@"replace"])
  {
    v21 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Paired device has performed an initial sync", buf, 2u);
    }

    [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore setPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy];
  }

  role = self->_role;
  if (role == 1)
  {
    [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore setSyncDate:v20 forRecordsMatchingMetadata:array forPairedDeviceIdentifier:identifierCopy];
    if (([(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore hasPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy]& 1) == 0)
    {
      [(DNDSIDSSyncEngine *)self _queue_sendResyncMessageToDeviceWithIdentifier:identifierCopy];
    }
  }

  else if (!role && [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore hasPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy])
  {
    [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore setSyncDate:v20 forRecordsMatchingMetadata:array forPairedDeviceIdentifier:identifierCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleUnlockMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v7 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Received unlock message", v9, 2u);
  }

  didReceiveUnlockMessage = self->_didReceiveUnlockMessage;
  if (didReceiveUnlockMessage)
  {
    didReceiveUnlockMessage[2]();
  }

  [(DNDSIDSSyncEngine *)self _queue_removeAllInflightMetadata];
  [(DNDSIDSSyncEngine *)self _queue_cancelInflightExpirationTimer];
  [(DNDSIDSSyncEngine *)self _queue_syncDataSourcesToDeviceWithIdentifier:identifierCopy];
}

- (void)_queue_handleUpdateMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  v92 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received update message", buf, 2u);
  }

  if (self->_role || ([(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore hasPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy]& 1) != 0)
  {
    v71 = identifierCopy;
    v9 = objc_alloc_init(DNDSApplicationIdentifierMapper);
    v64 = objc_alloc_init(DNDSContactProvider);
    v65 = v9;
    v73 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:3 redactSensitiveData:0 contactProvider:v64 applicationIdentifierMapper:v9];
    v10 = [messageCopy bs_safeArrayForKey:@"modifiedRecords"];
    v66 = messageCopy;
    v63 = [messageCopy bs_safeArrayForKey:@"deletedMetadata"];
    array = [MEMORY[0x277CBEB18] array];
    date = [MEMORY[0x277CBEAA8] date];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v11)
    {
      v12 = v11;
      v68 = *v79;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v79 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [DNDSIDSRecord newWithDictionaryRepresentation:*(*(&v78 + 1) + 8 * i) context:v73];
          metadataStore = self->_metadataStore;
          recordID = [v14 recordID];
          v17 = [(DNDSIDSSyncEngineMetadataStoring *)metadataStore recordMetadataForRecordID:recordID];

          if (!v17)
          {
            goto LABEL_14;
          }

          lastModified = [v17 lastModified];
          metadata = [v14 metadata];
          lastModified2 = [metadata lastModified];
          v21 = [lastModified earlierDate:lastModified2];
          lastModified3 = [v17 lastModified];

          if (v21 == lastModified3)
          {
LABEL_14:
            recordID2 = [v14 recordID];
            v25 = [recordID2 zone];
            v26 = [(DNDSIDSSyncEngine *)self _queue_dataSourceForZone:v25];

            v27 = self->_metadataStore;
            metadata2 = [v14 metadata];
            v90 = metadata2;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
            [(DNDSIDSSyncEngineMetadataStoring *)v27 updateMetadata:v29];

            v30 = self->_metadataStore;
            recordID3 = [v14 recordID];
            v89 = recordID3;
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
            [(DNDSIDSSyncEngineMetadataStoring *)v30 setSyncDate:date forRecordIDs:v32 forPairedDeviceIdentifier:v71];

            v33 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138478083;
              v86 = v14;
              v87 = 2114;
              v88 = v26;
              _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_DEFAULT, "Sending modified record %{private}@ to data source %{public}@", buf, 0x16u);
            }

            [v26 idsSyncEngine:self didFetchRecord:v14];
          }

          else
          {
            v23 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v86 = v14;
              _os_log_error_impl(&dword_24912E000, v23, OS_LOG_TYPE_ERROR, "Incoming modified record %{private}@ has an older lastModified date than the existing record", buf, 0xCu);
            }
          }

          metadata3 = [v14 metadata];
          [array addObject:metadata3];
        }

        v12 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v12);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v69 = v63;
    v35 = [v69 countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v75;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v75 != v37)
          {
            objc_enumerationMutation(v69);
          }

          v39 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:*(*(&v74 + 1) + 8 * j) context:v73];
          v40 = self->_metadataStore;
          recordID4 = [v39 recordID];
          v42 = [(DNDSIDSSyncEngineMetadataStoring *)v40 recordMetadataForRecordID:recordID4];

          if (!v42)
          {
            goto LABEL_28;
          }

          lastModified4 = [v42 lastModified];
          lastModified5 = [v39 lastModified];
          v45 = [lastModified4 earlierDate:lastModified5];
          lastModified6 = [v42 lastModified];

          if (v45 == lastModified6)
          {
LABEL_28:
            recordID5 = [v39 recordID];
            v49 = [recordID5 zone];
            v50 = [(DNDSIDSSyncEngine *)self _queue_dataSourceForZone:v49];

            v51 = self->_metadataStore;
            v83 = v39;
            v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
            [(DNDSIDSSyncEngineMetadataStoring *)v51 updateMetadata:v52];

            v53 = self->_metadataStore;
            recordID6 = [v39 recordID];
            v82 = recordID6;
            v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
            [(DNDSIDSSyncEngineMetadataStoring *)v53 setSyncDate:date forRecordIDs:v55 forPairedDeviceIdentifier:v71];

            v56 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
              recordID7 = [v39 recordID];
              *buf = 138478083;
              v86 = recordID7;
              v87 = 2114;
              v88 = v50;
              _os_log_impl(&dword_24912E000, v57, OS_LOG_TYPE_DEFAULT, "Sending deleted recordID %{private}@ to data source %{public}@", buf, 0x16u);
            }

            recordID8 = [v39 recordID];
            [v50 idsSyncEngine:self recordWithIDWasDeleted:recordID8];
          }

          else
          {
            v47 = DNDSLogIDSSyncEngine;
            if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v86 = v39;
              _os_log_error_impl(&dword_24912E000, v47, OS_LOG_TYPE_ERROR, "Incoming deleted metadata %{private}@ has an older lastModified date than the existing metadata", buf, 0xCu);
            }
          }

          [array addObject:v39];
        }

        v36 = [v69 countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v36);
    }

    messageCopy = v66;
    v60 = [v66 bs_safeStringForKey:@"action"];
    identifierCopy = v71;
    [(DNDSIDSSyncEngine *)self _queue_sendAckWithMetadata:array forAction:v60 toDeviceWithIdentifier:v71];
  }

  else
  {
    v62 = DNDSLogIDSSyncEngine;
    if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v62, OS_LOG_TYPE_DEFAULT, "Ignoring update from paired device that we have never synced with", buf, 2u);
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleReplaceMessage:(id)message fromPairedDeviceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Received replace message", buf, 2u);
  }

  if (self->_role)
  {
    v9 = [(NSMapTable *)self->_sourcesByZone copy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v10 objectForKey:{*(*(&v17 + 1) + 8 * v14), v17}];
          [v15 purgeRecordsForIDSSyncEngine:self];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore purge];
    [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore setPerformedInitialSyncForPairedDeviceIdentifier:identifierCopy];
    [(DNDSIDSSyncEngine *)self _queue_handleUpdateMessage:messageCopy fromPairedDeviceIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
  {
    [DNDSIDSSyncEngine _queue_handleReplaceMessage:fromPairedDeviceIdentifier:];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_validate
{
  dispatch_assert_queue_V2(self->_queue);
  [(DNDSIDSSyncEngine *)self _queue_removeAllInflightMetadata];
  [(DNDSIDSSyncEngine *)self _queue_cancelInflightExpirationTimer];
  if ((~LODWORD(self->_syncState) & 7) == 0)
  {
    if (self->_pairedDevice)
    {
      if ([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot])
      {
        metadataStore = self->_metadataStore;
        date = [MEMORY[0x277CBEAA8] date];
        LOBYTE(metadataStore) = [(DNDSIDSSyncEngineMetadataStoring *)metadataStore isValidAtDate:date];

        if ((metadataStore & 1) == 0)
        {
          v5 = DNDSLogIDSSyncEngine;
          if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
          {
            *v7 = 0;
            _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Metadata store is invalid; purging and syncing", v7, 2u);
          }

          [(DNDSIDSSyncEngineMetadataStoring *)self->_metadataStore purge];
          deviceIdentifier = [(DNDSPairedDevice *)self->_pairedDevice deviceIdentifier];
          [(DNDSIDSSyncEngine *)self _queue_syncDataSourcesToDeviceWithIdentifier:deviceIdentifier];
        }
      }
    }
  }
}

void __102__DNDSIDSSyncEngine_syncService_didReceiveMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Ignoring incoming message as the sync engine is disabled: %{public}llu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Rejecting incoming message as the sync engine is disabled: %{public}llu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a2 + 24);
  OUTLINED_FUNCTION_2();
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Rejecting incoming message as it is not from the active device: deviceIdentifier=%{public}@, pairedDevice=%{public}@", v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __112__DNDSIDSSyncEngine_syncService_shouldAcceptIncomingMessage_withVersionNumber_messageType_fromDeviceIdentifier___block_invoke_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Ignoring message send callback as the sync engine is disabled: %{public}llu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__DNDSIDSSyncEngine_syncService_didSendWithRequestIdentifier_withSuccess_error___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v2, v3, "Error in didSendWithRequestIdentifier sending record modifications: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__DNDSIDSSyncEngine__queue_sendAckWithMetadata_forAction_toDeviceWithIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error sending metadata ack: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__DNDSIDSSyncEngine__queue_sendUnlockMessageToDeviceWithIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to send unlock message: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__DNDSIDSSyncEngine__queue_sendResyncMessageToDeviceWithIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to send resync message: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendModifiedRecordIDs:(void *)a3 deletedRecordIDs:(void *)a4 toDeviceWithIdentifier:.cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 recordID];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_5(&dword_24912E000, v9, v10, "Modified record could not be serialized: %@");
}

- (void)_queue_sendModifiedRecordIDs:(void *)a3 deletedRecordIDs:(void *)a4 toDeviceWithIdentifier:.cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 recordID];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_5(&dword_24912E000, v9, v10, "Deleted record metadata could not be serialized: %@");
}

void __90__DNDSIDSSyncEngine__queue_sendModifiedRecordIDs_deletedRecordIDs_toDeviceWithIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v2, v3, "Error in sendMessage sending record modifications: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleMessage:fromPairedDeviceIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Unknown action %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end