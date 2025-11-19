@interface MRURoutingController
+ (id)symbolNameForOutputDevice:(id)a3;
- (MRURoutingController)init;
- (MRURoutingControllerDelegate)delegate;
- (id)outputDeviceForID:(id)a3;
- (void)addBusyIdentifier:(id)a3;
- (void)outputContextController:(id)a3 didChangeOutputDevice:(id)a4;
- (void)pairingHandlerNotification:(id)a3;
- (void)removeBusyIdentifier:(id)a3;
- (void)selectOutputDevice:(id)a3 completion:(id)a4;
- (void)setOutputDevice:(id)a3 completion:(id)a4;
- (void)startDetailedDiscovery;
- (void)stopDetailedDiscovery;
- (void)updateAvailableOutputDevices;
- (void)updateSelectedOutputDevice;
@end

@implementation MRURoutingController

- (MRURoutingController)init
{
  v11.receiver = self;
  v11.super_class = MRURoutingController;
  v2 = [(MRURoutingController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    busyIdentifiers = v2->_busyIdentifiers;
    v2->_busyIdentifiers = v3;

    v5 = [[MRUDiscoverySessionController alloc] initWithDeviceFeatures:1];
    discoverySessionController = v2->_discoverySessionController;
    v2->_discoverySessionController = v5;

    [(MRUDiscoverySessionController *)v2->_discoverySessionController setDelegate:v2];
    v7 = [[MRUOutputContextController alloc] initWithOutputContextType:0];
    outputContextController = v2->_outputContextController;
    v2->_outputContextController = v7;

    [(MRUOutputContextController *)v2->_outputContextController setDelegate:v2];
    MRMediaRemoteSetWantsRouteChangeNotifications();
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_pairingHandlerNotification_ name:*MEMORY[0x1E69B1290] object:0];

    [(MRURoutingController *)v2 updateSelectedOutputDevice];
  }

  return v2;
}

+ (id)symbolNameForOutputDevice:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MRAVOutputDeviceCreateFromAVOutputDevice();
    v5 = objc_alloc(MEMORY[0x1E6970470]);
    v22[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v7 = [v5 initWithOutputDevices:v6];

    CFRelease(v4);
    v8 = [MEMORY[0x1E6970490] _symbolNameForRoute:v7];
    v9 = _MPAVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = [v3 deviceID];
      v12 = [v3 modelID];
      v14 = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute: %{public}@ | model: %{public}@ | symbol: %{public}@", &v14, 0x2Au);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)selectOutputDevice:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 deviceID];
  if (v8 && ([(NSMutableSet *)self->_busyIdentifiers containsObject:v8]& 1) == 0)
  {
    [(MRURoutingController *)self addBusyIdentifier:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = _MPAVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = [v6 deviceID];
        *buf = 138543618;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ start routing to device %{public}@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v14 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v17, buf);
      v15 = v6;
      v16 = v7;
      MRMediaRemoteRegisterPairingHandler();

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }

    else
    {
      [(MRURoutingController *)self setOutputDevice:v6 completion:v7];
    }
  }
}

void __54__MRURoutingController_selectOutputDevice_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__MRURoutingController_selectOutputDevice_completion___block_invoke_2;
  v4[3] = &unk_1E7664578;
  v5 = v3;
  v6 = *(a1 + 40);
  [WeakRetained setOutputDevice:v5 completion:v4];
}

uint64_t __54__MRURoutingController_selectOutputDevice_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceID];
  MRMediaRemoteUnregisterPairingHandler();

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setOutputDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  outputContextController = self->_outputContextController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MRURoutingController_setOutputDevice_completion___block_invoke;
  v11[3] = &unk_1E7663E70;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(MRUOutputContextController *)outputContextController setOutputDevice:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __51__MRURoutingController_setOutputDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) deviceID];
  [WeakRetained removeBusyIdentifier:v4];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

- (void)startDetailedDiscovery
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _MPAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = objc_opt_class();
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ start detailed discovery", &v4, 0xCu);
  }

  [(MRUDiscoverySessionController *)self->_discoverySessionController startDetailedDiscovery];
}

- (void)stopDetailedDiscovery
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _MPAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = objc_opt_class();
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stop detailed discovery", &v4, 0xCu);
  }

  [(MRUDiscoverySessionController *)self->_discoverySessionController stopDetailedDiscovery];
}

- (void)pairingHandlerNotification:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B1298]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"inputType"];
  v9 = [v8 integerValue];

  v10 = _MPAVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    busyIdentifiers = self->_busyIdentifiers;
    *buf = 138544130;
    v18 = v11;
    v19 = 2114;
    v20 = v6;
    v21 = 2048;
    v22 = v9;
    v23 = 2114;
    v24 = busyIdentifiers;
    _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received pairing request for %{public}@ | inputType: %li | requests: %{public}@", buf, 0x2Au);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRURoutingController_pairingHandlerNotification___block_invoke;
  block[3] = &unk_1E7663EC0;
  block[4] = self;
  v15 = v6;
  v16 = v9 != 1;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__MRURoutingController_pairingHandlerNotification___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) outputDeviceForID:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  if (v5)
  {
    v3 = [*(a1 + 32) busyIdentifiers];
    if ([(MRUMirroringAuthorizationRequest *)v3 containsObject:*(a1 + 40)])
    {
      v4 = objc_opt_respondsToSelector();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

      v3 = [(MRUPairingAuthorizationRequest *)[MRUMirroringAuthorizationRequest alloc] initWithOutputDevice:v5 inputType:*(a1 + 48)];
      [v2 routingController:*(a1 + 32) didReceiveAuthorizationRequest:v3];
    }
  }

LABEL_6:
}

- (void)outputContextController:(id)a3 didChangeOutputDevice:(id)a4
{
  v5 = [a4 deviceID];
  [(MRURoutingController *)self removeBusyIdentifier:v5];

  [(MRURoutingController *)self updateSelectedOutputDevice];
}

- (void)updateSelectedOutputDevice
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MRUOutputContextController *)self->_outputContextController outputDevice];
  if (([v3 isEqual:self->_selectedOutputDevice] & 1) == 0)
  {
    v4 = _MPAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = [v3 deviceID];
      v7 = [(AVOutputDevice *)self->_selectedOutputDevice deviceID];
      v9 = 138543874;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ update selected output device: %{public}@ | previous: %{public}@", &v9, 0x20u);
    }

    objc_storeStrong(&self->_selectedOutputDevice, v3);
    v8 = [(MRURoutingController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 routingController:self didChangeOutputDevice:v3];
    }
  }
}

- (void)updateAvailableOutputDevices
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(MRUDiscoverySessionController *)self->_discoverySessionController availableOutputDevices];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 deviceID];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 deviceType];

          if (v12)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  availableOutputDevices = self->_availableOutputDevices;
  self->_availableOutputDevices = v13;

  v15 = _MPAVLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    *buf = 138543618;
    v23 = v16;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ update audio output devices: %{public}@", buf, 0x16u);
  }

  v17 = [(MRURoutingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 routingController:self didChangeAvailableOutputDevices:v3];
  }
}

- (void)addBusyIdentifier:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_busyIdentifiers addObject:?];
    v5 = [(MRURoutingController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained routingController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
    }
  }
}

- (void)removeBusyIdentifier:(id)a3
{
  v6 = a3;
  if ([(NSMutableSet *)self->_busyIdentifiers count]== 1)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeAllObjects];
  }

  else if (v6)
  {
    [(NSMutableSet *)self->_busyIdentifiers removeObject:v6];
  }

  v4 = [(MRURoutingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained routingController:self didUpdateBusyIdenifiers:self->_busyIdentifiers];
  }
}

- (id)outputDeviceForID:(id)a3
{
  v4 = a3;
  v5 = [(MRURoutingController *)self availableOutputDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MRURoutingController_outputDeviceForID___block_invoke;
  v9[3] = &unk_1E7663EE8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 msv_firstWhere:v9];

  return v7;
}

uint64_t __42__MRURoutingController_outputDeviceForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (MRURoutingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end