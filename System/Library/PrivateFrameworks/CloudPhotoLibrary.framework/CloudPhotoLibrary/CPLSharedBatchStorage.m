@interface CPLSharedBatchStorage
- (BOOL)_keepIgnoredRecord:(id)a3 shadowingRecord:(id)a4 inScope:(id)a5 error:(id *)a6;
- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)a3 error:(id *)a4;
- (BOOL)addCloudScopedIdentifier:(id)a3 forLocalScopedIdentifier:(id)a4 isFinal:(BOOL)a5 direction:(unint64_t)a6 error:(id *)a7;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (BOOL)isRecordWithScopedIdentifierStashed:(id)a3;
- (BOOL)removeChange:(id)a3 error:(id *)a4;
- (BOOL)stashChange:(id)a3 error:(id *)a4;
- (CPLSharedBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4 sharedScope:(id)a5 merger:(id)a6;
- (id)_allChangesMatchingChangeType:(unint64_t)a3 enumerator:(id)a4;
- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)a3 currentPrivateScopedIdentifier:(id)a4;
- (id)_mergedRecordWithPrivateChange:(id)a3 sharedScopedIdentifier:(id *)a4;
- (id)_mergedRecordWithSharedChange:(id)a3 target:(id)a4;
- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)a3;
- (id)_remapSharedRecord:(id)a3 target:(id)a4;
- (id)_sharedRecordAsPrivateRecord:(id)a3 target:(id)a4;
- (id)_targetForPrivateScopedIdentifier:(id)a3;
- (id)_targetForSharedScopedIdentifier:(id)a3;
- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)a3 sharedRecordGenerator:(id)a4;
- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)a3;
- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 trashed:(BOOL)a5;
- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4;
- (id)allChangesWithScopeIdentifier:(id)a3;
- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)a3;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)setupCloudScopedIdentifier:(id)a3 forLocalScopedIdentifier:(id)a4 isFinal:(BOOL)a5 direction:(unint64_t)a6 error:(id *)a7;
- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)a3;
- (void)beginExtractingBatch;
- (void)cleanupAfterExtractingBatch;
@end

@implementation CPLSharedBatchStorage

- (id)setupCloudScopedIdentifier:(id)a3 forLocalScopedIdentifier:(id)a4 isFinal:(BOOL)a5 direction:(unint64_t)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:984 description:{@"%@ should not be used here", v14}];

  abort();
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 1;
  }

  return [(CPLSharedBatchStorage *)self _privateScopedIdentifierForSharedScopedIdentifier:a3];
}

- (id)firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:968 description:{@"%@ should not be used here", v8}];

  abort();
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:964 description:{@"%@ should not be used here", v9}];

  abort();
}

- (BOOL)addCloudScopedIdentifier:(id)a3 forLocalScopedIdentifier:(id)a4 isFinal:(BOOL)a5 direction:(unint64_t)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v14 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:960 description:{@"%@ should not be used here", v14}];

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
      v4 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v10 = v4;
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
      v6 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
      sharedScope = self->_sharedScope;
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = sharedScope;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Begin extracting batch for %@/%@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeChange:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35.receiver = self;
  v35.super_class = CPLSharedBatchStorage;
  if ([(CPLEngineTransientRepositoryBatchStorage *)&v35 removeChange:v7 error:a4])
  {
    v8 = [v7 scopedIdentifier];
    v9 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v8];

    v10 = [v9 otherScopedIdentifier];
    if (!v10)
    {
      v17 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v11 = [v7 _ignoredRecord];
    if (v11)
    {
      v12 = [v7 isMasterChange];
      v13 = [v11 scopedIdentifier];
      v14 = v13;
      if (v12)
      {
        v15 = [v9 scopedIdentifier];
        v16 = [v14 isEqual:v15];

        if ((v16 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = [v9 scopedIdentifier];
              *buf = 138412546;
              v37 = v11;
              v38 = 2112;
              v39 = v26;
              _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@", buf, 0x16u);
            }
          }

          v27 = [MEMORY[0x1E696AAA8] currentHandler];
          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          v29 = [v9 scopedIdentifier];
          [v27 handleFailureInMethod:a2 object:self file:v28 lineNumber:918 description:{@"%@ is incorrectly ignored for %@", v11, v29}];

          abort();
        }

        if ([v9 targetState] == 1)
        {
          if (![(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:v11 error:a4])
          {
            goto LABEL_8;
          }
        }

        else if (![(CPLSharedBatchStorage *)self _keepIgnoredRecord:v11 shadowingRecord:v7 inScope:self->_sharedScope error:a4])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v18 = [v13 isEqual:v10];

        if ((v18 & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v30 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = [v9 scopedIdentifier];
              *buf = 138412802;
              v37 = v11;
              v38 = 2112;
              v39 = v31;
              v40 = 2112;
              v41 = v10;
              _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "%@ is incorrectly ignored for %@ - it should be %@", buf, 0x20u);
            }
          }

          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
          v34 = [v9 scopedIdentifier];
          [v32 handleFailureInMethod:a2 object:self file:v33 lineNumber:926 description:{@"%@ is incorrectly ignored for %@ - it should be %@", v11, v34, v10}];

          abort();
        }

        if ([v9 shouldUploadToOtherRecord])
        {
          v17 = [(CPLSharedBatchStorage *)self _transferIgnoredRecordToTransientPullRepository:v11 error:a4];
          goto LABEL_22;
        }

        v19 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
        v20 = [(CPLSharedBatchStorage *)self _keepIgnoredRecord:v11 shadowingRecord:v7 inScope:v19 error:a4];

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
        v37 = v10;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEBUG, "Automatically mingling %@", buf, 0xCu);
      }
    }

    v22 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    v17 = [v22 markUnmingledChangeWithScopedIdentifierAsMingled:v10 error:a4];

    goto LABEL_22;
  }

  v17 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_keepIgnoredRecord:(id)a3 shadowingRecord:(id)a4 inScope:(id)a5 error:(id *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = CPLIgnoredDateForRecord(v10, a4, self->_now);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 scopedIdentifier];
      v15 = [CPLDateFormatter stringFromDateAgo:v12 now:self->_now];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Keeping ignored record %{public}@ with ignored date %{public}@", &v19, 0x16u);
    }
  }

  v16 = -[CPLEngineIgnoredRecords addIgnoredRecord:ignoredDate:otherScopeIndex:error:](self->_ignoredRecords, "addIgnoredRecord:ignoredDate:otherScopeIndex:error:", v10, v12, [v11 cloudIndex], a6);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_transferIgnoredRecordToTransientPullRepository:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 scopedIdentifier];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Automatically mingling previously ignored record %@", &v14, 0xCu);
    }
  }

  v9 = objc_alloc_init(CPLChangeBatch);
  [(CPLChangeBatch *)v9 addRecord:v6];
  v10 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v11 = [v10 appendBatch:v9 alreadyMingled:1 countOfAssetChanges:0 error:a4];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v6 = [v5 scopeIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
    v9 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
    if ([v8 hasUnmingledChangesForScope:v9])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v8 hasUnmingledChangesForScope:self->_sharedScope];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CPLSharedBatchStorage;
    v10 = [(CPLEngineTransientRepositoryBatchStorage *)&v12 hasChangesInScopeWithIdentifier:v4];
  }

  return v10;
}

- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:881 description:{@"%@ should not be used on %@", v8, objc_opt_class()}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", &v17, 0x16u);
    }
  }

  v8 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v9 = [v8 unmingledChangeWithScopedIdentifier:v5];

  if (v9)
  {
    v10 = [(CPLSharedBatchStorage *)self _mergedRecordWithPrivateChange:v9 sharedScopedIdentifier:0];
  }

  else
  {
    v11 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v5];
    v12 = [v11 otherScopedIdentifier];
    if (v12 && (-[CPLEngineTransientRepositoryBatchStorage transientRepository](self, "transientRepository"), v13 = objc_claimAutoreleasedReturnValue(), [v13 unmingledChangeWithScopedIdentifier:v12], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
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

- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v23 = v9;
      v24 = 2112;
      v25 = a3;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  v10 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v11 = [v10 scopeIdentifier];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke;
    v19[3] = &unk_1E861B6B0;
    v19[4] = self;
    v21 = a3;
    v20 = v7;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__CPLSharedBatchStorage_allNonDeletedChangesWithClass_scopeIdentifier___block_invoke_2;
    v18[3] = &unk_1E861B700;
    v18[4] = self;
    v18[5] = a3;
    v13 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v19 sharedRecordGenerator:v18];
    v14 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:0 enumerator:v13];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CPLSharedBatchStorage;
    v14 = [(CPLEngineTransientRepositoryBatchStorage *)&v17 allNonDeletedChangesWithClass:a3 scopeIdentifier:v7];
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

- (id)allChangesWithScopeIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
    }
  }

  v8 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v9 = [v8 scopeIdentifier];
  v10 = [v5 isEqualToString:v9];

  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__CPLSharedBatchStorage_allChangesWithScopeIdentifier___block_invoke;
    v16[3] = &unk_1E861B728;
    v16[4] = self;
    v17 = v5;
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
    v11 = [(CPLEngineTransientRepositoryBatchStorage *)&v14 allChangesWithScopeIdentifier:v5];
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

- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:832 description:{@"Trying to extract batches using unsupported %@", v9}];

  abort();
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 trashed:(BOOL)a5
{
  v7 = a4;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
  v10 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:828 description:{@"Trying to extract batches using unsupported %@", v10}];

  abort();
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [CPLRecordChange descriptionForChangeType:a5];
      *buf = 138413058;
      v26 = v11;
      v27 = 2112;
      v28 = a3;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "%@ %@ %@ %@", buf, 0x2Au);
    }
  }

  v13 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v14 = [v13 scopeIdentifier];
  v15 = [v9 isEqualToString:v14];

  if (v15)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke;
    v22[3] = &unk_1E861B6B0;
    v22[4] = self;
    v24 = a3;
    v23 = v9;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__CPLSharedBatchStorage_allChangesWithClass_scopeIdentifier_changeType___block_invoke_2;
    v21[3] = &unk_1E861B700;
    v21[4] = self;
    v21[5] = a3;
    v16 = [(CPLSharedBatchStorage *)self _unionEnumerationWithPrivateRecordEnumeratorGenerator:v22 sharedRecordGenerator:v21];
    v17 = [(CPLSharedBatchStorage *)self _allChangesMatchingChangeType:a5 enumerator:v16];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CPLSharedBatchStorage;
    v17 = [(CPLEngineTransientRepositoryBatchStorage *)&v20 allChangesWithClass:a3 scopeIdentifier:v9 changeType:a5];
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

- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = v9;
      v46 = 2112;
      v47 = a3;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@", buf, 0x20u);
    }
  }

  v10 = [v7 scopeIdentifier];
  v11 = [(CPLEngineTransientRepositoryBatchStorage *)self scope];
  v12 = [v11 scopeIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke;
    v40[3] = &unk_1E861B6B0;
    v40[4] = self;
    v42 = a3;
    v15 = v7;
    v41 = v15;
    v16 = MEMORY[0x1E128EBA0](v40);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__CPLSharedBatchStorage_allChangesWithClass_relatedScopedIdentifier___block_invoke_2;
    v37[3] = &unk_1E861B6D8;
    v37[4] = self;
    v38 = v15;
    v39 = a3;
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
    v32 = self;
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
    v26 = [(CPLEngineTransientRepositoryBatchStorage *)&v29 allChangesWithClass:a3 relatedScopedIdentifier:v7];
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

- (id)_allChangesMatchingChangeType:(unint64_t)a3 enumerator:(id)a4
{
  v7 = a4;
  if (a3 == 1024)
  {
    v8 = &__block_literal_global_116;
  }

  else
  {
    if (a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
      v13 = [CPLRecordChange descriptionForChangeType:a3];
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:754 description:{@"Trying to extract batches using change type %@", v13}];

      abort();
    }

    v8 = &__block_literal_global_34;
  }

  v9 = [[CPLMapEnumerator alloc] initWithEnumerator:v7 map:v8];

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

- (id)_unionEnumerationWithPrivateRecordEnumeratorGenerator:(id)a3 sharedRecordGenerator:(id)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [CPLUnionEnumerator alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke;
  v24[3] = &unk_1E861B668;
  v26 = v6;
  v24[4] = self;
  v10 = v8;
  v25 = v10;
  v11 = v6;
  v12 = MEMORY[0x1E128EBA0](v24);
  v27[0] = v12;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__CPLSharedBatchStorage__unionEnumerationWithPrivateRecordEnumeratorGenerator_sharedRecordGenerator___block_invoke_3;
  v20[3] = &unk_1E861B668;
  v22 = self;
  v23 = v7;
  v21 = v10;
  v13 = v10;
  v14 = v7;
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

- (id)_mergedRecordWithSharedChange:(id)a3 target:(id)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    goto LABEL_73;
  }

  if ([v6 isMasterChange])
  {
    v12 = [(CPLRecordTarget *)v7 scopedIdentifier];
    v13 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:v12];
    v14 = [v13 copy];
    if ([v6 isDelete])
    {
      if (v13)
      {
        v15 = -[CPLRecordTarget initWithScopedIdentifier:otherScopedIdentifier:targetState:]([CPLRecordTarget alloc], "initWithScopedIdentifier:otherScopedIdentifier:targetState:", v12, v8, [v13 isDelete] ^ 1);
        v16 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [v16 setTarget:v15 forRecordWithScopedIdentifier:v12];

        v17 = v13;
LABEL_7:
        v18 = v17;
LABEL_45:

LABEL_46:
        goto LABEL_58;
      }

      v44 = [(CPLRecordTarget *)v7 targetState];
      v18 = 0;
      if (v44 > 1)
      {
        if (v44 != 2)
        {
          if (v44 != 3)
          {
            goto LABEL_46;
          }

          goto LABEL_83;
        }
      }

      else if (v44)
      {
        if (v44 != 1)
        {
          goto LABEL_46;
        }

LABEL_83:
        v75 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v12 isFinal:0];
        if (!v75)
        {
          v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v6 target:v7];
          goto LABEL_46;
        }

        v18 = v75;
        [(CPLRecordTarget *)v75 setSharingRecordChangeData:0];
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v12 otherScopedIdentifier:v8 targetState:1];
        [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        v76 = v90 = 56;
        [v76 setTarget:v15 forRecordWithScopedIdentifier:v12];

        goto LABEL_45;
      }

      v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v12 otherScopedIdentifier:v8 targetState:0];
      v77 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      [v77 setTarget:v15 forRecordWithScopedIdentifier:v12];

      v17 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v6 target:v7];
      goto LABEL_7;
    }

    v90 = 56;
    if (!v14)
    {
      if ([(CPLRecordTarget *)v7 targetState]!= 1 || ([(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v12 isFinal:1], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v14 = 0;
        v24 = 1;
        v25 = 2;
LABEL_43:
        v15 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v12 otherScopedIdentifier:v8 targetState:v25];
        v46 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        [v46 setTarget:v15 forRecordWithScopedIdentifier:v12];

        v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v6 target:v7];
        if ((v24 & 1) == 0)
        {
          v47 = [(CPLRecordTarget *)v14 recordChangeData];
          [(CPLRecordTarget *)v18 setRecordChangeData:v47];
        }

        goto LABEL_45;
      }

      v14 = v45;
    }

    v24 = 0;
    v25 = 3;
    goto LABEL_43;
  }

  v19 = [v6 isDelete];
  v20 = [(CPLRecordTarget *)v7 targetState];
  if (v19)
  {
    v14 = 0;
    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          cloudCache = self->_cloudCache;
          v22 = [(CPLRecordTarget *)v7 scopedIdentifier];
          v23 = [(CPLEngineCloudCache *)cloudCache recordWithScopedIdentifier:v22 isFinal:0];

          if (v23)
          {
            v18 = v23;
            [(CPLRecordTarget *)v18 setSharingRecordChangeData:0];
LABEL_56:

            goto LABEL_57;
          }

          v78 = [CPLRecordTarget alloc];
          v79 = [(CPLRecordTarget *)v7 scopedIdentifier];
          v80 = [(CPLRecordTarget *)v78 initWithScopedIdentifier:v79 otherScopedIdentifier:v8 targetState:0];

          v81 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
          v82 = [(CPLRecordTarget *)v7 scopedIdentifier];
          [v81 setTarget:v80 forRecordWithScopedIdentifier:v82];

          v83 = self;
          v84 = v6;
          v85 = v7;
LABEL_88:
          v18 = [(CPLSharedBatchStorage *)v83 _sharedRecordAsPrivateRecord:v84 target:v85];

          goto LABEL_56;
        }

        goto LABEL_40;
      }

LABEL_41:
      v18 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v6 target:v7];
LABEL_57:
      v14 = 0;
      goto LABEL_58;
    }

    if (v20 == 2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v6;
          v37 = "%@ has been unshared";
          goto LABEL_51;
        }

LABEL_52:
      }

LABEL_53:
      v55 = [CPLRecordTarget alloc];
      v56 = [(CPLRecordTarget *)v7 scopedIdentifier];
      v23 = [(CPLRecordTarget *)v55 initWithScopedIdentifier:v56 otherScopedIdentifier:v8 targetState:0];

      v57 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
      v58 = [(CPLRecordTarget *)v7 scopedIdentifier];
      [v57 setTarget:v23 forRecordWithScopedIdentifier:v58];

      v52 = self;
      v53 = v6;
      v54 = v7;
      goto LABEL_54;
    }

    if (v20 == 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v6;
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

  if (!v20)
  {
    v26 = [(CPLSharedBatchStorage *)self _updatePrivateScopedIdentifierForUnknownTarget:v7];

    remappedRecords = self->_remappedRecords;
    v28 = [(CPLRecordTarget *)v26 scopedIdentifier];
    v14 = [(CPLEngineRemappedRecords *)remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v28];

    v29 = [(CPLRecordTarget *)v14 identifier];
    v30 = [(CPLRecordTarget *)v26 scopedIdentifier];
    v31 = [v30 identifier];
    v32 = [v29 isEqualToString:v31];

    if (!v32)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v70 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = [(CPLRecordTarget *)v26 scopedIdentifier];
          *buf = 138412802;
          v93 = v6;
          v94 = 2112;
          v95 = v71;
          v96 = 2112;
          v97 = v14;
          _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_DEFAULT, "%@'s private counterpart %@ is remapped to %@ - ignoring shared record for now", buf, 0x20u);
        }
      }

      v72 = objc_opt_class();
      v73 = [(CPLRecordTarget *)v26 scopedIdentifier];
      v11 = [v72 newRecordWithScopedIdentifier:v73];

      v74 = [(CPLRecordTarget *)v14 identifier];
      [(CPLRecordTarget *)v11 setRealIdentifier:v74];

      [(CPLRecordTarget *)v11 _setIgnoredRecord:v6];
      [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v11 forKeyedSubscript:v8];
      v10 = 0;
      v7 = v26;
      goto LABEL_72;
    }

    v7 = v26;
  }

  v33 = [(CPLRecordTarget *)v7 targetState];
  v14 = 0;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      goto LABEL_41;
    }

    if (v33 == 3)
    {
      v38 = self->_cloudCache;
      v39 = [(CPLRecordTarget *)v7 scopedIdentifier];
      v23 = [(CPLEngineCloudCache *)v38 recordWithScopedIdentifier:v39 isFinal:0];

      if (!v23)
      {
        v86 = [CPLRecordTarget alloc];
        v87 = [(CPLRecordTarget *)v7 scopedIdentifier];
        v80 = [(CPLRecordTarget *)v86 initWithScopedIdentifier:v87 otherScopedIdentifier:v8 targetState:2];

        v88 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
        v89 = [(CPLRecordTarget *)v7 scopedIdentifier];
        [v88 setTarget:v80 forRecordWithScopedIdentifier:v89];

        v83 = self;
        v84 = v6;
        v85 = v80;
        goto LABEL_88;
      }

      merger = self->_merger;
      v41 = [(CPLSharedBatchStorage *)self _remapSharedRecord:v6 target:v7];
      [(CPLSharedRecordMerger *)merger mergeRecord:v41 isSharedRecord:1 inPrivateRecord:v23];

      v42 = [v8 scopeIdentifier];
      [(CPLRecordTarget *)v23 setSharingScopeIdentifier:v42];

      v43 = v23;
LABEL_55:
      v18 = v43;
      goto LABEL_56;
    }

    goto LABEL_40;
  }

  if (!v33)
  {
    goto LABEL_47;
  }

  if (v33 != 1)
  {
    goto LABEL_40;
  }

  v34 = self->_cloudCache;
  v35 = [(CPLRecordTarget *)v7 scopedIdentifier];
  v18 = [(CPLEngineCloudCache *)v34 recordWithScopedIdentifier:v35 isFinal:0];

  if (!v18)
  {
LABEL_47:
    v48 = [CPLRecordTarget alloc];
    v49 = [(CPLRecordTarget *)v7 scopedIdentifier];
    v23 = [(CPLRecordTarget *)v48 initWithScopedIdentifier:v49 otherScopedIdentifier:v8 targetState:2];

    v50 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    v51 = [(CPLRecordTarget *)v7 scopedIdentifier];
    [v50 setTarget:v23 forRecordWithScopedIdentifier:v51];

    v52 = self;
    v53 = v6;
    v54 = v23;
LABEL_54:
    v43 = [(CPLSharedBatchStorage *)v52 _sharedRecordAsPrivateRecord:v53 target:v54];
    goto LABEL_55;
  }

  v14 = v6;
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
        v93 = v6;
        v94 = 2112;
        v95 = v18;
        v96 = 2112;
        v97 = v7;
        v98 = 2112;
        v99 = v60;
        _os_log_impl(&dword_1DC05A000, v61, OS_LOG_TYPE_ERROR, "Failed to merge incoming shared %@: %@ (%@): %@", buf, 0x2Au);
      }
    }

    v62 = self->_cloudCache;
    v63 = [(CPLRecordTarget *)v7 scopedIdentifier];
    v64 = [(CPLEngineCloudCache *)v62 recordWithScopedIdentifier:v63 isFinal:0];

    v18 = v64;
    if (!v64)
    {
      v65 = objc_opt_class();
      v66 = [(CPLRecordTarget *)v7 scopedIdentifier];
      v18 = [v65 newDeleteChangeWithScopedIdentifier:v66];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v67 = __CPLStorageOSLogDomain();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v93 = v6;
      v94 = 2112;
      v95 = v7;
      v96 = 2112;
      v97 = v18;
      _os_log_impl(&dword_1DC05A000, v67, OS_LOG_TYPE_DEFAULT, "Merging record with shared change %@ - %@ -> %@", buf, 0x20u);
    }
  }

  if (v14)
  {
    [(CPLRecordTarget *)v18 _setIgnoredRecord:v14];
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v18 forKeyedSubscript:v8];
  v10 = v18;

  v11 = v10;
LABEL_72:

LABEL_73:
  v68 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_updatePrivateScopedIdentifierForUnknownTarget:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLRecordTarget *)v4 otherScopedIdentifier];
  v6 = [(CPLRecordTarget *)v4 scopedIdentifier];
  if (v5)
  {
    v7 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:v5 currentPrivateScopedIdentifier:v6];
    if (([v7 isEqual:v6] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLStorageOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Automatically found private scoped identifier of %@ to be %@", &v12, 0x16u);
        }
      }

      v9 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v7 otherScopedIdentifier:v5 targetState:[(CPLRecordTarget *)v4 targetState]];

      v4 = v9;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_mergedRecordWithPrivateChange:(id)a3 sharedScopedIdentifier:(id *)a4
{
  v140 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 scopedIdentifier];
  v9 = [(NSMutableDictionary *)self->_alreadyProcessedChanges objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    goto LABEL_59;
  }

  v11 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v12 = [v11 targetForRecordWithScopedIdentifier:v8];

  v127 = a2;
  if (![v7 isMasterChange])
  {
    if (![v7 supportsSharingScopedIdentifier])
    {
      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8];

      v23 = v7;
      v28 = 0;
      v128 = 0;
      goto LABEL_14;
    }

    if ([v7 isDelete])
    {
      v24 = v12;
      if (!v12)
      {
        v24 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v8];
      }

      v12 = v24;
      v25 = [v24 otherScopedIdentifier];
      v26 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v27 = [v26 unmingledChangeWithScopedIdentifier:v25];

      v128 = v25;
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = [(CPLEngineIgnoredRecords *)self->_ignoredRecords recordWithScopedIdentifier:v25];
        v27 = v28;
        if (!v28)
        {
          v91 = [v12 targetState];
          if (v91 <= 1)
          {
            if (v91 > 1)
            {
              goto LABEL_118;
            }

            v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v25 targetState:0];

            v23 = v7;
            goto LABEL_153;
          }

          if (v91 == 2)
          {
            v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];
            if (!v23)
            {
              v23 = v7;
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

          if (v91 != 3)
          {
            goto LABEL_118;
          }

          v96 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];
          if (v96)
          {
            v23 = v96;
            [v96 setRecordChangeData:0];
            v69 = [CPLRecordTarget alloc];
            v70 = v8;
            v71 = v25;
            goto LABEL_82;
          }

LABEL_115:
          v23 = v7;
          goto LABEL_116;
        }
      }

      v62 = [v27 isDelete];
      v63 = [CPLRecordTarget alloc];
      if (v62)
      {
        v64 = [(CPLRecordTarget *)v63 initWithScopedIdentifier:v8 otherScopedIdentifier:v25 targetState:0];

        v23 = v7;
      }

      else
      {
        v64 = [(CPLRecordTarget *)v63 initWithScopedIdentifier:v8 otherScopedIdentifier:v25 targetState:2];

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

    v38 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
    v39 = [v7 isSharedInScopeWithIdentifier:v38];

    if (!v39)
    {
      v59 = [v12 otherScopedIdentifier];
      v60 = v59;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v83 = [CPLScopedIdentifier alloc];
        v84 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        v85 = [v8 identifier];
        v61 = [(CPLScopedIdentifier *)v83 initWithScopeIdentifier:v84 identifier:v85];
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

      v90 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
      v128 = v89;
      v28 = [v90 unmingledChangeWithScopedIdentifier:v89];

      if ([v28 isDelete])
      {

        v28 = 0;
      }

      v29 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v89 targetState:1];

      v23 = v7;
LABEL_14:
      v12 = v29;
      if (v29)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    }

    v40 = [v7 sharingRecordScopedIdentifier];
    v41 = [v40 identifier];
    v42 = [v41 isEqualToString:@"__INVALID__"];

    if (v42)
    {
      if (_CPLSilentLogging)
      {
LABEL_137:
        v112 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8];

        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v8];
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
        v131 = v8;
        _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to an invalid shared record - deleting", buf, 0xCu);
      }

LABEL_136:

      goto LABEL_137;
    }

    if (v40 && self->_automaticallyFixBadPrivateAsset)
    {
      v72 = [v40 identifier];
      v73 = [v8 identifier];
      v74 = [v72 isEqualToString:v73];

      if ((v74 & 1) == 0)
      {
        v75 = [CPLScopedIdentifier alloc];
        v76 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
        v77 = [v8 identifier];
        v78 = [(CPLScopedIdentifier *)v75 initWithScopeIdentifier:v76 identifier:v77];

        v43 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v78];

        if (!v43 || (-[NSObject identifier](v43, "identifier"), v79 = objc_claimAutoreleasedReturnValue(), [v40 identifier], v80 = objc_claimAutoreleasedReturnValue(), v81 = objc_msgSend(v79, "isEqualToString:", v80), v80, v79, (v81 & 1) == 0))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v113 = __CPLStorageOSLogDomain();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              v114 = [v43 identifier];
              *buf = 138412802;
              v131 = v8;
              v132 = 2112;
              v133 = v40;
              v134 = 2114;
              v135 = v114;
              _os_log_impl(&dword_1DC05A000, v113, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %{public}@ - deleting", buf, 0x20u);
            }
          }

          goto LABEL_136;
        }
      }
    }

    else if (!v40)
    {
      v97 = [CPLScopedIdentifier alloc];
      v98 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
      v99 = [v8 identifier];
      v92 = [(CPLScopedIdentifier *)v97 initWithScopeIdentifier:v98 identifier:v99];

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
      v105 = [(CPLSharedBatchStorage *)self _correctPrivateScopedIdentifierForSharedScopedIdentifier:v103 currentPrivateScopedIdentifier:v8];
      if (([v105 isEqual:v8] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v111 = __CPLStorageOSLogDomain();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v131 = v8;
            v132 = 2112;
            v133 = v104;
            v134 = 2112;
            v135 = v105;
            _os_log_impl(&dword_1DC05A000, v111, OS_LOG_TYPE_DEFAULT, "Sparse private %@ is pointing to %@ but the private sparse should be %@ - ignoring", buf, 0x20u);
          }
        }

        v112 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8];
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v8];

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
            v12 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v8];
          }

          if (([v12 targetState] & 0xFFFFFFFFFFFFFFFELL) != 2 || (-[CPLEngineCloudCache recordWithScopedIdentifier:isFinal:](self->_cloudCache, "recordWithScopedIdentifier:isFinal:", v8, 0), (v123 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v115 = 0;
            v28 = 0;
            goto LABEL_148;
          }

          v124 = v123;
          v126 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v107 targetState:3];

          v115 = 0;
          v28 = 0;
          v121 = 0;
          v120 = v124;
          goto LABEL_146;
        }
      }

      v115 = v110;
      v116 = [v110 isDelete];
      v117 = [CPLRecordTarget alloc];
      if (v116)
      {
        v118 = [(CPLRecordTarget *)v117 initWithScopedIdentifier:v8 otherScopedIdentifier:v128 targetState:0];

LABEL_147:
        v12 = v118;
        v122 = v106;
LABEL_148:
        v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v8];
        goto LABEL_149;
      }

      v118 = [(CPLRecordTarget *)v117 initWithScopedIdentifier:v8 otherScopedIdentifier:v128 targetState:3];

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
      [(CPLSharedRecordMerger *)self->_merger mergeRecord:v120 isSharedRecord:v121 inPrivateRecord:v7];
      v23 = v7;

      v12 = v126;
LABEL_149:

      goto LABEL_150;
    }

    v92 = v40;
    goto LABEL_121;
  }

  v13 = [CPLScopedIdentifier alloc];
  v14 = [(CPLEngineScope *)self->_sharedScope scopeIdentifier];
  v15 = [v8 identifier];
  v16 = [(CPLScopedIdentifier *)v13 initWithScopeIdentifier:v14 identifier:v15];

  v17 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v18 = [v17 unmingledChangeWithScopedIdentifier:v16];

  v128 = v16;
  if (v18)
  {
    goto LABEL_5;
  }

  v33 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:1];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 sharingRecordChangeData];

    if (v35)
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
      v37 = [v18 sharingRecordChangeData];
      [v18 setRecordChangeData:v37];

      [v18 setSharingRecordChangeData:0];
      if (v18)
      {
LABEL_5:
        v19 = [v18 isDelete];
        v20 = [v7 isDelete];
        v21 = [CPLRecordTarget alloc];
        if (v19)
        {
          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:v20 ^ 1u];

          v23 = v7;
          [v23 setSharingRecordChangeData:0];
        }

        else
        {
          if (!v20)
          {
            v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:3];

            v23 = [(CPLSharedBatchStorage *)self _sharedRecordAsPrivateRecord:v18 target:v22];
            v44 = [v7 recordChangeData];
            [v23 setRecordChangeData:v44];

            v28 = v7;
            goto LABEL_37;
          }

          v22 = [(CPLRecordTarget *)v21 initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:2];

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
    v65 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v8];
  }

  v12 = v65;
  v66 = [v65 targetState];
  v28 = 0;
  if (v66 <= 1)
  {
    if (v66)
    {
      if (v66 == 1)
      {
        if ([v7 isDelete])
        {
          v67 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:0];

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

    v82 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:1];

    v23 = v7;
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
        v131 = v7;
        _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Target for %@ should have been determined by now", buf, 0xCu);
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [v31 handleFailureInMethod:v127 object:self file:v32 lineNumber:450 description:{@"Target for %@ should have been determined by now", v7}];
LABEL_168:

    abort();
  }

  if (v66 == 2)
  {
    if ([v7 isDelete])
    {
      v23 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];
      if (!v23)
      {
        v23 = v7;
      }

      [v23 setRecordChangeData:0];
      v28 = 0;
    }

    else
    {
      v28 = [v7 copy];
      v93 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v8 otherScopedIdentifier:v16 targetState:3];

      v94 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];
      if (v94)
      {
        v23 = v94;
        v95 = [v7 recordChangeData];
        [v23 setRecordChangeData:v95];
      }

      else
      {
        v23 = v7;
      }

      v12 = v93;
    }

    goto LABEL_38;
  }

  if (v66 != 3)
  {
    v23 = 0;
    goto LABEL_38;
  }

  if ([v7 isDelete])
  {
    v68 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];
    if (v68)
    {
      v23 = v68;
      [v68 setRecordChangeData:0];
      v69 = [CPLRecordTarget alloc];
      v70 = v8;
      v71 = v16;
LABEL_82:
      v29 = [(CPLRecordTarget *)v69 initWithScopedIdentifier:v70 otherScopedIdentifier:v71 targetState:2];

LABEL_153:
      v28 = 0;
      goto LABEL_14;
    }

    goto LABEL_115;
  }

  v28 = [v7 copy];
  v23 = v7;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_39:
  v45 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  [v45 setTarget:v12 forRecordWithScopedIdentifier:v8];

  if (!v23)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v125 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v131 = v7;
        _os_log_impl(&dword_1DC05A000, v125, OS_LOG_TYPE_ERROR, "failed to create merged private record from %@", buf, 0xCu);
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [v31 handleFailureInMethod:v127 object:self file:v32 lineNumber:453 description:{@"failed to create merged private record from %@", v7}];
    goto LABEL_168;
  }

  v46 = v12;
  v47 = v128;
  if (a4)
  {
    v48 = v128;
    *a4 = v128;
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
        v133 = v8;
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

    v54 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v8 isFinal:0];

    v23 = v54;
    if (!v54)
    {
      v23 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:v8];
    }
  }

  [(NSMutableDictionary *)self->_alreadyProcessedChanges setObject:v23 forKeyedSubscript:v8];
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

      v131 = v8;
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

- (id)_correctPrivateScopedIdentifierForSharedScopedIdentifier:(id)a3 currentPrivateScopedIdentifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(CPLEngineRemappedRecords *)self->_remappedRecords scopedIdentifiersRemappedToScopedIdentifier:a3, 0];
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
      v16 = [v14 identifier];
      v10 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:v6 identifier:v16];

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
    v17 = v6;
  }

  v18 = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_sharedRecordAsPrivateRecord:(id)a3 target:(id)a4
{
  v6 = a3;
  v7 = [(CPLSharedBatchStorage *)self _remapSharedRecord:v6 target:a4];
  v8 = [v6 recordChangeData];
  [v7 setSharingRecordChangeData:v8];

  [v7 setRecordChangeData:0];
  v9 = [v6 scopedIdentifier];

  v10 = [v9 scopeIdentifier];
  [v7 setSharingScopeIdentifier:v10];

  return v7;
}

- (id)_remapSharedRecord:(id)a3 target:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ should have a target here", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [v19 handleFailureInMethod:a2 object:self file:v20 lineNumber:115 description:{@"%@ should have a target here", v7}];

    abort();
  }

  v9 = v8;
  v24 = 0;
  v10 = [v7 translateToClientChangeUsingIDMapping:self error:&v24];
  v11 = v24;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v7;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Failed to remap shared record %@: %@", buf, 0x16u);
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLSharedBatchStorage.m"];
    [v22 handleFailureInMethod:a2 object:self file:v23 lineNumber:118 description:{@"Failed to remap shared record %@: %@", v7, v11}];

    abort();
  }

  v12 = [v10 scopedIdentifier];
  v13 = [v9 scopedIdentifier];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v9 scopedIdentifier];
    [v10 setScopedIdentifier:v15];

    [v10 awakeFromStorage];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isRecordWithScopedIdentifierStashed:(id)a3
{
  v4 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:a3];
  v5 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v6 = [v4 scopedIdentifier];
  v7 = [v5 hasStashedRecordWithScopedIdentifier:v6];

  if (v7)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [v4 otherScopedIdentifier];

    if (v8)
    {
      v9 = [v4 otherScopedIdentifier];
      LOBYTE(v8) = [v5 hasStashedRecordWithScopedIdentifier:v9];
    }
  }

  return v8;
}

- (BOOL)stashChange:(id)a3 error:(id *)a4
{
  v6 = [a3 scopedIdentifier];
  v7 = [(CPLSharedBatchStorage *)self _targetForPrivateScopedIdentifier:v6];

  v8 = [(CPLEngineTransientRepositoryBatchStorage *)self transientRepository];
  v9 = [v7 scopedIdentifier];
  v10 = [v8 stashChangeWithScopedIdentifier:v9 error:a4];

  if (v10)
  {
    v11 = [v7 otherScopedIdentifier];

    if (v11)
    {
      v12 = [v7 otherScopedIdentifier];
      v13 = [v8 stashChangeWithScopedIdentifier:v12 error:a4];
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

- (id)_privateScopedIdentifierForSharedScopedIdentifier:(id)a3
{
  v3 = [(CPLSharedBatchStorage *)self _targetForSharedScopedIdentifier:a3];
  v4 = [v3 scopedIdentifier];

  return v4;
}

- (id)_targetForSharedScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [v5 targetForRecordWithOtherScopedIdentifier:v4];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithSharedCloudScopedIdentifier:v4 trustRecordChangeData:1];
    v7 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    v8 = [v6 scopedIdentifier];
    [v7 addKnownTarget:v6 forRecordWithScopedIdentifier:v8];
  }

  return v6;
}

- (id)_targetForPrivateScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
  v6 = [v5 targetForRecordWithScopedIdentifier:v4];

  if (!v6)
  {
    v6 = [(CPLEngineCloudCache *)self->_cloudCache targetForRecordWithCloudScopedIdentifier:v4 trustRecordChangeData:1];
    v7 = [(CPLEngineTransientRepositoryBatchStorage *)self targetMapping];
    [v7 addKnownTarget:v6 forRecordWithScopedIdentifier:v4];
  }

  return v6;
}

- (CPLSharedBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4 sharedScope:(id)a5 merger:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = CPLSharedBatchStorage;
  v13 = [(CPLEngineTransientRepositoryBatchStorage *)&v27 initWithTransientRepository:v10 scope:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sharedScope, a5);
    objc_storeStrong(&v14->_merger, a6);
    v15 = [v10 engineStore];
    v16 = [v15 cloudCache];
    cloudCache = v14->_cloudCache;
    v14->_cloudCache = v16;

    v18 = [v15 ignoredRecords];
    ignoredRecords = v14->_ignoredRecords;
    v14->_ignoredRecords = v18;

    v20 = [v15 remappedRecords];
    remappedRecords = v14->_remappedRecords;
    v14->_remappedRecords = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF00]);
    now = v14->_now;
    v14->_now = v22;

    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [v24 valueForKey:@"CPLAutomaticallyFixBadSparsePrivateAsset"];

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