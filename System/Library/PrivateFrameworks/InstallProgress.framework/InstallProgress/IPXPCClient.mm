@interface IPXPCClient
- (IPXPCClient)initWithConnection:(id)connection serviceQueue:(id)queue;
- (IPXPCClientDelegate)delegate;
- (void)getActiveInstallations:(id)installations;
- (void)getAllInstallableStates:(id)states;
- (void)getProgressForIdentity:(id)identity completion:(id)completion;
- (void)registerAsProgressObserver:(id)observer;
- (void)resume;
- (void)sendProgressEndForIdentity:(id)identity reason:(unint64_t)reason;
- (void)sendUpdateForIdentity:(id)identity currentProgress:(id)progress;
@end

@implementation IPXPCClient

- (IPXPCClient)initWithConnection:(id)connection serviceQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = IPXPCClient;
  v9 = [(IPXPCClient *)&v18 init];
  if (v9)
  {
    [connectionCopy _setQueue:queueCopy];
    v10 = IPServerExportedInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:v9];
    v11 = IPClientExportedInterface();
    [connectionCopy setRemoteObjectInterface:v11];

    objc_initWeak(&location, v9);
    objc_initWeak(&from, connectionCopy);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__IPXPCClient_initWithConnection_serviceQueue___block_invoke;
    v13[3] = &unk_2797B1E50;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    [connectionCopy setInvalidationHandler:v13];
    objc_storeStrong(&v9->_connection, connection);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __47__IPXPCClient_initWithConnection_serviceQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(WeakRetained + 2);
    [v2 clientDisconnected:WeakRetained];
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setExportedObject:0];
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "resuming %@", &v6, 0xCu);
  }

  [(NSXPCConnection *)self->_connection resume];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendUpdateForIdentity:(id)identity currentProgress:(id)progress
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__IPXPCClient_sendUpdateForIdentity_currentProgress___block_invoke;
  v9[3] = &unk_2797B1E78;
  v9[4] = self;
  progressCopy = progress;
  identityCopy = identity;
  v8 = [(IPXPCClient *)self asyncProxy:v9];
  [v8 installableForIdentity:identityCopy progressChanged:progressCopy];
}

void __53__IPXPCClient_sendUpdateForIdentity_currentProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IPServerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__IPXPCClient_sendUpdateForIdentity_currentProgress___block_invoke_cold_1(a1);
  }
}

- (void)sendProgressEndForIdentity:(id)identity reason:(unint64_t)reason
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__IPXPCClient_sendProgressEndForIdentity_reason___block_invoke;
  v8[3] = &unk_2797B1E78;
  v8[4] = self;
  identityCopy = identity;
  v7 = [(IPXPCClient *)self asyncProxy:v8];
  [v7 installableForIdentity:identityCopy progressEndedForReason:reason];
}

void __49__IPXPCClient_sendProgressEndForIdentity_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IPServerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__IPXPCClient_sendProgressEndForIdentity_reason___block_invoke_cold_1(a1);
  }
}

- (void)registerAsProgressObserver:(id)observer
{
  v9 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = _IPServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "Client %@ registering as progress observer.", &v7, 0xCu);
  }

  observerCopy[2](observerCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getActiveInstallations:(id)installations
{
  installationsCopy = installations;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained activeInstallationsForClient:self];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  installationsCopy[2](installationsCopy, v8, 0);
}

- (void)getAllInstallableStates:(id)states
{
  statesCopy = states;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained allInstallableStatesForClient:self];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  statesCopy[2](statesCopy, v8, 0);
}

- (void)getProgressForIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 0;
  v9 = [WeakRetained progressForIdentity:identityCopy forClient:self error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (IPXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__IPXPCClient_sendUpdateForIdentity_currentProgress___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254C69000, v2, v3, "Could not send progress update to %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __49__IPXPCClient_sendProgressEndForIdentity_reason___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_254C69000, v2, v3, "could not send progress end to %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end