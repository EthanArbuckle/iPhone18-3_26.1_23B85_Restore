@interface CPLEngineRecordComputeStatePushQueue
- (BOOL)addComputeState:(id)state error:(id *)error;
- (BOOL)createIncomingDownloadFolderIfNecessaryWithError:(id *)error;
- (BOOL)deleteIncomingDownloadFolderWithError:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteTempUploadFolderWithError:(id *)error;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)openWithError:(id *)error;
- (BOOL)performMaintenanceWithError:(id *)error;
- (BOOL)releaseFileURL:(id)l forComputeState:(id)state error:(id *)error;
- (BOOL)removeComputeState:(id)state error:(id *)error;
- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)identifier version:(id)version adjustmentFingerprint:(id)fingerprint error:(id *)error;
- (BOOL)updateFileURLForComputeState:(id)state error:(id *)error;
- (BOOL)updateLocalStateForComputeState:(id)state newLocalState:(unint64_t)localState error:(id *)error;
- (CPLEngineRecordComputeStatePushQueue)initWithEngineStore:(id)store name:(id)name;
- (id)computeStatesToUploadWithScopeIdentifier:(id)identifier localState:(unint64_t)state maximumCount:(unint64_t)count;
- (id)createNewTempDownloadFolderWithError:(id *)error;
- (id)createTempUploadFolderWithError:(id *)error;
- (id)retainFileURLForComputeState:(id)state error:(id *)error;
- (id)status;
- (id)statusDictionary;
- (unint64_t)countOfComputeStates;
- (unint64_t)fileSizeForComputeStatePayloadFileURL:(id)l error:(id *)error;
- (void)noteComputeStateDownloadRequest;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineRecordComputeStatePushQueue

- (void)writeTransactionDidSucceed
{
  v19 = *MEMORY[0x1E69E9840];
  [(CPLEngineFileStorage *)self->_fileStorage writeTransactionDidSucceed];
  if ([(NSMutableArray *)self->_filesToDelete count]|| [(NSMutableArray *)self->_filesToCommit count])
  {
    fileStorage = self->_fileStorage;
    v11 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke;
    v12[3] = &unk_1E8620478;
    v12[4] = self;
    v4 = [(CPLEngineFileStorage *)fileStorage doWrite:v12 error:&v11];
    v5 = v11;
    if (!v4 && (_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        filesToCommit = self->_filesToCommit;
        filesToDelete = self->_filesToDelete;
        *buf = 138412802;
        v14 = filesToCommit;
        v15 = 2112;
        v16 = filesToDelete;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Unable to commit %@ or delete %@ to file storage: %@", buf, 0x20u);
      }
    }

    [(NSMutableArray *)self->_filesToCommit removeAllObjects];
    [(NSMutableArray *)self->_filesToDelete removeAllObjects];
  }

  [(CPLEngineFileStorage *)self->_fileStorage setTrackAllStoresAndDeletesUntilEndOfTransaction:0];
  v10.receiver = self;
  v10.super_class = CPLEngineRecordComputeStatePushQueue;
  [(CPLEngineStorage *)&v10 writeTransactionDidSucceed];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)statusDictionary
{
  v13.receiver = self;
  v13.super_class = CPLEngineRecordComputeStatePushQueue;
  statusDictionary = [(CPLEngineStorage *)&v13 statusDictionary];
  v4 = [statusDictionary mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v6;

  throttlingDate = [(CPLEngineRecordComputeStatePushQueue *)self throttlingDate];
  v9 = throttlingDate;
  if (throttlingDate)
  {
    v10 = MEMORY[0x1E696AD98];
    [throttlingDate timeIntervalSinceReferenceDate];
    v11 = [v10 numberWithDouble:?];
    [v7 setObject:v11 forKeyedSubscript:@"throttlingDate"];
  }

  return v7;
}

- (id)status
{
  v26.receiver = self;
  v26.super_class = CPLEngineRecordComputeStatePushQueue;
  status = [(CPLEngineStorage *)&v26 status];
  v4 = [status mutableCopy];

  throttlingDate = [(CPLEngineRecordComputeStatePushQueue *)self throttlingDate];
  date = [MEMORY[0x1E695DF00] date];
  if (throttlingDate)
  {
    [throttlingDate timeIntervalSinceDate:date];
    v8 = v7;
    v9 = [CPLDateFormatter stringFromDateAgo:throttlingDate now:date];
    v10 = v9;
    if (v8 <= 0.0)
    {
      v11 = @"\nUploads have been throttled until %@ and will resume during the next sync session";
    }

    else
    {
      v11 = @"\nUploads will resume %@";
    }

    [v4 appendFormat:v11, v9];
  }

  incomingDownloadFolderCreationDate = self->_incomingDownloadFolderCreationDate;
  if (incomingDownloadFolderCreationDate)
  {
    v13 = [CPLDateFormatter stringFromDateAgo:incomingDownloadFolderCreationDate now:date];
    [v4 appendFormat:@"\nIncoming download folder creation: %@", v13];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __46__CPLEngineRecordComputeStatePushQueue_status__block_invoke;
  v22 = &unk_1E861B1C8;
  selfCopy = self;
  v14 = v4;
  v24 = v14;
  v15 = date;
  v25 = v15;
  v16 = v20;
  os_unfair_lock_lock(&self->_lastComputeStateDownloadRequestDateLock);
  v21(v16);
  os_unfair_lock_unlock(&self->_lastComputeStateDownloadRequestDateLock);

  v17 = v25;
  v18 = v14;

  return v14;
}

void __46__CPLEngineRecordComputeStatePushQueue_status__block_invoke(void *a1)
{
  v1 = *(a1[4] + 80);
  if (v1)
  {
    v2 = a1[5];
    v3 = [CPLDateFormatter stringFromDateAgo:v1 now:a1[6]];
    [v2 appendFormat:@"\nLast download request: %@", v3];
  }
}

- (unint64_t)fileSizeForComputeStatePayloadFileURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17 = 0;
  v6 = *MEMORY[0x1E695DB50];
  v16 = 0;
  v7 = [lCopy getResourceValue:&v17 forKey:v6 error:&v16];
  v8 = v17;
  v9 = v16;
  v10 = v9;
  if (v7)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else if (error)
  {
    v12 = v9;
    unsignedIntegerValue = 0;
    *error = v10;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = lCopy;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Failed to determine filesize for compute state payload file at url: %@. Error: %@", buf, 0x16u);
      }
    }

    unsignedIntegerValue = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)noteComputeStateDownloadRequest
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __71__CPLEngineRecordComputeStatePushQueue_noteComputeStateDownloadRequest__block_invoke;
  v6 = &unk_1E861A940;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_lastComputeStateDownloadRequestDateLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_lastComputeStateDownloadRequestDateLock);
}

uint64_t __71__CPLEngineRecordComputeStatePushQueue_noteComputeStateDownloadRequest__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)deleteTempUploadFolderWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  outgoingUploadFolderURL = self->_outgoingUploadFolderURL;
  v13 = 0;
  v7 = [defaultManager removeItemAtURL:outgoingUploadFolderURL error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager2 cplIsFileDoesNotExistError:v8];

    if (error && (v9 & 1) == 0)
    {
      v11 = v8;
      v9 = 0;
      *error = v8;
    }
  }

  return v9;
}

- (id)createTempUploadFolderWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  outgoingUploadFolderURL = self->_outgoingUploadFolderURL;
  v14 = 0;
  v7 = [defaultManager createDirectoryAtURL:outgoingUploadFolderURL withIntermediateDirectories:0 attributes:0 error:&v14];
  v8 = v14;

  if ((v7 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "cplIsFileExistsError:", v8), v9, v10))
  {
    v11 = self->_outgoingUploadFolderURL;
  }

  else if (error)
  {
    v13 = v8;
    v11 = 0;
    *error = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)createIncomingDownloadFolderIfNecessaryWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_20273();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      path = [(NSURL *)self->_incomingDownloadFolderURL path];
      *buf = 138412290;
      v21 = path;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Creating incoming download folder at %@", buf, 0xCu);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  incomingDownloadFolderURL = self->_incomingDownloadFolderURL;
  v19 = 0;
  v9 = [defaultManager createDirectoryAtURL:incomingDownloadFolderURL withIntermediateDirectories:0 attributes:0 error:&v19];
  v10 = v19;
  if ((v9 & 1) != 0 || [defaultManager cplIsFileExistsError:v10])
  {
    date = [MEMORY[0x1E695DF00] date];
    incomingDownloadFolderCreationDate = self->_incomingDownloadFolderCreationDate;
    self->_incomingDownloadFolderCreationDate = date;

    v13 = 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [(NSURL *)self->_incomingDownloadFolderURL path];
        *buf = 138412546;
        v21 = path2;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create incoming download folder at %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v18 = v10;
      v13 = 0;
      *error = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)createNewTempDownloadFolderWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v5 = [(CPLEngineRecordComputeStatePushQueue *)self createIncomingDownloadFolderIfNecessaryWithError:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", self->_tempFolderIndex];
    v9 = [(NSURL *)self->_incomingDownloadFolderURL URLByAppendingPathComponent:v8 isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v18 = v7;
    v11 = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:0 attributes:0 error:&v18];
    v12 = v18;

    ++self->_tempFolderIndex;
    if (v11)
    {
      v9 = v9;
      v13 = v9;
      goto LABEL_13;
    }

    if (v9 && (_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Failed to create temporary download folder at %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
    v12 = v6;
  }

  if (error)
  {
    v15 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)deleteIncomingDownloadFolderWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain_20273();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      path = [(NSURL *)self->_incomingDownloadFolderURL path];
      *buf = 138412290;
      v20 = path;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Deleting incoming download folder at %@", buf, 0xCu);
    }
  }

  incomingDownloadFolderURL = self->_incomingDownloadFolderURL;
  v18 = 0;
  v9 = [defaultManager removeItemAtURL:incomingDownloadFolderURL error:&v18];
  v10 = v18;
  if ((v9 & 1) != 0 || [defaultManager cplIsFileDoesNotExistError:v10])
  {
    incomingDownloadFolderCreationDate = self->_incomingDownloadFolderCreationDate;
    self->_incomingDownloadFolderCreationDate = 0;

    v12 = 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [(NSURL *)self->_incomingDownloadFolderURL path];
        *buf = 138412546;
        v20 = path2;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Failed to delete temporary folder at %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v17 = v10;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20293;
  v16 = __Block_byref_object_dispose__20294;
  v17 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke_2;
  v11[3] = &unk_1E861F6C0;
  v11[4] = v4;
  v11[5] = &v18;
  v11[6] = &v12;
  [v5 enumerateObjectsUsingBlock:v11];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke_3;
  v10[3] = &unk_1E861F6C0;
  v10[4] = v6;
  v10[5] = &v18;
  v10[6] = &v12;
  [v7 enumerateObjectsUsingBlock:v10];
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

void __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke_2(void *a1, uint64_t a2)
{
  v3 = *(a1[4] + 104);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 commitFileWithIdentifier:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  if (v5)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7 & 1;
}

void __66__CPLEngineRecordComputeStatePushQueue_writeTransactionDidSucceed__block_invoke_3(void *a1, uint64_t a2)
{
  v3 = *(a1[4] + 104);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 deleteFileWithIdentifier:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  if (v5)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7 & 1;
}

- (void)writeTransactionDidFail
{
  [(CPLEngineFileStorage *)self->_fileStorage writeTransactionDidFail];
  if ([(NSMutableArray *)self->_filesToCommit count])
  {
    fileStorage = self->_fileStorage;
    v6 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__CPLEngineRecordComputeStatePushQueue_writeTransactionDidFail__block_invoke;
    v7[3] = &unk_1E8620478;
    v7[4] = self;
    [(CPLEngineFileStorage *)fileStorage doWrite:v7 error:&v6];
    v4 = v6;
    [(NSMutableArray *)self->_filesToCommit removeAllObjects];
  }

  [(CPLEngineFileStorage *)self->_fileStorage setTrackAllStoresAndDeletesUntilEndOfTransaction:0];
  [(NSMutableArray *)self->_filesToDelete removeAllObjects];
  v5.receiver = self;
  v5.super_class = CPLEngineRecordComputeStatePushQueue;
  [(CPLEngineStorage *)&v5 writeTransactionDidFail];
}

uint64_t __63__CPLEngineRecordComputeStatePushQueue_writeTransactionDidFail__block_invoke(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20293;
  v16 = __Block_byref_object_dispose__20294;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CPLEngineRecordComputeStatePushQueue_writeTransactionDidFail__block_invoke_2;
  v7[3] = &unk_1E861F6C0;
  v7[4] = v3;
  v7[5] = &v8;
  v7[6] = &v12;
  [v4 enumerateObjectsUsingBlock:v7];
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

void __63__CPLEngineRecordComputeStatePushQueue_writeTransactionDidFail__block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a1[4] + 104);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v7 discardUncommittedFileWithIdentifier:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[5] + 8) + 24) = v9;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_20273();
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

- (BOOL)releaseFileURL:(id)l forComputeState:(id)state error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  stateCopy = state;
  fileStorage = self->_fileStorage;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__CPLEngineRecordComputeStatePushQueue_releaseFileURL_forComputeState_error___block_invoke;
  v20[3] = &unk_1E8620940;
  v20[4] = self;
  v11 = lCopy;
  v21 = v11;
  v19 = 0;
  v12 = [(CPLEngineFileStorage *)fileStorage doWrite:v20 error:&v19];
  v13 = v19;
  if (!v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_20273();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        path = [v11 path];
        *buf = 138412802;
        v23 = stateCopy;
        v24 = 2112;
        v25 = path;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to release %@ / %@: %@", buf, 0x20u);
      }
    }

    if (error)
    {
      v16 = v13;
      *error = v13;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)retainFileURLForComputeState:(id)state error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  fileStorageIdentifier = [stateCopy fileStorageIdentifier];

  if (fileStorageIdentifier)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__20293;
    v26 = __Block_byref_object_dispose__20294;
    v27 = 0;
    fileStorage = self->_fileStorage;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CPLEngineRecordComputeStatePushQueue_retainFileURLForComputeState_error___block_invoke;
    v19[3] = &unk_1E8620A38;
    v21 = &v22;
    v19[4] = self;
    v9 = stateCopy;
    v20 = v9;
    v18 = 0;
    LOBYTE(fileStorage) = [(CPLEngineFileStorage *)fileStorage doWrite:v19 error:&v18];
    v10 = v18;
    if (fileStorage)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLStorageOSLogDomain_20273();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          path = [v23[5] path];
          *buf = 138412546;
          v29 = v9;
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
        v14 = __CPLStorageOSLogDomain_20273();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v29 = v9;
          v30 = 2112;
          v31 = v10;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Unable to retain URL for %@: %@", buf, 0x16u);
        }
      }

      if (error)
      {
        v15 = v10;
        *error = v10;
      }
    }

    v13 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else if (error)
  {
    [CPLErrors incorrectParametersErrorForParameter:@"fileStorageIdentifier"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL __75__CPLEngineRecordComputeStatePushQueue_retainFileURLForComputeState_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 104);
  v5 = [*(a1 + 40) fileStorageIdentifier];
  v6 = [v4 retainFileURLForIdentifier:v5 error:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (unint64_t)countOfComputeStates
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfComputeStates = [platformObject countOfComputeStates];

  return countOfComputeStates;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v15 = 0;
  v12 = [platformObject deleteRecordsForScopeIndex:index discardedFileStorageIdentifiers:&v15 maxCount:count deletedCount:deletedCount error:error];
  v13 = v15;

  if (v12 && [v13 count])
  {
    [(NSMutableArray *)self->_filesToDelete addObjectsFromArray:v13];
  }

  return v12;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasChangesInScopeWithIdentifier:identifierCopy];

  return v6;
}

- (id)computeStatesToUploadWithScopeIdentifier:(id)identifier localState:(unint64_t)state maximumCount:(unint64_t)count
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject computeStatesToUploadWithScopeIdentifier:identifierCopy localState:state maximumCount:count];

  return v10;
}

- (BOOL)removeComputeStateWithLocalScopedIdentifier:(id)identifier version:(id)version adjustmentFingerprint:(id)fingerprint error:(id *)error
{
  fingerprintCopy = fingerprint;
  versionCopy = version;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v17 = 0;
  v14 = [platformObject removeComputeStateWithLocalScopedIdentifier:identifierCopy version:versionCopy adjustmentFingerprint:fingerprintCopy discardedFileStorageIdentifier:&v17 error:error];

  v15 = v17;
  if (v14 && v15)
  {
    [(NSMutableArray *)self->_filesToDelete addObject:v15];
  }

  return v14;
}

- (BOOL)removeComputeState:(id)state error:(id *)error
{
  stateCopy = state;
  itemScopedIdentifier = [stateCopy itemScopedIdentifier];
  version = [stateCopy version];
  adjustmentFingerprint = [stateCopy adjustmentFingerprint];

  LOBYTE(error) = [(CPLEngineRecordComputeStatePushQueue *)self removeComputeStateWithLocalScopedIdentifier:itemScopedIdentifier version:version adjustmentFingerprint:adjustmentFingerprint error:error];
  return error;
}

- (BOOL)updateFileURLForComputeState:(id)state error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  fileURL = [stateCopy fileURL];

  if (fileURL)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [stateCopy setFileStorageIdentifier:uUIDString];
    v33 = 0;
    platformObject = [(CPLEngineStorage *)self platformObject];
    v32 = 0;
    v11 = [platformObject updateFileURLForComputeState:stateCopy discardedFileStorageIdentifier:&v32 hasUpdated:&v33 error:error];
    v12 = v32;

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      [(NSMutableArray *)self->_filesToDelete addObject:v12];
    }

    if (v11)
    {
      if (v33 == 1)
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        fileStorage = self->_fileStorage;
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __75__CPLEngineRecordComputeStatePushQueue_updateFileURLForComputeState_error___block_invoke;
        v23 = &unk_1E86206C8;
        selfCopy = self;
        v15 = stateCopy;
        v25 = v15;
        v16 = uUIDString;
        v26 = v16;
        v27 = &v28;
        v11 = [(CPLEngineFileStorage *)fileStorage doWrite:&v20 error:error];
        if (v11 && *(v29 + 24) == 1)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStorageOSLogDomain_20273();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Storing updated file URL for %@", buf, 0xCu);
            }
          }

          [(NSMutableArray *)self->_filesToCommit addObject:v16, v20, v21, v22, v23, selfCopy, v25];
        }

        _Block_object_dispose(&v28, 8);
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }
  }

  else if (error)
  {
    [CPLErrors incorrectParametersErrorForParameter:@"fileURL"];
    *error = LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __75__CPLEngineRecordComputeStatePushQueue_updateFileURLForComputeState_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 104);
  v5 = [*(a1 + 40) fileURL];
  v6 = [v4 storeFileAtURL:v5 identifier:*(a1 + 48) moveIfPossible:0 needsCommit:*(*(a1 + 56) + 8) + 24 error:a2];

  return v6;
}

- (BOOL)updateLocalStateForComputeState:(id)state newLocalState:(unint64_t)localState error:(id *)error
{
  stateCopy = state;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject updateLocalStateForComputeState:stateCopy newLocalState:localState error:error];

  return error;
}

- (BOOL)addComputeState:(id)state error:(id *)error
{
  stateCopy = state;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  fileURL = [stateCopy fileURL];

  if (fileURL)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [stateCopy setFileStorageIdentifier:uUIDString];
    fileStorage = self->_fileStorage;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__CPLEngineRecordComputeStatePushQueue_addComputeState_error___block_invoke;
    v18[3] = &unk_1E86206C8;
    v18[4] = self;
    v19 = stateCopy;
    v11 = uUIDString;
    v20 = v11;
    v21 = &v22;
    if (![(CPLEngineFileStorage *)fileStorage doWrite:v18 error:error])
    {

      v14 = 0;
      LOBYTE(v13) = 0;
      goto LABEL_12;
    }

    if (*(v23 + 24) == 1)
    {
      [(NSMutableArray *)self->_filesToCommit addObject:v11];
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v17 = 0;
  v13 = [platformObject addComputeState:stateCopy discardedFileStorageIdentifier:&v17 error:error];
  v14 = v17;

  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    [(NSMutableArray *)self->_filesToDelete addObject:v14];
    LOBYTE(v13) = 1;
  }

LABEL_12:

  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t __62__CPLEngineRecordComputeStatePushQueue_addComputeState_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 104);
  v5 = [*(a1 + 40) fileURL];
  v6 = [v4 storeFileAtURL:v5 identifier:*(a1 + 48) moveIfPossible:0 needsCommit:*(*(a1 + 56) + 8) + 24 error:a2];

  return v6;
}

- (BOOL)performMaintenanceWithError:(id *)error
{
  if ([(CPLEngineStorage *)self isEmpty])
  {
    fileStorage = self->_fileStorage;
    v14 = 0;
    v6 = [(CPLEngineFileStorage *)fileStorage resetWithError:&v14];
    v7 = v14;
    v8 = v7;
    if (!v6)
    {
      if (error)
      {
        v9 = v7;
        v10 = 0;
        *error = v8;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
  }

  lastComputeStateDownloadRequestDate = self->_lastComputeStateDownloadRequestDate;
  if (lastComputeStateDownloadRequestDate)
  {
    [(NSDate *)lastComputeStateDownloadRequestDate timeIntervalSinceNow];
    if (v12 < -3600.0)
    {
      [(CPLEngineRecordComputeStatePushQueue *)self deleteIncomingDownloadFolderWithError:0];
    }
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)openWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = CPLEngineRecordComputeStatePushQueue;
  if ([(CPLEngineStorage *)&v9 openWithError:?])
  {
    fileStorage = self->_fileStorage;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__CPLEngineRecordComputeStatePushQueue_openWithError___block_invoke;
    v8[3] = &unk_1E8620478;
    v8[4] = self;
    v6 = [(CPLEngineFileStorage *)fileStorage doWrite:v8 error:error];
    if (v6)
    {
      [(CPLEngineRecordComputeStatePushQueue *)self deleteIncomingDownloadFolderWithError:0];
      [(CPLEngineRecordComputeStatePushQueue *)self deleteTempUploadFolderWithError:0];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

uint64_t __54__CPLEngineRecordComputeStatePushQueue_openWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CPLEngineRecordComputeStatePushQueue_openWithError___block_invoke_2;
  v5[3] = &unk_1E861F698;
  v5[4] = v2;
  return [v3 openWithFileRecoveryHandler:v5 error:a2];
}

uint64_t __54__CPLEngineRecordComputeStatePushQueue_openWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 platformObject];
  v5 = [v4 hasSomeComputeStateWithFileStorageIdentifier:v3];

  return v5 ^ 1u;
}

- (CPLEngineRecordComputeStatePushQueue)initWithEngineStore:(id)store name:(id)name
{
  storeCopy = store;
  v23.receiver = self;
  v23.super_class = CPLEngineRecordComputeStatePushQueue;
  v7 = [(CPLEngineStorage *)&v23 initWithEngineStore:storeCopy name:name];
  if (v7)
  {
    engineLibrary = [storeCopy engineLibrary];
    clientLibraryBaseURL = [engineLibrary clientLibraryBaseURL];
    v10 = [clientLibraryBaseURL URLByAppendingPathComponent:@"outgoingRecordComputeStates" isDirectory:1];

    v11 = [[CPLEngineFileStorage alloc] initWithBaseURL:v10];
    fileStorage = v7->_fileStorage;
    v7->_fileStorage = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filesToCommit = v7->_filesToCommit;
    v7->_filesToCommit = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filesToDelete = v7->_filesToDelete;
    v7->_filesToDelete = v15;

    clientLibraryBaseURL2 = [engineLibrary clientLibraryBaseURL];
    v18 = [clientLibraryBaseURL2 URLByAppendingPathComponent:@"incomingRecordComputeStates" isDirectory:1];
    incomingDownloadFolderURL = v7->_incomingDownloadFolderURL;
    v7->_incomingDownloadFolderURL = v18;

    v20 = [clientLibraryBaseURL2 URLByAppendingPathComponent:@"outgoingRecordComputeStatesFromClient" isDirectory:1];
    outgoingUploadFolderURL = v7->_outgoingUploadFolderURL;
    v7->_outgoingUploadFolderURL = v20;

    v7->_lastComputeStateDownloadRequestDateLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

@end