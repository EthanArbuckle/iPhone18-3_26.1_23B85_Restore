@interface CPLUnacknowledgedChangeStorage
- (CPLUnacknowledgedChangeStorage)initWithStore:(id)store;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLUnacknowledgedChangeStorage

- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
  v9 = NSStringFromSelector(a2);
  storageDescription = [(CPLUnacknowledgedChangeStorage *)self storageDescription];
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:167 description:{@"%@ on %@ should not be useful here", v9, storageDescription}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLEngineStore *)self->_store unacknowledgedChangeWithLocalScopedIdentifier:identifier];
  v4 = [v3 copy];

  return v4;
}

- (CPLUnacknowledgedChangeStorage)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CPLUnacknowledgedChangeStorage;
  v6 = [(CPLUnacknowledgedChangeStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

@end