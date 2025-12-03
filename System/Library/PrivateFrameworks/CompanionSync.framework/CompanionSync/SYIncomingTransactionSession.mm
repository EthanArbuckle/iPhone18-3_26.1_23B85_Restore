@interface SYIncomingTransactionSession
- (SYIncomingTransactionSession)initWithService:(id)service transaction:(id)transaction completion:(id)completion;
- (void)_sendCancelled;
- (void)_sendChanges;
- (void)_sendComplete;
- (void)cancelWithError:(id)error;
- (void)didCompleteSession;
- (void)start:(id)start;
@end

@implementation SYIncomingTransactionSession

- (SYIncomingTransactionSession)initWithService:(id)service transaction:(id)transaction completion:(id)completion
{
  serviceCopy = service;
  transactionCopy = transaction;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = SYIncomingTransactionSession;
  v11 = [(SYSession *)&v20 initWithService:serviceCopy];
  if (v11)
  {
    header = [transactionCopy header];
    [header timestamp];
    [(SYSession *)v11 setBirthDate:?];

    objc_storeStrong(&v11->_message, transaction);
    v13 = [completionCopy copy];
    completion = v11->_completion;
    v11->_completion = v13;

    serviceActivity = [serviceCopy serviceActivity];
    v16 = _os_activity_create(&dword_1DF835000, "SYSession (v1 Delta Sync, Incoming)", serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v11->_sessionActivity;
    v11->_sessionActivity = v16;

    v18 = v11;
  }

  return v11;
}

- (void)_sendComplete
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  targetQueue = [(SYSession *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SYIncomingTransactionSession__sendComplete__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(targetQueue, block);

  service = [(SYSession *)self service];
  error = [(SYSession *)self error];
  [service sessionDidEnd:self withError:error];

  [(SYIncomingTransactionSession *)self didCompleteSession];
}

void __45__SYIncomingTransactionSession__sendComplete__block_invoke(uint64_t a1)
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

- (void)_sendCancelled
{
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  targetQueue = [(SYSession *)self targetQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __46__SYIncomingTransactionSession__sendCancelled__block_invoke;
  v11 = &unk_1E86C9E90;
  selfCopy = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(targetQueue, &v8);

  v7 = [(SYSession *)self service:v8];
  [v7 sessionDidEnd:self withError:v6];

  [(SYIncomingTransactionSession *)self didCompleteSession];
}

void __46__SYIncomingTransactionSession__sendCancelled__block_invoke(uint64_t a1)
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

- (void)_sendChanges
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DF835000, selfCopy, OS_LOG_TYPE_ERROR, "Unable to create an _SYLazyChangeArray object for %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __44__SYIncomingTransactionSession__sendChanges__block_invoke(uint64_t a1)
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
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__SYIncomingTransactionSession__sendChanges__block_invoke_2;
  v9 = &unk_1E86C9E68;
  v10 = v4;
  [v3 syncSession:? applyChanges:? completion:?];
}

void __44__SYIncomingTransactionSession__sendChanges__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v6 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __44__SYIncomingTransactionSession__sendChanges__block_invoke_2_cold_2(a2, v6);
  }

  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SYIncomingTransactionSession__sendChanges__block_invoke_5;
  block[3] = &unk_1E86C9E40;
  v8 = *(a1 + 32);
  v12 = a2;
  block[4] = v8;
  v11 = v5;
  v9 = v5;
  dispatch_async(v7, block);

  os_activity_scope_leave(&state);
}

void __44__SYIncomingTransactionSession__sendChanges__block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 208), &v13);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = _SYObfuscate(*(a1 + 40));
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Client failed to process incoming SYChangeMessage, returning error: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) setError:*(a1 + 40)];
    goto LABEL_15;
  }

  if ([*(a1 + 32) state] != 12)
  {
    v9 = 9;
    goto LABEL_17;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) error];
    v4 = _SYObfuscate(v3);
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "An error occurred while client was processing: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) error];
  v6 = [v5 domain];
  if (([v6 isEqualToString:@"SYErrorDomain"] & 1) == 0)
  {

    goto LABEL_15;
  }

  v7 = [*(a1 + 32) error];
  v8 = [v7 code] == -128;

  if (!v8)
  {
LABEL_15:
    v9 = 5;
    goto LABEL_17;
  }

  v9 = 3;
LABEL_17:
  [*(a1 + 32) setState:v9];
  [*(a1 + 32) _sendComplete];
  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)start:(id)start
{
  startCopy = start;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  [(SYSession *)self didStartSession];
  queue = [(SYSession *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SYIncomingTransactionSession_start___block_invoke;
  v7[3] = &unk_1E86CA388;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(queue, v7);

  os_activity_scope_leave(&state);
}

void __38__SYIncomingTransactionSession_start___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) didStartSession];
  v2 = *(a1 + 32);
  if (v2[27] && v2[28])
  {
    v3 = [v2 serializer];
    if (objc_opt_respondsToSelector())
    {
    }

    else
    {
      v5 = [*(a1 + 32) serializer];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32[0] = @"SYDelegateProtocolName";
        v18 = NSStringFromProtocol(&unk_1F5AE3E50);
        v33[0] = v18;
        v32[1] = @"SYDelegateMethodNames";
        v19 = NSStringFromSelector(sel_decodeChangeData_fromProtocolVersion_ofType_);
        v31[0] = v19;
        v20 = NSStringFromSelector(sel_SYObjectWithData_);
        v31[1] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v33[1] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v23 = [v17 initWithSYError:2020 userInfo:v22];

        (*(*(a1 + 40) + 16))();
        [*(a1 + 32) setError:v23];
        [*(a1 + 32) _sendComplete];

LABEL_15:
        v24 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    v13 = _os_activity_create(&dword_1DF835000, "SYSession (v1 Delta Sync, Incoming)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
    v14 = *(a1 + 32);
    v15 = *(v14 + 208);
    *(v14 + 208) = v13;

    (*(*(a1 + 40) + 16))();
    v16 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SYIncomingTransactionSession_start___block_invoke_71;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    dispatch_async(v16, block);

    goto LABEL_15;
  }

  v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2013 userInfo:0];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setError:v25];
  [*(a1 + 32) _sendComplete];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  if ([(SYIncomingTransactionSession *)self state]!= 11)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"SYErrorDomain"])
    {
      code = [errorCopy code];

      if (code == -128)
      {
        [(SYIncomingTransactionSession *)self setState:3];
        queue = [(SYSession *)self queue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __48__SYIncomingTransactionSession_cancelWithError___block_invoke;
        v10[3] = &unk_1E86C9FB0;
        v10[4] = self;
        v8 = v10;
LABEL_8:
        dispatch_async(queue, v8);

        goto LABEL_9;
      }
    }

    else
    {
    }

    [(SYSession *)self setError:errorCopy];
    [(SYIncomingTransactionSession *)self setState:5];
    queue = [(SYSession *)self queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__SYIncomingTransactionSession_cancelWithError___block_invoke_2;
    v9[3] = &unk_1E86C9FB0;
    v9[4] = self;
    v8 = v9;
    goto LABEL_8;
  }

  [(SYIncomingTransactionSession *)self setState:12];
  [(SYSession *)self setError:errorCopy];
LABEL_9:
  os_activity_scope_leave(&state);
}

- (void)didCompleteSession
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  v5.receiver = self;
  v5.super_class = SYIncomingTransactionSession;
  [(SYSession *)&v5 didCompleteSession];
  completion = self->_completion;
  if (completion)
  {
    wrappedUserContext = [(SYSession *)self wrappedUserContext];
    completion[2](completion, 0, wrappedUserContext);
  }

  os_activity_scope_leave(&state);
}

void __44__SYIncomingTransactionSession__sendChanges__block_invoke_2_cold_2(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = "NO";
  if (a1)
  {
    v2 = "YES";
  }

  v4 = 136315138;
  v5 = v2;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "Delegate callout complete: -syncSession:applyChanges:completion:, v1 transaction, success = %s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end