@interface CPLSharedBatchStorage
- (BOOL)_keepIgnoredRecord:(id)record shadowingRecord:(id)shadowingRecord inScope:(id)scope error:(id *)error;
- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)repository error:(id *)error;
- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)isRecordWithScopedIdentifierStashed:(id)stashed;
- (BOOL)removeChange:(id)change error:(id *)error;
- (BOOL)stashChange:(id)change error:(id *)error;
- (CPLSharedBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope sharedScope:(id)sharedScope merger:(id)merger;
- (id)_allChangesMatchingChangeType:(unint64_t)type enumerator:(id)enumerator;
- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)identifier currentPrivateScopedIdentifier:(id)scopedIdentifier;
- (id)_mergedRecordWithPrivateChange:(id)change sharedScopedIdentifier:(id *)identifier;
- (id)_mergedRecordWithSharedChange:(id)change target:(id)target;
- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)identifier;
- (id)_remapSharedRecord:(id)record target:(id)target;
- (id)_sharedRecordAsPrivateRecord:(id)record target:(id)target;
- (id)_targetForPrivateScopedIdentifier:(id)identifier;
- (id)_targetForSharedScopedIdentifier:(id)identifier;
- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)generator sharedRecordGenerator:(id)recordGenerator;
- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)target;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed;
- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier;
- (id)allChangesWithScopeIdentifier:(id)identifier;
- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error;
- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier;
- (void)beginExtractingBatch;
- (void)cleanupAfterExtractingBatch;
@end

@implementation CPLSharedBatchStorage

- (id)setupCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:984 description:{@"%@ should not be used here", v14}];

  abort();
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  if (final)
  {
    *final = 1;
  }

  return [(CPLSharedBatchStorage *)self _privateScopedIdentifierForSharedScopedIdentifier:identifier];
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:968 description:{@"%@ should not be used here", v8}];

  abort();
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:964 description:{@"%@ should not be used here", v9}];

  abort();
}

- (BOOL)addCloudScopedIdentifier:(id)identifier forLocalScopedIdentifier:(id)scopedIdentifier isFinal:(BOOL)final direction:(unint64_t)direction error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:960 description:{@"%@ should not be used here", v14}];

  abort();
}

- (void)cleanupAfterExtractingBatch
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v10 = scope;
      v11 = 2112;
      v12 = sharedScope;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Finished extracting batch for %@/%@", buf, 0x16u);
    }
  }

  alreadyProcessedChanges = self->_alreadyProcessedChanges;
  self->_alreadyProcessedChanges = 0;

  v8.receiver = self;
  v8.super_class = CPLSharedBatchStorage;
  [(CPLEngineTransientRepositoryBatchStorage *)&v8 cleanupAfterExtractingBatch];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)beginExtractingBatch
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CPLSharedBatchStorage;
  [(CPLEngineTransientRepositoryBatchStorage *)&v9 beginExtractingBatch];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  alreadyProcessedChanges = self->_alreadyProcessedChanges;
  self->_alreadyProcessedChanges = v3;

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v11 = scope;
      v12 = 2112;
      v13 = sharedScope;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Begin extracting batch for %@/%@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeChange:(id)change error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v35.receiver = self;
  v35.super_class = CPLSharedBatchStorage;
  if ([(CPLEngineTransientRepositoryBatchStorage *)&v35 removeChange:changeCopy error:error])
  {
    scopedIdentifier = [changeCopy scopedIdentifier];
    v9 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];

    otherScopedIdentifier = [v9 otherScopedIdentifier];
    if (!otherScopedIdentifier)
    {
      v17 = 1;
LABEL_23:

      goto LABEL_24;
    }

    _ignoredRecord = [changeCopy _ignoredRecord];
    if (_ignoredRecord)
    {
      isMasterChange = [changeCopy isMasterChange];
      scopedIdentifier2 = [_ignoredRecord scopedIdentifier];
      v14 = scopedIdentifier2;
      if (isMasterChange)
      {
        scopedIdentifier3 = [v9 scopedIdentifier];
        v16 = [v14 isEqual:scopedIdentifier3];

        if ((v16 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              scopedIdentifier4 = [v9 scopedIdentifier];
              *buf = 138412546;
              v37 = _ignoredRecord;
              v38 = 2112;
              v39 = scopedIdentifier4;
              _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@", buf, 0x16u);
            }
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          scopedIdentifier5 = [v9 scopedIdentifier];
          [currentHandler handleFailureInMethod:a2 object:self file:v28 lineNumber:918 description:{@"%@ is incorrectly ignored for %@", _ignoredRecord, scopedIdentifier5}];

          abort();
        }

        if ([v9 targetState] == 1)
        {
          if (![(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:_ignoredRecord error:error])
          {
            goto LABEL_8;
          }
        }

        else if (![(CPLSharedBatchStorage *)self _keepIgnoredRecord:_ignoredRecord shadowingRecord:changeCopy inScope:self->_sharedScope error:error])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v18 = [scopedIdentifier2 isEqual:otherScopedIdentifier];

        if ((v18 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v30 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              scopedIdentifier6 = [v9 scopedIdentifier];
              *buf = 138412802;
              v37 = _ignoredRecord;
              v38 = 2112;
              v39 = scopedIdentifier6;
              v40 = 2112;
              v41 = otherScopedIdentifier;
              _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@ - it should be %@", buf, 0x20u);
            }
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          scopedIdentifier7 = [v9 scopedIdentifier];
          [currentHandler2 handleFailureInMethod:a2 object:self file:v33 lineNumber:926 description:{@"%@ is incorrectly ignored for %@ - it should be %@", _ignoredRecord, scopedIdentifier7, otherScopedIdentifier}];

          abort();
        }

        if ([v9 shouldUploadToOtherRecord])
        {
          v17 = [(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:_ignoredRecord error:error];
          goto LABEL_22;
        }

        scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
        v20 = [(CPLSharedBatchStorage *)self _keepIgnoredRecord:_ignoredRecord shadowingRecord:changeCopy inScope:scope error:error];

        if (!v20)
        {
LABEL_8:
          v17 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = otherScopedIdentifier;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEBUG, "Automatically mingling %@", buf, 0xCu);
      }
    }

    transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    v17 = [transientRepository markUnmingledChangeWithScopedIdentifierAsMingled:otherScopedIdentifier error:error];

    goto LABEL_22;
  }

  v17 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_keepIgnoredRecord:(id)record shadowingRecord:(id)shadowingRecord inScope:(id)scope error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  scopeCopy = scope;
  v12 = CPLIgnoredDateForRecord(recordCopy, shadowingRecord, self->_now);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      scopedIdentifier = [recordCopy scopedIdentifier];
      v15 = [CPLDateFormatter stringFromDateAgo:v12 now:self->_now];
      v19 = 138543618;
      v20 = scopedIdentifier;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Keeping ignored record %{public}@ with ignored date %{public}@", &v19, 0x16u);
    }
  }

  v16 = -[CPLEngineIgnoredRecords addIgnoredRecord:ignoredDate:otherScopeIndex:error:](self->_ignoredRecords, "addIgnoredRecord:ignoredDate:otherScopeIndex:error:", recordCopy, v12, [scopeCopy cloudIndex], error);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)repository error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  repositoryCopy = repository;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      scopedIdentifier = [repositoryCopy scopedIdentifier];
      v14 = 138412290;
      v15 = scopedIdentifier;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Automatically mingling previously ignored record %@", &v14, 0xCu);
    }
  }

  v9 = objc_alloc_init(CPLChangeBatch);
  [(CPLChangeBatch *)v9 addRecord:repositoryCopy];
  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v11 = [transientRepository appendBatch:v9 alreadyMingled:1 countOfAssetChanges:0 error:error];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v7 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v7)
  {
    transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    scope2 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
    if ([transientRepository hasUnmingledChangesForScope:scope2])
    {
      v10 = 1;
    }

    else
    {
      v10 = [transientRepository hasUnmingledChangesForScope:self->_sharedScope];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CPLSharedBatchStorage;
    v10 = [(CPLEngineTransientRepositoryBatchStorage *)&v12 hasChangesInScopeWithIdentifier:identifierCopy];
  }

  return v10;
}

- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:881 description:{@"%@ should not be used on %@", v8, objc_opt_class()}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", &v17, 0x16u);
    }
  }

  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v9 = [transientRepository unmingledChangeWithScopedIdentifier:identifierCopy];

  if (v9)
  {
    v10 = [(CPLSharedBatchStorage *)self _mergedRecordWithPrivateChange:v9 sharedScopedIdentifier:0];
  }

  else
  {
    v11 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:identifierCopy];
    otherScopedIdentifier = [v11 otherScopedIdentifier];
    if (otherScopedIdentifier && (-[CPLEngineTransientRepositoryBatchStorage transientRepository](self, "transientRepository"), v13 = objc_claimAutoreleasedReturnValue(), [v13 unmingledChangeWithScopedIdentifier:otherScopedIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
    {
      v10 = [(CPLSharedBatchStorage *)self _mergedRecordWithSharedChange:v14 target:v11];
    }

    else
    {

      v10 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v23 = v9;
      v24 = 2112;
      classCopy = class;
      v26 = 2112;
      v27 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v12 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke;
    v19[3] = &unk_1E861B6B0;
    v19[4] = self;
    classCopy2 = class;
    v20 = identifierCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke_2;
    v18[3] = &unk_1E861B700;
    v18[4] = self;
    v18[5] = class;
    v13 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v19 sharedRecordGenerator:v18];
    v14 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:0 enumerator:v13];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CPLSharedBatchStorage;
    v14 = [(CPLEngineTransientRepositoryBatchStorage *)&v17 allNonDeletedChangesWithClass:class scopeIdentifier:identifierCopy];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) scopeIdentifier:*(a1 + 40)];

  return v3;
}

id __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v5 = [v2 allUnmingledChangesWithClass:v3 scopeIdentifier:v4];

  return v5;
}

- (id)allChangesWithScopeIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v10 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke;
    v16[3] = &unk_1E861B728;
    v16[4] = self;
    v17 = identifierCopy;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke_2;
    v15[3] = &unk_1E861C0F8;
    v15[4] = self;
    v11 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v16 sharedRecordGenerator:v15];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CPLSharedBatchStorage;
    v11 = [(CPLEngineTransientRepositoryBatchStorage *)&v14 allChangesWithScopeIdentifier:identifierCopy];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithScopeIdentifier:*(a1 + 40)];

  return v3;
}

id __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v4 = [v2 allUnmingledChangesWithScopeIdentifier:v3];

  return v4;
}

- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:832 description:{@"Trying to extract batches using unsupported %@", v9}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:828 description:{@"Trying to extract batches using unsupported %@", v10}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [CPLRecordChange descriptionForChangeType:type];
      *buf = 138413058;
      v26 = v11;
      v27 = 2112;
      classCopy = class;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ %@ %@", buf, 0x2Au);
    }
  }

  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier = [scope scopeIdentifier];
  v15 = [identifierCopy isEqualToString:scopeIdentifier];

  if (v15)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke;
    v22[3] = &unk_1E861B6B0;
    v22[4] = self;
    classCopy2 = class;
    v23 = identifierCopy;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke_2;
    v21[3] = &unk_1E861B700;
    v21[4] = self;
    v21[5] = class;
    v16 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v22 sharedRecordGenerator:v21];
    v17 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:type enumerator:v16];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CPLSharedBatchStorage;
    v17 = [(CPLEngineTransientRepositoryBatchStorage *)&v20 allChangesWithClass:class scopeIdentifier:identifierCopy changeType:type];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) scopeIdentifier:*(a1 + 40)];

  return v3;
}

id __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 80) scopeIdentifier];
  v5 = [v2 allUnmingledChangesWithClass:v3 scopeIdentifier:v4];

  return v5;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = v9;
      v46 = 2112;
      classCopy = class;
      v48 = 2112;
      v49 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  scopeIdentifier = [identifierCopy scopeIdentifier];
  scope = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  scopeIdentifier2 = [scope scopeIdentifier];
  v13 = [scopeIdentifier isEqualToString:scopeIdentifier2];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke;
    v40[3] = &unk_1E861B6B0;
    v40[4] = self;
    classCopy2 = class;
    v15 = identifierCopy;
    v41 = v15;
    v16 = MEMORY[0x1E128EBA0](v40);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_2;
    v37[3] = &unk_1E861B6D8;
    v37[4] = self;
    v38 = v15;
    classCopy3 = class;
    v17 = MEMORY[0x1E128EBA0](v37);
    v18 = [CPLUnionEnumerator alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_3;
    v34[3] = &unk_1E861B668;
    v36 = v16;
    v34[4] = self;
    v19 = v14;
    v35 = v19;
    v20 = v16;
    v21 = MEMORY[0x1E128EBA0](v34);
    v43[0] = v21;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_5;
    v30[3] = &unk_1E861B668;
    selfCopy = self;
    v33 = v17;
    v31 = v19;
    v22 = v19;
    v23 = v17;
    v24 = MEMORY[0x1E128EBA0](v30);
    v43[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v26 = [(CPLUnionEnumerator *)v18 initWithEnumeratorGenerators:v25];
  }

  else
  {
    v29.receiver = self;
    v29.super_class = CPLSharedBatchStorage;
    v26 = [(CPLEngineTransientRepositoryBatchStorage *)&v29 allChangesWithClass:class relatedScopedIdentifier:identifierCopy];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientRepository];
  v3 = [v2 allUnmingledChangesWithClass:*(a1 + 48) relatedScopedIdentifier:*(a1 + 40)];

  return v3;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _targetForPrivateScopedIdentifier:*(a1 + 40)];
  if ([v2 targetState] == 1 || (objc_msgSend(v2, "otherScopedIdentifier"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = v3;
    v5 = [*(a1 + 32) transientRepository];
    v6 = [v5 allUnmingledChangesWithClass:*(a1 + 48) relatedScopedIdentifier:v4];
  }

  return v6;
}

CPLMapEnumerator *__69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_3(void *a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(a1[6] + 16))();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_4;
  v7[3] = &unk_1E861B640;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v5 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v7];

  return v5;
}

CPLMapEnumerator *__69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(*(a1 + 48) + 16))();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_6;
  v8[3] = &unk_1E861B640;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v8];

  return v6;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scopedIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) _targetForSharedScopedIdentifier:v4];
    if (![v3 supportsSharingScopedIdentifier])
    {
      goto LABEL_6;
    }

    v7 = [*(a1 + 40) transientRepository];
    v8 = [v6 scopedIdentifier];
    v9 = [v7 unmingledChangeWithScopedIdentifier:v8];

    if (v9)
    {
      v10 = *(a1 + 40);
      v13 = v4;
      v5 = [v10 _mergedRecordWithPrivateChange:v9 sharedScopedIdentifier:&v13];
      v11 = v13;

      v4 = v11;
    }

    else
    {
LABEL_6:
      v5 = [*(a1 + 40) _mergedRecordWithSharedChange:v3 target:v6];
    }
  }

  return v5;
}

id __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 _mergedRecordWithPrivateChange:a2 sharedScopedIdentifier:&v7];
  v5 = v7;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  return v4;
}

- (id)_allChangesMatchingChangeType:(unint64_t)type enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (type == 1024)
  {
    v8 = &__block_literal_global_116;
  }

  else
  {
    if (type)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
      v13 = [CPLRecordChange descriptionForChangeType:type];
      [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:754 description:{@"Trying to extract batches using change type %@", v13}];

      abort();
    }

    v8 = &__block_literal_global_34;
  }

  v9 = [[CPLMapEnumerator alloc] initWithEnumerator:enumeratorCopy map:v8];

  return v9;
}

id __66__CPLSharedBatchStorage__allChangesMatchingChangeType_enumerator___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDelete])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __66__CPLSharedBatchStorage__allChangesMatchingChangeType_enumerator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFullRecord])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)generator sharedRecordGenerator:(id)recordGenerator
{
  v27[2] = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  recordGeneratorCopy = recordGenerator;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [CPLUnionEnumerator alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke;
  v24[3] = &unk_1E861B668;
  v26 = generatorCopy;
  v24[4] = self;
  v10 = v8;
  v25 = v10;
  v11 = generatorCopy;
  v12 = MEMORY[0x1E128EBA0](v24);
  v27[0] = v12;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_3;
  v20[3] = &unk_1E861B668;
  selfCopy = self;
  v23 = recordGeneratorCopy;
  v21 = v10;
  v13 = v10;
  v14 = recordGeneratorCopy;
  v15 = MEMORY[0x1E128EBA0](v20);
  v27[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [(CPLUnionEnumerator *)v9 initWithEnumeratorGenerators:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

CPLMapEnumerator *__101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke(void *a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(a1[6] + 16))();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_2;
  v7[3] = &unk_1E861B640;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v5 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v7];

  return v5;
}

CPLMapEnumerator *__101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_3(uint64_t a1)
{
  v2 = [CPLMapEnumerator alloc];
  v3 = (*(*(a1 + 48) + 16))();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_4;
  v8[3] = &unk_1E861B640;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [(CPLMapEnumerator *)v2 initWithEnumerator:v3 map:v8];

  return v6;
}

id __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scopedIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) _targetForSharedScopedIdentifier:v4];
    v5 = [*(a1 + 40) _mergedRecordWithSharedChange:v3 target:v6];
  }

  return v5;
}

id __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 _mergedRecordWithPrivateChange:a2 sharedScopedIdentifier:&v7];
  v5 = v7;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  return v4;
}

- (id)_mergedRecordWithSharedChange:(id)change target:(id)target
{
  v100 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  targetCopy = target;
  scopedIdentifier = [changeCopy scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:scopedIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    goto LABEL_73;
  }

  if ([changeCopy isMasterChange])
  {
    scopedIdentifier2 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v13 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:scopedIdentifier2];
    v14 = [v13 copy];
    if ([changeCopy isDelete])
    {
      if (v13)
      {
        v15 = -[CPLRecordTarget initWithScopedIdentifier:otherScopedIdentifier:targetState:]([CPLRecordTarget alloc], "initWithScopedIdentifier:otherScopedIdentifier:targetState:", scopedIdentifier2, scopedIdentifier, [v13 isDelete] ^ 1);
        targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [targetMapping setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        v17 = v13;
LABEL_7:
        v18 = v17;
LABEL_45:

LABEL_46:
        goto LABEL_58;
      }

      targetState = [(CPLRecordTarget *)targetCopy targetState];
      v18 = 0;
      if (targetState > 1)
      {
        if (targetState != 2)
        {
          if (targetState != 3)
          {
            goto LABEL_46;
          }

          goto LABEL_83;
        }
      }

      else if (targetState)
      {
        if (targetState != 1)
        {
          goto LABEL_46;
        }

LABEL_83:
        v75 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier2 isFinal:0];
        if (!v75)
        {
          v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
          goto LABEL_46;
        }

        v18 = v75;
        [(CPLRecordTarget *)v75 setSharingRecordChangeData:0];
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:1];
        [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        v76 = v90 = 56;
        [v76 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        goto LABEL_45;
      }

      v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:0];
      targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      [targetMapping2 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

      v17 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
      goto LABEL_7;
    }

    v90 = 56;
    if (!v14)
    {
      if ([(CPLRecordTarget *)targetCopy targetState]!= 1 || ([(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier2 isFinal:1], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v14 = 0;
        v24 = 1;
        v25 = 2;
LABEL_43:
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier2 otherScopedIdentifier:scopedIdentifier targetState:v25];
        targetMapping3 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [targetMapping3 setTarget:v15 forRecordWithScopedIdentifier:scopedIdentifier2];

        v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
        if ((v24 & 1) == 0)
        {
          recordChangeData = [(CPLRecordTarget *)v14 recordChangeData];
          [(CPLRecordTarget *)v18 setRecordChangeData:recordChangeData];
        }

        goto LABEL_45;
      }

      v14 = v45;
    }

    v24 = 0;
    v25 = 3;
    goto LABEL_43;
  }

  isDelete = [changeCopy isDelete];
  targetState2 = [(CPLRecordTarget *)targetCopy targetState];
  if (isDelete)
  {
    v14 = 0;
    if (targetState2 <= 1)
    {
      if (targetState2)
      {
        if (targetState2 == 1)
        {
          cloudCache = self->_cloudCache;
          scopedIdentifier3 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          v23 = [(CPLEngineCloudCache *)cloudCache recordWithScopedIdentifier:scopedIdentifier3 isFinal:0];

          if (v23)
          {
            v18 = v23;
            [(CPLRecordTarget *)v18 setSharingRecordChangeData:0];
LABEL_56:

            goto LABEL_57;
          }

          v78 = [CPLRecordTarget alloc];
          scopedIdentifier4 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          v80 = [(CPLRecordTarget *)v78 initWithScopedIdentifier:scopedIdentifier4 otherScopedIdentifier:scopedIdentifier targetState:0];

          targetMapping4 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
          scopedIdentifier5 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
          [targetMapping4 setTarget:v80 forRecordWithScopedIdentifier:scopedIdentifier5];

          selfCopy3 = self;
          v84 = changeCopy;
          v85 = targetCopy;
LABEL_88:
          v18 = [(CPLSharedBatchStorage *)selfCopy3 _sharedRecordAsPrivateRecord:v84 target:v85];

          goto LABEL_56;
        }

        goto LABEL_40;
      }

LABEL_41:
      v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:changeCopy target:targetCopy];
LABEL_57:
      v14 = 0;
      goto LABEL_58;
    }

    if (targetState2 == 2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = changeCopy;
          v37 = "%@ has been unshared";
          goto LABEL_51;
        }

LABEL_52:
      }

LABEL_53:
      v55 = [CPLRecordTarget alloc];
      scopedIdentifier6 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v23 = [(CPLRecordTarget *)v55 initWithScopedIdentifier:scopedIdentifier6 otherScopedIdentifier:scopedIdentifier targetState:0];

      targetMapping5 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      scopedIdentifier7 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      [targetMapping5 setTarget:v23 forRecordWithScopedIdentifier:scopedIdentifier7];

      selfCopy4 = self;
      v53 = changeCopy;
      v54 = targetCopy;
      goto LABEL_54;
    }

    if (targetState2 == 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = changeCopy;
          v37 = "%@ has been unshared (will need to clean-up sparse record) ";
LABEL_51:
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
          goto LABEL_52;
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_40:
    v18 = 0;
    goto LABEL_58;
  }

  if (!targetState2)
  {
    v26 = [(CPLSharedBatchStorage *)self _updatePrivateScopedIdentifierForUnknownTarget:targetCopy];

    remappedRecords = self->_remappedRecords;
    scopedIdentifier8 = [(CPLRecordTarget *)v26 scopedIdentifier];
    v14 = [(CPLEngineRemappedRecords *)remappedRecords realScopedIdentifierForRemappedScopedIdentifier:scopedIdentifier8];

    identifier = [(CPLRecordTarget *)v14 identifier];
    scopedIdentifier9 = [(CPLRecordTarget *)v26 scopedIdentifier];
    identifier2 = [scopedIdentifier9 identifier];
    v32 = [identifier isEqualToString:identifier2];

    if (!v32)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v70 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          scopedIdentifier10 = [(CPLRecordTarget *)v26 scopedIdentifier];
          *buf = 138412802;
          v93 = changeCopy;
          v94 = 2112;
          v95 = scopedIdentifier10;
          v96 = 2112;
          v97 = v14;
          _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_DEFAULT, "%@'s private counterpart %@ is remapped to %@ - ignoring shared record for now", buf, 0x20u);
        }
      }

      v72 = objc_opt_class();
      scopedIdentifier11 = [(CPLRecordTarget *)v26 scopedIdentifier];
      v11 = [v72 newRecordWithScopedIdentifier:scopedIdentifier11];

      identifier3 = [(CPLRecordTarget *)v14 identifier];
      [(CPLRecordTarget *)v11 setRealIdentifier:identifier3];

      [(CPLRecordTarget *)v11 _setIgnoredRecord:changeCopy];
      [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v11 forKeyedSubscript:scopedIdentifier];
      v10 = 0;
      targetCopy = v26;
      goto LABEL_72;
    }

    targetCopy = v26;
  }

  targetState3 = [(CPLRecordTarget *)targetCopy targetState];
  v14 = 0;
  if (targetState3 > 1)
  {
    if (targetState3 == 2)
    {
      goto LABEL_41;
    }

    if (targetState3 == 3)
    {
      v38 = self->_cloudCache;
      scopedIdentifier12 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v23 = [(CPLEngineCloudCache *)v38 recordWithScopedIdentifier:scopedIdentifier12 isFinal:0];

      if (!v23)
      {
        v86 = [CPLRecordTarget alloc];
        scopedIdentifier13 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
        v80 = [(CPLRecordTarget *)v86 initWithScopedIdentifier:scopedIdentifier13 otherScopedIdentifier:scopedIdentifier targetState:2];

        targetMapping6 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        scopedIdentifier14 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
        [targetMapping6 setTarget:v80 forRecordWithScopedIdentifier:scopedIdentifier14];

        selfCopy3 = self;
        v84 = changeCopy;
        v85 = v80;
        goto LABEL_88;
      }

      merger = self->_merger;
      v41 = [(CPLSharedBatchStorage *)self _remapSharedRecord:changeCopy target:targetCopy];
      [(CPLSharedRecordMerger *)merger mergeRecord:v41 isSharedRecord:1 inPrivateRecord:v23];

      scopeIdentifier = [scopedIdentifier scopeIdentifier];
      [(CPLRecordTarget *)v23 setSharingScopeIdentifier:scopeIdentifier];

      v43 = v23;
LABEL_55:
      v18 = v43;
      goto LABEL_56;
    }

    goto LABEL_40;
  }

  if (!targetState3)
  {
    goto LABEL_47;
  }

  if (targetState3 != 1)
  {
    goto LABEL_40;
  }

  v34 = self->_cloudCache;
  scopedIdentifier15 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
  v18 = [(CPLEngineCloudCache *)v34 recordWithScopedIdentifier:scopedIdentifier15 isFinal:0];

  if (!v18)
  {
LABEL_47:
    v48 = [CPLRecordTarget alloc];
    scopedIdentifier16 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v23 = [(CPLRecordTarget *)v48 initWithScopedIdentifier:scopedIdentifier16 otherScopedIdentifier:scopedIdentifier targetState:2];

    targetMapping7 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    scopedIdentifier17 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    [targetMapping7 setTarget:v23 forRecordWithScopedIdentifier:scopedIdentifier17];

    selfCopy4 = self;
    v53 = changeCopy;
    v54 = v23;
LABEL_54:
    v43 = [(CPLSharedBatchStorage *)selfCopy4 _sharedRecordAsPrivateRecord:v53 target:v54];
    goto LABEL_55;
  }

  v14 = changeCopy;
LABEL_58:
  v91 = 0;
  v59 = [(CPLRecordTarget *)v18 validateChangeWithError:&v91, v90];
  v60 = v91;
  if ((v59 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v61 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v93 = changeCopy;
        v94 = 2112;
        v95 = v18;
        v96 = 2112;
        v97 = targetCopy;
        v98 = 2112;
        v99 = v60;
        _os_log_impl(&dword_1DC05A000, v61, OS_LOG_TYPE_ERROR, "Failed to merge incoming shared %@: %@ (%@): %@", buf, 0x2Au);
      }
    }

    v62 = self->_cloudCache;
    scopedIdentifier18 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
    v64 = [(CPLEngineCloudCache *)v62 recordWithScopedIdentifier:scopedIdentifier18 isFinal:0];

    v18 = v64;
    if (!v64)
    {
      v65 = objc_opt_class();
      scopedIdentifier19 = [(CPLRecordTarget *)targetCopy scopedIdentifier];
      v18 = [v65 newDeleteChangeWithScopedIdentifier:scopedIdentifier19];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v67 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v93 = changeCopy;
      v94 = 2112;
      v95 = targetCopy;
      v96 = 2112;
      v97 = v18;
      _os_log_impl(&dword_1DC05A000, v67, OS_LOG_TYPE_DEFAULT, "Merging record with shared change %@ - %@ -> %@", buf, 0x20u);
    }
  }

  if (v14)
  {
    [(CPLRecordTarget *)v18 _setIgnoredRecord:v14];
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v18 forKeyedSubscript:scopedIdentifier];
  v10 = v18;

  v11 = v10;
LABEL_72:

LABEL_73:
  v68 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)target
{
  v16 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  otherScopedIdentifier = [(CPLRecordTarget *)targetCopy otherScopedIdentifier];
  scopedIdentifier = [(CPLRecordTarget *)targetCopy scopedIdentifier];
  if (otherScopedIdentifier)
  {
    v7 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:otherScopedIdentifier currentPrivateScopedIdentifier:scopedIdentifier];
    if (([v7 isEqual:scopedIdentifier] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412546;
          v13 = otherScopedIdentifier;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Automatically found private scoped identifier of %@ to be %@", &v12, 0x16u);
        }
      }

      v9 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v7 otherScopedIdentifier:otherScopedIdentifier targetState:[(CPLRecordTarget *)targetCopy targetState]];

      targetCopy = v9;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return targetCopy;
}

- (id)_mergedRecordWithPrivateChange:(id)change sharedScopedIdentifier:(id *)identifier
{
  v140 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:scopedIdentifier];
  if (v9)
  {
    v10 = v9;
    goto LABEL_59;
  }

  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v12 = [targetMapping targetForRecordWithScopedIdentifier:scopedIdentifier];

  v127 = a2;
  if (![changeCopy isMasterChange])
  {
    if (![changeCopy supportsSharingScopedIdentifier])
    {
      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];

      v23 = changeCopy;
      v28 = 0;
      v128 = 0;
      goto LABEL_14;
    }

    if ([changeCopy isDelete])
    {
      v24 = v12;
      if (!v12)
      {
        v24 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
      }

      v12 = v24;
      otherScopedIdentifier = [v24 otherScopedIdentifier];
      transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v27 = [transientRepository unmingledChangeWithScopedIdentifier:otherScopedIdentifier];

      v128 = otherScopedIdentifier;
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:otherScopedIdentifier];
        v27 = v28;
        if (!v28)
        {
          targetState = [v12 targetState];
          if (targetState <= 1)
          {
            if (targetState > 1)
            {
              goto LABEL_118;
            }

            v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:0];

            v23 = changeCopy;
            goto LABEL_153;
          }

          if (targetState == 2)
          {
            v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
            if (!v23)
            {
              v23 = changeCopy;
            }

            [v23 setRecordChangeData:0];
LABEL_116:
            v28 = 0;
            if (!v12)
            {
              goto LABEL_15;
            }

            goto LABEL_39;
          }

          if (targetState != 3)
          {
            goto LABEL_118;
          }

          v96 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
          if (v96)
          {
            v23 = v96;
            [v96 setRecordChangeData:0];
            v69 = [CPLRecordTarget alloc];
            v70 = scopedIdentifier;
            v71 = otherScopedIdentifier;
            goto LABEL_82;
          }

LABEL_115:
          v23 = changeCopy;
          goto LABEL_116;
        }
      }

      isDelete = [v27 isDelete];
      v63 = [CPLRecordTarget alloc];
      if (isDelete)
      {
        v64 = [(CPLRecordTarget *)v63 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:0];

        v23 = changeCopy;
      }

      else
      {
        v64 = [(CPLRecordTarget *)v63 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:otherScopedIdentifier targetState:2];

        v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v27 target:v64];
        [v23 setRecordChangeData:0];
      }

      v12 = v64;
LABEL_151:
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

    scopeIdentifier = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v39 = [changeCopy isSharedInScopeWithIdentifier:scopeIdentifier];

    if (!v39)
    {
      otherScopedIdentifier2 = [v12 otherScopedIdentifier];
      v60 = otherScopedIdentifier2;
      if (otherScopedIdentifier2)
      {
        v61 = otherScopedIdentifier2;
      }

      else
      {
        v83 = [CPLScopedIdentifier alloc];
        scopeIdentifier2 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        identifier = [scopedIdentifier identifier];
        v61 = [(CPLScopedIdentifier *)v83 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier];
      }

      v86 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v61];
      v87 = v86;
      if (v86)
      {
        v88 = v86;
      }

      else
      {
        v88 = v61;
      }

      v89 = v88;

      transientRepository2 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v128 = v89;
      v28 = [transientRepository2 unmingledChangeWithScopedIdentifier:v89];

      if ([v28 isDelete])
      {

        v28 = 0;
      }

      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v89 targetState:1];

      v23 = changeCopy;
LABEL_14:
      v12 = v29;
      if (v29)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    }

    sharingRecordScopedIdentifier = [changeCopy sharingRecordScopedIdentifier];
    identifier2 = [sharingRecordScopedIdentifier identifier];
    v42 = [identifier2 isEqualToString:@"__INVALID__"];

    if (v42)
    {
      if (_CPLSilentLogging)
      {
LABEL_137:
        v112 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];

        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
LABEL_138:
        v28 = 0;
        v128 = 0;
        v12 = v112;
LABEL_150:

        goto LABEL_151;
      }

      v43 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v131 = scopedIdentifier;
        _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to an invalid shared record - deleting", buf, 0xCu);
      }

LABEL_136:

      goto LABEL_137;
    }

    if (sharingRecordScopedIdentifier && self->_automaticallyFixBadPrivateAsset)
    {
      identifier3 = [sharingRecordScopedIdentifier identifier];
      identifier4 = [scopedIdentifier identifier];
      v74 = [identifier3 isEqualToString:identifier4];

      if ((v74 & 1) == 0)
      {
        v75 = [CPLScopedIdentifier alloc];
        scopeIdentifier3 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        identifier5 = [scopedIdentifier identifier];
        v78 = [(CPLScopedIdentifier *)v75 initWithScopeIdentifier:scopeIdentifier3 identifier:identifier5];

        v43 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v78];

        if (!v43 || (-[NSObject identifier](v43, "identifier"), v79 = objc_claimAutoreleasedReturnValue(), [sharingRecordScopedIdentifier identifier], v80 = objc_claimAutoreleasedReturnValue(), v81 = objc_msgSend(v79, "isEqualToString:", v80), v80, v79, (v81 & 1) == 0))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v113 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              identifier6 = [v43 identifier];
              *buf = 138412802;
              v131 = scopedIdentifier;
              v132 = 2112;
              v133 = sharingRecordScopedIdentifier;
              v134 = 2114;
              v135 = identifier6;
              _os_log_impl(&dword_1DC05A000, v113, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %{public}@ - deleting", buf, 0x20u);
            }
          }

          goto LABEL_136;
        }
      }
    }

    else if (!sharingRecordScopedIdentifier)
    {
      v97 = [CPLScopedIdentifier alloc];
      scopeIdentifier4 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
      identifier7 = [scopedIdentifier identifier];
      v92 = [(CPLScopedIdentifier *)v97 initWithScopeIdentifier:scopeIdentifier4 identifier:identifier7];

LABEL_121:
      v100 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v92];
      v101 = v100;
      if (v100)
      {
        v102 = v100;
      }

      else
      {
        v102 = v92;
      }

      v103 = v102;

      v104 = v103;
      v105 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:v103 currentPrivateScopedIdentifier:scopedIdentifier];
      if (([v105 isEqual:scopedIdentifier] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v111 = __CPLStorageOSLogDomain();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v131 = scopedIdentifier;
            v132 = 2112;
            v133 = v104;
            v134 = 2112;
            v135 = v105;
            _os_log_impl(&dword_1DC05A000, v111, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %@ - ignoring", buf, 0x20u);
          }
        }

        v112 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier];
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];

        goto LABEL_138;
      }

      v106 = v105;
      [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v108 = v107 = v104;
      v109 = [v108 unmingledChangeWithScopedIdentifier:v107];

      v128 = v107;
      if (v109)
      {
        v110 = v109;
        v28 = 0;
      }

      else
      {
        v28 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:v107];
        v110 = v28;
        if (!v28)
        {
          v122 = v106;
          if (!v12)
          {
            v12 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
          }

          if (([v12 targetState] & 0xFFFFFFFFFFFFFFFELL) != 2 || (-[CPLEngineCloudCache recordWithScopedIdentifier:isFinal:](self->_cloudCache, "recordWithScopedIdentifier:isFinal:", scopedIdentifier, 0), (v123 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v115 = 0;
            v28 = 0;
            goto LABEL_148;
          }

          v124 = v123;
          v126 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v107 targetState:3];

          v115 = 0;
          v28 = 0;
          v121 = 0;
          v120 = v124;
          goto LABEL_146;
        }
      }

      v115 = v110;
      isDelete2 = [v110 isDelete];
      v117 = [CPLRecordTarget alloc];
      if (isDelete2)
      {
        v118 = [(CPLRecordTarget *)v117 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v128 targetState:0];

LABEL_147:
        v12 = v118;
        v122 = v106;
LABEL_148:
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
        goto LABEL_149;
      }

      v118 = [(CPLRecordTarget *)v117 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v128 targetState:3];

      v119 = [(CPLSharedBatchStorage *)self _remapSharedRecord:v115 target:v118];
      if (!v119)
      {
        goto LABEL_147;
      }

      v120 = v119;
      v126 = v118;
      v121 = 1;
      v122 = v106;
LABEL_146:
      [(CPLSharedRecordMerger *)self->_merger mergeRecord:v120 isSharedRecord:v121 inPrivateRecord:changeCopy];
      v23 = changeCopy;

      v12 = v126;
LABEL_149:

      goto LABEL_150;
    }

    v92 = sharingRecordScopedIdentifier;
    goto LABEL_121;
  }

  v13 = [CPLScopedIdentifier alloc];
  scopeIdentifier5 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
  identifier8 = [scopedIdentifier identifier];
  v16 = [(CPLScopedIdentifier *)v13 initWithScopeIdentifier:scopeIdentifier5 identifier:identifier8];

  transientRepository3 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v18 = [transientRepository3 unmingledChangeWithScopedIdentifier:v16];

  v128 = v16;
  if (v18)
  {
    goto LABEL_5;
  }

  v33 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:1];
  if (v33)
  {
    v34 = v33;
    sharingRecordChangeData = [v33 sharingRecordChangeData];

    if (sharingRecordChangeData)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v131 = v34;
          v132 = 2112;
          v133 = v16;
          _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "Upgrading %@ in cloud cache to shared master %@", buf, 0x16u);
        }
      }

      v18 = [v34 copy];

      [v18 setScopedIdentifier:v16];
      [v18 awakeFromStorage];
      sharingRecordChangeData2 = [v18 sharingRecordChangeData];
      [v18 setRecordChangeData:sharingRecordChangeData2];

      [v18 setSharingRecordChangeData:0];
      if (v18)
      {
LABEL_5:
        isDelete3 = [v18 isDelete];
        isDelete4 = [changeCopy isDelete];
        v21 = [CPLRecordTarget alloc];
        if (isDelete3)
        {
          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:isDelete4 ^ 1u];

          v23 = changeCopy;
          [v23 setSharingRecordChangeData:0];
        }

        else
        {
          if (!isDelete4)
          {
            v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:3];

            v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v18 target:v22];
            recordChangeData = [changeCopy recordChangeData];
            [v23 setRecordChangeData:recordChangeData];

            v28 = changeCopy;
            goto LABEL_37;
          }

          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:2];

          v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v18 target:v22];
          [v23 setRecordChangeData:0];
        }

        v28 = 0;
LABEL_37:
        v12 = v22;
        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  v65 = v12;
  if (!v12)
  {
    v65 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];
  }

  v12 = v65;
  targetState2 = [v65 targetState];
  v28 = 0;
  if (targetState2 <= 1)
  {
    if (targetState2)
    {
      if (targetState2 == 1)
      {
        if ([changeCopy isDelete])
        {
          v67 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:0];

          v12 = v67;
        }

        goto LABEL_115;
      }

LABEL_118:
      v23 = 0;
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

    v82 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:1];

    v23 = changeCopy;
    v28 = 0;
    v12 = v82;
LABEL_38:
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_15:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v131 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Target for %@ should have been determined by now", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:v127 object:self file:v32 lineNumber:450 description:{@"Target for %@ should have been determined by now", changeCopy}];
LABEL_168:

    abort();
  }

  if (targetState2 == 2)
  {
    if ([changeCopy isDelete])
    {
      v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
      if (!v23)
      {
        v23 = changeCopy;
      }

      [v23 setRecordChangeData:0];
      v28 = 0;
    }

    else
    {
      v28 = [changeCopy copy];
      v93 = [[CPLRecordTarget alloc] initWithScopedIdentifier:scopedIdentifier otherScopedIdentifier:v16 targetState:3];

      v94 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
      if (v94)
      {
        v23 = v94;
        recordChangeData2 = [changeCopy recordChangeData];
        [v23 setRecordChangeData:recordChangeData2];
      }

      else
      {
        v23 = changeCopy;
      }

      v12 = v93;
    }

    goto LABEL_38;
  }

  if (targetState2 != 3)
  {
    v23 = 0;
    goto LABEL_38;
  }

  if ([changeCopy isDelete])
  {
    v68 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];
    if (v68)
    {
      v23 = v68;
      [v68 setRecordChangeData:0];
      v69 = [CPLRecordTarget alloc];
      v70 = scopedIdentifier;
      v71 = v16;
LABEL_82:
      v29 = [(CPLRecordTarget *)v69 initWithScopedIdentifier:v70 otherScopedIdentifier:v71 targetState:2];

LABEL_153:
      v28 = 0;
      goto LABEL_14;
    }

    goto LABEL_115;
  }

  v28 = [changeCopy copy];
  v23 = changeCopy;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_39:
  targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  [targetMapping2 setTarget:v12 forRecordWithScopedIdentifier:scopedIdentifier];

  if (!v23)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v125 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v131 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v125, OS_LOG_TYPE_ERROR, "failed to create merged private record from %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:v127 object:self file:v32 lineNumber:453 description:{@"failed to create merged private record from %@", changeCopy}];
    goto LABEL_168;
  }

  v46 = v12;
  v47 = v128;
  if (identifier)
  {
    v48 = v128;
    *identifier = v128;
    if (v128)
    {
      [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v23 forKeyedSubscript:v128];
    }
  }

  [v23 setSharingRecordIdentifier:0];
  v129 = 0;
  v49 = [v23 validateChangeWithError:&v129];
  v50 = v129;
  if ((v49 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        *buf = 138413314;
        v131 = v52;
        v132 = 2112;
        v133 = scopedIdentifier;
        v134 = 2112;
        v135 = v23;
        v136 = 2112;
        v137 = v46;
        v138 = 2112;
        v139 = v50;
        v53 = v52;
        _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_ERROR, "Failed to merge incoming private <%@ %@>: %@ (%@): %@", buf, 0x34u);

        v47 = v128;
      }
    }

    v54 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:scopedIdentifier isFinal:0];

    v23 = v54;
    if (!v54)
    {
      v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:scopedIdentifier];
    }
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v23 forKeyedSubscript:scopedIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v55 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v56 = @"no shared record";
      *buf = 138412802;
      if (v47)
      {
        v56 = v47;
      }

      v131 = scopedIdentifier;
      v132 = 2112;
      v133 = v56;
      v134 = 2112;
      v135 = v23;
      _os_log_impl(&dword_1DC05A000, v55, OS_LOG_TYPE_DEBUG, "Merging private record %@/%@ to %@", buf, 0x20u);
    }
  }

  if (v28)
  {
    [v23 _setIgnoredRecord:v28];
  }

  v10 = v23;

LABEL_59:
  v57 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)identifier currentPrivateScopedIdentifier:(id)scopedIdentifier
{
  v26 = *MEMORY[0x1E69E9840];
  scopedIdentifierCopy = scopedIdentifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(CPLEngineRemappedRecords *)self->_remappedRecords scopedIdentifiersRemappedToScopedIdentifier:identifier, 0];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    v13 = v10;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v21 + 1) + 8 * v12);
      v15 = [CPLScopedIdentifier alloc];
      identifier = [v14 identifier];
      v10 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:scopedIdentifierCopy identifier:identifier];

      if ([(CPLEngineCloudCache *)self->_cloudCache hasRecordWithScopedIdentifier:v10])
      {
        break;
      }

      ++v12;
      v13 = v10;
      if (v9 == v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
LABEL_13:

    v13 = v10;
  }

  v13 = v13;
  v10 = v13;
LABEL_15:
  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = scopedIdentifierCopy;
  }

  v18 = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_sharedRecordAsPrivateRecord:(id)record target:(id)target
{
  recordCopy = record;
  v7 = [(CPLSharedBatchStorage *)self _remapSharedRecord:recordCopy target:target];
  recordChangeData = [recordCopy recordChangeData];
  [v7 setSharingRecordChangeData:recordChangeData];

  [v7 setRecordChangeData:0];
  scopedIdentifier = [recordCopy scopedIdentifier];

  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  [v7 setSharingScopeIdentifier:scopeIdentifier];

  return v7;
}

- (id)_remapSharedRecord:(id)record target:(id)target
{
  v29 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  targetCopy = target;
  if (!targetCopy)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = recordCopy;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ should have a target here", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v20 lineNumber:115 description:{@"%@ should have a target here", recordCopy}];

    abort();
  }

  v9 = targetCopy;
  v24 = 0;
  v10 = [recordCopy translateToClientChangeUsingIDMapping:self error:&v24];
  v11 = v24;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = recordCopy;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Failed to remap shared record %@: %@", buf, 0x16u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [currentHandler2 handleFailureInMethod:a2 object:self file:v23 lineNumber:118 description:{@"Failed to remap shared record %@: %@", recordCopy, v11}];

    abort();
  }

  scopedIdentifier = [v10 scopedIdentifier];
  scopedIdentifier2 = [v9 scopedIdentifier];
  v14 = [scopedIdentifier isEqual:scopedIdentifier2];

  if ((v14 & 1) == 0)
  {
    scopedIdentifier3 = [v9 scopedIdentifier];
    [v10 setScopedIdentifier:scopedIdentifier3];

    [v10 awakeFromStorage];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isRecordWithScopedIdentifierStashed:(id)stashed
{
  v4 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:stashed];
  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  scopedIdentifier = [v4 scopedIdentifier];
  v7 = [transientRepository hasStashedRecordWithScopedIdentifier:scopedIdentifier];

  if (v7)
  {
    LOBYTE(otherScopedIdentifier) = 1;
  }

  else
  {
    otherScopedIdentifier = [v4 otherScopedIdentifier];

    if (otherScopedIdentifier)
    {
      otherScopedIdentifier2 = [v4 otherScopedIdentifier];
      LOBYTE(otherScopedIdentifier) = [transientRepository hasStashedRecordWithScopedIdentifier:otherScopedIdentifier2];
    }
  }

  return otherScopedIdentifier;
}

- (BOOL)stashChange:(id)change error:(id *)error
{
  scopedIdentifier = [change scopedIdentifier];
  v7 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:scopedIdentifier];

  transientRepository = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  scopedIdentifier2 = [v7 scopedIdentifier];
  v10 = [transientRepository stashChangeWithScopedIdentifier:scopedIdentifier2 error:error];

  if (v10)
  {
    otherScopedIdentifier = [v7 otherScopedIdentifier];

    if (otherScopedIdentifier)
    {
      otherScopedIdentifier2 = [v7 otherScopedIdentifier];
      v13 = [transientRepository stashChangeWithScopedIdentifier:otherScopedIdentifier2 error:error];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)identifier
{
  v3 = [(CPLSharedBatchStorage *)self _targetForSharedScopedIdentifier:identifier];
  scopedIdentifier = [v3 scopedIdentifier];

  return scopedIdentifier;
}

- (id)_targetForSharedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [targetMapping targetForRecordWithOtherScopedIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithSharedCloudScopedIdentifier:identifierCopy trustRecordChangeData:1];
    targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    scopedIdentifier = [v6 scopedIdentifier];
    [targetMapping2 addKnownTarget:v6 forRecordWithScopedIdentifier:scopedIdentifier];
  }

  return v6;
}

- (id)_targetForPrivateScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetMapping = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [targetMapping targetForRecordWithScopedIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithCloudScopedIdentifier:identifierCopy trustRecordChangeData:1];
    targetMapping2 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    [targetMapping2 addKnownTarget:v6 forRecordWithScopedIdentifier:identifierCopy];
  }

  return v6;
}

- (CPLSharedBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope sharedScope:(id)sharedScope merger:(id)merger
{
  repositoryCopy = repository;
  sharedScopeCopy = sharedScope;
  mergerCopy = merger;
  v27.receiver = self;
  v27.super_class = CPLSharedBatchStorage;
  v13 = [(CPLEngineTransientRepositoryBatchStorage *)&v27 initWithTransientRepository:repositoryCopy scope:scope];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sharedScope, sharedScope);
    objc_storeStrong(&v14->_merger, merger);
    engineStore = [repositoryCopy engineStore];
    cloudCache = [engineStore cloudCache];
    cloudCache = v14->_cloudCache;
    v14->_cloudCache = cloudCache;

    ignoredRecords = [engineStore ignoredRecords];
    ignoredRecords = v14->_ignoredRecords;
    v14->_ignoredRecords = ignoredRecords;

    remappedRecords = [engineStore remappedRecords];
    remappedRecords = v14->_remappedRecords;
    v14->_remappedRecords = remappedRecords;

    v22 = objc_alloc_init(MEMORY[0x1E695DF00]);
    now = v14->_now;
    v14->_now = v22;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [standardUserDefaults valueForKey:@"CPLAutomaticallyFixBadSparsePrivateAsset"];

    if (v25)
    {
      if (objc_opt_respondsToSelector())
      {
        v14->_automaticallyFixBadPrivateAsset = [v25 BOOLValue];
      }
    }

    else
    {
      v14->_automaticallyFixBadPrivateAsset = 0;
    }
  }

  return v14;
}

@end