@interface DIDropInCenter
- (DIAudioPowerController)audioPowerController;
- (DIAudioSystemController)audioSystemController;
- (DIDeviceManager)deviceManager;
- (DIDropInCenter)initWithNullableHomeIdentifier:(id)identifier queue:(id)queue;
- (DIDropInCenterDelegate)delegate;
- (DIDropInSessionManager)sessionManager;
- (void)dealloc;
- (void)managerDidInterruptConnection:(id)connection;
- (void)startSessionWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation DIDropInCenter

- (DIDropInCenter)initWithNullableHomeIdentifier:(id)identifier queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = DIDropInCenter;
  v9 = [(DIDropInCenter *)&v18 init];
  if (v9)
  {
    v10 = DILogHandleDropInCenter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = &stru_285D02BA8;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_249DA7000, v10, OS_LOG_TYPE_DEFAULT, "%@Creating Drop In Center with Home Identifier %@", buf, 0x16u);
    }

    objc_storeStrong(&v9->_homeIdentifier, identifier);
    v11 = [[DIClientContext alloc] initWithHomeIdentifier:v9->_homeIdentifier];
    v12 = [[DIXPCDispatcher alloc] initWithClientContext:v11];
    v13 = [[DIXPCManager alloc] initWithClientContext:v11 dispatcher:v12 clientQueue:queueCopy];
    [(DIXPCManager *)v13 setDelegate:v9];
    v14 = [[DIXPCConnectionManager alloc] initWithXPCManager:v13 dispatcher:v12];
    connectionManager = v9->_connectionManager;
    v9->_connectionManager = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DILogHandleDropInCenter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Tearing down Drop In Center", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = DIDropInCenter;
  [(DIDropInCenter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (DIDeviceManager)deviceManager
{
  deviceManager = self->_deviceManager;
  if (!deviceManager)
  {
    v4 = [DIDeviceManager alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIDeviceManager *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_deviceManager;
    self->_deviceManager = v6;

    deviceManager = self->_deviceManager;
  }

  return deviceManager;
}

- (DIDropInSessionManager)sessionManager
{
  sessionManager = self->_sessionManager;
  if (!sessionManager)
  {
    v4 = [DIDropInSessionManager alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIDropInSessionManager *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_sessionManager;
    self->_sessionManager = v6;

    sessionManager = self->_sessionManager;
  }

  return sessionManager;
}

- (DIAudioPowerController)audioPowerController
{
  audioPowerController = self->_audioPowerController;
  if (!audioPowerController)
  {
    v4 = [DIAudioPowerController alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIAudioPowerController *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_audioPowerController;
    self->_audioPowerController = v6;

    audioPowerController = self->_audioPowerController;
  }

  return audioPowerController;
}

- (DIAudioSystemController)audioSystemController
{
  audioSystemController = self->_audioSystemController;
  if (!audioSystemController)
  {
    v4 = [DIAudioSystemController alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIAudioSystemController *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_audioSystemController;
    self->_audioSystemController = v6;

    audioSystemController = self->_audioSystemController;
  }

  return audioSystemController;
}

- (void)startSessionWithRequest:(id)request completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  connectionManager = [(DIDropInCenter *)self connectionManager];
  manager = [connectionManager manager];
  clientContext = [manager clientContext];

  v11 = DILogHandleDropInCenter();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = &stru_285D02BA8;
    v25 = 2112;
    v26 = requestCopy;
    _os_log_impl(&dword_249DA7000, v11, OS_LOG_TYPE_DEFAULT, "%@Start session with request %@", buf, 0x16u);
  }

  connectionManager2 = [(DIDropInCenter *)self connectionManager];
  manager2 = [connectionManager2 manager];
  connection = [manager2 connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke;
  v21[3] = &unk_278FB8D18;
  v21[4] = self;
  v15 = handlerCopy;
  v22 = v15;
  v16 = [connection remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_2;
  v19[3] = &unk_278FB8D40;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  [v16 startSessionWithContext:clientContext request:requestCopy completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDropInCenter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to start Session %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_12;
  v11[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connectionManager];
  [v5 setConnectionManager:v7];

  v8 = [*(a1 + 32) sessionManager];
  [v8 setActiveSession:v5];

  v9 = DILogHandleDropInCenter();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = &stru_285D02BA8;
      v27 = 2112;
      v28 = v6;
      v11 = "%@Failed to start Session %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v12, v13, v11, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = &stru_285D02BA8;
    v27 = 2112;
    v28 = v5;
    v11 = "%@Started Session: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v14 = [*(a1 + 32) connectionManager];
  v15 = [v14 manager];
  v16 = [v15 clientQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_15;
  v21[3] = &unk_278FB9070;
  v17 = *(a1 + 40);
  v23 = v6;
  v24 = v17;
  v22 = v5;
  v18 = v6;
  v19 = v5;
  [DIUtilities onQueue:v16 block:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)managerDidInterruptConnection:(id)connection
{
  delegate = [(DIDropInCenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    connectionManager = [(DIDropInCenter *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__DIDropInCenter_managerDidInterruptConnection___block_invoke;
    v9[3] = &unk_278FB8F78;
    v9[4] = self;
    [DIUtilities onQueue:clientQueue block:v9];
  }
}

void __48__DIDropInCenter_managerDidInterruptConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInCenter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Server Disconnected for Center = %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 serverDisconnectedForDropInCenter:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (DIDropInCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end