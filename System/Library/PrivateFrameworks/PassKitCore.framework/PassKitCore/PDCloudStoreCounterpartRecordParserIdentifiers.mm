@interface PDCloudStoreCounterpartRecordParserIdentifiers
- (PDCloudStoreCounterpartRecordParserIdentifiers)init;
- (id)allRecords;
- (id)allRecordsWithIdentifier:(id)a3;
- (void)addRecord:(id)a3 identifier:(id)a4;
- (void)removeIdentifiers:(id)a3;
@end

@implementation PDCloudStoreCounterpartRecordParserIdentifiers

- (PDCloudStoreCounterpartRecordParserIdentifiers)init
{
  v6.receiver = self;
  v6.super_class = PDCloudStoreCounterpartRecordParserIdentifiers;
  v2 = [(PDCloudStoreCounterpartRecordParserIdentifiers *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifierToParserZones = v2->_identifierToParserZones;
    v2->_identifierToParserZones = v3;
  }

  return v2;
}

- (void)addRecord:(id)a3 identifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_identifierToParserZones objectForKey:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(PDCloudStoreCounterpartRecordParserZones);
    [(NSMutableDictionary *)self->_identifierToParserZones setObject:v7 forKey:v6];
  }

  [(PDCloudStoreCounterpartRecordParserZones *)v7 addRecord:v8];
}

- (id)allRecordsWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(NSMutableDictionary *)self->_identifierToParserZones objectForKey:v5];

  v8 = [v7 allRecords];
  [v6 addObjectsFromArray:v8];

  v9 = [v6 copy];

  return v9;
}

- (id)allRecords
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  identifierToParserZones = self->_identifierToParserZones;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PDCloudStoreCounterpartRecordParserIdentifiers_allRecords__block_invoke;
  v8[3] = &unk_1E79C8680;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)identifierToParserZones enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __60__PDCloudStoreCounterpartRecordParserIdentifiers_allRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 allRecords];
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

- (void)removeIdentifiers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(NSMutableDictionary *)self->_identifierToParserZones removeObjectForKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end