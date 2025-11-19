@interface SYOutgoingDeltaTransactionSession
- (SYOutgoingDeltaTransactionSession)initWithService:(id)a3;
- (void)_fetchNextBatch;
- (void)_installStateListener;
- (void)_messageExpiredWithSeqno:(unint64_t)a3 identifier:(id)a4;
- (void)_notifySessionComplete;
- (void)_processNextState;
- (void)_sentMessageWithIdentifier:(id)a3 userInfo:(id)a4;
- (void)_setMessageTimerForSeqno:(unint64_t)a3;
- (void)_setStateQuietly:(unsigned int)a3;
- (void)_setupChangeConcurrency;
- (void)_waitForMessageWindow;
- (void)cancelWithError:(id)a3;
- (void)setState:(unsigned int)a3;
- (void)start:(id)a3;
@end

@implementation SYOutgoingDeltaTransactionSession

- (SYOutgoingDeltaTransactionSession)initWithService:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SYOutgoingDeltaTransactionSession;
  v5 = [(SYSession *)&v29 initWithService:v4];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    v7 = [v4 serviceActivity];
    v8 = _os_activity_create(&dword_1DF835000, "SYSession (Outgoing v1 Delta)", v7, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v6->_sessionActivity;
    v6->_sessionActivity = v8;

    objc_initWeak(&location, v6);
    v10 = [_SYMessageTimerTable alloc];
    v11 = [(SYSession *)v6 queue];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __53__SYOutgoingDeltaTransactionSession_initWithService___block_invoke;
    v26 = &unk_1E86CA230;
    objc_copyWeak(&v27, &location);
    v12 = [(_SYMessageTimerTable *)v10 initWithQueue:v11 timerCallback:&v23];
    timers = v6->_timers;
    v6->_timers = v12;

    v14 = [v4 name];
    v15 = [v14 lastPathComponent];
    v16 = [v15 stringByAppendingString:@" Change Enqueuer"];

    v17 = dispatch_queue_create([v16 UTF8String], 0);
    changeFetcherQueue = v6->_changeFetcherQueue;
    v6->_changeFetcherQueue = v17;

    v19 = objc_opt_new();
    v20 = [v19 UUIDString];
    [(SYSession *)v6 setIdentifier:v20];

    v21 = v6;
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __53__SYOutgoingDeltaTransactionSession_initWithService___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _messageExpiredWithSeqno:a2 identifier:v7];
  }
}

- (void)setState:(unsigned int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v11);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v13 = v7;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state to %{companionsync:SYSessionState}d", buf, 0x12u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v8->_state = a3;
  objc_sync_exit(v8);

  stateUpdateSource = v8->_stateUpdateSource;
  if (stateUpdateSource && !dispatch_source_testcancel(v8->_stateUpdateSource))
  {
    dispatch_source_merge_data(stateUpdateSource, 1uLL);
  }

  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setStateQuietly:(unsigned int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v9);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state (quietly) to %{companionsync:SYSessionState}d", buf, 0x12u);
  }

  self->_state = a3;
  os_activity_scope_leave(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupChangeConcurrency
{
  if ([(SYSession *)self maxConcurrentMessages]&& ([(SYSession *)self maxConcurrentMessages]& 0x8000000000000000) == 0)
  {
    v3 = [[_SYCountedSemaphore alloc] initWithCount:[(SYSession *)self maxConcurrentMessages]];
    changeConcurrencySemaphore = self->_changeConcurrencySemaphore;
    self->_changeConcurrencySemaphore = v3;

    v5 = _os_activity_create(&dword_1DF835000, "Change Concurrency Wait", self->_sessionActivity, OS_ACTIVITY_FLAG_DEFAULT);
    changeWaitActivity = self->_changeWaitActivity;
    self->_changeWaitActivity = v5;

    MEMORY[0x1EEE66BB8](v5, changeWaitActivity);
  }
}

- (void)_waitForMessageWindow
{
  if (self->_changeConcurrencySemaphore)
  {
    changeFetcherQueue = self->_changeFetcherQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SYOutgoingDeltaTransactionSession__waitForMessageWindow__block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(changeFetcherQueue, block);
  }

  else
  {

    [(SYOutgoingDeltaTransactionSession *)self _fetchNextBatch];
  }
}

void __58__SYOutgoingDeltaTransactionSession__waitForMessageWindow__block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 248), &state);
  [*(a1 + 32) perMessageTimeout];
  v3 = v2;
  if (v2 == 0.0)
  {
    v4 = [*(a1 + 32) service];
    [v4 defaultMessageTimeout];
    v3 = v5;
  }

  if ([*(*(a1 + 32) + 240) waitWithTimeout:v3 + v3])
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(*(*(a1 + 32) + 216), &v8);
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SYOutgoingDeltaTransactionSession__waitForMessageWindow__block_invoke_2;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);

    os_activity_scope_leave(&v8);
  }

  os_activity_scope_leave(&state);
}

- (void)_fetchNextBatch
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__SYOutgoingDeltaTransactionSession__fetchNextBatch__block_invoke;
  v24[3] = &unk_1E86CA258;
  v24[4] = self;
  v26 = v27;
  v5 = v4;
  v25 = v5;
  v6 = MEMORY[0x1E12E11B0](v24);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v7 = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SYOutgoingDeltaTransactionSession__fetchNextBatch__block_invoke_8;
  block[3] = &unk_1E86CA280;
  v12 = &v14;
  block[4] = self;
  v8 = v6;
  v11 = v8;
  v13 = &v18;
  dispatch_sync(v7, block);

  v9 = *(v15 + 6);
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      [(SYSession *)self setError:v19[5]];
      v9 = *(v15 + 6);
    }

    [(SYOutgoingDeltaTransactionSession *)self setState:v9];
  }

  else
  {
    [(SYOutgoingDeltaTransactionSession *)self _sendSyncBatch:v5 nextState:?];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(v27, 8);
}

uint64_t __52__SYOutgoingDeltaTransactionSession__fetchNextBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 216), &v9);
  v4 = [*(a1 + 32) serializer];
  v5 = [SYChange changeWithChangeObject:v3 serializer:v4 encodeUsingVersion:1];

  v6 = [v5 data];
  *(*(*(a1 + 48) + 8) + 24) += [v6 length];

  if (*(*(*(a1 + 48) + 8) + 24) >= 0x200000uLL && [*(a1 + 40) count])
  {
    v7 = 0;
  }

  else
  {
    [*(a1 + 40) addObject:v5];
    v7 = 1;
  }

  os_activity_scope_leave(&v9);
  return v7;
}

void __52__SYOutgoingDeltaTransactionSession__fetchNextBatch__block_invoke_8(uint64_t a1)
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

void __62__SYOutgoingDeltaTransactionSession__sendSyncBatch_nextState___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 216), &v10);
  v9 = *(*(a1 + 32) + 256);
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
    [*(a1 + 32) setState:5];
    [*(*(a1 + 32) + 240) signal];
  }

  os_activity_scope_leave(&v10);
}

- (void)_notifySessionComplete
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  stateUpdateSource = self->_stateUpdateSource;
  if (stateUpdateSource)
  {
    dispatch_source_cancel(stateUpdateSource);
  }

  v5 = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SYOutgoingDeltaTransactionSession__notifySessionComplete__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = [(SYSession *)self service];
  v7 = [(SYSession *)self error];
  [v6 sessionDidEnd:self withError:v7];

  [(SYSession *)self didCompleteSession];
}

void __59__SYOutgoingDeltaTransactionSession__notifySessionComplete__block_invoke(uint64_t a1)
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

- (void)_messageExpiredWithSeqno:(unint64_t)a3 identifier:(id)a4
{
  v6 = a4;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    [(SYOutgoingBatchSyncSession *)v6 _messageExpiredWithSeqno:a3 identifier:v7];
  }

  v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
  [(SYSession *)self setError:v8];

  [(SYOutgoingDeltaTransactionSession *)self setState:5];
}

- (void)_processNextState
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v10);
  v4 = self;
  objc_sync_enter(v4);
  state = v4->_state;
  objc_sync_exit(v4);

  if (state <= 3)
  {
    if (state == 1)
    {
      [(SYOutgoingDeltaTransactionSession *)v4 _waitForMessageWindow];
    }

    else if (state == 2)
    {
      [(SYOutgoingDeltaTransactionSession *)v4 setState:9];
    }
  }

  else if (state == 4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
    [(SYSession *)v4 setError:v6];
  }

  else
  {
    if (state == 5)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v7 = qword_1EDE73420;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(SYSession *)v4 error];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "SYSession entered error state. Error = %@", buf, 0xCu);
      }
    }

    else if (state != 9)
    {
      goto LABEL_17;
    }

    [(SYOutgoingDeltaTransactionSession *)v4 _notifySessionComplete];
  }

LABEL_17:
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setMessageTimerForSeqno:(unint64_t)a3
{
  [(SYSession *)self perMessageTimeout];
  if (v5 != 0.0)
  {
    timers = self->_timers;
    v7 = MEMORY[0x1E695DF00];
    [(SYSession *)self perMessageTimeout];
    v8 = [v7 dateWithTimeIntervalSinceNow:?];
    [(_SYMessageTimerTable *)timers addTimerWithFireDate:v8 forSequenceNumber:a3];
  }
}

- (void)_installStateListener
{
  v3 = [(SYSession *)self queue];
  v4 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v3);
  stateUpdateSource = self->_stateUpdateSource;
  self->_stateUpdateSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_stateUpdateSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SYOutgoingDeltaTransactionSession__installStateListener__block_invoke;
  v7[3] = &unk_1E86CA190;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__SYOutgoingDeltaTransactionSession__installStateListener__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processNextState];
    WeakRetained = v2;
  }
}

- (void)start:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SYSession *)self delegate];

  if (v5)
  {
    v6 = [(SYSession *)self serializer];
    if (objc_opt_respondsToSelector())
    {
    }

    else
    {
      v12 = [(SYSession *)self serializer];
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

        v26 = [(SYSession *)self queue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __43__SYOutgoingDeltaTransactionSession_start___block_invoke_2;
        v31[3] = &unk_1E86C9E90;
        v31[4] = self;
        v32 = v25;
        v27 = v25;
        dispatch_async(v26, v31);

        v4[2](v4, 0, v27);
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
      v17 = [(SYSession *)self identifier];
      *buf = 138543618;
      v36 = v16;
      v37 = 2114;
      v38 = v17;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    v18 = [(SYSession *)self queue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __43__SYOutgoingDeltaTransactionSession_start___block_invoke_82;
    v29[3] = &unk_1E86C9FB0;
    v29[4] = self;
    dispatch_async(v18, v29);

    os_activity_scope_leave(&state);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = *MEMORY[0x1E696A578];
    v43[0] = @"You cannot start an SYSession without a delegate.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v9 = [v7 initWithSYError:2001 userInfo:v8];

    v10 = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SYOutgoingDeltaTransactionSession_start___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v34 = v9;
    v11 = v9;
    dispatch_async(v10, block);

    v4[2](v4, 0, v11);
  }

LABEL_12:

  v28 = *MEMORY[0x1E69E9840];
}

void __43__SYOutgoingDeltaTransactionSession_start___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 216), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifySessionComplete];
  os_activity_scope_leave(&v2);
}

void __43__SYOutgoingDeltaTransactionSession_start___block_invoke_2(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 216), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifySessionComplete];
  os_activity_scope_leave(&v2);
}

uint64_t __43__SYOutgoingDeltaTransactionSession_start___block_invoke_82(uint64_t a1)
{
  [*(a1 + 32) didStartSession];
  [*(a1 + 32) _installStateListener];
  [*(a1 + 32) _setupChangeConcurrency];
  v2 = *(a1 + 32);

  return [v2 setState:1];
}

- (void)cancelWithError:(id)a3
{
  v7 = a3;
  v4 = [v7 domain];
  if ([v4 isEqualToString:@"SYErrorDomain"])
  {
    v5 = [v7 code];

    if (v5 == -128)
    {
      self->_cancelled = 1;
      v6 = 3;
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(SYSession *)self setError:v7];
  v6 = 5;
LABEL_6:
  [(SYOutgoingDeltaTransactionSession *)self setState:v6];
}

- (void)_sentMessageWithIdentifier:(id)a3 userInfo:(id)a4
{
  [(_SYMessageTimerTable *)self->_timers cancelTimerForIdentifier:a3, a4];
  if (![(_SYMessageTimerTable *)self->_timers timerCount]&& [(SYOutgoingDeltaTransactionSession *)self state]== 7)
  {

    [(SYOutgoingDeltaTransactionSession *)self setState:9];
  }
}

@end