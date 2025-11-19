@interface CPLEngineRevertRecords
- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)a3 class:(Class)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)deleteRecordsToRevertFromBatch:(id)a3 error:(id *)a4;
- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)a3;
- (id)nextBatchOfRecordsToRevert;
@end

@implementation CPLEngineRevertRecords

- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 shouldRevertRecordWithLocalScopedIdentifier:v4];

  return v6;
}

- (BOOL)deleteRecordsToRevertFromBatch:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = a4;
    v10 = 0;
    v11 = *v26;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v25 + 1) + 8 * v12);
        v15 = [(CPLEngineStorage *)self platformObject];
        v16 = [v14 scopedIdentifier];
        v24 = v13;
        v17 = [v15 deleteRecordsToRevertWithLocalScopedIdentifier:v16 error:&v24];
        v10 = v24;

        if (!v17)
        {

          objc_autoreleasePoolPop(context);
          if (v22)
          {
            v18 = v10;
            v19 = 0;
            *v22 = v10;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_15;
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(context);
  v19 = 1;
LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)nextBatchOfRecordsToRevert
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(CPLEngineStorage *)self engineStore];
  v30 = [v3 transactionClientCacheView];

  v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [(CPLEngineStorage *)self platformObject];
  v5 = [v4 revertedPlaceholderRecordsEnumerator];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v32 = *v35;
    v9 = v30;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 scopedIdentifier];
        v14 = [v9 recordViewWithScopedIdentifier:v13];

        if (!v14)
        {
          v19 = [v11 recordClass];
          v20 = [v11 scopedIdentifier];
          v15 = [v19 newDeleteChangeWithScopedIdentifier:v20];

          if (v8)
          {
            goto LABEL_9;
          }

LABEL_8:
          v8 = objc_alloc_init(CPLChangeBatch);
          goto LABEL_9;
        }

        v15 = [v14 synthesizedRecord];
        if (!v8)
        {
          goto LABEL_8;
        }

LABEL_9:
        if ([v15 isFullRecord])
        {
          if ([v15 isAssetChange])
          {
            v16 = [v15 relatedScopedIdentifier];
            if (v16)
            {
              v17 = v16;
              v18 = [v15 relatedScopedIdentifier];
              if ([v33 containsObject:v18])
              {
              }

              else
              {
                v21 = [v15 relatedScopedIdentifier];
                v22 = [(CPLChangeBatch *)v8 additionalRecordWithScopedIdentifier:v21];

                v9 = v30;
                if (v22)
                {
                  goto LABEL_21;
                }

                v23 = [v15 relatedScopedIdentifier];
                v24 = [v30 recordViewWithScopedIdentifier:v23];
                v17 = [v24 synthesizedRecord];

                if (v17)
                {
                  [(CPLChangeBatch *)v8 _addAdditionalRecord:v17];
                }

                v9 = v30;
              }
            }
          }
        }

LABEL_21:
        v25 = [v15 scopedIdentifier];
        [v33 addObject:v25];

        [(CPLChangeBatch *)v8 addRecord:v15];
        v26 = [(CPLChangeBatch *)v8 count];

        objc_autoreleasePoolPop(v12);
        if (v26 > 0x63)
        {
          goto LABEL_26;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v7)
      {
        goto LABEL_26;
      }
    }
  }

  v8 = 0;
  v9 = v30;
LABEL_26:

  v27 = v8;
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)a3 class:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 addRecordsToRevertWithLocalScopedIdentifier:v8 class:a4 error:a5];

  return a5;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v10 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  return a6;
}

@end