@interface DNDSIDSSyncEngineMetadataStore
- (BOOL)_areSyncDatesValidAtDate:(id)a3;
- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)a3;
- (BOOL)_isMetadataValidAtDate:(id)a3;
- (BOOL)_isPairedDeviceOutdated:(id)a3;
- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)a3;
- (BOOL)isValidAtDate:(id)a3;
- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)a3 tombstoneObsoletionDuration:(double)a4;
- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)a3;
- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)a3;
- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)a3;
- (id)unknownRecordIDsInRecordIDs:(id)a3;
- (void)_forgetMetadataForRecordID:(id)a3;
- (void)_forgetObsoleteTombstones;
- (void)_forgetRecordID:(id)a3;
- (void)_forgetSyncDatesForDevicesWithoutInitialSync;
- (void)_forgetSyncDatesForOutdatedDevices;
- (void)_forgetSyncDatesForRecordID:(id)a3;
- (void)_parseDictionary:(id)a3;
- (void)_read;
- (void)_write;
- (void)garbageCollect;
- (void)purge;
- (void)removePairedDeviceIdentifier:(id)a3;
- (void)setDeletedAtDate:(id)a3 forRecordIDs:(id)a4;
- (void)setLastModifiedDate:(id)a3 forRecordIDs:(id)a4;
- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)a3;
- (void)setSyncDate:(id)a3 forRecordIDs:(id)a4 forPairedDeviceIdentifier:(id)a5;
- (void)setSyncDate:(id)a3 forRecordsMatchingMetadata:(id)a4 forPairedDeviceIdentifier:(id)a5;
- (void)updateMetadata:(id)a3;
@end

@implementation DNDSIDSSyncEngineMetadataStore

- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v5 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    *(v5 + 40) = xmmword_2491FFC00;
    [v5 _read];
    [v5 garbageCollect];
    [v5 _write];
  }

  return v5;
}

- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)a3 tombstoneObsoletionDuration:(double)a4
{
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v6 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_deviceObsoletionDuration = a3;
    v6->_tombstoneObsoletionDuration = a4;
    [(DNDSIDSSyncEngineMetadataStore *)v6 _parseDictionary:0];
  }

  return v7;
}

- (id)unknownRecordIDsInRecordIDs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v11, v15];
        if (!v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [MEMORY[0x277CBEB18] array];
  v18 = v17 = v4;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v10];
        if (([v12 isDeleted] & 1) == 0)
        {
          if (!v11 || ([v12 lastModified], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == v11))
          {
            [v18 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [MEMORY[0x277CBEB18] array];
  v18 = v17 = v4;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v10];
        if ([v12 isDeleted])
        {
          if (!v11 || ([v12 lastModified], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == v11))
          {
            [v18 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setLastModifiedDate:(id)a3 forRecordIDs:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [DNDSIDSRecordMetadata alloc];
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:v6 deleted:0, v17];
          [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:v15 forKeyedSubscript:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setDeletedAtDate:(id)a3 forRecordIDs:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [DNDSIDSRecordMetadata alloc];
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:v6 deleted:1, v17];
          [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:v15 forKeyedSubscript:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setSyncDate:(id)a3 forRecordIDs:(id)a4 forPairedDeviceIdentifier:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:v11 forKeyedSubscript:v10];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 setObject:v8 forKeyedSubscript:{*(*(&v18 + 1) + 8 * v16++), v18}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self garbageCollect];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setSyncDate:(id)a3 forRecordsMatchingMetadata:(id)a4 forPairedDeviceIdentifier:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:v11 forKeyedSubscript:v10];
    }

    v23 = v10;
    v24 = v9;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          recordMetadataByRecordID = self->_recordMetadataByRecordID;
          v19 = [v17 recordID];
          v20 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:v19];

          if ([v17 isEqual:v20])
          {
            v21 = [v17 recordID];
            [v11 setObject:v8 forKeyedSubscript:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self garbageCollect];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];

    v10 = v23;
    v9 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)purge
{
  v3 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24912E000, v3, OS_LOG_TYPE_DEFAULT, "Purging metadata store", v10, 2u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  recordIDSyncDatesByPairedDeviceIdentifier = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  self->_recordIDSyncDatesByPairedDeviceIdentifier = v4;

  v6 = [MEMORY[0x277CBEB38] dictionary];
  recordMetadataByRecordID = self->_recordMetadataByRecordID;
  self->_recordMetadataByRecordID = v6;

  v8 = [MEMORY[0x277CBEB58] set];
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  self->_initialSyncPairedDeviceIdentifiers = v8;

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)updateMetadata:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        recordMetadataByRecordID = self->_recordMetadataByRecordID;
        v12 = [v10 recordID];
        v13 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:v12];

        if (v10 != v13)
        {
          v14 = !v10 || v13 == 0;
          if (v14 || ([v10 isEqual:v13] & 1) == 0)
          {
            v15 = [v10 recordID];
            [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:v15];

            v16 = self->_recordMetadataByRecordID;
            v17 = [v10 recordID];
            [(NSMutableDictionary *)v16 setObject:v10 forKeyedSubscript:v17];

            v7 = 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
    if (v7)
    {
      [(DNDSIDSSyncEngineMetadataStore *)self _write];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)garbageCollect
{
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForDevicesWithoutInitialSync];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForOutdatedDevices];

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetObsoleteTombstones];
}

- (BOOL)isValidAtDate:(id)a3
{
  v4 = a3;
  if ([(DNDSIDSSyncEngineMetadataStore *)self _isMetadataValidAtDate:v4])
  {
    v5 = [(DNDSIDSSyncEngineMetadataStore *)self _areSyncDatesValidAtDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removePairedDeviceIdentifier:(id)a3
{
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  v5 = a3;
  [(NSMutableSet *)initialSyncPairedDeviceIdentifiers removeObject:v5];
  [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier removeObjectForKey:v5];

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers addObject:v4];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];
  }
}

- (void)_read
{
  p_url = &self->_url;
  url = self->_url;
  if (!url)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:url error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSSyncEngineMetadataStore *)p_url _read];
    }
  }

  if (!v5)
  {
LABEL_6:
    v5 = [MEMORY[0x277CBEAC0] dictionary];
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _parseDictionary:v5];
}

- (void)_parseDictionary:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v6 = [v4 objectForKeyedSubscript:@"metadata"];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:*(*(&v47 + 1) + 8 * i) context:v5];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 recordID];
          [v7 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v9);
  }

  v38 = v7;
  v39 = self;
  objc_storeStrong(&self->_recordMetadataByRecordID, v7);
  v40 = v4;
  v15 = [v4 objectForKeyedSubscript:@"syncDates"];
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v15;
  v17 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v41);
        }

        v21 = *(*(&v43 + 1) + 8 * j);
        v22 = MEMORY[0x277CBEAA8];
        v23 = [v21 objectForKeyedSubscript:@"syncDate"];
        [v23 doubleValue];
        v24 = [v22 dateWithTimeIntervalSinceReferenceDate:?];

        v25 = [v21 objectForKeyedSubscript:@"recordID"];
        v26 = [DNDSIDSRecordID newWithDictionaryRepresentation:v25 context:v5];

        v27 = [v21 objectForKeyedSubscript:@"pairedDeviceIdentifier"];
        v28 = v27;
        if (v24)
        {
          v29 = v26 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29 && v27 != 0)
        {
          v31 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v27];
          if (!v31)
          {
            v31 = [MEMORY[0x277CBEB38] dictionary];
            [(NSMutableDictionary *)v16 setObject:v31 forKeyedSubscript:v28];
          }

          [v31 setObject:v24 forKeyedSubscript:v26];
        }
      }

      v18 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v18);
  }

  recordIDSyncDatesByPairedDeviceIdentifier = v39->_recordIDSyncDatesByPairedDeviceIdentifier;
  v39->_recordIDSyncDatesByPairedDeviceIdentifier = v16;
  v33 = v16;

  v34 = [v40 objectForKeyedSubscript:@"initialSyncs"];
  if (v34)
  {
    [MEMORY[0x277CBEB58] setWithArray:v34];
  }

  else
  {
    [MEMORY[0x277CBEB58] set];
  }
  v35 = ;
  initialSyncPairedDeviceIdentifiers = v39->_initialSyncPairedDeviceIdentifiers;
  v39->_initialSyncPairedDeviceIdentifiers = v35;

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_write
{
  v59 = *MEMORY[0x277D85DE8];
  if (self->_url)
  {
    v2 = self;
    v38 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v3 = [MEMORY[0x277CBEB18] array];
    v37 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v4 = v2->_recordMetadataByRecordID;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v49;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)v2->_recordMetadataByRecordID objectForKeyedSubscript:*(*(&v48 + 1) + 8 * i)];
          v10 = [v9 dictionaryRepresentationWithContext:v38];
          [v3 addObject:v10];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v6);
    }

    v31 = v3;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v2->_recordIDSyncDatesByPairedDeviceIdentifier;
    v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v35)
    {
      v33 = *v45;
      v34 = v2;
      do
      {
        v11 = 0;
        do
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v11;
          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)v2->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v12];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v41;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v41 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v40 + 1) + 8 * j);
                v19 = [v13 objectForKeyedSubscript:v18];
                v54[0] = @"recordID";
                v20 = [v18 dictionaryRepresentationWithContext:v38];
                v55[0] = v20;
                v55[1] = v12;
                v54[1] = @"pairedDeviceIdentifier";
                v54[2] = @"syncDate";
                v21 = MEMORY[0x277CCABB0];
                [v19 timeIntervalSinceReferenceDate];
                v22 = [v21 numberWithDouble:?];
                v55[2] = v22;
                v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];
                [v37 addObject:v23];
              }

              v15 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
            }

            while (v15);
          }

          v11 = v36 + 1;
          v2 = v34;
        }

        while (v36 + 1 != v35);
        v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v35);
    }

    v24 = [(NSMutableSet *)v2->_initialSyncPairedDeviceIdentifiers allObjects];
    v52[0] = @"metadata";
    v52[1] = @"syncDates";
    v53[0] = v31;
    v53[1] = v37;
    v52[2] = @"initialSyncs";
    v53[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
    url = v2->_url;
    v39 = 0;
    v27 = [v25 writeToURL:url error:&v39];
    v28 = v39;
    if ((v27 & 1) == 0)
    {
      v29 = DNDSLogIDSSyncEngine;
      if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_ERROR))
      {
        [(DNDSSyncEngineMetadataStore *)v28 _write];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_forgetSyncDatesForDevicesWithoutInitialSync
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers containsObject:v9]& 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    *&v12 = 138543362;
    v19 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v29 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Forgetting device without initial sync data: %{public}@", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:v16, v19, v20];
      }

      v13 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_forgetSyncDatesForOutdatedDevices
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_initialSyncPairedDeviceIdentifiers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([(DNDSIDSSyncEngineMetadataStore *)self _isPairedDeviceOutdated:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v21;
    *&v12 = 138543362;
    v19 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = DNDSLogIDSSyncEngine;
        if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v29 = v16;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Forgetting outdated device: %{public}@", buf, 0xCu);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:v16, v19, v20];
        [(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers removeObject:v16];
      }

      v13 = [v10 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPairedDeviceOutdated:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_recordMetadataByRecordID;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    while (2)
    {
      v7 = 0;
      v19 = v5;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v8, v19];
        v10 = [v4 objectForKeyedSubscript:v8];
        if (!v10)
        {
          [v9 lastModified];
          v11 = v6;
          v13 = v12 = v4;
          v14 = [v13 dateByAddingTimeInterval:self->_deviceObsoletionDuration];
          v15 = [MEMORY[0x277CBEAA8] date];
          v16 = [v14 laterDate:v15];

          v4 = v12;
          v6 = v11;
          v5 = v19;
          if (v16 == v15)
          {

            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_forgetObsoleteTombstones
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_recordMetadataByRecordID;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v9];
        if ([v10 isDeleted] && -[DNDSIDSSyncEngineMetadataStore _canTombstoneBeRemovedWithRecordID:](self, "_canTombstoneBeRemovedWithRecordID:", v9))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(DNDSIDSSyncEngineMetadataStore *)self _forgetRecordID:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_forgetSyncDatesForRecordID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting sync dates for record: %{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v12];
        [v13 setObject:0 forKeyedSubscript:v4];
        if (![v13 count])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:0 forKeyedSubscript:*(*(&v20 + 1) + 8 * j), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_forgetMetadataForRecordID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting metadata for record: %{public}@", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:0 forKeyedSubscript:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_forgetRecordID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting record: %{public}@", &v7, 0xCu);
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:v4];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetMetadataForRecordID:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:v4];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 lastModified];
  v8 = [v7 dateByAddingTimeInterval:self->_tombstoneObsoletionDuration];

  v9 = [v6 laterDate:v8];

  if (v9 == v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_initialSyncPairedDeviceIdentifiers;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v20 = v5;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
          v17 = [v16 objectForKeyedSubscript:v4];

          if (!v17)
          {
            v10 = 0;
            goto LABEL_13;
          }
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v10 = 1;
LABEL_13:
      v5 = v20;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isMetadataValidAtDate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_recordMetadataByRecordID;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        v11 = [v10 lastModified];
        v12 = [v11 earlierDate:v4];

        if (v12 == v4)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_areSyncDatesValidAtDate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self;
  obj = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v20 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)v21->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [v10 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * j)];
              v16 = [v15 earlierDate:v4];

              if (v16 == v4)
              {
                v20 = 0;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v20 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

@end