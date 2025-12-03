@interface DNDSSyncEngineMetadataStore
- (BOOL)addZoneName:(id)name;
- (BOOL)removeZoneName:(id)name;
- (DNDSSyncEngineMetadataStore)initWithURL:(id)l;
- (NSData)metadata;
- (NSString)userRecordID;
- (id)_decodeRecordIDFromData:(id)data;
- (id)_encodedRecordIDFromRecordID:(id)d;
- (id)_encodedSystemFieldsFromRecord:(id)record;
- (id)recordIDsWithZoneID:(id)d;
- (id)recordWithID:(id)d;
- (id)zoneNames;
- (void)_read;
- (void)_updateSystemFieldsForRecord:(id)record;
- (void)_write;
- (void)addRecord:(id)record;
- (void)purge;
- (void)removeRecordWithID:(id)d;
- (void)removeRecordsWithZoneID:(id)d;
- (void)setMetadata:(id)metadata;
- (void)setUserRecordID:(id)d;
@end

@implementation DNDSSyncEngineMetadataStore

- (DNDSSyncEngineMetadataStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DNDSSyncEngineMetadataStore;
  v5 = [(DNDSSyncEngineMetadataStore *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    [(DNDSSyncEngineMetadataStore *)v5 _read];
  }

  return v5;
}

- (NSData)metadata
{
  v2 = [(NSData *)self->_metadata copy];

  return v2;
}

- (void)setMetadata:(id)metadata
{
  v4 = [metadata copy];
  metadata = self->_metadata;
  self->_metadata = v4;

  [(DNDSSyncEngineMetadataStore *)self _write];
}

- (NSString)userRecordID
{
  v2 = [(NSString *)self->_userRecordID copy];

  return v2;
}

- (void)setUserRecordID:(id)d
{
  v4 = [d copy];
  userRecordID = self->_userRecordID;
  self->_userRecordID = v4;

  [(DNDSSyncEngineMetadataStore *)self _write];
}

- (id)recordWithID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_systemFieldsByRecordID objectForKeyedSubscript:dCopy];
  if (v5)
  {
    v11 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = DNDSLogCloudSync;
      if (os_log_type_enabled(DNDSLogCloudSync, OS_LOG_TYPE_ERROR))
      {
        [(DNDSSyncEngineMetadataStore *)v8 recordWithID:dCopy, v7];
      }

      v9 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addRecord:(id)record
{
  [(DNDSSyncEngineMetadataStore *)self _updateSystemFieldsForRecord:record];

  [(DNDSSyncEngineMetadataStore *)self _write];
}

- (void)removeRecordWithID:(id)d
{
  [(DNDSSyncEngineMetadataStore *)self _removeSystemFieldsForRecordID:d];

  [(DNDSSyncEngineMetadataStore *)self _write];
}

- (void)removeRecordsWithZoneID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_systemFieldsByRecordID;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        zoneID = [v11 zoneID];
        v13 = [zoneID isEqual:dCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = array;
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

          [(DNDSSyncEngineMetadataStore *)self _removeSystemFieldsForRecordID:*(*(&v20 + 1) + 8 * j), v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    [(DNDSSyncEngineMetadataStore *)self _write];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)purge
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to delete metadata store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)recordIDsWithZoneID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_systemFieldsByRecordID;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        zoneID = [v11 zoneID];
        v13 = [zoneID isEqual:dCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)addZoneName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableSet *)self->_zoneNames containsObject:nameCopy];
  if ((v5 & 1) == 0)
  {
    [(NSMutableSet *)self->_zoneNames addObject:nameCopy];
    [(DNDSSyncEngineMetadataStore *)self _write];
  }

  return v5 ^ 1;
}

- (BOOL)removeZoneName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableSet *)self->_zoneNames containsObject:nameCopy];
  if (v5)
  {
    [(NSMutableSet *)self->_zoneNames removeObject:nameCopy];
    [(DNDSSyncEngineMetadataStore *)self _write];
  }

  return v5;
}

- (id)zoneNames
{
  v2 = [(NSMutableSet *)self->_zoneNames copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (void)_read
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Failed to load metadata store at url %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_write
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to write metadata store: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateSystemFieldsForRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  v5 = [(DNDSSyncEngineMetadataStore *)self _encodedSystemFieldsFromRecord:recordCopy];

  [(NSMutableDictionary *)self->_systemFieldsByRecordID setObject:v5 forKeyedSubscript:recordID];
}

- (id)_encodedSystemFieldsFromRecord:(id)record
{
  v3 = MEMORY[0x277CCAAB0];
  recordCopy = record;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v5];

  encodedData = [v5 encodedData];

  return encodedData;
}

- (id)_encodedRecordIDFromRecordID:(id)d
{
  v3 = MEMORY[0x277CCAAB0];
  dCopy = d;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [dCopy encodeWithCoder:v5];

  encodedData = [v5 encodedData];

  return encodedData;
}

- (id)_decodeRecordIDFromData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

  v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithCoder:v5];

  return v6;
}

- (void)recordWithID:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 recordName];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Failed to decode system fields for record %{public}@: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end