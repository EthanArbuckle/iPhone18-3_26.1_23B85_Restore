@interface CPLUploadPushedChangesTask
+ (BOOL)disableOverQuotaRule;
- (BOOL)_canUseOverQuotaRule;
- (BOOL)_copyResourceChangeFromChange:(id)change toChange:(id)toChange fingerprintScheme:(id)scheme error:(id *)error;
- (BOOL)_discardUploadedExtractedBatch:(id)batch error:(id *)error;
- (BOOL)_markUploadedTasksDidFinishWithError:(id)error transaction:(id)transaction error:(id *)a5;
- (BOOL)_reenqueueExtractedBatchWithRejectedRecords:(id)records extractedBatch:(id)batch error:(id *)error;
- (BOOL)_shouldNotTrustCloudCacheAfterError:(id)error;
- (BOOL)_willNeedToAccessScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_willNeedToAccessScopeWithIdentifier:(id)identifier primaryScope:(BOOL)scope error:(id *)error;
- (BOOL)checkScopeIsValidInTransaction:(id)transaction;
- (BOOL)isCloudRecordWithScopedIdentifierShared:(id)shared;
- (BOOL)willNeedToAccessRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (CPLUploadPushedChangesTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope storedTransportGroup:(id)group sharedScope:(id)sharedScope transportScopeMapping:(id)self0 ruleGroup:(int64_t)self1 highPriority:(BOOL)self2 maxBatchSize:(unint64_t)self3 pushRepositoryPriority:(unint64_t)self4 pushRepository:(id)self5;
- (id)availableResourceTypesToUploadForChange:(id)change;
- (id)knownCloudRecordWithScopedIdentifier:(id)identifier;
- (id)taskIdentifier;
- (id)willUploadCloudResource:(id)resource localResource:(id)localResource error:(id *)error;
- (void)_checkForRecordExistence;
- (void)_checkPrioritiesWithFetchCache:(id)cache;
- (void)_clearUploadBatch;
- (void)_deleteGeneratedResourcesAfterError:(id)error;
- (void)_didStartTaskWithKey:(id)key recordCount:(unint64_t)count;
- (void)_discardGenerateDerivativesProgress;
- (void)_excludeScopeFromMingling;
- (void)_extractAndUploadOneBatch;
- (void)_finishReportingDerivativesIsNecessary;
- (void)_generateDerivativesForNextRecord:(id)record usingDerivativesCache:(id)cache fetchCache:(id)fetchCache fingerprintContext:(id)context;
- (void)_generateNeededDerivativesWithFetchCache:(id)cache fingerprintContext:(id)context;
- (void)_generatingDerivativesForChange:(id)change fractionCompleted:(double)completed chunkLength:(unint64_t)length;
- (void)_installGenerateDerivativesCancellationHandler:(id)handler;
- (void)_noteSuccessfulUpdateInTransaction:(id)transaction;
- (void)_popNextBatchAndContinue;
- (void)_prepareTransportGroupForOneBatch;
- (void)_prepareUploadBatch;
- (void)_updateQuotaStrategyAfterSuccessInTransaction:(id)transaction;
- (void)_uploadBatchWithFetchCache:(uint64_t)cache;
- (void)_uploadTaskDidFinishWithError:(id)error;
- (void)cancel:(BOOL)cancel;
- (void)launch;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CPLUploadPushedChangesTask

- (BOOL)isCloudRecordWithScopedIdentifierShared:(id)shared
{
  v16 = *MEMORY[0x1E69E9840];
  sharedCopy = shared;
  v6 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:sharedCopy];
  if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = sharedCopy;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Trying to know shared state for %@ but it was not requested to access", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:1900 description:{@"Trying to know shared state for %@ but it was not requested to access", sharedCopy}];

    abort();
  }

  v7 = v6;
  shouldUploadToOtherRecord = [v6 shouldUploadToOtherRecord];

  v9 = *MEMORY[0x1E69E9840];
  return shouldUploadToOtherRecord;
}

- (id)knownCloudRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  store = [(CPLEngineScopedTask *)self store];
  cloudCache = [store cloudCache];
  v7 = [cloudCache recordWithScopedIdentifier:identifierCopy isFinal:0];

  return v7;
}

- (id)willUploadCloudResource:(id)resource localResource:(id)localResource error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  localResourceCopy = localResource;
  if (!self->_transactionDuringItemsPreparation)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "%@ should only be called during initial batch preparation", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v29 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v28 lineNumber:1860 description:{@"%@ should only be called during initial batch preparation", v29}];

    abort();
  }

  v11 = localResourceCopy;
  store = [(CPLEngineScopedTask *)self store];
  resourceStorage = [store resourceStorage];
  v14 = [resourceStorage retainFileURLForResource:v11 error:error];

  if (v14)
  {
    if (!self->_preparedUploadResourceTasks)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      preparedUploadResourceTasks = self->_preparedUploadResourceTasks;
      self->_preparedUploadResourceTasks = v15;

      transactionDuringItemsPreparation = self->_transactionDuringItemsPreparation;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__CPLUploadPushedChangesTask_willUploadCloudResource_localResource_error___block_invoke;
      v30[3] = &unk_1E8620A88;
      v30[4] = self;
      v18 = transactionDuringItemsPreparation;
      [(CPLEngineStoreTransaction *)v18 addCleanupBlock:v30];
    }

    v19 = [CPLEngineResourceUploadTask alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [(CPLResourceTransferTask *)v19 initWithResource:v11 taskIdentifier:uUIDString];

    [(CPLEngineResourceUploadTask *)v22 setCloudResource:resourceCopy];
    [(NSMutableArray *)self->_preparedUploadResourceTasks addObject:v22];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

void __74__CPLUploadPushedChangesTask_willUploadCloudResource_localResource_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v3 = [*(a1 + 32) engineLibrary];
    objc_storeStrong((*(a1 + 32) + 208), *(*(a1 + 32) + 256));
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 208);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 notifyAttachedObjectsUploadTaskDidStart:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 256);
  *(v9 + 256) = 0;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)availableResourceTypesToUploadForChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (!self->_transactionDuringItemsPreparation)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ should only be called during initial batch preparation", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v16 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:1855 description:{@"%@ should only be called during initial batch preparation", v16}];

    abort();
  }

  v6 = changeCopy;
  store = [(CPLEngineScopedTask *)self store];
  outgoingResources = [store outgoingResources];
  v9 = [outgoingResources resourceTypesToUploadForChange:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)willNeedToAccessRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_transactionDuringItemsPreparation)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ should only be called during initial batch preparation", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v22 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v21 lineNumber:1838 description:{@"%@ should only be called during initial batch preparation", v22}];

    abort();
  }

  v8 = identifierCopy;
  v9 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:identifierCopy];

  if (!v9)
  {
    scopeIdentifier = [v8 scopeIdentifier];
    v11 = [(CPLUploadPushedChangesTask *)self _willNeedToAccessScopeWithIdentifier:scopeIdentifier error:error];

    if (!v11)
    {
      v15 = 0;
      goto LABEL_6;
    }

    store = [(CPLEngineScopedTask *)self store];
    cloudCache = [store cloudCache];
    v14 = [cloudCache targetForRecordWithCloudScopedIdentifier:v8];

    [(CPLRecordTargetMapping *)self->_targetMapping setTarget:v14 forRecordWithScopedIdentifier:v8];
  }

  v15 = 1;
LABEL_6:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_willNeedToAccessScopeWithIdentifier:(id)identifier primaryScope:(BOOL)scope error:(id *)error
{
  scopeCopy = scope;
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = [(CPLEngineScopeStorage *)self->_scopes scopeWithIdentifier:identifierCopy];
  if (!v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Additional requested scope %{public}@ is unknown", buf, 0xCu);
      }
    }

    v13 = [CPLErrors cplErrorWithCode:2001 description:@"unknown scope"];
LABEL_31:
    v15 = 0;
    if (!error)
    {
      goto LABEL_32;
    }

LABEL_18:
    v20 = v13;
    v21 = 0;
    *error = v13;
    goto LABEL_33;
  }

  v10 = [(CPLEngineScopeStorage *)self->_scopes flagsForScope:v9];
  if ([v10 valueForFlag:262164])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Additional requested scope %{public}@ is invalid scope: flags are %@", buf, 0x16u);
      }
    }

    [CPLErrors cplErrorWithCode:38 description:@"invalid flags for additional scope: %@", v10];
    v13 = LABEL_30:;

    goto LABEL_31;
  }

  v14 = [(CPLEngineScopeStorage *)self->_scopes transportScopeForScope:v9];
  if (!v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Transport scope for additional requested scope %{public}@ has not yet been determined", buf, 0xCu);
      }
    }

    [CPLErrors cplErrorWithCode:32 description:@"missing transport scope", v27];
    goto LABEL_30;
  }

  v15 = v14;

  if (scopeCopy && ([(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:v9], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    scopeIdentifier = [v16 scopeIdentifier];
    v28 = 0;
    v19 = [(CPLUploadPushedChangesTask *)self _willNeedToAccessScopeWithIdentifier:scopeIdentifier primaryScope:0 error:&v28];
    v13 = v28;

    if (!v19)
    {
      if (!error)
      {
LABEL_32:
        v21 = 0;
        goto LABEL_33;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
  }

  [(CPLTransportScopeMapping *)self->_transportScopeMapping addTransportScope:v15 forScope:v9];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v22 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(CPLTransportScopeMapping *)self->_transportScopeMapping objectForKeyedSubscript:identifierCopy];
      *buf = 138543618;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "Will access %{public}@ with concrete scope %@", buf, 0x16u);
    }
  }

  v21 = 1;
LABEL_33:

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_willNeedToAccessScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(CPLTransportScopeMapping *)self->_transportScopeMapping hasConcreteScopeForScopeWithIdentifier:identifierCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_invalidTransportScopes objectForKeyedSubscript:identifierCopy];
    if (v8)
    {
      if (error)
      {
        v8 = v8;
        *error = v8;
      }

      v7 = 0;
    }

    else
    {
      v15 = 0;
      v7 = [(CPLUploadPushedChangesTask *)self _willNeedToAccessScopeWithIdentifier:identifierCopy primaryScope:1 error:&v15];
      v9 = v15;
      if (!v7)
      {
        invalidTransportScopes = self->_invalidTransportScopes;
        if (!invalidTransportScopes)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = self->_invalidTransportScopes;
          self->_invalidTransportScopes = v11;

          invalidTransportScopes = self->_invalidTransportScopes;
        }

        [(NSMutableDictionary *)invalidTransportScopes setObject:v9 forKeyedSubscript:identifierCopy];
        if (error)
        {
          v13 = v9;
          *error = v9;
        }
      }
    }
  }

  return v7;
}

- (id)taskIdentifier
{
  if (self->_highPriority)
  {
    return @"engine.sync.pushtotransport.upload.highpriority";
  }

  else
  {
    return @"engine.sync.pushtotransport.upload";
  }
}

- (void)_uploadTaskDidFinishWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(CPLUploadPushedChangesTask *)self _finishReportingDerivativesIsNecessary];
  [(CPLEngineSyncTask *)self setPhaseDescription:@"cleaning"];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = errorCopy;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Upload finished (error: %@)", &buf, 0xCu);
    }
  }

  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24318;
  v16 = __Block_byref_object_dispose__24319;
  v8 = errorCopy;
  v17 = v8;
  v11[5] = &buf;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke;
  v12[3] = &unk_1E8620A60;
  v12[4] = self;
  v12[5] = &buf;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_200;
  v11[3] = &unk_1E8620A60;
  v11[4] = self;
  v9 = [store performWriteTransactionWithBlock:v12 completionHandler:v11];
  _Block_object_dispose(&buf, 8);

  v10 = *MEMORY[0x1E69E9840];
}

void __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_2;
  v16[3] = &unk_1E8620A38;
  v4 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v18 = v4;
  v5 = v3;
  v17 = v5;
  [v5 do:v16];
  v6 = [*(*(a1 + 32) + 496) storedExtractedBatch];
  v7 = v6;
  if (v6)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_3;
    v12 = &unk_1E8620A38;
    v8 = *(a1 + 32);
    v15 = *(a1 + 40);
    v13 = v8;
    v14 = v6;
    [v5 do:&v9];
  }

  [*(*(a1 + 32) + 496) setExtractionStrategy:{0, v9, v10, v11, v12, v13}];
  [*(a1 + 32) _deleteGeneratedResourcesAfterError:*(*(*(a1 + 40) + 8) + 40)];
}

void __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_2;
  }

  v4 = [v3 error];

  if (!v4)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
LABEL_2:
    [*(a1 + 32) taskDidFinishWithError:?];
    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  v6 = [v8 error];
  [v5 taskDidFinishWithError:v6];

LABEL_5:
  [*(a1 + 32) _clearUploadBatch];
}

uint64_t __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _markUploadedTasksDidFinishWithError:*(*(*(a1 + 48) + 8) + 40) transaction:*(a1 + 40) error:a2];
  if (result)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 160))
    {
      v5 = *(v4 + 496);

      return [v5 checkInBatchStorage:? error:?];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __60__CPLUploadPushedChangesTask__uploadTaskDidFinishWithError___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    if ([v4 isCPLErrorWithCode:18])
    {
      v5 = [*(v3 + 32) engineLibrary];
      v6 = [v5 store];
      v7 = [v6 idMapping];

      v8 = [*(*(*(v3 + 48) + 8) + 40) userInfo];
      v9 = [v8 objectForKeyedSubscript:@"CPLErrorRejectedRecordIdentifiersAndReasons"];
      v10 = [CPLScopedIdentifier scopedIdentifiersFromDictionaryOfUnknownIdentifiers:v9];

      if (v10)
      {
        v35 = v8;
        v37 = a2;
        v39 = objc_alloc_init(CPLRejectedRecords);
        v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v36 = v3;
        v11 = [*(v3 + 40) batch];
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = v12;
        v14 = *v46;
        while (1)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            v17 = [v16 scopedIdentifier];
            v44 = 0;
            v18 = [v7 cloudScopedIdentifierForLocalScopedIdentifier:v17 isFinal:&v44];
            if (v18)
            {
              v19 = [v10 objectForKeyedSubscript:v18];
              if (v19)
              {
                [(CPLRejectedRecords *)v39 setObject:v19 forKeyedSubscript:v16];
                [v38 addObject:v17];
              }
            }

            else
            {
              if (_CPLSilentLogging)
              {
                goto LABEL_16;
              }

              v19 = __CPLTaskOSLogDomain_24274();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v51 = v17;
                _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Failed to remap local identifier %@ to a cloud identifier after records have been rejected", buf, 0xCu);
              }
            }

LABEL_16:
            [v16 _setShouldNotTrustCloudCache:1];
          }

          v13 = [v11 countByEnumeratingWithState:&v45 objects:v52 count:16];
          if (!v13)
          {
LABEL_18:

            v8 = v35;
            v20 = [v35 mutableCopy];
            [v20 removeObjectForKey:@"CPLErrorRejectedRecordIdentifiersAndReasons"];
            [v20 setObject:v38 forKeyedSubscript:@"CPLErrorRejectedRecordIdentifiers"];
            v21 = objc_alloc(MEMORY[0x1E696ABC0]);
            v3 = v36;
            v22 = [*(*(*(v36 + 48) + 8) + 40) domain];
            v23 = [v21 initWithDomain:v22 code:objc_msgSend(*(*(*(v36 + 48) + 8) + 40) userInfo:{"code"), v20}];
            v24 = *(*(v36 + 48) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            a2 = v37;
            v26 = v39;
            goto LABEL_32;
          }
        }
      }

      v26 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v27 = *(*(*(v3 + 48) + 8) + 40);
  }

  else
  {
    v27 = 0;
  }

  if ([*(v3 + 32) _shouldNotTrustCloudCacheAfterError:v27])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [*(v3 + 40) batch];
    v28 = [v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v40 + 1) + 8 * j) _setShouldNotTrustCloudCache:1];
        }

        v29 = [v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v29);
    }

    v26 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v26 = 0;
LABEL_34:
  v32 = [*(v3 + 32) _reenqueueExtractedBatchWithRejectedRecords:v26 extractedBatch:*(v3 + 40) error:a2];

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BOOL)_shouldNotTrustCloudCacheAfterError:(id)error
{
  errorCopy = error;
  if ([errorCopy isCPLError])
  {
    code = [errorCopy code];
    v6 = code == 25 || code == 80;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_excludeScopeFromMingling
{
  session = [(CPLEngineSyncTask *)self session];
  [session excludeScopeIdentifierFromMingling:self->_scopeIdentifier];

  if (self->_sharedScope)
  {
    session2 = [(CPLEngineSyncTask *)self session];
    scopeIdentifier = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    [session2 excludeScopeIdentifierFromMingling:scopeIdentifier];
  }
}

- (void)cancel:(BOOL)cancel
{
  if (cancel)
  {
    lock = self->_lock;
    v5 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__CPLUploadPushedChangesTask_cancel___block_invoke;
    v11[3] = &unk_1E861A940;
    v11[4] = self;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CPLUploadPushedChangesTask;
    [(CPLEngineSyncTask *)&v10 cancel];
    lock = self->_lock;
    v5 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__CPLUploadPushedChangesTask_cancel___block_invoke_193;
    v9[3] = &unk_1E861A940;
    v9[4] = self;
  }

  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = lock;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __37__CPLUploadPushedChangesTask_cancel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[36] || v2[37] || v2[40])
  {
    v9.receiver = *(a1 + 32);
    v9.super_class = CPLUploadPushedChangesTask;
    objc_msgSendSuper2(&v9, sel_cancel);
    [*(*(a1 + 32) + 288) cancel];
    [*(*(a1 + 32) + 296) cancel];
    if (*(*(a1 + 32) + 320))
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [v3 BOOLForKey:@"CPLAllowCancellingDerivativesGeneration"];

      if (v4)
      {
        (*(*(*(a1 + 32) + 320) + 16))();
      }
    }
  }

  else
  {
    v5 = v2[38];
    if (v5)
    {
      if ([v5 foreground])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLTaskOSLogDomain_24274();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Deferring cancellation due to upload task currently running foreground", buf, 2u);
          }
        }

        [*(*(a1 + 32) + 304) cancelIfBlocked];
        *(*(a1 + 32) + 408) = 1;
      }

      else
      {
        v7.receiver = *(a1 + 32);
        v7.super_class = CPLUploadPushedChangesTask;
        objc_msgSendSuper2(&v7, sel_cancel);
        [*(*(a1 + 32) + 304) cancel];
      }
    }
  }
}

uint64_t __37__CPLUploadPushedChangesTask_cancel___block_invoke_193(uint64_t a1)
{
  [*(*(a1 + 32) + 288) cancel];
  [*(*(a1 + 32) + 296) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 304);

  return [v4 cancel];
}

- (void)launch
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CPLUploadPushedChangesTask;
  [(CPLEngineSyncTask *)&v11 launch];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = self->_scopeIdentifier;
      pushRepositoryPriority = self->_pushRepositoryPriority;
      *buf = 138543618;
      v13 = scopeIdentifier;
      v14 = 2048;
      v15 = pushRepositoryPriority;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Launching changes upload for %{public}@ (priority %lu)", buf, 0x16u);
    }
  }

  store = [(CPLEngineScopedTask *)self store];
  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__CPLUploadPushedChangesTask_launch__block_invoke;
  v10[3] = &unk_1E86205E0;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CPLUploadPushedChangesTask_launch__block_invoke_3;
  v9[3] = &unk_1E86205E0;
  v7 = [store performWriteTransactionWithBlock:v10 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __36__CPLUploadPushedChangesTask_launch__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CPLUploadPushedChangesTask_launch__block_invoke_2;
  v3[3] = &unk_1E8620478;
  v3[4] = *(a1 + 32);
  return [a2 do:v3];
}

void __36__CPLUploadPushedChangesTask_launch__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 error];
    [v4 _uploadTaskDidFinishWithError:v5];
  }

  else
  {
    [v4 _extractAndUploadOneBatch];
  }
}

BOOL __36__CPLUploadPushedChangesTask_launch__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) store];
  v5 = [v4 derivativesFilter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 200);
  *(v6 + 200) = v5;

  v8 = [*(*(a1 + 32) + 496) checkOutBatchStorageWithPriority:*(*(a1 + 32) + 488) error:a2];
  v9 = *(a1 + 32);
  v10 = *(v9 + 160);
  *(v9 + 160) = v8;

  *(*(a1 + 32) + 192) = [*(*(a1 + 32) + 496) hasChangesWithPriorityGreaterThanPriority:*(*(a1 + 32) + 488) inScopeWithIdentifier:*(*(a1 + 32) + 128)];
  return *(*(a1 + 32) + 160) != 0;
}

- (void)_extractAndUploadOneBatch
{
  [(CPLEngineSyncTask *)self setPhaseDescription:@"extracting batch"];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Uploading one batch to transport", buf, 2u);
    }
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke;
  v9[3] = &unk_1E8620A08;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = v12;
  v9[7] = a2;
  v6 = v9;
  *buf = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __cpl_dispatch_async_block_invoke_24326;
  v17 = &unk_1E861B4E0;
  v18 = v6;
  v7 = lock;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v7, v8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
}

void __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_2;
  v8[3] = &unk_1E8620990;
  v4 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v12 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_177;
  v7[3] = &unk_1E86209E0;
  v7[4] = v9;
  v7[5] = v4;
  v7[6] = v12;
  v5 = v3;
  v6 = [v5 performWriteTransactionWithBlock:v8 completionHandler:v7];
}

void __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_2(uint64_t a1, void *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Looking for next batch in push repository", &buf, 2u);
    }
  }

  if (![*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 466) == 1)
  {
    [v5 _noteSuccessfulUpdateInTransaction:v3];
    v6 = [v3 error];

    if (v6)
    {
      goto LABEL_32;
    }

    v5 = *(a1 + 32);
  }

  if (*(v5 + 176))
  {
    v7 = [*(v5 + 496) storedExtractedBatch];
    v8 = [v7 batch];
    v9 = [v8 count];

    v10 = a1 + 32;
    *(*(a1 + 32) + 384) += v9;
    v11 = *(a1 + 32);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_167;
    v84[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v84[4] = v9;
    [v11 withThroughputReporter:v84];
    v12 = [*(*v10 + 496) countOfChangesInScopeWithIdentifier:*(*v10 + 128)];
    v14 = *(a1 + 32);
    v15 = 100 * *(*v10 + 384) / (*(*v10 + 384) + v12);
    if (v15 != *(v14 + 376))
    {
      *(v14 + 376) = v15;
      *&v13 = v15 / 100.0;
      [*(a1 + 32) taskDidProgress:0 userInfo:v13];
      v14 = *(a1 + 32);
    }

    if (!*(v14 + 184))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v71 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1DC05A000, v71, OS_LOG_TYPE_ERROR, "We should have a batch to commit here", &buf, 2u);
        }
      }

      v72 = [MEMORY[0x1E696AAA8] currentHandler];
      v73 = *(a1 + 64);
      v74 = *(a1 + 32);
      v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
      [v72 handleFailureInMethod:v73 object:v74 file:v75 lineNumber:1446 description:@"We should have a batch to commit here"];

      abort();
    }

    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_174;
    v80[3] = &unk_1E8620968;
    v80[4] = v14;
    v81 = v3;
    v82 = *(a1 + 40);
    v83 = v7;
    v16 = v7;
    [v81 do:v80];
    [*(a1 + 32) _clearUploadBatch];

    v5 = *(a1 + 32);
  }

  if (*(v5 + 408) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "Triggering deferred cancel", &buf, 2u);
      }

      v5 = *(a1 + 32);
    }

    [v5 cancel];
    goto LABEL_32;
  }

  if ([v5 diskPressureState])
  {
    v18 = [*(a1 + 32) engineLibrary];
    v19 = [v18 store];
    v20 = [v19 derivativesCache];
    [v20 discardCache];

    v21 = [*(a1 + 32) diskPressureState] == 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = [*(a1 + 32) delegate];
  v23 = [v22 task:*(a1 + 32) shouldRetryImmediatelyInTransaction:v3];

  if (v23)
  {
    v24 = *(a1 + 48);
LABEL_31:
    *(*(v24 + 8) + 24) = 1;
    goto LABEL_32;
  }

  if (v21)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_DEFAULT, "System has not enough disk space to continue %@", &buf, 0xCu);
      }
    }

    v24 = *(a1 + 56);
    goto LABEL_31;
  }

  *(*(a1 + 32) + 392) = CFAbsoluteTimeGetCurrent();
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = v3;
  v78 = v28;
  if (!v29 || ([v29 isCancelled] & 1) != 0)
  {
    goto LABEL_102;
  }

  v77 = [v78 cloudCache];
  v76 = [v78 idMapping];
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy__24318;
  v102[4] = __Block_byref_object_dispose__24319;
  v103 = [MEMORY[0x1E695DF00] now];
  do
  {
    v31 = [v30 error];
    v32 = v31 == 0;

    if (!v32)
    {
      break;
    }

    v33 = objc_autoreleasePoolPush();
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__24318;
    v100 = __Block_byref_object_dispose__24319;
    v101 = 0;
    if (*(v29 + 434) == 1 && (v34 = *(v29 + 168)) != 0)
    {
      v35 = [v34 name];
      v36 = *(v29 + 168);
      *(v29 + 168) = 0;

      *(v29 + 434) = 0;
    }

    else
    {
      v35 = 0;
    }

    if (!*(v29 + 168))
    {
      v37 = *(v29 + 136);
      v38 = [v29 scope];
      *(v29 + 433) = [v37 valueForFlag:2 forScope:v38];

      if (*(v29 + 433) == 1)
      {
        if (!*(v29 + 488))
        {
          v39 = *(v29 + 136);
          v40 = [v29 scope];
          *(v29 + 467) = [v39 shouldCheckAssetsWithServerWhenOverQuotaForScope:v40];

          if (*(v29 + 467) == 1)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v41 = __CPLTaskOSLogDomain_24274();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [v29 scope];
                *v125 = 138412290;
                *&v125[4] = v42;
                _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_DEFAULT, "Will check assets of %@ with server when over-quota", v125, 0xCu);
              }

              goto LABEL_52;
            }
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v41 = __CPLTaskOSLogDomain_24274();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v29 scope];
              *v125 = 138412290;
              *&v125[4] = v44;
              _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_DEFAULT, "Will check assets of %@ only against cloud cache when over-quota", v125, 0xCu);
            }

LABEL_52:
          }
        }

        v43 = [CPLBatchExtractionStrategy overQuotaStrategyWithStorage:*(v29 + 160) coveringScopeIdentifier:*(v29 + 128)];
      }

      else
      {
        v43 = [CPLBatchExtractionStrategy usualStrategyWithStorage:*(v29 + 160) coveringScopeIdentifier:*(v29 + 128)];
      }

      v45 = *(v29 + 168);
      *(v29 + 168) = v43;

      [*(v29 + 168) setMaximumRecordCountPerBatch:*(v29 + 480)];
      if (v35)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v46 = __CPLTaskOSLogDomain_24274();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [*(v29 + 168) name];
            *v125 = 138412546;
            *&v125[4] = v35;
            *&v125[12] = 2112;
            *&v125[14] = v47;
            _os_log_impl(&dword_1DC05A000, v46, OS_LOG_TYPE_DEFAULT, "Changing extraction strategy from %@ to %@", v125, 0x16u);
          }

          goto LABEL_62;
        }

LABEL_67:
        [*(v29 + 496) setExtractionStrategy:*(v29 + 168)];
        goto LABEL_68;
      }

      v48 = _CPLSilentLogging;
      if (*(v29 + 433) == 1)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_67;
        }

        v46 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [*(v29 + 168) name];
          *v125 = 138412290;
          *&v125[4] = v49;
          _os_log_impl(&dword_1DC05A000, v46, OS_LOG_TYPE_DEFAULT, "Will use extraction strategy %@", v125, 0xCu);
        }

LABEL_62:

        v48 = _CPLSilentLogging;
      }

      if ((v48 & 1) == 0)
      {
        v50 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = [*(v29 + 168) stepsDescription];
          *v125 = 138412290;
          *&v125[4] = v51;
          _os_log_impl(&dword_1DC05A000, v50, OS_LOG_TYPE_DEBUG, "Strategy steps: %@", v125, 0xCu);
        }
      }

      goto LABEL_67;
    }

LABEL_68:
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke;
    v95[3] = &unk_1E8620568;
    v95[4] = v29;
    v95[5] = &v96;
    [v30 do:v95];
    *v125 = 0;
    *&v125[8] = v125;
    *&v125[16] = 0x3032000000;
    v126 = __Block_byref_object_copy__24318;
    v127 = __Block_byref_object_dispose__24319;
    v128 = [*(v97 + 40) batch];
    if (*(*&v125[8] + 40))
    {
      v94 = 0;
      v93 = 0;
      v52 = v30;
      v53 = [v29 delegate];
      v54 = [v53 task:v29 shouldUploadBatchesWithDropReason:&v93 shouldQuarantineRecords:&v94 inTransaction:v52];

      v55 = v93;
      if (v54)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v56 = __CPLTaskOSLogDomain_24274();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(*&v125[8] + 40);
            *v119 = 138412290;
            v120 = v57;
            _os_log_impl(&dword_1DC05A000, v56, OS_LOG_TYPE_DEBUG, "Translating local batch to cloud batch: %@", v119, 0xCu);
          }
        }

        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_81;
        v87[3] = &unk_1E86206C8;
        v87[4] = v29;
        v88 = v77;
        v90 = v125;
        v89 = v76;
        [v52 do:v87];
        v58 = *(v29 + 176);
        if (v58)
        {
          if ([v58 count] || CFAbsoluteTimeGetCurrent() - *(v29 + 392) > 3.0 || (objc_msgSend(v29, "session"), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "shouldDefer"), v59, v60))
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v61 = __CPLTaskOSLogDomain_24274();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                v62 = *(v29 + 176);
                *v119 = 138412290;
                v120 = v62;
                _os_log_impl(&dword_1DC05A000, v61, OS_LOG_TYPE_DEBUG, "Cloud batch is: %@", v119, 0xCu);
              }
            }

            v86[0] = MEMORY[0x1E69E9820];
            v86[1] = 3221225472;
            v86[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_82;
            v86[3] = &unk_1E8620568;
            v86[4] = v29;
            v86[5] = &v96;
            [v52 do:v86];
LABEL_83:
            v63 = 0;
            LODWORD(v64) = 3;
LABEL_92:

            if (v63)
            {
LABEL_93:
              LODWORD(v64) = 0;
            }

            v65 = v64 == 0;
            goto LABEL_95;
          }

          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_2_83;
          v85[3] = &unk_1E8620568;
          v85[4] = v29;
          v85[5] = &v96;
          [v52 do:v85];
          v64 = [v52 error];

          if (v64)
          {
            [v29 _clearUploadBatch];
            goto LABEL_83;
          }
        }

        else
        {
          LODWORD(v64) = 0;
        }

        v63 = 1;
        goto LABEL_92;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v66 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = *(v29 + 128);
          v68 = *(*&v125[8] + 40);
          *v119 = 138543874;
          v120 = v67;
          v121 = 2112;
          v122 = v55;
          v123 = 2112;
          v124 = v68;
          _os_log_impl(&dword_1DC05A000, v66, OS_LOG_TYPE_DEFAULT, "Discarding batch to push because %{public}@ is read-only (%@): %@", v119, 0x20u);
        }
      }

      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_76;
      v91[3] = &unk_1E8620478;
      v69 = v78;
      v92 = v69;
      [v52 do:v91];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v109 = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_2;
      v110 = &unk_1E86206A0;
      v114 = v125;
      v111 = v29;
      v118 = v94;
      v112 = v69;
      v113 = v55;
      v115 = &v104;
      v116 = &v96;
      v117 = v102;
      [v52 do:&buf];

      goto LABEL_93;
    }

    v65 = 0;
LABEL_95:
    _Block_object_dispose(v125, 8);

    _Block_object_dispose(&v96, 8);
    objc_autoreleasePoolPop(v33);
  }

  while (v65);
  if (v105[3])
  {
    v96 = MEMORY[0x1E69E9820];
    v97 = 3221225472;
    v98 = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_3_84;
    v99 = &unk_1E8620678;
    v100 = &v104;
    [v29 withThroughputReporter:&v96];
  }

  _Block_object_dispose(v102, 8);

  _Block_object_dispose(&v104, 8);
LABEL_102:

  v70 = *(a1 + 32);
  if ((*(v70 + 432) & 1) == 0)
  {
    *(v70 + 432) = 1;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_176;
    v79[3] = &unk_1E8620478;
    v79[4] = *(a1 + 32);
    [v30 do:v79];
  }

LABEL_32:

  v27 = *MEMORY[0x1E69E9840];
}

void __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_177(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Committed", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_178;
  v11[3] = &unk_1E86209B8;
  v11[4] = v5;
  v12 = v3;
  v13 = *(a1 + 40);
  v7 = v11;
  *buf = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __cpl_dispatch_async_block_invoke_24326;
  v17 = &unk_1E861B4E0;
  v18 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v8, v10);
}

void __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_178(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 152) willRunEngineElement:CPLEngineElementUpload];
  v2 = [*(a1 + 40) error];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 40) error];
LABEL_5:
    v6 = v4;
    v7 = v3;
LABEL_6:
    v28 = v6;
    [v7 _uploadTaskDidFinishWithError:?];
    v8 = *MEMORY[0x1E69E9840];

    return;
  }

  v5 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 32);
  if (v5)
  {
    v4 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) session];
  v10 = [v9 shouldDefer];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = +[CPLErrors sessionHasBeenDeferredError];
LABEL_11:
    v6 = v12;
    v7 = v11;
    goto LABEL_6;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Requesting retry immediately", buf, 2u);
      }
    }

    v14 = *(a1 + 32);
    v15 = [CPLErrors cplErrorWithCode:10000 description:@"Need to restart push-to-transport immediately"];
    v16 = v14;
    goto LABEL_18;
  }

  v18 = *(a1 + 32);
  if (v18[22])
  {
    v19 = [v18[22] count];
    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = *MEMORY[0x1E69E9840];

      [v20 _prepareUploadBatch];
    }

    else
    {
      v25 = *MEMORY[0x1E69E9840];

      [v20 _extractAndUploadOneBatch];
    }
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E696A250];
      v30 = *MEMORY[0x1E696A578];
      v31[0] = @"Not enough disk space";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v15 = [v22 initWithDomain:v23 code:640 userInfo:v24];

      v16 = *(a1 + 32);
LABEL_18:
      [v16 _uploadTaskDidFinishWithError:v15];

      v17 = *MEMORY[0x1E69E9840];
      return;
    }

    v26 = [v18 isCancelled];
    v11 = *(a1 + 32);
    if (v26)
    {
      v12 = +[CPLErrors operationCancelledError];
      goto LABEL_11;
    }

    v27 = *MEMORY[0x1E69E9840];

    [v11 _uploadTaskDidFinishWithError:0];
  }
}

uint64_t __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_174(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _markUploadedTasksDidFinishWithError:0 transaction:*(a1 + 40) error:a2];
  if (!result)
  {
    goto LABEL_32;
  }

  if ([*(*(a1 + 32) + 184) count])
  {
    v5 = [*(a1 + 48) cloudCache];
    v6 = [v5 applyBatch:*(*(a1 + 32) + 184) isFinal:1 direction:2 withError:a2];

    if (!v6)
    {
LABEL_31:
      result = 0;
      goto LABEL_32;
    }
  }

  v7 = [*(a1 + 48) statusCenter];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [*(a1 + 56) batch];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v12 = *v20;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if ([v14 supportsResources] && objc_msgSend(v14, "hasChangeType:", 8))
      {
        if (![v7 notifyStatusForRecordHasChanged:v14 persist:1 error:a2])
        {
          goto LABEL_30;
        }

        if ([v14 isMasterChange])
        {
          v15 = [v14 scopedIdentifier];
          [v8 addObject:v15];
LABEL_14:

          continue;
        }

        if ([v14 isAssetChange] && objc_msgSend(v14, "isFullRecord"))
        {
          v15 = [v14 masterScopedIdentifier];
          if (v15 && ([v8 containsObject:v15] & 1) == 0)
          {
            v17 = [(CPLRecordChange *)CPLMasterChange newRecordWithScopedIdentifier:v15];
            if (![v7 notifyStatusForRecordHasChanged:v17 persist:1 error:a2])
            {

LABEL_30:
              goto LABEL_31;
            }

            [v8 addObject:v15];
          }

          goto LABEL_14;
        }
      }

      else if ([v14 supportsSharingScopedIdentifier])
      {
        if ([v14 hasChangeType:64])
        {
          v16 = [v14 sharingScopeIdentifier];

          if (v16)
          {
            if (([v7 notifyStatusForRecordHasChanged:v14 persist:1 error:a2] & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_28:

  result = [*(a1 + 32) _discardUploadedExtractedBatch:*(a1 + 56) error:a2];
LABEL_32:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __55__CPLUploadPushedChangesTask__extractAndUploadOneBatch__block_invoke_176(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[17];
  v6 = [v4 scope];
  LODWORD(v5) = [v5 setScopeHasChangesToPullFromTransport:v6 error:a2];

  if (!v5)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  if (!*(v7 + 224))
  {
    return 1;
  }

  v8 = *(v7 + 136);

  return [v8 setScopeHasChangesToPullFromTransport:? error:?];
}

uint64_t __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[21];
  v6 = *(*(a1 + 40) + 8);
  obj = 0;
  v7 = v4[62];
  v8 = [v4 session];
  [v8 estimatedRemainingTime];
  LODWORD(v5) = [v5 extractBatch:&obj maximumResourceSize:objc_msgSend(v7 error:{"maximumResourceSizePerBatchForRemainingTime:"), a2}];
  objc_storeStrong((v6 + 40), obj);

  if (!v5)
  {
    return 0;
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  if ((*(*(a1 + 32) + 464) & 1) == 0)
  {
    v16 = [v9 batch];
    *(*(a1 + 32) + 464) = [v16 count] != 0;

    return 1;
  }

  v10 = [v9 batch];
  v11 = [v10 count];

  if (v11)
  {
    return 1;
  }

  v12 = *(*(a1 + 32) + 136);
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [*(a1 + 32) scope];
  v15 = [v12 storeLastDateOfClearedPushRepository:v13 forScope:v14 error:a2];

  return v15;
}

uint64_t __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v4 = *(a1 + 32);
    v5 = v4[17];
    v6 = [v4 scope];
    LODWORD(v5) = [v5 setDidDropSomeRecordsForScope:v6 error:a2];

    if (!v5)
    {
      goto LABEL_26;
    }

    v7 = *(a1 + 40);
    if (*(a1 + 88) == 1)
    {
      v8 = [v7 quarantinedRecords];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v36;
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          if (([v14 isDelete] & 1) == 0)
          {
            v15 = [v14 scopedIdentifier];
            v16 = [v8 addQuarantinedRecordWithScopedIdentifier:v15 recordClass:objc_opt_class() reason:*(a1 + 48) error:a2];

            if (!v16)
            {
              break;
            }
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v11)
            {
              goto LABEL_6;
            }

            goto LABEL_22;
          }
        }

LABEL_27:
        v27 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v8 = [v7 pushRepository];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v17 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v21 = [*(*(&v31 + 1) + 8 * v20) scopedIdentifier];
          v22 = [v8 discardChangeWithScopedIdentifier:v21 error:a2];

          if (!v22)
          {
            goto LABEL_27;
          }

          if (v18 == ++v20)
          {
            v18 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }
    }

LABEL_22:
  }

  v23 = [*(*(*(a1 + 72) + 8) + 40) batch];
  *(*(*(a1 + 64) + 8) + 24) += [v23 count];

  [*(a1 + 32) _clearUploadBatch];
  if ([*(a1 + 32) _discardUploadedExtractedBatch:*(*(*(a1 + 72) + 8) + 40) error:a2])
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [v8 timeIntervalSinceDate:*(*(*(a1 + 80) + 8) + 40)];
    if (v24 <= 10.0)
    {
      v27 = 1;
      goto LABEL_30;
    }

    v25 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_3;
    v30[3] = &unk_1E8620678;
    v30[4] = *(a1 + 64);
    [v25 withThroughputReporter:v30];
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v26 = *(*(a1 + 80) + 8);
    v8 = v8;
    v9 = *(v26 + 40);
    *(v26 + 40) = v8;
    v27 = 1;
LABEL_28:

LABEL_30:
    goto LABEL_31;
  }

LABEL_26:
  v27 = 0;
LABEL_31:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

BOOL __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_81(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) cloudChangeBatchFromBatch:*(*(*(a1 + 56) + 8) + 40) usingMapping:*(a1 + 48) isFinal:1 withError:a2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = v3;

  v6 = [*(*(a1 + 32) + 176) copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 184);
  *(v7 + 184) = v6;

  return *(*(a1 + 32) + 176) != 0;
}

uint64_t __68__CPLUploadPushedChangesTask__extractBatchWithTransaction_andStore___block_invoke_2_83(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _clearUploadBatch];
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 _discardUploadedExtractedBatch:v5 error:a2];
}

- (void)_noteSuccessfulUpdateInTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(CPLEngineSyncTask *)self delegate];
  [delegate task:self noteSuccessfulUpdateInTransaction:transactionCopy];

  [(CPLUploadPushedChangesTask *)self _updateQuotaStrategyAfterSuccessInTransaction:transactionCopy];
}

- (void)_prepareUploadBatch
{
  dispatch_assert_queue_V2(self->_lock);
  [(CPLEngineSyncTask *)self setPhaseDescription:@"preparing batch"];
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v9 = v4;
  v5 = lock;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 store];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_2;
  v6[3] = &unk_1E86205E0;
  v7 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_4;
  v5[3] = &unk_1E86205E0;
  v5[4] = v7;
  v4 = [v3 performWriteTransactionWithBlock:v6 completionHandler:v5];
}

void __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_3;
    v4[3] = &unk_1E8620940;
    v4[4] = *(a1 + 32);
    v5 = v3;
    [v5 do:v4];
  }
}

void __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_5;
  v10[3] = &unk_1E861B290;
  v11 = v3;
  v12 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) error];
LABEL_5:
    v6 = v4;
    v11 = v4;
    v7 = v3;
LABEL_6:
    [v7 _uploadTaskDidFinishWithError:v6];

    return;
  }

  v5 = [*(a1 + 40) isCancelled];
  v3 = *(a1 + 40);
  if (v5)
  {
    v4 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v8 = [*(a1 + 40) session];
  v9 = [v8 shouldDefer];

  v10 = *(a1 + 40);
  if (v9)
  {
    v6 = +[CPLErrors sessionHasBeenDeferredError];
    v11 = v6;
    v7 = v10;
    goto LABEL_6;
  }

  [v10 _checkForRecordExistence];
}

uint64_t __49__CPLUploadPushedChangesTask__prepareUploadBatch__block_invoke_3(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  if (*(v3 + 433) == 1 && [v3 _canUseOverQuotaRule])
  {
    v4 |= 8uLL;
  }

  v5 = objc_alloc_init(CPLRecordTargetMapping);
  v6 = *(a1 + 32);
  v7 = *(v6 + 272);
  *(v6 + 272) = v5;

  v8 = [CPLBeforeUploadCheckItems alloc];
  v9 = *(a1 + 32);
  v10 = v9[22];
  v11 = v9[34];
  v12 = v9[61];
  v13 = [v9 engineLibrary];
  v14 = [v13 transport];
  v15 = [v14 fingerprintContext];
  v16 = [(CPLBeforeUploadCheckItems *)v8 initWithBatch:v10 targetMapping:v11 ruleGroups:v4 pushRepositoryPriority:v12 fingerprintContext:v15 provider:*(a1 + 32)];
  v17 = *(a1 + 32);
  v18 = *(v17 + 240);
  *(v17 + 240) = v16;

  v19 = [*(*(a1 + 32) + 224) scopeIdentifier];
  [*(*(a1 + 32) + 240) setSharingScopeIdentifier:v19];

  v20 = *(a1 + 32);
  if ((v4 & 8) != 0 && !*(v20 + 488) && *(v20 + 467) == 1)
  {
    [*(v20 + 240) setShouldCheckOverQuotaChangesWithServer:1];
    v20 = *(a1 + 32);
  }

  v21 = [*(v20 + 240) prepareBatchBeforeUploadWithError:{a2, a2}];
  v22 = *(a1 + 32);
  v23 = *(v22 + 248);
  *(v22 + 248) = 0;

  if (v21)
  {
    [*(a1 + 32) _prepareTransportGroupForOneBatch];
  }

  return v21;
}

- (BOOL)_canUseOverQuotaRule
{
  scope = [(CPLEngineScopedTask *)self scope];
  v3 = +[CPLScopeChange scopeWithTypeHasQuota:](CPLScopeChange, "scopeWithTypeHasQuota:", [scope scopeType]);

  if (v3)
  {
    return !+[CPLUploadPushedChangesTask disableOverQuotaRule];
  }

  else
  {
    return 0;
  }
}

- (void)_generateNeededDerivativesWithFetchCache:(id)cache fingerprintContext:(id)context
{
  cacheCopy = cache;
  contextCopy = context;
  [(CPLEngineSyncTask *)self setPhaseDescription:@"generating derivatives"];
  dispatch_assert_queue_V2(self->_lock);
  recordsNeedingGeneratedDerivatives = [(CPLBeforeUploadCheckItems *)self->_checkItems recordsNeedingGeneratedDerivatives];
  if ([recordsNeedingGeneratedDerivatives count])
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];
    shouldGenerateDerivatives = [store shouldGenerateDerivatives];

    if (shouldGenerateDerivatives)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke;
      v27[3] = &unk_1E861B2B8;
      v28 = recordsNeedingGeneratedDerivatives;
      selfCopy = self;
      v30 = cacheCopy;
      v31 = contextCopy;
      v12 = MEMORY[0x1E128EBA0](v27);
      session = [(CPLEngineSyncTask *)self session];
      needsToAcquireRescheduler = [session needsToAcquireRescheduler];

      if (!needsToAcquireRescheduler)
      {
        v12[2](v12);
LABEL_14:

        goto LABEL_15;
      }

      engineLibrary2 = [(CPLEngineSyncTask *)self engineLibrary];
      transport = [engineLibrary2 transport];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke_2;
      v24 = &unk_1E861B618;
      selfCopy2 = self;
      v17 = v12;
      v26 = v17;
      v18 = [transport acquireReschedulerTaskWithCompletionHandler:&v21];
      acquireReschedulerTask = self->_acquireReschedulerTask;
      self->_acquireReschedulerTask = v18;

      v20 = self->_acquireReschedulerTask;
      if (!v20)
      {
        v17[2](v17);
        goto LABEL_13;
      }

      if (!self->_highPriority)
      {
        if ([(CPLBeforeUploadCheckItems *)self->_checkItems willUploadSomeResources:v21])
        {
LABEL_9:
          [(CPLEngineAcquireReschedulerTask *)self->_acquireReschedulerTask setAllowsFetchCache:1];
          [(CPLEngineSyncTask *)self launchTransportTask:self->_acquireReschedulerTask withTransportGroup:self->_transportGroup];
LABEL_13:

          goto LABEL_14;
        }

        v20 = self->_acquireReschedulerTask;
      }

      [(CPLEngineAcquireReschedulerTask *)v20 setHighPriorityBackground:1, v21, v22, v23, v24, selfCopy2];
      goto LABEL_9;
    }
  }

  [(CPLUploadPushedChangesTask *)self _uploadBatchWithFetchCache:cacheCopy];
LABEL_15:
}

void __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) objectEnumerator];
  *(*(a1 + 40) + 400) = CFAbsoluteTimeGetCurrent();
  [*(a1 + 40) _didStartTaskWithKey:@"derivatives" recordCount:{objc_msgSend(*(a1 + 32), "count")}];
  v2 = *(a1 + 40);
  v3 = [v2 engineLibrary];
  v4 = [v3 store];
  v5 = [v4 derivativesCache];
  [v2 _generateDerivativesForNextRecord:v6 usingDerivativesCache:v5 fetchCache:*(a1 + 48) fingerprintContext:*(a1 + 56)];
}

void __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 120);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke_3;
  v11[3] = &unk_1E861B3D0;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)_uploadBatchWithFetchCache:(uint64_t)cache
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (cache)
  {
    dispatch_assert_queue_V2(*(cache + 120));
    if ([cache isCancelled])
    {
      batchToUpload = +[CPLErrors operationCancelledError];
      [cache _uploadTaskDidFinishWithError:batchToUpload];
    }

    else
    {
      batchToUpload = [*(cache + 240) batchToUpload];
      if ([batchToUpload count])
      {
        [cache setPhaseDescription:@"uploading batch"];
        [cache withThroughputReporter:&__block_literal_global_96];
        v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(batchToUpload, "count")}];
        v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(batchToUpload, "count")}];
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLTaskOSLogDomain_24274();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v43 = batchToUpload;
            _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Launching transport upload task for %@", buf, 0xCu);
          }
        }

        Current = CFAbsoluteTimeGetCurrent();
        [cache _didStartTaskWithKey:@"upload" recordCount:{objc_msgSend(batchToUpload, "count")}];
        [*(cache + 272) startTrackingUpdates];
        v9 = *(cache + 144);
        scope = [cache scope];
        v11 = *(cache + 272);
        v12 = *(cache + 264);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_100;
        v38[3] = &unk_1E8620780;
        v38[4] = cache;
        v39 = v5;
        v40 = v6;
        v41 = batchToUpload;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_3;
        v31 = &unk_1E86207D0;
        cacheCopy = cache;
        v27 = v39;
        v33 = v27;
        v13 = v40;
        v34 = v13;
        v37 = Current;
        v14 = v3;
        v35 = v14;
        v15 = v41;
        v36 = v15;
        v16 = [v9 uploadBatchTaskForBatch:v15 scope:scope targetMapping:v11 transportScopeMapping:v12 progressHandler:v38 completionHandler:&v28];
        v17 = *(cache + 304);
        *(cache + 304) = v16;

        v18 = *(cache + 304);
        if (v18)
        {
          [v18 setSharedScope:*(cache + 224)];
          [*(cache + 304) setAllowsFetchCache:1];
          [*(cache + 304) setFetchCache:v14];
          if ((*(cache + 468) & 1) != 0 || ([*(cache + 240) willUploadSomeResources] & 1) == 0)
          {
            [*(cache + 304) setHighPriorityBackground:1];
          }

          if (*(cache + 411) == 1)
          {
            countOfAssetsWithResourcesToUpload = [*(cache + 240) countOfAssetsWithResourcesToUpload];
            if (countOfAssetsWithResourcesToUpload)
            {
              [*(cache + 416) setRoughCPLRecordCount:countOfAssetsWithResourcesToUpload];
            }

            estimatedUploadResourceSize = [*(cache + 240) estimatedUploadResourceSize];
            if (estimatedUploadResourceSize)
            {
              [*(cache + 416) setRoughCPLUploadEstimatedSize:estimatedUploadResourceSize];
            }
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v21 = __CPLTaskOSLogDomain_24274();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              foreground = [*(cache + 304) foreground];
              v23 = " with background priority";
              if (foreground)
              {
                v23 = " with foreground priority";
              }

              *buf = 138412546;
              v43 = v15;
              v44 = 2080;
              v45 = v23;
              _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEBUG, "Starting to upload %@%s", buf, 0x16u);
            }
          }

          [*(cache + 304) foreground];
          [*(cache + 304) hash];
          kdebug_trace();
          [cache launchTransportTask:*(cache + 304) withTransportGroup:*(cache + 416)];
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLTaskOSLogDomain_24274();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v15;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Can't create a transport upload task for %@", buf, 0xCu);
            }
          }

          v25 = [CPLErrors underlyingErrorWithReason:@"Can't create an upload task for %@", v15, v27, v28, v29, v30, v31, cacheCopy, v33, v34, v35];
          [cache _uploadTaskDidFinishWithError:v25];
        }
      }

      else
      {
        [cache _extractAndUploadOneBatch];
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_100(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 120);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_2;
  v13[3] = &unk_1E8620758;
  v13[4] = v7;
  v14 = v5;
  v18 = a3;
  v15 = v6;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v20 = v9;
  v10 = v8;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 304) foreground];
  [*(*(a1 + 32) + 304) hash];
  kdebug_trace();
  v4 = [*(a1 + 32) store];
  v5 = [v4 cloudCache];
  [v5 updateStoredTargetsFromTargetMapping:*(*(a1 + 32) + 272)];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 120);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_4;
  v19[3] = &unk_1E86207A8;
  v19[4] = v7;
  v20 = v3;
  v9 = v6;
  v10 = *(a1 + 48);
  v23 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v21 = v14;
  v22 = v13;
  v15 = v19;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v25 = v15;
  v16 = v8;
  v17 = v3;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v18);
}

uint64_t __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_4(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 304);
      *buf = 138412546;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ finished with error %@", buf, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    v5 = 1;
  }

  else
  {
    [*(a1 + 32) _deleteGeneratedResourcesAfterError:0];
    v5 = *(a1 + 40) != 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = v7;
  v10 = v9;
  if (v6)
  {
    if (v5)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __110__CPLUploadPushedChangesTask__reportRemainingUploadSizeWithReportedUploadedSizes_totalSizesPerRecord_success___block_invoke;
      v32 = &unk_1E8620710;
      *&v33 = v9;
      *(&v33 + 1) = &v27;
      [v8 enumerateKeysAndObjectsUsingBlock:buf];
      if (v28[3])
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __110__CPLUploadPushedChangesTask__reportRemainingUploadSizeWithReportedUploadedSizes_totalSizesPerRecord_success___block_invoke_2;
        v26[3] = &unk_1E8620678;
        v26[4] = &v27;
        [v6 withThroughputReporter:v26];
      }

      _Block_object_dispose(&v27, 8);
    }

    [v6 withThroughputReporter:&__block_literal_global_91];
  }

  v11 = *(a1 + 40);
  if (!v11 || ([v11 isCPLErrorWithCode:18] & 1) == 0)
  {
    [*(*(a1 + 32) + 304) approximativeResourcesUploadRate];
    if (v12 > 0.0)
    {
      [*(*(a1 + 32) + 496) updateApproximativeUploadRate:?];
    }
  }

  v13 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v14 = v13[38];
    v13[38] = 0;

    v15 = [*(a1 + 40) isCPLOperationCancelledError];
    v16 = *(a1 + 32);
    if (v15)
    {
      [v16 _didFinishTaskWithKey:@"upload" error:0 cancelled:1];
    }

    else
    {
      [v16 _didFinishTaskWithKey:@"upload" error:1 cancelled:0];
    }

    result = [*(a1 + 32) _uploadTaskDidFinishWithError:*(a1 + 40)];
  }

  else
  {
    [v13 _didFinishTaskWithKey:@"upload" error:0 cancelled:0];
    [*(*(a1 + 32) + 152) willRunEngineElement:CPLEngineElementSuccessfulUpload];
    [*(*(a1 + 32) + 152) resetBackoffInterval];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v19 = *(a1 + 80);
        v20 = [*(*(a1 + 32) + 208) count];
        v21 = @"none";
        v22 = *(a1 + 72);
        if (*(a1 + 64))
        {
          v21 = *(a1 + 64);
        }

        *buf = 134218754;
        *&buf[4] = Current - v19;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2114;
        v32 = v21;
        LOWORD(v33) = 2112;
        *(&v33 + 2) = v22;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Transport successfully uploaded in %.2fs (%lu resources uploaded) - cache: %{public}@: %@", buf, 0x2Au);
      }
    }

    v23 = *(a1 + 32);
    if (v23[38])
    {
      result = [v23 _popNextBatchAndContinue];
    }

    else
    {
      result = [v23 _uploadTaskDidFinishWithError:0];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void __110__CPLUploadPushedChangesTask__reportRemainingUploadSizeWithReportedUploadedSizes_totalSizesPerRecord_success___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedLongLongValue];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  v8 = [v7 unsignedLongLongValue];
  if (v8 > v6)
  {
    *(*(*(a1 + 40) + 8) + 24) += v8 - v6;
  }
}

void __57__CPLUploadPushedChangesTask__uploadBatchWithFetchCache___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (v2)
  {
    v11 = [v9 objectForKeyedSubscript:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedLongLongValue];
      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14 = v13;
      v15 = [v8 objectForKeyedSubscript:v7];
      v16 = [v15 unsignedLongLongValue];

      v17 = (v3 * v14);
      v18 = v17 - v16;
      if (v17 <= v16)
      {
LABEL_16:
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
        [v8 setObject:v22 forKeyedSubscript:v7];

        goto LABEL_17;
      }

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = [v10 recordWithScopedIdentifier:v7];
      if ([v19 supportsResources] && objc_msgSend(v19, "hasChangeType:", 8))
      {
        v20 = [v19 realResourceSize];
      }

      else
      {
        v20 = 0;
      }

      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
      [v9 setObject:v21 forKeyedSubscript:v7];

      if (v20)
      {
        v17 = (v3 * v20);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __148__CPLUploadPushedChangesTask__reportUploadSizeForRecordWithScopedIdentifier_uploadProgress_reportedUploadedSizes_totalSizesPerRecord_batchToUpload___block_invoke;
    v39[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
    v39[4] = v18;
    [v2 withThroughputReporter:v39];
    goto LABEL_16;
  }

LABEL_18:

  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = *(*(a1 + 32) + 208);
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        v29 = [v28 resource];
        v30 = [v29 itemScopedIdentifier];
        if ([v30 isEqual:*(a1 + 40)])
        {
          v31 = +[CPLResource resourceTypeTrackedForUpload:](CPLResource, "resourceTypeTrackedForUpload:", [v29 resourceType]);

          if (v31)
          {
            v32 = [*(a1 + 32) engineLibrary];
            LODWORD(v33) = *(a1 + 72);
            [v32 notifyAttachedObjectsUploadTask:v28 didProgress:v33];

            goto LABEL_29;
          }
        }

        else
        {
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v25);
  }

LABEL_29:

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __90__CPLUploadPushedChangesTask__generateNeededDerivativesWithFetchCache_fingerprintContext___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 296);
  *(v2 + 296) = 0;

  if (a1[5])
  {
    v4 = a1[4];

    return [v4 _uploadTaskDidFinishWithError:?];
  }

  else
  {
    v6 = *(a1[6] + 16);

    return v6();
  }
}

- (void)_generateDerivativesForNextRecord:(id)record usingDerivativesCache:(id)cache fetchCache:(id)fetchCache fingerprintContext:(id)context
{
  v68 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  cacheCopy = cache;
  fetchCacheCopy = fetchCache;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_lock);
  session = [(CPLEngineSyncTask *)self session];
  shouldDefer = [session shouldDefer];

  if (shouldDefer)
  {
    [(CPLUploadPushedChangesTask *)self _didFinishTaskWithKey:@"derivatives" error:1 cancelled:0];
    v16 = +[CPLErrors sessionHasBeenDeferredError];
LABEL_5:
    v17 = v16;
    [(CPLUploadPushedChangesTask *)self _uploadTaskDidFinishWithError:v16];

    goto LABEL_6;
  }

  if ([(CPLEngineSyncTask *)self isCancelled])
  {
    [(CPLUploadPushedChangesTask *)self _didFinishTaskWithKey:@"derivatives" error:0 cancelled:1];
    v16 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  nextObject = [recordCopy nextObject];
  if (nextObject)
  {
    [(CPLEngineSyncTask *)self withThroughputReporter:&__block_literal_global_133];
    v35 = [CPLTransaction newTransactionWithIdentifier:@"cpl.generatederivatives" description:@"generating derivatives" keepPower:1];
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v64 = 0;
    block = 0;
    p_block = &block;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__24318;
    v61 = __Block_byref_object_dispose__24319;
    v62 = 0;
    v20 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v20 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];
    objc_storeStrong(&self->_generateDerivativesProgress, v20);
    objc_storeStrong(&self->_generateDerivativesChange, nextObject);
    self->_generateDerivativesTotalSize = [nextObject totalResourceSize];
    self->_generateDerivativesLastFractionCompleted = 0.0;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_2;
    v52[3] = &unk_1E8620898;
    v52[4] = self;
    v33 = v20;
    v53 = v33;
    v55 = v63;
    v21 = cacheCopy;
    v54 = v21;
    v56 = &block;
    [(CPLUploadPushedChangesTask *)self _installGenerateDerivativesCancellationHandler:v52];
    v22 = [nextObject fingerprintSchemeWithContext:contextCopy];
    isValid = [v22 isValid];
    if (isValid)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_2_154;
      v38[3] = &unk_1E8620918;
      v39 = v21;
      v40 = nextObject;
      selfCopy = self;
      v42 = v22;
      v47 = &block;
      v48 = v63;
      v43 = recordCopy;
      v44 = fetchCacheCopy;
      v45 = contextCopy;
      v46 = v35;
      [v33 performAsCurrentWithPendingUnitCount:1 usingBlock:v38];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v27 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          relatedIdentifier = [nextObject relatedIdentifier];
          *buf = 138412546;
          *&buf[4] = nextObject;
          *&buf[12] = 2114;
          *&buf[14] = relatedIdentifier;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "Invalid fingerprint scheme for %@ (related identifier '%{public}@')", buf, 0x16u);
        }
      }

      lock = self->_lock;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_146;
      v49[3] = &unk_1E861B1C8;
      v49[4] = self;
      v50 = nextObject;
      v51 = v35;
      v30 = v49;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __cpl_dispatch_async_block_invoke_24326;
      v66 = &unk_1E861B4E0;
      v67 = v30;
      v31 = lock;
      v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v31, v32);
    }

    _Block_object_dispose(&block, 8);
    _Block_object_dispose(v63, 8);

    if ((isValid & 1) == 0)
    {

      goto LABEL_6;
    }
  }

  else
  {
    v23 = self->_lock;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_5;
    v36[3] = &unk_1E861B290;
    v36[4] = self;
    v37 = fetchCacheCopy;
    v24 = v36;
    block = MEMORY[0x1E69E9820];
    p_block = 3221225472;
    v59 = __cpl_dispatch_async_block_invoke_24326;
    v60 = &unk_1E861B4E0;
    v61 = v24;
    v25 = v23;
    v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v25, v26);
  }

LABEL_6:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 120));
  result = [*(a1 + 40) cancel];
  v3 = *(*(a1 + 56) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    [*(a1 + 32) _discardGenerateDerivativesProgress];
    v4 = [*(a1 + 32) session];
    v5 = [v4 shouldDefer];

    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 _didFinishTaskWithKey:@"derivatives" error:1 cancelled:0];
      v7 = *(a1 + 32);
      +[CPLErrors sessionHasBeenDeferredError];
    }

    else
    {
      [v6 _didFinishTaskWithKey:@"derivatives" error:0 cancelled:1];
      v7 = *(a1 + 32);
      +[CPLErrors operationCancelledError];
    }
    v8 = ;
    [v7 _uploadTaskDidFinishWithError:v8];

    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_3;
    v10[3] = &unk_1E8620870;
    v10[4] = *(a1 + 64);
    return [CPLCallObserver observeAsyncCallOn:v9 selector:sel_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler_ block:v10];
  }

  return result;
}

void __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_146(id *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  [a1[4] _didFinishTaskWithKey:@"derivatives" error:1 cancelled:0];
  v2 = [a1[5] scopedIdentifier];
  v10 = v2;
  v11[0] = @"Invalid fingerprint scheme";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = @"CPLErrorRejectedRecordIdentifiersAndReasons";
  v9 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [a1[5] scopedIdentifier];
  v6 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v4 description:@"%@ has an invalid fingerprint scheme", v5];

  [a1[4] _uploadTaskDidFinishWithError:v6];
  [a1[6] endTransaction];

  v7 = *MEMORY[0x1E69E9840];
}

void __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_2_154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v10 = *(a1 + 40);
  v4 = *(v10.i64[1] + 200);
  v5 = *(a1 + 96);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_3_155;
  v11[3] = &unk_1E86208F0;
  v18 = v5;
  v6 = v10.i64[0];
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v9;
  v14 = *(a1 + 32);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  [v2 generateDerivativesForChange:v6 derivativesFilter:v4 fingerprintScheme:v3 completionHandler:v11];
}

void __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _finishReportingDerivativesIsNecessary];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(*(a1 + 32) + 240) recordsNeedingGeneratedDerivatives];
      v4 = [v3 count];
      v5 = CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 400);
      v7 = 134218240;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Successfully generated derivatives for %lu records in %.2fs. Starting upload.", &v7, 0x16u);
    }
  }

  [*(a1 + 32) _didFinishTaskWithKey:@"derivatives" error:0 cancelled:0];
  [(CPLUploadPushedChangesTask *)*(a1 + 32) _uploadBatchWithFetchCache:?];
  v6 = *MEMORY[0x1E69E9840];
}

void __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_3_155(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_4;
  v24[3] = &unk_1E86208C8;
  v24[4] = v10;
  v25 = v8;
  v33 = *(a1 + 96);
  v26 = v9;
  v27 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v28 = v17;
  v29 = v16;
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  v32 = *(a1 + 88);
  v18 = v24;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v35 = v18;
  v19 = v11;
  v20 = v7;
  v21 = v9;
  v22 = v8;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v19, v23);
}

void __116__CPLUploadPushedChangesTask__generateDerivativesForNextRecord_usingDerivativesCache_fetchCache_fingerprintContext___block_invoke_4(uint64_t a1)
{
  [*(*(*(a1 + 120) + 8) + 40) callDidFinish];
  v2 = [*(a1 + 32) session];
  v3 = [v2 predictor];
  [v3 updatePredictionsWithDerivativesStatistics:*(a1 + 40)];

  v4 = *(*(a1 + 128) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    [*(a1 + 32) _discardGenerateDerivativesProgress];
    v5 = *(a1 + 48);
    if (v5)
    {
      [*(a1 + 32) _didFinishTaskWithKey:@"derivatives" error:1 cancelled:{objc_msgSend(v5, "isCPLOperationCancelledError")}];
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);

      [v6 _uploadTaskDidFinishWithError:v7];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v15 = 0;
      v12 = [v8 _copyResourceChangeFromChange:v9 toChange:v10 fingerprintScheme:v11 error:&v15];
      v13 = v15;
      v14 = v13;
      if (v12)
      {
        [*(a1 + 32) _generateDerivativesForNextRecord:*(a1 + 80) usingDerivativesCache:*(a1 + 88) fetchCache:*(a1 + 96) fingerprintContext:*(a1 + 104)];
      }

      else
      {
        [*(a1 + 32) _didFinishTaskWithKey:@"derivatives" error:1 cancelled:{objc_msgSend(v13, "isCPLOperationCancelledError")}];
        [*(a1 + 32) _uploadTaskDidFinishWithError:v14];
      }
    }
  }
}

- (void)_finishReportingDerivativesIsNecessary
{
  dispatch_assert_queue_V2(self->_lock);
  derivativesSizeReportTimer = self->_derivativesSizeReportTimer;
  if (derivativesSizeReportTimer)
  {
    dispatch_source_cancel(derivativesSizeReportTimer);
    v4 = self->_derivativesSizeReportTimer;
    self->_derivativesSizeReportTimer = 0;

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__CPLUploadPushedChangesTask__finishReportingDerivativesIsNecessary__block_invoke;
    v5[3] = &unk_1E8620848;
    v5[4] = self;
    [(CPLEngineSyncTask *)self withThroughputReporter:v5];
    self->_derivativesSizeToReport = 0;
  }

  [(CPLEngineSyncTask *)self withThroughputReporter:&__block_literal_global_128_24440];
}

- (void)_discardGenerateDerivativesProgress
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_lock);
  generateDerivativesProgress = self->_generateDerivativesProgress;
  if (!generateDerivativesProgress)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ called twice", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:1138 description:{@"%@ called twice", v15}];

    abort();
  }

  [(NSProgress *)generateDerivativesProgress removeObserver:self forKeyPath:@"fractionCompleted"];
  [(NSProgress *)self->_generateDerivativesProgress setCompletedUnitCount:[(NSProgress *)self->_generateDerivativesProgress totalUnitCount]];
  [(NSProgress *)self->_generateDerivativesProgress setCancellationHandler:0];
  if (self->_generateDerivativesDeferredHandler)
  {
    session = [(CPLEngineSyncTask *)self session];
    [session removeDeferHandler:self->_generateDerivativesDeferredHandler];

    generateDerivativesDeferredHandler = self->_generateDerivativesDeferredHandler;
    self->_generateDerivativesDeferredHandler = 0;
  }

  generateDerivativesCancellationHandler = self->_generateDerivativesCancellationHandler;
  self->_generateDerivativesCancellationHandler = 0;

  v8 = self->_generateDerivativesProgress;
  self->_generateDerivativesProgress = 0;

  generateDerivativesChange = self->_generateDerivativesChange;
  self->_generateDerivativesChange = 0;

  self->_generateDerivativesTotalSize = 0;
  self->_generateDerivativesLastFractionCompleted = 0.0;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CPLUploadPushedChangesTask_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v13[3] = &unk_1E861B290;
  v14 = objectCopy;
  selfCopy = self;
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v17 = v9;
  v10 = lock;
  v11 = objectCopy;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void *__77__CPLUploadPushedChangesTask_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 328);
  if (v2 == result)
  {
    result = [result fractionCompleted];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *(v6 + 352);
    if (v5 > v7)
    {
      v8 = ((v5 - v7) * *(v6 + 344));
      v9 = *(v6 + 336);
      [*(v6 + 328) fractionCompleted];
      result = [v6 _generatingDerivativesForChange:v9 fractionCompleted:v8 chunkLength:?];
      *(*(a1 + 40) + 352) = v5;
    }
  }

  return result;
}

- (void)_generatingDerivativesForChange:(id)change fractionCompleted:(double)completed chunkLength:(unint64_t)length
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696AAF0] stringFromByteCount:length countStyle:0];
      *buf = 138412802;
      v19 = changeCopy;
      v20 = 2048;
      v21 = completed * 100.0;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Generating derivatives for %@: %.0f%% (chunk length: %@)", buf, 0x20u);
    }
  }

  self->_derivativesSizeToReport += length;
  if (!self->_derivativesSizeReportTimer)
  {
    v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_lock);
    derivativesSizeReportTimer = self->_derivativesSizeReportTimer;
    self->_derivativesSizeReportTimer = v11;

    v13 = self->_derivativesSizeReportTimer;
    v14 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v15 = self->_derivativesSizeReportTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __92__CPLUploadPushedChangesTask__generatingDerivativesForChange_fractionCompleted_chunkLength___block_invoke;
    handler[3] = &unk_1E861A940;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_activate(self->_derivativesSizeReportTimer);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __92__CPLUploadPushedChangesTask__generatingDerivativesForChange_fractionCompleted_chunkLength___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[46])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __92__CPLUploadPushedChangesTask__generatingDerivativesForChange_fractionCompleted_chunkLength___block_invoke_2;
    v5[3] = &unk_1E8620848;
    v5[4] = v2;
    [v2 withThroughputReporter:v5];
    *(*(a1 + 32) + 360) = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 368);
    *(v3 + 368) = 0;
  }
}

- (void)_installGenerateDerivativesCancellationHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_lock);
  if (self->_generateDerivativesCancellationHandler)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "%@ called twice", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v20 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v19 lineNumber:1086 description:{@"%@ called twice", v20}];

    abort();
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__CPLUploadPushedChangesTask__installGenerateDerivativesCancellationHandler___block_invoke;
  v23[3] = &unk_1E861AA50;
  v23[4] = self;
  v6 = handlerCopy;
  v24 = v6;
  v7 = MEMORY[0x1E128EBA0](v23);
  v8 = [v7 copy];
  generateDerivativesCancellationHandler = self->_generateDerivativesCancellationHandler;
  self->_generateDerivativesCancellationHandler = v8;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [standardUserDefaults BOOLForKey:@"CPLAllowDeferringDerivativesGeneration"];

  if (v11)
  {
    session = [(CPLEngineSyncTask *)self session];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__CPLUploadPushedChangesTask__installGenerateDerivativesCancellationHandler___block_invoke_3;
    v21[3] = &unk_1E8620820;
    v22 = v7;
    v13 = [session addDeferHandler:v21];
    generateDerivativesDeferredHandler = self->_generateDerivativesDeferredHandler;
    self->_generateDerivativesDeferredHandler = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __77__CPLUploadPushedChangesTask__installGenerateDerivativesCancellationHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 5000000000);
  v3 = *(*(a1 + 32) + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CPLUploadPushedChangesTask__installGenerateDerivativesCancellationHandler___block_invoke_2;
  block[3] = &unk_1E861B4E0;
  v5 = *(a1 + 40);
  dispatch_after(v2, v3, block);
}

- (BOOL)_copyResourceChangeFromChange:(id)change toChange:(id)toChange fingerprintScheme:(id)scheme error:(id *)error
{
  changeCopy = change;
  toChangeCopy = toChange;
  schemeCopy = scheme;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__24318;
  v30 = __Block_byref_object_dispose__24319;
  v31 = 0;
  v13 = [toChangeCopy propertiesForChangeType:8];
  if ([schemeCopy isForStableHash])
  {
    [toChangeCopy cplCopyProperties:v13 fromObject:changeCopy withCopyBlock:0];
  }

  else
  {
    v14 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
    session = [(CPLEngineSyncTask *)self session];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__CPLUploadPushedChangesTask__copyResourceChangeFromChange_toChange_fingerprintScheme_error___block_invoke;
    v20[3] = &unk_1E86207F8;
    v24 = &v32;
    v16 = session;
    v25 = &v26;
    v21 = v16;
    selfCopy = self;
    v17 = v14;
    v23 = v17;
    [toChangeCopy cplCopyProperties:v13 fromObject:changeCopy withCopyBlock:v20];
  }

  v18 = *(v33 + 24);
  if (error && (v33[3] & 1) == 0)
  {
    *error = v27[5];
    v18 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18 & 1;
}

uint64_t __93__CPLUploadPushedChangesTask__copyResourceChangeFromChange_toChange_fingerprintScheme_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) shouldDefer])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = +[CPLErrors sessionHasBeenDeferredError];
LABEL_6:
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

LABEL_7:
    v13 = 1;
    goto LABEL_8;
  }

  if ([*(a1 + 40) isCancelled])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = +[CPLErrors operationCancelledError];
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"resources"])
  {
    v38 = v9;
    v39 = v8;
    v16 = [v8 resources];
    v17 = [v16 cplDeepCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        v22 = 0;
        do
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * v22);
          v24 = [v23 identity];
          v25 = [v24 stableHash];
          if (v25)
          {
          }

          else
          {
            v26 = [v24 fileURL];
            if (v26)
            {
              v27 = v26;
              v28 = [v7 requiresStableHashForResourceType:{objc_msgSend(v23, "resourceType")}];

              if (v28)
              {
                v29 = *(a1 + 48);
                v30 = [v24 fileURL];
                v31 = *(*(a1 + 64) + 8);
                obj = *(v31 + 40);
                v32 = [v29 fingerPrintForFileAtURL:v30 error:&obj];
                objc_storeStrong((v31 + 40), obj);
                [v24 setStableHash:v32];

                v33 = [v24 stableHash];

                if (!v33)
                {
                  *(*(*(a1 + 56) + 8) + 24) = 0;
                  goto LABEL_31;
                }

                if ([*(a1 + 32) shouldDefer])
                {
                  *(*(*(a1 + 56) + 8) + 24) = 0;
                  v35 = +[CPLErrors sessionHasBeenDeferredError];
LABEL_30:
                  v36 = *(*(a1 + 64) + 8);
                  v37 = *(v36 + 40);
                  *(v36 + 40) = v35;

LABEL_31:
                  goto LABEL_32;
                }

                if ([*(a1 + 40) isCancelled])
                {
                  *(*(*(a1 + 56) + 8) + 24) = 0;
                  v35 = +[CPLErrors operationCancelledError];
                  goto LABEL_30;
                }
              }
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v34 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
        v20 = v34;
      }

      while (v34);
    }

LABEL_32:

    [v7 setResources:v18];
    v13 = 1;
    v9 = v38;
    v8 = v39;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_deleteGeneratedResourcesAfterError:(id)error
{
  errorCopy = error;
  if (!errorCopy || [(CPLEngineSyncTask *)self diskPressureState])
  {
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];
    derivativesCache = [store derivativesCache];
    [derivativesCache discardCache];
  }
}

- (void)_checkForRecordExistence
{
  dispatch_assert_queue_V2(self->_lock);
  if (![(CPLEngineSyncTask *)self isCancelled])
  {
    recordsToFetch = [(CPLBeforeUploadCheckItems *)self->_checkItems recordsToFetch];
    if (![recordsToFetch count])
    {
      [(CPLUploadPushedChangesTask *)self _checkPrioritiesWithFetchCache:0];
      goto LABEL_13;
    }

    [(CPLEngineSyncTask *)self setPhaseDescription:@"checking records on server"];
    Current = CFAbsoluteTimeGetCurrent();
    -[CPLUploadPushedChangesTask _didStartTaskWithKey:recordCount:](self, "_didStartTaskWithKey:recordCount:", @"existence-check", [recordsToFetch count]);
    [(CPLRecordTargetMapping *)self->_targetMapping startTrackingUpdates];
    transport = self->_transport;
    targetMapping = self->_targetMapping;
    transportScopeMapping = self->_transportScopeMapping;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke;
    v17[3] = &unk_1E8620650;
    v17[4] = self;
    v18 = recordsToFetch;
    v19 = Current;
    v9 = [(CPLEngineTransport *)transport fetchRecordsTaskForRecordsWithScopedIdentifiers:v18 targetMapping:targetMapping transportScopeMapping:transportScopeMapping completionHandler:v17];
    fetchRecordsTask = self->_fetchRecordsTask;
    self->_fetchRecordsTask = v9;

    v11 = self->_fetchRecordsTask;
    if (!v11)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "We should have a task to check for existing records here", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:636 description:@"We should have a task to check for existing records here"];

      abort();
    }

    if (!self->_highPriority)
    {
      if ([(CPLBeforeUploadCheckItems *)self->_checkItems willUploadSomeResources])
      {
LABEL_11:
        [(CPLEngineTransportFetchRecordsTask *)self->_fetchRecordsTask setAllowsFetchCache:1];
        [(CPLEngineSyncTask *)self launchTransportTask:self->_fetchRecordsTask withTransportGroup:self->_transportGroup];

LABEL_13:
        return;
      }

      v11 = self->_fetchRecordsTask;
    }

    [(CPLEngineTransportFetchRecordsTask *)v11 setHighPriorityBackground:1];
    goto LABEL_11;
  }

  v15 = +[CPLErrors operationCancelledError];
  [(CPLUploadPushedChangesTask *)self _uploadTaskDidFinishWithError:v15];
}

void __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1[4] + 288) fetchCache];
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(v9 + 120);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_2;
  v18[3] = &unk_1E8620628;
  v18[4] = v9;
  v19 = v6;
  v20 = v5;
  v11 = v8;
  v23 = a1[6];
  v21 = v11;
  v22 = v7;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_24326;
  block[3] = &unk_1E861B4E0;
  v25 = v12;
  v13 = v10;
  v14 = v7;
  v15 = v5;
  v16 = v6;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 288);
  *(v2 + 288) = 0;

  v4 = [*(a1 + 32) store];
  v5 = [v4 cloudCache];
  [v5 updateStoredTargetsFromTargetMapping:*(*(a1 + 32) + 272)];

  v6 = *(a1 + 40);
  if (v6)
  {
    if ([v6 isCPLOperationCancelledError])
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v7 = 1;
      v8 = 0;
    }

    [*(a1 + 32) _didFinishTaskWithKey:@"existence-check" error:v7 cancelled:v8];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *MEMORY[0x1E69E9840];

    [v13 _uploadTaskDidFinishWithError:v14];
  }

  else
  {
    v9 = [*(a1 + 32) isCancelled];
    v10 = *(a1 + 32);
    if (v9)
    {
      [v10 _didFinishTaskWithKey:@"existence-check" error:0 cancelled:1];
      v11 = *(a1 + 32);
      v31 = +[CPLErrors operationCancelledError];
      [v11 _uploadTaskDidFinishWithError:?];
      v12 = *MEMORY[0x1E69E9840];
    }

    else
    {
      [v10 _didFinishTaskWithKey:@"existence-check" error:0 cancelled:0];
      if ([*(*(a1 + 32) + 240) shouldCheckOverQuotaChangesWithServer])
      {
        v16 = [*(a1 + 32) store];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_3;
        v33[3] = &unk_1E86205E0;
        v33[4] = *(a1 + 32);
        v17 = [v16 performWriteTransactionWithBlock:v33 completionHandler:&__block_literal_global_24464];
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLTaskOSLogDomain_24274();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(a1 + 48) count];
          v20 = [*(a1 + 56) count];
          v21 = [*(*(a1 + 32) + 240) fetchRules];
          v22 = [v21 componentsJoinedByString:@"/"];
          v23 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
          v24 = *(a1 + 64);
          if (!v24)
          {
            v24 = @"none";
          }

          *buf = 134219010;
          v35 = v19;
          v36 = 2048;
          v37 = v20;
          v38 = 2114;
          v39 = v22;
          v40 = 2048;
          v41 = v23;
          v42 = 2114;
          v43 = v24;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Found %lu/%lu records on server (rules: %{public}@) in %.2fs - cache: %{public}@", buf, 0x34u);
        }
      }

      v25 = *(*(a1 + 32) + 240);
      v26 = *(a1 + 48);
      v32 = 0;
      v27 = [v25 checkBatchWithFoundRecords:v26 error:&v32];
      v28 = v32;
      v29 = *(a1 + 32);
      if (v27)
      {
        [v29 _checkPrioritiesWithFetchCache:*(a1 + 64)];
      }

      else
      {
        [v29 _uploadTaskDidFinishWithError:v28];
      }

      v30 = *MEMORY[0x1E69E9840];
    }
  }
}

uint64_t __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_4;
  v3[3] = &unk_1E8620478;
  v3[4] = *(a1 + 32);
  return [a2 do:v3];
}

void __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 error];

  if (v2 && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Failed to note that engine checked assets on server", v4, 2u);
    }
  }
}

uint64_t __54__CPLUploadPushedChangesTask__checkForRecordExistence__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[17];
  v5 = [v3 scope];
  v6 = [v4 noteDidCheckAssetWithServerWhenOverQuotaForScope:v5 error:a2];

  return v6;
}

- (void)_checkPrioritiesWithFetchCache:(id)cache
{
  cacheCopy = cache;
  itemsToReinject = [(CPLBeforeUploadCheckItems *)self->_checkItems itemsToReinject];
  v7 = itemsToReinject;
  if (self->_mustConsiderOtherPriorities)
  {
    self->_mustConsiderOtherPriorities = 1;
  }

  else
  {
    v8 = [itemsToReinject count];
    self->_mustConsiderOtherPriorities = v8 != 0;
    if (!v8)
    {
      engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
      transport = [engineLibrary transport];
      fingerprintContext = [transport fingerprintContext];
      [(CPLUploadPushedChangesTask *)self _generateNeededDerivativesWithFetchCache:cacheCopy fingerprintContext:fingerprintContext];

      goto LABEL_5;
    }
  }

  store = [(CPLEngineScopedTask *)self store];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke;
  v17[3] = &unk_1E8620590;
  v17[4] = self;
  v18 = store;
  v19 = v7;
  v20 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_52;
  v15[3] = &unk_1E86205B8;
  v15[4] = self;
  v16 = cacheCopy;
  v10 = store;
  v11 = [v10 performWriteTransactionWithBlock:v17 completionHandler:v15];

LABEL_5:
}

void __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke(uint64_t a1, void *a2)
{
  v174 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    goto LABEL_109;
  }

  v87 = v3;
  v110 = a1;
  v111 = [*(a1 + 40) idMapping];
  v109 = [*(a1 + 40) cloudCache];
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy__24318;
  v165 = __Block_byref_object_dispose__24319;
  v166 = 0;
  v4 = [CPLErrors cplErrorWithCode:11 description:@"Resource will be uploaded in a later batch"];
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_22;
  v158[3] = &unk_1E86204C8;
  v5 = *(a1 + 32);
  v160 = &v161;
  v158[4] = v5;
  v84 = v4;
  v159 = v84;
  v86 = MEMORY[0x1E128EBA0](v158);
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy__24318;
  v156 = __Block_byref_object_dispose__24319;
  v157 = [*(*(a1 + 32) + 496) storedExtractedBatch];
  if ([*(a1 + 48) count])
  {
    v6 = objc_alloc_init(CPLExtractedBatch);
    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v143[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2;
    v143[3] = &unk_1E86204F0;
    v149 = &v152;
    v7 = v111;
    v8 = *(a1 + 48);
    v151 = *(a1 + 56);
    v9 = *(a1 + 32);
    v144 = v7;
    v145 = v9;
    v146 = v8;
    v148 = v86;
    v10 = v6;
    v147 = v10;
    v150 = &v161;
    [v87 do:v143];
  }

LABEL_4:
  v11 = [v87 error];
  v12 = v11 == 0;

  if (v12)
  {
    v85 = objc_autoreleasePoolPush();
    v142 = 0;
    v138 = 0;
    v139 = &v138;
    v140 = 0x2020000000;
    v141 = 0;
    v89 = objc_alloc_init(CPLExtractedBatch);
    v13 = objc_alloc(MEMORY[0x1E695DFA8]);
    v14 = [v153[5] batch];
    v112 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_30;
    v134[3] = &unk_1E8620540;
    v135 = v87;
    v136 = v86;
    v137 = &v138;
    v91 = MEMORY[0x1E128EBA0](v134);
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = [v153[5] batch];
    v94 = [obj countByEnumeratingWithState:&v130 objects:v173 count:16];
    if (!v94)
    {
      v88 = 0;
      v95 = 0;
      goto LABEL_51;
    }

    v95 = 0;
    v92 = *v131;
    v88 = 0;
    while (1)
    {
      for (i = 0; i != v94; i = i + 1)
      {
        if (*v131 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v107 = *(*(&v130 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v101 = [v107 scopedIdentifier];
        v15 = [v111 cloudScopedIdentifierForLocalScopedIdentifier:? isFinal:?];
        if (!v15)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v69 = __CPLTaskOSLogDomain_24274();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v172 = v107;
              _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_ERROR, "Cloud scoped identifier for %@ should be known here", buf, 0xCu);
            }
          }

          v70 = [MEMORY[0x1E696AAA8] currentHandler];
          v71 = *(v110 + 56);
          v72 = *(v110 + 32);
          v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
          [v70 handleFailureInMethod:v71 object:v72 file:v73 lineNumber:417 description:{@"Cloud scoped identifier for %@ should be known here", v107}];

LABEL_115:
          abort();
        }

        v96 = v15;
        v16 = [*(*(v110 + 32) + 240) itemWithScopedIdentifier:?];
        v17 = *(*(v110 + 32) + 488);
        v105 = v16;
        v18 = [v16 change];
        v19 = v18 == 0;

        if (v19)
        {
          goto LABEL_34;
        }

        if (![v107 isMasterChange])
        {
          v25 = [v105 change];
          v26 = [v25 hasChangeType:2];

          if (v26)
          {
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v27 = [v107 scopedIdentifiersForMapping];
            v24 = 0;
            v28 = [v27 countByEnumeratingWithState:&v126 objects:v170 count:16];
            if (v28)
            {
              v29 = *v127;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v127 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v31 = *(*(&v126 + 1) + 8 * j);
                  if (([v112 containsObject:v31] & 1) == 0)
                  {
                    v32 = [v111 cloudScopedIdentifierForLocalScopedIdentifier:v31 isFinal:&v142];
                    if (!v32 || ([v109 hasRecordWithScopedIdentifier:v32] & 1) == 0)
                    {
                      v33 = [*(*(v110 + 32) + 496) changeWithScopedIdentifier:v31];
                      v34 = v33;
                      if (v33)
                      {
                        v35 = [v33 _pushContext];
                        v36 = [v35 priority];

                        if (v36 > v17)
                        {
                          v17 = v36;
                          v24 = @"needs related record with higher priority to be uploaded";
                        }
                      }
                    }
                  }
                }

                v28 = [v27 countByEnumeratingWithState:&v126 objects:v170 count:16];
              }

              while (v28);
            }
          }

          else
          {
LABEL_34:
            v24 = 0;
          }

          v22 = v110;
          goto LABEL_36;
        }

        v20 = [v105 change];
        v21 = [v20 hasChangeType:8];

        if (!v21)
        {
          goto LABEL_34;
        }

        v22 = v110;
        v23 = v95;
        if (!v95)
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        v95 = v23;
        [v23 addObject:v101];
        v24 = 0;
LABEL_36:
        if (v17 <= *(*(v22 + 32) + 488))
        {
          [v112 addObject:v101];
          [(CPLExtractedBatch *)v89 addChange:v107 fromStorage:*(*(v22 + 32) + 160)];
          if ([v95 count])
          {
            if ([v107 isAssetChange])
            {
              v37 = [v105 change];
              if (v37)
              {
                v38 = [v107 hasChangeType:2];

                if (v38)
                {
                  v39 = [v107 relatedScopedIdentifier];
                  if (v39)
                  {
                    v40 = v88;
                    if (!v88)
                    {
                      v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    }

                    v88 = v40;
                    [v40 addObject:v39];
                  }
                }
              }
            }
          }
        }

        else
        {
          (v91)[2](v91, v105, v107, v17, v24);
        }

        objc_autoreleasePoolPop(context);
      }

      v94 = [obj countByEnumeratingWithState:&v130 objects:v173 count:16];
      if (!v94)
      {
LABEL_51:

        if ([v95 count])
        {
          v93 = objc_autoreleasePoolPush();
          objc_storeStrong(v153 + 5, v89);
          v102 = objc_alloc_init(CPLExtractedBatch);

          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v41 = [v153[5] batch];
          v108 = [v41 countByEnumeratingWithState:&v122 objects:v169 count:16];
          if (!v108)
          {
            goto LABEL_92;
          }

          v104 = v41;
          v106 = *v123;
          while (1)
          {
            for (k = 0; k != v108; ++k)
            {
              if (*v123 != v106)
              {
                objc_enumerationMutation(v104);
              }

              v43 = *(*(&v122 + 1) + 8 * k);
              if (![v43 isMasterChange])
              {
                [(CPLExtractedBatch *)v102 addChange:v43 fromStorage:*(*(v110 + 32) + 160)];
                continue;
              }

              v44 = [v43 scopedIdentifier];
              if ([v95 containsObject:v44] && (objc_msgSend(v88, "containsObject:", v44) & 1) == 0)
              {
                v45 = [v111 cloudScopedIdentifierForLocalScopedIdentifier:v44 isFinal:&v142];
                if (!v45)
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v74 = __CPLTaskOSLogDomain_24274();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v172 = v43;
                      _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_ERROR, "%@ should have a cloud scoped identifier here", buf, 0xCu);
                    }
                  }

                  v75 = [MEMORY[0x1E696AAA8] currentHandler];
                  v76 = *(v110 + 56);
                  v77 = *(v110 + 32);
                  v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
                  [v75 handleFailureInMethod:v76 object:v77 file:v78 lineNumber:481 description:{@"%@ should have a cloud scoped identifier here", v43}];

                  goto LABEL_115;
                }

                contexta = v45;
                v98 = [*(*(v110 + 32) + 240) itemWithScopedIdentifier:?];
                v46 = *(v110 + 32);
                if (*(v46 + 224))
                {
                  v47 = [*(v46 + 272) targetForRecordWithScopedIdentifier:contexta];
                  v48 = v47;
                  if (!v47)
                  {
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v79 = __CPLTaskOSLogDomain_24274();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v172 = v43;
                        _os_log_impl(&dword_1DC05A000, v79, OS_LOG_TYPE_ERROR, "%@ should know its target here", buf, 0xCu);
                      }
                    }

                    v80 = [MEMORY[0x1E696AAA8] currentHandler];
                    v81 = *(v110 + 56);
                    v82 = *(v110 + 32);
                    v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
                    [v80 handleFailureInMethod:v81 object:v82 file:v83 lineNumber:494 description:{@"%@ should know its target here", v43}];

                    goto LABEL_115;
                  }

                  v49 = [v47 targetState];
                  if ((v49 - 2) < 2)
                  {
                    v97 = v48;
                    v50 = 3000;
                    goto LABEL_70;
                  }

                  if (v49 == 1)
                  {
                    v51 = 2000;
                  }

                  else
                  {
                    v97 = v48;
                    v50 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_70:
                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    v53 = [*(*(v110 + 32) + 496) allChangesWithClass:objc_opt_class() relatedScopedIdentifier:v44];
                    v54 = [v53 countByEnumeratingWithState:&v118 objects:v168 count:16];
                    if (v54)
                    {
                      v55 = *v119;
                      while (2)
                      {
                        for (m = 0; m != v54; ++m)
                        {
                          if (*v119 != v55)
                          {
                            objc_enumerationMutation(v53);
                          }

                          v57 = [*(*(&v118 + 1) + 8 * m) _pushContext];
                          v58 = [v57 priority];

                          if (v58 == 2000)
                          {

                            v51 = 2000;
                            goto LABEL_84;
                          }

                          if (v50 > 0x7D0)
                          {
                            v50 = v58;
                          }
                        }

                        v54 = [v53 countByEnumeratingWithState:&v118 objects:v168 count:16];
                        if (v54)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    if (v50 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v51 = 2000;
                    }

                    else
                    {
                      v51 = v50;
                    }

LABEL_84:
                    v48 = v97;
                  }

                  v46 = *(v110 + 32);
                  v52 = @"keep master with related asset";
                }

                else
                {
                  v51 = 2000;
                  v52 = @"master has resources to upload";
                }

                if (v51 > *(v46 + 488))
                {
                  (v91)[2](v91, v98, v43, v51, v52);
                }
              }
            }

            v41 = v104;
            v108 = [v104 countByEnumeratingWithState:&v122 objects:v169 count:16];
            if (!v108)
            {
LABEL_92:

              objc_autoreleasePoolPop(v93);
              goto LABEL_94;
            }
          }
        }

        v102 = v89;
LABEL_94:
        v59 = *(v139 + 24);
        if (v59 == 1)
        {
          objc_storeStrong(v153 + 5, v102);
        }

        _Block_object_dispose(&v138, 8);
        objc_autoreleasePoolPop(v85);
        if ((v59 & 1) == 0)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if ([v162[5] count])
  {
    v60 = objc_alloc_init(CPLChangeBatch);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v61 = *(*(v110 + 32) + 184);
    v62 = [v61 countByEnumeratingWithState:&v114 objects:v167 count:16];
    if (v62)
    {
      v63 = *v115;
      do
      {
        for (n = 0; n != v62; ++n)
        {
          if (*v115 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v114 + 1) + 8 * n);
          v66 = v162[5];
          v67 = [v65 scopedIdentifier];
          LOBYTE(v66) = [v66 containsObject:v67];

          if ((v66 & 1) == 0)
          {
            [(CPLChangeBatch *)v60 addRecord:v65];
          }
        }

        v62 = [v61 countByEnumeratingWithState:&v114 objects:v167 count:16];
      }

      while (v62);
    }

    objc_storeStrong((*(v110 + 32) + 184), v60);
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_50;
    v113[3] = &unk_1E8620568;
    v113[4] = *(v110 + 32);
    v113[5] = &v152;
    [v87 do:v113];
  }

  _Block_object_dispose(&v152, 8);

  _Block_object_dispose(&v161, 8);
  v3 = v87;
LABEL_109:

  v68 = *MEMORY[0x1E69E9840];
}

void __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 error];
  }

  else
  {
    v7 = [*(a1 + 32) isCancelled];
    v5 = *(a1 + 32);
    if (v7)
    {
      v6 = +[CPLErrors operationCancelledError];
    }

    else
    {
      v8 = [*(a1 + 32) session];
      v9 = [v8 shouldDefer];

      v5 = *(a1 + 32);
      if (!v9)
      {
        v11 = v5[15];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2_53;
        v15[3] = &unk_1E861B290;
        v15[4] = v5;
        v16 = *(a1 + 40);
        v12 = v15;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __cpl_dispatch_async_block_invoke_24326;
        block[3] = &unk_1E861B4E0;
        v18 = v12;
        v13 = v11;
        v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v13, v14);

        goto LABEL_8;
      }

      v6 = +[CPLErrors sessionHasBeenDeferredError];
    }
  }

  v10 = v6;
  [v5 _uploadTaskDidFinishWithError:v6];

LABEL_8:
}

void __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2_53(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = [v1 engineLibrary];
  v3 = [v5 transport];
  v4 = [v3 fingerprintContext];
  [v1 _generateNeededDerivativesWithFetchCache:v2 fingerprintContext:v4];
}

uint64_t __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_22(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(*(a1[6] + 8) + 40);
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v11 = *(*(a1[6] + 8) + 40);
  }

  if ([v11 containsObject:v10])
  {
    v15 = 1;
  }

  else
  {
    [*(*(a1[6] + 8) + 40) addObject:v10];
    v16 = *(a1[4] + 216);
    if (!v16)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18 = a1[4];
      v19 = *(v18 + 216);
      *(v18 + 216) = v17;

      v16 = *(a1[4] + 216);
    }

    [v16 setObject:a1[5] forKeyedSubscript:v10];
    v15 = [*(a1[4] + 496) reinjectChange:v9 priority:a4 error:a5];
  }

  return v15;
}

uint64_t __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [*(*(*(a1 + 72) + 8) + 40) batch];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v27 = a2;
    v6 = 0;
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 scopedIdentifier];
        v30 = 0;
        v11 = [*(a1 + 32) cloudScopedIdentifierForLocalScopedIdentifier:v10 isFinal:&v30];
        if (!v11)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v22 = __CPLTaskOSLogDomain_24274();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v9;
              _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Cloud scoped identifier for %@ should be known here", buf, 0xCu);
            }
          }

          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          v24 = *(a1 + 88);
          v25 = *(a1 + 40);
          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
          [v23 handleFailureInMethod:v24 object:v25 file:v26 lineNumber:379 description:{@"Cloud scoped identifier for %@ should be known here", v9}];

          abort();
        }

        v12 = v11;
        v13 = [*(a1 + 48) objectForKeyedSubscript:v11];
        if (v13)
        {
          v14 = v13;
          v15 = *(a1 + 64);
          v16 = [v13 pushRepositoryPriority];
          v29 = v6;
          LODWORD(v15) = (*(v15 + 16))(v15, v9, v12, v16, &v29);
          v17 = v29;

          if (!v15)
          {

            if (v27)
            {
              v18 = v17;
              v19 = 0;
              *v27 = v17;
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_21;
          }

          v6 = v17;
        }

        else
        {
          [*(a1 + 56) addChange:v9 fromStorage:*(*(a1 + 40) + 160)];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 56));
  }

  v19 = 1;
  v17 = v6;
LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  [v9 dropChangeWithReason:a5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2_31;
  v15[3] = &unk_1E8620518;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v10;
  v17 = v9;
  v18 = v12;
  v19 = a4;
  v13 = v9;
  v14 = v10;
  [v11 do:v15];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

uint64_t __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_24274();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 184);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "After considering priorities, new batch to commit is %@", &v8, 0xCu);
    }
  }

  result = [*(*(a1 + 32) + 496) storeExtractedBatch:*(*(*(a1 + 40) + 8) + 40) error:a2];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __61__CPLUploadPushedChangesTask__checkPrioritiesWithFetchCache___block_invoke_2_31(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) scopedIdentifier];
  v7 = (*(v5 + 16))(v5, v4, v6, *(a1 + 56), a2);

  return v7;
}

- (void)_clearUploadBatch
{
  diffedBatch = self->_diffedBatch;
  self->_diffedBatch = 0;

  batchToCommit = self->_batchToCommit;
  self->_batchToCommit = 0;

  checkItems = self->_checkItems;
  self->_checkItems = 0;

  targetMapping = self->_targetMapping;
  self->_targetMapping = 0;
}

- (BOOL)_reenqueueExtractedBatchWithRejectedRecords:(id)records extractedBatch:(id)batch error:(id *)error
{
  recordsCopy = records;
  if (batch)
  {
    pushRepository = self->_pushRepository;
    v17 = 0;
    v10 = [(CPLEnginePushRepository *)pushRepository reinjectExtractedBatch:batch overwrittenRecordIdentifiers:&v17 error:error];
    v11 = v17;
    if (v10)
    {
      v12 = [(CPLEnginePushRepository *)self->_pushRepository storeExtractedBatch:0 error:error];
      LOBYTE(v10) = v12;
      if (recordsCopy)
      {
        if (v12)
        {
          [recordsCopy removeRejectedRecordsWithScopedIdentifiers:v11];
          engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
          store = [engineLibrary store];
          quarantinedRecords = [store quarantinedRecords];
          LOBYTE(v10) = [quarantinedRecords bumpRejectedRecords:recordsCopy error:error];
        }
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)_discardUploadedExtractedBatch:(id)batch error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
  store = [engineLibrary store];
  outgoingResources = [store outgoingResources];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  uploadIdentifiers = [batchCopy uploadIdentifiers];
  v11 = [uploadIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(uploadIdentifiers);
        }

        if (![outgoingResources deleteResourcesToUploadWithUploadIdentifier:*(*(&v18 + 1) + 8 * i) error:error])
        {

          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [uploadIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(CPLEnginePushRepository *)self->_pushRepository storeExtractedBatch:0 error:error];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_markUploadedTasksDidFinishWithError:(id)error transaction:(id)transaction error:(id *)a5
{
  v54 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  uploadResourceTasks = self->_uploadResourceTasks;
  if (uploadResourceTasks)
  {
    v9 = uploadResourceTasks;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __85__CPLUploadPushedChangesTask__markUploadedTasksDidFinishWithError_transaction_error___block_invoke;
    v45[3] = &unk_1E86204A0;
    selfCopy = self;
    v45[4] = self;
    v36 = v9;
    v46 = v36;
    [transaction addCleanupBlock:v45];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(NSArray *)self->_uploadResourceTasks count];
        v12 = "failed";
        v13 = self->_uploadResourceTasks;
        *buf = 134218498;
        v49 = v11;
        if (!errorCopy)
        {
          v12 = "succeeded";
        }

        v50 = 2080;
        v51 = v12;
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Notifying upload tasks for %lu resources as %s: %@", buf, 0x20u);
      }
    }

    selfCopy3 = self;
    engineLibrary = [(CPLEngineSyncTask *)self engineLibrary];
    store = [engineLibrary store];
    resourceStorage = [store resourceStorage];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = self->_uploadResourceTasks;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      v20 = 1;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v41 + 1) + 8 * i);
          cloudResource = [v22 cloudResource];
          v24 = cloudResource;
          if (v20)
          {
            identity = [cloudResource identity];
            fileURL = [identity fileURL];
            v20 = [resourceStorage releaseFileURL:fileURL forResource:v24 error:a5];
          }

          else
          {
            v20 = 0;
          }

          engineLibrary2 = [(CPLEngineSyncTask *)selfCopy3 engineLibrary];
          v28 = engineLibrary2;
          if (errorCopy)
          {
            [engineLibrary2 notifyAttachedObjectsUploadTask:v22 didFinishWithError:errorCopy];
          }

          else
          {
            cloudScopedIdentifiersToUploadResourceTaskErrors = selfCopy3->_cloudScopedIdentifiersToUploadResourceTaskErrors;
            itemScopedIdentifier = [v24 itemScopedIdentifier];
            v31 = [(NSMutableDictionary *)cloudScopedIdentifiersToUploadResourceTaskErrors objectForKeyedSubscript:itemScopedIdentifier];
            [v28 notifyAttachedObjectsUploadTask:v22 didFinishWithError:v31];

            selfCopy3 = selfCopy;
          }
        }

        v18 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = 1;
    }

    v32 = selfCopy3->_uploadResourceTasks;
    selfCopy3->_uploadResourceTasks = 0;
  }

  else
  {
    v20 = 1;
    selfCopy3 = self;
  }

  v33 = selfCopy3->_cloudScopedIdentifiersToUploadResourceTaskErrors;
  selfCopy3->_cloudScopedIdentifiersToUploadResourceTaskErrors = 0;

  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

void __85__CPLUploadPushedChangesTask__markUploadedTasksDidFinishWithError_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
  }
}

- (void)_updateQuotaStrategyAfterSuccessInTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_isUsingOverQuotaStrategy && [(CPLBeforeUploadCheckItems *)self->_checkItems shouldResetExceedingQuotaOnSuccessfulUpload])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Uploaded batch shows user is back under quota", buf, 2u);
      }
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__CPLUploadPushedChangesTask__updateQuotaStrategyAfterSuccessInTransaction___block_invoke;
    v6[3] = &unk_1E8620478;
    v6[4] = self;
    [transactionCopy do:v6];
    self->_isUsingOverQuotaStrategy = 0;
    self->_resetStrategy = 1;
  }
}

uint64_t __76__CPLUploadPushedChangesTask__updateQuotaStrategyAfterSuccessInTransaction___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 224);
  if (v5)
  {
    result = [*(v4 + 136) setValue:0 forFlag:2 forScope:v5 error:a2];
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 32);
  }

  v7 = *(v4 + 136);
  v8 = [v4 scope];
  v9 = [v7 setValue:0 forFlag:2 forScope:v8 error:a2];

  return v9;
}

- (void)_popNextBatchAndContinue
{
  uploadTask = self->_uploadTask;
  self->_uploadTask = 0;

  self->_hasUploadedOneBatch = 1;

  [(CPLUploadPushedChangesTask *)self _extractAndUploadOneBatch];
}

- (void)_prepareTransportGroupForOneBatch
{
  storedTransportGroup = self->_storedTransportGroup;
  if (storedTransportGroup)
  {
    v4 = storedTransportGroup;
    v5 = 0;
    transportGroup = self->_transportGroup;
    self->_transportGroup = v4;
  }

  else
  {
    createGroupForChangeUpload = [(CPLEngineTransport *)self->_transport createGroupForChangeUpload];
    transportGroup = self->_transportGroup;
    self->_transportGroup = createGroupForChangeUpload;
    v5 = 1;
  }

  self->_shouldSetupEstimatedSize = v5;
}

- (void)_didStartTaskWithKey:(id)key recordCount:(unint64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (self->_currentTaskKey)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_24274();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLUploadPushedChangesTask.m"];
    v16 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:221 description:{@"%@ called too many times", v16}];

    abort();
  }

  self->_currentTaskKey = keyCopy;
  v8 = keyCopy;
  date = [MEMORY[0x1E695DF00] date];
  taskStartDate = self->_taskStartDate;
  self->_taskStartDate = date;

  self->_recordCount = count;
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkScopeIsValidInTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(CPLEngineSyncTask *)self delegate];
  LOBYTE(self) = [delegate task:self checkScopeIsValidInTransaction:transactionCopy];

  return self;
}

- (CPLUploadPushedChangesTask)initWithEngineLibrary:(id)library session:(id)session clientCacheIdentifier:(id)identifier scope:(id)scope transportScope:(id)transportScope storedTransportGroup:(id)group sharedScope:(id)sharedScope transportScopeMapping:(id)self0 ruleGroup:(int64_t)self1 highPriority:(BOOL)self2 maxBatchSize:(unint64_t)self3 pushRepositoryPriority:(unint64_t)self4 pushRepository:(id)self5
{
  libraryCopy = library;
  scopeCopy = scope;
  groupCopy = group;
  sharedScopeCopy = sharedScope;
  mappingCopy = mapping;
  repositoryCopy = repository;
  v47.receiver = self;
  v47.super_class = CPLUploadPushedChangesTask;
  v23 = [(CPLEngineScopedTask *)&v47 initWithEngineLibrary:libraryCopy session:session clientCacheIdentifier:identifier scope:scopeCopy transportScope:transportScope];
  if (v23)
  {
    v24 = CPLCopyDefaultSerialQueueAttributes();
    v25 = dispatch_queue_create("com.apple.cpl.pushtotransport", v24);
    lock = v23->_lock;
    v23->_lock = v25;

    engineLibrary = [(CPLEngineSyncTask *)v23 engineLibrary];
    transport = [engineLibrary transport];
    transport = v23->_transport;
    v23->_transport = transport;

    engineLibrary2 = [(CPLEngineSyncTask *)v23 engineLibrary];
    store = [engineLibrary2 store];
    pushRepository = [store pushRepository];
    pushRepository = v23->_pushRepository;
    v23->_pushRepository = pushRepository;

    engineLibrary3 = [(CPLEngineSyncTask *)v23 engineLibrary];
    store2 = [engineLibrary3 store];
    scopes = [store2 scopes];
    scopes = v23->_scopes;
    v23->_scopes = scopes;

    scheduler = [libraryCopy scheduler];
    scheduler = v23->_scheduler;
    v23->_scheduler = scheduler;

    v23->_taskItem = -1;
    scopeIdentifier = [scopeCopy scopeIdentifier];
    scopeIdentifier = v23->_scopeIdentifier;
    v23->_scopeIdentifier = scopeIdentifier;

    objc_storeStrong(&v23->_storedTransportGroup, group);
    objc_storeStrong(&v23->_sharedScope, sharedScope);
    objc_storeStrong(&v23->_transportScopeMapping, mapping);
    v23->_ruleGroup = ruleGroup;
    v23->_highPriority = priority;
    v23->_maxBatchSize = size;
    v23->_pushRepositoryPriority = repositoryPriority;
    objc_storeStrong(&v23->_pushRepository, repository);
  }

  return v23;
}

+ (BOOL)disableOverQuotaRule
{
  if (_overrideDisableOverQuotaRule == 1)
  {
    bOOLValue = _disableOverQuotaRule;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"CPLDisableOverQuotaRule"];

    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  return bOOLValue & 1;
}

@end