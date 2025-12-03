@interface SYIncomingSyncAllObjectsSession
- (SYIncomingSyncAllObjectsSession)initWithService:(id)service message:(id)message completion:(id)completion;
- (void)_continueProcessing;
- (void)_sendEndSessionResponse:(id)response;
@end

@implementation SYIncomingSyncAllObjectsSession

- (SYIncomingSyncAllObjectsSession)initWithService:(id)service message:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = SYIncomingSyncAllObjectsSession;
  v10 = [(SYIncomingFullSyncSession *)&v19 initWithService:service];
  if (v10)
  {
    allObjects = [messageCopy allObjects];
    allObjectsAsData = v10->_allObjectsAsData;
    v10->_allObjectsAsData = allObjects;

    v13 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v13;

    header = [messageCopy header];
    [header timestamp];
    [(SYSession *)v10 setBirthDate:?];

    syncID = [messageCopy syncID];
    [(SYSession *)v10 setIdentifier:syncID];

    v17 = v10;
  }

  return v10;
}

- (void)_sendEndSessionResponse:(id)response
{
  completion = self->_completion;
  responseCopy = response;
  wrappedUserContext = [(SYSession *)self wrappedUserContext];
  completion[2](completion, responseCopy, wrappedUserContext);
}

- (void)_continueProcessing
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_fault_impl(&dword_1DF835000, log, OS_LOG_TYPE_FAULT, "Unable to create an _SYLazyChangeArray object for %{public}@", buf, 0xCu);
}

void __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke(uint64_t a1)
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
  v8 = __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_3;
  v9 = &unk_1E86C9E68;
  v10 = v4;
  [v3 syncSession:? applyChanges:? completion:?];
}

void __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = [*(a1 + 32) sessionActivity];
  os_activity_scope_enter(v6, &state);

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_3_cold_2(a2, v7);
  }

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_6;
  block[3] = &unk_1E86C9E40;
  v14 = a2;
  v9 = *(a1 + 32);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);

  os_activity_scope_leave(&state);
}

uint64_t __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_6(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v13 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = _SYObfuscate(v14);
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Client failed to process incoming SyncAllObjects, returning error: %{public}@", &v21, 0xCu);
    }

    [*(a1 + 40) setError:*(a1 + 32)];
    goto LABEL_15;
  }

  if ([*(a1 + 40) state] == 12)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 error];
      v6 = _SYObfuscate(v5);
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Error occurred while waiting for SyncAllObjects ingestion, will set error state: %{public}@", &v21, 0xCu);
    }

    v7 = [*(a1 + 40) error];
    v8 = [v7 domain];
    if ([v8 isEqualToString:@"SYErrorDomain"])
    {
      v9 = [*(a1 + 40) error];
      v10 = [v9 code];

      if (v10 == -128)
      {
        v11 = *(a1 + 40);
        v12 = 3;
LABEL_16:
        result = [v11 setState:v12];
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    else
    {
    }

LABEL_15:
    v11 = *(a1 + 40);
    v12 = 5;
    goto LABEL_16;
  }

  v19 = *(a1 + 40);
  v20 = *MEMORY[0x1E69E9840];

  return [v19 setState:9];
}

void __54__SYIncomingSyncAllObjectsSession__continueProcessing__block_invoke_3_cold_2(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = "NO";
  if (a1)
  {
    v2 = "YES";
  }

  v4 = 136315138;
  v5 = v2;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "Delegate callout complete: -syncSession:applyChanges:completion:, v1 allObjects, success = %s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end