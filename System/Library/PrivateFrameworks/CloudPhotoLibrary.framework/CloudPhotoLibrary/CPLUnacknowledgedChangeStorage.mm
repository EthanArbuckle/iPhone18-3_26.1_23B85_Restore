@interface CPLUnacknowledgedChangeStorage
- (CPLUnacknowledgedChangeStorage)initWithStore:(id)a3;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLUnacknowledgedChangeStorage

- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineStorageViews.m"];
  v9 = NSStringFromSelector(a2);
  v10 = [(CPLUnacknowledgedChangeStorage *)self storageDescription];
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:167 description:{@"%@ on %@ should not be useful here", v9, v10}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v3 = [(CPLEngineStore *)self->_store unacknowledgedChangeWithLocalScopedIdentifier:a3];
  v4 = [v3 copy];

  return v4;
}

- (CPLUnacknowledgedChangeStorage)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLUnacknowledgedChangeStorage;
  v6 = [(CPLUnacknowledgedChangeStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

@end