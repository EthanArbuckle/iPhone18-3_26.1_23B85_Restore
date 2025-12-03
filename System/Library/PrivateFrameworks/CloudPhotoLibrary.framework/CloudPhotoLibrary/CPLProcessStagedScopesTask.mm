@interface CPLProcessStagedScopesTask
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (void)taskDidFinishWithError:(id)error;
@end

@implementation CPLProcessStagedScopesTask

- (void)taskDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy || !self->_hasProcessedStagedScopes)
  {
    v8.receiver = self;
    v8.super_class = CPLProcessStagedScopesTask;
    [(CPLEngineSyncTask *)&v8 taskDidFinishWithError:errorCopy];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Some staged scopes have been fully processed, we will need to do some cleanup", buf, 2u);
      }
    }

    session = [(CPLEngineSyncTask *)self session];
    [session requestSyncStateAtEndOfSyncSession:2 reschedule:1];

    v7 = [CPLErrors cplErrorWithCode:10000 description:@"Need to clean-up staged scopes"];
    v9.receiver = self;
    v9.super_class = CPLProcessStagedScopesTask;
    [(CPLEngineSyncTask *)&v9 taskDidFinishWithError:v7];
  }
}

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  scopeCopy = scope;
  v14 = [CPLProcessStagedScopesScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLProcessStagedScopesScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  return v16;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  v12[1] = *MEMORY[0x1E69E9840];
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  primaryScope = [scopes primaryScope];
  if (primaryScope)
  {
    v5 = [scopes sharingScopeForScope:primaryScope];
    if (v5)
    {
      v6 = [scopes stagingScopeForScope:v5];

      if (v6)
      {
LABEL_4:
        v12[0] = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

        goto LABEL_13;
      }

      v8 = [scopes scopeChangeForScope:v5];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v8 areSomeUsersExiting] & 1) != 0)
      {
        v9 = [scopes valueForFlag:4 forScope:v5];

        if (!v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
      }
    }
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

@end