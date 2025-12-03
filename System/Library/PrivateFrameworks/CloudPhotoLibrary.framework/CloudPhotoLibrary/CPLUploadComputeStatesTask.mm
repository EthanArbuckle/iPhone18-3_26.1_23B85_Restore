@interface CPLUploadComputeStatesTask
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
@end

@implementation CPLUploadComputeStatesTask

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLUploadComputeStatesScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLUploadComputeStatesScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  return v16;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  enumeratorForScopesNeedingToUploadComputeState = [scopes enumeratorForScopesNeedingToUploadComputeState];

  return enumeratorForScopesNeedingToUploadComputeState;
}

@end