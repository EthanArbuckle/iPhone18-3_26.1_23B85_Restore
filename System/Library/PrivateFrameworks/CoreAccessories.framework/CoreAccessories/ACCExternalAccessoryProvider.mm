@interface ACCExternalAccessoryProvider
+ (id)accessoryDictionaryForLogging:(id)a3;
- (ACCExternalAccessoryProvider)initWithDelegate:(id)a3 capabilities:(int)a4;
- (ACCExternalAccessoryProviderProtocol)delegate;
- (BOOL)hasEAEntitlement;
- (BOOL)hasEAProtocols;
- (BOOL)hasEASandbox;
- (id)_findAccessoryForPrimaryUUID:(id)a3;
- (id)currentVehicleInfo:(id)a3;
- (void)ExternalAccessoryArrived:(id)a3;
- (void)ExternalAccessoryLeft:(id)a3;
- (void)_constructClientRegistrationInfo;
- (void)_removeAccessoryForPrimaryUUID:(id)a3;
- (void)_removeAllAccessories;
- (void)accessoryCloseExternalAccessorySession:(id)a3;
- (void)closeExternalAccessorySession:(id)a3;
- (void)createExternalAccessorySessionForProtocol:(id)a3 accessoryUUID:(id)a4 withEASessionReply:(id)a5;
- (void)dealloc;
- (void)destinationInformation:(id)a3 forUUID:(id)a4;
- (void)enqueueLocationNMEASentence:(id)a3 forUUID:(id)a4 withTimestamps:(id)a5;
- (void)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5;
- (void)handleIncomingNotification:(id)a3 withPayload:(id)a4 aboutAccessory:(id)a5;
- (void)openSocketForAccessoryToApp:(id)a3;
- (void)openSocketForAppToAccessory:(id)a3;
- (void)requestAccessoryWifiCredentials:(id)a3;
- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5;
- (void)sendNMEAFilterList:(id)a3 forAccessoryUUID:(id)a4;
- (void)sendOutgoingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8;
- (void)startDestinationSharingForUUID:(id)a3 options:(unint64_t)a4;
- (void)startLocationInformationForAccessoryUUID:(id)a3;
- (void)stopDestinationSharingForUUID:(id)a3;
- (void)stopLocationInformationForAccessoryUUID:(id)a3;
- (void)updateAccessoryInfo:(id)a3 forUUID:(id)a4;
- (void)vehicleStatusUpdate:(id)a3 forUUID:(id)a4;
@end

@implementation ACCExternalAccessoryProvider

- (void)_constructClientRegistrationInfo
{
  v13[3] = *MEMORY[0x277D85DE8];
  if ((self->_clientCapabilities & 0x200) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:getprogname() encoding:4];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 objectForInfoDictionaryKey:@"UISupportedExternalAccessoryProtocols"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[ACCExternalAccessoryProvider clientCapabilities](self, "clientCapabilities")}];
  v13[0] = v4;
  v12[0] = @"ACCExternalAccessoryClientBundleIDKey";
  v12[1] = @"ACCExternalAccessoryClientEAProtocolsKey";
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v12[2] = @"ACCExternalAccessoryClientEACapablitiesKey";
  v13[1] = v8;
  v13[2] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  eaClientRegistrationInfo = self->_eaClientRegistrationInfo;
  self->_eaClientRegistrationInfo = v9;

  if (!v6)
  {
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasEASandbox
{
  getpid();
  v2 = *MEMORY[0x277D861D8];
  v3 = sandbox_check();
  if (v3)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 3;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Client not sandboxed to EA service", buf, 2u);
    }
  }

  return v3 == 0;
}

- (BOOL)hasEAEntitlement
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.security.exception.mach-lookup.global-name", 0);
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.externalaccessory.showallaccessories", 0);
    CFRelease(v3);
    if (-[NSObject containsObject:](v4, "containsObject:", @"com.apple.accessories.externalaccessory-server") & 1) != 0 || ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v9 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Client not entitled to EA service", v12, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v4 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ACCExternalAccessoryProvider hasEAEntitlement];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)hasEAProtocols
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"UISupportedExternalAccessoryProtocols"];

  v4 = [v3 count];
  if (!v4)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 3;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] No EA protocols found", v9, 2u);
    }
  }

  return v4 != 0;
}

- (ACCExternalAccessoryProvider)initWithDelegate:(id)a3 capabilities:(int)a4
{
  v6 = a3;
  init_logging();
  v20.receiver = self;
  v20.super_class = ACCExternalAccessoryProvider;
  v7 = [(ACCExternalAccessoryProvider *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    serverConnection = v8->_serverConnection;
    v8->_serverConnection = 0;

    remoteObject = v8->_remoteObject;
    v8->_remoteObject = 0;

    v11 = [MEMORY[0x277CBEB58] set];
    currentlyConnectedAccessories = v8->_currentlyConnectedAccessories;
    v8->_currentlyConnectedAccessories = v11;

    v8->_clientCapabilities = a4;
    [(ACCExternalAccessoryProvider *)v8 _constructClientRegistrationInfo];
    objc_initWeak(&location, v8);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__ACCExternalAccessoryProvider_initWithDelegate_capabilities___block_invoke;
    v17 = &unk_278486228;
    objc_copyWeak(&v18, &location);
    accessoryServer_registerAvailabilityChangedHandler("com.apple.accessories.externalaccessory-server.availability-changed", &v14);
    [(ACCExternalAccessoryProvider *)v8 connectToServer:1, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __62__ACCExternalAccessoryProvider_initWithDelegate_capabilities___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Server availability changed! State: %d", v11, 8u);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Trying to connect to server...", v11, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained connectToServer:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  accessoryServer_unregisterAvailabilityChangedHandler();
  v3 = [(ACCExternalAccessoryProvider *)self serverConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = ACCExternalAccessoryProvider;
  [(ACCExternalAccessoryProvider *)&v4 dealloc];
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC begin invalidation handler!", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setRemoteObject:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setServerConnection:0];

  accessoryServer_serverIsUnreachable();
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _removeAllAccessories];

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v10 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC connection invalidated!", v12, 2u);
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_213(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC connection interrupted!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 invalidate];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setServerConnection:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setRemoteObject:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _removeAllAccessories];
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2();
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_216(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2();
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_219(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] serverResult: %d", buf, 8u);
  }

  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v27 = [WeakRetained serverConnection];
    [v27 invalidate];
LABEL_33:

    goto LABEL_34;
  }

  v9 = [*(a1 + 32) delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29 = v5;
      obj = v5;
      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        v17 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v19 = [[_ACCExternalAccessoryInfo alloc] initWithAccessoryInfoDictionary:*(*(&v31 + 1) + 8 * i)];
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects)
            {
              v22 = gNumLogObjects < 3;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v37 = v20;
                v38 = 1024;
                v39 = v21;
                _os_log_error_impl(&dword_221CB0000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = v17;
              v24 = v17;
            }

            else
            {
              v24 = *(gLogObjects + 16);
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(_ACCExternalAccessoryInfo *)v19 name];
              *buf = 138412290;
              v37 = v25;
              _os_log_impl(&dword_221CB0000, v24, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] adding accessory %@ to currentlyConnectedAccessories", buf, 0xCu);
            }

            [*(*(a1 + 32) + 48) addObject:v19];
            v26 = [(_ACCExternalAccessoryInfo *)v19 fullAccessoryInfo];
            [WeakRetained addObject:v26];
          }

          v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v15);
      }

      v27 = [*(a1 + 32) delegate];
      [v27 initialEAAccessoriesAttachedAfterClientConnection:WeakRetained];
      v5 = v29;
      goto LABEL_33;
    }
  }

LABEL_34:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)requestAccessoryWifiCredentials:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#CarPlay] requestAccessoryWiFiCredentials: %@", &v11, 0xCu);
  }

  v8 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (v8)
  {
    v9 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v9 requestAccessoryWiFiCredentials:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendDeviceIdentifierNotification:(id)a3 usbIdentifier:(id)a4 forUUID:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (v10)
  {
    v11 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v11 sendDeviceIdentifierNotification:v12 usbIdentifier:v8 forUUID:v9];
  }
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 forUUID:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413314;
    v24 = v16;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "[#CarPlay] sendWiredCarPlayAvailable: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@", &v23, 0x34u);
  }

  v20 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (v20)
  {
    v21 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v21 sendWiredCarPlayAvailable:v12 usbIdentifier:v13 wirelessAvailable:v14 bluetoothIdentifier:v15 forUUID:v16];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7 forUUID:(id)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (gLogObjects)
  {
    v20 = gNumLogObjects < 3;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v22 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  else
  {
    v22 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413570;
    v27 = v19;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v18;
    _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "[#CarPlay] sendWiredCarPlayAvailable: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@ assetsAvailable %@", &v26, 0x3Eu);
  }

  v23 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (v23)
  {
    v24 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v24 sendWiredCarPlayAvailable:v14 usbIdentifier:v15 wirelessAvailable:v16 bluetoothIdentifier:v17 themeAssetsAvailable:v18 forUUID:v19];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)destinationInformation:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessoryProvider destinationInformation:forUUID:];
  }

  v11 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (v11)
  {
    v12 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v12 destinationInformation:v6 forUUID:v7];
  }
}

- (void)startLocationInformationForAccessoryUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v5)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#Location] sending activateLocationForUUID %@", &v13, 0xCu);
    }

    v9 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v9 activateLocationForUUID:v4];
  }

  else
  {
    if (v7)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send activateLocationForUUID %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendNMEAFilterList:(id)a3 forAccessoryUUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v8)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "[#Location] sending sendNMEAFilterList %@ for UUID: %@", &v16, 0x16u);
    }

    v12 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v12 sendNMEAFilterList:v6 forUUID:v7];
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send sendNMEAFilterList %@ for UUID: %@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopLocationInformationForAccessoryUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v5)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#Location] sending stopLocationForUUID %@", &v13, 0xCu);
    }

    v9 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [v9 stopLocationForUUID:v4];
  }

  else
  {
    if (v7)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send stopLocationForUUID %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_findAccessoryForPrimaryUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__ACCExternalAccessoryProvider__findAccessoryForPrimaryUUID___block_invoke;
  v15[3] = &unk_2784864E0;
  v6 = v4;
  v16 = v6;
  v7 = [v5 objectsPassingTest:v15];

  if (v7 && [v7 count])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessoryProvider *)v7 _findAccessoryForPrimaryUUID:?];
    }

    v11 = [v7 anyObject];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "Can't find accessory for primaryUUID %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __61__ACCExternalAccessoryProvider__findAccessoryForPrimaryUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 primaryUUID];
  v6 = [*(a1 + 32) isEqualToString:v5];
  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

- (void)_removeAccessoryForPrimaryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ACCExternalAccessoryProvider__removeAccessoryForPrimaryUUID___block_invoke;
  v14[3] = &unk_2784864E0;
  v6 = v4;
  v15 = v6;
  v7 = [v5 objectsPassingTest:v14];

  if (v7 && [v7 count])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessoryProvider *)v7 _findAccessoryForPrimaryUUID:?];
    }

    v9 = [v7 anyObject];
    v12 = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
    [v12 removeObject:v9];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "Can't find primaryUUID %@ to remove", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__ACCExternalAccessoryProvider__removeAccessoryForPrimaryUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 primaryUUID];
  v6 = [*(a1 + 32) isEqualToString:v5];
  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

- (void)_removeAllAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v5 = [v3 setWithSet:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyAccessoryInfo];
        [(ACCExternalAccessoryProvider *)self ExternalAccessoryLeft:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ExternalAccessoryArrived:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:v4];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd received EAAccessoryArrived %@, verifyAccessoryConnectionStatus", buf, 0xCu);
  }

  v9 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v10 = [v9 remoteObjectProxyWithErrorHandler:&__block_literal_global_233_0];
  v11 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
  v12 = [v4 objectForKey:@"IAPAppConnectionIDKey"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_234;
  v15[3] = &unk_278486530;
  v16 = v4;
  v17 = self;
  v13 = v4;
  [v10 verifyAccessoryConnectionStatus:v11 legacyConnectionID:v12 withReply:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_234(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v8 = [*(a1 + 32) objectForKey:@"IAPAppConnectionIDKey"];
    *buf = 138412802;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd with primaryUUID %@, legacyConnectionID %@ connected = %d", buf, 0x1Cu);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) objectForKey:@"IAPAppAccessoryNameKey"];
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "adding accessory %@ to currentlyConnectedAccessories", buf, 0xCu);
    }

    v12 = [[_ACCExternalAccessoryInfo alloc] initWithAccessoryInfoDictionary:*(a1 + 32)];
    [*(*(a1 + 40) + 48) addObject:v12];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Dispatching async to main thread...", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_235;
    v18[3] = &unk_278486508;
    v15 = *(a1 + 40);
    v19 = v12;
    v20 = v15;
    v16 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_235(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) fullAccessoryInfo];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] In async to main thread: accessoryd received EAAccessoryArrived: %@", &v9, 0xCu);
  }

  v6 = [*(a1 + 40) delegate];
  v7 = [*(a1 + 32) fullAccessoryInfo];
  [v6 EAAccessoryArrived:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)ExternalAccessoryLeft:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 objectForKey:@"IAPAppAccessoryNameKey"];
    v9 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd received EAAccessoryLeft %@, UUID %@", buf, 0x16u);
  }

  v10 = [(ACCExternalAccessoryProvider *)self delegate];

  if (v10)
  {
    v11 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v12 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:v11];

    if (v12)
    {
      v13 = [v12 copyAccessoryInfo];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    [(ACCExternalAccessoryProvider *)self _removeAccessoryForPrimaryUUID:v14];

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v15 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Dispatching async to main thread...", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ACCExternalAccessoryProvider_ExternalAccessoryLeft___block_invoke;
    block[3] = &unk_278486558;
    v20 = v13;
    v21 = self;
    v22 = v4;
    v17 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __54__ACCExternalAccessoryProvider_ExternalAccessoryLeft___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects <= 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v4 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 32)];
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory accInfo %@", &v17, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) objectForKey:@"IAPAppAccessoryNameKey"];
      v11 = [*(a1 + 32) objectForKey:@"IAPAppConnectionIDKey"];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory %@ with connectionID %@", &v17, 0x16u);
    }

    v12 = [*(a1 + 40) delegate];
    [v12 EAAccessoryLeft:*(a1 + 32)];
  }

  else
  {
    if (v3)
    {
      v5 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v5 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 48)];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_221CB0000, v5, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory accessoryInfo %@", &v17, 0xCu);
    }

    v12 = [*(a1 + 40) delegate];
    v15 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 48)];
    [v12 EAAccessoryLeft:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingNotification:(id)a3 withPayload:(id)a4 aboutAccessory:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 objectForKey:@"IAPAppAccessoryNameKey"];
    v14 = [v9 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v17 = 136316162;
    v18 = "[ACCExternalAccessoryProvider handleIncomingNotification:withPayload:aboutAccessory:]";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] received %s accessory %@, UUID %@ notificationName %@ notificationPayload %@", &v17, 0x34u);
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:v7 object:0 userInfo:v8];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessoryProvider handleIncomingExternalAccessoryData:forEASessionIdentifier:withReply:];
  }

  v14 = [(ACCExternalAccessoryProvider *)self delegate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__ACCExternalAccessoryProvider_handleIncomingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke;
  v17[3] = &unk_278486580;
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v14 handleIncomingExternalAccessoryData:v8 forEASessionIdentifier:v16 withReply:v17];
}

uint64_t __101__ACCExternalAccessoryProvider_handleIncomingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 3;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "client DID NOT handle incoming EA data for eaSessionUUID %@", &v10, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)accessoryCloseExternalAccessorySession:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Accessory closed EA session for eaSessionUUID %@", &v11, 0xCu);
  }

  v8 = [(ACCExternalAccessoryProvider *)self delegate];

  if (v8)
  {
    v9 = [(ACCExternalAccessoryProvider *)self delegate];
    [v9 accessoryClosedEASession:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enqueueLocationNMEASentence:(id)a3 forUUID:(id)a4 withTimestamps:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412802;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_debug_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEBUG, "[#Location] enqueue Location nmea sentence: %@ for UUID %@ timestamps %@", &v23, 0x20u);
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  [v14 timeIntervalSince1970];
  v16 = v15;

  v17 = [v10 mutableCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v17 addObject:v18];

  v19 = [(ACCExternalAccessoryProvider *)self delegate];

  if (v19)
  {
    v20 = [(ACCExternalAccessoryProvider *)self delegate];
    [v20 nmeaSentenceArrived:v8 forAccessoryUUID:v9 withTimestamps:v17];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v20 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_221CB0000, v20, OS_LOG_TYPE_DEFAULT, "[#Location] No delegate to process nmea sentence: %@ for UUID %@, timestamps %@", &v23, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)createExternalAccessorySessionForProtocol:(id)a3 accessoryUUID:(id)a4 withEASessionReply:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "!!!!! createExternalAccessorySessionForProtocol for protocol %@", buf, 0xCu);
  }

  v14 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239_0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke_240;
  v18[3] = &unk_2784865A8;
  v19 = v10;
  v16 = v10;
  [v15 createExternalAccessorySessionForProtocol:v8 accessoryUUID:v9 withReply:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke_240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109890;
    v15[1] = a2;
    v16 = 1024;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "createdExternalAccessorySession result %d, useSocketInterface = %d, sessionID %llu, eaSessionUUID %@", v15, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, a3, a4, v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)openSocketForAccessoryToApp:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is openSocketForAccessoryToApp...", v10, 2u);
  }

  v8 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_243];
  [v9 openSocketFromAccessoryToApp:v4];
}

void __60__ACCExternalAccessoryProvider_openSocketForAccessoryToApp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)openSocketForAppToAccessory:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is openSocketForAppToAccessory...", v10, 2u);
  }

  v8 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_245];
  [v9 openSocketFromAppToAccessory:v4];
}

void __60__ACCExternalAccessoryProvider_openSocketForAppToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)closeExternalAccessorySession:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is closeExternalAccessorySession...", v10, 2u);
  }

  v8 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_247];
  [v9 clientCloseExternalAccessorySession:v4];
}

void __62__ACCExternalAccessoryProvider_closeExternalAccessorySession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)sendOutgoingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "sendOutgoingExternalAccessoryData...", buf, 2u);
  }

  v14 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_249];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke_250;
  v18[3] = &unk_278486580;
  v19 = v9;
  v20 = v10;
  v16 = v10;
  v17 = v9;
  [v15 processOutgoingExternalAccessoryData:v8 forEASessionIdentifier:v17 withReply:v18];
}

void __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

uint64_t __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke_250(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 3;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "error sending outgoing EA data for eaSessionUUID %@", &v10, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startDestinationSharingForUUID:(id)a3 options:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = v6;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "from accessoryd: received startDestinationSharingForUUID, UUID %@, options %llxh", &v25, 0x16u);
  }

  v10 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:v6];
  v11 = [v10 destinationSharingOptions];
  [v10 setDestinationSharingOptions:a4];
  v12 = [(ACCExternalAccessoryProvider *)self delegate];

  if (v12)
  {
    if (v11 != a4)
    {
      v13 = [(ACCExternalAccessoryProvider *)self delegate];
      if (v13)
      {
        v14 = v13;
        v15 = [(ACCExternalAccessoryProvider *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [(ACCExternalAccessoryProvider *)self delegate];
          v18 = [v10 copyAccessoryInfo];
          [v17 updateAccessoryInfo:v18];
        }
      }
    }

    v19 = [(ACCExternalAccessoryProvider *)self delegate];
    v20 = objc_opt_respondsToSelector();

    v21 = [(ACCExternalAccessoryProvider *)self delegate];
    v22 = v21;
    if (v20)
    {
      [v21 startDestinationSharingForUUID:v6 options:a4];
LABEL_20:

      goto LABEL_21;
    }

    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v22 = [(ACCExternalAccessoryProvider *)self delegate];
      [v22 startDestinationSharingForUUID:v6];
      goto LABEL_20;
    }
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopDestinationSharingForUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "from accessoryd: received stopDestinationSharingForUUID, UUID %@", &v14, 0xCu);
  }

  v8 = [(ACCExternalAccessoryProvider *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(ACCExternalAccessoryProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(ACCExternalAccessoryProvider *)self delegate];
      [v12 stopDestinationSharingForUUID:v4];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)currentVehicleInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] a process is asking for currentVehicleInfo for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v8 = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_258_0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_259;
  v14[3] = &unk_2784865D0;
  v10 = v4;
  v15 = v10;
  p_buf = &buf;
  [v9 vehicleInformationForUUID:v10 withReply:v14];

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_cold_2();
  }
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_259(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] currentVehicleInfo for %@ currentVehicleInfoDictionary %@", &v11, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)vehicleStatusUpdate:(id)a3 forUUID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received vehicleStatusUpdate %@ for UUID %@", &v19, 0x16u);
  }

  v11 = [(ACCExternalAccessoryProvider *)self delegate];
  if (v11 && (v12 = v11, [(ACCExternalAccessoryProvider *)self delegate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    v15 = [(ACCExternalAccessoryProvider *)self delegate];
    [v15 vehicleStatusUpdate:v6 forAccessoryUUID:v7];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v15 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(ACCExternalAccessoryProvider *)self delegate];
      v19 = 138412802;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received vehicleStatusUpdate %@ for UUID %@, but no delegate(%@) or not able to respond to message", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryInfo:(id)a3 forUUID:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 objectForKey:@"IAPAppConnectionIDKey"];
    v12 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:v6];
    *buf = 138412802;
    v31 = v7;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "from accessoryd: received updateAccessoryInfo for UUID %@ (connection ID: %@), %@", buf, 0x20u);
  }

  v13 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:v7];
  [v13 updateAccessoryInfo:v6];
  v14 = [v13 fullAccessoryInfo];
  v15 = [(ACCExternalAccessoryProvider *)self delegate];
  if (v15 && (v16 = v15, [(ACCExternalAccessoryProvider *)self delegate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_opt_respondsToSelector(), v17, v16, (v18 & 1) != 0))
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __60__ACCExternalAccessoryProvider_updateAccessoryInfo_forUUID___block_invoke;
    v25[3] = &unk_2784865F8;
    v26 = v7;
    v27 = v6;
    v28 = v14;
    v29 = self;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    v19 = v26;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 objectForKey:@"IAPAppConnectionIDKey"];
      v22 = [(ACCExternalAccessoryProvider *)self delegate];
      v23 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:v6];
      *buf = 138413058;
      v31 = v7;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received updateAccessoryInfo for UUID %@ (connection ID: %@), but no delegate(%@) or not able to respond to message, %@", buf, 0x2Au);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __60__ACCExternalAccessoryProvider_updateAccessoryInfo_forUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) objectForKey:@"IAPAppConnectionIDKey"];
    v7 = *(a1 + 48);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] In async to main thread: accessoryd received updateAccessoryInfo for UUID %@ (connection ID: %@), %@", &v10, 0x20u);
  }

  v8 = [*(a1 + 56) delegate];
  [v8 updateAccessoryInfo:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)accessoryDictionaryForLogging:(id)a3
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v4 = [v3 objectForKey:@"IAPAppAccessoryCertDataKey"];

  if (v4)
  {
    v5 = [v3 objectForKey:@"IAPAppAccessoryCertDataKey"];
    v6 = [v5 length];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu bytes", v6];
    [v3 setObject:v7 forKey:@"IAPAppAccessoryCertDataKey"];
  }

  v8 = [v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"];

  if (v8)
  {
    v9 = [v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"];
    v10 = [v9 length];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu bytes", v10];
    [v3 setObject:v11 forKey:@"IAPAppAccessoryCertSerialNumberKey"];
  }

  return v3;
}

- (ACCExternalAccessoryProviderProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)destinationInformation:forUUID:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_221CB0000, v0, v1, "sending destinationInformation %@ for UUID %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_findAccessoryForPrimaryUUID:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 currentlyConnectedAccessories];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6(&dword_221CB0000, v3, v4, "eaAccessoryToRemove %@, currentlyConnectedAccessories %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingExternalAccessoryData:forEASessionIdentifier:withReply:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_221CB0000, v0, OS_LOG_TYPE_DEBUG, "Got EA data for eaSessionUUID %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)destinationSharingStatus:forDestinationUUID:supportedParams:forUUID:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_221CB0000, v0, v1, "destination sharing UUID %@, supportedParams %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end