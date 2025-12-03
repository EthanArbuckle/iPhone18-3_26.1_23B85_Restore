@interface DNDSIDSSyncEngineMetadataStore
- (BOOL)_areSyncDatesValidAtDate:(id)date;
- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)d;
- (BOOL)_isMetadataValidAtDate:(id)date;
- (BOOL)_isPairedDeviceOutdated:(id)outdated;
- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)identifier;
- (BOOL)isValidAtDate:(id)date;
- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)duration tombstoneObsoletionDuration:(double)obsoletionDuration;
- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)l;
- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)identifier;
- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)identifier;
- (id)unknownRecordIDsInRecordIDs:(id)ds;
- (void)_forgetMetadataForRecordID:(id)d;
- (void)_forgetObsoleteTombstones;
- (void)_forgetRecordID:(id)d;
- (void)_forgetSyncDatesForDevicesWithoutInitialSync;
- (void)_forgetSyncDatesForOutdatedDevices;
- (void)_forgetSyncDatesForRecordID:(id)d;
- (void)_parseDictionary:(id)dictionary;
- (void)_read;
- (void)_write;
- (void)garbageCollect;
- (void)purge;
- (void)removePairedDeviceIdentifier:(id)identifier;
- (void)setDeletedAtDate:(id)date forRecordIDs:(id)ds;
- (void)setLastModifiedDate:(id)date forRecordIDs:(id)ds;
- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)identifier;
- (void)setSyncDate:(id)date forRecordIDs:(id)ds forPairedDeviceIdentifier:(id)identifier;
- (void)setSyncDate:(id)date forRecordsMatchingMetadata:(id)metadata forPairedDeviceIdentifier:(id)identifier;
- (void)updateMetadata:(id)metadata;
@end

@implementation DNDSIDSSyncEngineMetadataStore

- (DNDSIDSSyncEngineMetadataStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v5 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    *(v5 + 40) = xmmword_2491FFC00;
    [v5 _read];
    [v5 garbageCollect];
    [v5 _write];
  }

  return v5;
}

- (DNDSIDSSyncEngineMetadataStore)initWithDeviceObsoletionDuration:(double)duration tombstoneObsoletionDuration:(double)obsoletionDuration
{
  v9.receiver = self;
  v9.super_class = DNDSIDSSyncEngineMetadataStore;
  v6 = [(DNDSIDSSyncEngineMetadataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_deviceObsoletionDuration = duration;
    v6->_tombstoneObsoletionDuration = obsoletionDuration;
    [(DNDSIDSSyncEngineMetadataStore *)v6 _parseDictionary:0];
  }

  return v7;
}

- (id)unknownRecordIDsInRecordIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = dsCopy;
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
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)modifiedRecordIDsForPairedDeviceIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [MEMORY[0x277CBEB18] array];
  v18 = v17 = identifierCopy;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
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

- (id)deletedRecordIDsForPairedDeviceIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [MEMORY[0x277CBEB18] array];
  v18 = v17 = identifierCopy;
  v5 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
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

- (void)setLastModifiedDate:(id)date forRecordIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
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
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:dateCopy deleted:0, v17];
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

- (void)setDeletedAtDate:(id)date forRecordIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
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
          v15 = [(DNDSIDSRecordMetadata *)v14 initWithRecordID:v13 lastModified:dateCopy deleted:1, v17];
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

- (void)setSyncDate:(id)date forRecordIDs:(id)ds forPairedDeviceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  identifierCopy = identifier;
  if ([dsCopy count])
  {
    dictionary = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:dictionary forKeyedSubscript:identifierCopy];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = dsCopy;
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

          [dictionary setObject:dateCopy forKeyedSubscript:{*(*(&v18 + 1) + 8 * v16++), v18}];
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

- (void)setSyncDate:(id)date forRecordsMatchingMetadata:(id)metadata forPairedDeviceIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  metadataCopy = metadata;
  identifierCopy = identifier;
  if ([metadataCopy count])
  {
    dictionary = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifierCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier setObject:dictionary forKeyedSubscript:identifierCopy];
    }

    v23 = identifierCopy;
    v24 = metadataCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = metadataCopy;
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
          recordID = [v17 recordID];
          v20 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:recordID];

          if ([v17 isEqual:v20])
          {
            recordID2 = [v17 recordID];
            [dictionary setObject:dateCopy forKeyedSubscript:recordID2];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(DNDSIDSSyncEngineMetadataStore *)self garbageCollect];
    [(DNDSIDSSyncEngineMetadataStore *)self _write];

    identifierCopy = v23;
    metadataCopy = v24;
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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordIDSyncDatesByPairedDeviceIdentifier = self->_recordIDSyncDatesByPairedDeviceIdentifier;
  self->_recordIDSyncDatesByPairedDeviceIdentifier = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  recordMetadataByRecordID = self->_recordMetadataByRecordID;
  self->_recordMetadataByRecordID = dictionary2;

  v8 = [MEMORY[0x277CBEB58] set];
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  self->_initialSyncPairedDeviceIdentifiers = v8;

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)updateMetadata:(id)metadata
{
  v24 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [metadataCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(metadataCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        recordMetadataByRecordID = self->_recordMetadataByRecordID;
        recordID = [v10 recordID];
        v13 = [(NSMutableDictionary *)recordMetadataByRecordID objectForKeyedSubscript:recordID];

        if (v10 != v13)
        {
          v14 = !v10 || v13 == 0;
          if (v14 || ([v10 isEqual:v13] & 1) == 0)
          {
            recordID2 = [v10 recordID];
            [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:recordID2];

            v16 = self->_recordMetadataByRecordID;
            recordID3 = [v10 recordID];
            [(NSMutableDictionary *)v16 setObject:v10 forKeyedSubscript:recordID3];

            v7 = 1;
          }
        }
      }

      v6 = [metadataCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
    if (v7)
    {
      [(DNDSIDSSyncEngineMetadataStore *)self _write];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasMetadataForPairedDeviceIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)garbageCollect
{
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForDevicesWithoutInitialSync];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForOutdatedDevices];

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetObsoleteTombstones];
}

- (BOOL)isValidAtDate:(id)date
{
  dateCopy = date;
  if ([(DNDSIDSSyncEngineMetadataStore *)self _isMetadataValidAtDate:dateCopy])
  {
    v5 = [(DNDSIDSSyncEngineMetadataStore *)self _areSyncDatesValidAtDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removePairedDeviceIdentifier:(id)identifier
{
  initialSyncPairedDeviceIdentifiers = self->_initialSyncPairedDeviceIdentifiers;
  identifierCopy = identifier;
  [(NSMutableSet *)initialSyncPairedDeviceIdentifiers removeObject:identifierCopy];
  [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier removeObjectForKey:identifierCopy];

  [(DNDSIDSSyncEngineMetadataStore *)self _write];
}

- (void)setPerformedInitialSyncForPairedDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_initialSyncPairedDeviceIdentifiers addObject:identifierCopy];
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
  dictionary = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:url error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = DNDSLogCloudSync;
    if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
    {
      [(DNDSSyncEngineMetadataStore *)p_url _read];
    }
  }

  if (!dictionary)
  {
LABEL_6:
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _parseDictionary:dictionary];
}

- (void)_parseDictionary:(id)dictionary
{
  v53 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
          recordID = [v12 recordID];
          [dictionary setObject:v13 forKeyedSubscript:recordID];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v9);
  }

  v38 = dictionary;
  selfCopy = self;
  objc_storeStrong(&self->_recordMetadataByRecordID, dictionary);
  v40 = dictionaryCopy;
  v15 = [dictionaryCopy objectForKeyedSubscript:@"syncDates"];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
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
          dictionary3 = [(NSMutableDictionary *)dictionary2 objectForKeyedSubscript:v27];
          if (!dictionary3)
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
            [(NSMutableDictionary *)dictionary2 setObject:dictionary3 forKeyedSubscript:v28];
          }

          [dictionary3 setObject:v24 forKeyedSubscript:v26];
        }
      }

      v18 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v18);
  }

  recordIDSyncDatesByPairedDeviceIdentifier = selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier;
  selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier = dictionary2;
  v33 = dictionary2;

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
  initialSyncPairedDeviceIdentifiers = selfCopy->_initialSyncPairedDeviceIdentifiers;
  selfCopy->_initialSyncPairedDeviceIdentifiers = v35;

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_write
{
  v59 = *MEMORY[0x277D85DE8];
  if (self->_url)
  {
    selfCopy = self;
    v38 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v4 = selfCopy->_recordMetadataByRecordID;
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

          v9 = [(NSMutableDictionary *)selfCopy->_recordMetadataByRecordID objectForKeyedSubscript:*(*(&v48 + 1) + 8 * i)];
          v10 = [v9 dictionaryRepresentationWithContext:v38];
          [array addObject:v10];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v6);
    }

    v31 = array;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier;
    v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v35)
    {
      v33 = *v45;
      v34 = selfCopy;
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
          v13 = [(NSMutableDictionary *)selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:v12];
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
                [array2 addObject:v23];
              }

              v15 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
            }

            while (v15);
          }

          v11 = v36 + 1;
          selfCopy = v34;
        }

        while (v36 + 1 != v35);
        v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v35);
    }

    allObjects = [(NSMutableSet *)selfCopy->_initialSyncPairedDeviceIdentifiers allObjects];
    v52[0] = @"metadata";
    v52[1] = @"syncDates";
    v53[0] = v31;
    v53[1] = array2;
    v52[2] = @"initialSyncs";
    v53[2] = allObjects;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
    url = selfCopy->_url;
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

- (BOOL)_isPairedDeviceOutdated:(id)outdated
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableDictionary *)self->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:outdated];
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
          date = [MEMORY[0x277CBEAA8] date];
          v16 = [v14 laterDate:date];

          v4 = v12;
          v6 = v11;
          v5 = v19;
          if (v16 == date)
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

- (void)_forgetSyncDatesForRecordID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = dCopy;
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
        [v13 setObject:0 forKeyedSubscript:dCopy];
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

- (void)_forgetMetadataForRecordID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting metadata for record: %{public}@", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_recordMetadataByRecordID setObject:0 forKeyedSubscript:dCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_forgetRecordID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DNDSLogIDSSyncEngine;
  if (os_log_type_enabled(DNDSLogIDSSyncEngine, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = dCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Forgetting record: %{public}@", &v7, 0xCu);
  }

  [(DNDSIDSSyncEngineMetadataStore *)self _forgetSyncDatesForRecordID:dCopy];
  [(DNDSIDSSyncEngineMetadataStore *)self _forgetMetadataForRecordID:dCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canTombstoneBeRemovedWithRecordID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_recordMetadataByRecordID objectForKeyedSubscript:dCopy];
  date = [MEMORY[0x277CBEAA8] date];
  lastModified = [v5 lastModified];
  v8 = [lastModified dateByAddingTimeInterval:self->_tombstoneObsoletionDuration];

  v9 = [date laterDate:v8];

  if (v9 == date)
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
          v17 = [v16 objectForKeyedSubscript:dCopy];

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

- (BOOL)_isMetadataValidAtDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
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
        lastModified = [v10 lastModified];
        v12 = [lastModified earlierDate:dateCopy];

        if (v12 == dateCopy)
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

- (BOOL)_areSyncDatesValidAtDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
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

        v9 = [(NSMutableDictionary *)selfCopy->_recordIDSyncDatesByPairedDeviceIdentifier objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
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
              v16 = [v15 earlierDate:dateCopy];

              if (v16 == dateCopy)
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