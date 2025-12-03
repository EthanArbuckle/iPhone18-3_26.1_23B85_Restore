@interface PKCloudRecordArray
- (PKCloudRecordArray)init;
- (PKCloudRecordArray)initWithCoder:(id)coder;
- (id)_descriptionWithDetailedOutput:(BOOL)output includeItem:(BOOL)item;
- (id)allItems;
- (id)allObjects;
- (id)allObjectsByDatabaseIdentifier;
- (id)allRecordIDs;
- (id)allRecordNames;
- (id)allRecordsWithRecordType:(id)type;
- (int64_t)count;
- (void)addCloudRecord:(id)record forContainerDatabaseIdentifier:(id)identifier;
- (void)addTransactionSyncReportItem:(id)item forAccountIdentifier:(id)identifier;
- (void)addTransactionSyncReportItems:(id)items forAccountIdentifier:(id)identifier;
- (void)applyCloudRecordArray:(id)array;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordArray

- (PKCloudRecordArray)init
{
  v8.receiver = self;
  v8.super_class = PKCloudRecordArray;
  v2 = [(PKCloudRecordArray *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cloudRecordByDatabase = v2->_cloudRecordByDatabase;
    v2->_cloudRecordByDatabase = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reportItemsByAccountIdentifier = v2->_reportItemsByAccountIdentifier;
    v2->_reportItemsByAccountIdentifier = v5;

    v2->_recordsFetchedCount = 0;
  }

  return v2;
}

- (PKCloudRecordArray)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKCloudRecordArray;
  v5 = [(PKCloudRecordArray *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"cloudRecordByDatabase"];
    cloudRecordByDatabase = v5->_cloudRecordByDatabase;
    v5->_cloudRecordByDatabase = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"reportItemsByAccountIdentifier"];
    reportItemsByAccountIdentifier = v5->_reportItemsByAccountIdentifier;
    v5->_reportItemsByAccountIdentifier = v17;

    v5->_recordsFetchedCount = [coderCopy decodeIntegerForKey:@"recordsFetchedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  coderCopy = coder;
  [coderCopy encodeObject:cloudRecordByDatabase forKey:@"cloudRecordByDatabase"];
  [coderCopy encodeObject:self->_reportItemsByAccountIdentifier forKey:@"reportItemsByAccountIdentifier"];
  [coderCopy encodeInteger:self->_recordsFetchedCount forKey:@"recordsFetchedCount"];
}

- (id)_descriptionWithDetailedOutput:(BOOL)output includeItem:(BOOL)item
{
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke;
  v27[3] = &unk_1E79D29A0;
  v11 = v7;
  v28 = v11;
  outputCopy = output;
  itemCopy = item;
  v12 = v8;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  v31 = &v34;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v27];
  [v11 appendString:@"\n*********************\n"];
  [v11 appendString:@"Stats:\n"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke_2;
  v25[3] = &unk_1E79C8F80;
  v14 = v11;
  v26 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v25];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke_4;
  v23 = &unk_1E79D29F0;
  v15 = v14;
  v24 = v15;
  [v12 enumerateKeysAndObjectsUsingBlock:&v20];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v35[3]];
  [v15 appendFormat:@"Overall record count: %@\n", v16, v20, v21, v22, v23];

  [v15 appendString:@"*********************\n"];
  v17 = v24;
  v18 = v15;

  _Block_object_dispose(&v34, 8);

  return v18;
}

void __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 65);
  v8 = a3;
  v9 = a2;
  v10 = [v8 descriptionWithDetailedOutput:v6 includeItem:v7];
  [v5 appendString:v10];

  v11 = [v8 count];
  v12 = *(a1 + 40);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  [v12 setObject:v13 forKey:v9];

  v14 = *(a1 + 48);
  v15 = [v8 countByZoneID];

  [v14 setObject:v15 forKey:v9];
  *(*(*(a1 + 56) + 8) + 24) += v11;
}

void __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke_3;
  v7[3] = &unk_1E79D29C8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __65__PKCloudRecordArray__descriptionWithDetailedOutput_includeItem___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v9 = [v7 zoneName];
  v8 = [v7 ownerName];

  [v4 appendFormat:@"Number of records in database %@, zone %@ %@: %@\n", v5, v9, v8, v6];
}

- (int64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PKCloudRecordArray_count__block_invoke;
  v5[3] = &unk_1E79D2A18;
  v5[4] = &v6;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__PKCloudRecordArray_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)addCloudRecord:(id)record forContainerDatabaseIdentifier:(id)identifier
{
  if (record && identifier)
  {
    cloudRecordByDatabase = self->_cloudRecordByDatabase;
    identifierCopy = identifier;
    recordCopy = record;
    v9 = [(NSMutableDictionary *)cloudRecordByDatabase objectForKey:identifierCopy];
    if (!v9)
    {
      v9 = [[PKCloudRecordArrayDatabase alloc] initWithIdentifier:identifierCopy];
    }

    v10 = v9;
    [(NSMutableDictionary *)self->_cloudRecordByDatabase setObject:v9 forKey:identifierCopy];

    [(PKCloudRecordArrayDatabase *)v10 addCloudRecord:recordCopy];
  }
}

- (void)applyCloudRecordArray:(id)array
{
  arrayCopy = array;
  cloudRecordByDatabase = [arrayCopy cloudRecordByDatabase];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PKCloudRecordArray_applyCloudRecordArray___block_invoke;
  v9[3] = &unk_1E79D2A40;
  v9[4] = self;
  [cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v9];

  reportItemsByAccountIdentifier = [arrayCopy reportItemsByAccountIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PKCloudRecordArray_applyCloudRecordArray___block_invoke_2;
  v8[3] = &unk_1E79D2A68;
  v8[4] = self;
  [reportItemsByAccountIdentifier enumerateKeysAndObjectsUsingBlock:v8];

  recordsFetchedCount = [arrayCopy recordsFetchedCount];
  self->_recordsFetchedCount += recordsFetchedCount;
}

void __44__PKCloudRecordArray_applyCloudRecordArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKey:v8];
  if (v6)
  {
    v7 = v6;
    [v6 applyCloudRecordDatabase:v5];
  }

  else
  {
    v7 = v5;
  }

  [*(*(a1 + 32) + 8) setObject:v7 forKey:v8];
}

- (void)addTransactionSyncReportItem:(id)item forAccountIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (item)
  {
    if (identifier)
    {
      itemCopy = item;
      v6 = MEMORY[0x1E695DEC8];
      identifierCopy = identifier;
      itemCopy2 = item;
      v9 = [v6 arrayWithObjects:&itemCopy count:1];

      [(PKCloudRecordArray *)self addTransactionSyncReportItems:v9 forAccountIdentifier:identifierCopy, itemCopy, v11];
    }
  }
}

- (void)addTransactionSyncReportItems:(id)items forAccountIdentifier:(id)identifier
{
  itemsCopy = items;
  identifierCopy = identifier;
  if (identifierCopy && [itemsCopy count])
  {
    v7 = [(NSMutableDictionary *)self->_reportItemsByAccountIdentifier objectForKey:identifierCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_reportItemsByAccountIdentifier setObject:v7 forKey:identifierCopy];
    }

    [v7 addObjectsFromArray:itemsCopy];
  }
}

- (id)allItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__PKCloudRecordArray_allItems__block_invoke;
  v8[3] = &unk_1E79D2A40;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __30__PKCloudRecordArray_allItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allItems];
  [v3 addObjectsFromArray:v4];
}

- (id)allObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__PKCloudRecordArray_allObjects__block_invoke;
  v8[3] = &unk_1E79D2A40;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __32__PKCloudRecordArray_allObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (id)allObjectsByDatabaseIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKCloudRecordArray_allObjectsByDatabaseIdentifier__block_invoke;
  v7[3] = &unk_1E79D2A40;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __52__PKCloudRecordArray_allObjectsByDatabaseIdentifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 setObject:v6 forKey:v5];
}

- (id)allRecordsWithRecordType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__PKCloudRecordArray_allRecordsWithRecordType___block_invoke;
  v14 = &unk_1E79D2A90;
  v15 = v5;
  v16 = typeCopy;
  v7 = typeCopy;
  v8 = v5;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

void __47__PKCloudRecordArray_allRecordsWithRecordType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordsWithRecordType:*(a1 + 40)];
  [v3 unionSet:v4];
}

- (id)allRecordNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PKCloudRecordArray_allRecordNames__block_invoke;
  v8[3] = &unk_1E79D2A40;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __36__PKCloudRecordArray_allRecordNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordNames];
  [v3 unionSet:v4];
}

- (id)allRecordIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByDatabase = self->_cloudRecordByDatabase;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__PKCloudRecordArray_allRecordIDs__block_invoke;
  v8[3] = &unk_1E79D2A40;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByDatabase enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __34__PKCloudRecordArray_allRecordIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordIDs];
  [v3 unionSet:v4];
}

@end