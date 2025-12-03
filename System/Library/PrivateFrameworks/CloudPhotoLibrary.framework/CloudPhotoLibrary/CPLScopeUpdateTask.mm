@interface CPLScopeUpdateTask
- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction;
- (id)enumerateScopesForTaskInTransaction:(id)transaction;
- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier;
- (void)taskDidFinishWithError:(id)error;
@end

@implementation CPLScopeUpdateTask

- (void)taskDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v9.receiver = self;
    v9.super_class = CPLScopeUpdateTask;
    [(CPLEngineSyncTask *)&v9 taskDidFinishWithError:errorCopy];
  }

  else
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke;
    v11[3] = &unk_1E86200A8;
    v7 = store;
    v12 = v7;
    selfCopy = self;
    v14 = v15;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke_5;
    v10[3] = &unk_1E8620A60;
    v10[4] = self;
    v10[5] = v15;
    v8 = [v7 performWriteTransactionWithBlock:v11 completionHandler:v10];

    _Block_object_dispose(v15, 8);
  }
}

void __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scopes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke_2;
  v7[3] = &unk_1E8620A38;
  v8 = v5;
  v9 = *(a1 + 40);
  v6 = v5;
  [v4 do:v7];
}

void __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke_5(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = [*(a1 + 32) session];
    [v4 requestSyncStateAtEndOfSyncSession:4 reschedule:1];
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 error];
    v16.receiver = v6;
    v16.super_class = CPLScopeUpdateTask;
    objc_msgSendSuper2(&v16, sel_taskDidFinishWithError_, v7);
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      v12 = [*(a1 + 32) engineLibrary];
      v13 = [v12 supervisor];
      [v13 scopeUpdateTaskDidFinishSuccessfully:*(a1 + 32)];

      v14.receiver = *(a1 + 32);
      v14.super_class = CPLScopeUpdateTask;
      objc_msgSendSuper2(&v14, sel_taskDidFinishWithError_, 0);
      goto LABEL_12;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_17161();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [CPLEngineSyncManager shortDescriptionForState:4];
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Restarting from %@ to verify all scopes", buf, 0xCu);
      }
    }

    v10 = *(a1 + 32);
    v7 = [CPLErrors cplErrorWithCode:10000 description:@"Need to verify all scopes"];
    v15.receiver = v10;
    v15.super_class = CPLScopeUpdateTask;
    objc_msgSendSuper2(&v15, sel_taskDidFinishWithError_, v7);
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __45__CPLScopeUpdateTask_taskDidFinishWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [*(a1 + 32) enumeratorForDeletedStagedScopes];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v28 = a2;
    v7 = 0;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v11 = [*(a1 + 32) stagingScopeForScope:v10];
      if (v11)
      {
        if ([*(a1 + 32) valueForFlag:4 forScope:v11])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v12 = __CPLTaskOSLogDomain_17161();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v36 = v10;
              v37 = 2112;
              v38 = v11;
              v13 = v12;
              v14 = "%@ has been deleted and staged to %@ but this scope has also been deleted - removing staged flag";
              v15 = 22;
              goto LABEL_20;
            }

            goto LABEL_21;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v16 = *(*(a1 + 40) + 168);
        v17 = [v10 scopeIdentifier];
        LODWORD(v16) = [v16 containsObject:v17];

        if (!v16)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v12 = __CPLTaskOSLogDomain_17161();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = v10;
              v13 = v12;
              v14 = "%@ is staged and deleted with no corresponding staging scope - removing staged flag";
              v15 = 12;
LABEL_20:
              _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
            }

LABEL_21:
          }

LABEL_22:
          v19 = *(a1 + 32);
          v30 = v7;
          v20 = [v19 setValue:0 forFlag:64 forScope:v10 error:&v30];
          v21 = v30;

          if (!v20)
          {
            v7 = v21;
LABEL_30:

            if (v28)
            {
              v25 = v7;
              v24 = 0;
              *v28 = v7;
            }

            else
            {
              v24 = 0;
            }

            goto LABEL_33;
          }

          v22 = *(a1 + 32);
          v29 = v21;
          v23 = [v22 setScopeNeedsToBePulledByClient:v10 error:&v29];
          v7 = v29;

          if (!v23)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v18 = __CPLTaskOSLogDomain_17161();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v10;
            _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "%@ has just been deleted with no corresponding staging scope - checking all scopes before discarding it", buf, 0xCu);
          }
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

LABEL_24:

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }
  }

  v7 = 0;
LABEL_28:
  v24 = 1;
LABEL_33:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)newScopedTaskWithScope:(id)scope session:(id)session transportScope:(id)transportScope clientCacheIdentifier:(id)identifier
{
  scopeCopy = scope;
  identifierCopy = identifier;
  transportScopeCopy = transportScope;
  sessionCopy = session;
  v14 = [CPLScopeUpdateScopeTask alloc];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  v16 = [(CPLScopeUpdateScopeTask *)v14 initWithEngineLibrary:engineLibrary session:sessionCopy clientCacheIdentifier:identifierCopy scope:scopeCopy transportScope:transportScopeCopy];

  if (+[CPLScopeChange supportsStagingScopeForScopeWithType:](CPLScopeChange, "supportsStagingScopeForScopeWithType:", [scopeCopy scopeType]))
  {
    possibleStagedScopes = self->_possibleStagedScopes;
    if (!possibleStagedScopes)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v19 = self->_possibleStagedScopes;
      self->_possibleStagedScopes = v18;

      possibleStagedScopes = self->_possibleStagedScopes;
    }

    scopeIdentifier = [scopeCopy scopeIdentifier];
    [(NSMutableSet *)possibleStagedScopes addObject:scopeIdentifier];
  }

  return v16;
}

- (BOOL)shouldProcessScope:(id)scope inTransaction:(id)transaction
{
  scopeCopy = scope;
  v9.receiver = self;
  v9.super_class = CPLScopeUpdateTask;
  v7 = -[CPLEngineMultiscopeSyncTask shouldProcessScope:inTransaction:](&v9, sel_shouldProcessScope_inTransaction_, scopeCopy, transaction) || [scopeCopy scopeType] == 0;

  return v7;
}

- (id)enumerateScopesForTaskInTransaction:(id)transaction
{
  scopes = [(CPLEngineMultiscopeSyncTask *)self scopes];
  enumeratorForScopesNeedingUpdateFromTransport = [scopes enumeratorForScopesNeedingUpdateFromTransport];

  return enumeratorForScopesNeedingUpdateFromTransport;
}

@end