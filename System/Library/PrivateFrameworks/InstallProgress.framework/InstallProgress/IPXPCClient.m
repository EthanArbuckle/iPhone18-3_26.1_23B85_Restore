@interface IPXPCClient
- (IPXPCClient)initWithConnection:(id)a3 serviceQueue:(id)a4;
- (IPXPCClientDelegate)delegate;
- (void)getActiveInstallations:(id)a3;
- (void)getAllInstallableStates:(id)a3;
- (void)getProgressForIdentity:(id)a3 completion:(id)a4;
- (void)registerAsProgressObserver:(id)a3;
- (void)resume;
- (void)sendProgressEndForIdentity:(id)a3 reason:(unint64_t)a4;
- (void)sendUpdateForIdentity:(id)a3 currentProgress:(id)a4;
@end

@implementation IPXPCClient

- (IPXPCClient)initWithConnection:(id)a3 serviceQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = IPXPCClient;
  v9 = [(IPXPCClient *)&v18 init];
  if (v9)
  {
    [v7 _setQueue:v8];
    v10 = IPServerExportedInterface();
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:v9];
    v11 = IPClientExportedInterface();
    [v7 setRemoteObjectInterface:v11];

    objc_initWeak(&location, v9);
    objc_initWeak(&from, v7);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__IPXPCClient_initWithConnection_serviceQueue___block_invoke;
    v13[3] = &unk_2797B1E50;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    [v7 setInvalidationHandler:v13];
    objc_storeStrong(&v9->_connection, a3);
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

- (void)sendUpdateForIdentity:(id)a3 currentProgress:(id)a4
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__IPXPCClient_sendUpdateForIdentity_currentProgress___block_invoke;
  v9[3] = &unk_2797B1E78;
  v9[4] = self;
  v6 = a4;
  v7 = a3;
  v8 = [(IPXPCClient *)self asyncProxy:v9];
  [v8 installableForIdentity:v7 progressChanged:v6];
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

- (void)sendProgressEndForIdentity:(id)a3 reason:(unint64_t)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__IPXPCClient_sendProgressEndForIdentity_reason___block_invoke;
  v8[3] = &unk_2797B1E78;
  v8[4] = self;
  v6 = a3;
  v7 = [(IPXPCClient *)self asyncProxy:v8];
  [v7 installableForIdentity:v6 progressEndedForReason:a4];
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

- (void)registerAsProgressObserver:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IPServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "Client %@ registering as progress observer.", &v7, 0xCu);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getActiveInstallations:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained activeInstallationsForClient:self];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9[2](v9, v8, 0);
}

- (void)getAllInstallableStates:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained allInstallableStatesForClient:self];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9[2](v9, v8, 0);
}

- (void)getProgressForIdentity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 0;
  v9 = [WeakRetained progressForIdentity:v7 forClient:self error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
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