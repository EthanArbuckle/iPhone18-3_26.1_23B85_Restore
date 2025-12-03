@interface CPLEngineIDMapping
- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasPendingIdentifiers;
- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error;
- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records;
@end

@implementation CPLEngineIDMapping

- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject resetAllFinalCloudIdentifiersForScopeWithIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addAddEventForRecordWithLocalScopedIdentifier:identifierCopy direction:direction error:error];

  return error;
}

- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)identifier direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject addDeleteEventForRecordWithLocalScopedIdentifier:identifierCopy direction:direction error:error];

  return error;
}

- (BOOL)removeMappingForCloudScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject removeMappingForCloudScopedIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)hasPendingIdentifiers
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasPendingIdentifiers = [platformObject hasPendingIdentifiers];

  return hasPendingIdentifiers;
}

- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)identifier asFinalWithError:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Marking all pending cloud identifiers as final", v11, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject markAllPendingIdentifiersForScopeWithIdentifier:identifierCopy asFinalWithError:error];

  return v9;
}

- (BOOL)setFinalCloudScopedIdentifier:(id)identifier forPendingCloudScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412546;
      v16 = scopedIdentifierCopy;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Remapping cloud identifier %@ to %@", &v15, 0x16u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject setFinalCloudScopedIdentifier:identifierCopy forPendingCloudScopedIdentifier:scopedIdentifierCopy error:error];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier
{
  v18 = 0;
  identifierCopy = identifier;
  scopeIdentifier = [(CPLScopedIdentifier *)identifierCopy scopeIdentifier];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:&v18];

  v8 = identifierCopy;
  if (v7)
  {
    v9 = 1;
    v10 = identifierCopy;
    do
    {
      v11 = [CPLScopedIdentifier alloc];
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      identifier = [(CPLScopedIdentifier *)identifierCopy identifier];
      v14 = [v12 initWithFormat:@"%@_%lu", identifier, v9];
      v8 = [(CPLScopedIdentifier *)v11 initWithScopeIdentifier:scopeIdentifier identifier:v14];

      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v16 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v18];

      ++v9;
      v10 = v8;
    }

    while (v16);
  }

  return v8;
}

- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records
{
  recordsCopy = records;
  v12 = 0;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject localScopedIdentifierForCloudScopedIdentifier:recordsCopy isFinal:&v12];

  if (!v6)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    remappedRecords = [engineStore remappedRecords];
    v9 = [remappedRecords realScopedIdentifierForRemappedScopedIdentifier:recordsCopy];

    if (v9 && ([v9 isEqual:recordsCopy] & 1) == 0)
    {
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v6 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v9 isFinal:&v12];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:final];

  return v8;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:final];

  if (!v9 && *final)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_6249();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "No cloud identifier for %@ means the cloud identifier should not be final", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineIDMapping.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:33 description:{@"No cloud identifier for %@ means the cloud identifier should not be final", identifierCopy}];

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

@end