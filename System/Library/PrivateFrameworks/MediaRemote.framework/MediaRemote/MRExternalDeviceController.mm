@interface MRExternalDeviceController
- (BOOL)_isManagedConfigIDAllowed:(id)a3;
- (MRExternalDeviceController)initWithBonjourServiceType:(id)a3;
- (MRExternalDeviceControllerDelegate)delegate;
- (void)beginDiscovery;
- (void)dealloc;
- (void)endDiscovery;
- (void)netService:(id)a3 didUpdateTXTRecordData:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceDidResolveAddress:(id)a3;
@end

@implementation MRExternalDeviceController

- (MRExternalDeviceController)initWithBonjourServiceType:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(MRExternalDeviceController *)a2 initWithBonjourServiceType:?];
  }

  v28.receiver = self;
  v28.super_class = MRExternalDeviceController;
  v6 = [(MRExternalDeviceController *)&v28 init];
  if (v6)
  {
    v7 = [v5 copy];
    bonjourServiceType = v6->_bonjourServiceType;
    v6->_bonjourServiceType = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695AC28]);
    serviceBrowser = v6->_serviceBrowser;
    v6->_serviceBrowser = v14;

    [(NSNetServiceBrowser *)v6->_serviceBrowser setDelegate:v6];
    v16 = +[MRUserSettings currentSettings];
    v17 = [v16 usePeerToPeerExternalDeviceConnections];

    v18 = _MRLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (v17)
      {
        v19 = @"YES";
      }

      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Configuring external device net service browser with includesPeerToPeer = %@", buf, 0xCu);
    }

    [(NSNetServiceBrowser *)v6->_serviceBrowser setIncludesPeerToPeer:v17];
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    discoveredDevices = v6->_discoveredDevices;
    v6->_discoveredDevices = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    resolvingServices = v6->_resolvingServices;
    v6->_resolvingServices = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    monitoringServices = v6->_monitoringServices;
    v6->_monitoringServices = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  [(MRExternalDeviceController *)self endDiscovery];
  [(NSNetServiceBrowser *)self->_serviceBrowser setDelegate:0];
  v3.receiver = self;
  v3.super_class = MRExternalDeviceController;
  [(MRExternalDeviceController *)&v3 dealloc];
}

- (void)beginDiscovery
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_discovering)
  {
    v3 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bonjourServiceType = self->_bonjourServiceType;
      v6 = 138543362;
      v7 = bonjourServiceType;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Beginning network service search for %{public}@...", &v6, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_serviceBrowser searchForServicesOfType:self->_bonjourServiceType inDomain:@"local"];
    self->_discovering = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)endDiscovery
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_discovering)
  {
    v3 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bonjourServiceType = self->_bonjourServiceType;
      v6 = 138543362;
      v7 = bonjourServiceType;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Stopping network service search for %{public}@", &v6, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_serviceBrowser stop];
    self->_discovering = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v6 = a4;
  v7 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceBrowser:didFindService:moreComing:];
  }

  [v6 setDelegate:self];
  [(NSMutableSet *)self->_resolvingServices addObject:v6];
  v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v6 scheduleInRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

  [v6 startMonitoring];
  [(NSMutableSet *)self->_monitoringServices addObject:v6];
  [v6 resolveWithTimeout:10.0];
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceBrowser:didRemoveService:moreComing:];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_discoveredDevices;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v6 name];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = v13;

          if (v17)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v19 = objc_opt_respondsToSelector();

            if (v19)
            {
              v20 = objc_loadWeakRetained(&self->_delegate);
              [v20 externalDeviceController:self didRemoveDevice:v17];
            }

            [(NSMutableSet *)self->_discoveredDevices removeObject:v17];
          }

          goto LABEL_16;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_16:
  [v6 stopMonitoring];
  [v6 setDelegate:0];
  v21 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v6 removeFromRunLoop:v21 forMode:*MEMORY[0x1E695DA28]];

  [(NSMutableSet *)self->_monitoringServices removeObject:v6];
  [(NSMutableSet *)self->_resolvingServices removeObject:v6];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceDidResolveAddress:];
  }

  v6 = +[MRExternalDeviceManager sharedManager];
  v7 = [MRNetServiceTransport createDeviceInfoFromNetService:v4];
  v8 = [v7 identifier];
  v9 = [v6 deviceWithIdentifier:v8];

  if (!v9)
  {
    v10 = [[MRNetServiceTransport alloc] initWithNetService:v4];
    [(MRNetServiceTransport *)v10 setRequiresCustomPairing:[(NSString *)self->_bonjourServiceType isEqualToString:@"_mediaremotetv._tcp."]];
  }

  v11 = MRPairedDeviceCopyManagedConfigDeviceID(v7);
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];

  v14 = [MEMORY[0x1E696AE30] processInfo];
  v15 = [v14 processName];

  if (([v13 isEqualToString:@"com.apple.TVRemote"] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", @"com.apple.tvremotecore.xpc") & 1) == 0 && !objc_msgSend(v15, "isEqualToString:", @"tvremoted") || -[MRExternalDeviceController _isManagedConfigIDAllowed:](self, "_isManagedConfigIDAllowed:", v11))
  {
    [(NSMutableSet *)self->_discoveredDevices addObject:v9];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 externalDeviceController:self didDiscoverDevice:v9];
    }
  }

  [(NSMutableSet *)self->_resolvingServices removeObject:v4];
}

- (void)netService:(id)a3 didUpdateTXTRecordData:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "TXTRecord data did change for service %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isManagedConfigIDAllowed:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController _isManagedConfigIDAllowed:];
  }

  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [v5 effectiveValuesForUnionSetting:*MEMORY[0x1E69ADF68]];

  if ([v6 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *v18;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(*(&v17 + 1) + 8 * v10) lowercaseString];
      v12 = [v3 lowercaseString];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MRExternalDeviceController _isManagedConfigIDAllowed:v7];
    }
  }

  LOBYTE(v8) = 1;
LABEL_16:

  v14 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController _isManagedConfigIDAllowed:];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MRExternalDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithBonjourServiceType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRExternalDeviceController.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"bonjourServiceType"}];
}

- (void)netServiceBrowser:didFindService:moreComing:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "Found service %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)netServiceBrowser:didRemoveService:moreComing:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "Removing service %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)netServiceDidResolveAddress:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "Resolved service %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isManagedConfigIDAllowed:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_9(&dword_1A2860000, v0, v1, "Checking if device with managedConfigDeviceID, %{public}@, allowed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_isManagedConfigIDAllowed:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1A2860000, v1, OS_LOG_TYPE_DEBUG, "Device with managedConfigDeviceID, %{public}@, allowed: %d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end