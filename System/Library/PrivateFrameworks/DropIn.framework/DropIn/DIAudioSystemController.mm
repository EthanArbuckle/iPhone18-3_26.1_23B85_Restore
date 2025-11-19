@interface DIAudioSystemController
- (BOOL)isDownlinkMuted;
- (BOOL)isUplinkMuted;
- (DIAudioSystemController)initWithConnectionManager:(id)a3;
- (DIAudioSystemControllerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (void)dealloc;
- (void)didUpdateDownlinkMuteStatus:(BOOL)a3;
- (void)didUpdateUplinkMuteStatus:(BOOL)a3;
@end

@implementation DIAudioSystemController

- (DIAudioSystemController)initWithConnectionManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIAudioSystemController;
  v5 = [(DIAudioSystemController *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    lock = v5->_lock;
    v5->_lock = v6;

    *&v5->_needsInitialUplinkMuteStatus = 257;
    v8 = objc_storeWeak(&v5->_connectionManager, v4);
    v9 = [v4 dispatcher];
    [v9 setAudioStatusDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DILogHandleAudioSystemController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Tearing down Audio System Controller", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = DIAudioSystemController;
  [(DIAudioSystemController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isUplinkMuted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(DIAudioSystemController *)self lock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__DIAudioSystemController_isUplinkMuted__block_invoke;
  v5[3] = &unk_278FB8DB8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 di_synchronize:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __40__DIAudioSystemController_isUplinkMuted__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) needsInitialUplinkMuteStatus])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) connectionManager];
    v3 = [v2 manager];
    v4 = [v3 connection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__DIAudioSystemController_isUplinkMuted__block_invoke_2;
    v12[3] = &unk_278FB8D68;
    v12[4] = *(a1 + 40);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __40__DIAudioSystemController_isUplinkMuted__block_invoke_4;
    v9 = &unk_278FB9190;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    [v5 getUplinkMutedWithCompletionHandler:&v6];

    if (([*(a1 + 32) needsInitialUplinkMuteStatus] & 1) == 0)
    {
      *(*(a1 + 32) + 8) = *(*(*(a1 + 40) + 8) + 24);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
  }
}

void __40__DIAudioSystemController_isUplinkMuted__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = DILogHandleAudioSystemController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to get uplink muted %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __40__DIAudioSystemController_isUplinkMuted__block_invoke_4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [WeakRetained setNeedsInitialUplinkMuteStatus:0];
}

void __42__DIAudioSystemController_setUplinkMuted___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleAudioSystemController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to set uplink muted %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __42__DIAudioSystemController_setUplinkMuted___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = DILogHandleAudioSystemController();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = &stru_285D02BA8;
      v14 = 1024;
      v15 = v6;
      v7 = "%@Failed to set uplink muted to %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v8, v9, v7, &v12, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 1024;
    v15 = v10;
    v7 = "%@Uplink muted set to %d";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDownlinkMuted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(DIAudioSystemController *)self lock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__DIAudioSystemController_isDownlinkMuted__block_invoke;
  v5[3] = &unk_278FB8DB8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 di_synchronize:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __42__DIAudioSystemController_isDownlinkMuted__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) needsInitialDownlinkMuteStatus])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) connectionManager];
    v3 = [v2 manager];
    v4 = [v3 connection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__DIAudioSystemController_isDownlinkMuted__block_invoke_2;
    v12[3] = &unk_278FB8D68;
    v12[4] = *(a1 + 40);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __42__DIAudioSystemController_isDownlinkMuted__block_invoke_8;
    v9 = &unk_278FB9190;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    [v5 getDownlinkMutedWithCompletionHandler:&v6];

    if (([*(a1 + 32) needsInitialDownlinkMuteStatus] & 1) == 0)
    {
      *(*(a1 + 32) + 9) = *(*(*(a1 + 40) + 8) + 24);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 9);
  }
}

void __42__DIAudioSystemController_isDownlinkMuted__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = DILogHandleAudioSystemController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to get downlink muted %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __42__DIAudioSystemController_isDownlinkMuted__block_invoke_8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [WeakRetained setNeedsInitialDownlinkMuteStatus:0];
}

void __44__DIAudioSystemController_setDownlinkMuted___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleAudioSystemController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to set downlink muted %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __44__DIAudioSystemController_setDownlinkMuted___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = DILogHandleAudioSystemController();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = &stru_285D02BA8;
      v14 = 1024;
      v15 = v6;
      v7 = "%@Failed to set downlink muted to %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v8, v9, v7, &v12, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 1024;
    v15 = v10;
    v7 = "%@Uplink muted set to %d";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateDownlinkMuteStatus:(BOOL)a3
{
  v5 = [(DIAudioSystemController *)self lock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__DIAudioSystemController_didUpdateDownlinkMuteStatus___block_invoke;
  v13[3] = &unk_278FB8E70;
  v13[4] = self;
  v14 = a3;
  [v5 di_synchronize:v13];

  v6 = [(DIAudioSystemController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DIAudioSystemController *)self connectionManager];
    v9 = [v8 manager];
    v10 = [v9 clientQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__DIAudioSystemController_didUpdateDownlinkMuteStatus___block_invoke_2;
    v11[3] = &unk_278FB8E70;
    v11[4] = self;
    v12 = a3;
    [DIUtilities onQueue:v10 block:v11];
  }
}

void __55__DIAudioSystemController_didUpdateDownlinkMuteStatus___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didUpdateDownlinkMuteStatus:*(a1 + 40)];
}

- (void)didUpdateUplinkMuteStatus:(BOOL)a3
{
  v5 = [(DIAudioSystemController *)self lock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__DIAudioSystemController_didUpdateUplinkMuteStatus___block_invoke;
  v13[3] = &unk_278FB8E70;
  v13[4] = self;
  v14 = a3;
  [v5 di_synchronize:v13];

  v6 = [(DIAudioSystemController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DIAudioSystemController *)self connectionManager];
    v9 = [v8 manager];
    v10 = [v9 clientQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__DIAudioSystemController_didUpdateUplinkMuteStatus___block_invoke_2;
    v11[3] = &unk_278FB8E70;
    v11[4] = self;
    v12 = a3;
    [DIUtilities onQueue:v10 block:v11];
  }
}

void __53__DIAudioSystemController_didUpdateUplinkMuteStatus___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controller:*(a1 + 32) didUpdateUplinkMuteStatus:*(a1 + 40)];
}

- (DIAudioSystemControllerDelegate)delegate
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