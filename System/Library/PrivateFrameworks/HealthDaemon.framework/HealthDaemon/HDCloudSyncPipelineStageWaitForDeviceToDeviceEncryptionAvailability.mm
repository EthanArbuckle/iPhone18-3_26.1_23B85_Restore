@interface HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability
- (HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability)initWithConfiguration:(id)a3;
- (void)_checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:(void *)a1;
- (void)_cloudKitIdentityUpdated:(id)a3;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability

- (HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability;
  result = [(HDCloudSyncPipelineStage *)&v4 initWithConfiguration:a3 cloudState:0];
  if (result)
  {
    result->_expirationInterval = 60.0;
  }

  return result;
}

- (void)main
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__cloudKitIdentityUpdated_ name:*MEMORY[0x277CBBF90] object:0];

  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [v4 repository];
  v6 = [v5 primaryCKContainer];

  v7 = [v6 containerIdentifier];
  LOBYTE(v5) = [v7 isEqualToString:@"com.apple.health.sync.secure"];

  if (v5)
  {
    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v6 containerIdentifier];
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Primary container %{public}@ is not secure; skipping D2DE check.", &v12, 0x16u);
    }

    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self finishWithSuccess:1 error:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:(void *)a1
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = a1;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Looking up account info to check for device-to-device encryption availability...", buf, 0xCu);
    }

    v5 = [a1 configuration];
    v6 = [v5 repository];
    v7 = [v6 primaryCKContainer];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __137__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving___block_invoke;
    v9[3] = &unk_27861FBB8;
    v9[4] = a1;
    v10 = a2;
    [v7 accountInfoWithCompletionHandler:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __137__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to fetch account info while waiting on device-to-device encryption availability: %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = 0;
    v11 = v6;
    goto LABEL_9;
  }

  if ([v5 supportsDeviceToDeviceEncryption])
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Device-to-device encryption is available.", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = 1;
    v11 = 0;
LABEL_9:
    [v9 finishWithSuccess:v10 error:v11];
    goto LABEL_10;
  }

  if (*(a1 + 40) == 1)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Device-to-device encryption not currently available; waiting for account update notification.", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      if (!*(v17 + 128))
      {
        v18 = [v17 profile];
        v19 = [v18 daemon];
        v20 = [v19 behavior];
        v21 = [v20 tinkerModeEnabled];

        if ((v21 & 1) == 0)
        {
          v22 = [v17 profile];
          v23 = [v22 cloudSyncManager];
          v24 = [v23 queue];
          v25 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v24);
          v26 = *(v17 + 128);
          *(v17 + 128) = v25;

          objc_initWeak(&location, v17);
          v27 = *(v17 + 128);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __100__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__startExpirationTimerIfNeeded__block_invoke;
          v33 = &unk_278616F38;
          objc_copyWeak(v34, &location);
          dispatch_source_set_event_handler(v27, buf);
          v28 = *(v17 + 128);
          v29 = dispatch_walltime(0, (*(v17 + 136) * 1000000000.0));
          dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(*(v17 + 128));
          objc_destroyWeak(v34);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Timeout waiting for device to device encryption availability"];
    [*(a1 + 32) finishWithSuccess:0 error:v30];
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_cloudKitIdentityUpdated:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received CKIdentityUpdateNotification", &v6, 0xCu);
  }

  [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)self _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
  v5 = *MEMORY[0x277D85DE8];
}

void __100__HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability__startExpirationTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[16];
    WeakRetained[16] = 0;
    v3 = WeakRetained;

    [(HDCloudSyncPipelineStageWaitForDeviceToDeviceEncryptionAvailability *)v3 _checkForDevicetoDeviceEncryptionAvailabilityAndContinueObserving:?];
    WeakRetained = v3;
  }
}

@end