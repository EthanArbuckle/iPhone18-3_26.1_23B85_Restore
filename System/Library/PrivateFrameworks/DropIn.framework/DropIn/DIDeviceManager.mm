@interface DIDeviceManager
- (DIDeviceManager)initWithConnectionManager:(id)manager;
- (DIDeviceManagerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (NSArray)devices;
- (void)didAddDevice:(id)device;
- (void)didLoadDevices:(id)devices;
- (void)didRemoveDevice:(id)device;
- (void)didUpdateDevice:(id)device;
- (void)setCurrentDevice:(id)device;
- (void)setDelegate:(id)delegate;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)in;
@end

@implementation DIDeviceManager

- (DIDeviceManager)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = DIDeviceManager;
  v5 = [(DIDeviceManager *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = objc_storeWeak(&v5->_connectionManager, managerCopy);
    dispatcher = [managerCopy dispatcher];
    [dispatcher setDeviceListDelegate:v5];

    WeakRetained = objc_loadWeakRetained(&v5->_connectionManager);
    dispatcher2 = [WeakRetained dispatcher];
    [dispatcher2 setDeviceStatusDelegate:v5];

    v12 = objc_loadWeakRetained(&v5->_connectionManager);
    manager = [v12 manager];
    [manager addCheckInObserver:v5];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = delegateCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", buf, 0x16u);
  }

  if (delegateCopy)
  {
    connectionManager = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager manager];
    connection = [manager connection];
    v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager2 = [connectionManager2 manager];
    clientContext = [manager2 clientContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __31__DIDeviceManager_setDelegate___block_invoke_2;
    v14[3] = &unk_278FB9168;
    v14[4] = self;
    [v9 loadDevicesWithContext:clientContext completionHandler:v14];
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

- (void)setCurrentDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = &stru_285D02BA8;
    v10 = 2112;
    v11 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Setting Current Device: %@", &v8, 0x16u);
  }

  currentDevice = self->_currentDevice;
  self->_currentDevice = deviceCopy;

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

- (void)didAddDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = &stru_285D02BA8;
    v20 = 2112;
    v21 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did add device %@", buf, 0x16u);
  }

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
  connectionManager = [(DIDeviceManager *)self connectionManager];
  [deviceCopy setConnectionManager:connectionManager];

  devices2 = [(DIDeviceManager *)self devices];
  v9 = [devices2 arrayByAddingObject:deviceCopy];
  [(DIDeviceManager *)self setDevices:v9];

  if ([deviceCopy isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:deviceCopy];
  }

  objc_sync_exit(devices);

  delegate = [(DIDeviceManager *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager2 manager];
    clientQueue = [manager clientQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__DIDeviceManager_didAddDevice___block_invoke;
    v16[3] = &unk_278FB8E48;
    v16[4] = self;
    v17 = deviceCopy;
    [DIUtilities onQueue:clientQueue block:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __32__DIDeviceManager_didAddDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didAddDevice:*(a1 + 40)];
}

- (void)didLoadDevices:(id)devices
{
  v43 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_285D02BA8;
    v41 = 2048;
    v42 = [devicesCopy count];
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Load Devices %lu", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = devicesCopy;
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

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
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
        connectionManager = [(DIDeviceManager *)self connectionManager];
        [v18 setConnectionManager:connectionManager];

        stateExpiration = [v18 stateExpiration];
        [v18 setStateExpiration:stateExpiration];

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
  objc_sync_exit(devices);

  delegate = [(DIDeviceManager *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager2 manager];
    clientQueue = [manager clientQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__DIDeviceManager_didLoadDevices___block_invoke;
    v28[3] = &unk_278FB8F78;
    v28[4] = self;
    [DIUtilities onQueue:clientQueue block:v28];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __34__DIDeviceManager_didLoadDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 managerDidUpdateDevices:*(a1 + 32)];
}

- (void)didRemoveDevice:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = &stru_285D02BA8;
    v21 = 2112;
    v22 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did remove device %@", buf, 0x16u);
  }

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
  v7 = MEMORY[0x277CBEB18];
  devices2 = [(DIDeviceManager *)self devices];
  v9 = [v7 arrayWithArray:devices2];

  [v9 removeObject:deviceCopy];
  v10 = [v9 copy];
  [(DIDeviceManager *)self setDevices:v10];

  if ([deviceCopy isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:0];
  }

  objc_sync_exit(devices);
  delegate = [(DIDeviceManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    connectionManager = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__DIDeviceManager_didRemoveDevice___block_invoke;
    v17[3] = &unk_278FB8E48;
    v17[4] = self;
    v18 = deviceCopy;
    [DIUtilities onQueue:clientQueue block:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __35__DIDeviceManager_didRemoveDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didRemoveDevice:*(a1 + 40)];
}

- (void)didUpdateDevice:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = DILogHandleDeviceManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_285D02BA8;
    v35 = 2112;
    v36 = deviceCopy;
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
      devices = [(DIDeviceManager *)self devices];
      v8 = [devices count];
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
  devices2 = [(DIDeviceManager *)self devices];
  v10 = [devices2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(devices2);
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

      v10 = [devices2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  devices3 = [(DIDeviceManager *)self devices];
  v16 = [devices3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(devices3);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        if ([v19 isEqual:{deviceCopy, obj}])
        {
          [v19 updateWithDevice:deviceCopy updateState:1];
        }
      }

      v16 = [devices3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  objc_sync_exit(obj);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)in
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