@interface CPLTransientRepositoryStorage
- (CPLTransientRepositoryStorage)initWithTransientRepository:(id)repository;
- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLTransientRepositoryStorage

- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:79 description:{@"%@ is not implemented on %@", v9, objc_opt_class()}];

  abort();
}

- (CPLTransientRepositoryStorage)initWithTransientRepository:(id)repository
{
  repositoryCopy = repository;
  v9.receiver = self;
  v9.super_class = CPLTransientRepositoryStorage;
  v6 = [(CPLTransientRepositoryStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transientRepository, repository);
  }

  return v7;
}

@end