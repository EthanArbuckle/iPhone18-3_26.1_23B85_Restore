@interface SYOutgoingSyncAllObjectsSession
- (BOOL)_handleBatchSyncEndResponse:(id)a3 error:(id *)a4;
- (SYOutgoingSyncAllObjectsSession)initWithService:(id)a3;
- (double)remainingSessionTime;
- (unsigned)state;
- (void)_fetchChanges;
- (void)_installStateListener;
- (void)_installTimers;
- (void)_processNextState;
- (void)_sendChanges;
- (void)_sessionCompleteWithError:(id)a3;
- (void)_sessionFailed;
- (void)_setStateQuietly:(unsigned int)a3;
- (void)cancelWithError:(id)a3;
- (void)setState:(unsigned int)a3;
- (void)start:(id)a3;
@end

@implementation SYOutgoingSyncAllObjectsSession

- (SYOutgoingSyncAllObjectsSession)initWithService:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SYOutgoingSyncAllObjectsSession;
  v5 = [(SYSession *)&v16 initWithService:v4];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    v7 = [v4 serviceActivity];
    v8 = _os_activity_create(&dword_1DF835000, "SYSession (v1 Outgoing AllObjects)", v7, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v6->_sessionActivity;
    v6->_sessionActivity = v8;

    v10 = objc_opt_new();
    changesToSend = v6->_changesToSend;
    v6->_changesToSend = v10;

    v12 = objc_opt_new();
    v13 = [v12 UUIDString];
    [(SYSession *)v6 setIdentifier:v13];

    v14 = v6;
  }

  return v6;
}

- (unsigned)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (void)setState:(unsigned int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
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
    v12 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state to %{companionsync:SYSessionState}d", &v9, 0x12u);
  }

  v4->_state = a3;
  dispatch_source_merge_data(v4->_stateUpdateSource, 1uLL);
  objc_sync_exit(v4);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setStateQuietly:(unsigned int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
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
    v12 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state (quietly) to %{companionsync:SYSessionState}d", &v9, 0x12u);
  }

  v4->_state = a3;
  objc_sync_exit(v4);

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

- (void)_fetchChanges
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__SYOutgoingSyncAllObjectsSession__fetchChanges__block_invoke;
  v22[3] = &unk_1E86CA6B0;
  v22[4] = self;
  v4 = MEMORY[0x1E12E11B0](v22);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SYOutgoingSyncAllObjectsSession__fetchChanges__block_invoke_67;
  block[3] = &unk_1E86CA280;
  v10 = &v12;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  v11 = &v16;
  dispatch_sync(v5, block);

  v7 = *(v13 + 6);
  if (v7 == 2)
  {
    [(SYOutgoingSyncAllObjectsSession *)self _sendChanges];
  }

  else
  {
    if (v7 == 5)
    {
      [(SYSession *)self setError:v17[5]];
      self->_errorIsLocal = 1;
      v7 = *(v13 + 6);
    }

    [(SYOutgoingSyncAllObjectsSession *)self setState:v7];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

uint64_t __48__SYOutgoingSyncAllObjectsSession__fetchChanges__block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &state);
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
      v12 = 0;
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) serializer];
    v8 = [v7 dataWithSYObject:v3];
  }

  v11 = v8;

  [*(*(a1 + 32) + 248) addObject:v11];
  v12 = 1;
LABEL_7:

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

void __48__SYOutgoingSyncAllObjectsSession__fetchChanges__block_invoke_67(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v14 = v1;
    v15 = v2;
    v4 = 0;
    do
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v5 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_INFO, "Delegate: -syncSession:enqueueChanges:error:", buf, 2u);
      }

      v6 = [*(a1 + 32) delegate];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = v4;
      v9 = [v6 syncSession:v7 enqueueChanges:v8 error:&v12];
      v10 = v12;
      v11 = v12;

      *(*(*(a1 + 48) + 8) + 24) = v9;
      if (v11)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
      }

      v4 = v11;
    }

    while (*(*(*(a1 + 48) + 8) + 24) == 1);
  }
}

- (void)_sendChanges
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v5 = [(SYSession *)self service];
  v6 = [v5 _newMessageHeader];
  [v4 setHeader:v6];

  v7 = [(SYSession *)self identifier];
  [v4 setSyncID:v7];

  v8 = [(NSMutableArray *)self->_changesToSend copy];
  [v4 setAllObjects:v8];

  [(SYOutgoingSyncAllObjectsSession *)self setState:8];
  v9 = [v5 syncEngine];
  v10 = [(SYSession *)self priority];
  v11 = [(SYSession *)self combinedEngineOptions:0];
  v12 = [(SYSession *)self wrappedUserContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SYOutgoingSyncAllObjectsSession__sendChanges__block_invoke;
  v13[3] = &unk_1E86CA320;
  v13[4] = self;
  [v9 enqueueSyncRequest:v4 withMessageID:2 priority:v10 options:v11 userContext:v12 callback:v13];
}

void __47__SYOutgoingSyncAllObjectsSession__sendChanges__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v11);
  v9 = *(a1 + 32);
  if (!a2)
  {
    [v9 setError:v8];
    *(*(a1 + 32) + 220) = 1;
    v10 = 5;
    goto LABEL_5;
  }

  if ([v9 state] == 8)
  {
    v10 = 7;
LABEL_5:
    [*(a1 + 32) setState:v10];
  }

  os_activity_scope_leave(&v11);
}

- (void)_sessionFailed
{
  v3 = [(SYSession *)self error];
  v4 = v3;
  if (self->_cancelled)
  {
    v6 = v3;
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];

    v4 = v5;
  }

  v7 = v4;
  [(SYOutgoingSyncAllObjectsSession *)self _sessionCompleteWithError:v4];
}

- (void)_sessionCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v5);

  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    dispatch_source_cancel(sessionTimer);
    v7 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  v8 = [(SYSession *)self targetQueue];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __61__SYOutgoingSyncAllObjectsSession__sessionCompleteWithError___block_invoke;
  v14 = &unk_1E86C9E90;
  v15 = self;
  v16 = v4;
  v9 = v4;
  dispatch_sync(v8, &v11);

  v10 = [(SYSession *)self service:v11];
  [v10 sessionDidEnd:self withError:v9];

  [(SYSession *)self didCompleteSession];
}

void __61__SYOutgoingSyncAllObjectsSession__sessionCompleteWithError___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:didEndWithError:", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 syncSession:*(a1 + 32) didEndWithError:*(a1 + 40)];
}

- (void)_processNextState
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v10);
  v4 = [(SYOutgoingSyncAllObjectsSession *)self state];
  if (v4 > 4)
  {
    if (v4 == 5)
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
        v8 = [(SYSession *)self error];
        *buf = 138543618;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ entered error state. Error = %@", buf, 0x16u);
      }
    }

    else if (v4 != 9)
    {
      goto LABEL_15;
    }

    [(SYOutgoingSyncAllObjectsSession *)self _sessionCompleteWithError:0];
  }

  else if (v4 == 1)
  {
    [(SYOutgoingSyncAllObjectsSession *)self _fetchChanges];
  }

  else if (v4 == 3)
  {
    self->_cancelled = 1;
    [(SYOutgoingSyncAllObjectsSession *)self _sessionFailed];
  }

LABEL_15:
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_installTimers
{
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __49__SYOutgoingSyncAllObjectsSession__installTimers__block_invoke;
  v14 = &unk_1E86CA190;
  objc_copyWeak(&v15, &location);
  v3 = MEMORY[0x1E12E11B0](&v11);
  self->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  [(SYSession *)self fullSessionTimeout:v11];
  if (v4 != 0.0)
  {
    v5 = [(SYSession *)self queue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
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

void __49__SYOutgoingSyncAllObjectsSession__installTimers__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(WeakRetained[26], &v8);
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
  v7[2] = __56__SYOutgoingSyncAllObjectsSession__installStateListener__block_invoke;
  v7[3] = &unk_1E86CA190;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__SYOutgoingSyncAllObjectsSession__installStateListener__block_invoke(uint64_t a1)
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
        v31[2] = __41__SYOutgoingSyncAllObjectsSession_start___block_invoke_2;
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
    v29[2] = __41__SYOutgoingSyncAllObjectsSession_start___block_invoke_74;
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
    block[2] = __41__SYOutgoingSyncAllObjectsSession_start___block_invoke;
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

void __41__SYOutgoingSyncAllObjectsSession_start___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _sessionFailed];
  os_activity_scope_leave(&v2);
}

void __41__SYOutgoingSyncAllObjectsSession_start___block_invoke_2(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _sessionFailed];
  os_activity_scope_leave(&v2);
}

uint64_t __41__SYOutgoingSyncAllObjectsSession_start___block_invoke_74(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1DF835000, "SYSession (Outgoing)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;

  [*(a1 + 32) didStartSession];
  [*(a1 + 32) _installStateListener];
  [*(a1 + 32) _installTimers];
  v5 = *(a1 + 32);

  return [v5 setState:1];
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v8);
  v5 = [v4 domain];
  if (![v5 isEqualToString:@"SYErrorDomain"])
  {

    goto LABEL_5;
  }

  v6 = [v4 code];

  if (v6 != -128)
  {
LABEL_5:
    [(SYSession *)self setError:v4];
    v7 = 5;
    goto LABEL_6;
  }

  v7 = 3;
LABEL_6:
  [(SYOutgoingSyncAllObjectsSession *)self setState:v7];
  os_activity_scope_leave(&v8);
}

- (BOOL)_handleBatchSyncEndResponse:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v16);
  v7 = [v6 syncID];
  v8 = [(SYSession *)self identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if ([v6 hasError])
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = [v6 error];
      v12 = [v10 errorFromSYErrorInfo:v11];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Received an error SYSyncEndResponse: %@", buf, 0xCu);
      }

      [(SYSession *)self setError:v12];
      [(SYOutgoingSyncAllObjectsSession *)self setState:5];
    }

    else
    {
      [(SYOutgoingSyncAllObjectsSession *)self setState:9];
    }
  }

  else if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
  }

  os_activity_scope_leave(&v16);

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

@end