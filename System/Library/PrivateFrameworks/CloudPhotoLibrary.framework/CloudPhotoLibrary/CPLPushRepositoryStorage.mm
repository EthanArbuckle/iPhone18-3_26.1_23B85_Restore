@interface CPLPushRepositoryStorage
- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (CPLPushRepositoryStorage)initWithPushRepository:(id)a3;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)scopedIdentifierAddingScopeIndexForScopedIdentifier:(id)a3;
@end

@implementation CPLPushRepositoryStorage

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLPushRepositoryStorage *)self pushRepository];
  v8 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:v6];

  LOBYTE(a4) = [v7 hasChangesWithRelatedScopedIdentifier:v8 class:a4];
  return a4;
}

- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CPLPushRepositoryStorage *)self pushRepository];
  v8 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:v6];

  LOBYTE(a3) = [v7 getRelatedScopedIdentifier:a3 forRecordWithScopedIdentifier:v8];
  return a3;
}

- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  pushRepository = self->_pushRepository;
  v6 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:a3];
  v7 = [(CPLEnginePushRepository *)pushRepository allChangesWithClass:a4 relatedScopedIdentifier:v6];

  return v7;
}

- (id)changeWithScopedIdentifier:(id)a3
{
  pushRepository = self->_pushRepository;
  v4 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:a3];
  v5 = [(CPLEnginePushRepository *)pushRepository changeWithScopedIdentifier:v4];

  return v5;
}

- (id)scopedIdentifierAddingScopeIndexForScopedIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    storageScopeType = self->_storageScopeType;
    if (storageScopeType == 2)
    {
      v7 = [(CPLEngineScopeStorage *)self->_scopes scopedIdentifierForCloudScopedIdentifier:v5];
    }

    else
    {
      if (storageScopeType != 1)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
        pushRepository = self->_pushRepository;
        [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:44 description:{@"Invalid scope type for %@: %ld", pushRepository, self->_storageScopeType}];

        abort();
      }

      v7 = [(CPLEngineScopeStorage *)self->_scopes scopedIdentifierForLocalScopedIdentifier:v5];
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (CPLPushRepositoryStorage)initWithPushRepository:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CPLPushRepositoryStorage;
  v6 = [(CPLPushRepositoryStorage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pushRepository, a3);
    v7->_storageScopeType = [(CPLEnginePushRepository *)v7->_pushRepository scopeType];
    v8 = [v5 engineStore];
    v9 = [v8 scopes];
    scopes = v7->_scopes;
    v7->_scopes = v9;
  }

  return v7;
}

@end