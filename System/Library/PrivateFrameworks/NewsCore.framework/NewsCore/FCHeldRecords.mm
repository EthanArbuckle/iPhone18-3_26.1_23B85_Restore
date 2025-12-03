@interface FCHeldRecords
+ (id)heldRecordsByMerging:(id)merging with:(id)with;
- (FCHeldRecords)initWithRecordsByID:(id)d interestTokensByID:(id)iD;
- (FCInterestToken)onlyInterestToken;
- (NSArray)allRecordIDs;
- (NSArray)allRecords;
- (NSString)onlyRecordID;
- (id)heldRecordsForIDs:(id)ds;
- (id)heldRecordsPassingTest:(id)test;
- (id)interestTokenForID:(id)d;
- (id)onlyRecord;
- (id)recordWithID:(id)d;
- (id)transformRecordsByIDWithBlock:(id)block;
- (id)transformRecordsInOrder:(id)order withBlock:(id)block;
- (id)transformRecordsWithBlock:(id)block;
- (unint64_t)count;
- (void)enumerateRecordsAndInterestTokensInOrder:(id)order withBlock:(id)block;
- (void)enumerateRecordsAndInterestTokensWithBlock:(id)block;
@end

@implementation FCHeldRecords

- (NSArray)allRecords
{
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allValues = [recordsByID allValues];

  return allValues;
}

- (NSArray)allRecordIDs
{
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allKeys = [recordsByID allKeys];

  return allKeys;
}

+ (id)heldRecordsByMerging:(id)merging with:(id)with
{
  v5 = MEMORY[0x1E695DF20];
  withCopy = with;
  mergingCopy = merging;
  recordsByID = [mergingCopy recordsByID];
  v9 = recordsByID;
  v10 = MEMORY[0x1E695E0F8];
  if (recordsByID)
  {
    v11 = recordsByID;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  recordsByID2 = [withCopy recordsByID];
  v13 = recordsByID2;
  if (recordsByID2)
  {
    v14 = recordsByID2;
  }

  else
  {
    v14 = v10;
  }

  v15 = [v5 fc_dictionaryByAddingEntriesFromDictionary:v11 toDictionary:v14];

  v16 = MEMORY[0x1E695DF20];
  interestTokensByID = [mergingCopy interestTokensByID];

  if (interestTokensByID)
  {
    v18 = interestTokensByID;
  }

  else
  {
    v18 = v10;
  }

  interestTokensByID2 = [withCopy interestTokensByID];

  if (interestTokensByID2)
  {
    v20 = interestTokensByID2;
  }

  else
  {
    v20 = v10;
  }

  v21 = [v16 fc_dictionaryByAddingEntriesFromDictionary:v18 toDictionary:v20];

  v22 = [[FCHeldRecords alloc] initWithRecordsByID:v15 interestTokensByID:v21];

  return v22;
}

- (FCHeldRecords)initWithRecordsByID:(id)d interestTokensByID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = FCHeldRecords;
  v9 = [(FCHeldRecords *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordsByID, d);
    objc_storeStrong(&v10->_interestTokensByID, iD);
  }

  return v10;
}

- (unint64_t)count
{
  recordsByID = [(FCHeldRecords *)self recordsByID];
  v3 = [recordsByID count];

  return v3;
}

- (id)onlyRecord
{
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allValues = [recordsByID allValues];
  fc_onlyObject = [allValues fc_onlyObject];

  return fc_onlyObject;
}

- (NSString)onlyRecordID
{
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allKeys = [recordsByID allKeys];
  fc_onlyObject = [allKeys fc_onlyObject];

  return fc_onlyObject;
}

- (FCInterestToken)onlyInterestToken
{
  interestTokensByID = [(FCHeldRecords *)self interestTokensByID];
  allValues = [interestTokensByID allValues];
  fc_onlyObject = [allValues fc_onlyObject];

  return fc_onlyObject;
}

- (void)enumerateRecordsAndInterestTokensWithBlock:(id)block
{
  blockCopy = block;
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allKeys = [recordsByID allKeys];
  [(FCHeldRecords *)self enumerateRecordsAndInterestTokensInOrder:allKeys withBlock:blockCopy];
}

- (void)enumerateRecordsAndInterestTokensInOrder:(id)order withBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  blockCopy = block;
  if (blockCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [orderCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(orderCopy);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          recordsByID = [(FCHeldRecords *)self recordsByID];
          v14 = [recordsByID objectForKey:v12];

          interestTokensByID = [(FCHeldRecords *)self interestTokensByID];
          v16 = [interestTokensByID objectForKey:v12];

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            blockCopy[2](blockCopy, v14, v16);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [orderCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)transformRecordsWithBlock:(id)block
{
  blockCopy = block;
  recordsByID = [(FCHeldRecords *)self recordsByID];
  allKeys = [recordsByID allKeys];
  v7 = [(FCHeldRecords *)self transformRecordsInOrder:allKeys withBlock:blockCopy];

  return v7;
}

- (id)transformRecordsInOrder:(id)order withBlock:(id)block
{
  orderCopy = order;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  if (blockCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__FCHeldRecords_transformRecordsInOrder_withBlock___block_invoke;
    v10[3] = &unk_1E7C410C8;
    v12 = blockCopy;
    v11 = array;
    [(FCHeldRecords *)self enumerateRecordsAndInterestTokensInOrder:orderCopy withBlock:v10];
  }

  return array;
}

uint64_t __51__FCHeldRecords_transformRecordsInOrder_withBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)transformRecordsByIDWithBlock:(id)block
{
  blockCopy = block;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (blockCopy)
  {
    recordsByID = [(FCHeldRecords *)self recordsByID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__FCHeldRecords_transformRecordsByIDWithBlock___block_invoke;
    v8[3] = &unk_1E7C410F0;
    v8[4] = self;
    v10 = blockCopy;
    v9 = dictionary;
    [recordsByID enumerateKeysAndObjectsUsingBlock:v8];
  }

  return dictionary;
}

void __47__FCHeldRecords_transformRecordsByIDWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 interestTokensByID];
  v8 = [v7 objectForKey:v10];

  v9 = (*(*(a1 + 48) + 16))();

  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKey:v10];
  }
}

- (id)recordWithID:(id)d
{
  dCopy = d;
  recordsByID = [(FCHeldRecords *)self recordsByID];
  v6 = [recordsByID objectForKey:dCopy];

  return v6;
}

- (id)interestTokenForID:(id)d
{
  dCopy = d;
  interestTokensByID = [(FCHeldRecords *)self interestTokensByID];
  v6 = [interestTokensByID objectForKey:dCopy];

  return v6;
}

- (id)heldRecordsPassingTest:(id)test
{
  v24 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (!testCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "test"];
    *buf = 136315906;
    v17 = "[FCHeldRecords heldRecordsPassingTest:]";
    v18 = 2080;
    v19 = "FCHeldRecords.m";
    v20 = 1024;
    v21 = 146;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  recordsByID = [(FCHeldRecords *)self recordsByID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__FCHeldRecords_heldRecordsPassingTest___block_invoke;
  v13[3] = &unk_1E7C41118;
  v14 = v5;
  v15 = testCopy;
  v7 = v5;
  v8 = testCopy;
  [recordsByID enumerateKeysAndObjectsUsingBlock:v13];

  v9 = [(FCHeldRecords *)self heldRecordsForIDs:v7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __40__FCHeldRecords_heldRecordsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)heldRecordsForIDs:(id)ds
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordIDs"];
    *buf = 136315906;
    v15 = "[FCHeldRecords heldRecordsForIDs:]";
    v16 = 2080;
    v17 = "FCHeldRecords.m";
    v18 = 1024;
    v19 = 163;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [FCHeldRecords alloc];
  recordsByID = [(FCHeldRecords *)self recordsByID];
  v7 = [recordsByID fc_subdictionaryForKeys:dsCopy];
  interestTokensByID = [(FCHeldRecords *)self interestTokensByID];
  v9 = [interestTokensByID fc_subdictionaryForKeys:dsCopy];
  v10 = [(FCHeldRecords *)v5 initWithRecordsByID:v7 interestTokensByID:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end