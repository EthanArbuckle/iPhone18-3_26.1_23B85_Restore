@interface LACUserInterfaceRemoteUIAdapter
- (LACUserInterfaceRemoteUIAdapter)initWithConnectionProvider:(id)provider replyQueue:(id)queue;
- (void)_activateConnectionForRequest:(id)request;
- (void)_finishWithError:(id)error;
- (void)connectionDidActivate:(id)activate;
- (void)connectionDidInterrupt:(id)interrupt;
- (void)connectionDidInvalidate:(id)invalidate;
- (void)dealloc;
- (void)processRequest:(id)request completion:(id)completion;
- (void)terminateWithReason:(id)reason;
- (void)uiDismissedForRequest:(id)request error:(id)error;
@end

@implementation LACUserInterfaceRemoteUIAdapter

- (LACUserInterfaceRemoteUIAdapter)initWithConnectionProvider:(id)provider replyQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACUserInterfaceRemoteUIAdapter;
  v9 = [(LACUserInterfaceRemoteUIAdapter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionProvider, provider);
    objc_storeStrong(&v10->_replyQueue, queue);
  }

  return v10;
}

- (void)dealloc
{
  if (self->_handler)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ deallocated", self];
    v4 = [LACError errorWithCode:-1000 debugDescription:v3];
    [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:v4];
  }

  v5.receiver = self;
  v5.super_class = LACUserInterfaceRemoteUIAdapter;
  [(LACUserInterfaceRemoteUIAdapter *)&v5 dealloc];
}

- (void)processRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (self->_handler)
  {
    remoteObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ instance is already in use", self];
    v9 = [LACError errorWithCode:-1000 debugDescription:remoteObject];
    [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:v9];
  }

  else
  {
    [(LACUserInterfaceRemoteUIAdapter *)self _activateConnectionForRequest:requestCopy];
    v10 = _Block_copy(completionCopy);
    handler = self->_handler;
    self->_handler = v10;

    remoteObject = [(LACXPCConnection *)self->_connection remoteObject];
    if (remoteObject)
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__LACUserInterfaceRemoteUIAdapter_processRequest_completion___block_invoke;
      v13[3] = &unk_1E7A97238;
      objc_copyWeak(&v14, &location);
      [remoteObject showUIForRequest:requestCopy completion:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ unable to establish connection to UI", self];
    v12 = [LACError errorWithCode:-1000 debugDescription:v9];
    [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:v12];
  }

LABEL_6:
}

void __61__LACUserInterfaceRemoteUIAdapter_processRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Did show UI with error: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v3 && WeakRetained)
  {
    [WeakRetained _finishWithError:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)terminateWithReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2114;
    v10 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%@ terminating with reason: %{public}@", &v7, 0x16u);
  }

  [(LACXPCConnection *)self->_connection invalidate];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)uiDismissedForRequest:(id)request error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = LACLogUI();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%@ UI dismissed with error: %{public}@", &v8, 0x16u);
  }

  [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:errorCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidActivate:(id)activate
{
  v8 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = activateCopy;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "%@ Activated", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidInterrupt:(id)interrupt
{
  v10 = *MEMORY[0x1E69E9840];
  interruptCopy = interrupt;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = interruptCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%@ Interrupted", &v8, 0xCu);
  }

  v6 = [LACError errorWithCode:-1000 debugDescription:@"Connection to UI was interrupted"];
  [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidInvalidate:(id)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = invalidateCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%@ Invalidated", &v8, 0xCu);
  }

  v6 = [LACError errorWithCode:-1000 debugDescription:@"Connection to UI was invalidated"];
  [(LACUserInterfaceRemoteUIAdapter *)self _finishWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_activateConnectionForRequest:(id)request
{
  v4 = [(LACUserInterfaceConnectionProviding *)self->_connectionProvider makeConnectionForRequest:request withExportedObject:self];
  connection = self->_connection;
  self->_connection = v4;

  [(LACXPCConnection *)self->_connection setDelegate:self];
  v6 = self->_connection;

  [(LACXPCConnection *)v6 activate];
}

- (void)_finishWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handler = self->_handler;
  v6 = LACLogUI();
  v7 = v6;
  if (handler)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v22 = 2114;
      v23 = errorCopy;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%@ finishing with error: %{public}@", buf, 0x16u);
    }

    v8 = [self->_handler copy];
    v9 = self->_handler;
    self->_handler = 0;

    connection = self->_connection;
    self->_connection = 0;
    v11 = connection;

    replyQueue = self->_replyQueue;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__LACUserInterfaceRemoteUIAdapter__finishWithError___block_invoke;
    v17 = &unk_1E7A95798;
    v19 = v8;
    v18 = errorCopy;
    v7 = v8;
    dispatch_async(replyQueue, &v14);
    [(LACXPCConnection *)v11 invalidate:v14];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(LACUserInterfaceRemoteUIAdapter *)errorCopy _finishWithError:v7];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_finishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "Ignoring redundant finish request (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end