@interface CPLEnginePendingRecordChecks
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4;
- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4;
- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)a3;
- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)a3;
@end

@implementation CPLEnginePendingRecordChecks

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v10 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  return a6;
}

- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasRecordsToCheckWithScopeIdentifier:v4];

  return v6;
}

- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 dequeueCloudScopedIdentifiersToCheck:v6 error:a4];

  return a4;
}

- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 nextBatchOfRecordsToCheckWithScopeIdentifier:v4];

  return v6;
}

- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    if (__CPLStorageOSLogDomain_onceToken_14636 != -1)
    {
      dispatch_once(&__CPLStorageOSLogDomain_onceToken_14636, &__block_literal_global_14637);
    }

    v7 = __CPLStorageOSLogDomain_result_14638;
    if (os_log_type_enabled(__CPLStorageOSLogDomain_result_14638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Will need to check these records in the cloud:\n%@", buf, 0xCu);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 enqueueCloudScopedIdentifiersToCheck:v6 error:a4];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = [(CPLEngineStorage *)self engineStore];
    v12 = [v11 scopes];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * i) scopeIdentifier];
          if (([v10 containsObject:v18] & 1) == 0)
          {
            [v10 addObject:v18];
            v19 = [v12 scopeWithIdentifier:v18];
            if (v19 && ![v12 setScopeHasChangesToPullFromTransport:v19 error:a4])
            {

              v20 = 0;
              goto LABEL_21;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v20 = 1;
LABEL_21:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end