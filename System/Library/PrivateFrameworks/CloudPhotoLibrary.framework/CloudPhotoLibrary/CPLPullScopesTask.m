@interface CPLPullScopesTask
- (BOOL)_checkShouldHandleBatchInTransaction:(id)a3;
- (CPLPullScopesTask)initWithEngineLibrary:(id)a3 session:(id)a4;
- (void)_handleChangedOrNewScopes:(id)a3 deletedScopeIdentifiers:(id)a4 newScopeListSyncAnchor:(id)a5;
- (void)_handleFinalScopeListSyncAnchor:(id)a3 error:(id)a4;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLPullScopesTask

- (void)launch
{
  v6.receiver = self;
  v6.super_class = CPLPullScopesTask;
  [(CPLEngineSyncTask *)&v6 launch];
  store = self->_store;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CPLPullScopesTask_launch__block_invoke;
  v5[3] = &unk_1E86205E0;
  v5[4] = self;
  v4 = [(CPLEngineStore *)store performReadTransactionWithBlock:v5];
}

void __27__CPLPullScopesTask_launch__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v21 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:?];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = [v3[12] shouldSyncScopeList];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6[12] clientCacheIdentifier];
      v8 = *(a1 + 32);
      v9 = *(v8 + 112);
      *(v8 + 112) = v7;

      v10 = [*(*(a1 + 32) + 104) scopeListSyncAnchor];
      v11 = [*(a1 + 32) engineLibrary];
      v12 = [v11 transport];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __27__CPLPullScopesTask_launch__block_invoke_2;
      v23[3] = &unk_1E861BEF8;
      v24 = *(a1 + 32);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __27__CPLPullScopesTask_launch__block_invoke_3;
      v22[3] = &unk_1E861BF20;
      v22[4] = v24;
      v13 = [v12 fetchScopeListChangesForScopeListSyncAnchor:v10 progressHandler:v23 completionHandler:v22];
      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      *(v14 + 120) = v13;

      v16 = [v12 createGroupForFetchScopeListChanges];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLTaskOSLogDomain_2598();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(*(a1 + 32) + 120);
          *buf = 138412290;
          v26 = v18;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Launching %@", buf, 0xCu);
        }
      }

      [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 120) withTransportGroup:v16];

      v19 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v20 = *MEMORY[0x1E69E9840];

      [v6 taskDidFinishWithError:0];
    }
  }
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = CPLPullScopesTask;
  [(CPLEngineSyncTask *)&v6 cancel];
  store = self->_store;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CPLPullScopesTask_cancel__block_invoke;
  v5[3] = &unk_1E86205E0;
  v5[4] = self;
  v4 = [(CPLEngineStore *)store performReadTransactionWithBlock:v5];
}

- (void)_handleFinalScopeListSyncAnchor:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  store = self->_store;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLPullScopesTask__handleFinalScopeListSyncAnchor_error___block_invoke;
  v14[3] = &unk_1E86200D0;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CPLPullScopesTask__handleFinalScopeListSyncAnchor_error___block_invoke_3;
  v12[3] = &unk_1E86205B8;
  v12[4] = self;
  v13 = v15;
  v9 = v15;
  v10 = v6;
  v11 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v14 completionHandler:v12];
}

void __59__CPLPullScopesTask__handleFinalScopeListSyncAnchor_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _checkShouldHandleBatchInTransaction:v3] && !*(a1 + 40))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__CPLPullScopesTask__handleFinalScopeListSyncAnchor_error___block_invoke_2;
    v4[3] = &unk_1E8620940;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    [v3 do:v4];
  }
}

void __59__CPLPullScopesTask__handleFinalScopeListSyncAnchor_error___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (!v4)
  {
    if (v5[16] || *(a1 + 40))
    {
      v8 = *(a1 + 32);
    }

    else
    {
      v12 = [*(a1 + 32) isCancelled];
      v5 = *(a1 + 32);
      if (v12)
      {
        v6 = +[CPLErrors operationCancelledError];
        goto LABEL_3;
      }

      if (v5[18] + v5[17] + v5[19] && (_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLTaskOSLogDomain_2598();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = v14[18];
          v16 = v14[17];
          v17 = v14[19];
          v18 = 134218496;
          v19 = v15;
          v20 = 2048;
          v21 = v16;
          v22 = 2048;
          v23 = v17;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Finishing updating scope list with %lu new scopes, %lu deletes scopes and %lu modified scopes", &v18, 0x20u);
        }

        v5 = *(a1 + 32);
      }

      v8 = v5;
    }

    [v8 taskDidFinishWithError:?];
    goto LABEL_8;
  }

  v6 = [v3 error];
LABEL_3:
  v7 = v6;
  [v5 taskDidFinishWithError:v6];

LABEL_8:
  v9 = *(a1 + 32);
  v10 = *(v9 + 120);
  *(v9 + 120) = 0;

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleChangedOrNewScopes:(id)a3 deletedScopeIdentifiers:(id)a4 newScopeListSyncAnchor:(id)a5
{
  v7 = a3;
  v8 = a4;
  store = self->_store;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke;
  v14[3] = &unk_1E86200D0;
  v15 = v7;
  v16 = v8;
  v17 = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_12;
  v13[3] = &unk_1E86205E0;
  v13[4] = self;
  v10 = v8;
  v11 = v7;
  v12 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v14 completionHandler:v13];
}

void __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_2;
  v17[3] = &unk_1E861BEA8;
  v18 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v19 = v4;
  v20 = v5;
  [v3 addCleanupBlock:v17];
  if ([a1[4] count] || objc_msgSend(a1[5], "count"))
  {
    v6 = a1[6];
    if ((v6[160] & 1) == 0)
    {
      v6[160] = 1;
      v7 = [a1[6] session];
      v8 = v7;
      if (v7 && [v7 isJustInCaseSession])
      {
        v9 = [v8 predictor];
        v10 = [MEMORY[0x1E695DF00] date];
        [v9 updatePredictedDate:v10 forType:@"lastEvent"];
      }
    }
  }

  if ([a1[6] _checkShouldHandleBatchInTransaction:v3])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_4;
    v13[3] = &unk_1E861FF88;
    v11 = a1[5];
    v12 = a1[6];
    v14 = v11;
    v15 = v12;
    v16 = a1[4];
    [v3 do:v13];
  }
}

void __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_12(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = [v3 error];
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = v5;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_2598();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 error];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Failed to handle scope list changes: %@", &v11, 0xCu);
      }
    }

    [*(*(a1 + 32) + 120) cancel];
    *(*(a1 + 32) + 88) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v8[7] = v2;
    v8[8] = v3;
    v4 = result;
    v5 = [*(result + 32) count];
    result = [*(v4 + 40) count];
    v6 = result + v5;
    if (result + v5)
    {
      v7 = *(v4 + 48);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_3;
      v8[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
      v8[4] = v6;
      return [v7 withThroughputReporter:v8];
    }
  }

  return result;
}

uint64_t __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_4(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v4)
  {
    v6 = *v20;
    *&v5 = 138412290;
    v16 = v5;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 104) scopeWithIdentifier:{v8, v16}];
        if (v9)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v10 = __CPLTaskOSLogDomain_2598();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = v16;
              *(&buf + 4) = v8;
              _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Scope %@ has been deleted according to server - we will need to check that", &buf, 0xCu);
            }
          }

          v11 = [*(*(a1 + 40) + 104) setScopeNeedsUpdateFromTransport:v9 error:a2];
          *(v24 + 24) = v11;
          if (!v11)
          {

            goto LABEL_17;
          }

          ++*(*(a1 + 40) + 136);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (*(v24 + 24) == 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__2613;
    v30 = __Block_byref_object_dispose__2614;
    v31 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_8;
    v18[3] = &unk_1E861BED0;
    v12 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v18[5] = &v23;
    v18[6] = &buf;
    [v12 enumerateKeysAndObjectsUsingBlock:v18];
    if (a2 && (v24[3] & 1) == 0)
    {
      *a2 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);

    v13 = *(v24 + 24);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v23, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __94__CPLPullScopesTask__handleChangedOrNewScopes_deletedScopeIdentifiers_newScopeListSyncAnchor___block_invoke_8(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1[4] + 104) scopeWithIdentifier:v7];
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_2598();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v7;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Scope %@ has changes to pull from the server", buf, 0xCu);
      }
    }

    ++*(a1[4] + 152);
    v11 = *(a1[4] + 104);
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v11 setScopeHasChangesToPullFromTransport:v9 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    *(*(a1[5] + 8) + 24) = v13;
    if (*(*(a1[5] + 8) + 24) != 1)
    {
      goto LABEL_23;
    }

    v14 = *(a1[4] + 104);
    v15 = [v8 updatedTransportScope];
    v16 = *(a1[6] + 8);
    v34 = *(v16 + 40);
    LOBYTE(v14) = [v14 setTransportScope:v15 forScope:v9 error:&v34];
    objc_storeStrong((v16 + 40), v34);
    *(*(a1[5] + 8) + 24) = v14;

    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      goto LABEL_23;
    }

    v17 = [*(a1[4] + 104) scopeChangeForScope:v9];
    if ([v8 updateScopeChange:v17])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLTaskOSLogDomain_2598();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v37 = v9;
          v38 = 2112;
          v39 = v17;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Updating scope change for %@ to %@", buf, 0x16u);
        }
      }

      v19 = *(a1[4] + 104);
      v20 = *(a1[6] + 8);
      v33 = *(v20 + 40);
      v21 = [v19 storeScopeChange:v17 forScope:v9 error:&v33];
      objc_storeStrong((v20 + 40), v33);
      *(*(a1[5] + 8) + 24) = v21;
    }
  }

  else
  {
    ++*(a1[4] + 144);
    v22 = *(a1[4] + 104);
    v23 = [v8 updatedTransportScope];
    v24 = *(a1[6] + 8);
    v32 = *(v24 + 40);
    v17 = [v22 createScopeWithIdentifier:v7 scopeType:0 flags:16 transportScope:v23 error:&v32];
    objc_storeStrong((v24 + 40), v32);

    *(*(a1[5] + 8) + 24) = v17 != 0;
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v25 = [*(a1[4] + 104) scopeChangeForScope:v17];
      if ([v8 updateScopeChange:v25])
      {
        v26 = *(a1[4] + 104);
        v27 = *(a1[6] + 8);
        v31 = *(v27 + 40);
        v28 = [v26 storeScopeChange:v25 forScope:v17 error:&v31];
        objc_storeStrong((v27 + 40), v31);
        *(*(a1[5] + 8) + 24) = v28;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = __CPLTaskOSLogDomain_2598();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v37 = v7;
          v38 = 2112;
          v39 = v25;
          _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_DEFAULT, "Scope %@ is new - will try to identify it. Initial scope change is %@", buf, 0x16u);
        }
      }
    }
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
LABEL_23:
    *a4 = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkShouldHandleBatchInTransaction:(id)a3
{
  if ([(CPLEngineSyncTask *)self isCancelled]|| self->_ignoreNewChanges || self->_badError)
  {
    return 0;
  }

  v4 = self->_clientCacheIdentifier;
  v5 = [(CPLEngineStore *)self->_store clientCacheIdentifier];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = [v4 isEqual:v5];

    if (v9)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v4 | v6)
  {
LABEL_10:
    [(CPLPullScopesTask *)self cancel];
    return 0;
  }

  return 1;
}

- (void)taskDidFinishWithError:(id)a3
{
  v4 = a3;
  if (!v4 && self->_hasSeenSomeChanges)
  {
    v5 = [(CPLEngineSyncTask *)self session];
    v6 = [v5 isJustInCaseSession];

    if (v6)
    {
      v7 = [(CPLEngineSyncTask *)self session];
      [v7 setIsJustInCaseSession:0];
    }
  }

  v8.receiver = self;
  v8.super_class = CPLPullScopesTask;
  [(CPLEngineSyncTask *)&v8 taskDidFinishWithError:v4];
}

- (CPLPullScopesTask)initWithEngineLibrary:(id)a3 session:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPLPullScopesTask;
  v7 = [(CPLEngineSyncTask *)&v13 initWithEngineLibrary:v6 session:a4];
  if (v7)
  {
    v8 = [v6 store];
    store = v7->_store;
    v7->_store = v8;

    v10 = [(CPLEngineStore *)v7->_store scopes];
    scopes = v7->_scopes;
    v7->_scopes = v10;
  }

  return v7;
}

@end