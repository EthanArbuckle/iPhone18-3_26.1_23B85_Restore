@interface CPLMingleChangesTask
- (BOOL)shouldProcessScope:(id)a3 inTransaction:(id)a4;
- (id)enumerateScopesForTaskInTransaction:(id)a3;
- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6;
- (id)scopeFilterInTransaction:(id)a3;
- (void)launch;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLMingleChangesTask

- (void)taskDidFinishWithError:(id)a3
{
  v4 = a3;
  [(CPLMingleChangesTask *)self hash];
  kdebug_trace();
  if (!v4)
  {
    v5 = [(CPLEngineSyncTask *)self session];
    [v5 noteClientNeedsToPullIfNecessary];
  }

  v6.receiver = self;
  v6.super_class = CPLMingleChangesTask;
  [(CPLEngineSyncTask *)&v6 taskDidFinishWithError:v4];
}

- (void)launch
{
  [(CPLMingleChangesTask *)self hash];
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = CPLMingleChangesTask;
  [(CPLEngineMultiscopeSyncTask *)&v3 launch];
}

- (BOOL)shouldProcessScope:(id)a3 inTransaction:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CPLMingleChangesTask;
  if (![(CPLEngineMultiscopeSyncTask *)&v23 shouldProcessScope:v6 inTransaction:a4])
  {
    v9 = [(CPLEngineMultiscopeSyncTask *)self scopes];
    goto LABEL_9;
  }

  v7 = +[CPLScopeChange supportsDirectMinglingForScopeWithType:](CPLScopeChange, "supportsDirectMinglingForScopeWithType:", [v6 scopeType]);
  v8 = [(CPLEngineMultiscopeSyncTask *)self scopes];
  v9 = v8;
  if (!v7)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if ([v8 valueForFlag:52 forScope:v6])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_14068();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring mingling for %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  if ([(CPLEngineSyncTask *)self forceSync])
  {
    goto LABEL_21;
  }

  v16 = [v9 transientSyncAnchorForScope:v6];
  if (v16)
  {

LABEL_21:
    v11 = 1;
    goto LABEL_10;
  }

  v17 = [v9 engineStore];
  v18 = [v17 transientPullRepository];
  v19 = [v18 hasUnmingledChangesForScope:v6];

  if (v19)
  {
    goto LABEL_21;
  }

  v20 = [v9 sharingScopeForScope:v6];
  if (v20)
  {
    v21 = [v9 engineStore];
    v22 = [v21 transientPullRepository];
    v11 = [v22 hasUnmingledChangesForScope:v20];
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
      v25 = v6;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Should mingle changes for %@: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)newScopedTaskWithScope:(id)a3 session:(id)a4 transportScope:(id)a5 clientCacheIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLMingleChangesScopeTask alloc];
  v15 = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLMingleChangesScopeTask *)v14 initWithEngineLibrary:v15 session:v12 clientCacheIdentifier:v10 scope:v13 transportScope:v11];

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
  v4 = [v3 enumeratorForScopesWithMingling];

  return v4;
}

@end