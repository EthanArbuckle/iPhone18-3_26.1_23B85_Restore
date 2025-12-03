@interface DIAudioPowerController
- (DIAudioPowerController)initWithConnectionManager:(id)manager;
- (DIAudioPowerControllerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (void)dealloc;
- (void)didUpdateAudioPower:(float)power;
- (void)setDelegate:(id)delegate;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)in;
@end

@implementation DIAudioPowerController

- (DIAudioPowerController)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = DIAudioPowerController;
  v5 = [(DIAudioPowerController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_connectionManager, managerCopy);
    dispatcher = [managerCopy dispatcher];
    [dispatcher setAudioPowerDelegate:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_connectionManager);
    manager = [WeakRetained manager];
    [manager addCheckInObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DILogHandleAudioPowerController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Tearing down Audio Power Controller", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = DIAudioPowerController;
  [(DIAudioPowerController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {
    connectionManager = [(DIAudioPowerController *)self connectionManager];
    manager = [connectionManager manager];
    connection = [manager connection];
    v7 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
    connectionManager2 = [(DIAudioPowerController *)self connectionManager];
    manager2 = [connectionManager2 manager];
    clientContext = [manager2 clientContext];
    [v7 registerAudioPowerWithContext:clientContext completionHandler:&__block_literal_global_6];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = DILogHandleAudioPowerController();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v12, OS_LOG_TYPE_DEFAULT, "%@Audio power controller delegate set to nil", buf, 0xCu);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

void __38__DIAudioPowerController_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleAudioPowerController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Audio power controller set delegate proxy error: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __38__DIAudioPowerController_setDelegate___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = DILogHandleAudioPowerController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 localizedDescription];
      v6 = 138412546;
      v7 = &stru_285D02BA8;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Audio power controller set delegate register audio power with context error: %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateAudioPower:(float)power
{
  delegate = [(DIAudioPowerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    connectionManager = [(DIAudioPowerController *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DIAudioPowerController_didUpdateAudioPower___block_invoke;
    v17[3] = &unk_278FB9098;
    v17[4] = self;
    powerCopy = power;
    [DIUtilities onQueue:clientQueue block:v17];
  }

  delegate2 = [(DIAudioPowerController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    connectionManager2 = [(DIAudioPowerController *)self connectionManager];
    manager2 = [connectionManager2 manager];
    clientQueue2 = [manager2 clientQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__DIAudioPowerController_didUpdateAudioPower___block_invoke_2;
    v15[3] = &unk_278FB9098;
    v15[4] = self;
    powerCopy2 = power;
    [DIUtilities onQueue:clientQueue2 block:v15];
  }
}

void __46__DIAudioPowerController_didUpdateAudioPower___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = *(a1 + 40);
  [v3 controller:*(a1 + 32) didUpdateAudioPowerForDropInDevice:v2];
}

void __46__DIAudioPowerController_didUpdateAudioPower___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = *(a1 + 40);
  [v3 controller:*(a1 + 32) didUpdateDownlinkAudioPower:v2];
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)in
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(DIAudioPowerController *)self setDelegate:WeakRetained];
}

- (DIAudioPowerControllerDelegate)delegate
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