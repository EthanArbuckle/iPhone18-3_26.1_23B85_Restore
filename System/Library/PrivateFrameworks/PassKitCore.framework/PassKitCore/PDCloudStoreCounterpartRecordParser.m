@interface PDCloudStoreCounterpartRecordParser
- (PDCloudStoreCounterpartRecordParser)initWithDataSource:(id)a3;
- (id)allRecordsForItemType:(unint64_t)a3;
- (id)allRecordsWithIdentifier:(id)a3 itemType:(unint64_t)a4;
- (void)addRecords:(id)a3;
- (void)enumerateKeysAndObjectsForItemType:(unint64_t)a3 usingBlock:(id)a4;
- (void)removeIdentifiers:(id)a3 itemType:(unint64_t)a4;
@end

@implementation PDCloudStoreCounterpartRecordParser

- (PDCloudStoreCounterpartRecordParser)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PDCloudStoreCounterpartRecordParser;
  v6 = [(PDCloudStoreCounterpartRecordParser *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemTypeToParserIdentifiers = v7->_itemTypeToParserIdentifiers;
    v7->_itemTypeToParserIdentifiers = v8;
  }

  return v7;
}

- (void)addRecords:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(PDCloudStoreCounterpartRecordParserDataSource *)self->_dataSource itemTypeFromRecord:v9];
        if (v10)
        {
          v11 = v10;
          itemTypeToParserIdentifiers = self->_itemTypeToParserIdentifiers;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          v14 = [(NSMutableDictionary *)itemTypeToParserIdentifiers objectForKey:v13];

          if (!v14)
          {
            v14 = objc_alloc_init(PDCloudStoreCounterpartRecordParserIdentifiers);
            v15 = self->_itemTypeToParserIdentifiers;
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
            [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
          }

          v17 = [(PDCloudStoreCounterpartRecordParserDataSource *)self->_dataSource identifierFromRecord:v9];
          [(PDCloudStoreCounterpartRecordParserIdentifiers *)v14 addRecord:v9 identifier:v17];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)removeIdentifiers:(id)a3 itemType:(unint64_t)a4
{
  itemTypeToParserIdentifiers = self->_itemTypeToParserIdentifiers;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)itemTypeToParserIdentifiers objectForKey:v8];

  [v9 removeIdentifiers:v7];
}

- (id)allRecordsForItemType:(unint64_t)a3
{
  itemTypeToParserIdentifiers = self->_itemTypeToParserIdentifiers;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)itemTypeToParserIdentifiers objectForKey:v4];

  v6 = [v5 allRecords];

  return v6;
}

- (id)allRecordsWithIdentifier:(id)a3 itemType:(unint64_t)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  itemTypeToParserIdentifiers = self->_itemTypeToParserIdentifiers;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)itemTypeToParserIdentifiers objectForKey:v10];

  v12 = [v11 allRecordsWithIdentifier:v7];

  [v8 addObjectsFromArray:v12];
  v13 = [v8 copy];

  return v13;
}

- (void)enumerateKeysAndObjectsForItemType:(unint64_t)a3 usingBlock:(id)a4
{
  itemTypeToParserIdentifiers = self->_itemTypeToParserIdentifiers;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)itemTypeToParserIdentifiers objectForKey:v8];

  [v9 enumerateKeysAndObjectsUsingBlock:v7];
}

@end