@interface CPLEngineRevertRecords
- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)identifier class:(Class)class error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteRecordsToRevertFromBatch:(id)batch error:(id *)error;
- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)identifier;
- (id)nextBatchOfRecordsToRevert;
@end

@implementation CPLEngineRevertRecords

- (BOOL)shouldRevertRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject shouldRevertRecordWithLocalScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)deleteRecordsToRevertFromBatch:(id)batch error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  context = objc_autoreleasePoolPush();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = batchCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
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
        platformObject = [(CPLEngineStorage *)self platformObject];
        scopedIdentifier = [v14 scopedIdentifier];
        v24 = v13;
        v17 = [platformObject deleteRecordsToRevertWithLocalScopedIdentifier:scopedIdentifier error:&v24];
        v10 = v24;

        if (!v17)
        {

          objc_autoreleasePoolPop(context);
          if (errorCopy)
          {
            v18 = v10;
            v19 = 0;
            *errorCopy = v10;
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
  engineStore = [(CPLEngineStorage *)self engineStore];
  transactionClientCacheView = [engineStore transactionClientCacheView];

  v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  platformObject = [(CPLEngineStorage *)self platformObject];
  revertedPlaceholderRecordsEnumerator = [platformObject revertedPlaceholderRecordsEnumerator];

  obj = revertedPlaceholderRecordsEnumerator;
  v6 = [revertedPlaceholderRecordsEnumerator countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v32 = *v35;
    v9 = transactionClientCacheView;
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
        scopedIdentifier = [v11 scopedIdentifier];
        v14 = [v9 recordViewWithScopedIdentifier:scopedIdentifier];

        if (!v14)
        {
          recordClass = [v11 recordClass];
          scopedIdentifier2 = [v11 scopedIdentifier];
          synthesizedRecord = [recordClass newDeleteChangeWithScopedIdentifier:scopedIdentifier2];

          if (v8)
          {
            goto LABEL_9;
          }

LABEL_8:
          v8 = objc_alloc_init(CPLChangeBatch);
          goto LABEL_9;
        }

        synthesizedRecord = [v14 synthesizedRecord];
        if (!v8)
        {
          goto LABEL_8;
        }

LABEL_9:
        if ([synthesizedRecord isFullRecord])
        {
          if ([synthesizedRecord isAssetChange])
          {
            relatedScopedIdentifier = [synthesizedRecord relatedScopedIdentifier];
            if (relatedScopedIdentifier)
            {
              synthesizedRecord2 = relatedScopedIdentifier;
              relatedScopedIdentifier2 = [synthesizedRecord relatedScopedIdentifier];
              if ([v33 containsObject:relatedScopedIdentifier2])
              {
              }

              else
              {
                relatedScopedIdentifier3 = [synthesizedRecord relatedScopedIdentifier];
                v22 = [(CPLChangeBatch *)v8 additionalRecordWithScopedIdentifier:relatedScopedIdentifier3];

                v9 = transactionClientCacheView;
                if (v22)
                {
                  goto LABEL_21;
                }

                relatedScopedIdentifier4 = [synthesizedRecord relatedScopedIdentifier];
                v24 = [transactionClientCacheView recordViewWithScopedIdentifier:relatedScopedIdentifier4];
                synthesizedRecord2 = [v24 synthesizedRecord];

                if (synthesizedRecord2)
                {
                  [(CPLChangeBatch *)v8 _addAdditionalRecord:synthesizedRecord2];
                }

                v9 = transactionClientCacheView;
              }
            }
          }
        }

LABEL_21:
        scopedIdentifier3 = [synthesizedRecord scopedIdentifier];
        [v33 addObject:scopedIdentifier3];

        [(CPLChangeBatch *)v8 addRecord:synthesizedRecord];
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
  v9 = transactionClientCacheView;
LABEL_26:

  v27 = v8;
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)addRecordsToRevertWithLocalScopedIdentifier:(id)identifier class:(Class)class error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addRecordsToRevertWithLocalScopedIdentifier:identifierCopy class:class error:error];

  return error;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

@end