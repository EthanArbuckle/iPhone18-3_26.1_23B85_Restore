@interface CPLEnginePendingRecordChecks
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)check error:(id *)error;
- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)check error:(id *)error;
- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)identifier;
- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)identifier;
@end

@implementation CPLEnginePendingRecordChecks

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

- (BOOL)hasRecordsToCheckWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasRecordsToCheckWithScopeIdentifier:identifierCopy];

  return v6;
}

- (BOOL)dequeueCloudScopedIdentifiersToCheck:(id)check error:(id *)error
{
  checkCopy = check;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject dequeueCloudScopedIdentifiersToCheck:checkCopy error:error];

  return error;
}

- (id)nextBatchOfRecordsToCheckWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject nextBatchOfRecordsToCheckWithScopeIdentifier:identifierCopy];

  return v6;
}

- (BOOL)enqueueCloudScopedIdentifiersToCheck:(id)check error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  checkCopy = check;
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
      v29 = checkCopy;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Will need to check these records in the cloud:\n%@", buf, 0xCu);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject enqueueCloudScopedIdentifiersToCheck:checkCopy error:error];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = checkCopy;
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

          scopeIdentifier = [*(*(&v23 + 1) + 8 * i) scopeIdentifier];
          if (([v10 containsObject:scopeIdentifier] & 1) == 0)
          {
            [v10 addObject:scopeIdentifier];
            v19 = [scopes scopeWithIdentifier:scopeIdentifier];
            if (v19 && ![scopes setScopeHasChangesToPullFromTransport:v19 error:error])
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