@interface CPLEngineTransientRepositoryBatchStorage
- (BOOL)removeChange:(id)a3 error:(id *)a4;
- (BOOL)stashChange:(id)a3 error:(id *)a4;
- (CPLEngineTransientRepositoryBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 trashed:(BOOL)a5;
- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4;
- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)a3;
- (void)beginExtractingBatch;
- (void)cleanupAfterExtractingBatch;
@end

@implementation CPLEngineTransientRepositoryBatchStorage

- (void)cleanupAfterExtractingBatch
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordTargetMapping *)self->_targetMapping hasUpdatedTargets]&& (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStorageOSLogDomain_505();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CPLRecordTargetMapping *)self->_targetMapping updatedTargetsDescription];
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "After extraction, updated targets:\n%{public}@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginExtractingBatch
{
  v3 = objc_alloc_init(CPLRecordTargetMapping);
  targetMapping = self->_targetMapping;
  self->_targetMapping = v3;

  v5 = self->_targetMapping;

  [(CPLRecordTargetMapping *)v5 startTrackingUpdates];
}

- (BOOL)removeChange:(id)a3 error:(id *)a4
{
  transientRepository = self->_transientRepository;
  v6 = [a3 scopedIdentifier];
  LOBYTE(a4) = [(CPLEngineTransientRepository *)transientRepository markUnmingledChangeWithScopedIdentifierAsMingled:v6 error:a4];

  return a4;
}

- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:73 description:{@"%@ should not be used on %@", v8, objc_opt_class()}];

  abort();
}

- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:57 description:{@"Trying to extract batches using unsupported %@", v9}];

  abort();
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 trashed:(BOOL)a5
{
  v7 = a4;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v10 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:53 description:{@"Trying to extract batches using unsupported %@", v10}];

  abort();
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5
{
  v9 = a4;
  if (a5)
  {
    if (a5 != 1024)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
      v18 = [CPLRecordChange descriptionForChangeType:a5];
      [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:48 description:{@"Trying to extract batches using change type %@", v18}];

      abort();
    }

    transientRepository = self->_transientRepository;
    v11 = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v12 = [(CPLEngineTransientRepository *)transientRepository allUnmingledDeletedChangesWithClass:a3 scopeIdentifier:v11];
  }

  else
  {
    v13 = self->_transientRepository;
    v11 = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v12 = [(CPLEngineTransientRepository *)v13 allUnmingledNonDeletedChangesWithClass:a3 scopeIdentifier:v11];
  }

  v14 = v12;

  return v14;
}

- (BOOL)stashChange:(id)a3 error:(id *)a4
{
  transientRepository = self->_transientRepository;
  v6 = [a3 scopedIdentifier];
  LOBYTE(a4) = [(CPLEngineTransientRepository *)transientRepository stashChangeWithScopedIdentifier:v6 error:a4];

  return a4;
}

- (CPLEngineTransientRepositoryBatchStorage)initWithTransientRepository:(id)a3 scope:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLEngineTransientRepositoryBatchStorage;
  v9 = [(CPLEngineTransientRepositoryBatchStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transientRepository, a3);
    objc_storeStrong(&v10->_scope, a4);
  }

  return v10;
}

@end