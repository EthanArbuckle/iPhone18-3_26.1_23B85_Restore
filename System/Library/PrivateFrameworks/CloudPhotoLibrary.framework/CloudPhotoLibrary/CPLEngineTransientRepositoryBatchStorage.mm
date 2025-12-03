@interface CPLEngineTransientRepositoryBatchStorage
- (BOOL)removeChange:(id)change error:(id *)error;
- (BOOL)stashChange:(id)change error:(id *)error;
- (CPLEngineTransientRepositoryBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed;
- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier;
- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier;
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
      updatedTargetsDescription = [(CPLRecordTargetMapping *)self->_targetMapping updatedTargetsDescription];
      v6 = 138543362;
      v7 = updatedTargetsDescription;
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

- (BOOL)removeChange:(id)change error:(id *)error
{
  transientRepository = self->_transientRepository;
  scopedIdentifier = [change scopedIdentifier];
  LOBYTE(error) = [(CPLEngineTransientRepository *)transientRepository markUnmingledChangeWithScopedIdentifierAsMingled:scopedIdentifier error:error];

  return error;
}

- (unint64_t)effectiveResourceSizeToUploadForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:73 description:{@"%@ should not be used on %@", v8, objc_opt_class()}];

  abort();
}

- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:57 description:{@"Trying to extract batches using unsupported %@", v9}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier trashed:(BOOL)trashed
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:53 description:{@"Trying to extract batches using unsupported %@", v10}];

  abort();
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type
{
  identifierCopy = identifier;
  if (type)
  {
    if (type != 1024)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineTransientRepositoryBatchStorage.m"];
      v18 = [CPLRecordChange descriptionForChangeType:type];
      [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:48 description:{@"Trying to extract batches using change type %@", v18}];

      abort();
    }

    transientRepository = self->_transientRepository;
    scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v12 = [(CPLEngineTransientRepository *)transientRepository allUnmingledDeletedChangesWithClass:class scopeIdentifier:scopeIdentifier];
  }

  else
  {
    v13 = self->_transientRepository;
    scopeIdentifier = [(CPLEngineScope *)self->_scope scopeIdentifier];
    v12 = [(CPLEngineTransientRepository *)v13 allUnmingledNonDeletedChangesWithClass:class scopeIdentifier:scopeIdentifier];
  }

  v14 = v12;

  return v14;
}

- (BOOL)stashChange:(id)change error:(id *)error
{
  transientRepository = self->_transientRepository;
  scopedIdentifier = [change scopedIdentifier];
  LOBYTE(error) = [(CPLEngineTransientRepository *)transientRepository stashChangeWithScopedIdentifier:scopedIdentifier error:error];

  return error;
}

- (CPLEngineTransientRepositoryBatchStorage)initWithTransientRepository:(id)repository scope:(id)scope
{
  repositoryCopy = repository;
  scopeCopy = scope;
  v12.receiver = self;
  v12.super_class = CPLEngineTransientRepositoryBatchStorage;
  v9 = [(CPLEngineTransientRepositoryBatchStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transientRepository, repository);
    objc_storeStrong(&v10->_scope, scope);
  }

  return v10;
}

@end