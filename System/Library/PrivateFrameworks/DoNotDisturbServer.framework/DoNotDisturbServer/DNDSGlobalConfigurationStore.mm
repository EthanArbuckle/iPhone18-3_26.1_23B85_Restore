@interface DNDSGlobalConfigurationStore
- (DNDSGlobalConfigurationStore)initWithBackingStore:(id)store syncEngine:(id)engine idsSyncEngine:(id)syncEngine;
- (DNDSGlobalConfigurationStoreDelegate)delegate;
- (id)_createConfigurationFromCKRecord:(id)record;
- (id)_createConfigurationFromDNDSIDSRecord:(id)record;
- (id)_lock_existingConfiguration;
- (id)_lock_mutableExistingConfigurationInStore:(id)store;
- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
- (id)readRecordWithError:(id *)error;
- (id)recordIDsForIDSSyncEngine:(id)engine;
- (id)recordIDsForSyncEngine:(id)engine;
- (int64_t)syncEngine:(id)engine prepareRecordToSave:(id)save;
- (int64_t)syncEngine:(id)engine wantsRecord:(id)record;
- (void)_lock_existingConfiguration;
- (void)_lock_prepareCKRecordToSave:(id)save;
- (void)_lock_prepareDNDSIDSRecordToSave:(id)save;
- (void)_lock_purgeData;
- (void)_lock_updateConfigurationWithCKRecord:(id)record;
- (void)_lock_updateConfigurationWithDNDSIDSRecord:(id)record;
- (void)_notifyDelegateOfConfigurationChange;
- (void)_populateCKRecord:(id)record withGlobalConfiguration:(id)configuration;
- (void)_populateDNDSIDSRecord:(id)record withGlobalConfiguration:(id)configuration;
- (void)_purgeData;
- (void)globalConfigurationSyncManager:(id)manager didReceiveUpdatedGlobalConfiguration:(id)configuration;
- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record;
- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save;
- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted;
- (void)purgeRecordsForIDSSyncEngine:(id)engine;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted;
- (void)syncEngine:(id)engine resolveConflictBetweenClientRecord:(id)record andServerRecord:(id)serverRecord;
- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted removingRecordIDs:(id)ds;
@end

@implementation DNDSGlobalConfigurationStore

- (DNDSGlobalConfigurationStore)initWithBackingStore:(id)store syncEngine:(id)engine idsSyncEngine:(id)syncEngine
{
  v24 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  engineCopy = engine;
  syncEngineCopy = syncEngine;
  v21.receiver = self;
  v21.super_class = DNDSGlobalConfigurationStore;
  v12 = [(DNDSGlobalConfigurationStore *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_backingStore, store);
    [(DNDSBackingStore *)v13->_backingStore setDelegate:v13];
    objc_storeStrong(&v13->_syncEngine, engine);
    [(DNDSSyncEngine *)v13->_syncEngine setDataSource:v13 forZoneName:@"DNDSGlobalConfiguration"];
    objc_storeStrong(&v13->_idsSyncEngine, syncEngine);
    [(DNDSIDSSyncEngine *)v13->_idsSyncEngine setDataSource:v13 forZone:@"DNDSGlobalConfiguration"];
    v20 = 0;
    v14 = [storeCopy readRecordWithError:&v20];
    v15 = v20;
    configuration = v13->_configuration;
    v13->_configuration = v14;

    if (v15)
    {
      v17 = DNDSLogGlobalConfiguration;
      if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v15;
        _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Could not read configuration: %{public}@", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)readRecordWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DNDSBackingStore *)self->_backingStore readRecordWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  representationCopy = representation;
  storeCopy = store;
  delegate = [(DNDSGlobalConfigurationStore *)self delegate];
  v13 = [delegate backingStore:storeCopy migrateDictionaryRepresentation:representationCopy fromVersionNumber:number toVersionNumber:versionNumber];

  return v13;
}

- (int64_t)syncEngine:(id)engine wantsRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  v8 = [zoneName isEqualToString:@"DNDSGlobalConfiguration"];

  if (v8)
  {
    v9 = [recordCopy objectForKey:@"DNDSGlobalConfigurationMinimumRequiredVersion"];
    integerValue = [v9 integerValue];
    if (integerValue <= [&unk_285C536A0 integerValue] && (objc_msgSend(recordCopy, "recordType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"DNDSGlobalConfigurationRecord"), v11, v12))
    {
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v15 = [recordName isEqualToString:@"DNDSGlobalConfigurationRecord"];

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  v8 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = recordName;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Fetched record with ID: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  _lock_existingConfiguration = [(DNDSGlobalConfigurationStore *)self _lock_existingConfiguration];
  v10 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromCKRecord:recordCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mergeWithGlobalConfiguration:_lock_existingConfiguration];
    v13 = DNDSLogGlobalConfiguration;
    v14 = os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT);
    if (v12 == v11)
    {
      if (v14)
      {
        v22 = v13;
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        *buf = 138412290;
        v30 = recordName2;
        _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %@ is current; applying update", buf, 0xCu);
      }

      [(DNDSGlobalConfigurationStore *)self _lock_updateConfigurationWithCKRecord:recordCopy];
      recordID4 = [[DNDSIDSRecordID alloc] initWithIdentifier:recordName zone:@"DNDSGlobalConfiguration"];
      idsSyncEngine = self->_idsSyncEngine;
      v28 = recordID4;
      v20 = &v28;
    }

    else
    {
      if (v14)
      {
        v15 = v13;
        recordID3 = [recordCopy recordID];
        recordName3 = [recordID3 recordName];
        *buf = 138412290;
        v30 = recordName3;
        _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %@ is outdated; ignoring update and resending local data", buf, 0xCu);
      }

      idsSyncEngine = self->_syncEngine;
      recordID4 = [recordCopy recordID];
      v27 = recordID4;
      v20 = &v27;
    }

    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{1, v27, v28}];
    [idsSyncEngine addRecordIDsToSave:v25 recordIDsToDelete:0];
  }

  else
  {
    v21 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore syncEngine:v21 didFetchRecord:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _notifyDelegateOfConfigurationChange];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore syncEngine:failedToDeleteRecordWithID:error:];
  }
}

- (void)syncEngine:(id)engine resolveConflictBetweenClientRecord:(id)record andServerRecord:(id)serverRecord
{
  v33 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  recordCopy = record;
  serverRecordCopy = serverRecord;
  os_unfair_lock_lock(&self->_lock);
  v11 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromCKRecord:serverRecordCopy];
  if (!v11)
  {
    v21 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore syncEngine:v21 resolveConflictBetweenClientRecord:? andServerRecord:?];
    }

    goto LABEL_8;
  }

  v12 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromCKRecord:recordCopy];
  v13 = [v11 mergeWithGlobalConfiguration:v12];
  v14 = DNDSLogGlobalConfiguration;
  v15 = os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT);
  if (v13 != v11)
  {
    if (v15)
    {
      v16 = v14;
      recordID = [serverRecordCopy recordID];
      recordName = [recordID recordName];
      *buf = 138412290;
      v32 = recordName;
      _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Resolved conflict between records with ID %@; using local data", buf, 0xCu);
    }

    recordID2 = [recordCopy recordID];
    v29 = recordID2;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [engineCopy addRecordIDsToSave:v20 recordIDsToDelete:0];

LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_12;
  }

  if (v15)
  {
    v22 = v14;
    recordID3 = [serverRecordCopy recordID];
    recordName2 = [recordID3 recordName];
    *buf = 138412290;
    v32 = recordName2;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Resolved conflict records with ID %@; using remote data", buf, 0xCu);
  }

  [(DNDSGlobalConfigurationStore *)self _lock_updateConfigurationWithCKRecord:serverRecordCopy];
  v25 = [[DNDSIDSRecordID alloc] initWithIdentifier:@"DNDSGlobalConfigurationRecord" zone:@"DNDSGlobalConfiguration"];
  idsSyncEngine = self->_idsSyncEngine;
  v30 = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:v27 recordIDsToDelete:0];

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _notifyDelegateOfConfigurationChange];
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
}

- (int64_t)syncEngine:(id)engine prepareRecordToSave:(id)save
{
  v14 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v6 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    recordID = [saveCopy recordID];
    recordName = [recordID recordName];
    v12 = 138412290;
    v13 = recordName;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to save record %@", &v12, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _lock_prepareCKRecordToSave:saveCopy];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted
{
  v4 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Global configuration was deleted", v5, 2u);
  }
}

- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted removingRecordIDs:(id)ds
{
  v6 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Removing all records because zone was deleted", v7, 2u);
  }

  [(DNDSGlobalConfigurationStore *)self _purgeData];
}

- (id)recordIDsForSyncEngine:(id)engine
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSGlobalConfiguration"];
  v4 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [v3 zoneID];
  v6 = [v4 initWithRecordName:@"DNDSGlobalConfigurationRecord" zoneID:zoneID];

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save
{
  v13 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v6 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    recordID = [saveCopy recordID];
    identifier = [recordID identifier];
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Preparing to save record for IDS sync engine: %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _lock_prepareDNDSIDSRecordToSave:saveCopy];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  identifier = [recordID identifier];

  v8 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = identifier;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Fetched record from IDS sync engine with ID: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  _lock_existingConfiguration = [(DNDSGlobalConfigurationStore *)self _lock_existingConfiguration];
  v10 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromDNDSIDSRecord:recordCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mergeWithGlobalConfiguration:_lock_existingConfiguration];
    v13 = DNDSLogGlobalConfiguration;
    v14 = os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT);
    if (v12 == v11)
    {
      if (v14)
      {
        *buf = 138412290;
        v26 = identifier;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %@ is current; applying update", buf, 0xCu);
      }

      [(DNDSGlobalConfigurationStore *)self _lock_updateConfigurationWithDNDSIDSRecord:recordCopy];
      v15 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"DNDSGlobalConfiguration"];
      v18 = objc_alloc(MEMORY[0x277CBC5D0]);
      zoneID = [(DNDSIDSRecordID *)v15 zoneID];
      v17 = [v18 initWithRecordName:identifier zoneID:zoneID];

      syncEngine = self->_syncEngine;
      v24 = v17;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [(DNDSSyncEngine *)syncEngine addRecordIDsToSave:v21 recordIDsToDelete:0];
    }

    else
    {
      if (v14)
      {
        *buf = 138543362;
        v26 = identifier;
        _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Fetched data with ID %{public}@ is outdated; ignoring update and resending local data", buf, 0xCu);
      }

      v15 = [[DNDSIDSRecordID alloc] initWithIdentifier:identifier zone:@"DNDSGlobalConfiguration"];
      idsSyncEngine = self->_idsSyncEngine;
      v23 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [(DNDSIDSSyncEngine *)idsSyncEngine addRecordIDsToSave:v17 recordIDsToDelete:0];
    }
  }

  else if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore idsSyncEngine:didFetchRecord:];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _notifyDelegateOfConfigurationChange];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted
{
  v4 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Global configuration was deleted", v5, 2u);
  }
}

- (id)recordIDsForIDSSyncEngine:(id)engine
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [[DNDSIDSRecordID alloc] initWithIdentifier:@"DNDSGlobalConfigurationRecord" zone:@"DNDSGlobalConfiguration"];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)purgeRecordsForIDSSyncEngine:(id)engine
{
  os_unfair_lock_lock(&self->_lock);
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Purging data for IDS sync engine", buf, 2u);
  }

  v5 = objc_alloc_init(DNDSMutableGlobalConfiguration);
  [(DNDSMutableGlobalConfiguration *)v5 setAutomaticallyGenerated:1];
  v6 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Replacing record with default global configuration", v10, 2u);
  }

  backingStore = self->_backingStore;
  v9 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v9];
  v8 = v9;
  if (v8 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore purgeRecordsForIDSSyncEngine:];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)globalConfigurationSyncManager:(id)manager didReceiveUpdatedGlobalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  _lock_existingConfiguration = [(DNDSGlobalConfigurationStore *)self _lock_existingConfiguration];
  v7 = [configurationCopy mergeWithGlobalConfiguration:_lock_existingConfiguration];
  v8 = DNDSLogGlobalConfiguration;
  if (v7 == configurationCopy)
  {
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Updating global configuration", buf, 2u);
    }

    backingStore = self->_backingStore;
    v10 = 0;
    [(DNDSBackingStore *)backingStore writeRecord:configurationCopy error:&v10];
  }

  else if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore globalConfigurationSyncManager:didReceiveUpdatedGlobalConfiguration:];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_createConfigurationFromDNDSIDSRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKey:@"DNDSGlobalConfigurationRecordData"];
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
      {
        [DNDSGlobalConfigurationStore _createConfigurationFromDNDSIDSRecord:];
      }

      v7 = 0;
    }

    else
    {
      v9 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
      v7 = [DNDSGlobalConfiguration newWithDictionaryRepresentation:v5 context:v9];
    }
  }

  else
  {
    v8 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _createConfigurationFromDNDSIDSRecord:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_createConfigurationFromCKRecord:(id)record
{
  recordCopy = record;
  encryptedValues = [recordCopy encryptedValues];
  v5 = [encryptedValues objectForKey:@"DNDSGlobalConfigurationRecordEncryptedData"];

  if (v5)
  {
    v12 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v12];
    v7 = v12;
    if (v7)
    {
      if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
      {
        [DNDSGlobalConfigurationStore _createConfigurationFromCKRecord:];
      }

      v8 = 0;
    }

    else
    {
      v10 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
      v8 = [DNDSGlobalConfiguration newWithDictionaryRepresentation:v6 context:v10];
    }
  }

  else
  {
    v9 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _createConfigurationFromCKRecord:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_lock_mutableExistingConfigurationInStore:(id)store
{
  _lock_existingConfiguration = [(DNDSGlobalConfigurationStore *)self _lock_existingConfiguration];
  v4 = [_lock_existingConfiguration mutableCopy];

  return v4;
}

- (id)_lock_existingConfiguration
{
  os_unfair_lock_assert_owner(&self->_lock);
  backingStore = self->_backingStore;
  v7 = 0;
  v4 = [(DNDSBackingStore *)backingStore readRecordWithError:&v7];
  v5 = v7;
  if (v5 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore _lock_existingConfiguration];
  }

  return v4;
}

- (void)_populateDNDSIDSRecord:(id)record withGlobalConfiguration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
  v7 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v8 = [configurationCopy dictionaryRepresentationWithContext:v7];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v8])
  {
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
    [recordCopy setObject:v9 forKey:@"DNDSGlobalConfigurationRecordData"];
    [recordCopy setObject:&unk_285C536A0 forKey:@"DNDSGlobalConfigurationVersion"];
    [recordCopy setObject:&unk_285C536A0 forKey:@"DNDSGlobalConfigurationMinimumRequiredVersion"];
  }

  else
  {
    v10 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _populateDNDSIDSRecord:v10 withGlobalConfiguration:?];
    }

    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }

    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }
  }
}

- (void)_populateCKRecord:(id)record withGlobalConfiguration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
  v7 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v8 = [configurationCopy dictionaryRepresentationWithContext:v7];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v8])
  {
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
    encryptedValues = [recordCopy encryptedValues];
    [encryptedValues setObject:v9 forKey:@"DNDSGlobalConfigurationRecordEncryptedData"];

    [recordCopy setObject:&unk_285C536A0 forKeyedSubscript:@"DNDSGlobalConfigurationVersion"];
    [recordCopy setObject:&unk_285C536A0 forKeyedSubscript:@"DNDSGlobalConfigurationMinimumRequiredVersion"];
  }

  else
  {
    v11 = DNDSLogGlobalConfiguration;
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _populateCKRecord:v11 withGlobalConfiguration:?];
    }

    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }

    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }
  }
}

- (void)_lock_prepareDNDSIDSRecordToSave:(id)save
{
  saveCopy = save;
  os_unfair_lock_assert_owner(&self->_lock);
  backingStore = self->_backingStore;
  v8 = 0;
  v6 = [(DNDSBackingStore *)backingStore readRecordWithError:&v8];
  v7 = v8;
  if (v7)
  {
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _lock_prepareDNDSIDSRecordToSave:];
    }
  }

  else
  {
    [(DNDSGlobalConfigurationStore *)self _populateDNDSIDSRecord:saveCopy withGlobalConfiguration:v6];
  }
}

- (void)_lock_prepareCKRecordToSave:(id)save
{
  saveCopy = save;
  os_unfair_lock_assert_owner(&self->_lock);
  backingStore = self->_backingStore;
  v8 = 0;
  v6 = [(DNDSBackingStore *)backingStore readRecordWithError:&v8];
  v7 = v8;
  if (v7)
  {
    if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSGlobalConfigurationStore _lock_prepareDNDSIDSRecordToSave:];
    }
  }

  else
  {
    [(DNDSGlobalConfigurationStore *)self _populateCKRecord:saveCopy withGlobalConfiguration:v6];
  }
}

- (void)_notifyDelegateOfConfigurationChange
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  backingStore = self->_backingStore;
  v14 = 0;
  v5 = [(DNDSBackingStore *)backingStore readRecordWithError:&v14];
  v6 = v14;
  v7 = [(DNDSGlobalConfiguration *)self->_configuration copy];
  objc_storeStrong(&self->_configuration, v5);
  if (v6 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore _lock_prepareDNDSIDSRecordToSave:];
  }

  os_unfair_lock_unlock(&self->_lock);
  preventAutoReply = [v5 preventAutoReply];
  if (preventAutoReply != [v7 preventAutoReply])
  {
    v9 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      preventAutoReply2 = [v5 preventAutoReply];
      v12 = "prevent";
      if (!preventAutoReply2)
      {
        v12 = "allow";
      }

      *buf = 136446210;
      v16 = v12;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate of prevent-auto-reply change: %{public}s", buf, 0xCu);
    }

    [WeakRetained globalConfigurationStore:self didUpdatePreventAutoReplySetting:{DNDResolvedPreventAutoReplySetting(objc_msgSend(v5, "preventAutoReply")) == 2}];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateConfigurationWithDNDSIDSRecord:(id)record
{
  recordCopy = record;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromDNDSIDSRecord:recordCopy];

  backingStore = self->_backingStore;
  v8 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v8];
  v7 = v8;
  if (v7 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore _lock_updateConfigurationWithDNDSIDSRecord:];
  }
}

- (void)_lock_updateConfigurationWithCKRecord:(id)record
{
  recordCopy = record;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(DNDSGlobalConfigurationStore *)self _createConfigurationFromCKRecord:recordCopy];

  backingStore = self->_backingStore;
  v8 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v5 error:&v8];
  v7 = v8;
  if (v7 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSGlobalConfigurationStore _lock_updateConfigurationWithDNDSIDSRecord:];
  }
}

- (void)_lock_purgeData
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(DNDSMutableGlobalConfiguration);
  [(DNDSMutableGlobalConfiguration *)v3 setAutomaticallyGenerated:1];
  v4 = DNDSLogGlobalConfiguration;
  if (os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Replacing record with default global configuration", buf, 2u);
  }

  backingStore = self->_backingStore;
  v10 = 0;
  [(DNDSBackingStore *)backingStore writeRecord:v3 error:&v10];
  v6 = v10;
  v7 = [[DNDSIDSRecordID alloc] initWithIdentifier:@"DNDSGlobalConfigurationRecord" zone:@"DNDSGlobalConfiguration"];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine addRecordIDsToSave:v8 recordIDsToDelete:0];
  if (v6 && os_log_type_enabled(DNDSLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDSModeConfigurationsStore purgeRecordsForIDSSyncEngine:];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_purgeData
{
  os_unfair_lock_lock(&self->_lock);
  [(DNDSGlobalConfigurationStore *)self _lock_purgeData];
  os_unfair_lock_unlock(&self->_lock);

  [(DNDSGlobalConfigurationStore *)self _notifyDelegateOfConfigurationChange];
}

- (DNDSGlobalConfigurationStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)syncEngine:(void *)a1 didFetchRecord:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Fetched data with ID %@ could not be reconstructed into a configuration; ignoring update", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:failedToDeleteRecordWithID:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2_2() recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v4, v5, "Failed to delete record %@: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 resolveConflictBetweenClientRecord:andServerRecord:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Could not resolve conflict as remote configuration is nil; keeping local data with ID %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:didFetchRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Fetched data with ID %@ could not be reconstructed into a configuration; ignoring update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)globalConfigurationSyncManager:didReceiveUpdatedGlobalConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v12 = *MEMORY[0x277D85DE8];
  v3 = v2;
  [OUTLINED_FUNCTION_2_2() lastModified];
  objc_claimAutoreleasedReturnValue();
  v11 = [OUTLINED_FUNCTION_4_0() lastModified];
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v4, v5, "Ignoring incoming configuration with date %@ as it is older than existing configuration with date %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_createConfigurationFromDNDSIDSRecord:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2_2() recordID];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v5, v6, "Failed to decode record data %@: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createConfigurationFromDNDSIDSRecord:(void *)a1 .cold.2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Record data is nil in record data %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createConfigurationFromCKRecord:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2_2() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_24912E000, v5, v6, "Failed to decode record data %@: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createConfigurationFromCKRecord:(void *)a1 .cold.2(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Record data is nil in record data %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_lock_existingConfiguration
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to fetch existing configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_populateDNDSIDSRecord:(void *)a1 withGlobalConfiguration:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Record %@ is not valid JSON", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_populateCKRecord:(void *)a1 withGlobalConfiguration:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() recordID];
  v4 = [v3 recordName];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3(&dword_24912E000, v5, v6, "Record %@ is not valid JSON", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_lock_prepareDNDSIDSRecordToSave:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Could not read configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updateConfigurationWithDNDSIDSRecord:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error writing fetched configurations: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end