@interface CHActivityApplicationInstallationManager
- (CHActivityApplicationInstallationManager)initWithProfile:(id)profile;
- (void)_applicationsInstalled:(id)installed;
- (void)_applicationsUninstalled:(id)uninstalled;
- (void)_cleanupInstallRequest;
- (void)_queue_cleanupInstallRequest;
- (void)_queue_requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)snapshot;
- (void)_queue_startInstalling;
- (void)_requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)snapshot;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation CHActivityApplicationInstallationManager

- (CHActivityApplicationInstallationManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = CHActivityApplicationInstallationManager;
  v5 = [(CHActivityApplicationInstallationManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    [(CHActivityApplicationInstallationManager *)v6 _setAndNotifyStickersAvailable:CHIsFitnessInstalled()];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__applicationsInstalled_ name:*MEMORY[0x277D10448] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__applicationsUninstalled_ name:*MEMORY[0x277D10458] object:0];

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  nanoSyncManager = [WeakRetained nanoSyncManager];
  [nanoSyncManager removeObserver:self];

  v5.receiver = self;
  v5.super_class = CHActivityApplicationInstallationManager;
  [(CHActivityApplicationInstallationManager *)&v5 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  nanoSyncManager = [WeakRetained nanoSyncManager];
  [nanoSyncManager addObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  nanoSyncManager2 = [v6 nanoSyncManager];
  pairedDevicesSnapshot = [nanoSyncManager2 pairedDevicesSnapshot];

  [(CHActivityApplicationInstallationManager *)self _requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:pairedDevicesSnapshot];
}

- (void)_applicationsInstalled:(id)installed
{
  userInfo = [installed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10440]];
  v6 = [v5 containsObject:@"com.apple.Fitness"];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_DEFAULT, "Fitness app installed, marking stickers available, posting notification", v8, 2u);
    }

    [(CHActivityApplicationInstallationManager *)self _setAndNotifyStickersAvailable:1];
    notify_post("com.apple.fitness.FitnessAppInstalled");
  }
}

- (void)_applicationsUninstalled:(id)uninstalled
{
  userInfo = [uninstalled userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10450]];
  v6 = [v5 containsObject:@"com.apple.Fitness"];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_DEFAULT, "Fitness app uninstalled, marking stickers unavailable and delete achievements", v8, 2u);
    }

    [(CHActivityApplicationInstallationManager *)self _setAndNotifyStickersAvailable:0];
  }
}

- (void)_requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__CHActivityApplicationInstallationManager__requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot___block_invoke;
  block[3] = &unk_278DF0278;
  objc_copyWeak(&v9, &location);
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __106__CHActivityApplicationInstallationManager__requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:*(a1 + 32)];
}

- (void)_queue_requestActivityAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)snapshot
{
  if (!self->_installationRequestInProgress)
  {
    allDeviceInfos = [snapshot allDeviceInfos];
    v5 = [allDeviceInfos count] != 0;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [standardUserDefaults BOOLForKey:@"ForceInstallActivityApp"];
    v8 = MEMORY[0x277CCC270];
    if (v7)
    {
      _HKInitializeLogging();
      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243CCD000, v9, OS_LOG_TYPE_DEFAULT, "Fitness app force install default set, overriding deviced paired to YES", buf, 2u);
      }

      v5 = 1;
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v11 = [defaultWorkspace applicationIsInstalled:@"com.apple.Fitness"];

    _HKInitializeLogging();
    v12 = *v8;
    v13 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
    if (v5 && (v11 & 1) == 0)
    {
      if (v13)
      {
        *v18 = 0;
        _os_log_impl(&dword_243CCD000, v12, OS_LOG_TYPE_DEFAULT, "Device paired and Acitivty is not installed, requesting installation.", v18, 2u);
      }

      [(CHActivityApplicationInstallationManager *)self _queue_startInstalling];
      goto LABEL_17;
    }

    if (v5)
    {
      if (v13)
      {
        v17 = 0;
        v14 = "Devices paired and Activity is already installed, nothing to do.";
        v15 = &v17;
LABEL_16:
        _os_log_impl(&dword_243CCD000, v12, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      }
    }

    else if (v13)
    {
      v16 = 0;
      v14 = "No devices paired, nothing to do.";
      v15 = &v16;
      goto LABEL_16;
    }

LABEL_17:
  }
}

- (void)_queue_startInstalling
{
  self->_installationRequestInProgress = 1;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_243CCD000, v3, OS_LOG_TYPE_DEFAULT, "Starting install request for Activty app", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [objc_alloc(MEMORY[0x277CEC4B8]) initWithBundleID:@"com.apple.Fitness"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__CHActivityApplicationInstallationManager__queue_startInstalling__block_invoke;
  v5[3] = &unk_278DF0140;
  objc_copyWeak(&v6, buf);
  [v4 startWithErrorHandler:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(buf);
}

void __66__CHActivityApplicationInstallationManager__queue_startInstalling__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC270];
  v5 = os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "Error for request to install Fitness app: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v6 = "Request to install Fitness app succeeded";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupInstallRequest];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupInstallRequest
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__CHActivityApplicationInstallationManager__cleanupInstallRequest__block_invoke;
  v4[3] = &unk_278DF0168;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__CHActivityApplicationInstallationManager__cleanupInstallRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_cleanupInstallRequest];
}

- (void)_queue_cleanupInstallRequest
{
  systemAppRequest = self->_systemAppRequest;
  self->_systemAppRequest = 0;

  self->_installationRequestInProgress = 0;
}

@end