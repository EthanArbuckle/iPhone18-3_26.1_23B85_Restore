@interface CPLInvalidBatchStorage
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (CPLInvalidBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4;
@end

@implementation CPLInvalidBatchStorage

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v6 = [v5 scopeIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLInvalidBatchStorage;
    v8 = [(CPLEngineTransientRepositoryBatchStorage *)&v10 hasChangesInScopeWithIdentifier:v4];
  }

  return v8;
}

- (CPLInvalidBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 hasUnmingledChangesForScope:v8])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_505();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ should have no changes to mingle any more", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:100 description:{@"%@ should have no changes to mingle any more", v8}];

    abort();
  }

  v15.receiver = self;
  v15.super_class = CPLInvalidBatchStorage;
  v9 = [(CPLEngineTransientRepositoryBatchStorage *)&v15 initWithTransientRepository:v7 scope:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end