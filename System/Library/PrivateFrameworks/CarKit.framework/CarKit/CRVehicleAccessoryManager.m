@interface CRVehicleAccessoryManager
+ (BOOL)_isValidAccessoryMacAddress:(id)a3;
+ (id)_certificateSerialNumberForAccessory:(id)a3;
+ (id)managerInfoDataCache;
+ (id)sharedInstance;
+ (id)vehicleAccessQueue;
- (CRVehicleAccessoryManager)init;
- (CRVehicleAccessoryManagerDelegate)vehicleAccessoryDelegate;
- (id)_vehicleForAccessory:(id)a3;
- (id)_vehicleInfoDataForAccessory:(id)a3;
- (id)connectedAccessories;
- (id)connectedVehicleAccessories;
- (id)vehicleAccessoryForCertificateSerial:(id)a3;
- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)a3;
- (void)_primeConnectedVehicleAccessories;
- (void)_updateVehicle:(id)a3 usingAccessory:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)handleAccessoryConnect:(id)a3;
- (void)handleAccessoryDisconnect:(id)a3;
- (void)handleAccessoryInformationUpdate:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setVehicleAccessoryDelegate:(id)a3;
@end

@implementation CRVehicleAccessoryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CRVehicleAccessoryManager sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

- (id)connectedVehicleAccessories
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CRVehicleAccessoryManager *)self connectedAccessories];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CRVehicleAccessoryManager *)self _vehicleForAccessory:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)connectedAccessories
{
  v2 = [(CRVehicleAccessoryManager *)self accessoryManager];
  v3 = [v2 connectedAccessories];

  return v3;
}

+ (id)vehicleAccessQueue
{
  if (vehicleAccessQueue_onceToken != -1)
  {
    +[CRVehicleAccessoryManager vehicleAccessQueue];
  }

  v3 = vehicleAccessQueue___vehicleQueue;

  return v3;
}

uint64_t __43__CRVehicleAccessoryManager_sharedInstance__block_invoke()
{
  sharedInstance_sInstance = objc_alloc_init(CRVehicleAccessoryManager);

  return MEMORY[0x1EEE66BB8]();
}

- (CRVehicleAccessoryManager)init
{
  v12.receiver = self;
  v12.super_class = CRVehicleAccessoryManager;
  v2 = [(CRVehicleAccessoryManager *)&v12 init];
  if (v2)
  {
    v3 = [[CARObserverHashTable alloc] initWithProtocol:&unk_1F4803B28];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(CRVehicleAccessoryManager *)v2 setVehiclesBySerialNumber:v5];

    v6 = [MEMORY[0x1E6966DA0] sharedAccessoryManager];
    [(CRVehicleAccessoryManager *)v2 setAccessoryManager:v6];

    v7 = [(CRVehicleAccessoryManager *)v2 accessoryManager];
    [v7 registerForLocalNotifications];

    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__CRVehicleAccessoryManager_init__block_invoke;
    v9[3] = &unk_1E82FC248;
    objc_copyWeak(&v10, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __47__CRVehicleAccessoryManager_vehicleAccessQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.carkit.vehicleAccessoryManager", v2);
  v1 = vehicleAccessQueue___vehicleQueue;
  vehicleAccessQueue___vehicleQueue = v0;
}

void __33__CRVehicleAccessoryManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v6 selector:sel_handleAccessoryConnect_ name:*MEMORY[0x1E6966D70] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v6 selector:sel_handleAccessoryDisconnect_ name:*MEMORY[0x1E6966D78] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v6 selector:sel_handleAccessoryInformationUpdate_ name:*MEMORY[0x1E6966D88] object:0];

    [v6 _primeConnectedVehicleAccessories];
  }
}

- (void)_primeConnectedVehicleAccessories
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CRVehicleAccessoryManager *)self connectedAccessories];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(CRVehicleAccessoryManager *)self _vehicleForAccessory:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)managerInfoDataCache
{
  if (managerInfoDataCache_onceToken != -1)
  {
    +[CRVehicleAccessoryManager managerInfoDataCache];
  }

  v3 = managerInfoDataCache___dictionary;

  return v3;
}

uint64_t __49__CRVehicleAccessoryManager_managerInfoDataCache__block_invoke()
{
  managerInfoDataCache___dictionary = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)_isValidAccessoryMacAddress:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 isEqualToString:@"00:00:00:00:00:00"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)_certificateSerialNumberForAccessory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 certData];
    v6 = v5;
    if (v5)
    {
      v5 = [v5 length];
      if (v5)
      {
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v7 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
        v16 = getMFAACreateCertificateSerialNumberSymbolLoc_ptr;
        if (!getMFAACreateCertificateSerialNumberSymbolLoc_ptr)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke;
          v12[3] = &unk_1E82FC8F8;
          v12[4] = &v13;
          __getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(v12);
          v7 = v14[3];
        }

        _Block_object_dispose(&v13, 8);
        if (!v7)
        {
          v11 = [CRCarPlayAppPolicyEvaluator effectivePolicyForAppDeclaration:inVehicleWithCertificateSerial:];
          _Block_object_dispose(&v13, 8);
          _Unwind_Resume(v11);
        }

        v5 = v7(v6);
        if (!v5)
        {
          v8 = CarGeneralLogging();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [CRVehicleAccessoryManager _certificateSerialNumberForAccessory:v8];
          }

          v5 = 0;
        }
      }
    }

    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(CRVehicleAccessoryManager *)self accessoryManager];
  [v4 unregisterForLocalNotifications];

  v5.receiver = self;
  v5.super_class = CRVehicleAccessoryManager;
  [(CRVehicleAccessoryManager *)&v5 dealloc];
}

- (void)setVehicleAccessoryDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_vehicleAccessoryDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      [(CRVehicleAccessoryManager *)self addObserver:obj];
    }

    v6 = objc_loadWeakRetained(&self->_vehicleAccessoryDelegate);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_vehicleAccessoryDelegate);
      [(CRVehicleAccessoryManager *)self removeObserver:v7];
    }

    objc_storeWeak(&self->_vehicleAccessoryDelegate, obj);
    v5 = obj;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleAccessoryManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleAccessoryManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (id)_vehicleForAccessory:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([objc_opt_class() _isVehicleAccessory:v4])
  {
    v5 = [objc_opt_class() _certificateSerialNumberForAccessory:v4];
    if (v5)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__4;
      v17 = __Block_byref_object_dispose__4;
      v18 = 0;
      v6 = [objc_opt_class() vehicleAccessQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__CRVehicleAccessoryManager__vehicleForAccessory___block_invoke;
      v10[3] = &unk_1E82FD2A0;
      p_buf = &buf;
      v10[4] = self;
      v5 = v5;
      v11 = v5;
      v12 = v4;
      dispatch_sync(v6, v10);

      v7 = *(*(&buf + 1) + 40);
      _Block_object_dispose(&buf, 8);

      goto LABEL_10;
    }

    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRVehicleAccessoryManager *)v4 _vehicleForAccessory:v8];
    }
  }

  else
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Accessory %@ does not support CarPlay", &buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

void __50__CRVehicleAccessoryManager__vehicleForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vehiclesBySerialNumber];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = [v6 connectionID];
    v8 = [v7 unsignedIntegerValue];
    v9 = [*(a1 + 48) connectionID];

    if (v8 != v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(*(*(a1 + 56) + 8) + 40);

      [v10 _updateVehicle:v12 usingAccessory:v11];
    }
  }

  else
  {
    v13 = objc_alloc_init(CRVehicleAccessory);
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(*(*(a1 + 56) + 8) + 40) setCertificateSerialNumber:*(a1 + 40)];
    v16 = (a1 + 48);
    [*(a1 + 32) _updateVehicle:*(*(*(a1 + 56) + 8) + 40) usingAccessory:*(a1 + 48)];
    v17 = [*(a1 + 32) vehiclesBySerialNumber];
    [v17 setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 40)];

    v18 = CarGeneralLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __50__CRVehicleAccessoryManager__vehicleForAccessory___block_invoke_cold_1(v16, v18);
    }
  }
}

- (void)_updateVehicle:(id)a3 usingAccessory:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setAccessory:v7];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "connectionID")}];
  [v6 setConnectionID:v8];

  v9 = [(CRVehicleAccessoryManager *)self _vehicleInfoDataForAccessory:v6];
  [v6 setVehicleInfoDataCache:v9];

  [v6 _updateName];
  v10 = [v7 protocolStrings];
  if (v10)
  {
    [v6 setAccessoryProtocols:v10];
  }

  v11 = [v7 macAddress];
  if ([objc_opt_class() _isValidAccessoryMacAddress:v11])
  {
    v12 = [v7 macAddress];
    [v6 setBluetoothAddress:v12];
  }

  else
  {
    [v6 setBluetoothAddress:0];
  }

  [v6 setTransportType:{+[CRVehicleAccessory _transportTypeForExternalAccessoryTransportType:](CRVehicleAccessory, "_transportTypeForExternalAccessoryTransportType:", objc_msgSend(v7, "transportType"))}];
  if (CRIsInternalInstall())
  {
    v13 = [v7 modelNumber];
    if (v13)
    {
      [v6 setVehicleModelName:v13];
    }
  }

  [v6 setSupportsUSBCarPlay:{objc_msgSend(v7, "supportsUSBCarPlay")}];
  [v6 setSupportsWirelessCarPlay:{objc_msgSend(v7, "supportsWirelessCarPlay")}];
  if ([v7 supportsOOBBTPairing])
  {
    v14 = 1;
  }

  else
  {
    v14 = [v7 supportsOOBBTPairing2];
  }

  [v6 setSupportsWiredBluetoothPairing:v14];
  [v6 setSupportsCarPlayConnectionRequest:{objc_msgSend(v7, "supportsCarPlayConnectionRequest")}];
  [v6 setSupportsBluetoothLE:0];
  v15 = [v7 accessoryCapabilities];
  v16 = CarGeneralLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if ((v15 & 0x200000) != 0)
    {
      v17 = @"YES";
    }

    v19 = 138543362;
    v20 = v17;
    _os_log_impl(&dword_1C81FC000, v16, OS_LOG_TYPE_DEFAULT, "vehicle supports theme assets: %{public}@", &v19, 0xCu);
  }

  [v6 setSupportsThemeAssets:(v15 >> 21) & 1];
  [v6 setSupportsEnhancedIntegration:{objc_msgSend(v7, "supportsCarPlayAppLinks")}];
  v18 = [v7 ppid];
  [v6 setPPID:v18];
}

- (id)_vehicleInfoDataForAccessory:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 certificateSerialNumber];
  if (v4)
  {
    v5 = [objc_opt_class() managerInfoDataCache];
    v6 = [v5 objectForKey:v4];

    v7 = CarGeneralLogging();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Fetched Vehicle Info data from cache for %@", &v16, 0xCu);
      }

      v9 = v6;
    }

    else
    {
      if (v8)
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Fetching Vehicle Info data from accessory for %@", &v16, 0xCu);
      }

      v12 = [v3 accessory];
      v13 = [v12 getVehicleInfoData];

      if (v13)
      {
        v14 = [objc_opt_class() managerInfoDataCache];
        [v14 setObject:v13 forKey:v4];
      }

      v9 = v13;
    }

    v10 = v9;
    v11 = v9;
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "No available serial for Vehicle Info data request for %@", &v16, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)handleAccessoryConnect:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E6966D80]];

  v6 = [(CRVehicleAccessoryManager *)self _vehicleForAccessory:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v9 = __52__CRVehicleAccessoryManager_handleAccessoryConnect___block_invoke;
    v10 = v6;
LABEL_5:
    v8[2] = v9;
    v8[3] = &unk_1E82FBE38;
    v8[4] = self;
    v8[5] = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    goto LABEL_6;
  }

  v11 = [v5 macAddress];

  if (v11)
  {
    v8 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v9 = __52__CRVehicleAccessoryManager_handleAccessoryConnect___block_invoke_2;
    v10 = v5;
    goto LABEL_5;
  }

LABEL_6:
}

void __52__CRVehicleAccessoryManager_handleAccessoryConnect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 accessoryManager:*(a1 + 32) didConnectVehicleAccessory:*(a1 + 40)];
}

void __52__CRVehicleAccessoryManager_handleAccessoryConnect___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) observers];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) macAddress];
  [v4 accessoryManager:v2 didConnectUnsupportedAccessoryWithBluetoothAddress:v3];
}

- (void)handleAccessoryDisconnect:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E6966D80]];

  v6 = [v5 connectionID];
  v7 = [objc_opt_class() vehicleAccessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CRVehicleAccessoryManager_handleAccessoryDisconnect___block_invoke;
  v8[3] = &unk_1E82FD2C8;
  v8[4] = self;
  v8[5] = v6;
  dispatch_async(v7, v8);
}

void __55__CRVehicleAccessoryManager_handleAccessoryDisconnect___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) vehiclesBySerialNumber];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = [v8 connectionID];
      if (v9)
      {
        v10 = v9;
        v11 = [v8 connectionID];
        v12 = [v11 unsignedIntegerValue];
        v13 = *(a1 + 40);

        if (v12 == v13)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v14 = v8;

    if (!v14)
    {
      return;
    }

    [v14 setConnectionID:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CRVehicleAccessoryManager_handleAccessoryDisconnect___block_invoke_2;
    v15[3] = &unk_1E82FBE38;
    v15[4] = *(a1 + 32);
    v16 = v14;
    v3 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

LABEL_13:
}

void __55__CRVehicleAccessoryManager_handleAccessoryDisconnect___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 accessoryManager:*(a1 + 32) didDisconnectVehicleAccessory:*(a1 + 40)];
}

- (void)handleAccessoryInformationUpdate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() vehicleAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CRVehicleAccessoryManager_handleAccessoryInformationUpdate___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__CRVehicleAccessoryManager_handleAccessoryInformationUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x1E6966D80]];

  v4 = [*(a1 + 40) _vehicleForAccessory:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 certificateSerialNumber];

    if (v6)
    {
      v7 = [objc_opt_class() managerInfoDataCache];
      v8 = [v5 certificateSerialNumber];
      [v7 removeObjectForKey:v8];
    }

    v9 = [*(a1 + 40) _vehicleInfoDataForAccessory:v5];
    [v5 setVehicleInfoDataCache:v9];

    if ([v5 _updateName])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__CRVehicleAccessoryManager_handleAccessoryInformationUpdate___block_invoke_2;
      v10[3] = &unk_1E82FBE38;
      v10[4] = *(a1 + 40);
      v11 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
    }
  }
}

void __62__CRVehicleAccessoryManager_handleAccessoryInformationUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 accessoryManager:*(a1 + 32) didUpdateVehicleAccessory:*(a1 + 40)];
}

- (id)vehicleAccessoryForCertificateSerial:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v5 = [objc_opt_class() vehicleAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CRVehicleAccessoryManager_vehicleAccessoryForCertificateSerial___block_invoke;
  block[3] = &unk_1E82FD2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__CRVehicleAccessoryManager_vehicleAccessoryForCertificateSerial___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) vehiclesBySerialNumber];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(CRVehicleAccessoryManager *)self connectedAccessories];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      if ([v10 connectionID] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = [(CRVehicleAccessoryManager *)self _vehicleForAccessory:v11];
  }

  else
  {
LABEL_9:

    v11 = 0;
LABEL_12:
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (CRVehicleAccessoryManagerDelegate)vehicleAccessoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_vehicleAccessoryDelegate);

  return WeakRetained;
}

- (void)_vehicleForAccessory:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Accessory %@ does not have a certificate serial number", &v2, 0xCu);
}

void __50__CRVehicleAccessoryManager__vehicleForAccessory___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_DEBUG, "Accessory %@ added to vehiclesBySerialNumber", &v3, 0xCu);
}

@end