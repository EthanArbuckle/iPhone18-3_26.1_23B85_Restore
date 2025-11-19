@interface PKCloudRecordArrayDatabaseZone
- (PKCloudRecordArrayDatabaseZone)initWithCoder:(id)a3;
- (PKCloudRecordArrayDatabaseZone)initWithZoneID:(id)a3 databaseIdentifier:(id)a4;
- (id)allItems;
- (id)allObjects;
- (id)allRecordIDs;
- (id)allRecordNames;
- (id)allRecordsWithRecordType:(id)a3;
- (id)descriptionWithDetailedOutput:(BOOL)a3 includeItem:(BOOL)a4;
- (void)addCloudRecord:(id)a3;
- (void)applyCloudRecordDatabaseZone:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordArrayDatabaseZone

- (PKCloudRecordArrayDatabaseZone)initWithZoneID:(id)a3 databaseIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKCloudRecordArrayDatabaseZone;
  v9 = [(PKCloudRecordArrayDatabaseZone *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cloudRecordByZoneRecord = v9->_cloudRecordByZoneRecord;
    v9->_cloudRecordByZoneRecord = v10;

    objc_storeStrong(&v9->_zoneID, a3);
    objc_storeStrong(&v9->_databaseIdentifier, a4);
  }

  return v9;
}

- (PKCloudRecordArrayDatabaseZone)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKCloudRecordArrayDatabaseZone;
  v5 = [(PKCloudRecordArrayDatabaseZone *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"cloudRecordByZoneRecord"];
    cloudRecordByZoneRecord = v5->_cloudRecordByZoneRecord;
    v5->_cloudRecordByZoneRecord = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"databaseIdentifier"];
    databaseIdentifier = v5->_databaseIdentifier;
    v5->_databaseIdentifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v5 = a3;
  [v5 encodeObject:cloudRecordByZoneRecord forKey:@"cloudRecordByZoneRecord"];
  [v5 encodeObject:self->_zoneID forKey:@"zoneID"];
  [v5 encodeObject:self->_databaseIdentifier forKey:@"databaseIdentifier"];
}

- (id)descriptionWithDetailedOutput:(BOOL)a3 includeItem:(BOOL)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = [(PKCloudRecordArrayDatabaseZone *)self count];
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PKCloudRecordArrayDatabaseZone_descriptionWithDetailedOutput_includeItem___block_invoke;
  v12[3] = &unk_1E79D2B58;
  v9 = v7;
  v15 = v20;
  v16 = v19;
  v13 = v9;
  v14 = self;
  v17 = a3;
  v18 = a4;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:v12];
  v10 = [v9 copy];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);

  return v10;
}

uint64_t __76__PKCloudRecordArrayDatabaseZone_descriptionWithDetailedOutput_includeItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  v9 = a3;
  v10 = a2;
  v11 = [v6 numberWithInteger:v8];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 56) + 8) + 24)];
  [v5 appendFormat:@"\n-----------(%@ of %@)-----------------\n", v11, v12];

  [*(a1 + 32) appendFormat:@"identifier: %@\n", v10];
  v13 = *(a1 + 32);
  v14 = [*(*(a1 + 40) + 8) zoneName];
  v15 = [*(*(a1 + 40) + 8) ownerName];
  [v13 appendFormat:@"zoneName: %@, zoneOwner: %@\n", v14, v15];

  [*(a1 + 32) appendFormat:@"database: %@\n", *(*(a1 + 40) + 16)];
  v16 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    [v9 descriptionWithItem:*(a1 + 65)];
  }

  else
  {
    [v9 description];
  }
  v17 = ;

  [v16 appendString:v17];
  v18 = *(a1 + 32);

  return [v18 appendString:@"----------------------------\n"];
}

- (void)addCloudRecord:(id)a3
{
  v7 = a3;
  v4 = [v7 primaryIdentifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_cloudRecordByZoneRecord objectForKey:v4];
    if (v5)
    {
      v6 = v5;
      [v5 applyCloudRecordObject:v7];
    }

    else
    {
      v6 = v7;
    }

    [(NSMutableDictionary *)self->_cloudRecordByZoneRecord setObject:v6 forKey:v4];
  }
}

- (void)applyCloudRecordDatabaseZone:(id)a3
{
  v4 = [a3 cloudRecordByZoneRecord];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKCloudRecordArrayDatabaseZone_applyCloudRecordDatabaseZone___block_invoke;
  v5[3] = &unk_1E79D2B80;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __63__PKCloudRecordArrayDatabaseZone_applyCloudRecordDatabaseZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 24) objectForKey:v8];
  if (v6)
  {
    v7 = v6;
    [v6 applyCloudRecordObject:v5];
  }

  else
  {
    v7 = v5;
  }

  [*(*(a1 + 32) + 24) setObject:v7 forKey:v8];
}

- (id)allItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PKCloudRecordArrayDatabaseZone_allItems__block_invoke;
  v8[3] = &unk_1E79D2B80;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __42__PKCloudRecordArrayDatabaseZone_allItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 item];
  [v3 safelyAddObject:v4];
}

- (id)allObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PKCloudRecordArrayDatabaseZone_allObjects__block_invoke;
  v8[3] = &unk_1E79D2B80;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)allRecordsWithRecordType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __59__PKCloudRecordArrayDatabaseZone_allRecordsWithRecordType___block_invoke;
  v14 = &unk_1E79D2BA8;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

void __59__PKCloudRecordArrayDatabaseZone_allRecordsWithRecordType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a3 records];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 recordType];
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = v11;
        v14 = v13;
        if (v12 == v13)
        {

LABEL_15:
          [*(a1 + 40) addObject:v9];
          continue;
        }

        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {

          continue;
        }

        v16 = [v12 isEqualToString:v13];

        if (v16)
        {
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)allRecordNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PKCloudRecordArrayDatabaseZone_allRecordNames__block_invoke;
  v8[3] = &unk_1E79D2B80;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __48__PKCloudRecordArrayDatabaseZone_allRecordNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 records];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v12 + 1) + 8 * v8) recordID];
        v11 = [v10 recordName];
        [v9 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)allRecordIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cloudRecordByZoneRecord = self->_cloudRecordByZoneRecord;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PKCloudRecordArrayDatabaseZone_allRecordIDs__block_invoke;
  v8[3] = &unk_1E79D2B80;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)cloudRecordByZoneRecord enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __46__PKCloudRecordArrayDatabaseZone_allRecordIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 records];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v11 + 1) + 8 * v8) recordID];
        [v9 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end