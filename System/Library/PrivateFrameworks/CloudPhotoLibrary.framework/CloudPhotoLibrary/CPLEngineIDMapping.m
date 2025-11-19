@interface CPLEngineIDMapping
- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5;
- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)hasPendingIdentifiers;
- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)a3 asFinalWithError:(id *)a4;
- (BOOL)removeMappingForCloudScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setFinalCloudScopedIdentifier:(id)a3 forPendingCloudScopedIdentifier:(id)a4 error:(id *)a5;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)a3;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)a3;
@end

@implementation CPLEngineIDMapping

- (BOOL)resetAllFinalCloudIdentifiersForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 resetAllFinalCloudIdentifiersForScopeWithIdentifier:v6 error:a4];

  return a4;
}

- (BOOL)addAddEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 addAddEventForRecordWithLocalScopedIdentifier:v8 direction:a4 error:a5];

  return a5;
}

- (BOOL)addDeleteEventForRecordWithLocalScopedIdentifier:(id)a3 direction:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 addDeleteEventForRecordWithLocalScopedIdentifier:v8 direction:a4 error:a5];

  return a5;
}

- (BOOL)removeMappingForCloudScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 removeMappingForCloudScopedIdentifier:v6 error:a4];

  return a4;
}

- (BOOL)hasPendingIdentifiers
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasPendingIdentifiers];

  return v3;
}

- (BOOL)markAllPendingIdentifiersForScopeWithIdentifier:(id)a3 asFinalWithError:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Marking all pending cloud identifiers as final", v11, 2u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 markAllPendingIdentifiersForScopeWithIdentifier:v6 asFinalWithError:a4];

  return v9;
}

- (BOOL)setFinalCloudScopedIdentifier:(id)a3 forPendingCloudScopedIdentifier:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_6249();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Remapping cloud identifier %@ to %@", &v15, 0x16u);
    }
  }

  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 setFinalCloudScopedIdentifier:v8 forPendingCloudScopedIdentifier:v9 error:a5];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)a3
{
  v18 = 0;
  v4 = a3;
  v5 = [(CPLScopedIdentifier *)v4 scopeIdentifier];
  v6 = [(CPLEngineStorage *)self platformObject];
  v7 = [v6 localScopedIdentifierForCloudScopedIdentifier:v4 isFinal:&v18];

  v8 = v4;
  if (v7)
  {
    v9 = 1;
    v10 = v4;
    do
    {
      v11 = [CPLScopedIdentifier alloc];
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = [(CPLScopedIdentifier *)v4 identifier];
      v14 = [v12 initWithFormat:@"%@_%lu", v13, v9];
      v8 = [(CPLScopedIdentifier *)v11 initWithScopeIdentifier:v5 identifier:v14];

      v15 = [(CPLEngineStorage *)self platformObject];
      v16 = [v15 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v18];

      ++v9;
      v10 = v8;
    }

    while (v16);
  }

  return v8;
}

- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 localScopedIdentifierForCloudScopedIdentifier:v4 isFinal:&v12];

  if (!v6)
  {
    v7 = [(CPLEngineStorage *)self engineStore];
    v8 = [v7 remappedRecords];
    v9 = [v8 realScopedIdentifierForRemappedScopedIdentifier:v4];

    if (v9 && ([v9 isEqual:v4] & 1) == 0)
    {
      v10 = [(CPLEngineStorage *)self platformObject];
      v6 = [v10 localScopedIdentifierForCloudScopedIdentifier:v9 isFinal:&v12];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 localScopedIdentifierForCloudScopedIdentifier:v6 isFinal:a4];

  return v8;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 cloudScopedIdentifierForLocalScopedIdentifier:v7 isFinal:a4];

  if (!v9 && *a4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_6249();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "No cloud identifier for %@ means the cloud identifier should not be final", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineIDMapping.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:33 description:{@"No cloud identifier for %@ means the cloud identifier should not be final", v7}];

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a6) = [v10 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  return a6;
}

@end