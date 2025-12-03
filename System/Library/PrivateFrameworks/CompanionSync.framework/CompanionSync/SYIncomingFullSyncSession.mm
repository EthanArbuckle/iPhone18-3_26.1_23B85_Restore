@interface SYIncomingFullSyncSession
- (SYIncomingFullSyncSession)initWithService:(id)service;
- (void)_cancelSession;
- (void)_continueProcessing;
- (void)_handleBatchChunk:(id)chunk completion:(id)completion;
- (void)_handleEndSync:(id)sync completion:(id)completion;
- (void)_installStateListener;
- (void)_notifyErrorAndShutdown;
- (void)_processNextState;
- (void)_sendEndSessionResponse:(id)response;
- (void)_sessionComplete;
- (void)_sessionEnded;
- (void)_setStateQuietly:(unsigned int)quietly;
- (void)cancelWithError:(id)error;
- (void)setState:(unsigned int)state;
- (void)start:(id)start;
@end

@implementation SYIncomingFullSyncSession

- (SYIncomingFullSyncSession)initWithService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = SYIncomingFullSyncSession;
  v5 = [(SYSession *)&v12 initWithService:serviceCopy];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    serviceActivity = [serviceCopy serviceActivity];
    v8 = _os_activity_create(&dword_1DF835000, "SYSession (v1 Full Sync, Incoming)", serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v6->_sessionActivity;
    v6->_sessionActivity = v8;

    [(SYIncomingFullSyncSession *)v6 _installStateListener];
    v10 = v6;
  }

  return v6;
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

- (void)_sessionEnded
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  targetQueue = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SYIncomingFullSyncSession__sessionEnded__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(targetQueue, block);

  service = [(SYSession *)self service];
  error = [(SYSession *)self error];
  [service sessionDidEnd:self withError:error];

  [(SYSession *)self didCompleteSession];
}

void __42__SYIncomingFullSyncSession__sessionEnded__block_invoke(uint64_t a1)
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

- (void)_cancelSession
{
  v9 = objc_opt_new();
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];
  [v9 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v9 setSyncID:identifier];

  v6 = [SYErrorInfo alloc];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  v8 = [(SYErrorInfo *)v6 initWithError:v7];
  [v9 setError:v8];

  [v9 setErrorResolution:0];
  [(SYIncomingFullSyncSession *)self _sendEndSessionResponse:v9];
  [(SYIncomingFullSyncSession *)self _sessionEnded];
}

- (void)_notifyErrorAndShutdown
{
  v9 = objc_opt_new();
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];
  [v9 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v9 setSyncID:identifier];

  v6 = [SYErrorInfo alloc];
  error = [(SYSession *)self error];
  v8 = [(SYErrorInfo *)v6 initWithError:error];
  [v9 setError:v8];

  [v9 setErrorResolution:1];
  [(SYIncomingFullSyncSession *)self _sendEndSessionResponse:v9];
  [(SYIncomingFullSyncSession *)self _sessionEnded];
}

- (void)_sessionComplete
{
  v6 = objc_opt_new();
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];
  [v6 setHeader:_newMessageHeader];

  identifier = [(SYSession *)self identifier];
  [v6 setSyncID:identifier];

  [(SYIncomingFullSyncSession *)self _sendEndSessionResponse:v6];
  [(SYIncomingFullSyncSession *)self _sessionEnded];
}

- (void)_processNextState
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v5);
  state = [(SYIncomingFullSyncSession *)self state];
  if (state > 4)
  {
    if (state == 5)
    {
      [(SYIncomingFullSyncSession *)self _notifyErrorAndShutdown];
    }

    else if (state == 9)
    {
      [(SYIncomingFullSyncSession *)self _sessionComplete];
    }
  }

  else if (state == 1)
  {
    [(SYIncomingFullSyncSession *)self _continueProcessing];
  }

  else if (state == 3)
  {
    [(SYIncomingFullSyncSession *)self _cancelSession];
  }

  os_activity_scope_leave(&v5);
}

- (void)_installStateListener
{
  queue = [(SYSession *)self queue];
  v4 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, queue);
  stateUpdateSource = self->_stateUpdateSource;
  self->_stateUpdateSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_stateUpdateSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SYIncomingFullSyncSession__installStateListener__block_invoke;
  v7[3] = &unk_1E86CA190;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__SYIncomingFullSyncSession__installStateListener__block_invoke(uint64_t a1)
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
  v44[1] = *MEMORY[0x1E69E9840];
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
        v41[0] = @"SYDelegateProtocolName";
        v20 = NSStringFromProtocol(&unk_1F5AE3E50);
        v41[1] = @"SYDelegateMethodNames";
        v42[0] = v20;
        v21 = NSStringFromSelector(sel_decodeChangeData_fromProtocolVersion_ofType_);
        v40[0] = v21;
        v22 = NSStringFromSelector(sel_SYObjectWithData_);
        v40[1] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        v42[1] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        v25 = [v19 initWithSYError:2020 userInfo:v24];

        queue = [(SYSession *)self queue];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __35__SYIncomingFullSyncSession_start___block_invoke_2;
        v32[3] = &unk_1E86C9E90;
        v32[4] = self;
        v33 = v25;
        v27 = v25;
        dispatch_async(queue, v32);

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
      v37 = v16;
      v38 = 2114;
      v39 = identifier;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    [(SYSession *)self didStartSession];
    queue2 = [(SYSession *)self queue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __35__SYIncomingFullSyncSession_start___block_invoke_71;
    v29[3] = &unk_1E86CA388;
    v29[4] = self;
    v30 = startCopy;
    dispatch_async(queue2, v29);

    os_activity_scope_leave(&state);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v43 = *MEMORY[0x1E696A578];
    v44[0] = @"You cannot start an SYSession without a delegate.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v9 = [v7 initWithSYError:2001 userInfo:v8];

    queue3 = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__SYIncomingFullSyncSession_start___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v35 = v9;
    v11 = v9;
    dispatch_async(queue3, block);

    startCopy[2](startCopy, 0, v11);
  }

LABEL_12:

  v28 = *MEMORY[0x1E69E9840];
}

void __35__SYIncomingFullSyncSession_start___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifyErrorAndShutdown];
  os_activity_scope_leave(&v2);
}

void __35__SYIncomingFullSyncSession_start___block_invoke_2(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v2);
  [*(a1 + 32) setError:*(a1 + 40)];
  [*(a1 + 32) _notifyErrorAndShutdown];
  os_activity_scope_leave(&v2);
}

void __35__SYIncomingFullSyncSession_start___block_invoke_71(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [*(a1 + 32) targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SYIncomingFullSyncSession_start___block_invoke_72;
  block[3] = &unk_1E86CB130;
  block[4] = *(a1 + 32);
  block[5] = &v8;
  block[6] = &v12;
  dispatch_sync(v2, block);

  if (*(v9 + 24))
  {
    [*(a1 + 32) setState:1];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v13[5];
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Delegate didn't reset its store: %@", buf, 0xCu);
    }

    [*(a1 + 32) setError:v13[5]];
    [*(a1 + 32) setState:5];
    [*(a1 + 32) _handleError:v13[5]];
    v5 = v13[5];
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  v6 = *MEMORY[0x1E69E9840];
}

void __35__SYIncomingFullSyncSession_start___block_invoke_72(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:resetDataStoreWithError:", buf, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v8 = 0;
  v5 = [v3 syncSession:v4 resetDataStoreWithError:&v8];
  v6 = v8;
  v7 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v5;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v8);
  if ([(SYIncomingFullSyncSession *)self state]!= 11)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"SYErrorDomain"])
    {
      code = [errorCopy code];

      if (code == -128)
      {
        v5 = 3;
        goto LABEL_8;
      }
    }

    else
    {
    }

    [(SYSession *)self setError:errorCopy];
    v5 = 5;
    goto LABEL_8;
  }

  [(SYSession *)self setError:errorCopy];
  v5 = 12;
LABEL_8:
  [(SYIncomingFullSyncSession *)self setState:v5];
  os_activity_scope_leave(&v8);
}

- (void)_continueProcessing
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_sendEndSessionResponse:(id)response
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_handleBatchChunk:(id)chunk completion:(id)completion
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_handleEndSync:(id)sync completion:(id)completion
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

@end