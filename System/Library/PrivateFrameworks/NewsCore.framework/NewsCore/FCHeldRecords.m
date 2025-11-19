@interface FCHeldRecords
+ (id)heldRecordsByMerging:(id)a3 with:(id)a4;
- (FCHeldRecords)initWithRecordsByID:(id)a3 interestTokensByID:(id)a4;
- (FCInterestToken)onlyInterestToken;
- (NSArray)allRecordIDs;
- (NSArray)allRecords;
- (NSString)onlyRecordID;
- (id)heldRecordsForIDs:(id)a3;
- (id)heldRecordsPassingTest:(id)a3;
- (id)interestTokenForID:(id)a3;
- (id)onlyRecord;
- (id)recordWithID:(id)a3;
- (id)transformRecordsByIDWithBlock:(id)a3;
- (id)transformRecordsInOrder:(id)a3 withBlock:(id)a4;
- (id)transformRecordsWithBlock:(id)a3;
- (unint64_t)count;
- (void)enumerateRecordsAndInterestTokensInOrder:(id)a3 withBlock:(id)a4;
- (void)enumerateRecordsAndInterestTokensWithBlock:(id)a3;
@end

@implementation FCHeldRecords

- (NSArray)allRecords
{
  v2 = [(FCHeldRecords *)self recordsByID];
  v3 = [v2 allValues];

  return v3;
}

- (NSArray)allRecordIDs
{
  v2 = [(FCHeldRecords *)self recordsByID];
  v3 = [v2 allKeys];

  return v3;
}

+ (id)heldRecordsByMerging:(id)a3 with:(id)a4
{
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v7 recordsByID];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = [v6 recordsByID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = [v5 fc_dictionaryByAddingEntriesFromDictionary:v11 toDictionary:v14];

  v16 = MEMORY[0x1E695DF20];
  v17 = [v7 interestTokensByID];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v10;
  }

  v19 = [v6 interestTokensByID];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v10;
  }

  v21 = [v16 fc_dictionaryByAddingEntriesFromDictionary:v18 toDictionary:v20];

  v22 = [[FCHeldRecords alloc] initWithRecordsByID:v15 interestTokensByID:v21];

  return v22;
}

- (FCHeldRecords)initWithRecordsByID:(id)a3 interestTokensByID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCHeldRecords;
  v9 = [(FCHeldRecords *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordsByID, a3);
    objc_storeStrong(&v10->_interestTokensByID, a4);
  }

  return v10;
}

- (unint64_t)count
{
  v2 = [(FCHeldRecords *)self recordsByID];
  v3 = [v2 count];

  return v3;
}

- (id)onlyRecord
{
  v2 = [(FCHeldRecords *)self recordsByID];
  v3 = [v2 allValues];
  v4 = [v3 fc_onlyObject];

  return v4;
}

- (NSString)onlyRecordID
{
  v2 = [(FCHeldRecords *)self recordsByID];
  v3 = [v2 allKeys];
  v4 = [v3 fc_onlyObject];

  return v4;
}

- (FCInterestToken)onlyInterestToken
{
  v2 = [(FCHeldRecords *)self interestTokensByID];
  v3 = [v2 allValues];
  v4 = [v3 fc_onlyObject];

  return v4;
}

- (void)enumerateRecordsAndInterestTokensWithBlock:(id)a3
{
  v4 = a3;
  v6 = [(FCHeldRecords *)self recordsByID];
  v5 = [v6 allKeys];
  [(FCHeldRecords *)self enumerateRecordsAndInterestTokensInOrder:v5 withBlock:v4];
}

- (void)enumerateRecordsAndInterestTokensInOrder:(id)a3 withBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [(FCHeldRecords *)self recordsByID];
          v14 = [v13 objectForKey:v12];

          v15 = [(FCHeldRecords *)self interestTokensByID];
          v16 = [v15 objectForKey:v12];

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
            v7[2](v7, v14, v16);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)transformRecordsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FCHeldRecords *)self recordsByID];
  v6 = [v5 allKeys];
  v7 = [(FCHeldRecords *)self transformRecordsInOrder:v6 withBlock:v4];

  return v7;
}

- (id)transformRecordsInOrder:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__FCHeldRecords_transformRecordsInOrder_withBlock___block_invoke;
    v10[3] = &unk_1E7C410C8;
    v12 = v7;
    v11 = v8;
    [(FCHeldRecords *)self enumerateRecordsAndInterestTokensInOrder:v6 withBlock:v10];
  }

  return v8;
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

- (id)transformRecordsByIDWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if (v4)
  {
    v6 = [(FCHeldRecords *)self recordsByID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__FCHeldRecords_transformRecordsByIDWithBlock___block_invoke;
    v8[3] = &unk_1E7C410F0;
    v8[4] = self;
    v10 = v4;
    v9 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v5;
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

- (id)recordWithID:(id)a3
{
  v4 = a3;
  v5 = [(FCHeldRecords *)self recordsByID];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)interestTokenForID:(id)a3
{
  v4 = a3;
  v5 = [(FCHeldRecords *)self interestTokensByID];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)heldRecordsPassingTest:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v6 = [(FCHeldRecords *)self recordsByID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__FCHeldRecords_heldRecordsPassingTest___block_invoke;
  v13[3] = &unk_1E7C41118;
  v14 = v5;
  v15 = v4;
  v7 = v5;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

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

- (id)heldRecordsForIDs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v6 = [(FCHeldRecords *)self recordsByID];
  v7 = [v6 fc_subdictionaryForKeys:v4];
  v8 = [(FCHeldRecords *)self interestTokensByID];
  v9 = [v8 fc_subdictionaryForKeys:v4];
  v10 = [(FCHeldRecords *)v5 initWithRecordsByID:v7 interestTokensByID:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end