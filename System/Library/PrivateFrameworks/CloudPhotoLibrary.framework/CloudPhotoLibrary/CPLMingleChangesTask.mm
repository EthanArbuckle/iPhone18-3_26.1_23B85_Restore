@interface CPLMingleChangesTask
- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction;
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (id)scopeFilterInTransaction:(id)transaction;
- (void)launch;
- (void)taskDidFinishWithError:(id)error;
@end

@implementation CPLMingleChangesTask

- (void)taskDidFinishWithError:(id)error
{
  errorCopy = error;
  [(CPLMingleChangesTask *)self hash];
  kdebug_trace();
  if (!errorCopy)
  {
    session = [(CPLEngineSyncTask *)self session];
    [session noteClientNeedsToPullIfNecessary];
  }

  v6.receiver = self;
  v6.super_class = CPLMingleChangesTask;
  [(CPLEngineSyncTask *)&v6 taskDidFinishWithError:errorCopy];
}

- (void)launch
{
  [(CPLMingleChangesTask *)self hash];
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = CPLMingleChangesTask;
  [(CPLEngineMultiscopeSyncTask *)&v3 launch];
}

- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction
{
  v28 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v23.receiver = self;
  v23.super_class = CPLMingleChangesTask;
  if (![(CPLEngineMultiscopeSyncTask *)&v23 shouldProcessScope:scopeCopy inTransaction:transaction])
  {
    scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
    goto LABEL_9;
  }

  v7 = +[CPLScopeChange supportsDirectMinglingForScopeWithType:](CPLScopeChange, "supportsDirectMinglingForScopeWithType:", [scopeCopy scopeType]);
  scopes2 = [(CPLEngineMultiscopeSyncTask *)self scopes];
  scopes = scopes2;
  if (!v7)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if ([scopes2 valueForFlag:52 forScope:scopeCopy])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = scopeCopy;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring mingling for %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  if ([(CPLEngineSyncTask *)self forceSync])
  {
    goto LABEL_21;
  }

  v16 = [scopes transientSyncAnchorForScope:scopeCopy];
  if (v16)
  {

LABEL_21:
    v11 = 1;
    goto LABEL_10;
  }

  engineStore = [scopes engineStore];
  transientPullRepository = [engineStore transientPullRepository];
  v19 = [transientPullRepository hasUnmingledChangesForScope:scopeCopy];

  if (v19)
  {
    goto LABEL_21;
  }

  v20 = [scopes sharingScopeForScope:scopeCopy];
  if (v20)
  {
    engineStore2 = [scopes engineStore];
    transientPullRepository2 = [engineStore2 transientPullRepository];
    v11 = [transientPullRepository2 hasUnmingledChangesForScope:v20];
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLTaskOSLogDomain_14068();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v25 = scopeCopy;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Should mingle changes for %@: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLMingleChangesScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLMingleChangesScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

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
  enumeratorForScopesWithMingling = [scopes enumeratorForScopesWithMingling];

  return enumeratorForScopesWithMingling;
}

@end