@interface DNDSSyncEngine
+ (DNDSSyncEngine)sharedInstance;
- (BOOL)_lock_encryptionAvailable;
- (BOOL)_lock_isSyncAvailable;
- (BOOL)_lock_isSyncEnabled;
- (BOOL)hasLocalChanges;
- (BOOL)isSyncAvailable;
- (BOOL)isSyncEnabled;
- (BOOL)isSyncPreferenceEnabled;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (DNDSSyncEngine)initWithMetadataStore:(id)store lastChanceDataStore:(id)dataStore syncEngine:(id)engine keybag:(id)keybag syncEnabled:(BOOL)enabled;
- (id)_lock_currentUserRecordID;
- (id)_lock_dataSourceForRecord:(id)record;
- (id)_lock_dataSourceForZoneID:(id)d;
- (id)_lock_dataSources;
- (id)_lock_syncEngine;
- (id)_zoneIDForRecord:(id)record;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted;
- (int64_t)_lock_currentAccountStatus;
- (unint64_t)cloudSyncState;
- (void)_fetchAccountStateWithCompletionHandler:(id)handler;
- (void)_handleAccountFetchWithUpdatedUserRecordID:(id)d updatedAccountStatus:(int64_t)status updatedEncryptionAvailable:(BOOL)available updatedSyncEnabled:(BOOL)enabled;
- (void)_initialSyncForDataSource:(id)source withZoneName:(id)name;
- (void)_initialSyncForDataSources;
- (void)_lock_destroySyncEngine;
- (void)_lock_purgeData;
- (void)_lock_setCurrentAccountStatus:(int64_t)status;
- (void)_lock_setCurrentUserRecordID:(id)d;
- (void)_migrateOldStoresWithSyncEnabledState:(BOOL)state;
- (void)_purgeDataFromDataSources;
- (void)_retryLastChanceRecords;
- (void)_retryLastChanceRecordsForDataSource:(id)source withZoneName:(id)name;
- (void)_updateAccountWithCurrentSyncEnabledState;
- (void)_updateAccountWithSyncEnabledState:(BOOL)state;
- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete;
- (void)addRecordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete;
- (void)fetchChanges:(BOOL)changes withCompletionHandler:(id)handler;
- (void)handleDeletedRecordID:(id)d;
- (void)handleFetchedRecord:(id)record;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)purgeZoneWithID:(id)d;
- (void)removeZoneWithID:(id)d;
- (void)sendChangesWithCompletionHandler:(id)handler;
- (void)setDataSource:(id)source forZoneName:(id)name;
- (void)setTesting:(BOOL)testing;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted;
- (void)syncEngine:(id)engine zoneWithIDWasPurged:(id)purged;
@end

@implementation DNDSSyncEngine

+ (DNDSSyncEngine)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[DNDSSyncEngine sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

void __32__DNDSSyncEngine_sharedInstance__block_invoke()
{
  v0 = [DNDSSyncEngineMetadataStore alloc];
  v1 = [MEMORY[0x277CBEBC0] dnds_syncEngineMetadataFileURL];
  v10 = [(DNDSSyncEngineMetadataStore *)v0 initWithURL:v1];

  v2 = [DNDSSyncEngineLastChanceDataStore alloc];
  v3 = [MEMORY[0x277CBEBC0] dnds_syncEngineLastChanceFileURL];
  v4 = [(DNDSSyncEngineLastChanceDataStore *)v2 initWithURL:v3];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"disableCloudSync"];

  v7 = +[DNDSKeybag sharedInstance];
  v8 = [[DNDSSyncEngine alloc] initWithMetadataStore:v10 lastChanceDataStore:v4 keybag:v7 syncEnabled:v6 ^ 1u];
  v9 = sharedInstance_shared;
  sharedInstance_shared = v8;
}

- (DNDSSyncEngine)initWithMetadataStore:(id)store lastChanceDataStore:(id)dataStore syncEngine:(id)engine keybag:(id)keybag syncEnabled:(BOOL)enabled
{
  storeCopy = store;
  dataStoreCopy = dataStore;
  engineCopy = engine;
  keybagCopy = keybag;
  v40.receiver = self;
  v40.super_class = DNDSSyncEngine;
  v17 = [(DNDSSyncEngine *)&v40 init];
  v18 = v17;
  if (v17)
  {
    v35 = keybagCopy;
    v36 = engineCopy;
    v19 = storeCopy;
    v17->_lock._os_unfair_lock_opaque = 0;
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.donotdisturb.server.DNDSSyncEngine", v20);
    syncEngineQueue = v18->_syncEngineQueue;
    v18->_syncEngineQueue = v21;

    v23 = dispatch_source_create(MEMORY[0x277D85CF0], 0, 0, v18->_syncEngineQueue);
    accountUpdateSource = v18->_accountUpdateSource;
    v18->_accountUpdateSource = v23;

    v25 = v18->_accountUpdateSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __90__DNDSSyncEngine_initWithMetadataStore_lastChanceDataStore_syncEngine_keybag_syncEnabled___block_invoke;
    handler[3] = &unk_278F89ED0;
    v26 = v18;
    v39 = v26;
    dispatch_source_set_event_handler(v25, handler);
    dispatch_activate(v18->_accountUpdateSource);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    v28 = v26[6];
    v26[6] = strongToWeakObjectsMapTable;

    objc_storeStrong(v26 + 1, store);
    objc_storeStrong(v26 + 8, dataStore);
    objc_storeStrong(v26 + 7, store);
    *(v26 + 78) = 0;
    objc_storeStrong(v26 + 2, engine);
    *(v26 + 73) = 1;
    *(v26 + 76) = 1;
    *(v26 + 72) = enabled;
    *(v26 + 74) = [v26[7] accountStatus] == 1;
    *(v26 + 75) = [v26[7] isEncryptionAvailable];
    v29 = *(v26 + 18) | (*(v26 + 38) << 32);
    if (v29 & 0x10000000000) != 0 || (~v29 & 0x101010100) == 0 && (*(v26 + 38), (v26[9]))
    {
      v30 = DNDSLogCloudSync;
      storeCopy = v19;
      engineCopy = v36;
      if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        objc_storeStrong(v26 + 11, keybag);
        [v26[11] addObserver:v26];
        DNDSRegisterSysdiagnoseDataProvider(v26);

        keybagCopy = v35;
        goto LABEL_20;
      }

      *buf = 0;
      v31 = "Sync engine will be enabled on startup";
    }

    else
    {
      *(v26 + 38);
      if ((v26[9] & 0x100) != 0)
      {
        storeCopy = v19;
      }

      else
      {
        v32 = DNDSLogCloudSync;
        storeCopy = v19;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Sync engine will be disabled on startup because of feature flag", buf, 2u);
        }

        LOBYTE(v29) = *(v26 + 72);
      }

      engineCopy = v36;
      if ((v29 & 1) == 0)
      {
        v33 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_DEFAULT, "Sync engine will be disabled on startup because user setting is disabled", buf, 2u);
        }
      }

      if (*(v26 + 74))
      {
        goto LABEL_19;
      }

      v30 = DNDSLogCloudSync;
      if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v31 = "Sync engine will be disabled on startup because of missing account";
    }

    _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    goto LABEL_19;
  }

LABEL_20:

  return v18;
}

uint64_t __90__DNDSSyncEngine_initWithMetadataStore_lastChanceDataStore_syncEngine_keybag_syncEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  data = dispatch_source_get_data(v2[5]);
  if (data == 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = data;
    if (data != 2)
    {
      v5 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
      {
        __90__DNDSSyncEngine_initWithMetadataStore_lastChanceDataStore_syncEngine_keybag_syncEnabled___block_invoke_cold_1(v5, v4);
      }

      v2 = *(a1 + 32);
    }

    v6 = 1;
  }

  return [(dispatch_source_t *)v2 _syncEngineQueue_updateAccountWithSyncEnabledState:v6];
}

- (unint64_t)cloudSyncState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 4;
  if (!self->_state.accountAvailable)
  {
    v3 = 0;
  }

  if (self->_state.encryptionAvailable)
  {
    v3 |= 2uLL;
  }

  v4 = v3 | self->_state.syncEnabled;
  if (self->_state.supportedDevice)
  {
    v5 = v4 | 8;
  }

  else
  {
    v5 = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)isSyncAvailable
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isSyncAvailable = [(DNDSSyncEngine *)self _lock_isSyncAvailable];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isSyncAvailable;
}

- (BOOL)isSyncEnabled
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isSyncEnabled = [(DNDSSyncEngine *)self _lock_isSyncEnabled];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isSyncEnabled;
}

- (BOOL)isSyncPreferenceEnabled
{
  os_unfair_lock_lock(&self->_lock);
  syncEnabled = self->_state.syncEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return syncEnabled;
}

- (void)setTesting:(BOOL)testing
{
  os_unfair_lock_lock(&self->_lock);
  self->_state.testing = testing;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDataSource:(id)source forZoneName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  sourcesByZoneName = self->_sourcesByZoneName;
  if (sourceCopy)
  {
    v9 = [(NSMapTable *)sourcesByZoneName objectForKey:nameCopy];
    if (!v9 || (v10 = v9, [(NSMapTable *)self->_sourcesByZoneName objectForKey:nameCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == sourceCopy))
    {
      [(NSMapTable *)self->_sourcesByZoneName setObject:sourceCopy forKey:nameCopy];
      v12 = [(DNDSSyncEngineMetadataStoring *)self->_metadataStore addZoneName:nameCopy];
      os_unfair_lock_unlock(&self->_lock);
      if (v12)
      {
        v13 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = nameCopy;
          _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Performing initial sync for new zone: %@", &v15, 0xCu);
        }

        [(DNDSSyncEngine *)self _initialSyncForDataSource:sourceCopy withZoneName:nameCopy];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    [(DNDSSyncEngine *)self _retryLastChanceRecordsForDataSource:sourceCopy withZoneName:nameCopy];
  }

  else
  {
    [(NSMapTable *)sourcesByZoneName removeObjectForKey:nameCopy];
    [(DNDSSyncEngineMetadataStoring *)self->_metadataStore removeZoneName:nameCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete
{
  v15 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    v8 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = saveCopy;
      v13 = 2114;
      v14 = deleteCopy;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Adding record IDs to save: %{public}@; to delete: %{public}@", &v11, 0x16u);
    }

    _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
    [_lock_syncEngine addRecordIDsToSave:saveCopy recordIDsToDelete:deleteCopy];

    if (!self->_syncEngine && self->_allowSyncEngineCreation)
    {
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_FAULT))
      {
        [DNDSSyncEngine addRecordIDsToSave:recordIDsToDelete:];
      }

      _DNDSRequestRadar(@"RecordID change was made before sync engine availability.", 0, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSSyncEngine.m", 329);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addRecordZonesToSave:(id)save recordZoneIDsToDelete:(id)delete
{
  v15 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    v8 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = saveCopy;
      v13 = 2114;
      v14 = deleteCopy;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Adding zones to save: %{public}@; to delete: %{public}@", &v11, 0x16u);
    }

    _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
    [_lock_syncEngine addRecordZonesToSave:saveCopy recordZoneIDsToDelete:deleteCopy];

    if (!self->_syncEngine && self->_allowSyncEngineCreation)
    {
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_FAULT))
      {
        [DNDSSyncEngine addRecordZonesToSave:recordZoneIDsToDelete:];
      }

      _DNDSRequestRadar(@"RecordZoneID change was made before sync engine availability.", 0, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSSyncEngine.m", 346);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
    [_lock_syncEngine modifyPendingChangesWithCompletionHandler:handlerCopy];
  }

  else
  {
    v6 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DNDSSyncEngine_sendChangesWithCompletionHandler___block_invoke;
    block[3] = &unk_278F8BCC8;
    v8 = handlerCopy;
    dispatch_async(v6, block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)fetchChanges:(BOOL)changes withCompletionHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    v7 = DNDSLogCloudSync;
    v8 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
    if (changesCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Forcing sync engine fetch", buf, 2u);
      }

      _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
      [_lock_syncEngine setNeedsToFetchChanges];
    }

    else if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Requesting sync engine fetch", buf, 2u);
    }

    _lock_syncEngine2 = [(DNDSSyncEngine *)self _lock_syncEngine];
    [_lock_syncEngine2 fetchChangesWithCompletionHandler:handlerCopy];
  }

  else
  {
    v10 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__DNDSSyncEngine_fetchChanges_withCompletionHandler___block_invoke;
    block[3] = &unk_278F8BCC8;
    v13 = handlerCopy;
    dispatch_async(v10, block);

    _lock_syncEngine2 = v13;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __45__DNDSSyncEngine_sync_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogCloudSync;
  v5 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Error fetching changes: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Fetched changes", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__DNDSSyncEngine_sync_withCompletionHandler___block_invoke_34;
    v8[3] = &unk_278F8BCF0;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 sendChangesWithCompletionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __45__DNDSSyncEngine_sync_withCompletionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DNDSLogCloudSync;
  if (v3)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __45__DNDSSyncEngine_sync_withCompletionHandler___block_invoke_34_cold_1();
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Sent changes", v6, 2u);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)handleFetchedRecord:(id)record
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  os_unfair_lock_lock(&self->_lock);
  [(DNDSSyncEngineMetadataStoring *)self->_store addRecord:recordCopy];
  v5 = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];
  v6 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:v5];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 syncEngine:self wantsRecord:recordCopy];
  switch(v7)
  {
    case 0:
      v21 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        v26 = 138543618;
        v27 = v5;
        v28 = 2114;
        v29 = recordName;
        _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find data source with zoneID %{public}@ for record %{public}@; sending to last-chance store", &v26, 0x16u);
      }

      goto LABEL_14;
    case 2:
      v17 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v26 = 138543362;
        v27 = recordName2;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Record %{public}@ is from the future; saving what we can and sending to last-chance store", &v26, 0xCu);
      }

      [v6 syncEngine:self didFetchRecord:recordCopy];
LABEL_14:
      os_unfair_lock_lock(&self->_lock);
      [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore addRecord:recordCopy];
      os_unfair_lock_unlock(&self->_lock);
      break;
    case 1:
      lastChanceStore = self->_lastChanceStore;
      recordID3 = [recordCopy recordID];
      v10 = [(DNDSSyncEngineLastChanceDataStoring *)lastChanceStore recordWithID:recordID3];

      if (v10)
      {
        v11 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          recordID4 = [recordCopy recordID];
          recordName3 = [recordID4 recordName];
          v26 = 138543362;
          v27 = recordName3;
          _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Record %{public}@ overrides a previously-stored record in the last-chance store.", &v26, 0xCu);
        }

        v15 = self->_lastChanceStore;
        recordID5 = [recordCopy recordID];
        [(DNDSSyncEngineLastChanceDataStoring *)v15 removeRecordWithID:recordID5];
      }

      [v6 syncEngine:self didFetchRecord:recordCopy];
      break;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleDeletedRecordID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  zoneID = [dCopy zoneID];
  v6 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:zoneID];

  [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore removeRecordWithID:dCopy];
  [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordWithID:dCopy];
  os_unfair_lock_unlock(&self->_lock);
  v7 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v7)
    {
      [DNDSSyncEngine handleDeletedRecordID:];
    }

    [v6 syncEngine:self recordWithIDWasDeleted:dCopy];
  }

  else if (v7)
  {
    [DNDSSyncEngine handleDeletedRecordID:];
  }
}

- (void)removeZoneWithID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  sourcesByZoneName = self->_sourcesByZoneName;
  zoneName = [dCopy zoneName];
  v10 = [(NSMapTable *)sourcesByZoneName objectForKey:zoneName];

  [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore removeRecordsWithZoneID:dCopy];
  [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordsWithZoneID:dCopy];
  metadataStore = self->_metadataStore;
  zoneName2 = [dCopy zoneName];
  [(DNDSSyncEngineMetadataStoring *)metadataStore removeZoneName:zoneName2];

  os_unfair_lock_unlock(&self->_lock);
  zoneName3 = [dCopy zoneName];

  [(DNDSSyncEngine *)self _initialSyncForDataSource:v10 withZoneName:zoneName3];
}

- (void)purgeZoneWithID:(id)d
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:dCopy];
  v6 = [(DNDSSyncEngineMetadataStoring *)self->_store recordIDsWithZoneID:dCopy];
  [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore removeRecordsWithZoneID:dCopy];
  [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordsWithZoneID:dCopy];
  metadataStore = self->_metadataStore;
  zoneName = [dCopy zoneName];
  [(DNDSSyncEngineMetadataStoring *)metadataStore removeZoneName:zoneName];

  os_unfair_lock_unlock(&self->_lock);
  [v5 syncEngine:self zoneWithIDWasDeleted:dCopy removingRecordIDs:v6];
  os_unfair_lock_lock(&self->_lock);
  v9 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:dCopy];
  _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
  v14[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [_lock_syncEngine addRecordZonesToSave:v11 recordZoneIDsToDelete:0];

  os_unfair_lock_unlock(&self->_lock);
  zoneName2 = [dCopy zoneName];

  [(DNDSSyncEngine *)self _initialSyncForDataSource:v5 withZoneName:zoneName2];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasLocalChanges
{
  os_unfair_lock_lock(&self->_lock);
  _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
  hasPendingModifications = [_lock_syncEngine hasPendingModifications];

  os_unfair_lock_unlock(&self->_lock);
  return hasPendingModifications;
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = dCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Deleted record: %{public}@", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordWithID:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  v12 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    recordID = [recordCopy recordID];
    v10 = 138543362;
    v11 = recordID;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Fetched record: %{public}@", &v10, 0xCu);
  }

  [(DNDSSyncEngine *)self handleFetchedRecord:recordCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  v12 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    recordID = [recordCopy recordID];
    v10 = 138543362;
    v11 = recordID;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Saved record: %{public}@", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSSyncEngineMetadataStoring *)self->_store addRecord:recordCopy];
  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Updated metadata", v7, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSSyncEngineMetadataStoring *)self->_store setMetadata:metadataCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  v11 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
  {
    [DNDSSyncEngine syncEngine:v11 failedToDeleteRecordWithID:? error:?];
  }

  os_unfair_lock_lock(&self->_lock);
  zoneID = [dCopy zoneID];
  v13 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:zoneID];
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    [v13 syncEngine:self failedToDeleteRecordWithID:dCopy error:errorCopy];
  }

  else
  {
    v14 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      [DNDSSyncEngine syncEngine:zoneID failedToDeleteRecordWithID:v14 error:dCopy];
    }
  }
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  v11 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
  {
    [DNDSSyncEngine syncEngine:v11 failedToSaveRecord:? error:?];
  }

  domain = [errorCopy domain];
  v13 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v13)
  {
    code = [errorCopy code];
    if (code <= 25)
    {
      if (code == 11)
      {
        v36 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24912E000, v36, OS_LOG_TYPE_DEFAULT, "Record is unknown on the server; flushing metadata and resending", buf, 2u);
        }

        recordID = [recordCopy recordID];
        if (!recordID)
        {
          if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
          {
            [DNDSSyncEngine syncEngine:failedToSaveRecord:error:];
          }

          goto LABEL_49;
        }

        os_unfair_lock_lock(&self->_lock);
        [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordWithID:recordID];
        os_unfair_lock_unlock(&self->_lock);
        v47 = recordID;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [(DNDSSyncEngine *)self addRecordIDsToSave:v19 recordIDsToDelete:0];
        goto LABEL_48;
      }

      if (code != 14)
      {
LABEL_35:
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
        {
          [DNDSSyncEngine syncEngine:failedToSaveRecord:error:];
        }

        goto LABEL_50;
      }

      v24 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Server record has changed; resolving conflict", buf, 2u);
      }

      os_unfair_lock_lock(&self->_lock);
      recordID = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];
      v19 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:recordID];
      if (!v19)
      {
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
        {
          [DNDSSyncEngine syncEngine:failedToSaveRecord:error:];
        }

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_48;
      }

      userInfo = [errorCopy userInfo];
      v26 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      userInfo2 = [errorCopy userInfo];
      zoneName3 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

      if (v26)
      {
        [(DNDSSyncEngineMetadataStoring *)self->_store addRecord:v26];
        os_unfair_lock_unlock(&self->_lock);
        [v19 syncEngine:self resolveConflictBetweenClientRecord:zoneName3 andServerRecord:v26];

LABEL_48:
LABEL_49:

        goto LABEL_50;
      }

      os_unfair_lock_unlock(&self->_lock);
      recordID2 = [zoneName3 recordID];

      if (!recordID2)
      {
        v41 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
        {
          [DNDSSyncEngine syncEngine:v41 failedToSaveRecord:recordCopy error:?];
        }

        goto LABEL_26;
      }

      recordID3 = [zoneName3 recordID];
      v48[0] = recordID3;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      [(DNDSSyncEngine *)self addRecordIDsToSave:v40 recordIDsToDelete:0];
    }

    else
    {
      if (code != 26)
      {
        if (code == 28)
        {
          recordID = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];
          v33 = DNDSLogCloudSync;
          if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
            zoneName = [recordID zoneName];
            *buf = 138543362;
            v46 = zoneName;
            _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "User deleted zone %{public}@; deleting zone", buf, 0xCu);
          }

          if (recordID)
          {
            [(DNDSSyncEngine *)self syncEngine:engineCopy zoneWithIDWasPurged:recordID];
          }

          else if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
          {
            [DNDSSyncEngine syncEngine:failedToSaveRecord:error:];
          }

          goto LABEL_49;
        }

        if (code == 112)
        {
          recordID = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];
          v16 = DNDSLogCloudSync;
          if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            zoneName2 = [recordID zoneName];
            *buf = 138543362;
            v46 = zoneName2;
            _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Missing identity for zone %{public}@; deleting and recreating zone", buf, 0xCu);
          }

          if (!recordID)
          {
            v37 = DNDSLogCloudSync;
            if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "ZoneID is nil; ignoring record", buf, 2u);
            }

            goto LABEL_49;
          }

          os_unfair_lock_lock(&self->_lock);
          v19 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:recordID];
          _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
          v42 = recordID;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
          [_lock_syncEngine addRecordZonesToSave:0 recordZoneIDsToDelete:v21];

          [(DNDSSyncEngineMetadataStoring *)self->_store removeRecordsWithZoneID:recordID];
          os_unfair_lock_unlock(&self->_lock);
          zoneName3 = [recordID zoneName];
          [(DNDSSyncEngine *)self _initialSyncForDataSource:v19 withZoneName:zoneName3];
          goto LABEL_26;
        }

        goto LABEL_35;
      }

      recordID = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];
      v28 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        zoneName4 = [recordID zoneName];
        *buf = 138543362;
        v46 = zoneName4;
        _os_log_impl(&dword_24912E000, v29, OS_LOG_TYPE_DEFAULT, "Zone %{public}@ not found; pushing zone to server", buf, 0xCu);
      }

      if (!recordID)
      {
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
        {
          [DNDSSyncEngine syncEngine:failedToSaveRecord:error:];
        }

        goto LABEL_49;
      }

      v19 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:recordID];
      v44 = v19;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [(DNDSSyncEngine *)self addRecordZonesToSave:v31 recordZoneIDsToDelete:0];

      zoneName3 = [recordCopy recordID];
      v43 = zoneName3;
      recordID3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      [(DNDSSyncEngine *)self addRecordIDsToSave:recordID3 recordIDsToDelete:0];
    }

LABEL_26:
    goto LABEL_48;
  }

  v23 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
  {
    [DNDSSyncEngine syncEngine:v23 failedToSaveRecord:? error:?];
  }

LABEL_50:

  v38 = *MEMORY[0x277D85DE8];
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  dCopy = d;
  v8 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138543362;
    v30 = dCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Creating record to save: %{public}@", &v29, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  zoneID = [dCopy zoneID];
  v10 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:zoneID];
  if (!v10)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_13:
    v11 = 0;
    goto LABEL_21;
  }

  v11 = [(DNDSSyncEngineMetadataStoring *)self->_store recordWithID:dCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
    v12 = [v10 syncEngine:self recordTypeForRecordID:dCopy];
    v11 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:v12 recordID:dCopy];
  }

  v13 = [v10 syncEngine:self prepareRecordToSave:v11];
  if (v13 == 2)
  {
    v23 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      recordID = [v11 recordID];
      recordName = [recordID recordName];
      v29 = 138543362;
      v30 = recordName;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Record %{public}@ has changes from the future; saving healed modifications to last-chance store", &v29, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore addRecord:v11];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (v13 != 1)
    {
      if (v13)
      {
        goto LABEL_21;
      }

      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
      {
        [DNDSSyncEngine syncEngine:recordToSaveForRecordID:];
      }

      goto LABEL_13;
    }

    lastChanceStore = self->_lastChanceStore;
    recordID2 = [v11 recordID];
    v16 = [(DNDSSyncEngineLastChanceDataStoring *)lastChanceStore recordWithID:recordID2];

    if (v16)
    {
      v17 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        recordID3 = [v11 recordID];
        recordName2 = [recordID3 recordName];
        v29 = 138543362;
        v30 = recordName2;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Record %{public}@ was overridden locally; removing record in last-chance store.", &v29, 0xCu);
      }

      v21 = self->_lastChanceStore;
      recordID4 = [v11 recordID];
      [(DNDSSyncEngineLastChanceDataStoring *)v21 removeRecordWithID:recordID4];
    }
  }

LABEL_21:

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  v11 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  v7 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = deletedCopy;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Record was deleted: %{public}@", &v9, 0xCu);
  }

  [(DNDSSyncEngine *)self handleDeletedRecordID:deletedCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6 != 0;
}

- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted
{
  v10 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = deletedCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Zone was deleted: %{public}@", &v8, 0xCu);
  }

  [(DNDSSyncEngine *)self removeZoneWithID:deletedCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine zoneWithIDWasPurged:(id)purged
{
  v10 = *MEMORY[0x277D85DE8];
  purgedCopy = purged;
  v6 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = purgedCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Zone was purged: %{public}@", &v8, 0xCu);
  }

  [(DNDSSyncEngine *)self purgeZoneWithID:purgedCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  v4 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Keybag unlocked", v5, 2u);
  }

  [(DNDSSyncEngine *)self _updateAccountWithCurrentSyncEnabledState];
  [(DNDSSyncEngine *)self _retryLastChanceRecords];
}

- (id)sysdiagnoseDataForDate:(id)date redacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v61 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowSyncEngineCreation];
  [dictionary setObject:v7 forKeyedSubscript:@"allowSyncEngineCreation"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.accountAvailable];
  [dictionary setObject:v8 forKeyedSubscript:@"accountAvailable"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.encryptionAvailable];
  [dictionary setObject:v9 forKeyedSubscript:@"encryptionAvailable"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.featureEnabled];
  [dictionary setObject:v10 forKeyedSubscript:@"featureEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.supportedDevice];
  [dictionary setObject:v11 forKeyedSubscript:@"supportedDevice"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.syncEnabled];
  [dictionary setObject:v12 forKeyedSubscript:@"syncEnabled"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_state.testing];
  [dictionary setObject:v13 forKeyedSubscript:@"testing"];

  selfCopy = self;
  records = [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore records];
  allValues = [records allValues];

  v41 = dictionary;
  if (redactedCopy)
  {
    [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
  }
  v44 = ;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = allValues;
  v45 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v45)
  {
    v43 = *v55;
    do
    {
      v16 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * v16);
        v47 = MEMORY[0x277CCACA8];
        v49 = v16;
        recordType = [v17 recordType];
        recordID = [v17 recordID];
        recordName = [recordID recordName];
        recordID2 = [v17 recordID];
        zoneID = [recordID2 zoneID];
        zoneName = [zoneID zoneName];
        recordID3 = [v17 recordID];
        zoneID2 = [recordID3 zoneID];
        ownerName = [zoneID2 ownerName];
        v48 = [v47 stringWithFormat:@"%@ %@:%@(%@)", recordType, recordName, zoneName, ownerName];

        if (redactedCopy)
        {
          [v44 addObject:v44];
          v26 = v48;
        }

        else
        {
          values = [v17 values];
          v28 = [values mutableCopy];

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v58[0] = @"DNDSModeConfigurationsRecordMainPartition";
          v58[1] = @"DNDSModeConfigurationsRecordSecondaryPartition";
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
          v30 = [v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v51;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v51 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v50 + 1) + 8 * i);
                encryptedValues = [v17 encryptedValues];
                v36 = [encryptedValues objectForKey:v34];

                if (v36)
                {
                  v37 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v36 options:0 error:0];
                  [v28 setObject:v37 forKeyedSubscript:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v31);
          }

          v26 = v48;
          [v44 setObject:v28 forKeyedSubscript:v48];
        }

        v16 = v49 + 1;
      }

      while (v49 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v45);
  }

  [v41 setObject:v44 forKeyedSubscript:@"lastChanceStore"];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v38 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_zoneIDForRecord:(id)record
{
  recordID = [record recordID];
  zoneID = [recordID zoneID];

  return zoneID;
}

- (void)_retryLastChanceRecords
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  keybag = self->_keybag;
  if (!keybag || [(DNDSKeybagStateProviding *)keybag hasUnlockedSinceBoot])
  {
    os_unfair_lock_lock(&self->_lock);
    dictionaryRepresentation = [(NSMapTable *)self->_sourcesByZoneName dictionaryRepresentation];
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = dictionaryRepresentation;
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
          [(DNDSSyncEngine *)self _retryLastChanceRecordsForDataSource:v11 withZoneName:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_retryLastChanceRecordsForDataSource:(id)source withZoneName:(id)name
{
  v41 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  os_unfair_lock_assert_not_owner(&self->_lock);
  keybag = self->_keybag;
  if (!keybag || [(DNDSKeybagStateProviding *)keybag hasUnlockedSinceBoot])
  {
    v9 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:nameCopy];
    os_unfair_lock_lock(&self->_lock);
    lastChanceStore = self->_lastChanceStore;
    v30 = v9;
    zoneID = [v9 zoneID];
    v12 = [(DNDSSyncEngineLastChanceDataStoring *)lastChanceStore recordsWithZoneID:zoneID];

    os_unfair_lock_unlock(&self->_lock);
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [sourceCopy syncEngine:self wantsRecord:v19];
          if (v20)
          {
            v21 = v20;
            [sourceCopy syncEngine:self didFetchRecord:v19];
            if (v21 == 1)
            {
              [array addObject:v19];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    os_unfair_lock_lock(&self->_lock);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = array;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = self->_lastChanceStore;
          recordID = [*(*(&v31 + 1) + 8 * j) recordID];
          [(DNDSSyncEngineLastChanceDataStoring *)v27 removeRecordWithID:recordID];
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountWithCurrentSyncEnabledState
{
  os_unfair_lock_lock(&self->_lock);
  syncEnabled = self->_state.syncEnabled;
  os_unfair_lock_unlock(&self->_lock);
  accountUpdateSource = self->_accountUpdateSource;
  if (syncEnabled)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  dispatch_source_merge_data(accountUpdateSource, v5);
}

- (void)_updateAccountWithSyncEnabledState:(BOOL)state
{
  accountUpdateSource = self->_accountUpdateSource;
  if (state)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  dispatch_source_merge_data(accountUpdateSource, v4);
}

void __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    if (a2 == 1)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_76;
      v16[3] = &unk_278F8BD40;
      v16[4] = v6;
      v16[5] = 1;
      v17 = *(a1 + 40);
      [(os_unfair_lock_s *)v6 _fetchAccountStateWithCompletionHandler:v16];
      goto LABEL_22;
    }

    os_unfair_lock_lock(v6 + 6);
    v7 = [*(a1 + 32) _lock_currentUserRecordID];
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v8 = DNDSLogCloudSync;
        if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 0;
        v9 = "Sync engine will be disabled because no account exists";
LABEL_25:
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_26:
        *(*(a1 + 32) + 72) = *(a1 + 40);
        if (v7)
        {
          *(*(a1 + 32) + 74) = 0;
          *(*(a1 + 32) + 75) = 0;
          [*(a1 + 32) _lock_purgeData];
          [*(a1 + 32) _lock_destroySyncEngine];
          [*(a1 + 32) _lock_setCurrentAccountStatus:a2];
          os_unfair_lock_unlock((*(a1 + 32) + 24));
          if (*(a1 + 41) == 1)
          {
            [*(a1 + 32) _purgeDataFromDataSources];
          }

          goto LABEL_21;
        }

LABEL_20:
        [*(a1 + 32) _lock_destroySyncEngine];
        [*(a1 + 32) _lock_setCurrentAccountStatus:a2];
        os_unfair_lock_unlock((*(a1 + 32) + 24));
LABEL_21:
        dispatch_resume(*(*(a1 + 32) + 32));

        goto LABEL_22;
      }

      if (a2 != 4 || (v10 = DNDSLogCloudSync, !os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_19:
        *(*(a1 + 32) + 72) = *(a1 + 40);
        goto LABEL_20;
      }

      *buf = 0;
      v11 = "Sync engine will be disabled because the account is unavailable";
      v12 = v10;
      v13 = 2;
    }

    else
    {
      if (a2)
      {
        if (a2 == 2)
        {
          v8 = DNDSLogCloudSync;
          if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          *buf = 0;
          v9 = "Sync engine will be disabled because account is restricted";
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      v14 = DNDSLogCloudSync;
      if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v19 = 0;
      v11 = "Sync engine will be disabled because of an error: %@";
      v12 = v14;
      v13 = 12;
    }

    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_19;
  }

  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
  {
    __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_cold_1();
  }

  dispatch_resume(*(*(a1 + 32) + 32));
LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
}

void __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_76(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_76_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _handleAccountFetchWithUpdatedUserRecordID:v7 updatedAccountStatus:*(a1 + 40) updatedEncryptionAvailable:a3 updatedSyncEnabled:*(a1 + 48)];
  }

  dispatch_resume(*(*(a1 + 32) + 32));
}

- (void)_fetchAccountStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = self->_container;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278F8BDB8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(CKContainer *)container accountInfoWithCompletionHandler:v7];
}

void __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = ([v5 deviceToDeviceEncryptionAvailability] >> 1) & 1;
    v8 = *(*(a1 + 32) + 80);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_79;
    v9[3] = &unk_278F8BD90;
    v10 = *(a1 + 40);
    v11 = v7;
    [v8 fetchUserRecordIDWithCompletionHandler:v9];
  }
}

void __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_79_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [v5 recordName];
    v8 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleAccountFetchWithUpdatedUserRecordID:(id)d updatedAccountStatus:(int64_t)status updatedEncryptionAvailable:(BOOL)available updatedSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  availableCopy = available;
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  _lock_encryptionAvailable = [(DNDSSyncEngine *)self _lock_encryptionAvailable];
  _lock_currentUserRecordID = [(DNDSSyncEngine *)self _lock_currentUserRecordID];
  syncEnabled = self->_state.syncEnabled;
  featureEnabled = self->_state.featureEnabled;
  v36 = *&self->_state.supportedDevice;
  v13 = DNDSLogCloudSync;
  v14 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
  v34 = availableCopy;
  if (availableCopy)
  {
    if (_lock_encryptionAvailable)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Encryption is available", buf, 2u);
      }

      v15 = 0;
      v16 = 1;
      if (!syncEnabled)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Encryption is newly available", buf, 2u);
      }

      v16 = 1;
      v15 = 6;
      if (!syncEnabled)
      {
        goto LABEL_23;
      }
    }
  }

  else if (_lock_encryptionAvailable)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Encryption is newly unavailable", buf, 2u);
    }

    v16 = 0;
    v15 = 7;
    if (!syncEnabled)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Encryption is not available", buf, 2u);
    }

    v15 = 0;
    v16 = 0;
    if (!syncEnabled)
    {
      goto LABEL_23;
    }
  }

  if (!enabledCopy)
  {
    v17 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Sync enabled state is newly disabled", buf, 2u);
    }

    v15 = 5;
    goto LABEL_34;
  }

LABEL_23:
  v18 = DNDSLogCloudSync;
  v19 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
  if (!enabledCopy || syncEnabled)
  {
    if (enabledCopy)
    {
      if (!v19)
      {
        goto LABEL_34;
      }

      *buf = 0;
      v20 = "Sync enabled state is unchanged from enabled";
    }

    else
    {
      if (!v19)
      {
        goto LABEL_34;
      }

      *buf = 0;
      v20 = "Sync enabled state is unchanged from disabled";
    }

    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Sync enabled state is newly enabled", buf, 2u);
    }

    v15 = 4;
  }

LABEL_34:
  if (!(dCopy | _lock_currentUserRecordID))
  {
    v21 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "User record is unchanged from nil", buf, 2u);
    }

    v22 = 0;
    goto LABEL_54;
  }

  if (dCopy)
  {
    if (!_lock_currentUserRecordID)
    {
      v24 = DNDSLogCloudSync;
      if (!os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 1;
        v15 = 2;
        goto LABEL_54;
      }

      *buf = 0;
      v26 = "New user record was added";
      v15 = 2;
      goto LABEL_48;
    }

    v23 = [dCopy isEqualToString:_lock_currentUserRecordID];
    v24 = DNDSLogCloudSync;
    v25 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v25)
      {
LABEL_49:
        v22 = 1;
        goto LABEL_54;
      }

      *buf = 0;
      v26 = "User record ID is unchanged";
LABEL_48:
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      goto LABEL_49;
    }

    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "User record ID has changed", buf, 2u);
    }

    v22 = 1;
    v15 = 3;
  }

  else
  {
    v27 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "User record was removed", buf, 2u);
    }

    v22 = 0;
    v15 = 1;
  }

LABEL_54:
  self->_state.syncEnabled = enabledCopy;
  self->_state.featureEnabled = featureEnabled;
  self->_state.accountAvailable = v22;
  self->_state.encryptionAvailable = v16;
  *&self->_state.supportedDevice = v36;
  v28 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *&self->_state.syncEnabled | (*&self->_state.supportedDevice << 32);
    if (v29 & 0x10000000000) != 0 || (v30 = v29 & 0xFFFFFFFFFFFFLL, v31 = "disabled", (~v30 & 0x101010100) == 0) && (v30)
    {
      v31 = "enabled";
    }

    *buf = 136315138;
    v38 = v31;
    _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Sync engine resolved state: %s", buf, 0xCu);
  }

  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      [(DNDSSyncEngine *)self _lock_purgeData];
      [(DNDSSyncEngine *)self _lock_destroySyncEngine];
      [(DNDSSyncEngine *)self _lock_setCurrentAccountStatus:status];
      [(DNDSSyncEngine *)self _lock_setEncryptionAvailable:v34];
      os_unfair_lock_unlock(&self->_lock);
      [(DNDSSyncEngine *)self _purgeDataFromDataSources];
      goto LABEL_75;
    }

    if (v15 == 2)
    {
      [(DNDSSyncEngine *)self _lock_setCurrentUserRecordID:dCopy];
      [(DNDSSyncEngine *)self _lock_setCurrentAccountStatus:status];
      [(DNDSSyncEngine *)self _lock_setEncryptionAvailable:v34];
      os_unfair_lock_unlock(&self->_lock);
LABEL_72:
      [(DNDSSyncEngine *)self _initialSyncForDataSources];
      goto LABEL_75;
    }
  }

  else
  {
    switch(v15)
    {
      case 3:
        goto LABEL_64;
      case 7:
        [(DNDSSyncEngine *)self _lock_destroySyncEngine];
        [(DNDSSyncEngine *)self _lock_setCurrentAccountStatus:status];
        [(DNDSSyncEngine *)self _lock_setEncryptionAvailable:v34];
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_75;
      case 5:
LABEL_64:
        [(DNDSSyncEngine *)self _lock_purgeData];
        [(DNDSSyncEngine *)self _lock_destroySyncEngine];
        [(DNDSSyncEngine *)self _lock_setCurrentUserRecordID:dCopy];
        break;
    }
  }

  [(DNDSSyncEngine *)self _lock_setCurrentAccountStatus:status];
  [(DNDSSyncEngine *)self _lock_setEncryptionAvailable:v34];
  os_unfair_lock_unlock(&self->_lock);
  if (((1 << v15) & 0x54) != 0)
  {
    goto LABEL_72;
  }

  if (((1 << v15) & 0xA) != 0)
  {
    [(DNDSSyncEngine *)self _purgeDataFromDataSources];
    if ((v15 & 6) == 2)
    {
      goto LABEL_72;
    }
  }

LABEL_75:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_lock_syncEngine
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_allowSyncEngineCreation)
  {
    v13 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "_allowSyncEngineCreation == NO", buf, 2u);
    }

    goto LABEL_13;
  }

  keybag = self->_keybag;
  if (keybag && ([(DNDSKeybagStateProviding *)keybag hasUnlockedSinceBoot]& 1) == 0)
  {
    v15 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v16 = "Skipping sync engine creation because the device has not unlocked.";
      v17 = &v21;
LABEL_19:
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    }
  }

  else
  {
    v4 = *&self->_state.syncEnabled | (*&self->_state.supportedDevice << 32);
    if (v4 & 0x10000000000) != 0 || (~v4 & 0x101010100) == 0 && (*&self->_state.supportedDevice, (*&self->_state.syncEnabled))
    {
      syncEngine = self->_syncEngine;
      if (syncEngine)
      {
LABEL_14:
        v14 = syncEngine;
        goto LABEL_21;
      }

      v6 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Sync engine will start", v19, 2u);
      }

      privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
      v8 = objc_alloc(MEMORY[0x277CBC6F0]);
      metadata = [(DNDSSyncEngineMetadataStoring *)self->_metadataStore metadata];
      v10 = [v8 initWithDatabase:privateCloudDatabase dataSource:self metadata:metadata];

      [v10 setApsMachServiceName:@"com.apple.aps.donotdisturb.sync-engine"];
      v11 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v10];
      v12 = self->_syncEngine;
      self->_syncEngine = v11;

LABEL_13:
      syncEngine = self->_syncEngine;
      goto LABEL_14;
    }

    v15 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v16 = "Skipping sync engine creation because sync is disabled.";
      v17 = v20;
      goto LABEL_19;
    }
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (void)_lock_destroySyncEngine
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_allowSyncEngineCreation && self->_syncEngine)
  {
    v3 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Destroying sync engine", v5, 2u);
    }

    syncEngine = self->_syncEngine;
    self->_syncEngine = 0;
  }
}

- (void)_lock_purgeData
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Purging sync engine data", v4, 2u);
  }

  [(DNDSSyncEngineMetadataStoring *)self->_metadataStore purge];
  [(DNDSSyncEngineLastChanceDataStoring *)self->_lastChanceStore purge];
}

- (id)_lock_dataSources
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sourcesByZoneName;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = [(NSMapTable *)self->_sourcesByZoneName objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        [array addObject:v9];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_lock_currentAccountStatus
{
  os_unfair_lock_assert_owner(&self->_lock);
  metadataStore = self->_metadataStore;

  return [(DNDSSyncEngineMetadataStoring *)metadataStore accountStatus];
}

- (void)_lock_setCurrentAccountStatus:(int64_t)status
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  accountStatus = [(DNDSSyncEngineMetadataStoring *)self->_metadataStore accountStatus];
  v6 = DNDSLogCloudSync;
  v7 = os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT);
  if (accountStatus == status)
  {
    if (v7)
    {
      v8 = v6;
      v9 = CKStringFromAccountStatus();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Account status is unchanged: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v10 = v6;
      v11 = CKStringFromAccountStatus();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Account status has changed to: %{public}@", &v13, 0xCu);
    }

    [(DNDSSyncEngineMetadataStoring *)self->_metadataStore setAccountStatus:status];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_lock_currentUserRecordID
{
  os_unfair_lock_assert_owner(&self->_lock);
  metadataStore = self->_metadataStore;

  return [(DNDSSyncEngineMetadataStoring *)metadataStore userRecordID];
}

- (BOOL)_lock_encryptionAvailable
{
  os_unfair_lock_assert_owner(&self->_lock);
  metadataStore = self->_metadataStore;

  return [(DNDSSyncEngineMetadataStoring *)metadataStore isEncryptionAvailable];
}

- (void)_lock_setCurrentUserRecordID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "User record ID has changed to: %{public}@", &v7, 0xCu);
  }

  [(DNDSSyncEngineMetadataStoring *)self->_metadataStore setUserRecordID:dCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lock_isSyncEnabled
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = *&self->_state.syncEnabled | (*&self->_state.supportedDevice << 32);
  if ((v3 & 0x10000000000) != 0)
  {
    return 1;
  }

  *&self->_state.supportedDevice;
  if ((~*&self->_state.syncEnabled & 0x1010100) != 0)
  {
    return 0;
  }

  *&self->_state.supportedDevice;
  if (*&self->_state.syncEnabled)
  {
    return BYTE4(v3) & 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_lock_isSyncAvailable
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = *&self->_state.syncEnabled;
  v4 = v3 | (*&self->_state.supportedDevice << 32);
  if ((v4 & 0x10000000000) != 0)
  {
    return 1;
  }

  *&self->_state.supportedDevice;
  v5 = HIDWORD(v4) & 1;
  return (~v3 & 0x1010100) == 0 && v5;
}

- (id)_lock_dataSourceForZoneID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  sourcesByZoneName = self->_sourcesByZoneName;
  zoneName = [dCopy zoneName];

  v7 = [(NSMapTable *)sourcesByZoneName objectForKey:zoneName];

  return v7;
}

- (id)_lock_dataSourceForRecord:(id)record
{
  recordCopy = record;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(DNDSSyncEngine *)self _zoneIDForRecord:recordCopy];

  v6 = [(DNDSSyncEngine *)self _lock_dataSourceForZoneID:v5];

  return v6;
}

- (void)_purgeDataFromDataSources
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Purging data from data sources", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  syncEnabled = self->_state.syncEnabled;
  dictionaryRepresentation = [(NSMapTable *)self->_sourcesByZoneName dictionaryRepresentation];
  os_unfair_lock_unlock(&self->_lock);
  if (syncEnabled)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = dictionaryRepresentation;
    v6 = dictionaryRepresentation;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSMapTable *)self->_sourcesByZoneName objectForKey:v11];
          v13 = DNDSLogCloudSync;
          if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v21 = v11;
            _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Purging data from zone %{public}@", buf, 0xCu);
          }

          [v12 purgeRecordsForSyncEngine:self];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }

    dictionaryRepresentation = v15;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_initialSyncForDataSources
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = DNDSLogCloudSync;
  if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Performing initial sync for data sources", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];
    v5 = _lock_syncEngine != 0;
  }

  else
  {
    v5 = 0;
  }

  dictionaryRepresentation = [(NSMapTable *)self->_sourcesByZoneName dictionaryRepresentation];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = dictionaryRepresentation;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v7 objectForKey:{v12, v15}];
          [(DNDSSyncEngine *)self _initialSyncForDataSource:v13 withZoneName:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_initialSyncForDataSource:(id)source withZoneName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(DNDSSyncEngine *)self _lock_isSyncEnabled])
  {
    _lock_syncEngine = [(DNDSSyncEngine *)self _lock_syncEngine];

    os_unfair_lock_unlock(&self->_lock);
    if (_lock_syncEngine)
    {
      v9 = [sourceCopy recordIDsForSyncEngine:self];
      if ([v9 count])
      {
        v10 = DNDSLogCloudSync;
        if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = nameCopy;
          _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Performing initial sync for zone %{public}@", &v12, 0xCu);
        }

        [(DNDSSyncEngine *)self addRecordIDsToSave:v9 recordIDsToDelete:0];
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOldStoresWithSyncEnabledState:(BOOL)state
{
  v72[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = BSCurrentUserDirectory();
  v72[0] = v5;
  v72[1] = @"Library";
  v72[2] = @"DoNotDisturb";
  v72[3] = @"DB";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
  v7 = [v4 fileURLWithPathComponents:v6];

  v8 = [v7 URLByAppendingPathComponent:@"LocalModeConfigurations.json"];
  v9 = [v7 URLByAppendingPathComponent:@"LocalModeConfigurationsSecure.json"];
  v59 = [v7 URLByAppendingPathComponent:@"LocalGlobalConfiguration.json"];
  v10 = [v7 URLByAppendingPathComponent:@"SyncedGlobalConfiguration.json"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v8 path];
  v13 = [defaultManager fileExistsAtPath:path];

  if (v13)
  {
    v14 = DNDSLogGeneral;
    v15 = os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT);
    if (state)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Erasing configurations from old local stores", buf, 2u);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_globalConfigurationBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_globalConfigurationBackingStoreFileURL];
      v63 = 0;
      v18 = [defaultManager2 moveItemAtURL:v10 toURL:dnds_globalConfigurationBackingStoreFileURL error:&v63];
      v19 = v63;

      if ((v18 & 1) == 0)
      {
        v20 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v19;
          _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Could not delete old synced global store: %@", buf, 0xCu);
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v62 = v19;
      v22 = [defaultManager3 removeItemAtURL:v8 error:&v62];
      v23 = v62;

      if ((v22 & 1) == 0)
      {
        v24 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v23;
          _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Could not delete old mode store: %@", buf, 0xCu);
        }
      }

      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      v61 = v23;
      v26 = [defaultManager4 removeItemAtURL:v9 error:&v61];
      v27 = v61;

      if ((v26 & 1) == 0)
      {
        v28 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v27;
          _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Could not delete old secure mode store: %@", buf, 0xCu);
        }
      }

      defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
      v60 = v27;
      v30 = [defaultManager5 removeItemAtURL:v59 error:&v60];
      v31 = v60;

      if ((v30 & 1) == 0)
      {
        v32 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v31;
          _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Could not delete old global store: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Migrating configurations from old local stores", buf, 2u);
      }

      defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_modeConfigurationsBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsBackingStoreFileURL];
      v69 = 0;
      v35 = [defaultManager6 removeItemAtURL:dnds_modeConfigurationsBackingStoreFileURL error:&v69];
      v36 = v69;

      if ((v35 & 1) == 0 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSSyncEngine _migrateOldStoresWithSyncEnabledState:];
      }

      defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_modeConfigurationsSecureBackingStoreFileURL = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsSecureBackingStoreFileURL];
      v68 = v36;
      v39 = [defaultManager7 removeItemAtURL:dnds_modeConfigurationsSecureBackingStoreFileURL error:&v68];
      v40 = v68;

      if ((v39 & 1) == 0)
      {
        v41 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v40;
          _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Could not delete secure mode store: %@", buf, 0xCu);
        }
      }

      defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
      v67 = v40;
      v43 = [defaultManager8 removeItemAtURL:v10 error:&v67];
      v44 = v67;

      if ((v43 & 1) == 0)
      {
        v45 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v71 = v44;
          _os_log_impl(&dword_24912E000, v45, OS_LOG_TYPE_DEFAULT, "Could not delete old synced global store: %@", buf, 0xCu);
        }
      }

      defaultManager9 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_modeConfigurationsBackingStoreFileURL2 = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsBackingStoreFileURL];
      v66 = v44;
      v48 = [defaultManager9 moveItemAtURL:v8 toURL:dnds_modeConfigurationsBackingStoreFileURL2 error:&v66];
      v49 = v66;

      if ((v48 & 1) == 0 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSSyncEngine _migrateOldStoresWithSyncEnabledState:];
      }

      defaultManager10 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_modeConfigurationsSecureBackingStoreFileURL2 = [MEMORY[0x277CBEBC0] dnds_modeConfigurationsSecureBackingStoreFileURL];
      v65 = v49;
      v52 = [defaultManager10 moveItemAtURL:v58 toURL:dnds_modeConfigurationsSecureBackingStoreFileURL2 error:&v65];
      v53 = v65;

      if ((v52 & 1) == 0 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSSyncEngine _migrateOldStoresWithSyncEnabledState:];
      }

      defaultManager11 = [MEMORY[0x277CCAA00] defaultManager];
      dnds_globalConfigurationBackingStoreFileURL2 = [MEMORY[0x277CBEBC0] dnds_globalConfigurationBackingStoreFileURL];
      v64 = v53;
      v56 = [defaultManager11 moveItemAtURL:v59 toURL:dnds_globalConfigurationBackingStoreFileURL2 error:&v64];
      v31 = v64;

      if ((v56 & 1) == 0 && os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSSyncEngine _migrateOldStoresWithSyncEnabledState:];
      }

      v9 = v58;
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __90__DNDSSyncEngine_initWithMetadataStore_lastChanceDataStore_syncEngine_keybag_syncEnabled___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_2_2() numberWithUnsignedLong:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __45__DNDSSyncEngine_sync_withCompletionHandler___block_invoke_34_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error sending changes: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleDeletedRecordID:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  v4 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Removing record with ID %{public}@ from source %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleDeletedRecordID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not find a source for removing record with ID %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 failedToDeleteRecordWithID:error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_2() recordName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(uint64_t)a1 failedToDeleteRecordWithID:(void *)a2 error:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v11 = [a3 recordName];
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 failedToSaveRecord:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_2() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 failedToSaveRecord:error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_2() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 failedToSaveRecord:(void *)a2 error:.cold.6(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 recordID];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Both server and client record IDs are nil for record ID %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:failedToSaveRecord:error:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to find data source with zoneID %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:failedToSaveRecord:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Unhandled error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:recordToSaveForRecordID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to create record to save: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not fetch account status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__DNDSSyncEngine__syncEngineQueue_updateAccountWithSyncEnabledState___block_invoke_76_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not fetch account state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not fetch account info ID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__DNDSSyncEngine__fetchAccountStateWithCompletionHandler___block_invoke_79_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not fetch user record ID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOldStoresWithSyncEnabledState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not delete mode store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOldStoresWithSyncEnabledState:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not replace mode store with old store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOldStoresWithSyncEnabledState:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not replace secure mode store with old store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_migrateOldStoresWithSyncEnabledState:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not replace global store with old store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end