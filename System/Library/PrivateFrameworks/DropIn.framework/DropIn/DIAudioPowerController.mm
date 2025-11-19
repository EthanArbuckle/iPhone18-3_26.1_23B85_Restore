@interface DIAudioPowerController
- (DIAudioPowerController)initWithConnectionManager:(id)a3;
- (DIAudioPowerControllerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (void)dealloc;
- (void)didUpdateAudioPower:(float)a3;
- (void)setDelegate:(id)a3;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)a3;
@end

@implementation DIAudioPowerController

- (DIAudioPowerController)initWithConnectionManager:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DIAudioPowerController;
  v5 = [(DIAudioPowerController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_connectionManager, v4);
    v8 = [v4 dispatcher];
    [v8 setAudioPowerDelegate:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_connectionManager);
    v10 = [WeakRetained manager];
    [v10 addCheckInObserver:v6];
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

- (void)setDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_delegate, a3);
  if (a3)
  {
    v14 = [(DIAudioPowerController *)self connectionManager];
    v5 = [v14 manager];
    v6 = [v5 connection];
    v7 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
    v8 = [(DIAudioPowerController *)self connectionManager];
    v9 = [v8 manager];
    v10 = [v9 clientContext];
    [v7 registerAudioPowerWithContext:v10 completionHandler:&__block_literal_global_6];

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

- (void)didUpdateAudioPower:(float)a3
{
  v5 = [(DIAudioPowerController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(DIAudioPowerController *)self connectionManager];
    v8 = [v7 manager];
    v9 = [v8 clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DIAudioPowerController_didUpdateAudioPower___block_invoke;
    v17[3] = &unk_278FB9098;
    v17[4] = self;
    v18 = a3;
    [DIUtilities onQueue:v9 block:v17];
  }

  v10 = [(DIAudioPowerController *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(DIAudioPowerController *)self connectionManager];
    v13 = [v12 manager];
    v14 = [v13 clientQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__DIAudioPowerController_didUpdateAudioPower___block_invoke_2;
    v15[3] = &unk_278FB9098;
    v15[4] = self;
    v16 = a3;
    [DIUtilities onQueue:v14 block:v15];
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

- (void)xpcManagerDidPerformDaemonCheckIn:(id)a3
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