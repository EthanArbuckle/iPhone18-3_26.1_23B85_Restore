@interface PDCloudStoreCounterpartRecordParserZones
- (PDCloudStoreCounterpartRecordParserZones)init;
- (id)allRecords;
- (void)addRecord:(id)record;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeIdentifiers:(id)identifiers;
@end

@implementation PDCloudStoreCounterpartRecordParserZones

- (PDCloudStoreCounterpartRecordParserZones)init
{
  v6.receiver = self;
  v6.super_class = PDCloudStoreCounterpartRecordParserZones;
  v2 = [(PDCloudStoreCounterpartRecordParserZones *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneNameToRecords = v2->_zoneNameToRecords;
    v2->_zoneNameToRecords = v3;
  }

  return v2;
}

- (void)addRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v9 = recordCopy;
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];

    v8 = [(NSMutableDictionary *)self->_zoneNameToRecords objectForKey:zoneName];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_zoneNameToRecords setObject:v8 forKey:zoneName];
    }

    [v8 addObject:v9];

    recordCopy = v9;
  }
}

- (id)allRecords
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  zoneNameToRecords = self->_zoneNameToRecords;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PDCloudStoreCounterpartRecordParserZones_allRecords__block_invoke;
  v8[3] = &unk_1E79C86A8;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)zoneNameToRecords enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __54__PDCloudStoreCounterpartRecordParserZones_allRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (void)removeIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(NSMutableDictionary *)self->_zoneNameToRecords removeObjectForKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  zoneNameToRecords = self->_zoneNameToRecords;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PDCloudStoreCounterpartRecordParserZones_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E79C86D0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)zoneNameToRecords enumerateKeysAndObjectsUsingBlock:v7];
}

void __78__PDCloudStoreCounterpartRecordParserZones_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 allObjects];
  (*(v6 + 16))(v6, v7, v8, a4);
}

@end