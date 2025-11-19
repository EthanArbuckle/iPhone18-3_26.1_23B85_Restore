@interface DSScanManager
- (BOOL)_shouldUpdateDiscovery;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)_updateBLEDiscoveryFlags;
- (void)setDsScanFlags:(unint64_t)a3;
- (void)startScanning;
- (void)stopScanning;
@end

@implementation DSScanManager

- (void)startScanning
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_bleDiscovery;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE030]);
    [v4 setDispatchQueue:self->_dispatchQueue];
    [v4 setDiscoveryFlags:self->_bleDiscoveryFlags];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__DSScanManager_startScanning__block_invoke;
    v16[3] = &unk_278F85A28;
    v5 = v4;
    v17 = v5;
    v18 = self;
    [v5 setDeviceFoundHandler:v16];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__DSScanManager_startScanning__block_invoke_2;
    v13[3] = &unk_278F85A28;
    v6 = v5;
    v14 = v6;
    v15 = self;
    [v6 setDeviceLostHandler:v13];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__DSScanManager_startScanning__block_invoke_3;
    v10[3] = &unk_278F85A50;
    v3 = v6;
    v11 = v3;
    v12 = self;
    [(CBDiscovery *)v3 activateWithCompletion:v10];
    if (onceTokenDSScanManager != -1)
    {
      [DSScanManager startScanning];
    }

    v7 = logObjDSScanManager;
    if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "Starting Scanner", v9, 2u);
    }

    objc_storeStrong(&self->_bleDiscovery, v4);
  }

  if ([(DSScanManager *)self _shouldUpdateDiscovery])
  {
    if (onceTokenDSScanManager != -1)
    {
      [DSScanManager startScanning];
    }

    v8 = logObjDSScanManager;
    if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "Updating Discovery flags", v9, 2u);
    }

    [(CBDiscovery *)self->_bleDiscovery setDiscoveryFlags:self->_bleDiscoveryFlags];
  }
}

void *__30__DSScanManager_startScanning__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *__30__DSScanManager_startScanning__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

void __30__DSScanManager_startScanning__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      if (onceTokenDSScanManager != -1)
      {
        __30__DSScanManager_startScanning__block_invoke_3_cold_1();
      }

      v5 = logObjDSScanManager;
      if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_ERROR, "Failed to activate CBDiscovery", buf, 2u);
      }

      [*(a1 + 32) invalidate];
    }

    else
    {
      if (onceTokenDSScanManager != -1)
      {
        __30__DSScanManager_startScanning__block_invoke_3_cold_1();
      }

      v6 = logObjDSScanManager;
      if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "CBDiscovery Activated", v7, 2u);
      }
    }
  }
}

- (void)setDsScanFlags:(unint64_t)a3
{
  if (self->_dsScanFlags != a3)
  {
    self->_dsScanFlags = a3;
    [(DSScanManager *)self _updateBLEDiscoveryFlags];
  }
}

- (void)_updateBLEDiscoveryFlags
{
  self->_bleDiscoveryFlags = 0;
  dsScanFlags = self->_dsScanFlags;
  if ((dsScanFlags & 2) == 0)
  {
    bleDiscoveryFlags = 0;
    if ((dsScanFlags & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  self->_bleDiscoveryFlags = 0x800000000000000;
  if (onceTokenDSScanManager != -1)
  {
    __30__DSScanManager_startScanning__block_invoke_3_cold_1();
  }

  v5 = logObjDSScanManager;
  if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "Set DSInfo Discovery flag", buf, 2u);
  }

  bleDiscoveryFlags = self->_bleDiscoveryFlags;
  if ((self->_dsScanFlags & 4) != 0)
  {
LABEL_9:
    self->_bleDiscoveryFlags = bleDiscoveryFlags | 0x1000000000000000;
    if (onceTokenDSScanManager != -1)
    {
      [DSScanManager startScanning];
    }

    v6 = logObjDSScanManager;
    if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "Set DSAction Discovery flag", v7, 2u);
    }

    bleDiscoveryFlags = self->_bleDiscoveryFlags;
  }

LABEL_14:
  if (bleDiscoveryFlags)
  {
    self->_bleDiscoveryFlags = bleDiscoveryFlags | 0x1002000000;
  }
}

- (BOOL)_shouldUpdateDiscovery
{
  bleDiscovery = self->_bleDiscovery;
  if (bleDiscovery)
  {
    if ([(CBDiscovery *)bleDiscovery discoveryFlags]== self->_bleDiscoveryFlags)
    {
      LOBYTE(bleDiscovery) = 0;
    }

    else
    {
      if (onceTokenDSScanManager != -1)
      {
        __30__DSScanManager_startScanning__block_invoke_3_cold_1();
      }

      v4 = logObjDSScanManager;
      if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "Discovery flags need to be updated", v6, 2u);
      }

      LOBYTE(bleDiscovery) = 1;
    }
  }

  return bleDiscovery;
}

- (void)stopScanning
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSScanManager != -1)
  {
    __30__DSScanManager_startScanning__block_invoke_3_cold_1();
  }

  v3 = logObjDSScanManager;
  if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Stopping Scan", v7, 2u);
  }

  [(CBDiscovery *)self->_bleDiscovery invalidate];
  bleDiscovery = self->_bleDiscovery;
  self->_bleDiscovery = 0;

  self->_bleDiscoveryFlags = 0;
  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;
}

- (void)_deviceFound:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (onceTokenDSScanManager != -1)
  {
    __30__DSScanManager_startScanning__block_invoke_3_cold_1();
  }

  v5 = logObjDSScanManager;
  if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "Device found %@", &v8, 0xCu);
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (deviceFoundHandler)
  {
    deviceFoundHandler[2](deviceFoundHandler, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_deviceLost:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (onceTokenDSScanManager != -1)
  {
    __30__DSScanManager_startScanning__block_invoke_3_cold_1();
  }

  v5 = logObjDSScanManager;
  if (os_log_type_enabled(logObjDSScanManager, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "Device lost %@", &v8, 0xCu);
  }

  deviceLostHandler = self->_deviceLostHandler;
  if (deviceLostHandler)
  {
    deviceLostHandler[2](deviceLostHandler, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end