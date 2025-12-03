@interface CAMOverlayServiceConnection
- (CAMOverlayServiceConnection)initWithClient:(id)client queue:(id)queue;
- (CAMOverlayServiceConnectionClient)client;
- (void)_handleActivatedConnection:(id)connection;
- (void)_handleInterruptedConnection:(id)connection;
- (void)_handleInvalidatedConnection:(id)connection;
- (void)_updateStatusWithReason:(unint64_t)reason;
- (void)applyControlUpdate:(id)update completion:(id)completion;
- (void)configureWithControls:(id)controls initialUpdates:(id)updates completion:(id)completion;
- (void)dealloc;
- (void)didChangeInterfaceReduced:(id)reduced;
- (void)invalidateWithReason:(unint64_t)reason;
- (void)serverDidChangeActiveControlIdentifier:(id)identifier;
- (void)serverDidChangeFocusLocked:(id)locked;
- (void)serverDidChangeOverlayVisible:(id)visible activeControlIdentifier:(id)identifier;
- (void)serverDidUpdateControl:(id)control;
@end

@implementation CAMOverlayServiceConnection

- (CAMOverlayServiceConnection)initWithClient:(id)client queue:(id)queue
{
  clientCopy = client;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = CAMOverlayServiceConnection;
  v8 = [(CAMOverlayServiceConnection *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_client, clientCopy);
    objc_storeStrong(&v9->_clientQueue, queue);
    v9->_status = 0;
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.camera.overlay-connection", v10);
    connectionQueue = v9->__connectionQueue;
    v9->__connectionQueue = v11;

    v13 = +[CAMOverlayServiceSpecification machName];
    v14 = +[CAMOverlayServiceSpecification identifier];
    v15 = [MEMORY[0x277CF3288] endpointForMachName:v13 service:v14 instance:0];
    if (v15)
    {
      v16 = [MEMORY[0x277CF3280] connectionWithEndpoint:v15 clientContextBuilder:&__block_literal_global_1];
      [(CAMOverlayServiceConnection *)v9 _setServerConnection:v16];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_2;
      v20[3] = &unk_278851B70;
      v21 = v13;
      v22 = v9;
      [v16 configureConnection:v20];
      v17 = os_log_create("com.apple.camera.overlay", "Client");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_22E684000, v17, OS_LOG_TYPE_DEFAULT, "Activating new overlay service connection", v19, 2u);
      }

      [v16 activate];
    }

    else
    {
      v16 = os_log_create("com.apple.camera.overlay", "Client");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CAMOverlayServiceConnection *)v13 initWithClient:v14 queue:v16];
      }
    }
  }

  return v9;
}

void __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = a2;
  v6 = [v2 mainBundle];
  v4 = [v6 bundleIdentifier];
  v5 = +[CAMOverlayServiceSpecification identifierKey];
  [v3 encodeObject:v4 forKey:v5];
}

void __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setName:*(a1 + 32)];
  v4 = +[CAMOverlayServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[CAMOverlayServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(*(a1 + 40) + 56)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_3;
  v10[3] = &unk_278851B48;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_4;
  v8[3] = &unk_278851B48;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_5;
  v6[3] = &unk_278851B48;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActivatedConnection:v3];
}

void __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruptedConnection:v3];
}

void __52__CAMOverlayServiceConnection_initWithClient_queue___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidatedConnection:v3];
}

- (void)dealloc
{
  [(BSServiceConnection *)self->__serverConnection invalidate];
  serverConnection = self->__serverConnection;
  self->__serverConnection = 0;

  v4.receiver = self;
  v4.super_class = CAMOverlayServiceConnection;
  [(CAMOverlayServiceConnection *)&v4 dealloc];
}

- (void)_updateStatusWithReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  _serverConnection = [(CAMOverlayServiceConnection *)self _serverConnection];

  if (_serverConnection)
  {
    _serverProxy = [(CAMOverlayServiceConnection *)self _serverProxy];

    v7 = _serverProxy != 0;
    v8 = _serverProxy != 0;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  if (v8 != [(CAMOverlayServiceConnection *)self status])
  {
    v9 = os_log_create("com.apple.camera.overlay", "Client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = off_278851C08[v8];
      if (reason > 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_278851C20[reason];
      }

      v17 = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_22E684000, v9, OS_LOG_TYPE_DEFAULT, "Overlay service connection became %{public}@ for reason %{public}@", &v17, 0x16u);
    }

    [(CAMOverlayServiceConnection *)self _setStatus:v8];
    if (!v7)
    {
      if ([(CAMOverlayServiceConnection *)self _lastKnownFocusLocked])
      {
        client = [(CAMOverlayServiceConnection *)self client];
        [client cameraOverlayConnection:self didChangeFocusLocked:0];
      }

      if ([(CAMOverlayServiceConnection *)self _lastKnownOverlayVisibility])
      {
        client2 = [(CAMOverlayServiceConnection *)self client];
        [client2 cameraOverlayConnection:self didChangeOverlayVisible:0 activeControlIdentifier:0];
      }

      if ([(CAMOverlayServiceConnection *)self _lastKnownOverlayInterfaceReduced])
      {
        client3 = [(CAMOverlayServiceConnection *)self client];
        [client3 cameraOverlayConnection:self didChangeInterfaceReduced:0];
      }
    }

    if (reason != 1)
    {
      client4 = [(CAMOverlayServiceConnection *)self client];
      [client4 cameraOverlayConnection:self didChangeStatus:v8];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithReason:(unint64_t)reason
{
  _serverConnection = [(CAMOverlayServiceConnection *)self _serverConnection];
  [_serverConnection invalidate];

  [(CAMOverlayServiceConnection *)self _setServerConnection:0];
  [(CAMOverlayServiceConnection *)self _setServerProxy:0];

  [(CAMOverlayServiceConnection *)self _updateStatusWithReason:reason];
}

- (void)configureWithControls:(id)controls initialUpdates:(id)updates completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  controlsCopy = controls;
  updatesCopy = updates;
  completionCopy = completion;
  status = [(CAMOverlayServiceConnection *)self status];
  if (status)
  {
    if (status != 2)
    {
      goto LABEL_9;
    }

    v12 = @"InvalidConnection";
    v13 = -2;
  }

  else
  {
    v12 = @"InactiveConnection";
    v13 = -1;
  }

  v14 = MEMORY[0x277CCA9B8];
  v22[0] = *MEMORY[0x277CCA068];
  *v21 = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v22 count:1];
  _serverProxy = [v14 errorWithDomain:@"CAMOverlayErrorDomain" code:v13 userInfo:v15];

  if (_serverProxy)
  {
    v17 = os_log_create("com.apple.camera.overlay", "Client");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CAMOverlayServiceConnection configureWithControls:_serverProxy initialUpdates:v17 completion:?];
    }

    completionCopy[2](completionCopy, _serverProxy);
    goto LABEL_12;
  }

LABEL_9:
  v18 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [controlsCopy count];
    *v21 = 134217984;
    *&v21[4] = v19;
    _os_log_impl(&dword_22E684000, v18, OS_LOG_TYPE_DEFAULT, "Sending overlay %lu control(s)", v21, 0xCu);
  }

  _serverProxy = [(CAMOverlayServiceConnection *)self _serverProxy];
  [_serverProxy clientDidConfigureControls:controlsCopy initialUpdates:updatesCopy reply:completionCopy];
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)applyControlUpdate:(id)update completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  status = [(CAMOverlayServiceConnection *)self status];
  if (status)
  {
    if (status != 2)
    {
      goto LABEL_9;
    }

    v9 = @"InvalidConnection";
    v10 = -2;
  }

  else
  {
    v9 = @"InactiveConnection";
    v10 = -1;
  }

  v11 = MEMORY[0x277CCA9B8];
  v17 = *MEMORY[0x277CCA068];
  v18[0] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  _serverProxy = [v11 errorWithDomain:@"CAMOverlayErrorDomain" code:v10 userInfo:v12];

  if (_serverProxy)
  {
    v14 = os_log_create("com.apple.camera.overlay", "Client");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CAMOverlayServiceConnection *)updateCopy applyControlUpdate:_serverProxy completion:v14];
    }

    completionCopy[2](completionCopy, _serverProxy);
    goto LABEL_12;
  }

LABEL_9:
  v15 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CAMOverlayServiceConnection applyControlUpdate:updateCopy completion:v15];
  }

  _serverProxy = [(CAMOverlayServiceConnection *)self _serverProxy];
  [_serverProxy clientDidUpdateControl:updateCopy reply:completionCopy];
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivatedConnection:(id)connection
{
  connectionCopy = connection;
  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CAMOverlayServiceConnection__handleActivatedConnection___block_invoke;
  v7[3] = &unk_278851B98;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(clientQueue, v7);
}

uint64_t __58__CAMOverlayServiceConnection__handleActivatedConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) remoteTarget];
  [*(a1 + 32) _setServerProxy:v2];

  v3 = [*(a1 + 32) _serverProxy];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "focusLockGestureEnabled")}];
  [v3 setFocusLockGestureEnabled:v4];

  v5 = *(a1 + 32);

  return [v5 _updateStatusWithReason:2];
}

- (void)_handleInterruptedConnection:(id)connection
{
  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CAMOverlayServiceConnection__handleInterruptedConnection___block_invoke;
  block[3] = &unk_278851AF8;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __60__CAMOverlayServiceConnection__handleInterruptedConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setServerProxy:0];
  v2 = [*(a1 + 32) _serverConnection];
  [v2 activate];

  v3 = *(a1 + 32);

  return [v3 _updateStatusWithReason:2];
}

- (void)_handleInvalidatedConnection:(id)connection
{
  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CAMOverlayServiceConnection__handleInvalidatedConnection___block_invoke;
  block[3] = &unk_278851AF8;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __60__CAMOverlayServiceConnection__handleInvalidatedConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setServerProxy:0];
  [*(a1 + 32) _setServerConnection:0];
  v2 = *(a1 + 32);

  return [v2 _updateStatusWithReason:2];
}

- (void)serverDidChangeOverlayVisible:(id)visible activeControlIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bOOLValue = [visible BOOLValue];
  v8 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (bOOLValue)
    {
      v9 = @"YES";
    }

    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_22E684000, v8, OS_LOG_TYPE_DEFAULT, "Received overlay visibility %{public}@ for control ID %{public}@", buf, 0x16u);
  }

  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CAMOverlayServiceConnection_serverDidChangeOverlayVisible_activeControlIdentifier___block_invoke;
  block[3] = &unk_278851BC0;
  v15 = bOOLValue;
  block[4] = self;
  v14 = identifierCopy;
  v11 = identifierCopy;
  dispatch_async(clientQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __85__CAMOverlayServiceConnection_serverDidChangeOverlayVisible_activeControlIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setLastKnownOverlayVisibility:*(a1 + 48)];
  v2 = [*(a1 + 32) client];
  [v2 cameraOverlayConnection:*(a1 + 32) didChangeOverlayVisible:*(a1 + 48) activeControlIdentifier:*(a1 + 40)];
}

- (void)serverDidChangeActiveControlIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = identifierCopy;
    _os_log_impl(&dword_22E684000, v5, OS_LOG_TYPE_DEFAULT, "Received active control ID %{public}@", buf, 0xCu);
  }

  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CAMOverlayServiceConnection_serverDidChangeActiveControlIdentifier___block_invoke;
  v9[3] = &unk_278851B98;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(clientQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __70__CAMOverlayServiceConnection_serverDidChangeActiveControlIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 cameraOverlayConnection:*(a1 + 32) didChangeActiveControlIdentifier:*(a1 + 40)];
}

- (void)didChangeInterfaceReduced:(id)reduced
{
  v13 = *MEMORY[0x277D85DE8];
  bOOLValue = [reduced BOOLValue];
  v5 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (bOOLValue)
    {
      v6 = @"YES";
    }

    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22E684000, v5, OS_LOG_TYPE_DEFAULT, "Received overlay interfaceReduced %{public}@", buf, 0xCu);
  }

  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__CAMOverlayServiceConnection_didChangeInterfaceReduced___block_invoke;
  v9[3] = &unk_278851BE8;
  v9[4] = self;
  v10 = bOOLValue;
  dispatch_async(clientQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__CAMOverlayServiceConnection_didChangeInterfaceReduced___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setLastKnownOverlayInterfaceReduced:*(a1 + 40)];
  v2 = [*(a1 + 32) client];
  [v2 cameraOverlayConnection:*(a1 + 32) didChangeInterfaceReduced:*(a1 + 40)];
}

- (void)serverDidChangeFocusLocked:(id)locked
{
  v13 = *MEMORY[0x277D85DE8];
  bOOLValue = [locked BOOLValue];
  v5 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (bOOLValue)
    {
      v6 = @"YES";
    }

    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22E684000, v5, OS_LOG_TYPE_DEFAULT, "Received overlay focusLocked %{public}@", buf, 0xCu);
  }

  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__CAMOverlayServiceConnection_serverDidChangeFocusLocked___block_invoke;
  v9[3] = &unk_278851BE8;
  v9[4] = self;
  v10 = bOOLValue;
  dispatch_async(clientQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__CAMOverlayServiceConnection_serverDidChangeFocusLocked___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setLastKnownFocusLocked:*(a1 + 40)];
  v2 = [*(a1 + 32) client];
  [v2 cameraOverlayConnection:*(a1 + 32) didChangeFocusLocked:*(a1 + 40)];
}

- (void)serverDidUpdateControl:(id)control
{
  v17 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  v5 = os_log_create("com.apple.camera.overlay", "Client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [controlCopy debugDescription];
    controlIdentifier = [controlCopy controlIdentifier];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = controlIdentifier;
    _os_log_impl(&dword_22E684000, v5, OS_LOG_TYPE_DEFAULT, "Received overlay update %{public}@ for ID %{public}@", buf, 0x16u);
  }

  clientQueue = [(CAMOverlayServiceConnection *)self clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__CAMOverlayServiceConnection_serverDidUpdateControl___block_invoke;
  v11[3] = &unk_278851B98;
  v11[4] = self;
  v12 = controlCopy;
  v9 = controlCopy;
  dispatch_async(clientQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __54__CAMOverlayServiceConnection_serverDidUpdateControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 cameraOverlayConnection:*(a1 + 32) didApplyControlUpdate:*(a1 + 40)];
}

- (CAMOverlayServiceConnectionClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)initWithClient:(os_log_t)log queue:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_22E684000, log, OS_LOG_TYPE_ERROR, "Lookup failed for machName/service %{public}@/%{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)configureWithControls:(uint64_t)a1 initialUpdates:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22E684000, a2, OS_LOG_TYPE_ERROR, "Not sending overlay controls: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)applyControlUpdate:(NSObject *)a3 completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 debugDescription];
  v7 = [a1 controlIdentifier];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a2;
  _os_log_error_impl(&dword_22E684000, a3, OS_LOG_TYPE_ERROR, "Not sending overlay value %{public}@ for ID %{public}@: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)applyControlUpdate:(void *)a1 completion:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 debugDescription];
  v5 = [a1 controlIdentifier];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_22E684000, a2, OS_LOG_TYPE_DEBUG, "Sending overlay value %{public}@ for ID %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end