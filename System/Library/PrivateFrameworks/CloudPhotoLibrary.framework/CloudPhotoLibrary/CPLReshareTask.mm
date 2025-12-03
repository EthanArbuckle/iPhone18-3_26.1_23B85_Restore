@interface CPLReshareTask
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (id)scopeFilterInTransaction:(id)transaction;
@end

@implementation CPLReshareTask

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLReshareScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLReshareScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  return v16;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  v16[1] = *MEMORY[0x1E69E9840];
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  primaryScope = [scopes primaryScope];
  if (primaryScope && ([scopes valueForFlag:24 forScope:primaryScope] & 1) == 0)
  {
    v6 = [scopes sharingScopeForScope:primaryScope];
    if (v6)
    {
      if (([scopes valueForFlag:262232 forScope:v6] & 1) == 0)
      {
        engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
        store = [engineLibrary store];
        ignoredRecords = [store ignoredRecords];
        scopeIdentifier = [v6 scopeIdentifier];
        v11 = _CPLCutoffDate();
        v12 = [ignoredRecords scopeIdentifier:scopeIdentifier hasIgnoredRecordsBeforeDate:v11];

        if (v12)
        {
          v16[0] = v6;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

          goto LABEL_9;
        }
      }
    }
  }

  v13 = MEMORY[0x1E695E0F0];
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
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

@end