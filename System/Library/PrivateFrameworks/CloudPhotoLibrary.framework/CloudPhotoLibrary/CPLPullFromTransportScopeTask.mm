@interface CPLPullFromTransportScopeTask
- (BOOL)_dequeueFromPendingRecordChecksIfNecessary:(id)necessary error:(id *)error;
- (BOOL)_fetchRewindSyncAnchorsInScopes:(id)scopes startSyncAnchor:(id)anchor error:(id *)error;
- (BOOL)_storeRewindSyncAnchors:(id)anchors inScopes:(id)scopes error:(id *)error;
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (CPLPullFromTransportScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope;
- (id)_cloudCacheInStore:(id)store;
- (id)_transientPullRepositoryInStore:(id)store;
- (id)scopesForTask;
- (id)transportScope;
- (unint64_t)_totalAssetCountForScope;
- (void)_addPartnerScope:(id)scope scopes:(id)scopes;
- (void)_cancelAllTasks;
- (void)_checkExtraRecords;
- (void)_checkExtraRecordsWithScopedIdentifiers:(id)identifiers;
- (void)_checkServerFeatureVersionWithCompletionHandler:(id)handler;
- (void)_extractAndMingleAssetsIfPossibleFromBatch:(id)batch inTransaction:(id)transaction;
- (void)_extractAndMinglePersonsIfPossibleFromBatch:(id)batch inTransaction:(id)transaction;
- (void)_fetchInitialSyncAnchor;
- (void)_handleNewBatchFromChanges:(id)changes newSyncAnchor:(id)anchor inTransaction:(id)transaction;
- (void)_handleNewBatchFromChanges:(id)changes updatedFlags:(id)flags newSyncAnchor:(id)anchor partnerScopesNeedingToPullChanges:(id)pullChanges;
- (void)_handleNewBatchFromQuery:(id)query newCursor:(id)cursor inTransaction:(id)transaction;
- (void)_handleNewBatchFromQuery:(id)query queryClass:(Class)class newCursor:(id)cursor;
- (void)_launch;
- (void)_launchFetchChangesFromSyncAnchor:(id)anchor;
- (void)_launchNextQueryTask;
- (void)_launchPullTasksAndDisableQueries:(BOOL)queries;
- (void)_launchQueryForClass:(Class)class cursor:(id)cursor;
- (void)_notePartnerScopesNeedingToPullChanges:(id)changes scopes:(id)scopes inTransaction:(id)transaction;
- (void)_notifySchedulerPullQueueIsFull;
- (void)_notifySchedulerPullQueueIsFullNowIfNecessary;
- (void)_reallyNotifySchedulerPullQueueIsFull;
- (void)_relaunchFetchChangesFromOtherRewindSyncAnchors;
- (void)_storeInitialSyncAnchorIfNecessaryInTransaction:(id)transaction;
- (void)_updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor:(id)anchor;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)error;
@end

@implementation CPLPullFromTransportScopeTask

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CPLPullFromTransportScopeTask;
  [(CPLEngineSyncTask *)&v3 cancel];
  [(CPLPullFromTransportScopeTask *)self _cancelAllTasks];
}

- (void)taskDidFinishWithError:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(CPLPullFromTransportScopeTask *)self hash];
  kdebug_trace();
  [(CPLPullFromTransportScopeTask *)self _notifySchedulerPullQueueIsFullNowIfNecessary];
  endTaskError = self->_endTaskError;
  if (endTaskError)
  {
    v6 = endTaskError;

    errorCopy = v6;
  }

  else if (!errorCopy)
  {
    goto LABEL_6;
  }

  if (![(NSError *)errorCopy isCPLErrorWithCode:33])
  {
    if ([(NSError *)errorCopy isCPLErrorWithCode:23])
    {
      engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
      scope = [(CPLEngineScopedTask *)self scope];
      scopeIdentifier = [scope scopeIdentifier];
      mainScopeIdentifier = [engineLibrary mainScopeIdentifier];
      v16 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

      if (v16)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            mainScopeIdentifier2 = [engineLibrary mainScopeIdentifier];
            libraryIdentifier = [engineLibrary libraryIdentifier];
            *buf = 138543618;
            v28 = mainScopeIdentifier2;
            v29 = 2114;
            v30 = libraryIdentifier;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Main scope (%{public}@) for %{public}@ seems to have been wiped - notifying engine status immediately", buf, 0x16u);
          }
        }

        engineLibrary2 = [(CPLEngineSyncTask *)self engineLibrary];
        [engineLibrary2 setICloudLibraryHasBeenWiped:1];
      }
    }

    goto LABEL_18;
  }

  session = [(CPLEngineSyncTask *)self session];
  scope2 = [(CPLEngineScopedTask *)self scope];
  scopeIdentifier2 = [scope2 scopeIdentifier];
  [session excludeScopeIdentifierFromMingling:scopeIdentifier2];

LABEL_6:
  if ([(CPLEngineSyncTask *)self isCancelled]|| self->_taskItem == -1)
  {
    errorCopy = 0;
LABEL_18:
    v22.receiver = self;
    v22.super_class = CPLPullFromTransportScopeTask;
    [(CPLEngineSyncTask *)&v22 taskDidFinishWithError:errorCopy];
    goto LABEL_19;
  }

  store = [(CPLEngineScopedTask *)self store];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke;
  v24[3] = &unk_1E86205B8;
  v25 = store;
  selfCopy = self;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke_144;
  v23[3] = &unk_1E86205E0;
  v23[4] = self;
  errorCopy = store;
  v11 = [(NSError *)errorCopy performWriteTransactionWithBlock:v24 completionHandler:v23];

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];
}

void __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) scopes];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke_2;
  v22[3] = &unk_1E8620940;
  v5 = v4;
  v6 = *(a1 + 40);
  v23 = v5;
  v24 = v6;
  [v3 do:v22];
  if ([*(*(a1 + 40) + 184) count])
  {
    [*(a1 + 40) _notePartnerScopesNeedingToPullChanges:*(*(a1 + 40) + 184) scopes:v5 inTransaction:v3];
  }

  if ([*(*(a1 + 40) + 168) count])
  {
    v16 = v5;
    v17 = v3;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(*(a1 + 40) + 168);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = __CPLTaskOSLogDomain_23138();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [*(a1 + 40) scope];
              *buf = 138412546;
              v26 = v12;
              v27 = 2112;
              v28 = v14;
              _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "%@ (partner with %@) does not need to pull changes according to sync obligations", buf, 0x16u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v9);
    }

    v5 = v16;
    v3 = v17;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke_144(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];
    v18.receiver = v5;
    v18.super_class = CPLPullFromTransportScopeTask;
    objc_msgSendSuper2(&v18, sel_taskDidFinishWithError_, v6);
  }

  else
  {
    v7 = v5[22];
    if (v7)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(*(a1 + 32) + 176) componentsJoinedByString:{@", "}];
          v10 = [*(a1 + 32) scope];
          *buf = 138543618;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Will retry sync session to pull changes from %{public}@ (partner of %@)", buf, 0x16u);
        }

        v5 = *(a1 + 32);
        v7 = v5[22];
      }

      v11 = [v7 componentsJoinedByString:{@", "}];
      v12 = [*(a1 + 32) scope];
      v13 = [v12 scopeIdentifier];
      v14 = [CPLErrors cplErrorWithCode:10000 description:@"Fulfilling sync obligation for %@ (partner with %@)", v11, v13];
      v17.receiver = v5;
      v17.super_class = CPLPullFromTransportScopeTask;
      objc_msgSendSuper2(&v17, sel_taskDidFinishWithError_, v14);
    }

    else
    {
      v16.receiver = *(a1 + 32);
      v16.super_class = CPLPullFromTransportScopeTask;
      objc_msgSendSuper2(&v16, sel_taskDidFinishWithError_, 0);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__CPLPullFromTransportScopeTask_taskDidFinishWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scope];
  v6 = [v4 setScope:v5 hasCompletedPullFromTransportTask:*(*(a1 + 40) + 312) error:a2];

  return v6;
}

- (void)launch
{
  [(CPLPullFromTransportScopeTask *)self hash];
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = CPLPullFromTransportScopeTask;
  [(CPLEngineSyncTask *)&v3 launch];
  [(CPLPullFromTransportScopeTask *)self _launch];
}

- (void)_launch
{
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  syncManager = [engineLibrary syncManager];
  self->_useCourtesyMingling = [syncManager shouldTryToMingleImmediately];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__CPLPullFromTransportScopeTask__launch__block_invoke;
  v5[3] = &unk_1E8620A88;
  v5[4] = self;
  [(CPLPullFromTransportScopeTask *)self _checkServerFeatureVersionWithCompletionHandler:v5];
}

void __40__CPLPullFromTransportScopeTask__launch__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 taskDidFinishWithError:a2];
  }

  else
  {
    v4 = [v3 isCancelled];
    v5 = *(a1 + 32);
    if (v4)
    {
      v10 = +[CPLErrors operationCancelledError];
      [v5 taskDidFinishWithError:v10];
    }

    else
    {
      v6 = v5[15];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__CPLPullFromTransportScopeTask__launch__block_invoke_2;
      v11[3] = &unk_1E861A940;
      v11[4] = v5;
      v7 = v11;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cpl_dispatch_async_block_invoke_23155;
      block[3] = &unk_1E861B4E0;
      v13 = v7;
      v8 = v6;
      v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v8, v9);
    }
  }
}

void __40__CPLPullFromTransportScopeTask__launch__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:v4];
  }

  else if (v3[320])
  {

    [v3 _launchPullTasksAndDisableQueries:0];
  }

  else
  {

    [v3 _fetchInitialSyncAnchor];
  }
}

- (void)_checkServerFeatureVersionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLEngineSyncTask *)self setPhaseDescription:@"checking feature version"];
  store = [(CPLEngineScopedTask *)self store];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CPLPullFromTransportScopeTask__checkServerFeatureVersionWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E86205B8;
  v12 = store;
  selfCopy = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__CPLPullFromTransportScopeTask__checkServerFeatureVersionWithCompletionHandler___block_invoke_138;
  v9[3] = &unk_1E8620308;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = store;
  v8 = [v7 performWriteTransactionWithBlock:v11 completionHandler:v9];
}

void __81__CPLPullFromTransportScopeTask__checkServerFeatureVersionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v109[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) scopes];
  v5 = [*(a1 + 40) scope];
  v6 = [v4 stagingScopeForScope:v5];
  v7 = *(a1 + 40);
  v8 = *(v7 + 376);
  *(v7 + 376) = v6;

  v9 = *(*(a1 + 40) + 376);
  if (v9 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 40) + 376);
      *buf = 138412546;
      v100 = v11;
      v101 = 2112;
      v102 = v5;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Will pull changes from %@ on behalf of %@", buf, 0x16u);
    }

    v9 = *(*(a1 + 40) + 376);
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if ([v4 valueForFlag:36 forScope:v12])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v100 = v5;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "%@ is meant to be deleted - ignoring", buf, 0xCu);
      }
    }

    v14 = [v5 scopeIdentifier];
    v89 = v14;
    v15 = @"%@ is deleted";
    v16 = 33;
    goto LABEL_15;
  }

  if (![*(a1 + 40) checkScopeIsValidInTransaction:v3])
  {
    goto LABEL_25;
  }

  if (*(*(a1 + 40) + 376))
  {
    v18 = [v4 transportScopeForScope:?];
    v19 = *(a1 + 40);
    v20 = *(v19 + 384);
    *(v19 + 384) = v18;

    if (!*(*(a1 + 40) + 384))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = *(*(a1 + 40) + 376);
          *buf = 138412546;
          v100 = v37;
          v101 = 2112;
          v102 = v5;
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_ERROR, "%@ (staging %@) has no transport scope and will need to be updated first", buf, 0x16u);
        }
      }

      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __81__CPLPullFromTransportScopeTask__checkServerFeatureVersionWithCompletionHandler___block_invoke_126;
      v96[3] = &unk_1E8620940;
      v38 = v4;
      v39 = *(a1 + 40);
      v97 = v38;
      v98 = v39;
      [v3 do:v96];
      v14 = v97;
      goto LABEL_16;
    }
  }

  v21 = [CPLTransportScopeMapping alloc];
  v22 = [*(a1 + 40) engineLibrary];
  v23 = [v22 transport];
  v24 = [(CPLTransportScopeMapping *)v21 initWithTranslator:v23];
  v25 = *(a1 + 40);
  v26 = *(v25 + 136);
  *(v25 + 136) = v24;

  v27 = *(a1 + 40);
  v28 = v27[17];
  v29 = [v27 transportScope];
  [v28 addTransportScope:v29 forScope:v5];

  v30 = [v4 sharingScopeForScope:v5];
  v31 = *(a1 + 40);
  v32 = *(v31 + 144);
  *(v31 + 144) = v30;

  if (!*(*(a1 + 40) + 144))
  {
LABEL_43:
    v45 = [*(a1 + 32) pendingRecordChecks];
    v46 = [v5 scopeIdentifier];
    *(*(a1 + 40) + 392) = [v45 hasRecordsToCheckWithScopeIdentifier:v46];

    if (*(*(a1 + 40) + 392) == 1 && (_CPLSilentLogging & 1) == 0)
    {
      v47 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_DEFAULT, "Will need to check some extra records at the end", buf, 2u);
      }
    }

    if (([v5 scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_62;
    }

    v48 = [v4 primaryScope];
    v49 = *(a1 + 40);
    v50 = *(v49 + 152);
    *(v49 + 152) = v48;

    if (!*(*(a1 + 40) + 152))
    {
      goto LABEL_62;
    }

    v14 = [v4 sharingScopeForScope:?];
    v51 = [v14 scopeIdentifier];
    v52 = [v5 scopeIdentifier];
    v53 = v52;
    if (v51 && v52)
    {
      v92 = [v51 isEqual:v52];

      if ((v92 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v93 = v51 | v52;

      if (v93)
      {
LABEL_60:
        v56 = *(a1 + 40);
        v57 = *(v56 + 152);
        *(v56 + 152) = 0;
LABEL_61:

LABEL_62:
        *(*(a1 + 40) + 320) = [v4 hasScopeFetchedInitialSyncAnchor:v5];
        if ((*(*(a1 + 40) + 320) & 1) == 0 && (_CPLSilentLogging & 1) == 0)
        {
          v58 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [v5 scopeIdentifier];
            *buf = 138412290;
            v100 = v59;
            _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_DEFAULT, "Will need to fetch initial sync anchor before queries for %@", buf, 0xCu);
          }
        }

        v60 = [v4 scopeChangeForScope:v5];
        v61 = *(a1 + 40);
        v62 = *(v61 + 232);
        *(v61 + 232) = v60;

        v63 = [*(*(a1 + 40) + 232) libraryInfo];
        v14 = v63;
        if (v63)
        {
          v64 = [v63 featureVersionHistory];
          v65 = [v4 supportedFeatureVersionInLastSyncForScope:v5];
          v66 = [v64 currentFeatureVersion];
          v67 = +[CPLFingerprintScheme supportsEPP];
          v68 = 21;
          if (v67)
          {
            v68 = 22;
          }

          if (v65 < v68)
          {
            v94 = [v5 scopeIdentifier];
            if (v66 <= v65)
            {
              if (+[CPLFingerprintScheme supportsEPP])
              {
                v78 = 22;
              }

              else
              {
                v78 = 21;
              }

              v95 = 0;
              v79 = [v4 storeSupportedFeatureVersionInLastSync:v78 forScope:v5 error:&v95];
              v71 = v95;
              if (v79)
              {
                v70 = v94;
              }

              else
              {
                v70 = v94;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v81 = __CPLTaskOSLogDomain_23138();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v100 = v94;
                    v101 = 2112;
                    v102 = v71;
                    _os_log_impl(&dword_1DC05A000, v81, OS_LOG_TYPE_ERROR, "Unable to store supported feature version for %@: %@", buf, 0x16u);
                  }
                }

                [v3 setError:v71];
              }
            }

            else
            {
              v91 = v65 + 1;
              v69 = [v64 syncAnchorForFeatureVersion:?];
              obj = v69;
              if (v69)
              {
                v70 = v94;
                v71 = v69;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v72 = __CPLTaskOSLogDomain_23138();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    v73 = +[CPLFingerprintScheme supportsEPP];
                    *buf = 134218754;
                    v74 = 21;
                    if (v73)
                    {
                      v74 = 22;
                    }

                    v100 = v91;
                    v101 = 2048;
                    v102 = v74;
                    v103 = 2112;
                    v104 = v64;
                    v105 = 2112;
                    v106 = v94;
                    _os_log_impl(&dword_1DC05A000, v72, OS_LOG_TYPE_DEFAULT, "Will need to rewind sync anchor and fetch changes to catch up with changes from %lu to %lu using version history %@ in %@", buf, 0x2Au);
                  }
                }

                *(*(a1 + 40) + 256) = v91;
                objc_storeStrong((*(a1 + 40) + 264), obj);
                v75 = *(a1 + 40);
                v76 = v64;
                v77 = *(v75 + 272);
                *(v75 + 272) = v76;
              }

              else
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v82 = __CPLTaskOSLogDomain_23138();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                  {
                    v83 = +[CPLFingerprintScheme supportsEPP];
                    *buf = 134218498;
                    v84 = 21;
                    if (v83)
                    {
                      v84 = 22;
                    }

                    v100 = v65 + 1;
                    v101 = 2048;
                    v102 = v84;
                    v103 = 2112;
                    v104 = v94;
                    _os_log_impl(&dword_1DC05A000, v82, OS_LOG_TYPE_DEFAULT, "Needs to re-fetch everything to catch up with changes from %lu to %lu in %@", buf, 0x20u);
                  }
                }

                v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Last supported feature version was %lu - server version is: %lu", v65, v66];
                v108[1] = @"CPLErrorScopeIdentifiers";
                v109[0] = v77;
                v107 = v94;
                v108[0] = @"CPLErrorResetReason";
                v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
                v109[1] = v85;
                v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:2];
                v87 = [CPLErrors cplErrorWithCode:24 underlyingError:0 userInfo:v86 description:@"Sync state needs a refresh"];
                [v3 setError:v87];

                v70 = v94;
                v71 = 0;
              }
            }
          }
        }

        goto LABEL_16;
      }
    }

    if ([v4 valueForFlag:36 forScope:*(*(a1 + 40) + 152)])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v54 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = *(*(a1 + 40) + 152);
          *buf = 138412290;
          v100 = v55;
          _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_DEFAULT, "%@ is deleted - ignoring it", buf, 0xCu);
        }
      }

      goto LABEL_60;
    }

    v80 = [v4 transportScopeForScope:*(*(a1 + 40) + 152)];
    if (v80)
    {
      v57 = v80;
      [*(*(a1 + 40) + 136) addTransportScope:v80 forScope:*(*(a1 + 40) + 152)];
      [*(a1 + 40) _addPartnerScope:*(*(a1 + 40) + 152) scopes:v4];
      goto LABEL_61;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = __CPLTaskOSLogDomain_23138();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v88 = *(*(a1 + 40) + 152);
      *buf = 138412290;
      v100 = v88;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v14 = [v4 flagsForScope:?];
  if ([v14 valueForFlag:36] && (objc_msgSend(v14, "valueForFlag:", 64) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v42 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(*(a1 + 40) + 144);
        *buf = 138412290;
        v100 = v43;
        _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_DEFAULT, "%@ is deleted - ignoring it", buf, 0xCu);
      }
    }

    v44 = *(a1 + 40);
    v34 = *(v44 + 144);
    *(v44 + 144) = 0;
    goto LABEL_42;
  }

  v33 = [v4 transportScopeForScope:*(*(a1 + 40) + 144)];
  if (v33)
  {
    v34 = v33;
    [*(*(a1 + 40) + 136) addTransportScope:v33 forScope:*(*(a1 + 40) + 144)];
    [*(a1 + 40) _addPartnerScope:*(*(a1 + 40) + 144) scopes:v4];
LABEL_42:

    goto LABEL_43;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v40 = __CPLTaskOSLogDomain_23138();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
LABEL_35:

      goto LABEL_36;
    }

    v41 = *(*(a1 + 40) + 144);
    *buf = 138412290;
    v100 = v41;
LABEL_34:
    _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_ERROR, "Missing transport scope for %@", buf, 0xCu);
    goto LABEL_35;
  }

LABEL_36:
  v15 = @"missing shared transport scope";
  v16 = 32;
LABEL_15:
  v17 = [CPLErrors cplErrorWithCode:v16 description:v15, v89];
  [v3 setError:v17];

LABEL_16:
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
}

void __81__CPLPullFromTransportScopeTask__checkServerFeatureVersionWithCompletionHandler___block_invoke_138(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 error];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [v9 error];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v4 = *(a1 + 40);
    v5 = +[CPLErrors operationCancelledError];
  }

  else
  {
    v6 = [*(a1 + 32) session];
    v7 = [v6 shouldDefer];

    if (v7)
    {
      v4 = *(a1 + 40);
      v5 = +[CPLErrors sessionHasBeenDeferredError];
    }

    else
    {
      v4 = *(a1 + 40);
      if (*(*(a1 + 32) + 136))
      {
        [v9 error];
      }

      else
      {
        [CPLErrors cplErrorWithCode:10000 description:@"Some transport scopes are missing"];
      }
      v5 = ;
    }
  }

  v8 = v5;
  (*(v4 + 16))(v4, v5);
}

- (void)_addPartnerScope:(id)scope scopes:(id)scopes
{
  v27 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  scopesCopy = scopes;
  v8 = [scopesCopy mostCurrentChangesSyncAnchorForScope:scopeCopy];
  if (v8)
  {
    if ([scopesCopy doesScopeNeedToPullChangesFromTransport:scopeCopy])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          scope = [(CPLEngineScopedTask *)self scope];
          v21 = 138412546;
          v22 = scopeCopy;
          v23 = 2112;
          v24 = scope;
          v11 = "%@ (partner with %@) is already scheduled to pull changes. Not using sync obligations";
LABEL_9:
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, v11, &v21, 0x16u);

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          scope2 = [(CPLEngineScopedTask *)self scope];
          cplSyncAnchorDescription = [v8 cplSyncAnchorDescription];
          v21 = 138412802;
          v22 = scopeCopy;
          v23 = 2112;
          v24 = scope2;
          v25 = 2112;
          v26 = cplSyncAnchorDescription;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ (partner with %@) might need to pull changes from %@. Using sync obligations to determine that", &v21, 0x20u);
        }
      }

      partnerScopes = self->_partnerScopes;
      if (!partnerScopes)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = self->_partnerScopes;
        self->_partnerScopes = v16;

        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
        syncAnchorsOfPartnerScopesThatMightNeedToPullChanges = self->_syncAnchorsOfPartnerScopesThatMightNeedToPullChanges;
        self->_syncAnchorsOfPartnerScopesThatMightNeedToPullChanges = v18;

        partnerScopes = self->_partnerScopes;
      }

      [(NSMutableArray *)partnerScopes addObject:scopeCopy];
      [(NSMutableDictionary *)self->_syncAnchorsOfPartnerScopesThatMightNeedToPullChanges setObject:v8 forKeyedSubscript:scopeCopy];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      scope = [(CPLEngineScopedTask *)self scope];
      v21 = 138412546;
      v22 = scopeCopy;
      v23 = 2112;
      v24 = scope;
      v11 = "%@ (partner with %@) has not pulled changes yet. Not using sync obligations";
      goto LABEL_9;
    }

LABEL_10:
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_fetchInitialSyncAnchor
{
  v22 = *MEMORY[0x1E69E9840];
  [(CPLEngineSyncTask *)self setPhaseDescription:@"fetching initial sync anchor"];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  transport = [engineLibrary transport];

  transportScope = [(CPLPullFromTransportScopeTask *)self transportScope];
  scope = [(CPLEngineScopedTask *)self scope];
  currentScopeChange = self->_currentScopeChange;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke;
  v17[3] = &unk_1E86202D8;
  v17[4] = self;
  v8 = [transport getCurrentSyncAnchorWithTransportScope:transportScope scope:scope previousScopeChange:currentScopeChange completionHandler:v17];
  fetchInitialSyncAnchorTask = self->_fetchInitialSyncAnchorTask;
  self->_fetchInitialSyncAnchorTask = v8;

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_fetchInitialSyncAnchorTask;
      foreground = [(CPLEngineTransportGetCurrentSyncAnchorTask *)v11 foreground];
      v13 = " with background priority";
      if (foreground)
      {
        v13 = " with foreground priority";
      }

      *buf = 138412546;
      v19 = v11;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Launching %@%s", buf, 0x16u);
    }
  }

  v14 = self->_fetchInitialSyncAnchorTask;
  createGroupForLibraryStateCheck = [transport createGroupForLibraryStateCheck];
  [(CPLEngineSyncTask *)self launchTransportTask:v14 withTransportGroup:createGroupForLibraryStateCheck];

  v16 = *MEMORY[0x1E69E9840];
}

void __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = *(v13 + 120);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_2;
  v22[3] = &unk_1E861B240;
  v23 = v12;
  v24 = v13;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v15 = v22;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v29 = v15;
  v16 = v14;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = v12;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v21);
}

void __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 taskDidFinishWithError:?];
  }

  else
  {
    v4 = [v2 isCancelled];
    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = +[CPLErrors operationCancelledError];
      [v5 taskDidFinishWithError:v6];
    }

    else
    {
      v5[321] = 1;
      objc_storeStrong((*(a1 + 40) + 328), *(a1 + 48));
      objc_storeStrong((*(a1 + 40) + 336), *(a1 + 56));
      if (CPLEnableWorkaroundFor101242629())
      {
        if (*(*(a1 + 40) + 144))
        {
          v7 = *(a1 + 56);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = *(a1 + 56);
            v9 = [v8 rewindAnchorsPerSharingScopes];
            v10 = [*(*(a1 + 40) + 144) scopeIdentifier];
            v11 = [v9 objectForKeyedSubscript:v10];

            if (v11)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v12 = __CPLTaskOSLogDomain_23138();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [*(*(a1 + 40) + 144) scopeIdentifier];
                  v14 = [v8 scopeIdentifier];
                  *buf = 138543618;
                  v53 = v13;
                  v54 = 2114;
                  v55 = v14;
                  _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Will use rewind sync anchor for %{public}@ after initial queries for %{public}@", buf, 0x16u);
                }
              }

              v15 = *(a1 + 40);
              v16 = v11;
              v17 = *(v15 + 328);
              *(v15 + 328) = v16;
            }

            else
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v18 = __CPLTaskOSLogDomain_23138();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  v19 = [*(*(a1 + 40) + 144) scopeIdentifier];
                  v20 = [v8 scopeIdentifier];
                  *buf = 138543618;
                  v53 = v19;
                  v54 = 2114;
                  v55 = v20;
                  _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Rewind sync anchor for %{public}@ is missing in %{public}@: will need to fetch full journal after initial queries", buf, 0x16u);
                }
              }

              v21 = *(a1 + 40);
              v17 = *(v21 + 328);
              *(v21 + 328) = 0;
            }
          }
        }
      }

      v22 = *(a1 + 64);
      if (v22)
      {
        objc_storeStrong((*(a1 + 40) + 368), v22);
        v23 = *(a1 + 40);
        v24 = v23[17];
        v25 = *(a1 + 64);
        v26 = [v23 scope];
        [v24 addTransportScope:v25 forScope:v26];

        v27 = [*(a1 + 40) engineLibrary];
        v28 = [v27 store];

        v29 = [v28 scopes];
        v45 = MEMORY[0x1E69E9820];
        v46 = 3221225472;
        v47 = __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_116;
        v48 = &unk_1E86200D0;
        v49 = v29;
        v30 = *(a1 + 64);
        v31 = *(a1 + 40);
        v50 = v30;
        v51 = v31;
        v40 = MEMORY[0x1E69E9820];
        v41 = 3221225472;
        v42 = __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_3;
        v43 = &unk_1E86205E0;
        v44 = v31;
        v32 = v29;
        v33 = [v28 performWriteTransactionWithBlock:&v45 completionHandler:&v40];
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v34 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [*(a1 + 40) scope];
          v36 = [*(*(a1 + 40) + 328) cplSyncAnchorDescription];
          *buf = 138412546;
          v53 = v35;
          v54 = 2112;
          v55 = v36;
          _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEFAULT, "Fetched initial sync anchor for %@: %@", buf, 0x16u);
        }
      }

      [*(a1 + 40) _launchPullTasksAndDisableQueries:{0, v40, v41, v42, v43, v44, v45, v46, v47, v48}];
    }
  }

  v37 = *(a1 + 40);
  v38 = *(v37 + 344);
  *(v37 + 344) = 0;

  v39 = *MEMORY[0x1E69E9840];
}

void __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_116(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_2_117;
  v6[3] = &unk_1E861FF88;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 do:v6];
}

void __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) scope];
      v7 = [v3 error];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Failed to update transport scope for %@: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __56__CPLPullFromTransportScopeTask__fetchInitialSyncAnchor__block_invoke_2_117(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) scope];
  v6 = [v3 setTransportScope:v4 forScope:v5 error:a2];

  return v6;
}

- (void)_launchPullTasksAndDisableQueries:(BOOL)queries
{
  v25 = *MEMORY[0x1E69E9840];
  if (_launchPullTasksAndDisableQueries__onceToken != -1)
  {
    dispatch_once(&_launchPullTasksAndDisableQueries__onceToken, &__block_literal_global_23207);
  }

  v5 = _launchPullTasksAndDisableQueries__alwaysDisableQueries | queries;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = &stru_1F57BD298;
      if (v5)
      {
        v7 = @" without queries";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Launching pull task%@", &buf, 0xCu);
    }
  }

  store = [(CPLEngineScopedTask *)self store];
  scopes = [store scopes];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__23211;
  v23 = __Block_byref_object_dispose__23212;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2050000000;
  v19[3] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_109;
  v14[3] = &unk_1E86202B0;
  v14[4] = self;
  v10 = scopes;
  v15 = v10;
  p_buf = &buf;
  v18 = v5 & 1;
  v17 = v19;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_2;
  v13[3] = &unk_1E86209E0;
  v13[4] = self;
  v13[5] = v19;
  v13[6] = &buf;
  v11 = [store performWriteTransactionWithBlock:v14 completionHandler:v13];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x1E69E9840];
}

void __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_109(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Preparing to receive batches from transport", buf, 2u);
      }
    }

    if ([*(a1 + 32) isCancelled])
    {
      v5 = +[CPLErrors operationCancelledError];
      [v3 setError:v5];
    }

    else
    {
      v7 = *(a1 + 32);
      if (v7[249] == 1)
      {
        v8 = *(a1 + 40);
        v9 = [v7 scope];
        LOBYTE(v8) = [v8 doesScopeAllowCourtesyMingling:v9];

        v7 = *(a1 + 32);
        if ((v8 & 1) == 0)
        {
          v7[249] = 0;
          v7 = *(a1 + 32);
        }
      }

      v10 = *(a1 + 40);
      v11 = [v7 scope];
      v12 = [v10 transientSyncAnchorForScope:v11];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (*(a1 + 64) == 1)
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_110;
        v48[3] = &unk_1E8620940;
        v15 = *(a1 + 40);
        v16 = *(a1 + 32);
        v49 = v15;
        v50 = v16;
        [v3 do:v48];
        v17 = v49;
      }

      else
      {
        v18 = *(a1 + 40);
        v17 = [*(a1 + 32) scope];
        *(*(*(a1 + 56) + 8) + 24) = [v18 classOfRecordsForInitialQueryForScope:v17];
      }

      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v37 = *(a1 + 40);
          v38 = [*(a1 + 32) scope];
          v39 = [v37 syncAnchorForScope:v38];
          v40 = *(*(a1 + 48) + 8);
          v41 = *(v40 + 40);
          *(v40 + 40) = v39;
        }

        [*(a1 + 32) _storeInitialSyncAnchorIfNecessaryInTransaction:v3];
        if ((_CPLSilentLogging & 1) == 0)
        {
          v42 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v43 = [*(*(*(a1 + 48) + 8) + 40) cplSyncAnchorDescription];
            v44 = [*(a1 + 32) scope];
            *buf = 138412546;
            v52 = v43;
            v53 = 2112;
            v54 = v44;
            _os_log_impl(&dword_1DC05A000, v42, OS_LOG_TYPE_DEBUG, "Will fetch changes since sync anchor %@ for %@", buf, 0x16u);
          }
        }

        *(*(a1 + 32) + 249) = 0;
        goto LABEL_23;
      }

      if (_CPLSilentLogging)
      {
LABEL_23:
        v22 = *(a1 + 32);
        if (!v22[35])
        {
          v23 = [v3 error];

          v22 = *(a1 + 32);
          if (!v23)
          {
            v24 = *(a1 + 40);
            v25 = [v22 scope];
            v26 = [v24 downloadTransportGroupForScope:v25];
            v27 = *(a1 + 32);
            v28 = *(v27 + 280);
            *(v27 + 280) = v26;

            v22 = *(a1 + 32);
            if (!v22[35])
            {
              v29 = [v22 engineLibrary];
              v30 = [v29 transport];
              v31 = [v30 createGroupForChangeDownload];
              v32 = *(a1 + 32);
              v33 = *(v32 + 280);
              *(v32 + 280) = v31;

              v22 = *(a1 + 32);
            }
          }
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_111;
        v45[3] = &unk_1E8620A38;
        v45[4] = v22;
        v34 = *(a1 + 40);
        v35 = *(a1 + 48);
        v46 = v34;
        v47 = v35;
        [v3 do:v45];

        goto LABEL_28;
      }

      v5 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(*(a1 + 56) + 8) + 24);
        v20 = [*(*(*(a1 + 48) + 8) + 40) cplQueryCursorDescription];
        v21 = [*(a1 + 32) scope];
        *buf = 138412802;
        v52 = v19;
        v53 = 2112;
        v54 = v20;
        v55 = 2112;
        v56 = v21;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Will query records of class %@ since cursor %@ for %@", buf, 0x20u);
      }
    }

    goto LABEL_23;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Client cache has been reset. Stopping for now", buf, 2u);
    }
  }

LABEL_28:

  v36 = *MEMORY[0x1E69E9840];
}

void __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Committed", buf, 2u);
    }
  }

  v5 = [v3 error];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v3 error];
  }

  else
  {
    v8 = [*(a1 + 32) isCancelled];
    v6 = *(a1 + 32);
    if (!v8)
    {
      v10 = v6[15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_112;
      v13[3] = &unk_1E8620288;
      v13[4] = v6;
      v14 = *(a1 + 40);
      v11 = v13;
      *buf = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __cpl_dispatch_async_block_invoke_23155;
      v18 = &unk_1E861B4E0;
      v19 = v11;
      v9 = v10;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v9, v12);

      goto LABEL_10;
    }

    v7 = +[CPLErrors operationCancelledError];
  }

  v9 = v7;
  [v6 taskDidFinishWithError:v7];
LABEL_10:
}

uint64_t __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_112(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(*(*(v3 + 8) + 8) + 24);
  v5 = *(*(a1 + 48) + 8);
  if (v4)
  {
    return [v2 _launchQueryForClass:v4 cursor:*(v5 + 40)];
  }

  else
  {
    return [v2 _launchFetchChangesFromSyncAnchor:*(v5 + 40)];
  }
}

uint64_t __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke_110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) scope];
  v5 = [v3 disableInitialQueriesForScope:v4 error:a2];

  return v5;
}

void __67__CPLPullFromTransportScopeTask__launchPullTasksAndDisableQueries___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _launchPullTasksAndDisableQueries__alwaysDisableQueries = [v0 BOOLForKey:@"CPLDisableQueries"];

  if (_launchPullTasksAndDisableQueries__alwaysDisableQueries == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v1 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_DEFAULT, "Queries are disabled for this user", v2, 2u);
    }
  }
}

- (void)_launchNextQueryTask
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Launch pull task", buf, 2u);
    }
  }

  store = [(CPLEngineScopedTask *)self store];
  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__23211;
  v17 = __Block_byref_object_dispose__23212;
  v18 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2050000000;
  v12[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke;
  v8[3] = &unk_1E8620260;
  v8[4] = self;
  v5 = store;
  v9 = v5;
  v10 = v12;
  v11 = buf;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_97;
  v7[3] = &unk_1E86209E0;
  v7[4] = self;
  v7[5] = v12;
  v7[6] = buf;
  v6 = [v5 performWriteTransactionWithBlock:v8 completionHandler:v7];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(buf, 8);
}

void __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Looking for next class to query", buf, 2u);
      }
    }

    if (![*(a1 + 32) isCancelled])
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_96;
      v24 = &unk_1E8620940;
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v25 = v6;
      v26 = v7;
      [v3 do:&v21];
      [*(a1 + 32) _storeInitialSyncAnchorIfNecessaryInTransaction:{v3, v21, v22, v23, v24}];
      v8 = [*(a1 + 40) scopes];
      v9 = [*(a1 + 32) scope];
      *(*(*(a1 + 48) + 8) + 24) = [v8 classOfRecordsForInitialQueryForScope:v9];

      if (*(*(*(a1 + 48) + 8) + 24))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *(*(*(a1 + 48) + 8) + 24);
            v12 = [*(a1 + 32) scope];
            *buf = 138412546;
            v28 = v11;
            v29 = 2112;
            v30 = v12;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Will query records of class %@ for %@", buf, 0x16u);
          }

LABEL_15:
        }
      }

      else
      {
        v13 = [*(a1 + 40) scopes];
        v14 = [*(a1 + 32) scope];
        v15 = [v13 transientSyncAnchorForScope:v14];
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v18 = [*(*(*(a1 + 56) + 8) + 40) cplSyncAnchorDescription];
            v19 = [*(a1 + 32) scope];
            *buf = 138412546;
            v28 = v18;
            v29 = 2112;
            v30 = v19;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Will fetch changes since sync anchor %@ for %@", buf, 0x16u);
          }

          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }
  }

  v5 = +[CPLErrors operationCancelledError];
  [v3 setError:v5];

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
}

void __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Committed", buf, 2u);
    }
  }

  v5 = [v3 error];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v3 error];
  }

  else
  {
    v8 = [*(a1 + 32) isCancelled];
    v6 = *(a1 + 32);
    if (!v8)
    {
      v10 = v6[15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_98;
      v13[3] = &unk_1E8620288;
      v13[4] = v6;
      v14 = *(a1 + 40);
      v11 = v13;
      *buf = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __cpl_dispatch_async_block_invoke_23155;
      v18 = &unk_1E861B4E0;
      v19 = v11;
      v9 = v10;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v9, v12);

      goto LABEL_10;
    }

    v7 = +[CPLErrors operationCancelledError];
  }

  v9 = v7;
  [v6 taskDidFinishWithError:v7];
LABEL_10:
}

uint64_t __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_98(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(*(*(v3 + 8) + 8) + 24);
  v5 = *(*(a1 + 48) + 8);
  if (v4)
  {
    return [v2 _launchQueryForClass:v4 cursor:*(v5 + 40)];
  }

  else
  {
    return [v2 _launchFetchChangesFromSyncAnchor:*(v5 + 40)];
  }
}

uint64_t __53__CPLPullFromTransportScopeTask__launchNextQueryTask__block_invoke_96(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) scopes];
  v5 = *(a1 + 40);
  v6 = v5[30];
  v7 = [v5 scope];
  v8 = [v4 markInitialQueryIsDoneForRecordsOfClass:v6 forScope:v7 error:a2];

  return v8;
}

- (void)_launchQueryForClass:(Class)class cursor:(id)cursor
{
  v39 = *MEMORY[0x1E69E9840];
  cursorCopy = cursor;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"running query for %@", class];
  [(CPLEngineSyncTask *)self setPhaseDescription:v8];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Launching transport download task", buf, 2u);
    }
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  Current = CFAbsoluteTimeGetCurrent();
  self->_didNotifySchedulerPullQueueIsFullOnce = 0;
  transport = self->_transport;
  scope = [(CPLEngineScopedTask *)self scope];
  transportScopeMapping = self->_transportScopeMapping;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke;
  v27[3] = &unk_1E86201E8;
  v27[4] = self;
  v29 = buf;
  v13 = cursorCopy;
  v28 = v13;
  classCopy = class;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_89;
  v26[3] = &unk_1E8620238;
  v26[4] = self;
  v26[5] = class;
  v14 = [(CPLEngineTransport *)transport queryTaskForCursor:v13 class:class scope:scope transportScopeMapping:transportScopeMapping progressHandler:v27 completionHandler:v26];
  queryTask = self->_queryTask;
  self->_queryTask = v14;

  if (!self->_queryTask)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "We should have a query task at this point", v35, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPullFromTransportTask.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v25 lineNumber:1110 description:@"We should have a query task at this point"];

    abort();
  }

  self->_currentQueryClass = class;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      scope2 = [(CPLEngineScopedTask *)self scope];
      *v35 = 138412546;
      classCopy2 = class;
      v37 = 2112;
      v38 = scope2;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Launching query for %@ in %@", v35, 0x16u);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = self->_queryTask;
        foreground = [(CPLEngineTransportQueryTask *)v19 foreground];
        v21 = " with background priority";
        if (foreground)
        {
          v21 = " with foreground priority";
        }

        *v35 = 138412546;
        classCopy2 = v19;
        v37 = 2080;
        v38 = v21;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEBUG, "Launching %@%s", v35, 0x16u);
      }
    }
  }

  [(CPLEngineSyncTask *)self launchTransportTask:self->_queryTask withTransportGroup:self->_transportGroup];

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_2;
  v16[3] = &unk_1E86201C0;
  v16[4] = v7;
  v17 = v5;
  v18 = v6;
  v15 = *(a1 + 40);
  v9 = v15;
  v19 = v15;
  v20 = *(a1 + 56);
  v10 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v22 = v10;
  v11 = v8;
  v12 = v6;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 120);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_2_90;
  v9[3] = &unk_1E8620210;
  v10 = v3;
  v11 = *(a1 + 32);
  v5 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v13 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

uint64_t __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_2_90(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Query task did finish with error %@", &v16, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = [*(a1 + 40) scope];
        v7 = *(a1 + 32);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Query task for %@ in %@ did finish with error %@", &v16, 0x20u);
      }
    }
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 224);
  *(v8 + 224) = 0;

  v10 = *(a1 + 32);
  if (v10)
  {
    if ([v10 isCPLErrorWithCode:255])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 40) scope];
          v13 = *(a1 + 48);
          v16 = 138412546;
          v17 = v12;
          v18 = 2112;
          v19 = v13;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Transport for %@ does not support queries for %@. Moving to regular initial changes fetch", &v16, 0x16u);
        }
      }

      result = [*(a1 + 40) _launchPullTasksAndDisableQueries:1];
    }

    else
    {
      result = [*(a1 + 40) taskDidFinishWithError:*(a1 + 32)];
    }
  }

  else
  {
    result = [*(a1 + 40) _launchNextQueryTask];
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __61__CPLPullFromTransportScopeTask__launchQueryForClass_cursor___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 248) != 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Query task did get a batch", &v22, 2u);
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) scope];
          v10 = CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 64) + 8) + 24);
          v11 = *(a1 + 40);
          v22 = 138412802;
          v23 = v9;
          v24 = 2048;
          v25 = v10;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Transport successfully downloaded for %@ (query) in %.2fs %@", &v22, 0x20u);
        }
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = CFAbsoluteTimeGetCurrent();
    if (![*(a1 + 40) count])
    {
      goto LABEL_28;
    }

    if (*(a1 + 48))
    {
      v12 = *(a1 + 56);
      v13 = v12;
      v14 = *(a1 + 48);
      if (v12 && v14)
      {
        v15 = [v12 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_23:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [*(a1 + 48) cplQueryCursorDescription];
            v22 = 138412290;
            v23 = v18;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Got some changes starting from cursor %@ and the new cursor is identical", &v22, 0xCu);
          }
        }

        goto LABEL_27;
      }

      v16 = v12 | v14;

      if (!v16)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v19 = [*(a1 + 32) engineLibrary];
    v20 = [v19 scheduler];
    [v20 resetBackoffInterval];

LABEL_28:
    [*(a1 + 32) _handleNewBatchFromQuery:*(a1 + 40) queryClass:*(a1 + 72) newCursor:*(a1 + 48)];
    goto LABEL_29;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 40) summaryDescription];
      v22 = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Dropping incoming %@ because we are stopping", &v22, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) scope];
        v6 = *(a1 + 40);
        v22 = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Dropping incoming batch for %@ (query) because we are stopping %@", &v22, 0x16u);
      }
    }
  }

LABEL_29:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewBatchFromQuery:(id)query queryClass:(Class)class newCursor:(id)cursor
{
  queryCopy = query;
  cursorCopy = cursor;
  store = [(CPLEngineScopedTask *)self store];
  dispatch_suspend(self->_queue);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_queryClass_newCursor___block_invoke;
  v16[3] = &unk_1E86200D0;
  v16[4] = self;
  v17 = queryCopy;
  v18 = cursorCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_queryClass_newCursor___block_invoke_2;
  v13[3] = &unk_1E86205B8;
  v14 = v17;
  selfCopy = self;
  v10 = v17;
  v11 = cursorCopy;
  v12 = [store performWriteTransactionWithBlock:v16 completionHandler:v13];
}

void __79__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_queryClass_newCursor___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) checkScopeIsValidInTransaction:?];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _storeInitialSyncAnchorIfNecessaryInTransaction:v6];
    v5 = [v6 error];

    if (!v5)
    {
      [*(a1 + 32) _handleNewBatchFromQuery:*(a1 + 40) newCursor:*(a1 + 48) inTransaction:v6];
    }
  }

  else
  {
    v4[248] = 1;
  }
}

void __79__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_queryClass_newCursor___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) count];
        v7 = [v3 error];
        v9 = 134218242;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Can't store batch with %lu changes: %@", &v9, 0x16u);
      }
    }

    goto LABEL_7;
  }

  if ([*(a1 + 40) isCancelled])
  {
LABEL_7:
    *(*(a1 + 40) + 248) = 1;
    [*(a1 + 40) _cancelAllTasks];
  }

  dispatch_resume(*(*(a1 + 40) + 120));

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_storeInitialSyncAnchorIfNecessaryInTransaction:(id)transaction
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__CPLPullFromTransportScopeTask__storeInitialSyncAnchorIfNecessaryInTransaction___block_invoke;
  v3[3] = &unk_1E8620478;
  v3[4] = self;
  [transaction do:v3];
}

uint64_t __81__CPLPullFromTransportScopeTask__storeInitialSyncAnchorIfNecessaryInTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) store];
  v5 = [v4 scopes];

  v6 = [*(a1 + 32) scope];
  if (*(*(a1 + 32) + 320))
  {
    goto LABEL_2;
  }

  if (![v5 setHasFetchedInitialSyncAnchor:1 forScope:v6 error:a2])
  {
    v7 = 0;
    goto LABEL_27;
  }

  *(*(a1 + 32) + 320) = 1;
  v8 = *(a1 + 32);
  if (*(v8 + 321) == 1)
  {
    *(v8 + 321) = 0;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 scopeIdentifier];
        v20 = 138412290;
        v21 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Storing initial sync anchor for %@", &v20, 0xCu);
      }
    }

    v11 = [v5 setInitialSyncAnchor:*(*(a1 + 32) + 328) forScope:v6 error:a2];
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = *(v12 + 336);
      if (v13)
      {
        objc_storeStrong((v12 + 232), v13);
        v7 = [v5 storeScopeChange:*(*(a1 + 32) + 336) forScope:v6 error:a2];
        v12 = *(a1 + 32);
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    v16 = [*(v12 + 336) libraryState];
    v14 = v16;
    if (!v7 || !v16)
    {
      goto LABEL_26;
    }

    if ([v16 isDisabled])
    {
      v7 = [v5 setValue:1 forFlag:8 forScope:v6 error:a2];
      v17 = [v14 disabledDate];
      if (!v7)
      {
LABEL_25:

        goto LABEL_26;
      }

      v7 = [v5 setDisabledDate:v17 forScope:v6 error:a2];

      if (!v7)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    v17 = [v14 deleteDate];
    v7 = [v5 setDeleteDate:v17 forScope:v6 error:a2];
    goto LABEL_25;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 scopeIdentifier];
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Not storing any initial sync anchor for %@ but marking it has being alredy fetched", &v20, 0xCu);
    }

    v7 = 1;
    goto LABEL_26;
  }

LABEL_2:
  v7 = 1;
LABEL_27:

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_handleNewBatchFromQuery:(id)query newCursor:(id)cursor inTransaction:(id)transaction
{
  queryCopy = query;
  cursorCopy = cursor;
  transactionCopy = transaction;
  if ([queryCopy count])
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke;
    v31[3] = &unk_1E86204A0;
    v31[4] = self;
    v32 = queryCopy;
    [transactionCopy addCleanupBlock:v31];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_3;
  v29[3] = &unk_1E8620940;
  v29[4] = self;
  v11 = queryCopy;
  v30 = v11;
  [transactionCopy do:v29];
  error = [transactionCopy error];

  if (!error)
  {
    store = [(CPLEngineScopedTask *)self store];
    v14 = [(CPLPullFromTransportScopeTask *)self _transientPullRepositoryInStore:store];
    currentQueryClass = self->_currentQueryClass;
    if (currentQueryClass == objc_opt_class())
    {
      [(CPLPullFromTransportScopeTask *)self _extractAndMinglePersonsIfPossibleFromBatch:v11 inTransaction:transactionCopy];
    }

    else
    {
      v16 = self->_currentQueryClass;
      if (v16 == objc_opt_class())
      {
        [(CPLPullFromTransportScopeTask *)self _extractAndMingleAssetsIfPossibleFromBatch:v11 inTransaction:transactionCopy];
      }
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_4;
    v25[3] = &unk_1E861FF88;
    v17 = v11;
    v26 = v17;
    v27 = v14;
    selfCopy = self;
    v18 = v14;
    [transactionCopy do:v25];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_82;
    v20[3] = &unk_1E8620968;
    v21 = cursorCopy;
    v22 = store;
    selfCopy2 = self;
    v24 = v17;
    v19 = store;
    [transactionCopy do:v20];
  }
}

void __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_2;
    v5[3] = &unk_1E8620848;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 withThroughputReporter:v5];
  }
}

uint64_t __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) count];
      *v8 = 134217984;
      *&v8[4] = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Storing %lu changes in transient repository", v8, 0xCu);
    }
  }

  *v8 = 0;
  result = [*(a1 + 40) appendBatch:*(a1 + 32) alreadyMingled:0 countOfAssetChanges:v8 error:a2];
  if (result)
  {
    *(*(a1 + 48) + 408) += *v8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_82(id *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1[4] cplQueryCursorDescription];
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Storing transient cursor %@", buf, 0xCu);
    }
  }

  v6 = [a1[5] scopes];
  v7 = a1[4];
  v8 = [a1[6] scope];
  v9 = [v6 storeTransientSyncAnchor:v7 forScope:v8 error:a2];

  if (v9 && [a1[7] count])
  {
    v10 = a1[6];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v10[51], @"CPLSyncProgressCountOfPulledAssetsKey"}];
    v17 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    LODWORD(v13) = 0.5;
    [v10 taskDidProgress:v12 userInfo:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void __82__CPLPullFromTransportScopeTask__handleNewBatchFromQuery_newCursor_inTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"changes"}];
}

- (void)_launchFetchChangesFromSyncAnchor:(id)anchor
{
  v38 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  [(CPLEngineSyncTask *)self setPhaseDescription:@"fetching changes"];
  if (!self->_rewindSyncAnchor)
  {
    goto LABEL_4;
  }

  if (anchorCopy)
  {
    if ([(CPLFeatureVersionHistory *)self->_versionHistory featureVersionForSyncAnchor:anchorCopy]> self->_rewindFeatureVersion)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Launching transport download task", &buf, 2u);
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x2020000000;
      Current = CFAbsoluteTimeGetCurrent();
      transport = self->_transport;
      scope = [(CPLEngineScopedTask *)self scope];
      transportScopeMapping = self->_transportScopeMapping;
      currentScopeChange = self->_currentScopeChange;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke;
      v28[3] = &unk_1E8620120;
      v28[4] = self;
      p_buf = &buf;
      v29 = anchorCopy;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_72;
      v27[3] = &unk_1E8620170;
      v27[4] = self;
      v11 = [(CPLEngineTransport *)transport downloadBatchTaskForSyncAnchor:v29 scope:scope transportScopeMapping:transportScopeMapping currentScopeChange:currentScopeChange progressHandler:v28 completionHandler:v27];
      downloadTask = self->_downloadTask;
      self->_downloadTask = v11;

      if (!self->_downloadTask)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v23 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *v31 = 0;
            _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "We should have a download task at this point", v31, 2u);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPullFromTransportTask.m"];
        [currentHandler handleFailureInMethod:a2 object:self file:v25 lineNumber:896 description:@"We should have a download task at this point"];

        abort();
      }

      syncAnchorsOfPartnerScopesThatMightNeedToPullChanges = self->_syncAnchorsOfPartnerScopesThatMightNeedToPullChanges;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_78;
      v26[3] = &unk_1E8620198;
      v26[4] = self;
      [(NSMutableDictionary *)syncAnchorsOfPartnerScopesThatMightNeedToPullChanges enumerateKeysAndObjectsUsingBlock:v26];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = self->_downloadTask;
          foreground = [(CPLEngineTransportDownloadBatchTask *)v15 foreground];
          v17 = " with background priority";
          if (foreground)
          {
            v17 = " with foreground priority";
          }

          *v31 = 138412546;
          v32 = v15;
          v33 = 2080;
          v34 = v17;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Launching %@%s", v31, 0x16u);
        }
      }

      [(CPLEngineSyncTask *)self launchTransportTask:self->_downloadTask withTransportGroup:self->_transportGroup];

      _Block_object_dispose(&buf, 8);
      goto LABEL_26;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        scope2 = [(CPLEngineScopedTask *)self scope];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = scope2;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "No need to rewind in %@ as we just caught up with the sync anchor we need", &buf, 0xCu);
      }
    }

    [(CPLPullFromTransportScopeTask *)self _updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor:anchorCopy];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        scope3 = [(CPLEngineScopedTask *)self scope];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = scope3;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "No need to rewind in %@ as we are fetching everything from the beginning", &buf, 0xCu);
      }
    }

    [(CPLPullFromTransportScopeTask *)self _updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor:0];
  }

LABEL_26:

  v22 = *MEMORY[0x1E69E9840];
}

void __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1[4];
  v14 = *(v13 + 120);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_2;
  v23[3] = &unk_1E86200F8;
  v23[4] = v13;
  v24 = v9;
  v15 = a1[5];
  v29 = a1[6];
  v25 = v11;
  v26 = v15;
  v27 = v10;
  v28 = v12;
  v16 = v23;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v31 = v16;
  v17 = v14;
  v18 = v12;
  v19 = v10;
  v20 = v11;
  v21 = v9;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v17, v22);
}

void __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_72(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = *(v12 + 120);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_2_73;
  v20[3] = &unk_1E8620148;
  v21 = v9;
  v22 = v11;
  v23 = v12;
  v24 = v10;
  v25 = a4;
  v14 = v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v27 = v14;
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v9;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v19);
}

void __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_2_73(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      *v29 = 138412290;
      *&v29[4] = v4;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Fetch changes task did finish with error %@", v29, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  v6 = v5;
  if (v5 && [v5 isCPLErrorWithCode:22] && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Sync anchor is too old. Will need to download everything from the beginning", v29, 2u);
    }
  }

  v8 = *(a1 + 48);
  v9 = *(v8 + 216);
  *(v8 + 216) = 0;

  if ([*(a1 + 56) count])
  {
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(v11 + 184);
    if (v12)
    {
      v13 = [v12 arrayByAddingObjectsFromArray:v10];
      v14 = *(a1 + 48);
      v15 = *(v14 + 184);
      *(v14 + 184) = v13;
    }

    else
    {
      v16 = v10;
      v15 = *(v11 + 184);
      *(v11 + 184) = v16;
    }
  }

  if (v6 || ((v17 = *(a1 + 48), (v17[248] & 1) != 0) || [v17 isCancelled]) && (+[CPLErrors operationCancelledError](CPLErrors, "operationCancelledError"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [*(a1 + 48) taskDidFinishWithError:v6];
  }

  else
  {
    v19 = *(a1 + 48);
    if (*(a1 + 64) == 1)
    {
      [v19 _launchFetchChangesFromSyncAnchor:v2];
    }

    else if (*(v19 + 264))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 48) scope];
          v22 = *(*(a1 + 48) + 256);
          v23 = +[CPLFingerprintScheme supportsEPP];
          *v29 = 138412802;
          v24 = 21;
          if (v23)
          {
            v24 = 22;
          }

          *&v29[4] = v21;
          v30 = 2048;
          v31 = v22;
          v32 = 2048;
          v33 = v24;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Rewinding in %@ now to catch up with changes from %lu to %lu", v29, 0x20u);
        }

        v19 = *(a1 + 48);
      }

      v25 = [v19 engineLibrary];
      v26 = [v25 feedback];
      [v26 reportFetchChangesRewindToFeatureVersion:*(*(a1 + 48) + 256)];

      [*(a1 + 48) _updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor:*(*(a1 + 48) + 264)];
    }

    else
    {
      v27 = [*(v19 + 288) count];
      v28 = *(a1 + 48);
      if (v27)
      {
        [v28 _relaunchFetchChangesFromOtherRewindSyncAnchors];
      }

      else if (v28[392] == 1)
      {
        [v28 _checkExtraRecords];
      }

      else
      {
        [v28 taskDidFinishWithError:0];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __67__CPLPullFromTransportScopeTask__launchFetchChangesFromSyncAnchor___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 248) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = [*(a1 + 40) summaryDescription];
        v20 = 138412290;
        v21 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Dropping incoming %@ because we are stopping", &v20, 0xCu);
      }
    }

    goto LABEL_30;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Fetch changes task did get a batch", &v20, 2u);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) scope];
        v7 = CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 80) + 8) + 24);
        v8 = *(a1 + 40);
        v20 = 138412802;
        v21 = v6;
        v22 = 2048;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Transport successfully downloaded for %@ in %.2fs %@", &v20, 0x20u);
      }
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 48))
  {
    if (![*(a1 + 40) count])
    {
LABEL_29:
      [*(a1 + 32) _handleNewBatchFromChanges:*(a1 + 40) updatedFlags:*(a1 + 64) newSyncAnchor:*(a1 + 48) partnerScopesNeedingToPullChanges:*(a1 + 72)];
      goto LABEL_30;
    }

    v9 = *(a1 + 56);
    v10 = v9;
    v11 = *(a1 + 48);
    if (v9 && v11)
    {
      v12 = [v9 isEqual:?];

      if ((v12 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v9 | v11;

      if (v14)
      {
LABEL_28:
        v17 = [*(a1 + 32) engineLibrary];
        v18 = [v17 scheduler];
        [v18 resetBackoffInterval];

        goto LABEL_29;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 56) cplSyncAnchorDescription];
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Got some changes starting from sync anchor %@ and the new sync anchor is identical", &v20, 0xCu);
      }
    }

    goto LABEL_28;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Transport returned an empty sync anchor", &v20, 2u);
    }
  }

LABEL_30:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_relaunchFetchChangesFromOtherRewindSyncAnchors
{
  if (![(NSMutableSet *)self->_otherRewindSyncAnchors count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "We should have rewind sync anchors here", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPullFromTransportTask.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:781 description:@"We should have rewind sync anchors here"];

    abort();
  }

  store = [(CPLEngineScopedTask *)self store];
  scopes = [store scopes];
  anyObject = [(NSMutableSet *)self->_otherRewindSyncAnchors anyObject];
  [(NSMutableSet *)self->_otherRewindSyncAnchors removeObject:anyObject];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke;
  v15[3] = &unk_1E86200D0;
  v15[4] = self;
  v16 = scopes;
  v17 = anyObject;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke_67;
  v13[3] = &unk_1E86205B8;
  v13[4] = self;
  v14 = v17;
  v7 = v17;
  v8 = scopes;
  v9 = [store performWriteTransactionWithBlock:v15 completionHandler:v13];
}

void __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke_2;
  v5[3] = &unk_1E861FF88;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 do:v5];
}

void __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke_67(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v8 error];
LABEL_5:
    v7 = v5;
    [v4 taskDidFinishWithError:v5];

    goto LABEL_6;
  }

  v6 = [*(a1 + 32) isCancelled];
  v4 = *(a1 + 32);
  if (v6)
  {
    v5 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  [*(a1 + 32) _launchFetchChangesFromSyncAnchor:*(a1 + 40)];
LABEL_6:
}

uint64_t __80__CPLPullFromTransportScopeTask__relaunchFetchChangesFromOtherRewindSyncAnchors__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scope];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) scope];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Rewinding now for %@ to catch up with missed features", &v10, 0xCu);
    }
  }

  if ([*(a1 + 40) storeTransientSyncAnchor:*(a1 + 48) forScope:v4 error:a2])
  {
    v7 = [*(a1 + 32) _storeRewindSyncAnchors:*(*(a1 + 32) + 288) inScopes:*(a1 + 40) error:a2];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  store = [(CPLEngineScopedTask *)self store];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke;
  v11[3] = &unk_1E86200D0;
  v12 = store;
  selfCopy = self;
  v14 = anchorCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke_60;
  v9[3] = &unk_1E86205B8;
  v9[4] = self;
  v10 = v14;
  v6 = v14;
  v7 = store;
  v8 = [v7 performWriteTransactionWithBlock:v11 completionHandler:v9];
}

void __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke_2;
  v7[3] = &unk_1E861FF88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [a2 do:v7];
}

void __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke_60(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v11 error];
LABEL_5:
    v7 = v5;
    [v4 taskDidFinishWithError:v5];

    goto LABEL_6;
  }

  v6 = [*(a1 + 32) isCancelled];
  v4 = *(a1 + 32);
  if (v6)
  {
    v5 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v8 = v4[33];
  v4[33] = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 272);
  *(v9 + 272) = 0;

  [*(a1 + 32) _launchFetchChangesFromSyncAnchor:*(a1 + 40)];
LABEL_6:
}

uint64_t __96__CPLPullFromTransportScopeTask__updateLastFeatureVersionAndRelaunchFetchChangesFromSyncAnchor___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scopes];
  if (+[CPLFingerprintScheme supportsEPP])
  {
    v5 = 22;
  }

  else
  {
    v5 = 21;
  }

  v6 = [*(a1 + 40) scope];
  v7 = [v4 storeSupportedFeatureVersionInLastSync:v5 forScope:v6 error:a2];

  if (v7)
  {
    v8 = [*(a1 + 32) scopes];
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) scope];
    v11 = [v8 storeTransientSyncAnchor:v9 forScope:v10 error:a2];

    v12 = *MEMORY[0x1E69E9840];
    return v11;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *a2;
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to store supported feature version: %@", &v17, 0xCu);
      }
    }

    v16 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (void)_handleNewBatchFromChanges:(id)changes updatedFlags:(id)flags newSyncAnchor:(id)anchor partnerScopesNeedingToPullChanges:(id)pullChanges
{
  v43 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  flagsCopy = flags;
  anchorCopy = anchor;
  pullChangesCopy = pullChanges;
  store = [(CPLEngineScopedTask *)self store];
  dispatch_suspend(self->_queue);
  if (self->_rewindSyncAnchor && [(CPLFeatureVersionHistory *)self->_versionHistory featureVersionForSyncAnchor:anchorCopy]<= self->_rewindFeatureVersion)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        scope = [(CPLEngineScopedTask *)self scope];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = scope;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "No need to rewind in %@ as we just caught up with the sync anchor we need to match current feature version", &buf, 0xCu);
      }
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  filterScopeChangeFromBatch = [changesCopy filterScopeChangeFromBatch];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x2020000000;
  v42 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke;
  v31[3] = &unk_1E8620080;
  v31[4] = self;
  v19 = anchorCopy;
  v32 = v19;
  v20 = filterScopeChangeFromBatch;
  v33 = v20;
  p_buf = &buf;
  v21 = flagsCopy;
  v34 = v21;
  v35 = changesCopy;
  v39 = v15;
  v22 = store;
  v36 = v22;
  v23 = pullChangesCopy;
  v37 = v23;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_59;
  v27[3] = &unk_1E86200A8;
  v24 = v35;
  v28 = v24;
  selfCopy = self;
  v30 = &buf;
  v25 = [v22 performWriteTransactionWithBlock:v31 completionHandler:v27];

  _Block_object_dispose(&buf, 8);
  v26 = *MEMORY[0x1E69E9840];
}

void __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) checkScopeIsValidInTransaction:v3];
  v5 = *(a1 + 32);
  if ((v4 & 1) == 0)
  {
    v5[248] = 1;
    goto LABEL_24;
  }

  v6 = [v5 engineLibrary];
  v7 = [v6 store];
  v8 = [v7 scopes];

  if ([*(*(a1 + 32) + 288) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 288) removeObject:*(a1 + 40)];
    if ([*(*(a1 + 32) + 288) count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) scope];
          *buf = 138412290;
          v34 = v10;
          v11 = "Caught up with some rewind sync anchor in %@ but we might still have to rewind for additional features";
LABEL_11:
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) scope];
        *buf = 138412290;
        v34 = v10;
        v11 = "No need to rewind in %@ as we we just caught up with the sync anchor we need for additional features";
        goto LABEL_11;
      }

LABEL_12:
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_51;
    v31[3] = &unk_1E8620940;
    v31[4] = *(a1 + 32);
    v32 = v8;
    [v3 do:v31];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_2;
    v27[3] = &unk_1E86206C8;
    v27[4] = *(a1 + 32);
    v13 = v12;
    v14 = *(a1 + 88);
    v28 = v13;
    v30 = v14;
    v29 = v8;
    [v3 do:v27];
  }

  v15 = *(a1 + 56);
  if (v15 && [v15 hasFlagUpdates])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_53;
    v24[3] = &unk_1E861FF88;
    v24[4] = *(a1 + 32);
    v25 = *(a1 + 56);
    v26 = v8;
    [v3 do:v24];
  }

  [*(a1 + 32) _handleNewBatchFromChanges:*(a1 + 64) newSyncAnchor:*(a1 + 40) inTransaction:v3];
  if (*(a1 + 96) == 1)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_54;
    v22[3] = &unk_1E8620940;
    v22[4] = *(a1 + 32);
    v23 = *(a1 + 72);
    [v3 do:v22];
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_55;
    v18[3] = &unk_1E8620968;
    v18[4] = *(a1 + 32);
    v19 = v16;
    v20 = v8;
    v21 = v3;
    [v21 do:v18];
  }

  [*(a1 + 32) _notePartnerScopesNeedingToPullChanges:*(a1 + 80) scopes:v8 inTransaction:v3];

LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
}

void __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_59(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) count];
        v7 = [v3 error];
        v19 = 134218242;
        v20 = v6;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Can't store batch with %lu changes: %@", &v19, 0x16u);
      }
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 128);
    if (v9)
    {
LABEL_7:
      objc_storeStrong((v8 + 128), v9);
      goto LABEL_13;
    }

    v12 = [v3 error];
    goto LABEL_11;
  }

  v10 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = [v10 session];
    [v11 requestSyncStateAtEndOfSyncSession:4 reschedule:1];

    v12 = +[CPLErrors operationCancelledError];
    v13 = *(a1 + 40);
LABEL_12:
    v14 = *(v13 + 128);
    *(v13 + 128) = v12;

    goto LABEL_13;
  }

  if ([v10 isCancelled])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "%@ has been cancelled while handling batches", &v19, 0xCu);
      }
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 128);
    if (v9)
    {
      goto LABEL_7;
    }

    v12 = +[CPLErrors operationCancelledError];
LABEL_11:
    v13 = *(a1 + 40);
    goto LABEL_12;
  }

LABEL_13:
  v15 = *(a1 + 40);
  if (*(v15 + 128))
  {
    *(v15 + 248) = 1;
    [*(a1 + 40) _cancelAllTasks];
    v15 = *(a1 + 40);
  }

  dispatch_resume(*(v15 + 120));

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) scope];
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updating scope info for %@", &v24, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (!*(v6 + 144) && [*(v6 + 232) scopeType] == 1)
  {
    v7 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(*(a1 + 32) + 232);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = *(a1 + 40);
        v10 = [v9 rewindAnchorsPerSharingScopesData];

        if (!v10)
        {
LABEL_21:

          goto LABEL_22;
        }

        v11 = *(*(a1 + 32) + 232);
        v12 = [v9 rewindAnchorsPerSharingScopesData];
        v13 = [v11 rewindAnchorsPerSharingScopesData];
        v14 = v13;
        if (v12 && v13)
        {
          v15 = [v12 isEqual:v13];

          if (v15)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if (!(v12 | v14))
          {
LABEL_20:

            goto LABEL_21;
          }
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) scope];
            v24 = 138412290;
            v25 = v17;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "%@ has an updated list of rewind anchors without a known shared scope - will need to check this", &v24, 0xCu);
          }
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  objc_storeStrong((*(a1 + 32) + 232), *(a1 + 40));
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  v20 = [*(a1 + 32) scope];
  v21 = [v18 storeScopeChange:v19 forScope:v20 error:a2];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_53(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) scope];
      v6 = *(a1 + 40);
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updating scope flags for %@: %@", &v13, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [*(a1 + 32) scope];
  v10 = [v7 updateFlags:v8 forScope:v9 error:a2];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_54(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 264);
  *(v4 + 264) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 272);
  *(v6 + 272) = 0;

  v8 = [*(a1 + 40) scopes];
  if (+[CPLFingerprintScheme supportsEPP])
  {
    v9 = 22;
  }

  else
  {
    v9 = 21;
  }

  v10 = [*(a1 + 32) scope];
  v11 = [v8 storeSupportedFeatureVersionInLastSync:v9 forScope:v10 error:a2];

  if ((v11 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to store supported feature version: %@", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __121__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_updatedFlags_newSyncAnchor_partnerScopesNeedingToPullChanges___block_invoke_55(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) scope];
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Updating library state for %@", buf, 0xCu);
    }
  }

  v6 = [*(a1 + 40) disabledDate];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) scope];
  LODWORD(v7) = [v7 setDisabledDate:v6 forScope:v8 error:a2];

  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) scope];
  LODWORD(v9) = [v9 setValue:v6 != 0 forFlag:8 forScope:v10 error:a2];

  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) deleteDate];
  v13 = [*(a1 + 32) scope];
  v14 = [v11 setDeleteDate:v12 forScope:v13 error:a2];

  if (v14)
  {
    if (([*(a1 + 32) isScopeValidInTransaction:*(a1 + 56)] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [*(a1 + 32) scope];
          *buf = 138412290;
          v26 = v16;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "%@ is not valid anymore, finishing sync session immediately", buf, 0xCu);
        }
      }

      v17 = [*(a1 + 32) scope];
      v18 = [v17 scopeIdentifier];
      v19 = [CPLErrors cplErrorWithCode:40 description:@"%@ has been reset", v18];
      v20 = *(a1 + 32);
      v21 = *(v20 + 128);
      *(v20 + 128) = v19;
    }

    v22 = 1;
  }

  else
  {
LABEL_15:
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)_notePartnerScopesNeedingToPullChanges:(id)changes scopes:(id)scopes inTransaction:(id)transaction
{
  changesCopy = changes;
  scopesCopy = scopes;
  transactionCopy = transaction;
  if ([changesCopy count] && -[NSMutableDictionary count](self->_syncAnchorsOfPartnerScopesThatMightNeedToPullChanges, "count"))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__CPLPullFromTransportScopeTask__notePartnerScopesNeedingToPullChanges_scopes_inTransaction___block_invoke;
    v11[3] = &unk_1E861FF88;
    v12 = changesCopy;
    selfCopy = self;
    v14 = scopesCopy;
    [transactionCopy do:v11];
  }
}

uint64_t __93__CPLPullFromTransportScopeTask__notePartnerScopesNeedingToPullChanges_scopes_inTransaction___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = a2;
    v7 = 0;
    v8 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 168) objectForKeyedSubscript:v10];

        if (v11)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v12 = __CPLTaskOSLogDomain_23138();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [*(a1 + 40) scope];
              *buf = 138412546;
              v33 = v10;
              v34 = 2112;
              v35 = v13;
              _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ (partner with %@) will need to pull changes according to sync obligations", buf, 0x16u);
            }
          }

          v14 = *(a1 + 48);
          v27 = v7;
          v15 = [v14 setScopeHasChangesToPullFromTransport:v10 error:&v27];
          v16 = v27;

          [*(*(a1 + 40) + 168) removeObjectForKey:v10];
          v17 = *(*(a1 + 40) + 176);
          if (!v17)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v19 = *(a1 + 40);
            v20 = *(v19 + 176);
            *(v19 + 176) = v18;

            v17 = *(*(a1 + 40) + 176);
          }

          v21 = [v10 scopeIdentifier];
          [v17 addObject:v21];

          if (!v15)
          {

            if (v26)
            {
              v22 = v16;
              v23 = 0;
              *v26 = v16;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_23;
          }

          v7 = v16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v23 = 1;
  v16 = v7;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_checkExtraRecords
{
  if (!self->_hasExtraRecordsToCheck)
  {
    __assert_rtn("[CPLPullFromTransportScopeTask _checkExtraRecords]", "CPLPullFromTransportTask.m", 583, "_hasExtraRecordsToCheck");
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Checking extra records", buf, 2u);
    }
  }

  store = [(CPLEngineScopedTask *)self store];
  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23211;
  v14 = __Block_byref_object_dispose__23212;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CPLPullFromTransportScopeTask__checkExtraRecords__block_invoke;
  v7[3] = &unk_1E86200A8;
  v7[4] = self;
  v9 = buf;
  v5 = store;
  v8 = v5;
  v6 = [v5 performReadTransactionWithBlock:v7];

  _Block_object_dispose(buf, 8);
}

void __51__CPLPullFromTransportScopeTask__checkExtraRecords__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:?] && (objc_msgSend(*(a1 + 32), "isCancelled") & 1) == 0)
  {
    v8 = [*(a1 + 40) pendingRecordChecks];
    v9 = [*(a1 + 32) scope];
    v10 = [v9 scopeIdentifier];
    v11 = [v8 nextBatchOfRecordsToCheckWithScopeIdentifier:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(*(*(a1 + 48) + 8) + 40) count];
    v15 = *(a1 + 32);
    if (v14)
    {
      [v15 _checkExtraRecordsWithScopedIdentifiers:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      [v15 taskDidFinishWithError:0];
    }
  }

  else
  {
    v3 = [v16 error];

    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [v16 error];
      [v4 taskDidFinishWithError:v5];
    }

    else if ([*(a1 + 32) isCancelled])
    {
      v6 = *(a1 + 32);
      v7 = +[CPLErrors operationCancelledError];
      [v6 taskDidFinishWithError:v7];
    }
  }
}

- (void)_checkExtraRecordsWithScopedIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifiersCopy;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Will check records directly on Server: %@", &buf, 0xCu);
    }
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke;
  v12[3] = &unk_1E861B290;
  v12[4] = self;
  v13 = identifiersCopy;
  v7 = v12;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v15 = __cpl_dispatch_async_block_invoke_23155;
  v16 = &unk_1E861B4E0;
  v17 = v7;
  v8 = queue;
  v9 = identifiersCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v8, v10);

  v11 = *MEMORY[0x1E69E9840];
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v31 = +[CPLErrors operationCancelledError];
    [v3 taskDidFinishWithError:?];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = [*(a1 + 32) engineLibrary];
    v29 = [v5 transport];

    v32 = objc_alloc_init(CPLRecordTargetMapping);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = *(a1 + 40);
    v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          if (*(*(a1 + 32) + 144))
          {
            v11 = [CPLScopedIdentifier alloc];
            v12 = [*(*(a1 + 32) + 144) scopeIdentifier];
            v13 = [v10 identifier];
            v14 = [(CPLScopedIdentifier *)v11 initWithScopeIdentifier:v12 identifier:v13];

            v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v10 otherScopedIdentifier:v14 targetState:0];
          }

          else
          {
            v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v10];
          }

          [(CPLRecordTargetMapping *)v32 setTarget:v15 forRecordWithScopedIdentifier:v10, v29];
        }

        v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 136);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_2;
    v33[3] = &unk_1E8620650;
    v33[4] = v18;
    v34 = v17;
    v35 = Current;
    v20 = v29;
    v21 = [v29 fetchRecordsTaskForRecordsWithScopedIdentifiers:v34 targetMapping:v32 transportScopeMapping:v19 completionHandler:v33];
    v22 = *(a1 + 32);
    v23 = *(v22 + 400);
    *(v22 + 400) = v21;

    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(*(a1 + 32) + 400);
        v26 = [v25 foreground];
        v27 = " with background priority";
        if (v26)
        {
          v27 = " with foreground priority";
        }

        *buf = 138412546;
        v41 = v25;
        v42 = 2080;
        v43 = v27;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "Launching %@%s", buf, 0x16u);
      }
    }

    [*(a1 + 32) launchTransportTask:*(*(a1 + 32) + 400) withTransportGroup:{*(*(a1 + 32) + 280), v29}];

    v28 = *MEMORY[0x1E69E9840];
  }
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 120);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_3;
  v15[3] = &unk_1E861B268;
  v15[4] = v8;
  v16 = v6;
  v17 = v7;
  v18 = v5;
  v19 = a1[6];
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v21 = v10;
  v11 = v9;
  v12 = v5;
  v13 = v6;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 400);
  *(v2 + 400) = 0;

  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = *MEMORY[0x1E69E9840];

    [v4 taskDidFinishWithError:?];
  }

  else if ([v4 isCancelled])
  {
    v6 = *(a1 + 32);
    v26 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v26];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = objc_alloc_init(CPLChangeBatch);
    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(a1 + 48)];
    v10 = *(a1 + 56);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_4;
    v37[3] = &unk_1E8620008;
    v11 = v9;
    v38 = v11;
    v12 = v8;
    v39 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v37];
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v33 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v14)
    {
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [CPLRecordChange newDeleteChangeWithScopedIdentifier:*(*(&v33 + 1) + 8 * i)];
          [(CPLChangeBatch *)v12 addRecord:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v14);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) scope];
        v20 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
        *buf = 138412802;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        v41 = v12;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Transport successfully downloaded for %@ (extra check) in %.2fs %@", buf, 0x20u);
      }
    }

    v21 = [*(a1 + 32) store];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__23211;
    v42 = __Block_byref_object_dispose__23212;
    v43 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_42;
    v28[3] = &unk_1E8620058;
    v28[4] = *(a1 + 32);
    v22 = v21;
    v29 = v22;
    v23 = v12;
    v30 = v23;
    v31 = *(a1 + 48);
    v32 = buf;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_3_45;
    v27[3] = &unk_1E8620A60;
    v27[4] = *(a1 + 32);
    v27[5] = buf;
    v24 = [v22 performWriteTransactionWithBlock:v28 completionHandler:v27];

    _Block_object_dispose(buf, 8);
    v25 = *MEMORY[0x1E69E9840];
  }
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) removeObject:v5];
  v7 = [v6 scopedIdentifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [v6 inExpunged];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v5];
      [v10 addRecord:v11];
    }

    else
    {
      [v10 addRecord:v6];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 scopedIdentifier];
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring check for %@ which is remapped to %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4 = [*(a1 + 32) _transientPullRepositoryInStore:*(a1 + 40)];
    v5 = [*(a1 + 32) store];
    v6 = [v5 pendingRecordChecks];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_2_43;
    v19[3] = &unk_1E8620030;
    v7 = v4;
    v20 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v21 = v8;
    v22 = v9;
    v10 = v6;
    v23 = v10;
    v24 = *(a1 + 56);
    [v3 do:v19];
    v11 = [v3 error];

    if (!v11)
    {
      v12 = [*(a1 + 32) store];
      v13 = [v12 pendingRecordChecks];
      v14 = [*(a1 + 32) scope];
      v15 = [v14 scopeIdentifier];
      v16 = [v13 nextBatchOfRecordsToCheckWithScopeIdentifier:v15];
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }
}

void __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_3_45(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v10 error];
    [v4 taskDidFinishWithError:v5];
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v6 = *(a1 + 32);
    v7 = +[CPLErrors operationCancelledError];
    [v6 taskDidFinishWithError:v7];
  }

  else
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) count];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _checkExtraRecordsWithScopedIdentifiers:*(*(*(a1 + 40) + 8) + 40)];
    }

    else
    {
      [v9 taskDidFinishWithError:0];
    }
  }
}

uint64_t __73__CPLPullFromTransportScopeTask__checkExtraRecordsWithScopedIdentifiers___block_invoke_2_43(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = [*(a1 + 32) appendBatch:*(a1 + 40) alreadyMingled:0 countOfAssetChanges:&v6 error:a2];
  result = 0;
  if (v4)
  {
    [*(a1 + 48) addCountOfPulledAssets:v6];
    return [*(a1 + 56) dequeueCloudScopedIdentifiersToCheck:*(a1 + 64) error:a2];
  }

  return result;
}

- (BOOL)_dequeueFromPendingRecordChecksIfNecessary:(id)necessary error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v7 = necessaryCopy;
  if (self->_hasExtraRecordsToCheck && [necessaryCopy count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            scopedIdentifier = [v14 scopedIdentifier];
            [v8 addObject:scopedIdentifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      store = [(CPLEngineScopedTask *)self store];
      pendingRecordChecks = [store pendingRecordChecks];
      v18 = [pendingRecordChecks dequeueCloudScopedIdentifiersToCheck:v8 error:error];
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)_fetchRewindSyncAnchorsInScopes:(id)scopes startSyncAnchor:(id)anchor error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  scope = [(CPLEngineScopedTask *)self scope];
  v10 = [scopesCopy rewindSyncAnchorsForScope:scope];

  if ([v10 count])
  {
    scope2 = [(CPLEngineScopedTask *)self scope];
    if (anchor)
    {
      v12 = [v10 mutableCopy];
      otherRewindSyncAnchors = self->_otherRewindSyncAnchors;
      self->_otherRewindSyncAnchors = v12;

      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(NSMutableSet *)self->_otherRewindSyncAnchors count];
          v20 = 138412546;
          v21 = scope2;
          v22 = 2048;
          v23 = v15;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "%@ might need to rewind fetching changes up to %lu times to catch up with missed features", &v20, 0x16u);
        }
      }

      v16 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = scope2;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "%@ does not need to rewind to catch up with missed features as it will fetch all records since the beginning", &v20, 0xCu);
        }
      }

      v16 = [(CPLPullFromTransportScopeTask *)self _storeRewindSyncAnchors:0 inScopes:scopesCopy error:error];
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_storeRewindSyncAnchors:(id)anchors inScopes:(id)scopes error:(id *)error
{
  anchorsCopy = anchors;
  scopesCopy = scopes;
  if (![anchorsCopy count])
  {

    anchorsCopy = 0;
  }

  scope = [(CPLEngineScopedTask *)self scope];
  v11 = [scopesCopy storeRewindSyncAnchors:anchorsCopy forScope:scope error:error];

  return v11;
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  v53 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CPLPullFromTransportScopeTask;
  v4 = [(CPLEngineScopedTask *)&v50 checkScopeIsValidInTransaction:transaction];
  if (v4)
  {
    store = [(CPLEngineScopedTask *)self store];
    pushRepository = [store pushRepository];
    scope = [(CPLEngineScopedTask *)self scope];
    scopeIdentifier = [scope scopeIdentifier];
    v9 = [pushRepository minimumPriorityForChangesInScopeWithIdentifier:scopeIdentifier];
    if (v9 < +[CPLRecordPushContext minimumPriorityForLocalConflictResolution])
    {
      session = [(CPLEngineSyncTask *)self session];
      allowsLocalConflictResolution = [session allowsLocalConflictResolution];

      if ((allowsLocalConflictResolution & 1) == 0)
      {
        session2 = [(CPLEngineSyncTask *)self session];
        allowsLocalConflictResolutionWhenOverQuota = [session2 allowsLocalConflictResolutionWhenOverQuota];

        if (!allowsLocalConflictResolutionWhenOverQuota || ([store scopes], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "valueForFlag:forScope:", 2, scope), v36, (v37 & 1) == 0))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v38 = __CPLTaskOSLogDomain_23138();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v52 = scopeIdentifier;
              _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_DEFAULT, "Push repository contains changes for %@, stopping pull from transport now", buf, 0xCu);
            }
          }

          [(CPLPullFromTransportScopeTask *)self cancel];

LABEL_23:
          LOBYTE(v4) = 0;
          goto LABEL_24;
        }
      }
    }

    cloudCache = [store cloudCache];
    transientPullRepository = [store transientPullRepository];
    v14 = transientPullRepository;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __64__CPLPullFromTransportScopeTask_checkScopeIsValidInTransaction___block_invoke;
      v47[3] = &unk_1E861FFB8;
      v48 = cloudCache;
      v49 = transientPullRepository;
      v15 = transientPullRepository;
      v16 = cloudCache;
      v17 = MEMORY[0x1E128EBA0](v47);
      allowsMinglingChangeWithScopedIdentifier = self->_allowsMinglingChangeWithScopedIdentifier;
      self->_allowsMinglingChangeWithScopedIdentifier = v17;

      v19 = v48;
    }

    else
    {
      idMapping = [store idMapping];
      scope2 = [(CPLEngineScopedTask *)self scope];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __64__CPLPullFromTransportScopeTask_checkScopeIsValidInTransaction___block_invoke_2;
      v41[3] = &unk_1E861FFE0;
      v42 = cloudCache;
      v43 = v14;
      v44 = idMapping;
      v45 = scope2;
      v46 = pushRepository;
      v22 = scope2;
      v19 = idMapping;
      v23 = v14;
      v24 = cloudCache;
      v25 = MEMORY[0x1E128EBA0](v41);
      v26 = self->_allowsMinglingChangeWithScopedIdentifier;
      self->_allowsMinglingChangeWithScopedIdentifier = v25;
    }

    store2 = [(CPLEngineScopedTask *)self store];
    cleanupTasks = [store2 cleanupTasks];
    hasCleanupTasks = [cleanupTasks hasCleanupTasks];

    if (hasCleanupTasks)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEFAULT, "Can't download records until cleanup tasks have been done", buf, 2u);
        }
      }

      [(CPLPullFromTransportScopeTask *)self cancel];
      goto LABEL_23;
    }

    if (self->_taskItem == -1)
    {
      store3 = [(CPLEngineScopedTask *)self store];
      scopes = [store3 scopes];
      scope3 = [(CPLEngineScopedTask *)self scope];
      self->_taskItem = [scopes pullFromTransportTaskForScope:scope3];
    }

    LOBYTE(v4) = 1;
  }

LABEL_24:
  v39 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __64__CPLPullFromTransportScopeTask_checkScopeIsValidInTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) hasRecordWithScopedIdentifier:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) hasRecordWithScopedIdentifier:v3] ^ 1;
  }

  return v4;
}

uint64_t __64__CPLPullFromTransportScopeTask_checkScopeIsValidInTransaction___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] hasRecordWithScopedIdentifier:v3] & 1) != 0 || (objc_msgSend(a1[5], "hasRecordWithScopedIdentifier:", v3))
  {
    v4 = 0;
  }

  else
  {
    v11 = 0;
    v5 = [a1[6] localScopedIdentifierForCloudScopedIdentifier:v3 isFinal:&v11];
    if (v5)
    {
      v6 = v5;
      -[CPLScopedIdentifier setScopeIndex:](v5, "setScopeIndex:", [a1[7] localIndex]);
    }

    else
    {
      v7 = [CPLScopedIdentifier alloc];
      v8 = [a1[7] scopeIdentifier];
      v9 = [v3 identifier];
      v6 = -[CPLScopedIdentifier initWithScopeIdentifier:identifier:scopeIndex:](v7, "initWithScopeIdentifier:identifier:scopeIndex:", v8, v9, [a1[7] localIndex]);
    }

    v4 = [a1[8] hasSomeChangeWithScopedIdentifier:v6] ^ 1;
  }

  return v4;
}

- (id)scopesForTask
{
  if ([(NSMutableArray *)self->_partnerScopes count])
  {
    v7.receiver = self;
    v7.super_class = CPLPullFromTransportScopeTask;
    scopesForTask = [(CPLEngineScopedTask *)&v7 scopesForTask];
    scopesForTask2 = [scopesForTask arrayByAddingObjectsFromArray:self->_partnerScopes];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CPLPullFromTransportScopeTask;
    scopesForTask2 = [(CPLEngineScopedTask *)&v6 scopesForTask];
  }

  return scopesForTask2;
}

- (void)_handleNewBatchFromChanges:(id)changes newSyncAnchor:(id)anchor inTransaction:(id)transaction
{
  changesCopy = changes;
  anchorCopy = anchor;
  transactionCopy = transaction;
  if ([changesCopy count])
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke;
    v27[3] = &unk_1E86204A0;
    v27[4] = self;
    v28 = changesCopy;
    [transactionCopy addCleanupBlock:v27];
  }

  error = [transactionCopy error];

  if (!error)
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v14 = [(CPLPullFromTransportScopeTask *)self _transientPullRepositoryInStore:store];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_3;
    v23[3] = &unk_1E861FF88;
    v15 = changesCopy;
    v24 = v15;
    v25 = v14;
    selfCopy = self;
    v16 = v14;
    [transactionCopy do:v23];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_27;
    v18[3] = &unk_1E8620968;
    v19 = anchorCopy;
    selfCopy2 = self;
    v21 = store;
    v22 = v15;
    v17 = store;
    [transactionCopy do:v18];
  }
}

void __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_2;
    v5[3] = &unk_1E8620848;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 withThroughputReporter:v5];
  }
}

uint64_t __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_3(id *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1[4] count];
      *v9 = 134217984;
      *&v9[4] = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Storing %lu changes in transient repository", v9, 0xCu);
    }
  }

  *v9 = 0;
  v6 = [a1[5] appendBatch:a1[4] alreadyMingled:0 countOfAssetChanges:v9 error:a2];
  result = 0;
  if (v6)
  {
    [a1[6] addCountOfPulledAssets:*v9];
    result = [a1[6] _dequeueFromPendingRecordChecksIfNecessary:a1[4] error:a2];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_27(id *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1[4] cplSyncAnchorDescription];
      v6 = [a1[5] scope];
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Storing transient sync anchor %@ for %@", buf, 0x16u);
    }
  }

  v7 = [a1[6] scopes];
  v8 = a1[4];
  v9 = [a1[5] scope];
  v10 = [v7 storeTransientSyncAnchor:v8 forScope:v9 error:a2];

  if (v10 && [a1[7] count])
  {
    v11 = a1[5];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v11[51], @"CPLSyncProgressCountOfPulledAssetsKey"}];
    v18 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    LODWORD(v14) = 0.5;
    [v11 taskDidProgress:v13 userInfo:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void __88__CPLPullFromTransportScopeTask__handleNewBatchFromChanges_newSyncAnchor_inTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"changes"}];
}

- (unint64_t)_totalAssetCountForScope
{
  if (!self->_hasCachedTotalAssetCountForScope)
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];
    scopes = [store scopes];
    scope = [(CPLEngineScopedTask *)self scope];
    v7 = [scopes scopeChangeForScope:scope];
    libraryInfo = [v7 libraryInfo];

    assetCounts = [libraryInfo assetCounts];
    self->_totalAssetCountForScope = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CPLPullFromTransportScopeTask__totalAssetCountForScope__block_invoke;
    v11[3] = &unk_1E861FF60;
    v11[4] = self;
    [assetCounts enumerateKeysAndObjectsUsingBlock:v11];
    self->_hasCachedTotalAssetCountForScope = 1;
  }

  return self->_totalAssetCountForScope;
}

uint64_t __57__CPLPullFromTransportScopeTask__totalAssetCountForScope__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(a1 + 32) + 296) += result;
  return result;
}

- (void)_extractAndMingleAssetsIfPossibleFromBatch:(id)batch inTransaction:(id)transaction
{
  v26 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  if (self->_useCourtesyMingling)
  {
    batchCopy = batch;
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];

    v10 = [(CPLPullFromTransportScopeTask *)self _transientPullRepositoryInStore:store];
    v11 = [(CPLPullFromTransportScopeTask *)self _cloudCacheInStore:store];
    v23 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke;
    v21[3] = &unk_1E861FF38;
    v21[4] = self;
    v12 = v11;
    v22 = v12;
    [batchCopy extractInitialDownloadBatch:&v23 shouldConsiderRecordFilter:v21];

    v13 = v23;
    if ([v13 count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLTaskOSLogDomain_23138();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v13;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "As a courtesy for a quiet client, mingling immediately new assets we got %@", buf, 0xCu);
        }
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke_20;
      v16[3] = &unk_1E8620968;
      v17 = v13;
      selfCopy = self;
      v19 = store;
      v20 = v10;
      [transactionCopy do:v16];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 scopedIdentifier];
  if ((*(*(*(a1 + 32) + 416) + 16))())
  {
    if ([v3 isAssetChange])
    {
      [v3 people];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = v23 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v19 = v4;
        v8 = *v21;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v20 + 1) + 8 * i) personIdentifier];
            if (v10)
            {
              v11 = v10;
              v12 = [CPLScopedIdentifier alloc];
              v13 = [v3 scopedIdentifier];
              v14 = [(CPLScopedIdentifier *)v12 initRelativeToScopedIdentifier:v13 identifier:v11];

              if (v14 && ([*(a1 + 40) hasRecordWithScopedIdentifier:v14] & 1) == 0)
              {
                v4 = v19;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v16 = __CPLTaskOSLogDomain_23138();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v25 = v3;
                    v26 = 2112;
                    v27 = v14;
                    _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Can't mingle %@ prematurely because it refers to an unknown person %@", buf, 0x16u);
                  }
                }

                v15 = 0;
                goto LABEL_24;
              }
            }

            else
            {
              v14 = 0;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

        v15 = 1;
        v4 = v19;
      }

      else
      {
        v15 = 1;
      }

LABEL_24:
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scope];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke_2;
  v10[3] = &unk_1E861FF10;
  v6 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v7 = [CPLMingleUtility mingleChangeBatch:v4 scope:v5 forStore:v6 onPutBatchInPullQueue:v10 error:a2];

  if (!v7)
  {
    return 0;
  }

  v9 = 0;
  result = [*(a1 + 56) appendBatch:*(a1 + 32) alreadyMingled:1 countOfAssetChanges:&v9 error:a2];
  if (result)
  {
    *(*(a1 + 40) + 408) += v9;
  }

  return result;
}

uint64_t __90__CPLPullFromTransportScopeTask__extractAndMingleAssetsIfPossibleFromBatch_inTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    [*(a1 + 32) _notifySchedulerPullQueueIsFull];
  }

  return 1;
}

- (void)_extractAndMinglePersonsIfPossibleFromBatch:(id)batch inTransaction:(id)transaction
{
  v53 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  transactionCopy = transaction;
  v8 = transactionCopy;
  if (!self->_useCourtesyMingling)
  {
    goto LABEL_33;
  }

  v33 = transactionCopy;
  v9 = [batchCopy count];
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];

  v31 = [(CPLPullFromTransportScopeTask *)self _transientPullRepositoryInStore:store];
  v32 = store;
  v12 = [(CPLPullFromTransportScopeTask *)self _cloudCacheInStore:store];
  v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v9];
  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
  v30 = v9;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = batchCopy;
  obj = batchCopy;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  v35 = v12;
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  v16 = *v45;
  do
  {
    v17 = 0;
    do
    {
      if (*v45 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v44 + 1) + 8 * v17);
      scopedIdentifier = [(CPLChangeBatch *)v18 scopedIdentifier];
      v20 = (*(self->_allowsMinglingChangeWithScopedIdentifier + 2))();
      v21 = v13;
      if (v20)
      {
        realIdentifier = [(CPLChangeBatch *)v18 realIdentifier];

        if (realIdentifier)
        {
          v21 = v13;
          if (_CPLSilentLogging)
          {
            goto LABEL_17;
          }

          relatedScopedIdentifier = __CPLTaskOSLogDomain_23138();
          if (os_log_type_enabled(relatedScopedIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v18;
            _os_log_impl(&dword_1DC05A000, relatedScopedIdentifier, OS_LOG_TYPE_DEFAULT, "Can't mingle %@ prematurely because it is a remap", buf, 0xCu);
          }

          goto LABEL_12;
        }

        relatedScopedIdentifier = [(CPLChangeBatch *)v18 relatedScopedIdentifier];
        if (relatedScopedIdentifier && ([v37 containsObject:relatedScopedIdentifier] & 1) == 0 && (objc_msgSend(v12, "hasRecordWithScopedIdentifier:", relatedScopedIdentifier) & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLTaskOSLogDomain_23138();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v49 = v18;
              v50 = 2112;
              v51 = relatedScopedIdentifier;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "Can't mingle %@ prematurely because it targets an unknown person %@", buf, 0x16u);
            }

            v12 = v35;
          }

LABEL_12:

          v21 = v13;
          goto LABEL_17;
        }

        [v37 addObject:scopedIdentifier];
        v21 = v36;
      }

LABEL_17:
      [v21 addObject:v18];

      ++v17;
    }

    while (v15 != v17);
    v25 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    v15 = v25;
  }

  while (v25);
LABEL_24:

  v8 = v33;
  if ([v36 count])
  {
    v26 = [[CPLChangeBatch alloc] initWithRecords:v36];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = __CPLTaskOSLogDomain_23138();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v26;
        _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "As a courtesy for a quiet client, mingling immediately new persons we got %@", buf, 0xCu);
      }
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __91__CPLPullFromTransportScopeTask__extractAndMinglePersonsIfPossibleFromBatch_inTransaction___block_invoke;
    v39[3] = &unk_1E8620968;
    v40 = v26;
    selfCopy = self;
    v42 = v32;
    v43 = v31;
    v28 = v26;
    [v33 do:v39];
  }

  if ([v13 count] != v30)
  {
    [obj _setRecords:v13];
  }

  batchCopy = v34;
LABEL_33:

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __91__CPLPullFromTransportScopeTask__extractAndMinglePersonsIfPossibleFromBatch_inTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scope];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__CPLPullFromTransportScopeTask__extractAndMinglePersonsIfPossibleFromBatch_inTransaction___block_invoke_2;
  v11[3] = &unk_1E861FF10;
  v6 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v7 = [CPLMingleUtility mingleChangeBatch:v4 scope:v5 forStore:v6 onPutBatchInPullQueue:v11 error:a2];

  if (!v7)
  {
    return 0;
  }

  v10 = 0;
  v8 = [*(a1 + 56) appendBatch:*(a1 + 32) alreadyMingled:1 countOfAssetChanges:&v10 error:a2];
  if (v8)
  {
    [*(a1 + 40) addCountOfPulledAssets:v10];
  }

  return v8;
}

uint64_t __91__CPLPullFromTransportScopeTask__extractAndMinglePersonsIfPossibleFromBatch_inTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    [*(a1 + 32) _notifySchedulerPullQueueIsFull];
  }

  return 1;
}

- (id)_cloudCacheInStore:(id)store
{
  cloudCache = self->_cloudCache;
  if (!cloudCache)
  {
    cloudCache = [store cloudCache];
    v6 = self->_cloudCache;
    self->_cloudCache = cloudCache;

    cloudCache = self->_cloudCache;
  }

  return cloudCache;
}

- (id)_transientPullRepositoryInStore:(id)store
{
  transientPullRepository = self->_transientPullRepository;
  if (!transientPullRepository)
  {
    transientPullRepository = [store transientPullRepository];
    v6 = self->_transientPullRepository;
    self->_transientPullRepository = transientPullRepository;

    transientPullRepository = self->_transientPullRepository;
  }

  return transientPullRepository;
}

- (void)_cancelAllTasks
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CPLPullFromTransportScopeTask__cancelAllTasks__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __48__CPLPullFromTransportScopeTask__cancelAllTasks__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 216) cancel];
  [*(*(a1 + 32) + 224) cancel];
  [*(*(a1 + 32) + 400) cancel];
  v2 = *(*(a1 + 32) + 344);

  return [v2 cancel];
}

- (void)_notifySchedulerPullQueueIsFullNowIfNecessary
{
  notifyQueue = self->_notifyQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFullNowIfNecessary__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_23155;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = notifyQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __78__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFullNowIfNecessary__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 361) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    *(*(a1 + 32) + 361) = 0;
    [*(a1 + 32) _reallyNotifySchedulerPullQueueIsFull];

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_notifySchedulerPullQueueIsFull
{
  if (self->_didNotifySchedulerPullQueueIsFullOnce)
  {
    notifyQueue = self->_notifyQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFull__block_invoke;
    v7[3] = &unk_1E861A940;
    v7[4] = self;
    v4 = v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_23155;
    block[3] = &unk_1E861B4E0;
    v9 = v4;
    v5 = notifyQueue;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v5, v6);
  }

  else
  {
    [(CPLPullFromTransportScopeTask *)self _reallyNotifySchedulerPullQueueIsFull];
    self->_didNotifySchedulerPullQueueIsFullOnce = 1;
  }
}

void __64__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFull__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 361) & 1) == 0)
  {
    *(v1 + 361) = 1;
    v3 = dispatch_time(0, 10000000000);
    v4 = *(a1 + 32);
    v5 = *(v4 + 352);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFull__block_invoke_2;
    block[3] = &unk_1E861A940;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

void __64__CPLPullFromTransportScopeTask__notifySchedulerPullQueueIsFull__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 361) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    *(*(a1 + 32) + 361) = 0;
    [*(a1 + 32) _reallyNotifySchedulerPullQueueIsFull];

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_reallyNotifySchedulerPullQueueIsFull
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_23138();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Notifying scheduler that there is some change in the pull queue", v6, 2u);
    }
  }

  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  scheduler = [engineLibrary scheduler];
  [scheduler noteClientNeedsToPull];
}

- (id)transportScope
{
  updateTransportScope = self->_updateTransportScope;
  if (updateTransportScope || (updateTransportScope = self->_stagingTransportScope) != 0)
  {
    transportScope = updateTransportScope;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLPullFromTransportScopeTask;
    transportScope = [(CPLEngineScopedTask *)&v5 transportScope];
  }

  return transportScope;
}

- (CPLPullFromTransportScopeTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope
{
  libraryCopy = library;
  v22.receiver = self;
  v22.super_class = CPLPullFromTransportScopeTask;
  v13 = [(CPLEngineScopedTask *)&v22 initWithEngineLibrary:libraryCopy session:session clientCacheIdentifier:identifier scope:scope transportScope:transportScope];
  if (v13)
  {
    v14 = CPLCopyDefaultSerialQueueAttributes();
    v15 = dispatch_queue_create("com.apple.cpl.pullfromtransport", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    transport = [libraryCopy transport];
    transport = v13->_transport;
    v13->_transport = transport;

    v13->_taskItem = -1;
    v19 = dispatch_queue_create("com.apple.cpl.pullfromtransport.notify", 0);
    notifyQueue = v13->_notifyQueue;
    v13->_notifyQueue = v19;
  }

  return v13;
}

@end