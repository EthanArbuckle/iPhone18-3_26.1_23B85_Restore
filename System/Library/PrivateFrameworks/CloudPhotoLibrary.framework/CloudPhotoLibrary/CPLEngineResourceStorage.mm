@interface CPLEngineResourceStorage
- (BOOL)_clearAndCreateTempFolderIfNecessaryWithError:(id *)error;
- (BOOL)checkIsEmpty;
- (BOOL)compactWithError:(id *)error;
- (BOOL)dropResourceForUpload:(id)upload error:(id *)error;
- (BOOL)hasResource:(id)resource;
- (BOOL)openWithError:(id *)error;
- (BOOL)performMaintenanceWithError:(id *)error;
- (BOOL)releaseFileURL:(id)l forResource:(id)resource error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)storeDownloadedResource:(id)resource atURL:(id)l error:(id *)error;
- (BOOL)storeResourceCopyForUpload:(id)upload error:(id *)error;
- (BOOL)storeResourceForUpload:(id)upload shouldCheckResource:(BOOL)resource error:(id *)error;
- (CPLEngineResourceStorage)initWithEngineStore:(id)store name:(id)name;
- (id)createTempDestinationURLForResource:(id)resource error:(id *)error;
- (id)retainFileURLForResource:(id)resource error:(id *)error;
- (id)status;
- (id)statusDictionary;
- (unint64_t)sizeOfOriginalResourcesToUpload;
- (unint64_t)sizeOfResourcesToUpload;
- (void)notePruningRequestForResource:(id)resource realPrune:(BOOL)prune successful:(BOOL)successful prunedSize:(unint64_t)size;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineResourceStorage

- (void)writeTransactionDidSucceed
{
  v19 = *MEMORY[0x1E69E9840];
  [(CPLEngineFileStorage *)self->_fileStorage writeTransactionDidSucceed];
  if ([(NSMutableDictionary *)self->_identitiesToDelete count]|| [(NSMutableDictionary *)self->_identitiesToCommit count])
  {
    fileStorage = self->_fileStorage;
    v11 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke;
    v12[3] = &unk_1E8620478;
    v12[4] = self;
    v4 = [(CPLEngineFileStorage *)fileStorage doWrite:v12 error:&v11];
    v5 = v11;
    if (!v4 && (_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        identitiesToCommit = self->_identitiesToCommit;
        identitiesToDelete = self->_identitiesToDelete;
        *buf = 138412802;
        v14 = identitiesToCommit;
        v15 = 2112;
        v16 = identitiesToDelete;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Unable to commit %@ or delete %@ to file storage: %@", buf, 0x20u);
      }
    }

    [(NSMutableDictionary *)self->_identitiesToCommit removeAllObjects];
    [(NSMutableDictionary *)self->_identitiesToDelete removeAllObjects];
  }

  [(CPLEngineFileStorage *)self->_fileStorage setTrackAllStoresAndDeletesUntilEndOfTransaction:0];
  v10.receiver = self;
  v10.super_class = CPLEngineResourceStorage;
  [(CPLEngineStorage *)&v10 writeTransactionDidSucceed];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)notePruningRequestForResource:(id)resource realPrune:(BOOL)prune successful:(BOOL)successful prunedSize:(unint64_t)size
{
  resourceCopy = resource;
  pruneStatsQueue = self->_pruneStatsQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__CPLEngineResourceStorage_notePruningRequestForResource_realPrune_successful_prunedSize___block_invoke;
  v16[3] = &unk_1E861B840;
  pruneCopy = prune;
  v16[4] = self;
  v17 = resourceCopy;
  successfulCopy = successful;
  sizeCopy = size;
  v12 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_3;
  block[3] = &unk_1E861B4E0;
  v22 = v12;
  v13 = pruneStatsQueue;
  v14 = resourceCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v15);
}

uint64_t __90__CPLEngineResourceStorage_notePruningRequestForResource_realPrune_successful_prunedSize___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = &OBJC_IVAR___CPLEngineResourceStorage__pruneRequests;
  }

  else
  {
    v1 = &OBJC_IVAR___CPLEngineResourceStorage__purgeabilityCheckRequests;
  }

  return [*(*(a1 + 32) + *v1) noteRequestForResource:*(a1 + 40) successful:*(a1 + 57) prunedSize:*(a1 + 48)];
}

- (id)statusDictionary
{
  v18.receiver = self;
  v18.super_class = CPLEngineResourceStorage;
  statusDictionary = [(CPLEngineStorage *)&v18 statusDictionary];
  v4 = [statusDictionary mutableCopy];

  pruneStatsQueue = self->_pruneStatsQueue;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__CPLEngineResourceStorage_statusDictionary__block_invoke;
  v15 = &unk_1E861B290;
  v6 = v4;
  v16 = v6;
  selfCopy = self;
  dispatch_sync(pruneStatsQueue, &v12);
  v7 = [(CPLEngineStorage *)self engineStore:v12];
  derivativesFilter = [v7 derivativesFilter];

  plistDescription = [derivativesFilter plistDescription];
  [v6 setObject:plistDescription forKeyedSubscript:@"derivativesFilter"];

  v10 = v6;
  return v6;
}

void __44__CPLEngineResourceStorage_statusDictionary__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CPLEngineResourceStorage_statusDictionary__block_invoke_2;
  v3[3] = &unk_1E861B818;
  v4 = *(a1 + 32);
  v2 = MEMORY[0x1E128EBA0](v3);
  v2[2](v2, *(*(a1 + 40) + 72));
  v2[2](v2, *(*(a1 + 40) + 80));
}

void __44__CPLEngineResourceStorage_statusDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 statusDictionary];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 statusKey];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

- (id)status
{
  v17.receiver = self;
  v17.super_class = CPLEngineResourceStorage;
  status = [(CPLEngineStorage *)&v17 status];
  v4 = [status mutableCopy];

  pruneStatsQueue = self->_pruneStatsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CPLEngineResourceStorage_status__block_invoke;
  block[3] = &unk_1E861B290;
  v6 = v4;
  v15 = v6;
  selfCopy = self;
  dispatch_sync(pruneStatsQueue, block);
  engineStore = [(CPLEngineStorage *)self engineStore];
  derivativesFilter = [engineStore derivativesFilter];

  if (derivativesFilter && ([derivativesFilter isEmpty] & 1) == 0)
  {
    v9 = [derivativesFilter description];
    v10 = [v9 componentsSeparatedByString:@"\n"];
    v11 = [v10 componentsJoinedByString:@"\n\t"];
    [v6 appendFormat:@"\nDerivatives filter: %@", v11];
  }

  else
  {
    [v6 appendString:@"\nDerivatives filter: none"];
  }

  v12 = v6;

  return v6;
}

void __34__CPLEngineResourceStorage_status__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CPLEngineResourceStorage_status__block_invoke_2;
  v3[3] = &unk_1E861B818;
  v4 = *(a1 + 32);
  v2 = MEMORY[0x1E128EBA0](v3);
  v2[2](v2, *(*(a1 + 40) + 72));
  v2[2](v2, *(*(a1 + 40) + 80));
}

void __34__CPLEngineResourceStorage_status__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 status];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 title];
    [v4 appendFormat:@"\n%@: %@", v5, v3];
  }
}

uint64_t __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke_2;
  v11[3] = &unk_1E861B7F0;
  v11[4] = v4;
  v11[5] = &v18;
  v11[6] = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke_3;
  v10[3] = &unk_1E861B7F0;
  v10[4] = v6;
  v10[5] = &v18;
  v10[6] = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v19 + 24);
  if (a2 && (v19[3] & 1) == 0)
  {
    *a2 = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

void __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1[4] + 96);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 commitFileWithIdentity:a3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  if (v6)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8 & 1;
}

void __54__CPLEngineResourceStorage_writeTransactionDidSucceed__block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1[4] + 96);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 deleteFileWithIdentity:a3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  if (v6)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8 & 1;
}

- (void)writeTransactionDidFail
{
  [(CPLEngineFileStorage *)self->_fileStorage writeTransactionDidFail];
  if ([(NSMutableDictionary *)self->_identitiesToCommit count])
  {
    fileStorage = self->_fileStorage;
    v6 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CPLEngineResourceStorage_writeTransactionDidFail__block_invoke;
    v7[3] = &unk_1E8620478;
    v7[4] = self;
    [(CPLEngineFileStorage *)fileStorage doWrite:v7 error:&v6];
    v4 = v6;
    [(NSMutableDictionary *)self->_identitiesToCommit removeAllObjects];
  }

  [(CPLEngineFileStorage *)self->_fileStorage setTrackAllStoresAndDeletesUntilEndOfTransaction:0];
  v5.receiver = self;
  v5.super_class = CPLEngineResourceStorage;
  [(CPLEngineStorage *)&v5 writeTransactionDidFail];
}

uint64_t __51__CPLEngineResourceStorage_writeTransactionDidFail__block_invoke(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CPLEngineResourceStorage_writeTransactionDidFail__block_invoke_2;
  v7[3] = &unk_1E861B7F0;
  v7[4] = v3;
  v7[5] = &v8;
  v7[6] = &v12;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  if (a2 && (v9[3] & 1) == 0)
  {
    *a2 = v13[5];
    v5 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v5 & 1;
}

void __51__CPLEngineResourceStorage_writeTransactionDidFail__block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(a1[4] + 96);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v7 discardUncommittedFileWithIdentity:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[5] + 8) + 24) = v9;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Unable to discard %@ from file storage", buf, 0xCu);
      }
    }

    *a4 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkIsEmpty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fileStorage = self->_fileStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__CPLEngineResourceStorage_checkIsEmpty__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  [(CPLEngineFileStorage *)fileStorage doRead:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__CPLEngineResourceStorage_checkIsEmpty__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) checkIsEmpty];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)resetWithError:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject resetWithError:error];

  if (!v6)
  {
    return 0;
  }

  fileStorage = self->_fileStorage;

  return [(CPLEngineFileStorage *)fileStorage resetWithError:error];
}

- (BOOL)compactWithError:(id *)error
{
  fileStorage = self->_fileStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CPLEngineResourceStorage_compactWithError___block_invoke;
  v5[3] = &unk_1E8620478;
  v5[4] = self;
  return [(CPLEngineFileStorage *)fileStorage doWrite:v5 error:error];
}

- (BOOL)storeDownloadedResource:(id)resource atURL:(id)l error:(id *)error
{
  resourceCopy = resource;
  lCopy = l;
  identity = [resourceCopy identity];
  fileURL = [identity fileURL];
  if (!fileURL)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "We should not try to store a resource that is not on disk", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v25 lineNumber:357 description:@"We should not try to store a resource that is not on disk"];

    abort();
  }

  v13 = fileURL;
  v14 = [resourceCopy resourceType] == 1;
  fileStorage = self->_fileStorage;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__CPLEngineResourceStorage_storeDownloadedResource_atURL_error___block_invoke;
  v27[3] = &unk_1E861B7C8;
  v27[4] = self;
  v16 = v13;
  v28 = v16;
  v17 = identity;
  v29 = v17;
  v30 = v14;
  v26 = 0;
  v18 = [(CPLEngineFileStorage *)fileStorage doWrite:v27 error:&v26];
  v19 = v26;
  v20 = v19;
  if (error && !v18)
  {
    v21 = v19;
    *error = v20;
  }

  return v18;
}

- (id)createTempDestinationURLForResource:(id)resource error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (!self->_shouldCreateTempFolder || [(CPLEngineResourceStorage *)self _clearAndCreateTempFolderIfNecessaryWithError:error])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = resourceCopy;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Creating a temporary URL for %@", buf, 0xCu);
      }
    }

    bestFileNameForResource = [resourceCopy bestFileNameForResource];
    if (bestFileNameForResource)
    {
      v9 = bestFileNameForResource;
      stringByDeletingPathExtension = [bestFileNameForResource stringByDeletingPathExtension];
      pathExtension = [v9 pathExtension];
      v12 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v15 = [v12 stringWithFormat:@"%@-%@", stringByDeletingPathExtension, uUIDString];
      v16 = [v15 stringByAppendingPathExtension:pathExtension];

      v17 = [(NSURL *)self->_tempFolderURL URLByAppendingPathComponent:v16 isDirectory:0];

      if (v17 && (_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLStorageOSLogDomain_202();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v24 = resourceCopy;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEBUG, "Temporary destination URL for %@ is %@", buf, 0x16u);
        }
      }

      goto LABEL_24;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = resourceCopy;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Can't find a good filename for %@", buf, 0xCu);
      }
    }

    if (error)
    {
      +[CPLErrors unknownError];
      v16 = 0;
      *error = v17 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v16 = 0;
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLStorageOSLogDomain_202();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path = [(NSURL *)self->_tempFolderURL path];
      *buf = 138412290;
      v24 = path;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Failed to create temp folder at %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v17 = 0;
LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)hasResource:(id)resource
{
  fileStorage = self->_fileStorage;
  identity = [resource identity];
  LOBYTE(fileStorage) = [(CPLEngineFileStorage *)fileStorage hasFileWithIdentity:identity];

  return fileStorage;
}

- (BOOL)releaseFileURL:(id)l forResource:(id)resource error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  resourceCopy = resource;
  platformObject = [(CPLEngineStorage *)self platformObject];
  identity = [resourceCopy identity];
  v12 = [platformObject retainCountForIdentity:identity];

  if (!v12)
  {
    identity2 = [resourceCopy identity];
    identitiesToDelete = self->_identitiesToDelete;
    identityForStorage = [identity2 identityForStorage];
    [(NSMutableDictionary *)identitiesToDelete setObject:identity2 forKeyedSubscript:identityForStorage];
  }

  fileStorage = self->_fileStorage;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__CPLEngineResourceStorage_releaseFileURL_forResource_error___block_invoke;
  v26[3] = &unk_1E8620940;
  v26[4] = self;
  v17 = lCopy;
  v27 = v17;
  v25 = 0;
  v18 = [(CPLEngineFileStorage *)fileStorage doWrite:v26 error:&v25];
  v19 = v25;
  if (!v18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        path = [v17 path];
        *buf = 138412802;
        v29 = resourceCopy;
        v30 = 2112;
        v31 = path;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Unable to release %@ / %@: %@", buf, 0x20u);
      }
    }

    if (error)
    {
      v22 = v19;
      *error = v19;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)retainFileURLForResource:(id)resource error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  fileStorage = self->_fileStorage;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__CPLEngineResourceStorage_retainFileURLForResource_error___block_invoke;
  v19[3] = &unk_1E8620A38;
  v21 = &v22;
  v19[4] = self;
  v8 = resourceCopy;
  v20 = v8;
  v18 = 0;
  v9 = [(CPLEngineFileStorage *)fileStorage doWrite:v19 error:&v18];
  v10 = v18;
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        path = [v23[5] path];
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = path;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "Retained file path for %@ is: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "Unable to retain URL for %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v14 = v10;
      *error = v10;
    }
  }

  v15 = v23[5];

  _Block_object_dispose(&v22, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

BOOL __59__CPLEngineResourceStorage_retainFileURLForResource_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 96);
  v5 = [*(a1 + 40) identity];
  v6 = [v4 retainFileURLForIdentity:v5 resourceType:objc_msgSend(*(a1 + 40) error:{"resourceType"), a2}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (unint64_t)sizeOfOriginalResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  totalOriginalResourceSize = [platformObject totalOriginalResourceSize];

  return totalOriginalResourceSize;
}

- (unint64_t)sizeOfResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  totalResourceSize = [platformObject totalResourceSize];

  return totalResourceSize;
}

- (BOOL)dropResourceForUpload:(id)upload error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  v23 = 0;
  identity = [uploadCopy identity];
  if (![identity fileSize])
  {
    fileStorage = self->_fileStorage;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__CPLEngineResourceStorage_dropResourceForUpload_error___block_invoke;
    v20[3] = &unk_1E861B1C8;
    v20[4] = self;
    v21 = identity;
    v22 = uploadCopy;
    [(CPLEngineFileStorage *)fileStorage doRead:v20];
  }

  v9 = +[CPLResource resourceTypeTrackedForUpload:](CPLResource, "resourceTypeTrackedForUpload:", [uploadCopy resourceType]);
  platformObject = [(CPLEngineStorage *)self platformObject];
  v19 = 0;
  v11 = [platformObject releaseIdentity:identity lastReference:&v23 isTrackedOriginal:v9 error:&v19];
  v12 = v19;

  if (v23 == 1)
  {
    identitiesToDelete = self->_identitiesToDelete;
    identityForStorage = [identity identityForStorage];
    [(NSMutableDictionary *)identitiesToDelete setObject:identity forKeyedSubscript:identityForStorage];
  }

  if ((v11 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = uploadCopy;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Unable to drop resource to upload %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v16 = v12;
      *error = v12;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

void __56__CPLEngineResourceStorage_dropResourceForUpload_error___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 96) checkFileSizeForIdentity:*(a1 + 40)];
  if ([*(a1 + 40) fileSize] && (_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLStorageOSLogDomain_202();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 48);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Incorrect file size for %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)storeResourceCopyForUpload:(id)upload error:(id *)error
{
  uploadCopy = upload;
  platformObject = [(CPLEngineStorage *)self platformObject];
  identity = [uploadCopy identity];
  v9 = [platformObject retainCountForIdentity:identity];

  if (v9)
  {
    v10 = +[CPLResource resourceTypeTrackedForUpload:](CPLResource, "resourceTypeTrackedForUpload:", [uploadCopy resourceType]);
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    identity2 = [uploadCopy identity];
    v13 = [platformObject2 retainIdentity:identity2 isTrackedOriginal:v10 error:error];
  }

  else if (error)
  {
    [CPLErrors cplErrorWithCode:27 description:@"resource is not available locally"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)storeResourceForUpload:(id)upload shouldCheckResource:(BOOL)resource error:(id *)error
{
  resourceCopy = resource;
  v80 = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  v8 = uploadCopy;
  v9 = resourceCopy && self->_shouldCheckFilesForUpload;
  identity = [uploadCopy identity];
  fileURL = [identity fileURL];
  if (fileURL)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v78 = 0x2020000000;
    v79 = 0;
    v51 = [v8 resourceType] == 1;
    fingerPrint = [identity fingerPrint];
    v13 = fingerPrint == 0;
    if (!fingerPrint)
    {
      identityForStorage = [CPLErrors cplErrorWithCode:50 description:@"fingerPrint is nil"];
      v21 = 0;
      if (!error)
      {
LABEL_19:
        v13 = 1;
        goto LABEL_45;
      }

      v15 = identityForStorage;
      goto LABEL_44;
    }

    identityForStorage = [identity identityForStorage];
    v14 = [(NSMutableDictionary *)self->_identitiesToDelete objectForKeyedSubscript:identityForStorage];

    if (v14)
    {
      [(NSMutableDictionary *)self->_identitiesToDelete removeObjectForKey:identityForStorage];
      [identity setFileURL:0];
      v15 = 0;
LABEL_8:
      v16 = +[CPLResource resourceTypeTrackedForUpload:](CPLResource, "resourceTypeTrackedForUpload:", [v8 resourceType]);
      fileURL2 = [identity fileURL];
      v18 = fileURL2 == 0;

      if (!v18)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v45 = __CPLStorageOSLogDomain_202();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *v71 = 138412290;
            v72 = identity;
            _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_ERROR, "%@ should not have an URL anymore", v71, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineResourceStorage.m"];
        [currentHandler handleFailureInMethod:a2 object:self file:v47 lineNumber:209 description:{@"%@ should not have an URL anymore", identity}];

        abort();
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      v55 = v15;
      v20 = [platformObject retainIdentity:identity isTrackedOriginal:v16 error:&v55];
      v21 = v55;

      if (!v20)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v23 = __CPLStorageOSLogDomain_202();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            path = [fileURL path];
            *v71 = 138412802;
            v72 = v8;
            v73 = 2112;
            v74 = path;
            v75 = 2112;
            v76 = v21;
            _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Unable to retain %@ (%@): %@", v71, 0x20u);
          }
        }

        if (error)
        {
          v25 = v21;
          *error = v21;
        }

        if (*(*(&buf + 1) + 24) == 1)
        {
          [(CPLEngineFileStorage *)self->_fileStorage discardUncommittedFileWithIdentity:identity error:0];
        }

        v13 = 0;
        goto LABEL_45;
      }

      if (*(*(&buf + 1) + 24) == 1)
      {
        [(NSMutableDictionary *)self->_identitiesToCommit setObject:identity forKeyedSubscript:identityForStorage];
      }

      goto LABEL_19;
    }

    if (v9)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore engineLibrary];
      transport = [engineLibrary transport];
      fingerprintContext = [transport fingerprintContext];
      v50 = [fingerprintContext fingerprintSchemeForFingerprint:fingerPrint];

      if ([v50 canMatchSignatureToFingerprint])
      {
        v70 = 0;
        v30 = [(CPLEngineResourceStorage *)self createTempDestinationURLForResource:v8 error:&v70];
        v15 = v70;
        if (!v30)
        {

          goto LABEL_8;
        }

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v69 = v15;
        v32 = [defaultManager cplCopyItemAtURL:fileURL toURL:v30 error:&v69];
        v49 = defaultManager;
        v33 = v69;

        if (v32)
        {
          v68 = v33;
          v48 = [v50 fingerPrintForFileAtURL:v30 error:&v68];
          v15 = v68;

          if (v48)
          {
            if ([v48 isEqualToString:fingerPrint])
            {
              fileStorage = self->_fileStorage;
              v63[0] = MEMORY[0x1E69E9820];
              v63[1] = 3221225472;
              v63[2] = __77__CPLEngineResourceStorage_storeResourceForUpload_shouldCheckResource_error___block_invoke;
              v63[3] = &unk_1E861B7A0;
              v63[4] = self;
              v64 = v30;
              v67 = v51;
              v65 = identity;
              p_buf = &buf;
              v62 = v15;
              v35 = [(CPLEngineFileStorage *)fileStorage doWrite:v63 error:&v62];
              v36 = v62;
            }

            else
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v44 = __CPLStorageOSLogDomain_202();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *v71 = 138412546;
                  v72 = v8;
                  v73 = 2112;
                  v74 = v48;
                  _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_ERROR, "Client trying to store %@ but actual finger print is %@", v71, 0x16u);
                }
              }

              v36 = [CPLErrors incorrectParametersErrorForParameter:@"identity.fingerPrint"];

              v35 = 0;
            }

            v15 = v36;
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v15 = v33;
          v35 = 0;
        }

        [v49 removeItemAtURL:v30 error:0];

        if (v35)
        {
          goto LABEL_8;
        }

LABEL_38:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v39 = __CPLStorageOSLogDomain_202();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            path2 = [fileURL path];
            *v71 = 138412802;
            v72 = v8;
            v73 = 2112;
            v74 = path2;
            v75 = 2112;
            v76 = v15;
            _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_ERROR, "Unable to store %@ (%@): %@", v71, 0x20u);
          }
        }

        if (!error)
        {
          v13 = 0;
          v21 = v15;
LABEL_45:

          _Block_object_dispose(&buf, 8);
          if (!fingerPrint)
          {
            v13 = 0;
          }

          goto LABEL_47;
        }

        v21 = v15;
LABEL_44:
        v41 = v15;
        *error = v15;
        goto LABEL_45;
      }
    }

    else
    {
      v50 = 0;
    }

    v37 = self->_fileStorage;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __77__CPLEngineResourceStorage_storeResourceForUpload_shouldCheckResource_error___block_invoke_2;
    v57[3] = &unk_1E861B7A0;
    v57[4] = self;
    v58 = fileURL;
    v61 = v51;
    v59 = identity;
    v60 = &buf;
    v56 = 0;
    v38 = [(CPLEngineFileStorage *)v37 doWrite:v57 error:&v56];
    v15 = v56;

    if (v38)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v22 = __CPLStorageOSLogDomain_202();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEBUG, "%@ has no attached resource file. Hopefully we won't need to upload it", &buf, 0xCu);
    }
  }

  v13 = 1;
LABEL_47:

  v42 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)performMaintenanceWithError:(id *)error
{
  if (![(CPLEngineStorage *)self isEmpty])
  {
    return 1;
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  downloadQueue = [engineStore downloadQueue];
  isEmpty = [downloadQueue isEmpty];

  if (!isEmpty)
  {
    return 1;
  }

  return [(CPLEngineResourceStorage *)self resetWithError:error];
}

- (BOOL)openWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = CPLEngineResourceStorage;
  v5 = [(CPLEngineStorage *)&v9 openWithError:?];
  if (v5)
  {
    fileStorage = self->_fileStorage;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__CPLEngineResourceStorage_openWithError___block_invoke;
    v8[3] = &unk_1E8620478;
    v8[4] = self;
    v5 = [(CPLEngineFileStorage *)fileStorage doWrite:v8 error:error];
    if (v5)
    {
      LOBYTE(v5) = [(CPLEngineResourceStorage *)self _clearAndCreateTempFolderIfNecessaryWithError:error];
    }
  }

  return v5;
}

uint64_t __42__CPLEngineResourceStorage_openWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CPLEngineResourceStorage_openWithError___block_invoke_2;
  v5[3] = &unk_1E861B778;
  v5[4] = v2;
  return [v3 openWithRecoveryHandler:v5 error:a2];
}

BOOL __42__CPLEngineResourceStorage_openWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 platformObject];
  v5 = [v4 retainCountForIdentity:v3];

  return v5 == 0;
}

- (BOOL)_clearAndCreateTempFolderIfNecessaryWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_shouldCreateTempFolder)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager cplFileExistsAtURL:self->_tempFolderURL])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLStorageOSLogDomain_202();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          path = [(NSURL *)self->_tempFolderURL path];
          v14 = 138412290;
          v15 = path;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Cleaning temporary folder at %@", &v14, 0xCu);
        }
      }

      [defaultManager removeItemAtURL:self->_tempFolderURL error:0];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_202();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        path2 = [(NSURL *)self->_tempFolderURL path];
        v14 = 138412290;
        v15 = path2;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Creating temporary folder at %@", &v14, 0xCu);
      }
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager2 createDirectoryAtURL:self->_tempFolderURL withIntermediateDirectories:1 attributes:0 error:error];

    if (v8)
    {
      self->_shouldCreateTempFolder = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CPLEngineResourceStorage)initWithEngineStore:(id)store name:(id)name
{
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = CPLEngineResourceStorage;
  v7 = [(CPLEngineStorage *)&v29 initWithEngineStore:storeCopy name:name];
  if (v7)
  {
    engineLibrary = [storeCopy engineLibrary];
    cloudLibraryResourceStorageURL = [engineLibrary cloudLibraryResourceStorageURL];
    v10 = [cloudLibraryResourceStorageURL URLByAppendingPathComponent:@"tmp" isDirectory:1];
    tempFolderURL = v7->_tempFolderURL;
    v7->_tempFolderURL = v10;

    v7->_shouldCreateTempFolder = 1;
    v12 = [CPLEngineFileStorage alloc];
    cloudLibraryResourceStorageURL2 = [engineLibrary cloudLibraryResourceStorageURL];
    v14 = [(CPLEngineFileStorage *)v12 initWithBaseURL:cloudLibraryResourceStorageURL2];
    fileStorage = v7->_fileStorage;
    v7->_fileStorage = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identitiesToCommit = v7->_identitiesToCommit;
    v7->_identitiesToCommit = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identitiesToDelete = v7->_identitiesToDelete;
    v7->_identitiesToDelete = v18;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7->_shouldCheckFilesForUpload = [standardUserDefaults BOOLForKey:@"CPLDontCheckFilesFingerprintForUpload"] ^ 1;

    v21 = CPLCopyDefaultSerialQueueAttributes();
    v22 = dispatch_queue_create("com.apple.cpl.prune.stats", v21);
    pruneStatsQueue = v7->_pruneStatsQueue;
    v7->_pruneStatsQueue = v22;

    v24 = [[_CPLPruneRequestCounter alloc] initWithTitle:@"Recent prune requests" statusKey:@"pruneRequests"];
    pruneRequests = v7->_pruneRequests;
    v7->_pruneRequests = v24;

    v26 = [[_CPLPruneRequestCounter alloc] initWithTitle:@"Recent purgeability checks" statusKey:@"purgeabilityChecks"];
    purgeabilityCheckRequests = v7->_purgeabilityCheckRequests;
    v7->_purgeabilityCheckRequests = v26;
  }

  return v7;
}

@end