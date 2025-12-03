@interface SYIncomingBatchSyncSession
- (SYIncomingBatchSyncSession)initWithService:(id)service;
- (void)_continueProcessing;
- (void)_handleBatchChunk:(id)chunk completion:(id)completion;
- (void)_handleEndSync:(id)sync completion:(id)completion;
- (void)_sendEndSessionResponse:(id)response;
@end

@implementation SYIncomingBatchSyncSession

- (SYIncomingBatchSyncSession)initWithService:(id)service
{
  v10.receiver = self;
  v10.super_class = SYIncomingBatchSyncSession;
  v3 = [(SYIncomingFullSyncSession *)&v10 initWithService:service];
  if (v3)
  {
    v4 = objc_opt_new();
    receivedBatchIndices = v3->_receivedBatchIndices;
    v3->_receivedBatchIndices = v4;

    v6 = objc_opt_new();
    incomingBatchQueue = v3->_incomingBatchQueue;
    v3->_incomingBatchQueue = v6;

    v3->_queueLock._os_unfair_lock_opaque = 0;
    v8 = v3;
  }

  return v3;
}

- (void)_sendEndSessionResponse:(id)response
{
  completion = self->_completion;
  if (completion)
  {
    responseCopy = response;
    wrappedUserContext = [(SYSession *)self wrappedUserContext];
    completion[2](completion, responseCopy, wrappedUserContext);
  }
}

- (void)_continueProcessing
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock(&self->_queueLock);
  firstObject = [(NSMutableArray *)self->_incomingBatchQueue firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_incomingBatchQueue removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_queueLock);
    v5 = objc_opt_new();
    batch = [firstObject batch];
    [v5 setChunkIndex:{objc_msgSend(batch, "chunkIndex")}];

    batch2 = [firstObject batch];
    syncID = [batch2 syncID];
    [v5 setSyncID:syncID];

    state = [(SYIncomingFullSyncSession *)self state];
    if (state == 5)
    {
      v10 = [SYErrorInfo alloc];
      error = [(SYSession *)self error];
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_9;
      }

      v10 = [SYErrorInfo alloc];
      error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
    }

    v12 = error;
    v13 = [(SYErrorInfo *)v10 initWithError:error];
    [v5 setError:v13];

LABEL_9:
    error2 = [v5 error];

    if (error2)
    {
      completion = [firstObject completion];
      wrappedUserContext = [(SYSession *)self wrappedUserContext];
      (completion)[2](completion, v5, wrappedUserContext);
    }

    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    batch3 = [firstObject batch];
    objects = [batch3 objects];
    v20 = [v17 initWithCapacity:{objc_msgSend(objects, "count")}];

    batch4 = [firstObject batch];
    objects2 = [batch4 objects];
    v23 = [objects2 count];

    if (v23 >= 1)
    {
      do
      {
        [v20 addObject:&unk_1F5AE26E0];
        --v23;
      }

      while (v23);
    }

    v24 = [_SYLazyChangeArray alloc];
    batch5 = [firstObject batch];
    objects3 = [batch5 objects];
    serializer = [(SYSession *)self serializer];
    v28 = [(_SYLazyChangeArray *)v24 initWithSYObjectDataArray:objects3 typeArray:v20 decoder:serializer];

    if (v28)
    {
      [(SYIncomingFullSyncSession *)self setState:11];
      targetQueue = [(SYSession *)self targetQueue];
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke;
      v43 = &unk_1E86CA728;
      selfCopy = self;
      v45 = v28;
      v46 = v5;
      v47 = firstObject;
      dispatch_sync(targetQueue, &v40);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v30 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [(SYIncomingTransactionSession *)v30 _sendChanges];
      }

      v31 = [SYErrorInfo alloc];
      v32 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2001 userInfo:0];
      v33 = [(SYErrorInfo *)v31 initWithError:v32];
      [v5 setError:v33];

      service = [(SYSession *)self service];
      _newMessageHeader = [service _newMessageHeader];
      [v5 setHeader:_newMessageHeader];

      completion2 = [firstObject completion];
      wrappedUserContext2 = [(SYSession *)self wrappedUserContext];
      (completion2)[2](completion2, v5, wrappedUserContext2);
    }

    os_unfair_lock_lock(&self->_queueLock);
    v38 = [(NSMutableArray *)self->_incomingBatchQueue count];
    os_unfair_lock_unlock(&self->_queueLock);
    if (v38)
    {
      v39 = 1;
    }

    else
    {
      if (!self->_hasReceivedEndSync)
      {
LABEL_25:

        goto LABEL_26;
      }

      v39 = 9;
    }

    [(SYIncomingFullSyncSession *)self setState:v39, v40, v41, v42, v43, selfCopy];
    goto LABEL_25;
  }

  os_unfair_lock_unlock(&self->_queueLock);
  if (self->_hasReceivedEndSync)
  {
    [(SYIncomingFullSyncSession *)self setState:9];
  }

LABEL_26:
}

void __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:applyChanges:completion:", buf, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_24;
  v8[3] = &unk_1E86CB338;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 56);
  [v3 syncSession:v4 applyChanges:v5 completion:v8];
}

void __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v6 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_24_cold_2(a1, v6, a2);
  }

  v7 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_27;
  block[3] = &unk_1E86CB310;
  v8 = *(a1 + 32);
  v17 = a2;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v15 = v5;
  v16 = v10;
  v11 = v5;
  dispatch_async(v7, block);
}

void __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_27(uint64_t a1)
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 chunkIndex];
    v6 = "NO";
    if (*(a1 + 64))
    {
      v6 = "YES";
    }

    v26 = 67109378;
    v27[0] = v5;
    LOWORD(v27[1]) = 2080;
    *(&v27[1] + 2) = v6;
    _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_INFO, "Building response for processed changes, chunkIndex = %u, success = %s", &v26, 0x12u);
  }

  v7 = [*(a1 + 40) service];
  v8 = [v7 _newMessageHeader];
  [*(a1 + 32) setHeader:v8];

  if (*(a1 + 64))
  {
    if ([*(a1 + 40) state] == 12)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = v9;
        v12 = [v10 error];
        v13 = _SYObfuscate(v12);
        v26 = 138543362;
        *v27 = v13;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Error occurred while waiting for v1 Sync Batch ingestion, returning error: %{public}@", &v26, 0xCu);
      }

      v14 = [SYErrorInfo alloc];
      v15 = [*(a1 + 40) error];
      v16 = [(SYErrorInfo *)v14 initWithError:v15];
      [*(a1 + 32) setError:v16];

      [*(a1 + 40) setState:5];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v17 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = v17;
      LODWORD(v18) = [v18 chunkIndex];
      v20 = _SYObfuscate(*(a1 + 48));
      v26 = 67109378;
      v27[0] = v18;
      LOWORD(v27[1]) = 2114;
      *(&v27[1] + 2) = v20;
      _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Client failed to process incoming BatchSyncChunk (%u), returning error: %{public}@", &v26, 0x12u);
    }

    v21 = [[SYErrorInfo alloc] initWithError:*(a1 + 48)];
    [*(a1 + 32) setError:v21];
  }

  v22 = [*(a1 + 56) completion];
  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) wrappedUserContext];
  (v22)[2](v22, v23, v24);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_handleBatchChunk:(id)chunk completion:(id)completion
{
  chunkCopy = chunk;
  completionCopy = completion;
  v8 = [(SYIncomingFullSyncSession *)self sessionActivity:0];
  os_activity_scope_enter(v8, &v10);

  v9 = objc_opt_new();
  [v9 setBatch:chunkCopy];
  [v9 setCompletion:completionCopy];
  os_unfair_lock_lock(&self->_queueLock);
  [(NSMutableArray *)self->_incomingBatchQueue addObject:v9];
  os_unfair_lock_unlock(&self->_queueLock);
  [(SYIncomingFullSyncSession *)self setState:1];

  os_activity_scope_leave(&v10);
}

- (void)_handleEndSync:(id)sync completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v8 = [(SYIncomingFullSyncSession *)self sessionActivity:0];
  os_activity_scope_enter(v8, &v11);

  v9 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v9;

  self->_hasReceivedEndSync = 1;
  [(SYIncomingFullSyncSession *)self setState:1];
  os_activity_scope_leave(&v11);
}

void __49__SYIncomingBatchSyncSession__continueProcessing__block_invoke_24_cold_2(uint64_t a1, void *a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 chunkIndex];
  v7 = "NO";
  if (a3)
  {
    v7 = "YES";
  }

  v9[0] = 67109378;
  v9[1] = v6;
  v10 = 2080;
  v11 = v7;
  _os_log_debug_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEBUG, "Delegate callout complete: -syncSession:applyChanges:completion:, v1 chunkIndex = %u, success = %s", v9, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

@end