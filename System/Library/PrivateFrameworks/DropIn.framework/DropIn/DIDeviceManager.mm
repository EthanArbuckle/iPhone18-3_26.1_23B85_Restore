@interface DIDeviceManager
- (DIDeviceManager)initWithConnectionManager:(id)a3;
- (DIDeviceManagerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (NSArray)devices;
- (void)didAddDevice:(id)a3;
- (void)didLoadDevices:(id)a3;
- (void)didRemoveDevice:(id)a3;
- (void)didUpdateDevice:(id)a3;
- (void)setCurrentDevice:(id)a3;
- (void)setDelegate:(id)a3;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)a3;
@end

@implementation DIDeviceManager

- (DIDeviceManager)initWithConnectionManager:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DIDeviceManager;
  v5 = [(DIDeviceManager *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = objc_storeWeak(&v5->_connectionManager, v4);
    v9 = [v4 dispatcher];
    [v9 setDeviceListDelegate:v5];

    WeakRetained = objc_loadWeakRetained(&v5->_connectionManager);
    v11 = [WeakRetained dispatcher];
    [v11 setDeviceStatusDelegate:v5];

    v12 = objc_loadWeakRetained(&v5->_connectionManager);
    v13 = [v12 manager];
    [v13 addCheckInObserver:v5];
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(DIDeviceManager *)self connectionManager];
    v7 = [v6 manager];
    v8 = [v7 connection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    v10 = [(DIDeviceManager *)self connectionManager];
    v11 = [v10 manager];
    v12 = [v11 clientContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __31__DIDeviceManager_setDelegate___block_invoke_2;
    v14[3] = &unk_278FB9168;
    v14[4] = self;
    [v9 loadDevicesWithContext:v12 completionHandler:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __31__DIDeviceManager_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Set delegate proxy error: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __31__DIDeviceManager_setDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DILogHandleDeviceManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v10 = 138412546;
      v11 = &stru_285D02BA8;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_ERROR, "%@Set delegate load devices error: %@", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 32) didLoadDevices:v5];
      goto LABEL_7;
    }

    v7 = DILogHandleDeviceManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_ERROR, "%@Set delegate load devices. Devices are nil", &v10, 0xCu);
    }
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentDevice:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = &stru_285D02BA8;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Setting Current Device: %@", &v8, 0x16u);
  }

  currentDevice = self->_currentDevice;
  self->_currentDevice = v4;

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)devices
{
  v3 = self->_devices;
  objc_sync_enter(v3);
  v4 = [(NSArray *)self->_devices copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)didAddDevice:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = &stru_285D02BA8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did add device %@", buf, 0x16u);
  }

  v6 = [(DIDeviceManager *)self devices];
  objc_sync_enter(v6);
  v7 = [(DIDeviceManager *)self connectionManager];
  [v4 setConnectionManager:v7];

  v8 = [(DIDeviceManager *)self devices];
  v9 = [v8 arrayByAddingObject:v4];
  [(DIDeviceManager *)self setDevices:v9];

  if ([v4 isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:v4];
  }

  objc_sync_exit(v6);

  v10 = [(DIDeviceManager *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(DIDeviceManager *)self connectionManager];
    v13 = [v12 manager];
    v14 = [v13 clientQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__DIDeviceManager_didAddDevice___block_invoke;
    v16[3] = &unk_278FB8E48;
    v16[4] = self;
    v17 = v4;
    [DIUtilities onQueue:v14 block:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __32__DIDeviceManager_didAddDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didAddDevice:*(a1 + 40)];
}

- (void)didLoadDevices:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_285D02BA8;
    v41 = 2048;
    v42 = [v4 count];
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Load Devices %lu", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v9 = *v34;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = DILogHandleDeviceManager();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v40 = &stru_285D02BA8;
          v41 = 2112;
          v42 = v11;
          _os_log_impl(&dword_249DA7000, v12, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v13 = [(DIDeviceManager *)self devices];
  objc_sync_enter(v13);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = [(DIDeviceManager *)self connectionManager];
        [v18 setConnectionManager:v19];

        v20 = [v18 stateExpiration];
        [v18 setStateExpiration:v20];

        if ([v18 isCurrentDevice])
        {
          [(DIDeviceManager *)self setCurrentDevice:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v15);
  }

  [(DIDeviceManager *)self setDevices:v14];
  objc_sync_exit(v13);

  v21 = [(DIDeviceManager *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(DIDeviceManager *)self connectionManager];
    v24 = [v23 manager];
    v25 = [v24 clientQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__DIDeviceManager_didLoadDevices___block_invoke;
    v28[3] = &unk_278FB8F78;
    v28[4] = self;
    [DIUtilities onQueue:v25 block:v28];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __34__DIDeviceManager_didLoadDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 managerDidUpdateDevices:*(a1 + 32)];
}

- (void)didRemoveDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = &stru_285D02BA8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did remove device %@", buf, 0x16u);
  }

  v6 = [(DIDeviceManager *)self devices];
  objc_sync_enter(v6);
  v7 = MEMORY[0x277CBEB18];
  v8 = [(DIDeviceManager *)self devices];
  v9 = [v7 arrayWithArray:v8];

  [v9 removeObject:v4];
  v10 = [v9 copy];
  [(DIDeviceManager *)self setDevices:v10];

  if ([v4 isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:0];
  }

  objc_sync_exit(v6);
  v11 = [(DIDeviceManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(DIDeviceManager *)self connectionManager];
    v14 = [v13 manager];
    v15 = [v14 clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__DIDeviceManager_didRemoveDevice___block_invoke;
    v17[3] = &unk_278FB8E48;
    v17[4] = self;
    v18 = v4;
    [DIUtilities onQueue:v15 block:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __35__DIDeviceManager_didRemoveDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didRemoveDevice:*(a1 + 40)];
}

- (void)didUpdateDevice:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_285D02BA8;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_DEFAULT, "%@Did update device %@", buf, 0x16u);
  }

  obj = [(DIDeviceManager *)self devices];
  objc_sync_enter(obj);
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DIDeviceManager *)self devices];
      v8 = [v7 count];
      *buf = 138412546;
      v34 = &stru_285D02BA8;
      v35 = 2048;
      v36 = v8;
      _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Devices %lu", buf, 0x16u);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(DIDeviceManager *)self devices];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = DILogHandleDeviceManager();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v34 = &stru_285D02BA8;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_249DA7000, v14, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [(DIDeviceManager *)self devices];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        if ([v19 isEqual:{v3, obj}])
        {
          [v19 updateWithDevice:v3 updateState:1];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  objc_sync_exit(obj);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(DIDeviceManager *)self setDelegate:WeakRetained];
}

- (DIDeviceManagerDelegate)delegate
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