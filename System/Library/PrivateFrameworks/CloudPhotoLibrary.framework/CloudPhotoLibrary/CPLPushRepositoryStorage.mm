@interface CPLPushRepositoryStorage
- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (CPLPushRepositoryStorage)initWithPushRepository:(id)repository;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)scopedIdentifierAddingScopeIndexForScopedIdentifier:(id)identifier;
@end

@implementation CPLPushRepositoryStorage

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  pushRepository = [(CPLPushRepositoryStorage *)self pushRepository];
  v8 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:identifierCopy];

  LOBYTE(class) = [pushRepository hasChangesWithRelatedScopedIdentifier:v8 class:class];
  return class;
}

- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier
{
  scopedIdentifierCopy = scopedIdentifier;
  pushRepository = [(CPLPushRepositoryStorage *)self pushRepository];
  v8 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:scopedIdentifierCopy];

  LOBYTE(identifier) = [pushRepository getRelatedScopedIdentifier:identifier forRecordWithScopedIdentifier:v8];
  return identifier;
}

- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  pushRepository = self->_pushRepository;
  v6 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:identifier];
  v7 = [(CPLEnginePushRepository *)pushRepository allChangesWithClass:class relatedScopedIdentifier:v6];

  return v7;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  pushRepository = self->_pushRepository;
  v4 = [(CPLPushRepositoryStorage *)self scopedIdentifierAddingScopeIndexForScopedIdentifier:identifier];
  v5 = [(CPLEnginePushRepository *)pushRepository changeWithScopedIdentifier:v4];

  return v5;
}

- (id)scopedIdentifierAddingScopeIndexForScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    storageScopeType = self->_storageScopeType;
    if (storageScopeType == 2)
    {
      v7 = [(CPLEngineScopeStorage *)self->_scopes scopedIdentifierForCloudScopedIdentifier:identifierCopy];
    }

    else
    {
      if (storageScopeType != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
        pushRepository = self->_pushRepository;
        [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:44 description:{@"Invalid scope type for %@: %ld", pushRepository, self->_storageScopeType}];

        abort();
      }

      v7 = [(CPLEngineScopeStorage *)self->_scopes scopedIdentifierForLocalScopedIdentifier:identifierCopy];
    }
  }

  else
  {
    v7 = identifierCopy;
  }

  v8 = v7;

  return v8;
}

- (CPLPushRepositoryStorage)initWithPushRepository:(id)repository
{
  repositoryCopy = repository;
  v12.receiver = self;
  v12.super_class = CPLPushRepositoryStorage;
  v6 = [(CPLPushRepositoryStorage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pushRepository, repository);
    v7->_storageScopeType = [(CPLEnginePushRepository *)v7->_pushRepository scopeType];
    engineStore = [repositoryCopy engineStore];
    scopes = [engineStore scopes];
    scopes = v7->_scopes;
    v7->_scopes = scopes;
  }

  return v7;
}

@end