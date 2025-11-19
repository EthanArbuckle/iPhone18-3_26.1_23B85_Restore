@interface CPLTransportUpdateTask
- (id)enumerateScopesForTaskInTransaction:(id)a3;
- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6;
@end

@implementation CPLTransportUpdateTask

- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLTransportUpdateScopeTask alloc];
  v15 = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLEngineScopedTask *)v14 initWithEngineLibrary:v15 session:v12 clientCacheIdentifier:v10 scope:v13 transportScope:v11];

  return v16;
}

- (id)enumerateScopesForTaskInTransaction:(id)a3
{
  v3 = [(CPLEngineMultiscopeSyncTask *)self scopes];
  v4 = [v3 enumeratorForScopesNeedingToUpdateTransport];

  return v4;
}

@end