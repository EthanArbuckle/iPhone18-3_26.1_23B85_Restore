@interface CPLPullFromTransportTask
- (id)enumerateScopesForTaskInTransaction:(id)a3;
- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6;
- (id)scopeFilterInTransaction:(id)a3;
@end

@implementation CPLPullFromTransportTask

- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLPullFromTransportScopeTask alloc];
  v15 = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLPullFromTransportScopeTask *)v14 initWithEngineLibrary:v15 session:v12 clientCacheIdentifier:v10 scope:v13 transportScope:v11];

  return v16;
}

- (id)scopeFilterInTransaction:(id)a3
{
  v4 = [(CPLEngineSyncTask *)self session];
  v5 = [v4 scopeIdentifiersExcludedFromMingling];

  if (v5)
  {
    v6 = [(CPLEngineMultiscopeSyncTask *)self scopes];
    v7 = [v6 filterForExcludedScopeIdentifiers:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumerateScopesForTaskInTransaction:(id)a3
{
  v3 = [(CPLEngineMultiscopeSyncTask *)self scopes];
  v4 = [v3 enumeratorForScopesNeedingToPullChangesFromTransport];

  return v4;
}

@end