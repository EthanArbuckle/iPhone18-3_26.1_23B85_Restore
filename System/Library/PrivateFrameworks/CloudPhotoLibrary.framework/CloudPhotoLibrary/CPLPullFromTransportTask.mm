@interface CPLPullFromTransportTask
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (id)scopeFilterInTransaction:(id)transaction;
@end

@implementation CPLPullFromTransportTask

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLPullFromTransportScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLPullFromTransportScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  return v16;
}

- (id)scopeFilterInTransaction:(id)transaction
{
  session = [(CPLEngineSyncTask *)self session];
  scopeIdentifiersExcludedFromMingling = [session scopeIdentifiersExcludedFromMingling];

  if (scopeIdentifiersExcludedFromMingling)
  {
    scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
    v7 = [scopes filterForExcludedScopeIdentifiers:scopeIdentifiersExcludedFromMingling];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  enumeratorForScopesNeedingToPullChangesFromTransport = [scopes enumeratorForScopesNeedingToPullChangesFromTransport];

  return enumeratorForScopesNeedingToPullChangesFromTransport;
}

@end