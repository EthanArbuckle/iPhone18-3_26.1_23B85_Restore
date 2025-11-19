@interface CPLUploadComputeStatesScopeTask
- (BOOL)checkScopeIsValidInTransaction:(id)a3;
- (CPLUploadComputeStatesScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7;
- (void)_deleteTempFolderForPayloads;
- (void)_discardExtractedBatchAndGetNextBatch;
- (void)_dropAllComputeStates;
- (void)_dropLocalComputeStates:(id)a3;
- (void)_getNextBatchAndUpload;
- (void)_requestMissingPayloads;
- (void)_updateComputeSyncUploadMetricsWithError:(id)a3;
- (void)_uploadComputeStatesTaskDidFinishWithError:(id)a3;
- (void)_uploadExtractedBatch;
- (void)cancel;
- (void)launch;
- (void)taskDidFinishWithError:(id)a3;
@end

@implementation CPLUploadComputeStatesScopeTask

- (void)taskDidFinishWithError:(id)a3
{
  v4 = a3;
  if (self->_didUploadSomeComputeStates)
  {
    v5 = [(CPLEngineSyncTask *)self session];
    [v5 requestSyncStateAtEndOfSyncSession:4 reschedule:v4 == 0];
  }

  v6.receiver = self;
  v6.super_class = CPLUploadComputeStatesScopeTask;
  [(CPLEngineSyncTask *)&v6 taskDidFinishWithError:v4];
}

- (void)_updateComputeSyncUploadMetricsWithError:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineSyncTask *)self engineLibrary];
  [v5 updateComputeSyncMetrics:0 silentDecryptionFailed:0 error:v4];
}

- (void)_uploadComputeStatesTaskDidFinishWithError:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLTaskOSLogDomain_1342();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Upload finished (error: %@)", &buf, 0xCu);
    }
  }

  v7 = [(CPLEngineSyncTask *)self engineLibrary];
  v8 = [v7 store];

  v9 = [v8 scopes];
  v10 = [(CPLEngineScopedTask *)self scope];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1344;
  v27 = __Block_byref_object_dispose__1345;
  v11 = v5;
  v28 = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke;
  v18[3] = &unk_1E861C570;
  v12 = v8;
  v19 = v12;
  v20 = self;
  v23 = a2;
  v13 = v10;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_2_67;
  v17[3] = &unk_1E8620A60;
  v17[4] = self;
  v17[5] = &buf;
  v15 = [v12 performWriteTransactionWithBlock:v18 completionHandler:v17];

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recordComputeStatePushQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_2;
  v15[3] = &unk_1E861BD28;
  v15[4] = *(a1 + 40);
  v5 = v4;
  v6 = *(a1 + 64);
  v16 = v5;
  v17 = v6;
  [v3 do:v15];
  if ([*(a1 + 40) isScopeValidInTransaction:v3])
  {
    v7 = [*(a1 + 48) scopeIdentifier];
    v8 = [v5 hasChangesInScopeWithIdentifier:v7];

    if ((v8 & 1) == 0 && *(*(a1 + 40) + 200) != -1)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_66;
      v11[3] = &unk_1E861FF88;
      v12 = *(a1 + 56);
      v9 = *(a1 + 48);
      v10 = *(a1 + 40);
      v13 = v9;
      v14 = v10;
      [v3 do:v11];
    }
  }
}

void __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_2_67(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) _deleteTempFolderForPayloads];
  v4 = *(a1 + 32);
  if (v4[27])
  {
    v5 = [v4 session];
    v6 = *(a1 + 32);
    v7 = v6[27];
    v8 = [v6 scope];
    v9 = [v8 scopeIdentifier];
    [v5 noteSyncSessionInformation:{@"%lu compute states for %@ have been dropped", v7, v9}];

    v4 = *(a1 + 32);
  }

  if (v4[26])
  {
    v10 = [v4 session];
    v11 = *(a1 + 32);
    v12 = v11[26];
    v13 = [v11 scope];
    v14 = [v13 scopeIdentifier];
    [v10 noteSyncSessionInformation:{@"%lu compute states for %@ have been put aside", v12, v14}];

    v4 = *(a1 + 32);
  }

  if (v4[28])
  {
    v15 = [v4 session];
    v16 = *(a1 + 32);
    v17 = v16[28];
    v18 = [v16 scope];
    v19 = [v18 scopeIdentifier];
    [v15 noteSyncSessionInformation:{@"%lu compute state payloads for %@ has been requested and %lu have been provided", v17, v19, *(*(a1 + 32) + 232)}];
  }

  v20 = *(*(*(a1 + 40) + 8) + 40);
  if (!v20)
  {
    v29 = [v3 error];

    if (v29)
    {
      v30 = *(a1 + 32);
      v31 = [v3 error];
      [v30 taskDidFinishWithError:v31];

      goto LABEL_18;
    }

    v20 = *(*(*(a1 + 40) + 8) + 40);
  }

  if ([v20 isCPLThrottlingError])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 32) scope];
        v23 = [v22 scopeIdentifier];
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Uploading compute states for %{public}@ has been throttled, we will likely need to retry that", buf, 0xCu);
      }
    }

    v24 = [*(a1 + 32) session];
    v25 = [*(a1 + 32) scope];
    v26 = [v25 scopeIdentifier];
    [v24 noteSyncSessionInformation:{@"Uploading compute states for %@ has been throttled", v26}];

    v27 = *(a1 + 32);
    v28 = 0;
  }

  else
  {
    v27 = *(a1 + 32);
    v28 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v27 taskDidFinishWithError:v28];
LABEL_18:

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1344;
  v20 = __Block_byref_object_dispose__1345;
  v21 = 0;
  v4 = *(*(a1 + 32) + 168);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_3;
  v10[3] = &unk_1E861BD00;
  v13 = &v22;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = &v16;
  v15 = v6;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  [v4 enumerateUploadedComputeStateWithBlock:v10];
  v8 = *(v23 + 24);
  if (a2 && (v23[3] & 1) == 0)
  {
    *a2 = v17[5];
    v8 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v8 & 1;
}

void __78__CPLUploadComputeStatesScopeTask__uploadComputeStatesTaskDidFinishWithError___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [v8 fileStorageIdentifier];

  if (v9)
  {
    v10 = a1[4];
    v11 = [v8 fileURL];
    v12 = *(a1[7] + 8);
    obj = *(v12 + 40);
    LOBYTE(v10) = [v10 releaseFileURL:v11 forComputeState:v8 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    *(*(a1[6] + 8) + 24) = v10;

    if (*(*(a1[6] + 8) + 24))
    {
      goto LABEL_14;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLTaskOSLogDomain_1342();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v14 = *(*(a1[7] + 8) + 40);
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v14;
      v15 = "Failed to release file for %@: %@";
      goto LABEL_11;
    }

LABEL_13:
    *a4 = 1;
    goto LABEL_14;
  }

  v16 = [v7 fileURL];

  if (!v16)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Compute state with updated payload should have a file URL", buf, 2u);
      }
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = a1[8];
    v25 = a1[5];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesTask.m"];
    [v23 handleFailureInMethod:v24 object:v25 file:v26 lineNumber:653 description:@"Compute state with updated payload should have a file URL"];

    abort();
  }

  v17 = a1[4];
  v18 = *(a1[7] + 8);
  v27 = *(v18 + 40);
  v19 = [v17 updateFileURLForComputeState:v7 error:&v27];
  objc_storeStrong((v18 + 40), v27);
  *(*(a1[6] + 8) + 24) = v19;
  if (*(*(a1[6] + 8) + 24))
  {
    goto LABEL_14;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_13;
  }

  v13 = __CPLTaskOSLogDomain_1342();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  v20 = *(*(a1[7] + 8) + 40);
  *buf = 138412546;
  v30 = v7;
  v31 = 2112;
  v32 = v20;
  v15 = "Failed to update file for %@: %@";
LABEL_11:
  _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
LABEL_12:

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = CPLUploadComputeStatesScopeTask;
  [(CPLEngineSyncTask *)&v8 cancel];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLUploadComputeStatesScopeTask_cancel__block_invoke;
  v7[3] = &unk_1E861A940;
  v7[4] = self;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1362;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

uint64_t __41__CPLUploadComputeStatesScopeTask_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 136) cancel];
  v2 = *(*(a1 + 32) + 152);

  return [v2 cancel];
}

- (void)launch
{
  v12.receiver = self;
  v12.super_class = CPLUploadComputeStatesScopeTask;
  [(CPLEngineSyncTask *)&v12 launch];
  v3 = [(CPLEngineScopedTask *)self store];
  v4 = [v3 scopes];
  v5 = [(CPLEngineScopedTask *)self scope];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__CPLUploadComputeStatesScopeTask_launch__block_invoke;
  v9[3] = &unk_1E86200D0;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  v8 = [v3 performReadTransactionWithBlock:v9];
}

void __41__CPLUploadComputeStatesScopeTask_launch__block_invoke(id *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a1[4] isScopeValidInTransaction:a2];
  v4 = a1[4];
  if (v3)
  {
    v5 = [a1[4] session];
    if ([v5 isComputeStateTaskUploadEnabled])
    {
      v6 = a1[5];
      v7 = a1[6];
      v23 = 0;
      v8 = [v6 shouldDropAllUploadsForScope:v7 dropReason:&v23 shouldQuarantineRecords:0];
      v9 = v23;

      if ((v8 & 1) == 0)
      {
        v10 = [a1[4] session];
        v11 = [v10 scopeIdentifiersExcludedFromPushToTransport];
        v12 = [a1[6] scopeIdentifier];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v14 = __CPLTaskOSLogDomain_1342();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = a1[6];
              *buf = 138412290;
              v25 = v15;
              _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "%@ is temporarily excluded from pushing to transport - won't upload any compute states for this scope", buf, 0xCu);
            }
          }

          [a1[4] _uploadComputeStatesTaskDidFinishWithError:0];
        }

        else
        {
          v20 = [a1[5] sharingScopeForScope:a1[6]];
          if (v20)
          {
            v21 = [a1[5] transportScopeForScope:v20];
            if (v21)
            {
              [*(a1[4] + 16) addTransportScope:v21 forScope:v20];
            }

            objc_storeStrong(a1[4] + 23, v20);
          }

          *(a1[4] + 25) = [a1[5] uploadComputeStateTaskForScope:a1[6]];
          [a1[4] _getNextBatchAndUpload];
        }

LABEL_19:

        v19 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else
    {

      v9 = 0;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[6];
        *buf = 138412546;
        v25 = v18;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "We must drop all compute states for %@: %@", buf, 0x16u);
      }
    }

    *(a1[4] + 25) = [a1[5] uploadComputeStateTaskForScope:a1[6]];
    [a1[4] _dropAllComputeStates];
    goto LABEL_19;
  }

  v22 = +[CPLErrors operationCancelledError];
  [v4 _uploadComputeStatesTaskDidFinishWithError:?];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_dropAllComputeStates
{
  v3 = [(CPLEngineScopedTask *)self store];
  v4 = [(CPLEngineScopedTask *)self scope];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke;
  v11[3] = &unk_1E861BCD8;
  v11[4] = self;
  v5 = v3;
  v12 = v5;
  v13 = v4;
  v14 = v15;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_4;
  v8[3] = &unk_1E86200A8;
  v8[4] = self;
  v10 = v15;
  v6 = v13;
  v9 = v6;
  v7 = [v5 performWriteTransactionWithBlock:v11 completionHandler:v8];

  _Block_object_dispose(v15, 8);
}

void __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isScopeValidInTransaction:v3] && !objc_msgSend(*(a1 + 32), "isCancelled"))
  {
    v7 = [*(a1 + 32) session];
    v8 = [v7 shouldDefer];

    if (!v8)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_58;
      v16[3] = &unk_1E861DE18;
      v17 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v18 = v12;
      v21 = v13;
      v14 = v3;
      v15 = *(a1 + 32);
      v19 = v14;
      v20 = v15;
      [v14 do:v16];

      goto LABEL_5;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v23 = objc_opt_class();
        v11 = v23;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Session has been deferred. Stopping %@ now", buf, 0xCu);
      }
    }

    v4 = +[CPLErrors sessionHasBeenDeferredError];
  }

  else
  {
    v4 = +[CPLErrors operationCancelledError];
  }

  v5 = v4;
  [v3 setError:v4];

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

void __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 error];
    [v5 _uploadComputeStatesTaskDidFinishWithError:v6];
  }

  else if (*(*(*(a1 + 48) + 8) + 24))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = *(*(*(a1 + 48) + 8) + 24);
        v11 = 134218242;
        v12 = v9;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Dropped %ld compute states for %@", &v11, 0x16u);
      }
    }

    [*(a1 + 32) _dropAllComputeStates];
  }

  else
  {
    [*(a1 + 32) _uploadComputeStatesTaskDidFinishWithError:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_58(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) recordComputeStatePushQueue];
  if ([v4 deleteRecordsForScopeIndex:objc_msgSend(*(a1 + 40) maxCount:"localIndex") deletedCount:1000 error:{*(*(a1 + 64) + 8) + 24, a2}])
  {
    v5 = *(a1 + 64);
    v6 = *(*(v5 + 8) + 24);
    if (v6 >= 1)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_2;
      v11[3] = &unk_1E861BCB0;
      v7 = *(a1 + 48);
      v11[4] = *(a1 + 56);
      v11[5] = v5;
      [v7 addCleanupBlock:v11];
      v6 = *(*(*(a1 + 64) + 8) + 24);
    }

    if (v6 || *(*(a1 + 56) + 200) == -1)
    {
      v8 = 1;
    }

    else
    {
      v10 = [*(a1 + 32) scopes];
      v8 = [v10 setScope:*(a1 + 40) hasCompletedUploadComputeStateTask:*(*(a1 + 56) + 200) error:a2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__CPLUploadComputeStatesScopeTask__dropAllComputeStates__block_invoke_3;
    v5[3] = &unk_1E8620678;
    v4 = *(result + 32);
    v5[4] = *(result + 40);
    return [v4 withThroughputReporter:v5];
  }

  return result;
}

- (void)_discardExtractedBatchAndGetNextBatch
{
  v3 = [(CPLEngineScopedTask *)self store];
  v4 = [v3 recordComputeStatePushQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke;
  v8[3] = &unk_1E86205B8;
  v8[4] = self;
  v9 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_3;
  v7[3] = &unk_1E86205E0;
  v7[4] = self;
  v5 = v4;
  v6 = [v3 performWriteTransactionWithBlock:v8 completionHandler:v7];
}

void __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 isScopeValidInTransaction:v4])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_2;
    v8[3] = &unk_1E8620940;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v5;
    [v4 do:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_2_57;
    v7[3] = &unk_1E8620A88;
    v7[4] = *(a1 + 32);
    [v4 addCleanupBlock:v7];
  }

  else
  {
    v6 = +[CPLErrors operationCancelledError];
    [v4 setError:v6];
  }
}

void __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) _deleteTempFolderForPayloads];
  v3 = [v9 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v9 error];
    [v4 _uploadComputeStatesTaskDidFinishWithError:v5];
  }

  else
  {
    v6 = [*(a1 + 32) isCancelled];
    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = +[CPLErrors operationCancelledError];
      [v7 _uploadComputeStatesTaskDidFinishWithError:v8];
    }

    else
    {
      [v7 _getNextBatchAndUpload];
    }
  }
}

uint64_t __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1344;
  v14 = __Block_byref_object_dispose__1345;
  v15 = 0;
  v3 = *(*(a1 + 32) + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_55;
  v6[3] = &unk_1E861BC88;
  v8 = &v16;
  v7 = *(a1 + 40);
  v9 = &v10;
  [v3 enumerateUploadedComputeStateWithBlock:v6];
  v4 = *(v17 + 24);
  if (a2 && (v17[3] & 1) == 0)
  {
    *a2 = v11[5];
    v4 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v4 & 1;
}

void __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_2_57(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 176);
    *(v6 + 176) = 0;
  }
}

void __72__CPLUploadComputeStatesScopeTask__discardExtractedBatchAndGetNextBatch__block_invoke_55(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 fileStorageIdentifier];

  if (v9)
  {
    v10 = a1[4];
    v11 = [v8 fileURL];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    LOBYTE(v10) = [v10 releaseFileURL:v11 forComputeState:v8 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    *(*(a1[5] + 8) + 24) = v10;
  }

  if (*(*(a1[5] + 8) + 24) != 1 || (v13 = a1[4], v14 = *(a1[6] + 8), v16 = *(v14 + 40), v15 = [v13 removeComputeState:v7 error:&v16], objc_storeStrong((v14 + 40), v16), *(*(a1[5] + 8) + 24) = v15, (*(*(a1[5] + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }
}

- (void)_getNextBatchAndUpload
{
  v4 = [(CPLEngineScopedTask *)self store];
  v5 = [(CPLEngineScopedTask *)self scope];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke;
  v10[3] = &unk_1E8620590;
  v10[4] = self;
  v11 = v4;
  v12 = v5;
  v13 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_4;
  v9[3] = &unk_1E86205E0;
  v9[4] = self;
  v6 = v5;
  v7 = v4;
  v8 = [v7 performWriteTransactionWithBlock:v10 completionHandler:v9];
}

void __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) checkScopeIsValidInTransaction:v3])
  {
    if (*(*(a1 + 32) + 168))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v25 = __CPLTaskOSLogDomain_1342();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "There should not be any compute states dequeued here", buf, 2u);
        }
      }

      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = *(a1 + 56);
      v28 = *(a1 + 32);
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesTask.m"];
      [v26 handleFailureInMethod:v27 object:v28 file:v29 lineNumber:289 description:@"There should not be any compute states dequeued here"];

      abort();
    }

    v4 = [*(a1 + 40) recordComputeStatePushQueue];
    v5 = [*(a1 + 40) idMapping];
    v6 = [*(a1 + 40) cloudCache];
    v7 = [*(a1 + 40) transactionClientCacheView];
    v8 = [*(a1 + 40) transientPullRepository];
    v9 = [*(a1 + 40) ignoredRecords];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_40;
    v41[3] = &unk_1E861BBF0;
    v10 = v4;
    v42 = v10;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v43 = v11;
    v44 = v12;
    v13 = v7;
    v45 = v13;
    v14 = v5;
    v46 = v14;
    v15 = v6;
    v47 = v15;
    [v3 do:v41];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_41;
    v30[3] = &unk_1E861BC60;
    v31 = v10;
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v32 = v16;
    v33 = v17;
    v34 = v13;
    v35 = v14;
    v36 = v8;
    v37 = v9;
    v38 = v15;
    v39 = v18;
    v40 = v3;
    v19 = v15;
    v20 = v9;
    v21 = v8;
    v22 = v14;
    v23 = v13;
    v24 = v10;
    [v40 do:v30];
  }
}

void __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_5;
  v10[3] = &unk_1E861B290;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1362;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 scheduler];
  [v3 willRunEngineElement:CPLEngineElementUploadComputeStates];

  v4 = [*(a1 + 40) error];

  v5 = *(a1 + 32);
  if (v4)
  {
    v8 = [*(a1 + 40) error];
    [v5 _uploadComputeStatesTaskDidFinishWithError:v8];
  }

  else if (v5[21])
  {
    v6 = *(a1 + 32);

    [v6 _requestMissingPayloads];
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _uploadComputeStatesTaskDidFinishWithError:0];
  }
}

uint64_t __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_40(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) scopeIdentifier];
  v4 = [*(a1 + 48) session];
  v5 = 1;
  v6 = [v2 computeStatesToUploadWithScopeIdentifier:v3 localState:1 maximumCount:{objc_msgSend(v4, "maximumComputeStatesToUploadPerBatch")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v35;
    v13 = &propertiesForChangeType__facesProperties;
    *&v9 = 138412290;
    v30 = v9;
    v31 = v7;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = *(a1 + 56);
        v17 = [v15 itemScopedIdentifier];
        LODWORD(v16) = [v16 hasRecordWithScopedIdentifier:v17];

        if (v16)
        {
          v33 = 0;
          v18 = *(a1 + 64);
          v19 = [v15 itemScopedIdentifier];
          v20 = [v18 cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v33];

          if (v20 && [*(a1 + 72) hasRecordWithScopedIdentifier:v20])
          {
            if ((v13[51] & 1) == 0)
            {
              v21 = __CPLTaskOSLogDomain_1342();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                [v15 itemScopedIdentifier];
                v22 = v11;
                v24 = v23 = v13;
                *buf = v30;
                v39 = v24;
                _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Setting compute state for %@ back to pending as the record is now in the cloud cache", buf, 0xCu);

                v13 = v23;
                v11 = v22;
                v7 = v31;
              }
            }

            v25 = *(a1 + 32);
            v32 = v11;
            v26 = [v25 updateLocalStateForComputeState:v15 newLocalState:0 error:&v32];
            v27 = v32;

            if (!v26)
            {

              v5 = 0;
              goto LABEL_21;
            }

            v11 = v27;
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v5 = 1;
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scopeIdentifier];
  v6 = [*(v3 + 48) session];
  v7 = [v4 computeStatesToUploadWithScopeIdentifier:v5 localState:0 maximumCount:{objc_msgSend(v6, "maximumComputeStatesToUploadPerBatch")}];

  v75 = -[CPLUploadComputeStatesAccumulator initWithCapacity:maximumPayloadRequestsBatchSize:]([CPLUploadComputeStatesAccumulator alloc], "initWithCapacity:maximumPayloadRequestsBatchSize:", [v7 count], 50);
  v72 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  obj = objc_alloc_init(CPLRecordTargetMapping);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v8 = v7;
  v80 = [v8 countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v80)
  {
    v68 = a2;
    v9 = 0;
    v81 = 0;
    v10 = 0;
    v11 = 0;
    v79 = *v92;
    v69 = v3;
LABEL_3:
    v74 = v10;
    v12 = 0;
    while (1)
    {
      if (*v92 != v79)
      {
        objc_enumerationMutation(v8);
      }

      if (v81 > 0xA00000)
      {
        v10 = v74;
        goto LABEL_44;
      }

      v13 = *(*(&v91 + 1) + 8 * v12);
      v14 = [v13 itemScopedIdentifier];
      if (([*(v3 + 56) hasRecordWithScopedIdentifier:v14] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = __CPLTaskOSLogDomain_1342();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v96 = v14;
            _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "Dropping compute state for %@ as the record is not known from the client cache view", buf, 0xCu);
          }
        }

        v23 = *(v3 + 32);
        v90 = v9;
        v24 = [v23 removeComputeState:v13 error:&v90];
        v25 = v90;
        v26 = v9;
        v9 = v25;

        if ((v24 & 1) == 0)
        {
          if (_CPLSilentLogging)
          {
            v64 = v68;
          }

          else
          {
            v63 = __CPLTaskOSLogDomain_1342();
            v64 = v68;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v96 = v14;
              v97 = 2112;
              v98 = v9;
              _os_log_impl(&dword_1DC05A000, v63, OS_LOG_TYPE_ERROR, "Failed to remove compute state for %@: %@", buf, 0x16u);
            }
          }

          goto LABEL_65;
        }

        ++v11;
        goto LABEL_39;
      }

      v89 = 0;
      v15 = [*(v3 + 64) cloudScopedIdentifierForLocalScopedIdentifier:v14 isFinal:&v89];
      v16 = v15;
      if (!v15)
      {
        break;
      }

      v78 = v14;
      v17 = *(v3 + 72);
      v18 = v15;
      v19 = [v15 copy];
      v20 = [v17 changeWithScopedIdentifier:v19];

      if ([v20 isDelete])
      {
        v14 = v78;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLTaskOSLogDomain_1342();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v96 = v18;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "%@ appears to have been deleted - will need to check directly with the cloud", buf, 0xCu);
          }
        }

        v77 = 0;
      }

      else
      {
        v14 = v78;
        v16 = v18;
        if (!v20)
        {
          v27 = [*(v3 + 80) recordWithScopedIdentifier:v18];
          if (v27)
          {
            v20 = v27;
            v16 = v18;
          }

          else
          {
            v28 = [*(v3 + 88) recordWithScopedIdentifier:v18 isFinal:1];
            v16 = v18;
            if (!v28)
            {
              break;
            }

            v20 = v28;
          }
        }

        v77 = v20;
        [v72 setObject:v20 forKeyedSubscript:v16];
      }

      v29 = [v13 fileStorageIdentifier];

      v76 = v11;
      if (v29)
      {
        v30 = *(v3 + 32);
        v87 = v9;
        v31 = [v30 retainFileURLForComputeState:v13 error:&v87];
        v32 = v87;
        v33 = v9;
        v9 = v32;

        if (!v31)
        {
          if (_CPLSilentLogging)
          {
            v64 = v68;
          }

          else
          {
            v66 = __CPLTaskOSLogDomain_1342();
            v64 = v68;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v96 = v14;
              v97 = 2112;
              v98 = v9;
              _os_log_impl(&dword_1DC05A000, v66, OS_LOG_TYPE_ERROR, "Failed to find compute state payload for %@: %@", buf, 0x16u);
            }
          }

          v65 = v77;
          goto LABEL_63;
        }

        v34 = *(v3 + 32);
        v86 = v9;
        v71 = [v34 fileSizeForComputeStatePayloadFileURL:v31 error:&v86];
        v70 = v86;

        [v13 setFileURL:v31];
        v35 = [CPLRecordComputeState alloc];
        v36 = [v13 fileStorageIdentifier];
        v37 = [v13 version];
        [v13 adjustmentFingerprint];
        v39 = v38 = v8;
        v40 = [v13 lastUpdatedDate];
        v41 = [(CPLRecordComputeState *)v35 initWithItemScopedIdentifier:v18 fileStorageIdentifier:v36 version:v37 fileURL:v31 adjustmentFingerprint:v39 lastUpdatedDate:v40];

        v8 = v38;
        v42 = v69;
        v43 = v13;
        v44 = v71;
        [(CPLUploadComputeStatesAccumulator *)v75 addLocalComputeStateToUpload:v43 cloudComputeState:v41];

        v9 = v70;
      }

      else
      {
        v50 = [CPLRecordComputeState alloc];
        v51 = [v13 version];
        v52 = [v13 adjustmentFingerprint];
        [v13 lastUpdatedDate];
        v53 = v42 = v3;
        v31 = [(CPLRecordComputeState *)v50 initWithItemScopedIdentifier:v18 version:v51 fileURL:0 adjustmentFingerprint:v52 lastUpdatedDate:v53];

        [(CPLUploadComputeStatesAccumulator *)v75 requestPayloadForLocalComputeState:v13 cloudComputeState:v31];
        v44 = 10240;
      }

      v81 += v44;
      v54 = [*(v42 + 96) cloudCache];
      v55 = [v54 targetForRecordWithCloudScopedIdentifier:v18];

      [(CPLRecordTargetMapping *)obj setTarget:v55 forRecordWithScopedIdentifier:v18];
      v3 = v42;
      v11 = v76;
      v14 = v78;
LABEL_38:

LABEL_39:
      if (v80 == ++v12)
      {
        v10 = v74;
        v80 = [v8 countByEnumeratingWithState:&v91 objects:v99 count:16];
        if (v80)
        {
          goto LABEL_3;
        }

        goto LABEL_44;
      }
    }

    v18 = v16;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v45 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v14;
        _os_log_impl(&dword_1DC05A000, v45, OS_LOG_TYPE_DEFAULT, "Putting compute state for %@ aside as the record is not in the cloud cache yet", buf, 0xCu);
      }
    }

    v46 = *(v3 + 32);
    v88 = v9;
    v47 = [v46 updateLocalStateForComputeState:v13 newLocalState:1 error:&v88];
    v48 = v88;
    v49 = v9;
    v9 = v48;

    if ((v47 & 1) == 0)
    {
      if (_CPLSilentLogging)
      {
        v64 = v68;
      }

      else
      {
        v65 = __CPLTaskOSLogDomain_1342();
        v64 = v68;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v96 = v14;
          v97 = 2112;
          v98 = v9;
          _os_log_impl(&dword_1DC05A000, v65, OS_LOG_TYPE_ERROR, "Failed to put compute state for %@ aside: %@", buf, 0x16u);
        }

LABEL_63:
      }

LABEL_65:
      if (v64)
      {
        v67 = v9;
        v60 = 0;
        *v64 = v9;
      }

      else
      {
        v60 = 0;
      }

      goto LABEL_50;
    }

    ++v74;
    goto LABEL_38;
  }

  v11 = 0;
  v10 = 0;
  v9 = 0;
LABEL_44:

  if ([(CPLUploadComputeStatesAccumulator *)v75 hasEnqueuedComputeStatesToUpload]|| v11 || v10)
  {
    v58 = *(v3 + 104);
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_46;
    v83[3] = &unk_1E861BEA8;
    v83[4] = *(v3 + 48);
    v84 = v75;
    v85 = v72;
    [v58 addCleanupBlock:v83];
    objc_storeStrong((*(v3 + 48) + 120), obj);
  }

  else
  {
    v56 = *(v3 + 48);
    v57 = *(v56 + 120);
    *(v56 + 120) = 0;
  }

  v59 = *(v3 + 104);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_2;
  v82[3] = &unk_1E861BC38;
  v82[4] = *(v3 + 48);
  v82[5] = v10;
  v82[6] = v11;
  [v59 addCleanupBlock:v82];
  v60 = 1;
LABEL_50:

  v61 = *MEMORY[0x1E69E9840];
  return v60;
}

uint64_t __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_46(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    objc_storeStrong((*(result + 32) + 168), *(result + 40));
    v4 = [*(v3 + 48) copy];
    v5 = *(v3 + 32);
    v6 = *(v5 + 176);
    *(v5 + 176) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

void *__57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_2(void *result, uint64_t a2)
{
  if (!a2)
  {
    v7 = v2;
    v8 = v3;
    *(result[4] + 208) += result[5];
    *(result[4] + 216) += result[6];
    v4 = result[4];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_3;
    v5[3] = &__block_descriptor_48_e35_v16__0__CPLSyncThroughputReporter_8l;
    v6 = *(result + 5);
    return [v4 withThroughputReporter:v5];
  }

  return result;
}

void __57__CPLUploadComputeStatesScopeTask__getNextBatchAndUpload__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    [v3 addCompletedWorkItemCount:v4 kindOfWork:@"aside.states"];
    v3 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v6 addCompletedWorkItemCount:v5 kindOfWork:@"dropped.states"];
    v3 = v6;
  }
}

- (void)_requestMissingPayloads
{
  v38 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(CPLEngineSyncTask *)self session];
  v4 = [v3 shouldDefer];

  if (v4)
  {
    v5 = +[CPLErrors sessionHasBeenDeferredError];
LABEL_5:
    [(CPLUploadComputeStatesScopeTask *)self _uploadComputeStatesTaskDidFinishWithError:v5, v5];
    v6 = *MEMORY[0x1E69E9840];

    return;
  }

  if ([(CPLEngineSyncTask *)self isCancelled])
  {
    v5 = +[CPLErrors operationCancelledError];
    goto LABEL_5;
  }

  v7 = [(CPLUploadComputeStatesAccumulator *)self->_computeStatesAccumulator popNextBatchOfLocalComputeStatesNeedingPayload];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    requestMissingPayloadsProgress = self->_requestMissingPayloadsProgress;
    self->_requestMissingPayloadsProgress = v8;

    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v10 = self->_requestMissingPayloadsProgress;
    v11 = [(CPLEngineSyncTask *)self session];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke;
    v31[3] = &unk_1E861BB78;
    v31[4] = self;
    v12 = v10;
    v32 = v12;
    v33 = v34;
    v13 = [v11 addDeferHandler:v31];

    v14 = [(CPLEngineSyncTask *)self engineLibrary];
    v15 = [v14 store];
    v16 = [v15 recordComputeStatePushQueue];
    v30 = 0;
    v17 = [v16 createTempUploadFolderWithError:&v30];
    v18 = v30;

    if (v17)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLTaskOSLogDomain_1342();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v7 count];
          *buf = 134217984;
          v37 = v20;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Requesting %lu payloads to client", buf, 0xCu);
        }
      }

      v21 = self->_requestMissingPayloadsProgress;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_27;
      v25[3] = &unk_1E861BBC8;
      v25[4] = self;
      v26 = v7;
      v27 = v17;
      v28 = v13;
      v29 = v34;
      [(NSProgress *)v21 performAsCurrentWithPendingUnitCount:1 usingBlock:v25];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLTaskOSLogDomain_1342();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v18;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Failed to create temp folder to get compute state payloads: %@", buf, 0xCu);
        }
      }

      [(CPLUploadComputeStatesScopeTask *)self _uploadComputeStatesTaskDidFinishWithError:v18];
    }

    _Block_object_dispose(v34, 8);
  }

  else
  {
    [(CPLUploadComputeStatesScopeTask *)self _uploadExtractedBatch];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_2;
  v8[3] = &unk_1E861F868;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1362;
  block[3] = &unk_1E861B4E0;
  v13 = v5;
  v6 = v2;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_27(uint64_t a1)
{
  *(*(a1 + 32) + 224) += [*(a1 + 40) count];
  v2 = [*(a1 + 32) engineLibrary];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_2_28;
  v7[3] = &unk_1E861BBA0;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v5;
  v9 = v6;
  [v2 providePayloadForComputeStates:v3 inFolderWithURL:v4 completionHandler:v7];
}

void __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_2_28(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 isCPLErrorWithCode:255])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Lazy compute state payloads are not implemented by client - dropping compute states", buf, 2u);
      }
    }

    v7 = 0;
    v5 = MEMORY[0x1E695E0F0];
  }

  v10 = a1[4];
  v9 = a1[5];
  v11 = *(v10 + 160);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_29;
  v19[3] = &unk_1E861BBC8;
  v19[4] = v10;
  v12 = v9;
  v13 = a1[6];
  v20 = v12;
  v21 = v5;
  v22 = v7;
  v23 = v13;
  v14 = v19;
  *buf = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __cpl_dispatch_async_block_invoke_1362;
  v27 = &unk_1E861B4E0;
  v28 = v14;
  v15 = v11;
  v16 = v7;
  v17 = v5;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v15, v18);
}

void __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_29(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 152) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 152), "totalUnitCount")}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = [*(a1 + 32) session];
  [v4 removeDeferHandler:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    v22 = +[CPLErrors sessionHasBeenDeferredError];
    [v5 _uploadComputeStatesTaskDidFinishWithError:?];
    v6 = *MEMORY[0x1E69E9840];

    return;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 48) count];
        *buf = 134217984;
        v26 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Client provided %lu payloads", buf, 0xCu);
      }

      v7 = *(a1 + 48);
    }

    v10 = [*(*(a1 + 32) + 168) localComputeStatesToDropAfterClientProvidedPayloadForLocalComputeStates:v7];
    *(*(a1 + 32) + 232) += [*(a1 + 48) count];
    if ([*(a1 + 48) count])
    {
      v11 = *(a1 + 32);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_30;
      v23[3] = &unk_1E8620848;
      v24 = *(a1 + 48);
      [v11 withThroughputReporter:v23];
    }

    [*(a1 + 32) _dropLocalComputeStates:v10];
    [*(a1 + 32) _requestMissingPayloads];

LABEL_13:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if (([*(a1 + 56) isCPLOperationDeferredError] & 1) == 0 && !objc_msgSend(*(a1 + 56), "isCPLOperationCancelledError"))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 56);
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Failed to request payloads for compute states - will retry later: %@", buf, 0xCu);
      }
    }

    v18 = [*(a1 + 32) session];
    v19 = [*(a1 + 32) scope];
    v20 = [v19 scopeIdentifier];
    [v18 noteSyncSessionInformation:{@"Uploading compute states for %@ needs compute state payloads from client", v20}];

    v21 = [*(a1 + 32) session];
    [v21 requestSyncStateAtEndOfSyncSession:12 reschedule:0];

    [*(a1 + 32) _uploadComputeStatesTaskDidFinishWithError:0];
    goto LABEL_13;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *MEMORY[0x1E69E9840];

  [v13 _uploadComputeStatesTaskDidFinishWithError:v14];
}

void __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addCompletedWorkItemCount:objc_msgSend(v2 kindOfWork:{"count"), @"requested.states"}];
}

uint64_t __58__CPLUploadComputeStatesScopeTask__requestMissingPayloads__block_invoke_2(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 152))
  {
    *(*(*(result + 48) + 8) + 24) = 1;
    return [*(result + 32) cancel];
  }

  return result;
}

- (void)_deleteTempFolderForPayloads
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(CPLEngineSyncTask *)self engineLibrary];
  v3 = [v2 store];
  v4 = [v3 recordComputeStatePushQueue];
  v9 = 0;
  v5 = [v4 deleteTempUploadFolderWithError:&v9];
  v6 = v9;

  if ((v5 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLTaskOSLogDomain_1342();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Failed to remove temp folder: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dropLocalComputeStates:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    self->_countOfDroppedComputeStates += [v4 count];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Dropping %lu compute states with no payload", buf, 0xCu);
      }
    }

    v6 = [(CPLEngineSyncTask *)self engineLibrary];
    v7 = [v6 store];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CPLUploadComputeStatesScopeTask__dropLocalComputeStates___block_invoke;
    v11[3] = &unk_1E86205B8;
    v12 = v7;
    v13 = v4;
    v8 = v7;
    v9 = [v8 performWriteTransactionWithBlock:v11 completionHandler:&__block_literal_global_1398];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__CPLUploadComputeStatesScopeTask__dropLocalComputeStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 recordComputeStatePushQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CPLUploadComputeStatesScopeTask__dropLocalComputeStates___block_invoke_2;
  v7[3] = &unk_1E8620940;
  v8 = *(a1 + 40);
  v9 = v5;
  v6 = v5;
  [v4 do:v7];
}

void __59__CPLUploadComputeStatesScopeTask__dropLocalComputeStates___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  if (v3 && (_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLTaskOSLogDomain_1342();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 error];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Failed to drop compute states with no payload: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __59__CPLUploadComputeStatesScopeTask__dropLocalComputeStates___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        v12 = *(a1 + 40);
        v18 = v10;
        v13 = [v12 removeComputeState:v11 error:&v18];
        v7 = v18;

        if (!v13)
        {

          if (a2)
          {
            v14 = v7;
            v15 = 0;
            *a2 = v7;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_15;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  v15 = 1;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_uploadExtractedBatch
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(CPLUploadComputeStatesAccumulator *)self->_computeStatesAccumulator countOfCloudComputeStatesToUpload])
  {
    v4 = [(CPLEngineScopedTask *)self scope];
    if ([(CPLEngineSyncTask *)self isCancelled])
    {
      v5 = +[CPLErrors operationCancelledError];
      [(CPLUploadComputeStatesScopeTask *)self _uploadComputeStatesTaskDidFinishWithError:v5];
    }

    else
    {
      v9 = [(CPLEngineSyncTask *)self engineLibrary];
      v10 = [v9 transport];

      v11 = [v10 createGroupForComputeStateUpload];
      transportGroup = self->_transportGroup;
      self->_transportGroup = v11;

      Current = CFAbsoluteTimeGetCurrent();
      v14 = self->_knownRecords;
      v15 = [(CPLUploadComputeStatesAccumulator *)self->_computeStatesAccumulator cloudComputeStatesToUpload];
      sharedScope = self->_sharedScope;
      targetMapping = self->_targetMapping;
      transportScopeMapping = self->_transportScopeMapping;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __56__CPLUploadComputeStatesScopeTask__uploadExtractedBatch__block_invoke;
      v28[3] = &unk_1E861BB50;
      v28[4] = self;
      *&v28[5] = Current;
      v19 = [v10 uploadComputeStates:v15 scope:v4 sharedScope:sharedScope targetMapping:targetMapping transportScopeMapping:transportScopeMapping knownRecords:v14 completionHandler:v28];
      uploadComputeStatesTask = self->_uploadComputeStatesTask;
      self->_uploadComputeStatesTask = v19;

      v21 = self->_uploadComputeStatesTask;
      if (!v21)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v23 = __CPLTaskOSLogDomain_1342();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [(CPLUploadComputeStatesAccumulator *)self->_computeStatesAccumulator cloudComputeStatesToUpload];
            *buf = 138412290;
            v30 = v24;
            _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Failed to create a task for %@", buf, 0xCu);
          }
        }

        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Upload Compute State Phase/CPLUploadComputeStatesTask.m"];
        v27 = [(CPLUploadComputeStatesAccumulator *)self->_computeStatesAccumulator cloudComputeStatesToUpload];
        [v25 handleFailureInMethod:a2 object:self file:v26 lineNumber:151 description:{@"Failed to create a task for %@", v27}];

        abort();
      }

      [(CPLEngineSyncTask *)self launchTransportTask:v21 withTransportGroup:self->_transportGroup];
    }

    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    computeStatesAccumulator = self->_computeStatesAccumulator;
    self->_computeStatesAccumulator = 0;

    knownRecords = self->_knownRecords;
    self->_knownRecords = 0;

    v8 = *MEMORY[0x1E69E9840];

    [(CPLUploadComputeStatesScopeTask *)self _getNextBatchAndUpload];
  }
}

void __56__CPLUploadComputeStatesScopeTask__uploadExtractedBatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 160);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CPLUploadComputeStatesScopeTask__uploadExtractedBatch__block_invoke_2;
  v14[3] = &unk_1E861B330;
  v14[4] = v7;
  v15 = v6;
  v16 = v5;
  v17 = *(a1 + 40);
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_1362;
  block[3] = &unk_1E861B4E0;
  v19 = v9;
  v10 = v8;
  v11 = v5;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

uint64_t __56__CPLUploadComputeStatesScopeTask__uploadExtractedBatch__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;

  [*(a1 + 32) _updateComputeSyncUploadMetricsWithError:*(a1 + 40)];
  v4 = *(a1 + 40);
  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(*(a1 + 32) + 168) countOfCloudComputeStatesToUpload];
        v7 = *(a1 + 40);
        *buf = 134218242;
        v21 = v6;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Failed to upload %lu compute states: %@", buf, 0x16u);
      }

      v4 = *(a1 + 40);
    }

    result = [*(a1 + 32) _uploadComputeStatesTaskDidFinishWithError:v4];
  }

  else
  {
    v9 = [*(*(a1 + 32) + 168) cloudComputeStatesToUpload];
    v10 = [v9 count];

    if (v10)
    {
      v11 = *(a1 + 32);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __56__CPLUploadComputeStatesScopeTask__uploadExtractedBatch__block_invoke_9;
      v19[3] = &__block_descriptor_40_e35_v16__0__CPLSyncThroughputReporter_8l;
      v19[4] = v10;
      [v11 withThroughputReporter:v19];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 48) count];
        v14 = [*(*(a1 + 32) + 168) countOfCloudComputeStatesToUpload];
        v15 = v14 - [*(a1 + 48) count];
        v16 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
        v17 = *(a1 + 48);
        *buf = 134218754;
        v21 = v13;
        v22 = 2048;
        v23 = v15;
        v24 = 2048;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Uploaded %lu compute states (dropped %lu) successfully in %.1fs:\n%{public}@", buf, 0x2Au);
      }
    }

    if ([*(a1 + 48) count])
    {
      *(*(a1 + 32) + 192) = 1;
    }

    result = [*(a1 + 32) _discardExtractedBatchAndGetNextBatch];
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)checkScopeIsValidInTransaction:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLEngineSyncTask *)self session];
  v6 = [v5 shouldDefer];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLTaskOSLogDomain_1342();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412290;
        *&v14[4] = objc_opt_class();
        v8 = *&v14[4];
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Session for %@ has been deferred", v14, 0xCu);
      }
    }

    v9 = +[CPLErrors sessionHasBeenDeferredError];
    [v4 setError:v9];

    v10 = 0;
  }

  else
  {
    v11 = [v4 error];
    v10 = v11 == 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CPLUploadComputeStatesScopeTask)initWithEngineLibrary:(id)a3 session:(id)a4 clientCacheIdentifier:(id)a5 scope:(id)a6 transportScope:(id)a7
{
  v12 = a6;
  v25.receiver = self;
  v25.super_class = CPLUploadComputeStatesScopeTask;
  v13 = [(CPLEngineScopedTask *)&v25 initWithEngineLibrary:a3 session:a4 clientCacheIdentifier:a5 scope:v12 transportScope:a7];
  if (v13)
  {
    v14 = CPLCopyDefaultSerialQueueAttributes();
    v15 = dispatch_queue_create("engine.sync.uploadcomputestates", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    v17 = [CPLTransportScopeMapping alloc];
    v18 = [(CPLEngineSyncTask *)v13 engineLibrary];
    v19 = [v18 transport];
    v20 = [(CPLTransportScopeMapping *)v17 initWithTranslator:v19];
    transportScopeMapping = v13->_transportScopeMapping;
    v13->_transportScopeMapping = v20;

    v22 = v13->_transportScopeMapping;
    v23 = [(CPLEngineScopedTask *)v13 transportScope];
    [(CPLTransportScopeMapping *)v22 addTransportScope:v23 forScope:v12];

    v13->_taskItem = -1;
  }

  return v13;
}

@end