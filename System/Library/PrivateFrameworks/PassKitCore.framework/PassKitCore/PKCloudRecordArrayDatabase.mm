@interface PKCloudRecordArrayDatabase
- (PKCloudRecordArrayDatabase)initWithCoder:(id)coder;
- (PKCloudRecordArrayDatabase)initWithIdentifier:(id)identifier;
- (id)allItems;
- (id)allObjects;
- (id)allRecordIDs;
- (id)allRecordNames;
- (id)allRecordsWithRecordType:(id)type;
- (id)countByZoneID;
- (id)descriptionWithDetailedOutput:(BOOL)output includeItem:(BOOL)item;
- (int64_t)count;
- (void)addCloudRecord:(id)record;
- (void)applyCloudRecordDatabase:(id)database;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordArrayDatabase

- (PKCloudRecordArrayDatabase)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKCloudRecordArrayDatabase;
  v6 = [(PKCloudRecordArrayDatabase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cloudRecordByDatabaseZone = v7->_cloudRecordByDatabaseZone;
    v7->_cloudRecordByDatabaseZone = v8;
  }

  return v7;
}

- (PKCloudRecordArrayDatabase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKCloudRecordArrayDatabase;
  v5 = [(PKCloudRecordArrayDatabase *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"cloudRecordByDatabaseZone"];
    cloudRecordByDatabaseZone = v5->_cloudRecordByDatabaseZone;
    v5->_cloudRecordByDatabaseZone = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  coderCopy = coder;
  [coderCopy encodeObject:cloudRecordByDatabaseZone forKey:@"cloudRecordByDatabaseZone"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)descriptionWithDetailedOutput:(BOOL)output includeItem:(BOOL)item
{
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __72__PKCloudRecordArrayDatabase_descriptionWithDetailedOutput_includeItem___block_invoke;
  v15 = &unk_1E79D2AB8;
  v16 = v7;
  outputCopy = output;
  itemCopy = item;
  v9 = v7;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:&v12];
  v10 = [v9 copy];

  return v10;
}

void __72__PKCloudRecordArrayDatabase_descriptionWithDetailedOutput_includeItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v7 zoneName];
  v9 = [v7 ownerName];
  [v5 appendFormat:@"\n####### Begin Zone %@ %@#######\n", v8, v9];

  v10 = *(a1 + 32);
  v11 = [v6 descriptionWithDetailedOutput:*(a1 + 40) includeItem:*(a1 + 41)];

  [v10 appendString:v11];
  v12 = *(a1 + 32);
  v14 = [v7 zoneName];
  v13 = [v7 ownerName];

  [v12 appendFormat:@"\n####### End Zone %@ %@#######\n", v14, v13];
}

- (void)applyCloudRecordDatabase:(id)database
{
  cloudRecordByDatabaseZone = [database cloudRecordByDatabaseZone];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKCloudRecordArrayDatabase_applyCloudRecordDatabase___block_invoke;
  v5[3] = &unk_1E79D2AE0;
  v5[4] = self;
  [cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v5];
}

void __55__PKCloudRecordArrayDatabase_applyCloudRecordDatabase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v8];
  if (v6)
  {
    v7 = v6;
    [v6 applyCloudRecordDatabaseZone:v5];
  }

  else
  {
    v7 = v5;
  }

  [*(*(a1 + 32) + 16) setObject:v7 forKey:v8];
}

- (void)addCloudRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v10 = recordCopy;
    records = [recordCopy records];
    anyObject = [records anyObject];

    recordID = [anyObject recordID];
    zoneID = [recordID zoneID];

    if (zoneID)
    {
      v9 = [(NSMutableDictionary *)self->_cloudRecordByDatabaseZone objectForKey:zoneID];
      if (!v9)
      {
        v9 = [[PKCloudRecordArrayDatabaseZone alloc] initWithZoneID:zoneID databaseIdentifier:self->_identifier];
      }

      [(NSMutableDictionary *)self->_cloudRecordByDatabaseZone setObject:v9 forKey:zoneID];
      [(PKCloudRecordArrayDatabaseZone *)v9 addCloudRecord:v10];
    }

    recordCopy = v10;
  }
}

- (id)allItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PKCloudRecordArrayDatabase_allItems__block_invoke;
  v8[3] = &unk_1E79D2AE0;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __38__PKCloudRecordArrayDatabase_allItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allItems];
  [v3 addObjectsFromArray:v4];
}

- (id)allObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PKCloudRecordArrayDatabase_allObjects__block_invoke;
  v8[3] = &unk_1E79D2AE0;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __40__PKCloudRecordArrayDatabase_allObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (id)allRecordsWithRecordType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55__PKCloudRecordArrayDatabase_allRecordsWithRecordType___block_invoke;
  v14 = &unk_1E79D2B08;
  v15 = v5;
  v16 = typeCopy;
  v7 = typeCopy;
  v8 = v5;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

void __55__PKCloudRecordArrayDatabase_allRecordsWithRecordType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordsWithRecordType:*(a1 + 40)];
  [v3 unionSet:v4];
}

- (id)allRecordNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PKCloudRecordArrayDatabase_allRecordNames__block_invoke;
  v8[3] = &unk_1E79D2AE0;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __44__PKCloudRecordArrayDatabase_allRecordNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordNames];
  [v3 unionSet:v4];
}

- (id)allRecordIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PKCloudRecordArrayDatabase_allRecordIDs__block_invoke;
  v8[3] = &unk_1E79D2AE0;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __42__PKCloudRecordArrayDatabase_allRecordIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordIDs];
  [v3 unionSet:v4];
}

- (int64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PKCloudRecordArrayDatabase_count__block_invoke;
  v5[3] = &unk_1E79D2B30;
  v5[4] = &v6;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__PKCloudRecordArrayDatabase_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)countByZoneID
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cloudRecordByDatabaseZone = self->_cloudRecordByDatabaseZone;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PKCloudRecordArrayDatabase_countByZoneID__block_invoke;
  v8[3] = &unk_1E79D2AE0;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabaseZone enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __43__PKCloudRecordArrayDatabase_countByZoneID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithInteger:{objc_msgSend(a3, "count")}];
  [v4 setObject:v7 forKey:v6];
}

@end