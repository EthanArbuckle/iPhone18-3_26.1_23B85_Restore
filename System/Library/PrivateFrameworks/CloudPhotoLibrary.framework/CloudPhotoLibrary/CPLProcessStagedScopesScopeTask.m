@interface CPLProcessStagedScopesScopeTask
+ (void)initialize;
- (CPLProcessStagedScopesScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7;
- (void)_checkDestinationAndProcessCleanup;
- (void)_cleanupStagedScopeInTransaction:(id)a3 store:(id)a4;
- (void)_deleteStagingScopeIfNecessary;
- (void)_excludeScopes;
- (void)_startActualCleanup;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLProcessStagedScopesScopeTask

- (void)taskDidFinishWithError:(id)a3
{
  v4 = a3;
  if (v4 && (self->_destinationScope || self->_stagingScope))
  {
    v5 = [(CPLEngineScopedTask *)self store];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke;
    v12[3] = &unk_1E86205B8;
    v13 = v5;
    v14 = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke_3;
    v9[3] = &unk_1E86205B8;
    v10 = v4;
    v11 = self;
    v6 = v5;
    v7 = [v6 performWriteTransactionWithBlock:v12 completionHandler:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLProcessStagedScopesScopeTask;
    [(CPLEngineSyncTask *)&v8 taskDidFinishWithError:v4];
  }
}

void __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke_2;
  v6[3] = &unk_1E8620940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 do:v6];
}

void __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 error];
  v5 = v4;
  if (!v4)
  {
    v5 = *(a1 + 32);
  }

  v6.receiver = v3;
  v6.super_class = CPLProcessStagedScopesScopeTask;
  objc_msgSendSuper2(&v6, sel_taskDidFinishWithError_, v5);
}

uint64_t __58__CPLProcessStagedScopesScopeTask_taskDidFinishWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) scopes];
  v5 = *(*(a1 + 40) + 128);
  if (v5 && ([v5 scopeIdentifier], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "scopeWithIdentifier:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7) && (v8 = objc_msgSend(v4, "setScopeNeedsUpdateFromTransport:error:", v7, a2), v7, !v8))
  {
    v12 = 0;
  }

  else
  {
    v9 = *(*(a1 + 40) + 144);
    if (v9)
    {
      v10 = [v9 scopeIdentifier];
      v11 = [v4 scopeWithIdentifier:v10];

      if (v11)
      {
        v12 = [v4 setScopeNeedsUpdateFromTransport:v11 error:a2];
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLProcessStagedScopesScopeTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLProcessStagedScopesScopeTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

uint64_t __41__CPLProcessStagedScopesScopeTask_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) cancel];
  [*(*(a1 + 32) + 184) cancel];
  v2 = *(*(a1 + 32) + 192);

  return [v2 cancel];
}

- (void)launch
{
  v9.receiver = self;
  v9.super_class = CPLProcessStagedScopesScopeTask;
  [(CPLEngineSyncTask *)&v9 launch];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__CPLProcessStagedScopesScopeTask_launch__block_invoke;
  v8[3] = &unk_1E861B100;
  v8[4] = self;
  v8[5] = a2;
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v11 = v5;
  v6 = queue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __41__CPLProcessStagedScopesScopeTask_launch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];

  v4 = [v3 scopes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__CPLProcessStagedScopesScopeTask_launch__block_invoke_2;
  v9[3] = &unk_1E8620590;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v11 = v3;
  v12 = v5;
  v6 = v3;
  v7 = v4;
  v8 = [v6 performReadTransactionWithBlock:v9];
}

void __41__CPLProcessStagedScopesScopeTask_launch__block_invoke_2(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isScopeValidInTransaction:v3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) scope];
        *buf = 138412290;
        v60 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ is staged and needs to be cleaned-up first", buf, 0xCu);
      }
    }

    v6 = [*(a1 + 32) session];
    v7 = [*(a1 + 32) scope];
    v8 = [*(a1 + 40) scopeForSharingScope:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 128);
    *(v9 + 128) = v8;

    v11 = [*(*(a1 + 32) + 128) scopeIdentifier];
    v12 = [*(a1 + 48) mainScopeIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      *(*(a1 + 32) + 208) = 1;
    }

    if (*(*(a1 + 32) + 128))
    {
      v14 = [*(a1 + 40) scopeChangeForScope:?];
      v15 = *(a1 + 32);
      v16 = *(v15 + 136);
      *(v15 + 136) = v14;
    }

    v17 = [*(a1 + 40) stagingScopeForScope:v7];
    v18 = *(a1 + 32);
    v19 = *(v18 + 144);
    *(v18 + 144) = v17;

    v20 = *(a1 + 32);
    if (*(v20 + 144))
    {
      if (!*(v20 + 128))
      {
        v30 = [v7 scopeIdentifier];
        [v6 noteSyncSessionInformation:{@"%@ is staged and needs to be cleaned-up but there is no destination scope to use", v30}];

        [*(a1 + 32) _excludeScopes];
        [*(a1 + 32) taskDidFinishWithError:0];
        if (_dontProcessStagedScopes != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v21 = [*(a1 + 40) flagsForScope:?];
      if ([v21 valueForFlag:25])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = __CPLTaskOSLogDomain_21318();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 32);
            v24 = *(v23 + 144);
            v25 = *(v23 + 128);
            *buf = 138412802;
            v60 = v7;
            v61 = 2112;
            v62 = v24;
            v63 = 2112;
            v64 = v25;
            _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "%@ is staged to %@ but %@ is disabled so the staging zone will just be considered as read-only too", buf, 0x20u);
          }
        }

        [*(a1 + 32) taskDidFinishWithError:0];
        goto LABEL_28;
      }

      if ([v21 valueForFlag:25])
      {
        v31 = [v7 scopeIdentifier];
        v32 = [*(*(a1 + 32) + 128) scopeIdentifier];
        [v6 noteSyncSessionInformation:{@"%@ is staged and needs to be cleaned-up but %@ is not usable", v31, v32}];

        [v6 requestSyncStateAtEndOfSyncSession:4 reschedule:0];
        v33 = *(a1 + 32);
        v34 = [CPLErrors cplErrorWithCode:10000 description:@"%@ is inactive and needs to be refreshed", v7];
        [v33 taskDidFinishWithError:v34];

LABEL_28:
LABEL_47:

        goto LABEL_48;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLTaskOSLogDomain_21318();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 32);
          v38 = *(v37 + 144);
          v39 = *(v37 + 128);
          *buf = 138412802;
          v60 = v7;
          v61 = 2112;
          v62 = v38;
          v63 = 2112;
          v64 = v39;
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "%@ is staged to %@ and needs to be cleaned-up to %@ allowing metadata sync", buf, 0x20u);
        }
      }

      goto LABEL_35;
    }

    v21 = [*(a1 + 40) scopeChangeForScope:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v45 = __CPLTaskOSLogDomain_21318();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          *buf = 138412546;
          v60 = v7;
          v61 = 2112;
          v62 = v46;
          v47 = v46;
          _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "Unexpected scope change class for %@: %@", buf, 0x16u);
        }
      }

      v48 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = *(a1 + 56);
      v50 = *(a1 + 32);
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLProcessStagedScopesTask.m"];
      [v48 handleFailureInMethod:v49 object:v50 file:v51 lineNumber:377 description:{@"Unexpected scope change class for %@: %@", v7, objc_opt_class()}];

      goto LABEL_66;
    }

    if ([v21 isCurrentUserExiting])
    {
      if ([v7 scopeType] == 4)
      {
        v28 = [v21 exitingUserIdentifiers];
        v29 = [v28 count];

        if (v29 == 1)
        {
          objc_storeStrong((*(a1 + 32) + 144), v7);
LABEL_35:

          if ((_dontProcessStagedScopes & 1) == 0)
          {
            v40 = *(a1 + 32);
            if (v40[18])
            {
              if (v40[16])
              {
                [v40 _cleanupStagedScopeInTransaction:v3 store:*(a1 + 48)];
                goto LABEL_47;
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v56 = __CPLTaskOSLogDomain_21318();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v60 = v7;
                  _os_log_impl(&dword_1DC05A000, v56, OS_LOG_TYPE_ERROR, "We should have a destination scope for %@ at this point", buf, 0xCu);
                }
              }

              v48 = [MEMORY[0x1E696AAA8] currentHandler];
              v57 = *(a1 + 56);
              v58 = *(a1 + 32);
              v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLProcessStagedScopesTask.m"];
              [v48 handleFailureInMethod:v57 object:v58 file:v55 lineNumber:409 description:{@"We should have a destination scope for %@ at this point", v7}];
            }

            else
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v52 = __CPLTaskOSLogDomain_21318();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v60 = v7;
                  _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_ERROR, "We should have a staging scope for %@ at this point", buf, 0xCu);
                }
              }

              v48 = [MEMORY[0x1E696AAA8] currentHandler];
              v53 = *(a1 + 56);
              v54 = *(a1 + 32);
              v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLProcessStagedScopesTask.m"];
              [v48 handleFailureInMethod:v53 object:v54 file:v55 lineNumber:408 description:{@"We should have a staging scope for %@ at this point", v7}];
            }

LABEL_66:
            abort();
          }

          goto LABEL_45;
        }

        v35 = @"%@ is dismantled and is waiting for some users to be staged before being cleaned-up";
LABEL_44:
        v42 = [v7 scopeIdentifier];
        [v6 noteSyncSessionInformation:{v35, v42}];

        if ((_dontProcessStagedScopes & 1) == 0)
        {
LABEL_46:
          [*(a1 + 32) _excludeScopes];
          [*(a1 + 32) taskDidFinishWithError:0];
          goto LABEL_47;
        }

LABEL_45:
        v43 = [v7 scopeIdentifier];
        [v6 noteSyncSessionInformation:{@"Settings are preventing clean-up of %@", v43}];

        goto LABEL_46;
      }
    }

    else
    {
      if ([v21 areSomeUsersExiting])
      {
        v35 = @"Waiting for other participants to exit %@ before allowing metadata sync";
        goto LABEL_44;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v41 = __CPLTaskOSLogDomain_21318();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v60 = v7;
          v61 = 2112;
          v62 = v21;
          _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "%@ needs to be cleaned-up but there is not staging scope available:\n%@", buf, 0x16u);
        }
      }
    }

    v35 = @"%@ is waiting to be staged and needs to be cleaned-up before allowing metadata sync";
    goto LABEL_44;
  }

  v26 = *(a1 + 32);
  v27 = +[CPLErrors operationCancelledError];
  [v26 taskDidFinishWithError:v27];

LABEL_48:
  v44 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupStagedScopeInTransaction:(id)a3 store:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CPLEngineSyncTask *)self engineLibrary];
  v7 = [v6 transport];

  v8 = [v5 scopes];
  v23 = v7;
  v9 = [[CPLTransportScopeMapping alloc] initWithTranslator:v7];
  transportScopeMapping = self->_transportScopeMapping;
  self->_transportScopeMapping = v9;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  destinationScope = self->_destinationScope;
  v33[0] = self->_stagingScope;
  v33[1] = destinationScope;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v12 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v8 transportScopeForScope:v16];
        if (!v17)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLTaskOSLogDomain_21318();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [(CPLEngineScopedTask *)self scope];
              *buf = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Transport scope for %@ is unknown. Can't clean-up %@", buf, 0x16u);
            }
          }

          v21 = [CPLErrors cplErrorWithCode:32 description:@"missing transport scope"];
          [(CPLProcessStagedScopesScopeTask *)self taskDidFinishWithError:v21];

          goto LABEL_19;
        }

        v18 = v17;
        if (self->_destinationScope == v16)
        {
          objc_storeStrong(&self->_destinationTransportScope, v17);
        }

        if (v16 == self->_stagingScope)
        {
          objc_storeStrong(&self->_stagingTransportScope, v18);
        }

        [(CPLTransportScopeMapping *)self->_transportScopeMapping addTransportScope:v18 forScope:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  [(CPLProcessStagedScopesScopeTask *)self _checkDestinationAndProcessCleanup];
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_checkDestinationAndProcessCleanup
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) engineLibrary];
  v4 = [v3 scheduler];
  [v4 willRunEngineElement:CPLEngineElementProcessStagedScopes];

  v5 = [*v2 isCancelled];
  v6 = *v2;
  if (v5)
  {
    v29 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v29];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = [*v2 engineLibrary];
    v9 = [v8 transport];

    v10 = [v9 createGroupForStagedScopeCleanup];
    v11 = *(a1 + 32);
    v12 = *(v11 + 200);
    *(v11 + 200) = v10;

    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__21371;
    v36[4] = __Block_byref_object_dispose__21372;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 1;
    v13 = *(a1 + 32);
    v14 = v13[20];
    v15 = v13[16];
    v16 = v13[17];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_52;
    v30[3] = &unk_1E861FC08;
    v30[4] = v13;
    v17 = v9;
    v31 = v17;
    v32 = v36;
    v33 = v34;
    v18 = [v17 getScopeInfoWithTransportScope:v14 scope:v15 previousScopeChange:v16 completionHandler:v30];
    v19 = *(a1 + 32);
    v20 = *(v19 + 176);
    *(v19 + 176) = v18;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = v22[16];
        v24 = [v22 scope];
        v25 = *(a1 + 32);
        v26 = *(v25 + 144);
        v27 = *(v25 + 128);
        *buf = 138413058;
        v39 = v23;
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = v26;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Checking %@ before clean-up of %@ (%@ -> %@)", buf, 0x2Au);
      }
    }

    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 176) withTransportGroup:*(*(a1 + 32) + 200)];

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);

    v28 = *MEMORY[0x1E69E9840];
  }
}

void __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_52(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = *(v15 + 120);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_2;
  v24[3] = &unk_1E861FBE0;
  v24[4] = v15;
  v25 = v14;
  v26 = v11;
  v27 = v12;
  v31 = a2;
  v28 = v13;
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  v17 = v24;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v33 = v17;
  v18 = v16;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = v14;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v18, v23);
}

void __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {

    [v4 taskDidFinishWithError:?];
  }

  else
  {
    v5 = [v4 store];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_3;
    v13[3] = &unk_1E861FBB8;
    v6 = *(a1 + 32);
    v21 = *(a1 + 96);
    v13[4] = v6;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = v5;
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_61;
    v12[3] = &unk_1E86209E0;
    v12[5] = v8;
    v12[6] = v9;
    v12[4] = *(a1 + 32);
    v10 = v5;
    v11 = [v10 performWriteTransactionWithBlock:v13 completionHandler:v12];
  }
}

void __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_3(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = a1[12];
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3[16];
  v6 = v3[20];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v11 = a2;
  v12 = [v3 session];
  [CPLScopeUpdateScopeTask updateScopeWithNewScopeType:v43 scope:v5 updatedScopeChange:v4 updatedFlags:v7 oldTransportScope:v6 updatedTransportScope:v8 shouldUpdateTransportScope:&__block_literal_global_21378 store:v9 transport:v10 session:v12 inTransaction:v11];

  v13 = [v11 error];

  if (!v13)
  {
    v14 = [a1[8] scopes];
    v15 = [v14 validLocalScopeIndexes];
    v16 = [v15 containsIndex:{objc_msgSend(*(a1[4] + 128), "localIndex")}];

    v17 = a1;
    if (v16)
    {
      v18 = [v14 flagsForScope:*(a1[4] + 128)];
      if ([v18 valueForFlag:52])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLTaskOSLogDomain_21318();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v17[4];
            v21 = v20[16];
            v22 = [v20 scope];
            *buf = 138412546;
            v45 = v21;
            v46 = 2112;
            v47 = v22;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "%@ has become invalid as a destination to clean-up %@", buf, 0x16u);
          }
        }

        v23 = [*(v17[4] + 128) scopeIdentifier];
        v24 = [CPLErrors cplErrorWithCode:32 description:@"%@ is not a valid destination for clean-up", v23];
        v25 = *(v17[10] + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }

      else if ([v18 valueForFlag:8])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v31 = __CPLTaskOSLogDomain_21318();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v17[4];
            v33 = v32[16];
            v34 = [v32 scope];
            *buf = 138412546;
            v45 = v33;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_DEFAULT, "%@ is disabled and thus not a good destination to clean-up %@", buf, 0x16u);
          }
        }

        *(*(v17[11] + 8) + 24) = 0;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v35 = __CPLTaskOSLogDomain_21318();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v17[4];
            v37 = v36[16];
            v38 = [v36 scope];
            *buf = 138412546;
            v45 = v37;
            v46 = 2112;
            v47 = v38;
            _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "%@ is ready to be the destination to clean-up %@", buf, 0x16u);
          }
        }

        v39 = [v14 scopeChangeForScope:*(v17[4] + 128)];
        v40 = v17[4];
        v41 = *(v40 + 136);
        *(v40 + 136) = v39;
      }
    }

    else
    {
      v27 = [*(a1[4] + 128) scopeIdentifier];
      v28 = [CPLErrors cplErrorWithCode:32 description:@"%@ has become after updating scope info", v27];
      v29 = *(a1[10] + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __69__CPLProcessStagedScopesScopeTask__checkDestinationAndProcessCleanup__block_invoke_61(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];
  if (v3 || *(*(*(a1 + 40) + 8) + 40))
  {
  }

  else if (*(*(*(a1 + 48) + 8) + 24))
  {
    [*(a1 + 32) _startActualCleanup];
    goto LABEL_7;
  }

  v4 = *(a1 + 32);
  v5 = [v7 error];
  v6 = v5;
  if (!v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v4 taskDidFinishWithError:v6];

LABEL_7:
}

- (void)_startActualCleanup
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v24 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:?];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = [*(a1 + 32) engineLibrary];
    v6 = [v5 transport];

    v7 = [v6 createGroupForStagedScopeCleanup];
    v8 = *(a1 + 32);
    v9 = *(v8 + 200);
    *(v8 + 200) = v7;

    v10 = [*(a1 + 32) scope];
    v11 = *(a1 + 32);
    v12 = v11[18];
    v13 = v11[16];
    v14 = v11[19];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_2;
    v26[3] = &unk_1E861FB70;
    v26[4] = v11;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_2_47;
    v25[3] = &unk_1E8620A88;
    v25[4] = v11;
    v15 = [v6 cleanupStagedScope:v10 stagingScope:v12 destinationScope:v13 transportScopeMapping:v14 progressHandler:v26 completionHandler:v25];
    v16 = *(a1 + 32);
    v17 = *(v16 + 184);
    *(v16 + 184) = v15;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) scope];
        v20 = *(a1 + 32);
        v21 = *(v20 + 144);
        v22 = *(v20 + 128);
        *buf = 138412802;
        v28 = v19;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Launching clean-up process of %@ (%@ -> %@)", buf, 0x20u);
      }
    }

    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 184) withTransportGroup:*(*(a1 + 32) + 200)];

    v23 = *MEMORY[0x1E69E9840];
  }
}

void __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_3;
  v8[3] = &unk_1E861FEE8;
  v8[4] = v3;
  v8[5] = a2;
  v8[6] = a3;
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v10 = v5;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_2_47(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_3_48;
  v10[3] = &unk_1E861B290;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_3_48(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    if ([v4 isCPLErrorWithCode:255])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLTaskOSLogDomain_21318();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 32) scope];
          *buf = 138412290;
          v26 = v6;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Clean-up of %@ is not implemented. Disabling metadata sync until some other device actually do the work", buf, 0xCu);
        }
      }

      v7 = [*(a1 + 32) session];
      v8 = [*(a1 + 32) scope];
      v9 = [v8 scopeIdentifier];
      [v7 noteSyncSessionInformation:{@"Clean-up of %@ is not implemented. Disabling metadata sync until some other device does the work", v9}];

      [*(a1 + 32) _excludeScopes];
      v10 = *(a1 + 32);
      v11 = 0;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLTaskOSLogDomain_21318();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [*(a1 + 32) scope];
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v22 = *(v20 + 144);
          v23 = *(v20 + 128);
          *buf = 138413058;
          v26 = v19;
          v27 = 2112;
          v28 = v22;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = v21;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Clean-up of %@ (%@ -> %@) failed: %@", buf, 0x2Au);
        }
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
    }

    result = [v10 taskDidFinishWithError:v11];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) scope];
        v14 = *(a1 + 32);
        v15 = *(v14 + 144);
        v16 = *(v14 + 128);
        *buf = 138413058;
        v26 = v13;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Clean-up of %@ (%@ -> %@) finished. Deleting %@ now", buf, 0x2Au);
      }
    }

    result = [*(a1 + 32) _deleteStagingScopeIfNecessary];
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 184))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) scope];
        v5 = *(a1 + 40);
        *buf = 138412546;
        v12 = v4;
        v13 = 2048;
        v14 = v5;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Estimated remaining count of records to clean-up %@: %lu", buf, 0x16u);
      }

      v2 = *(a1 + 32);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__CPLProcessStagedScopesScopeTask__startActualCleanup__block_invoke_40;
      v10[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
      v10[4] = v6;
      [v2 withThroughputReporter:v10];
      v2 = *(a1 + 32);
    }

    if (*(v2 + 208) == 1)
    {
      v7 = *(a1 + 40);
      v8 = [v2 engineLibrary];
      [v8 setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit:v7];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_deleteStagingScopeIfNecessary
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v13 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:v13];
  }

  else
  {
    v4 = [*(a1 + 32) engineLibrary];
    v5 = [v4 transport];

    v6 = *(a1 + 32);
    v7 = *(a1 + 32);
    v8 = *(v7 + 168);
    v9 = *(v7 + 144);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_2;
    v14[3] = &unk_1E861FB48;
    v15 = v6;
    v10 = [v5 deleteTransportScope:v8 scope:v9 completionHandler:v14];
    v11 = *(a1 + 32);
    v12 = *(v11 + 192);
    *(v11 + 192) = v10;

    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 192) withTransportGroup:*(*(a1 + 32) + 200)];
  }
}

void __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 120);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_3;
  v11[3] = &unk_1E861B128;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21316;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  if (*(a1 + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v6 = *(*(a1 + 32) + 144);
        *buf = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
      }
    }

    v7 = [*(a1 + 32) session];
    [v7 requestSyncStateAtEndOfSyncSession:4 reschedule:0];

    [*(a1 + 32) taskDidFinishWithError:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 32) engineLibrary];
    v9 = [v8 store];

    v10 = [v9 scopes];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_27;
    v16[3] = &unk_1E86205B8;
    v17 = *(a1 + 32);
    v18 = v10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_31;
    v15[3] = &unk_1E861FB20;
    v11 = *(a1 + 48);
    v15[4] = v17;
    v15[5] = v11;
    v12 = v10;
    v13 = [v9 performWriteTransactionWithBlock:v16 completionHandler:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_27(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_2_28;
  v4[3] = &unk_1E8620940;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 do:v4];
}

void __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_31(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v3 = [*(a1 + 32) delegate];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = *(a1 + 32);
        v12 = v10;
        v13 = [v11 delegate];
        *buf = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Delegate of %@ is supposed to be %@ but is %@", buf, 0x20u);
      }
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLProcessStagedScopesTask.m"];
    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = [*(a1 + 32) delegate];
    [v14 handleFailureInMethod:v15 object:v16 file:v17 lineNumber:166 description:{@"Delegate of %@ is supposed to be %@ but is %@", v18, v19, v20}];

    abort();
  }

  v4 = [*(a1 + 32) scope];
  [v3 didProcessStagedScope:v4];

  v5 = *(a1 + 32);
  v6 = [v21 error];
  [v5 taskDidFinishWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __65__CPLProcessStagedScopesScopeTask__deleteStagingScopeIfNecessary__block_invoke_2_28(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_21318();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 144);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Marking %@ as deleted", &v12, 0xCu);
    }
  }

  result = [*(a1 + 40) setValue:1 forFlag:4 forScope:*(*(a1 + 32) + 144) error:a2];
  if (result)
  {
    v7 = [*(a1 + 32) scope];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Removing staged flag from %@", &v12, 0xCu);
      }
    }

    if (![*(a1 + 40) setValue:0 forFlag:64 forScope:v7 error:a2])
    {
      goto LABEL_18;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLTaskOSLogDomain_21318();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Scheduling cleanup tasks for %@", &v12, 0xCu);
      }
    }

    if ([*(a1 + 40) addCleanupTasksForScope:v7 error:a2])
    {
      v10 = [*(a1 + 40) setScopeNeedsToBePulledByClient:v7 error:a2];

      if (v10)
      {
        result = [*(a1 + 40) setScopeHasChangesToPullFromTransport:*(*(a1 + 32) + 128) error:a2];
        goto LABEL_20;
      }
    }

    else
    {
LABEL_18:
    }

    result = 0;
  }

LABEL_20:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_excludeScopes
{
  v7 = [(CPLEngineSyncTask *)self session];
  v3 = [(CPLEngineScopedTask *)self scope];
  v4 = [v3 scopeIdentifier];
  [v7 excludeScopeIdentifierFromPushToTransport:v4];

  destinationScope = self->_destinationScope;
  if (destinationScope)
  {
    v6 = [(CPLEngineScope *)destinationScope scopeIdentifier];
    [v7 excludeScopeIdentifierFromPushToTransport:v6];
  }

  [v7 requestSyncStateAtEndOfSyncSession:4 reschedule:0];
}

- (CPLProcessStagedScopesScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7
{
  v12.receiver = self;
  v12.super_class = CPLProcessStagedScopesScopeTask;
  v7 = [(CPLEngineScopedTask *)&v12 initWithEngineLibrary:a3 session:a4 clientCacheIdentifier:a5 scope:a6 transportScope:a7];
  if (v7)
  {
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("engine.sync.processtagedscopes", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    _dontProcessStagedScopes = [v2 BOOLForKey:@"CPLDontProcessStagedScopes"];
  }
}

@end