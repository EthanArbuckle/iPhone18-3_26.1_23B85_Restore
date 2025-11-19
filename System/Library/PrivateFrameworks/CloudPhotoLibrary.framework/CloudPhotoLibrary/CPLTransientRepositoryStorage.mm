@interface CPLTransientRepositoryStorage
- (CPLTransientRepositoryStorage)initWithTransientRepository:(id)a3;
- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLTransientRepositoryStorage

- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:79 description:{@"%@ is not implemented on %@", v9, objc_opt_class()}];

  abort();
}

- (CPLTransientRepositoryStorage)initWithTransientRepository:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLTransientRepositoryStorage;
  v6 = [(CPLTransientRepositoryStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transientRepository, a3);
  }

  return v7;
}

@end