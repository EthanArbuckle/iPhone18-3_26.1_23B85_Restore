@interface HDMCDeviceScopedStorageManager
- (BOOL)updateLocalDeviceValuesNowWithError:(id *)a3;
- (HDMCDeviceScopedStorageManager)initWithProfile:(id)a3 settingsManager:(id)a4;
- (id)_updateLocalDeviceValuesNowWithError:(id *)a3;
- (id)accountDevicesInfoWithError:(id *)a3;
- (void)settingsManagerDidUpdateNotificationSettings:(id)a3;
@end

@implementation HDMCDeviceScopedStorageManager

- (HDMCDeviceScopedStorageManager)initWithProfile:(id)a3 settingsManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HDMCDeviceScopedStorageManager;
  v8 = [(HDMCDeviceScopedStorageManager *)&v16 init];
  if (v8)
  {
    v9 = [v6 deviceKeyValueStoreManager];
    objc_storeWeak(&v8->_keyValueStore, v9);

    objc_storeStrong(&v8->_settingsManager, a4);
    v10 = objc_alloc(MEMORY[0x277CCD738]);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 initWithName:v12 loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v8->_observers;
    v8->_observers = v13;

    [(HKMCSettingsManager *)v8->_settingsManager addObserver:v8 queue:0];
  }

  return v8;
}

- (BOOL)updateLocalDeviceValuesNowWithError:(id *)a3
{
  v3 = [(HDMCDeviceScopedStorageManager *)self _updateLocalDeviceValuesNowWithError:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_updateLocalDeviceValuesNowWithError:(id *)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v5 = [HDMCDeviceInfo localDeviceInfoWithSettingsManager:self->_settingsManager];
  v29[0] = @"DayStreamProcessorAlgorithmVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "dayStreamProcessorAlgorithmVersion")}];
  v30[0] = v6;
  v29[1] = @"MenstruationNotificationsEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "menstruationNotificationsEnabled")}];
  v30[1] = v7;
  v29[2] = @"FertileWindowNotificationsEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "fertileWindowNotificationsEnabled")}];
  v30[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__HDMCDeviceScopedStorageManager__updateLocalDeviceValuesNowWithError___block_invoke;
  v18[3] = &unk_27865AF20;
  v18[4] = self;
  v18[5] = &v25;
  v18[6] = &v19;
  [v9 enumerateKeysAndObjectsUsingBlock:v18];
  if (v26[3])
  {
    observers = self->_observers;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__HDMCDeviceScopedStorageManager__updateLocalDeviceValuesNowWithError___block_invoke_2;
    v17[3] = &unk_27865AF48;
    v17[4] = self;
    [(HKObserverSet *)observers notifyObservers:v17];
    v11 = v5;
  }

  else
  {
    v12 = v20[5];
    v13 = v12;
    if (v12)
    {
      if (a3)
      {
        v14 = v12;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

void __71__HDMCDeviceScopedStorageManager__updateLocalDeviceValuesNowWithError___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((v7 + 8));
  v14 = 0;
  v11 = [WeakRetained setNumber:v8 forKey:v9 domainName:@"MenstrualCycles" protectionCategory:1 error:&v14];

  v12 = v14;
  v13 = v14;
  *(*(a1[5] + 8) + 24) = v11;

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v12);
    *a4 = 1;
  }
}

- (id)accountDevicesInfoWithError:(id *)a3
{
  v19 = 0;
  v5 = [(HDMCDeviceScopedStorageManager *)self _updateLocalDeviceValuesNowWithError:&v19];
  v6 = v19;
  v7 = v6;
  if (!v5)
  {
    v9 = v6;
    if (v9)
    {
      if (a3)
      {
        v14 = v9;
        v15 = 0;
        *a3 = v9;
LABEL_15:
        v10 = v9;
        goto LABEL_19;
      }

      _HKLogDroppedError();
    }

    v15 = 0;
    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_keyValueStore);
  v18 = v7;
  v9 = [WeakRetained fetchEntriesForDomain:@"MenstrualCycles" key:0 protectionCategory:1 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [v9 hk_map:&__block_literal_global_4];
    unitTest_accountDevicesInfo = self->_unitTest_accountDevicesInfo;
    if (unitTest_accountDevicesInfo)
    {
      v13 = unitTest_accountDevicesInfo;
    }

    else
    {
      v13 = [[HDMCAccountDevicesInfo alloc] initWithHealthAppDevicesInfo:v11 localDeviceInfo:v5];
    }

    v15 = v13;
    goto LABEL_18;
  }

  v11 = v10;
  if (!v11)
  {
    goto LABEL_17;
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v16 = v11;
  v15 = 0;
  *a3 = v11;
LABEL_18:

LABEL_19:

  return v15;
}

id __62__HDMCDeviceScopedStorageManager_accountDevicesInfoWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 deviceContext];
  v4 = [v3 type];

  if (v4 > 3 || v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [HDMCDeviceInfo deviceInfoFromStorageGroup:v2];
  }

  return v6;
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC2E8];
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification Settings update, updating device-scoped storage", buf, 0xCu);
  }

  v12 = 0;
  v8 = [(HDMCDeviceScopedStorageManager *)self updateLocalDeviceValuesNowWithError:&v12];
  v9 = v12;
  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      [(HDMCDeviceScopedStorageManager *)v10 settingsManagerDidUpdateNotificationSettings:v9];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)settingsManagerDidUpdateNotificationSettings:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error updating device-scoped storage after notification settings update %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end