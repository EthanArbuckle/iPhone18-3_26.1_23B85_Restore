@interface MRUDiscoverySessionController
- (MRUDiscoverySessionController)initWithDeviceFeatures:(unint64_t)features;
- (MRUDiscoverySessionControllerDelegate)delegate;
- (id)filterAndSortOutputDevices:(id)devices;
- (void)availableOutputDevicesChangedNotification:(id)notification;
- (void)dealloc;
- (void)startDetailedDiscovery;
- (void)stopDetailedDiscovery;
- (void)updateDiscoveryMode;
- (void)updateOutputDevicesForAvailableOutputDevices:(id)devices;
- (void)updateOutputDevicesIfNeeded;
- (void)updateOutputDevicesImmediately;
@end

@implementation MRUDiscoverySessionController

- (MRUDiscoverySessionController)initWithDeviceFeatures:(unint64_t)features
{
  v13.receiver = self;
  v13.super_class = MRUDiscoverySessionController;
  v4 = [(MRUDiscoverySessionController *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_needsUpdate = 0;
    array = [MEMORY[0x1E695DEC8] array];
    availableOutputDevices = v5->_availableOutputDevices;
    v5->_availableOutputDevices = array;

    objc_initWeak(&location, v5);
    v8 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MRUDiscoverySessionController_initWithDeviceFeatures___block_invoke;
    block[3] = &unk_1E7664638;
    v11[1] = features;
    objc_copyWeak(v11, &location);
    dispatch_async(v8, block);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__MRUDiscoverySessionController_initWithDeviceFeatures___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6958460] auxiliarySession];
  v3 = *MEMORY[0x1E6958068];
  v15 = 0;
  v4 = [v2 setCategory:v3 error:&v15];
  v5 = v15;
  if ((v4 & 1) == 0)
  {
    v6 = _MPAVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "Audio session category failed: %{public}@ (AirPlay devices may be missed)", buf, 0xCu);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:*(a1 + 40)];
  [v7 setTargetAudioSession:v2];
  v8 = [v7 availableOutputDevices];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MRUDiscoverySessionController_initWithDeviceFeatures___block_invoke_3;
  v11[3] = &unk_1E7664610;
  objc_copyWeak(&v14, (a1 + 32));
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v14);
}

void __56__MRUDiscoverySessionController_initWithDeviceFeatures___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setOutputDeviceDiscoverySession:*(a1 + 32)];
    [v3 updateDiscoveryMode];
    [v3 updateOutputDevicesForAvailableOutputDevices:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(AVOutputDeviceDiscoverySession *)self->_outputDeviceDiscoverySession setDiscoveryMode:0];
  v3.receiver = self;
  v3.super_class = MRUDiscoverySessionController;
  [(MRUDiscoverySessionController *)&v3 dealloc];
}

- (void)startDetailedDiscovery
{
  [(MRUDiscoverySessionController *)self setDetailedDiscovery:1];

  [(MRUDiscoverySessionController *)self updateDiscoveryMode];
}

- (void)stopDetailedDiscovery
{
  [(MRUDiscoverySessionController *)self setDetailedDiscovery:0];

  [(MRUDiscoverySessionController *)self updateDiscoveryMode];
}

- (void)availableOutputDevicesChangedNotification:(id)notification
{
  if (!self->_needsUpdate)
  {
    self->_needsUpdate = 1;
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MRUDiscoverySessionController_availableOutputDevicesChangedNotification___block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __75__MRUDiscoverySessionController_availableOutputDevicesChangedNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) needsUpdate];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 updateOutputDevicesIfNeeded];
  }

  return result;
}

- (void)updateDiscoveryMode
{
  v15 = *MEMORY[0x1E69E9840];
  detailedDiscovery = self->_detailedDiscovery;
  v4 = _MPAVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (detailedDiscovery)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      discoveryMode = [(AVOutputDeviceDiscoverySession *)self->_outputDeviceDiscoverySession discoveryMode];
      v11 = 138543618;
      v12 = v6;
      v13 = 2048;
      v14 = discoveryMode;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ starting detailed discovery, previous: %li", &v11, 0x16u);
    }

    [(AVOutputDeviceDiscoverySession *)self->_outputDeviceDiscoverySession setDiscoveryMode:2];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_availableOutputDevicesChangedNotification_ name:*MEMORY[0x1E69587A0] object:0];
  }

  else
  {
    if (v5)
    {
      v9 = objc_opt_class();
      discoveryMode2 = [(AVOutputDeviceDiscoverySession *)self->_outputDeviceDiscoverySession discoveryMode];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = discoveryMode2;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ stoping detailed discovery, previous: %li", &v11, 0x16u);
    }

    [(AVOutputDeviceDiscoverySession *)self->_outputDeviceDiscoverySession setDiscoveryMode:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69587A0] object:0];
  }
}

- (void)updateOutputDevicesIfNeeded
{
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    [(MRUDiscoverySessionController *)self updateOutputDevicesImmediately];
  }
}

- (void)updateOutputDevicesImmediately
{
  v3 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRUDiscoverySessionController_updateOutputDevicesImmediately__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__MRUDiscoverySessionController_updateOutputDevicesImmediately__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputDeviceDiscoverySession];
  v7 = [v2 availableOutputDevices];

  v3 = [*(a1 + 32) cachedAvailableOutputDevices];
  v4 = [v3 count];
  if (v4 != [v7 count])
  {

    goto LABEL_5;
  }

  v5 = [*(a1 + 32) cachedAvailableOutputDevices];
  v6 = [v7 isEqual:v5];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    [*(a1 + 32) setCachedAvailableOutputDevices:v7];
    [*(a1 + 32) updateOutputDevicesForAvailableOutputDevices:v7];
  }
}

- (void)updateOutputDevicesForAvailableOutputDevices:(id)devices
{
  v18 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v5 = [(MRUDiscoverySessionController *)self filterAndSortOutputDevices:devicesCopy];
  v6 = _MPAVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v14 = 2048;
    v15 = [devicesCopy count];
    v16 = 2114;
    v17 = devicesCopy;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received output devices: #%ld %{public}@", buf, 0x20u);
  }

  v7 = _MPAVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 count];
    *buf = 138543874;
    selfCopy2 = self;
    v14 = 2048;
    v15 = v8;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updating to output devices: #%ld %{public}@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MRUDiscoverySessionController_updateOutputDevicesForAvailableOutputDevices___block_invoke;
  v10[3] = &unk_1E76639D0;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __78__MRUDiscoverySessionController_updateOutputDevicesForAvailableOutputDevices___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAvailableOutputDevices:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 mirroringDiscoverySessionController:*(a1 + 32) didChangeAvailableOutputDevices:*(a1 + 40)];
}

- (id)filterAndSortOutputDevices:(id)devices
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRUDiscoverySessionController_filterAndSortOutputDevices___block_invoke;
  v5[3] = &unk_1E7664660;
  v5[4] = self;
  v3 = [devices sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __60__MRUDiscoverySessionController_filterAndSortOutputDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) sortDeviceToTop:v5] && !objc_msgSend(*(a1 + 32), "sortDeviceToTop:", v6))
  {
    v9 = -1;
  }

  else if ([*(a1 + 32) sortDeviceToTop:v6] && !objc_msgSend(*(a1 + 32), "sortDeviceToTop:", v5))
  {
    v9 = 1;
  }

  else
  {
    v7 = [v5 name];
    v8 = [v6 name];
    v9 = [v7 compare:v8 options:577];

    if (!v9)
    {
      v10 = [v5 deviceID];
      v11 = [v6 deviceID];
      v9 = [v10 compare:v11 options:577];
    }
  }

  return v9;
}

- (MRUDiscoverySessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end