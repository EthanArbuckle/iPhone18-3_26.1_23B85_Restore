@interface HDHAHealthAppApplicationInstallationManager
- (HDHAHealthAppApplicationInstallationManager)initWithProfile:(id)a3;
- (void)_cleanupInstallRequest;
- (void)_queue_cleanupInstallRequest;
- (void)_queue_installHealthAppIfTinkerProfileExists;
- (void)_queue_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)a3;
- (void)_queue_startInstalling;
- (void)_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)a3;
- (void)daemonReady:(id)a3;
- (void)dealloc;
@end

@implementation HDHAHealthAppApplicationInstallationManager

- (HDHAHealthAppApplicationInstallationManager)initWithProfile:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDHAHealthAppApplicationInstallationManager;
  v5 = [(HDHAHealthAppApplicationInstallationManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v10 = [WeakRetained daemon];
    [v10 registerDaemonReadyObserver:v6 queue:v6->_queue];

    v11 = objc_loadWeakRetained(&v6->_profile);
    v12 = [v11 daemon];
    v13 = [v12 profileManager];
    [v13 addProfileManagerObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained nanoSyncManager];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HDHAHealthAppApplicationInstallationManager;
  [(HDHAHealthAppApplicationInstallationManager *)&v5 dealloc];
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained nanoSyncManager];
  [v5 addObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  v7 = [v6 nanoSyncManager];
  v8 = [v7 pairedDevicesSnapshot];

  [(HDHAHealthAppApplicationInstallationManager *)self _queue_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:v8];
  [(HDHAHealthAppApplicationInstallationManager *)self _queue_installHealthAppIfTinkerProfileExists];
}

- (void)_queue_installHealthAppIfTinkerProfileExists
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 profileManager];
  v6 = [v5 allProfileIdentifiers];

  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained(&self->_profile);
        v13 = [v12 daemon];
        v14 = [v13 profileManager];
        v15 = [v14 profileForIdentifier:v11];

        if ([v15 profileType] == 3)
        {
          v16 = [MEMORY[0x277CCDD30] sharedBehavior];
          v17 = [v16 healthAppNotInstalled];

          if (v17)
          {
            _HKInitializeLogging();
            v18 = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
            {
              *v20 = 0;
              _os_log_impl(&dword_22939E000, v18, OS_LOG_TYPE_DEFAULT, "Tinker profile detected and Health App is not installed, requesting installation.", v20, 2u);
            }

            [(HDHAHealthAppApplicationInstallationManager *)self _queue_startInstalling];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__HDHAHealthAppApplicationInstallationManager__requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot___block_invoke;
  block[3] = &unk_278658470;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __107__HDHAHealthAppApplicationInstallationManager__requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:*(a1 + 32)];
}

- (void)_queue_requestHealthAppInstallIfNecessaryWithPairedDeviceSnapshot:(id)a3
{
  if (!self->_installationRequestInProgress)
  {
    v4 = [a3 allDeviceInfos];
    v5 = [v4 count];
    v6 = [MEMORY[0x277CCDD30] sharedBehavior];
    v7 = [v6 healthAppNotInstalled];

    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2B0];
    v9 = os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT);
    if (v5 && v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "Device paired and Health is not installed, requesting installation.", buf, 2u);
      }

      [(HDHAHealthAppApplicationInstallationManager *)self _queue_startInstalling];
      goto LABEL_13;
    }

    if (v5)
    {
      if (v9)
      {
        v13 = 0;
        v10 = "Devices paired and Health is already installed, nothing to do.";
        v11 = &v13;
LABEL_12:
        _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else if (v9)
    {
      v12 = 0;
      v10 = "No devices paired, nothing to do.";
      v11 = &v12;
      goto LABEL_12;
    }

LABEL_13:
  }
}

- (void)_queue_startInstalling
{
  self->_installationRequestInProgress = 1;
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "Starting install request for Health app", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = objc_alloc(MEMORY[0x277CEC4B8]);
  v5 = [v4 initWithBundleID:*MEMORY[0x277CCE3A8]];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDHAHealthAppApplicationInstallationManager__queue_startInstalling__block_invoke;
  v6[3] = &unk_278658200;
  objc_copyWeak(&v7, buf);
  [v5 startWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(buf);
}

void __69__HDHAHealthAppApplicationInstallationManager__queue_startInstalling__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2B0];
  v5 = os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "Error for request to install Health app: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v6 = "Request to install Health app succeeded";
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
  v4[2] = __69__HDHAHealthAppApplicationInstallationManager__cleanupInstallRequest__block_invoke;
  v4[3] = &unk_278658190;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __69__HDHAHealthAppApplicationInstallationManager__cleanupInstallRequest__block_invoke(uint64_t a1)
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