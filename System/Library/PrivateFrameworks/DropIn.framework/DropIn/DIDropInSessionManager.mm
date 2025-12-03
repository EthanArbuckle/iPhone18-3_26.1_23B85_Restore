@interface DIDropInSessionManager
- (DIDropInSessionManager)initWithConnectionManager:(id)manager;
- (DIDropInSessionManagerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (void)didAddSession:(id)session;
- (void)didRemoveSession:(id)session;
- (void)didUpdateSession:(id)session;
- (void)session:(id)session didFailWithError:(id)error;
- (void)setActiveSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setIncomingPendingSession:(id)session;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)in;
@end

@implementation DIDropInSessionManager

- (DIDropInSessionManager)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = DIDropInSessionManager;
  v5 = [(DIDropInSessionManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_connectionManager, managerCopy);
    dispatcher = [managerCopy dispatcher];
    [dispatcher setSessionStatusDelegate:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_connectionManager);
    manager = [WeakRetained manager];
    [manager addCheckInObserver:v6];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 2112;
    v15 = delegateCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", buf, 0x16u);
  }

  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  manager = [connectionManager manager];
  connection = [manager connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__DIDropInSessionManager_setDelegate___block_invoke_2;
  v11[3] = &unk_278FB90C0;
  v11[4] = self;
  [v9 getCurrentSessionWithCompletionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __38__DIDropInSessionManager_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to get proxy with Error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __38__DIDropInSessionManager_setDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 state] == 6;
    v3 = v6;
    if (!v4)
    {
      v4 = [v6 state] == 7;
      v3 = v6;
      if (!v4)
      {
        v5 = [*(a1 + 32) connectionManager];
        [v6 setConnectionManager:v5];

        [*(a1 + 32) setActiveSession:v6];
        v3 = v6;
      }
    }
  }
}

- (void)setIncomingPendingSession:(id)session
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Setting incoming pending session to %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_incomingPendingSession, session);
  delegate = [(DIDropInSessionManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    connectionManager = [(DIDropInSessionManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__DIDropInSessionManager_setIncomingPendingSession___block_invoke;
    v13[3] = &unk_278FB8E48;
    v13[4] = self;
    v14 = sessionCopy;
    [DIUtilities onQueue:clientQueue block:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__DIDropInSessionManager_setIncomingPendingSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didReceiveIncomingPendingSession:*(a1 + 40)];
}

- (void)setActiveSession:(id)session
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = &stru_285D02BA8;
    v21 = 2112;
    v22 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Setting active session to %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeSession, session);
  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v8 = [incomingPendingSession isEqual:sessionCopy];

  if (v8)
  {
    v9 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = &stru_285D02BA8;
      v21 = 2112;
      v22 = sessionCopy;
      _os_log_impl(&dword_249DA7000, v9, OS_LOG_TYPE_DEFAULT, "%@Session was equal to incoming pending session and now making active %@", buf, 0x16u);
    }

    incomingPendingSession = self->_incomingPendingSession;
    self->_incomingPendingSession = 0;
  }

  delegate = [(DIDropInSessionManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    connectionManager = [(DIDropInSessionManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__DIDropInSessionManager_setActiveSession___block_invoke;
    v17[3] = &unk_278FB8E48;
    v17[4] = self;
    v18 = sessionCopy;
    [DIUtilities onQueue:clientQueue block:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __43__DIDropInSessionManager_setActiveSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didUpdateActiveSession:*(a1 + 40)];
}

- (void)didAddSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 2112;
    v15 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Add Session %@", &v12, 0x16u);
  }

  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  [sessionCopy setConnectionManager:connectionManager];

  activeSession = [(DIDropInSessionManager *)self activeSession];
  if (activeSession)
  {

LABEL_6:
    [(DIDropInSessionManager *)self setActiveSession:sessionCopy];
    goto LABEL_7;
  }

  if ([sessionCopy state] == 4)
  {
    goto LABEL_6;
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v10 = [incomingPendingSession isEqual:sessionCopy];

  if (v10)
  {
    incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
    [(DIDropInSessionManager *)self setIncomingPendingSession:incomingPendingSession2];
  }

  else
  {
    [(DIDropInSessionManager *)self setIncomingPendingSession:sessionCopy];
  }

LABEL_7:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveSession:(id)session
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = &stru_285D02BA8;
    v30 = 2112;
    v31 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Remove Session %@", buf, 0x16u);
  }

  activeSession = [(DIDropInSessionManager *)self activeSession];
  v7 = [activeSession isEqual:sessionCopy];

  if (v7)
  {
    v8 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      activeSession2 = [(DIDropInSessionManager *)self activeSession];
      *buf = 138412546;
      v29 = &stru_285D02BA8;
      v30 = 2112;
      v31 = activeSession2;
      _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_DEFAULT, "%@Wiping Active Session %@", buf, 0x16u);
    }

    activeSession = self->_activeSession;
    self->_activeSession = 0;

    delegate = [(DIDropInSessionManager *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      connectionManager = [(DIDropInSessionManager *)self connectionManager];
      manager = [connectionManager manager];
      clientQueue = [manager clientQueue];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __43__DIDropInSessionManager_didRemoveSession___block_invoke;
      v25 = &unk_278FB8E48;
      selfCopy = self;
      v27 = sessionCopy;
      [DIUtilities onQueue:clientQueue block:&v22];
    }
  }

  v16 = [(DIDropInSessionManager *)self incomingPendingSession:v22];
  v17 = [v16 isEqual:sessionCopy];

  if (v17)
  {
    v18 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
      *buf = 138412546;
      v29 = &stru_285D02BA8;
      v30 = 2112;
      v31 = incomingPendingSession;
      _os_log_impl(&dword_249DA7000, v18, OS_LOG_TYPE_DEFAULT, "%@Wiping incoming pending session %@", buf, 0x16u);
    }

    incomingPendingSession = self->_incomingPendingSession;
    self->_incomingPendingSession = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __43__DIDropInSessionManager_didRemoveSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didUpdateActiveSession:*(a1 + 40)];
}

- (void)didUpdateSession:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = &stru_285D02BA8;
    v24 = 2112;
    v25 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Update Session %@", &v22, 0x16u);
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v7 = [incomingPendingSession isEqual:sessionCopy];

  if (v7)
  {
    v8 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
      v22 = 138412546;
      v23 = &stru_285D02BA8;
      v24 = 2112;
      v25 = incomingPendingSession2;
      _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_DEFAULT, "%@Updating Incoming Pending Session %@", &v22, 0x16u);
    }

    incomingPendingSession3 = [(DIDropInSessionManager *)self incomingPendingSession];
    [incomingPendingSession3 updateWithSession:sessionCopy];

    if ([sessionCopy state] == 4)
    {
      v11 = DILogHandleDIDropInSessionManager();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        incomingPendingSession4 = [(DIDropInSessionManager *)self incomingPendingSession];
        v22 = 138412546;
        v23 = &stru_285D02BA8;
        v24 = 2112;
        v25 = incomingPendingSession4;
        _os_log_impl(&dword_249DA7000, v11, OS_LOG_TYPE_DEFAULT, "%@Making Incoming Pending Session Active %@", &v22, 0x16u);
      }

      incomingPendingSession5 = [(DIDropInSessionManager *)self incomingPendingSession];
      [(DIDropInSessionManager *)self setActiveSession:incomingPendingSession5];
    }
  }

  else
  {
    activeSession = [(DIDropInSessionManager *)self activeSession];
    v15 = [activeSession isEqual:sessionCopy];

    if (v15)
    {
      v16 = DILogHandleDIDropInSessionManager();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        activeSession2 = [(DIDropInSessionManager *)self activeSession];
        v22 = 138412546;
        v23 = &stru_285D02BA8;
        v24 = 2112;
        v25 = activeSession2;
        _os_log_impl(&dword_249DA7000, v16, OS_LOG_TYPE_DEFAULT, "%@Updating Active Session %@", &v22, 0x16u);
      }

      activeSession3 = [(DIDropInSessionManager *)self activeSession];
      [activeSession3 updateWithSession:sessionCopy];

      if ([sessionCopy state] == 6)
      {
        v19 = DILogHandleDIDropInSessionManager();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          activeSession4 = [(DIDropInSessionManager *)self activeSession];
          v22 = 138412546;
          v23 = &stru_285D02BA8;
          v24 = 2112;
          v25 = activeSession4;
          _os_log_impl(&dword_249DA7000, v19, OS_LOG_TYPE_DEFAULT, "%@Removing Active Session %@", &v22, 0x16u);
        }

        [(DIDropInSessionManager *)self didRemoveSession:sessionCopy];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didFailWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412802;
    v21 = &stru_285D02BA8;
    v22 = 2112;
    v23 = errorCopy;
    v24 = 2112;
    v25 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_ERROR, "%@Did Fail with Error %@, %@", &v20, 0x20u);
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v10 = [incomingPendingSession isEqual:sessionCopy];

  if (v10)
  {
    v11 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
      v20 = 138412546;
      v21 = &stru_285D02BA8;
      v22 = 2112;
      v23 = incomingPendingSession2;
      _os_log_impl(&dword_249DA7000, v11, OS_LOG_TYPE_ERROR, "%@Incoming Pending Session Failed %@", &v20, 0x16u);
    }

    incomingPendingSession3 = [(DIDropInSessionManager *)self incomingPendingSession];
    [incomingPendingSession3 failWithError:errorCopy];
  }

  activeSession = [(DIDropInSessionManager *)self activeSession];
  v15 = [activeSession isEqual:sessionCopy];

  if (v15)
  {
    v16 = DILogHandleDIDropInSessionManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      activeSession2 = [(DIDropInSessionManager *)self activeSession];
      v20 = 138412546;
      v21 = &stru_285D02BA8;
      v22 = 2112;
      v23 = activeSession2;
      _os_log_impl(&dword_249DA7000, v16, OS_LOG_TYPE_ERROR, "%@Active Session Failed %@", &v20, 0x16u);
    }

    activeSession3 = [(DIDropInSessionManager *)self activeSession];
    [activeSession3 failWithError:errorCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)in
{
  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  manager = [connectionManager manager];
  connection = [manager connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke_11;
  v8[3] = &unk_278FB90C0;
  v8[4] = self;
  [v7 getCurrentSessionWithCompletionHandler:v8];
}

void __60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDIDropInSessionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to get proxy with Error %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke_11(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) didUpdateSession:a2];
  }

  return result;
}

- (DIDropInSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end