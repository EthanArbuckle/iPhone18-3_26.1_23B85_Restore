@interface SYOutgoingBatchSyncSession
- (BOOL)_handleBatchAck:(id)ack error:(id *)error;
- (BOOL)_handleBatchSyncEndResponse:(id)response error:(id *)error;
- (SYOutgoingBatchSyncSession)initWithService:(id)service;
- (double)remainingSessionTime;
- (unsigned)state;
- (void)_fetchNextBatch;
- (void)_installStateListener;
- (void)_installTimers;
- (void)_messageExpiredWithSeqno:(unint64_t)seqno identifier:(id)identifier;
- (void)_notifySessionComplete;
- (void)_processNextState;
- (void)_sendSyncCancelled;
- (void)_sendSyncCompleteAndRunBlock:(id)block;
- (void)_sendSyncRestart;
- (void)_sendSyncStart;
- (void)_sessionComplete;
- (void)_setMessageTimerForSeqno:(unint64_t)seqno;
- (void)_setStateQuietly:(unsigned int)quietly;
- (void)_setupChangeConcurrency;
- (void)_waitForMessageWindow;
- (void)cancelWithError:(id)error;
- (void)setState:(unsigned int)state;
- (void)start:(id)start;
@end

@implementation SYOutgoingBatchSyncSession

- (SYOutgoingBatchSyncSession)initWithService:(id)service
{
  serviceCopy = service;
  v31.receiver = self;
  v31.super_class = SYOutgoingBatchSyncSession;
  v5 = [(SYSession *)&v31 initWithService:serviceCopy];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    v7 = objc_opt_new();
    ackedBatchIndices = v6->_ackedBatchIndices;
    v6->_ackedBatchIndices = v7;

    serviceActivity = [serviceCopy serviceActivity];
    v10 = _os_activity_create(&dword_1DF835000, "SYSession (v1 Outgoing Batched)", serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v6->_sessionActivity;
    v6->_sessionActivity = v10;

    objc_initWeak(&location, v6);
    v12 = [_SYMessageTimerTable alloc];
    queue = [(SYSession *)v6 queue];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __46__SYOutgoingBatchSyncSession_initWithService___block_invoke;
    v28 = &unk_1E86CA230;
    objc_copyWeak(&v29, &location);
    v14 = [(_SYMessageTimerTable *)v12 initWithQueue:queue timerCallback:&v25];
    timers = v6->_timers;
    v6->_timers = v14;

    name = [serviceCopy name];
    lastPathComponent = [name lastPathComponent];
    v18 = [lastPathComponent stringByAppendingString:@" Change Enqueuer"];

    v19 = dispatch_queue_create([v18 UTF8String], 0);
    changeFetcherQueue = v6->_changeFetcherQueue;
    v6->_changeFetcherQueue = v19;

    v21 = objc_opt_new();
    uUIDString = [v21 UUIDString];
    [(SYSession *)v6 setIdentifier:uUIDString];

    v23 = v6;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __46__SYOutgoingBatchSyncSession_initWithService___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(WeakRetained[33], &v8);
    [(os_activity_t *)v7 _messageExpiredWithSeqno:a2 identifier:v5];
    os_activity_scope_leave(&v8);
  }
}

- (unsigned)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  return state;
}

- (void)setState:(unsigned int)state
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state to %{companionsync:SYSessionState}d", &v9, 0x12u);
  }

  selfCopy->_state = state;
  dispatch_source_merge_data(selfCopy->_stateUpdateSource, 1uLL);
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setStateQuietly:(unsigned int)quietly
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    quietlyCopy = quietly;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state (quietly) to %{companionsync:SYSessionState}d", &v9, 0x12u);
  }

  selfCopy->_state = quietly;
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];
}

- (double)remainingSessionTime
{
  [(SYSession *)self fullSessionTimeout];
  if (v3 == 0.0)
  {
    return 1.79769313e308;
  }

  sessionStartTime = self->_sessionStartTime;
  if (sessionStartTime > 0.0)
  {
    return v3 + sessionStartTime - CFAbsoluteTimeGetCurrent();
  }

  return 60.0;
}

- (void)_setupChangeConcurrency
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SYSession *)self maxConcurrentMessages]&& ([(SYSession *)self maxConcurrentMessages]& 0x8000000000000000) == 0)
  {
    v4 = [[_SYCountedSemaphore alloc] initWithCount:[(SYSession *)self maxConcurrentMessages]];
    changeConcurrencySemaphore = self->_changeConcurrencySemaphore;
    self->_changeConcurrencySemaphore = v4;

    v6 = _os_activity_create(&dword_1DF835000, "Change Concurrency Wait", self->_sessionActivity, OS_ACTIVITY_FLAG_DEFAULT);
    changeWaitActivity = self->_changeWaitActivity;
    self->_changeWaitActivity = v6;

    MEMORY[0x1EEE66BB8](v6, changeWaitActivity);
  }
}

- (void)_waitForMessageWindow
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_changeConcurrencySemaphore)
  {
    changeFetcherQueue = self->_changeFetcherQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SYOutgoingBatchSyncSession__waitForMessageWindow__block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(changeFetcherQueue, block);
  }

  else
  {

    [(SYOutgoingBatchSyncSession *)self _fetchNextBatch];
  }
}

void __51__SYOutgoingBatchSyncSession__waitForMessageWindow__block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 256), &state);
  [*(a1 + 32) perMessageTimeout];
  v3 = v2;
  if (v2 == 0.0)
  {
    v4 = [*(a1 + 32) service];
    [v4 defaultMessageTimeout];
    v3 = v5;
  }

  if ([*(*(a1 + 32) + 248) waitWithTimeout:v3 + v3])
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(*(*(a1 + 32) + 264), &v8);
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SYOutgoingBatchSyncSession__waitForMessageWindow__block_invoke_2;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);

    os_activity_scope_leave(&v8);
  }

  os_activity_scope_leave(&state);
}

- (void)_fetchNextBatch
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __45__SYOutgoingBatchSyncSession__fetchNextBatch__block_invoke;
  v24[3] = &unk_1E86CA258;
  v24[4] = self;
  v26 = v27;
  v5 = v4;
  v25 = v5;
  v6 = MEMORY[0x1E12E11B0](v24);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  targetQueue = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SYOutgoingBatchSyncSession__fetchNextBatch__block_invoke_75;
  block[3] = &unk_1E86CA280;
  v12 = &v14;
  block[4] = self;
  v8 = v6;
  v11 = v8;
  v13 = &v18;
  dispatch_sync(targetQueue, block);

  v9 = *(v15 + 6);
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      [(SYSession *)self setError:v19[5]];
      self->_errorIsLocal = 1;
      v9 = *(v15 + 6);
    }

    [(SYOutgoingBatchSyncSession *)self setState:v9];
  }

  else
  {
    [(SYOutgoingBatchSyncSession *)self _sendSyncBatch:v5 nextState:?];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(v27, 8);
}

uint64_t __45__SYOutgoingBatchSyncSession__fetchNextBatch__block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &state);
  v4 = [*(a1 + 32) serializer];
  v5 = objc_opt_respondsToSelector();

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 serializer];
    v8 = [v7 encodeSYChangeForBackwardCompatibility:v3 protocolVersion:{objc_msgSend(*(a1 + 32), "protocolVersion")}];
  }

  else
  {
    v9 = [v6 serializer];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24[0] = @"SYDelegateProtocolName";
      v14 = NSStringFromProtocol(&unk_1F5AE3E50);
      v24[1] = @"SYDelegateMethodNames";
      v25[0] = v14;
      v15 = NSStringFromSelector(sel_encodeSYChangeForBackwardCompatibility_protocolVersion_);
      v23[0] = v15;
      v16 = NSStringFromSelector(sel_dataWithSYObject_);
      v23[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      v25[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v19 = [v13 initWithSYError:2020 userInfo:v18];
      [*(a1 + 32) setError:v19];

      [*(a1 + 32) setState:5];
      v11 = 0;
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v7 = [*(a1 + 32) serializer];
    v8 = [v7 dataWithSYObject:v3];
  }

  v11 = v8;

  *(*(*(a1 + 48) + 8) + 24) += [v11 length];
  if (*(*(*(a1 + 48) + 8) + 24) >= 0x200000uLL && [*(a1 + 40) count])
  {
    goto LABEL_9;
  }

  [*(a1 + 40) addObject:v11];
  v12 = 1;
LABEL_10:

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

void __45__SYOutgoingBatchSyncSession__fetchNextBatch__block_invoke_75(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:enqueueChanges:error:", buf, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = 0;
  v6 = [v3 syncSession:v4 enqueueChanges:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(*(a1 + 48) + 8) + 24) = v6;

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  }
}

void __55__SYOutgoingBatchSyncSession__sendSyncBatch_nextState___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &v10);
  v9 = *(*(a1 + 32) + 280);
  if (a2)
  {
    [v9 setIdentifier:v7 forSequenceNumber:*(a1 + 40)];
    if ([*(a1 + 32) state] == 8)
    {
      [*(a1 + 32) setState:*(a1 + 48)];
    }
  }

  else
  {
    [v9 cancelTimerForSequenceNumber:*(a1 + 40)];
    [*(a1 + 32) setError:v8];
    *(*(a1 + 32) + 276) = 1;
    [*(a1 + 32) setState:5];
    [*(*(a1 + 32) + 248) signal];
  }

  os_activity_scope_leave(&v10);
}

- (void)_sendSyncCompleteAndRunBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v6 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_INFO, "Sending end-session message", buf, 2u);
  }

  v7 = objc_opt_new();
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];
  [v7 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v7 setSyncID:identifier];

  error = [(SYSession *)self error];
  if (error)
  {
    errorIsLocal = self->_errorIsLocal;

    if (errorIsLocal)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        error2 = [(SYSession *)self error];
        *buf = 138412290;
        v32 = error2;
        _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Attaching error to end-session: %@", buf, 0xCu);
      }

      v16 = [SYErrorInfo alloc];
      error3 = [(SYSession *)self error];
      v18 = [(SYErrorInfo *)v16 initWithError:error3];
      [v7 setError:v18];
    }
  }

  v19 = [blockCopy copy];

  header = [v7 header];
  sequenceNumber = [header sequenceNumber];

  [(SYOutgoingBatchSyncSession *)self _setMessageTimerForSeqno:sequenceNumber];
  syncEngine = [service syncEngine];
  priority = [(SYSession *)self priority];
  v24 = [(SYSession *)self combinedEngineOptions:0];
  wrappedUserContext = [(SYSession *)self wrappedUserContext];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __59__SYOutgoingBatchSyncSession__sendSyncCompleteAndRunBlock___block_invoke;
  v28[3] = &unk_1E86CA2D0;
  v29 = v19;
  v30 = sequenceNumber;
  v28[4] = self;
  v26 = v19;
  [syncEngine enqueueSyncRequest:v7 withMessageID:5 priority:priority options:v24 userContext:wrappedUserContext callback:v28];

  self->_hasSentEnd = 1;
  v27 = *MEMORY[0x1E69E9840];
}

void __59__SYOutgoingBatchSyncSession__sendSyncCompleteAndRunBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &v11);
  v9 = *(a1 + 32);
  if (a2)
  {
    [v9 setState:7];
    [*(*(a1 + 32) + 280) setIdentifier:v7 forSequenceNumber:*(a1 + 48)];
  }

  else
  {
    [v9 setError:v8];
    [*(a1 + 32) setState:5];
    [*(*(a1 + 32) + 280) cancelTimerForSequenceNumber:*(a1 + 48)];
    [*(*(a1 + 32) + 248) signal];
  }

  if (*(a1 + 40))
  {
    v10 = [*(a1 + 32) queue];
    dispatch_async(v10, *(a1 + 40));
  }

  os_activity_scope_leave(&v11);
}

- (void)_sendSyncCancelled
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_opt_new();
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];
  [v4 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v4 setSyncID:identifier];

  v8 = [SYErrorInfo alloc];
  v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  v10 = [(SYErrorInfo *)v8 initWithError:v9];
  [v4 setError:v10];

  header = [v4 header];
  sequenceNumber = [header sequenceNumber];

  [(SYOutgoingBatchSyncSession *)self _setMessageTimerForSeqno:sequenceNumber];
  syncEngine = [service syncEngine];
  priority = [(SYSession *)self priority];
  v15 = [(SYSession *)self combinedEngineOptions:0];
  wrappedUserContext = [(SYSession *)self wrappedUserContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__SYOutgoingBatchSyncSession__sendSyncCancelled__block_invoke;
  v17[3] = &unk_1E86CA2F8;
  v17[4] = self;
  v17[5] = sequenceNumber;
  [syncEngine enqueueSyncRequest:v4 withMessageID:5 priority:priority options:v15 userContext:wrappedUserContext callback:v17];

  self->_hasSentEnd = 1;
}

void __48__SYOutgoingBatchSyncSession__sendSyncCancelled__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &state);
  [*(*(a1 + 32) + 280) cancelTimerForSequenceNumber:*(a1 + 40)];
  if (a2)
  {
    v9 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SYOutgoingBatchSyncSession__sendSyncCancelled__block_invoke_2;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    [*(a1 + 32) setError:v8];
    [*(a1 + 32) setState:5];
  }

  os_activity_scope_leave(&state);
}

- (void)_sendSyncRestart
{
  v10[1] = *MEMORY[0x1E69E9840];
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SYOutgoingBatchSyncSession *)self canRestart])
  {
    [(NSMutableIndexSet *)self->_ackedBatchIndices removeAllIndexes];
    self->_batchIndex = 0;
    v4 = *MEMORY[0x1E69E9840];

    [(SYOutgoingBatchSyncSession *)self _sendSyncStart];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"This session does not support being restarted.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 initWithSYError:2008 userInfo:v6];
    [(SYSession *)self setError:v7];

    self->_errorIsLocal = 1;
    [(SYOutgoingBatchSyncSession *)self setState:5];
    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)_sendSyncStart
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  service = [(SYSession *)self service];
  v5 = objc_opt_new();
  _newMessageHeader = [service _newMessageHeader];
  [v5 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v5 setSyncID:identifier];

  syncEngine = [service syncEngine];
  priority = [(SYSession *)self priority];
  v10 = [(SYSession *)self combinedEngineOptions:0];
  wrappedUserContext = [(SYSession *)self wrappedUserContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SYOutgoingBatchSyncSession__sendSyncStart__block_invoke;
  v12[3] = &unk_1E86CA320;
  v12[4] = self;
  [syncEngine enqueueSyncRequest:v5 withMessageID:3 priority:priority options:v10 userContext:wrappedUserContext callback:v12];
}

void __44__SYOutgoingBatchSyncSession__sendSyncStart__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &v11);
  v9 = *(a1 + 32);
  if (a2)
  {
    v9[28] = 0;
    v10 = 1;
  }

  else
  {
    [v9 setError:v8];
    v10 = 5;
  }

  [*(a1 + 32) setState:v10];
  os_activity_scope_leave(&v11);
}

- (void)_notifySessionComplete
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  targetQueue = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SYOutgoingBatchSyncSession__notifySessionComplete__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(targetQueue, block);

  service = [(SYSession *)self service];
  error = [(SYSession *)self error];
  [service sessionDidEnd:self withError:error];

  [(SYSession *)self didCompleteSession];
}

void __52__SYOutgoingBatchSyncSession__notifySessionComplete__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:didEndWithError:", v6, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = [v4 error];
  [v3 syncSession:v4 didEndWithError:v5];
}

- (void)_sessionComplete
{
  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    dispatch_source_cancel(sessionTimer);
    v4 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  if (self->_errorIsLocal && !self->_hasSentEnd)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__SYOutgoingBatchSyncSession__sessionComplete__block_invoke;
    v5[3] = &unk_1E86C9FB0;
    v5[4] = self;
    [(SYOutgoingBatchSyncSession *)self _sendSyncCompleteAndRunBlock:v5];
  }

  else
  {

    [(SYOutgoingBatchSyncSession *)self _notifySessionComplete];
  }
}

uint64_t __46__SYOutgoingBatchSyncSession__sessionComplete__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setStateQuietly:5];
  v2 = *(a1 + 32);

  return [v2 _notifySessionComplete];
}

- (void)_messageExpiredWithSeqno:(unint64_t)seqno identifier:(id)identifier
{
  identifierCopy = identifier;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    [(SYOutgoingBatchSyncSession *)identifierCopy _messageExpiredWithSeqno:seqno identifier:v7];
  }

  v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
  [(SYSession *)self setError:v8];

  [(SYOutgoingBatchSyncSession *)self setState:5];
}

- (void)_processNextState
{
  v15 = *MEMORY[0x1E69E9840];
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v10);
  state = [(SYOutgoingBatchSyncSession *)self state];
  if (state > 3)
  {
    if (state == 4)
    {
      [(SYOutgoingBatchSyncSession *)self _sendSyncRestart];
    }

    else
    {
      if (state == 5)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v5 = qword_1EDE73420;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          error = [(SYSession *)self error];
          *buf = 138543618;
          v12 = v7;
          v13 = 2112;
          v14 = error;
          _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ entered error state. Error = %@", buf, 0x16u);
        }
      }

      else if (state != 9)
      {
        goto LABEL_19;
      }

      [(SYOutgoingBatchSyncSession *)self _sessionComplete];
    }
  }

  else
  {
    switch(state)
    {
      case 1:
        [(SYOutgoingBatchSyncSession *)self _waitForMessageWindow];
        break;
      case 2:
        [(SYOutgoingBatchSyncSession *)self _sendSyncCompleteAndRunBlock:0];
        break;
      case 3:
        self->_cancelled = 1;
        [(SYOutgoingBatchSyncSession *)self _sendSyncCancelled];
        break;
    }
  }

LABEL_19:
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_installTimers
{
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__SYOutgoingBatchSyncSession__installTimers__block_invoke;
  v14 = &unk_1E86CA190;
  objc_copyWeak(&v15, &location);
  v3 = MEMORY[0x1E12E11B0](&v11);
  self->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  [(SYSession *)self fullSessionTimeout:v11];
  if (v4 != 0.0)
  {
    queue = [(SYSession *)self queue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
    sessionTimer = self->_sessionTimer;
    self->_sessionTimer = v6;

    dispatch_source_set_event_handler(self->_sessionTimer, v3);
    v8 = self->_sessionTimer;
    [(SYSession *)self fullSessionTimeout];
    v10 = dispatch_walltime(0, (v9 * 1000000000.0));
    dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
    dispatch_resume(self->_sessionTimer);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __44__SYOutgoingBatchSyncSession__installTimers__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(WeakRetained[33], &v8);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73420;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      __44__SYOutgoingBatchSyncSession__installTimers__block_invoke_cold_2(v5, buf, v3);
    }

    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
    [(os_activity_t *)v2 setError:v6];

    [(os_activity_t *)v2 setState:5];
    os_activity_scope_leave(&v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setMessageTimerForSeqno:(unint64_t)seqno
{
  [(SYSession *)self perMessageTimeout];
  if (v5 != 0.0)
  {
    timers = self->_timers;
    v7 = MEMORY[0x1E695DF00];
    [(SYSession *)self perMessageTimeout];
    v8 = [v7 dateWithTimeIntervalSinceNow:?];
    [(_SYMessageTimerTable *)timers addTimerWithFireDate:v8 forSequenceNumber:seqno];
  }
}

- (void)_installStateListener
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(SYSession *)self queue];
  v5 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, queue2);
  stateUpdateSource = self->_stateUpdateSource;
  self->_stateUpdateSource = v5;

  objc_initWeak(&location, self);
  v7 = self->_stateUpdateSource;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SYOutgoingBatchSyncSession__installStateListener__block_invoke;
  v8[3] = &unk_1E86CA190;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__SYOutgoingBatchSyncSession__installStateListener__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processNextState];
    WeakRetained = v2;
  }
}

- (void)start:(id)start
{
  v43[1] = *MEMORY[0x1E69E9840];
  startCopy = start;
  delegate = [(SYSession *)self delegate];

  if (delegate)
  {
    serializer = [(SYSession *)self serializer];
    if (objc_opt_respondsToSelector())
    {
    }

    else
    {
      serializer2 = [(SYSession *)self serializer];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40[0] = @"SYDelegateProtocolName";
        v20 = NSStringFromProtocol(&unk_1F5AE3E50);
        v40[1] = @"SYDelegateMethodNames";
        v41[0] = v20;
        v21 = NSStringFromSelector(sel_encodeSYChangeForBackwardCompatibility_protocolVersion_);
        v39[0] = v21;
        v22 = NSStringFromSelector(sel_dataWithSYObject_);
        v39[1] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
        v41[1] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
        v25 = [v19 initWithSYError:2020 userInfo:v24];

        queue = [(SYSession *)self queue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __36__SYOutgoingBatchSyncSession_start___block_invoke_2;
        v31[3] = &unk_1E86C9E90;
        v31[4] = self;
        v32 = v25;
        v27 = v25;
        dispatch_async(queue, v31);

        startCopy[2](startCopy, 0, v27);
        goto LABEL_12;
      }
    }

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(self->_sessionActivity, &state);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      identifier = [(SYSession *)self identifier];
      *buf = 138543618;
      v36 = v16;
      v37 = 2114;
      v38 = identifier;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    queue2 = [(SYSession *)self queue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __36__SYOutgoingBatchSyncSession_start___block_invoke_88;
    v29[3] = &unk_1E86C9FB0;
    v29[4] = self;
    dispatch_async(queue2, v29);

    os_activity_scope_leave(&state);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = *MEMORY[0x1E696A578];
    v43[0] = @"You cannot start an SYSession without a delegate.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v9 = [v7 initWithSYError:2001 userInfo:v8];

    queue3 = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__SYOutgoingBatchSyncSession_start___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v34 = v9;
    v11 = v9;
    dispatch_async(queue3, block);

    startCopy[2](startCopy, 0, v11);
  }

LABEL_12:

  v28 = *MEMORY[0x1E69E9840];
}

void __36__SYOutgoingBatchSyncSession_start___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifySessionComplete];
  os_activity_scope_leave(&v2);
}

void __36__SYOutgoingBatchSyncSession_start___block_invoke_2(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 264), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifySessionComplete];
  os_activity_scope_leave(&v2);
}

uint64_t __36__SYOutgoingBatchSyncSession_start___block_invoke_88(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1DF835000, "SYSession (Outgoing)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  v3 = *(a1 + 32);
  v4 = *(v3 + 264);
  *(v3 + 264) = v2;

  [*(a1 + 32) didStartSession];
  [*(a1 + 32) _installStateListener];
  [*(a1 + 32) _installTimers];
  [*(a1 + 32) _setupChangeConcurrency];
  v5 = *(a1 + 32);

  return [v5 _sendSyncStart];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v8);
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"SYErrorDomain"])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != -128)
  {
LABEL_5:
    [(SYSession *)self setError:errorCopy];
    v7 = 5;
    goto LABEL_6;
  }

  v7 = 3;
LABEL_6:
  [(SYOutgoingBatchSyncSession *)self setState:v7];
  os_activity_scope_leave(&v8);
}

- (BOOL)_handleBatchAck:(id)ack error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  ackCopy = ack;
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v16);
  syncID = [ackCopy syncID];
  identifier = [(SYSession *)self identifier];
  v9 = [syncID isEqualToString:identifier];

  if (v9)
  {
    -[NSMutableIndexSet addIndex:](self->_ackedBatchIndices, "addIndex:", [ackCopy chunkIndex]);
    [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore signal];
    if ([ackCopy hasError])
    {
      v10 = MEMORY[0x1E696ABC0];
      error = [ackCopy error];
      v12 = [v10 errorFromSYErrorInfo:error];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Received an error SYBatchChunkAck: %@", buf, 0xCu);
      }

      [(SYSession *)self setError:v12];
      [(SYOutgoingBatchSyncSession *)self setState:5];
    }
  }

  else if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
  }

  os_activity_scope_leave(&v16);

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_handleBatchSyncEndResponse:(id)response error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v19);
  syncID = [responseCopy syncID];
  identifier = [(SYSession *)self identifier];
  v9 = [syncID isEqualToString:identifier];

  if (v9)
  {
    if ([responseCopy hasError])
    {
      v10 = MEMORY[0x1E696ABC0];
      error = [responseCopy error];
      v12 = [v10 errorFromSYErrorInfo:error];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Received an error SYSyncEndResponse: %@", buf, 0xCu);
      }

      [(SYSession *)self setError:v12];
      [(SYOutgoingBatchSyncSession *)self setState:5];
    }

    else
    {
      if ([(NSMutableIndexSet *)self->_ackedBatchIndices countOfIndexesInRange:0, self->_batchIndex]== self->_batchIndex)
      {
        v14 = 9;
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v15 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
        {
          [(SYOutgoingBatchSyncSession *)&self->_batchIndex _handleBatchSyncEndResponse:v15 error:?];
        }

        v16 = [MEMORY[0x1E696ABC0] errorWithSYError:2012 userInfo:0];
        [(SYSession *)self setError:v16];

        v14 = 5;
      }

      [(SYOutgoingBatchSyncSession *)self setState:v14];
    }
  }

  else if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
  }

  os_activity_scope_leave(&v19);

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_messageExpiredWithSeqno:(os_log_t)log identifier:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Send timed out for message with sequence number %llu, identifier %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __44__SYOutgoingBatchSyncSession__installTimers__block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "%{public}@ session timeout expired", buf, 0xCu);
}

- (void)_handleBatchSyncEndResponse:(os_log_t)log error:.cold.2(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109378;
  v6[1] = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Some sync batches were not acked. We sent {0-%u}, acked %{public}@", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end