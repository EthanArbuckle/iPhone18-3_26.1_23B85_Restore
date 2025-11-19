@interface HMDFetchedAccessorySettingsController
+ (id)logCategory;
- (HMDFetchedAccessorySettingsController)initWithQueue:(id)a3 dataSource:(id)a4 drivers:(id)a5;
- (HMDFetchedAccessorySettingsController)initWithQueue:(id)a3 dataSource:(id)a4 drivers:(id)a5 notificationCenter:(id)a6;
- (NSNotificationCenter)notificationCenter;
- (id)cachedSettingForKeyPath:(id)a3;
- (void)_postNotificationForSettings:(void *)a1;
- (void)_postUpdateEventsIfDifferent:(void *)a1;
- (void)_updateCacheWithSettings:(uint64_t)a1;
- (void)applyFetchedSettings:(void *)a1 requestedKeyPaths:(void *)a2;
- (void)driver:(id)a3 didUpdatePrimaryUserInfo:(id)a4;
- (void)driver:(id)a3 didUpdateSettings:(id)a4;
- (void)driverDidReload:(id)a3;
- (void)fetchSettingsForKeyPaths:(id)a3 completion:(id)a4;
- (void)languageValueListWithCompletion:(id)a3;
- (void)start;
- (void)updateSettingWithKeyPath:(id)a3 settingValue:(id)a4 completion:(id)a5;
@end

@implementation HMDFetchedAccessorySettingsController

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (void)driverDidReload:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDFetchedAccessorySettingsController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDFetchedAccessorySettingsController *)self driverMap];
  v8 = v6;
  if (v6)
  {
    Property = objc_getProperty(v6, v7, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke;
  v30[3] = &unk_2786786A0;
  v10 = v4;
  v31 = v10;
  v11 = [Property na_firstObjectPassingTest:v30];

  if (v11 && ([v11 driver], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == v10, v12, v13))
  {
    v18 = MEMORY[0x277CBEB98];
    v19 = [v11 keyPaths];
    v20 = [v18 setWithArray:v19];

    v21 = [(HMDFetchedAccessorySettingsController *)self pendingFetchKeyPaths];
    v22 = [v21 setByAddingObjectsFromSet:v20];
    v23 = [v22 mutableCopy];
    [(HMDFetchedAccessorySettingsController *)self setPendingFetchKeyPaths:v23];

    objc_initWeak(buf, self);
    v24 = [v11 keyPaths];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke_2;
    v27[3] = &unk_2786786C8;
    objc_copyWeak(&v29, buf);
    v25 = v20;
    v28 = v25;
    [v10 fetchSettingsForKeyPaths:v24 completion:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v17;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Did not find driver in list %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 driver];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __57__HMDFetchedAccessorySettingsController_driverDidReload___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    dispatch_assert_queue_V2(v5);

    [HMDFetchedAccessorySettingsController applyFetchedSettings:v4 requestedKeyPaths:v6];
  }
}

- (void)applyFetchedSettings:(void *)a1 requestedKeyPaths:(void *)a2
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__HMDFetchedAccessorySettingsController_applyFetchedSettings_requestedKeyPaths___block_invoke;
  v4[3] = &unk_278678650;
  v4[4] = a1;
  v3 = [a2 na_filter:v4];
  if ([v3 count])
  {
    [(HMDFetchedAccessorySettingsController *)a1 _postUpdateEventsIfDifferent:v3];
    [(HMDFetchedAccessorySettingsController *)a1 _updateCacheWithSettings:v3];
    [(HMDFetchedAccessorySettingsController *)a1 _postNotificationForSettings:v3];
  }
}

uint64_t __80__HMDFetchedAccessorySettingsController_applyFetchedSettings_requestedKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pendingFetchKeyPaths];
  v5 = [v3 keyPath];

  v6 = [v4 na_safeContainsObject:v5];
  return v6;
}

- (void)_postUpdateEventsIfDifferent:(void *)a1
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 queue];
    dispatch_assert_queue_V2(v4);

    v5 = [a1 dataSource];
    v46 = [v5 eventSourceIdentifierNameForFetchedSettingsController:a1];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v6;
    v45 = [a1 pendingFetchKeyPaths];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v3;
    obj = v3;
    v48 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (!v48)
    {
      goto LABEL_27;
    }

    v47 = *v52;
    v43 = a1;
    while (1)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v52 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        v10 = [v9 keyPath];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 keyPath];
          v13 = [v45 containsObject:v12];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = a1;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [v9 keyPath];
              *buf = 138543618;
              v56 = v17;
              v57 = 2114;
              v58 = v18;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Removing keyPath %{public}@ from pending fetch", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            v19 = [v15 pendingFetchKeyPaths];
            v20 = [v9 keyPath];
            [v19 removeObject:v20];
          }
        }

        v21 = [a1 dataSource];
        v22 = [v9 keyPath];
        v23 = [v21 controller:a1 topicForKeyPath:v22];

        v24 = [a1 dataSource];
        v25 = [v24 eventStoreReadHandle];

        v26 = [v25 lastEventForTopic:v23];
        if (!v26)
        {
          v27 = 0;
          goto LABEL_24;
        }

        v49 = v25;
        v50 = 0;
        v27 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v26 error:&v50];
        v28 = v50;
        if (v28)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = a1;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543874;
            v56 = v32;
            v57 = 2112;
            v58 = v23;
            v59 = 2112;
            v60 = v28;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v29);
          a1 = v43;
        }

        if (!v27 || ![v27 isEqual:v9])
        {
          v25 = v49;
LABEL_24:
          v38 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:v9 eventSource:v46 eventTimestamp:v7];
          v39 = [a1 dataSource];
          v40 = [v39 eventForwarder];
          [v40 forwardEvent:v38 topic:v23 completion:&__block_literal_global_84];

          goto LABEL_25;
        }

        v33 = objc_autoreleasePoolPush();
        v34 = a1;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          v37 = [v9 keyPath];
          *buf = 138543618;
          v56 = v36;
          v57 = 2114;
          v58 = v37;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Skip sending event for keyPath: %{public}@ as it matches stored", buf, 0x16u);

          a1 = v43;
        }

        objc_autoreleasePoolPop(v33);
        v25 = v49;
LABEL_25:
      }

      v48 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (!v48)
      {
LABEL_27:

        v3 = v42;
        break;
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateCacheWithSettings:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = *(a1 + 16);
          v10 = [v8 keyPath];
          [v9 setObject:v8 forKeyedSubscript:v10];
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationForSettings:(void *)a1
{
  v21 = *MEMORY[0x277D85DE8];
  obj = a2;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          v8 = [a1 notificationCenter];
          v9 = [a1 dataSource];
          v18[1] = @"HMDFetchedAccessorySettingsControllerSettingsUpdateNotification";
          v19[0] = v7;
          v18[0] = @"HMDFetchedAccessorySettingsControllerSettingsUpdateNotificationSettingValueCodingKey";
          v10 = [v7 keyPath];
          v19[1] = v10;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
          [v8 postNotificationName:@"HMDFetchedAccessorySettingsControllerSettingsUpdateNotification" object:v9 userInfo:v11];

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v4);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)driver:(id)a3 didUpdatePrimaryUserInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Primary user is not supported", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)driver:(id)a3 didUpdateSettings:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDFetchedAccessorySettingsController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received setting updates", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDFetchedAccessorySettingsController *)v10 driverMap];
  v15 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v13 availableKeyPaths];

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __66__HMDFetchedAccessorySettingsController_driver_didUpdateSettings___block_invoke;
  v45[3] = &unk_278678678;
  v18 = v15;
  v46 = v18;
  v19 = v16;
  v47 = v19;
  v20 = v17;
  v48 = v20;
  v21 = [v7 na_filter:v45];
  if ([v20 count])
  {
    v22 = v7;
    v23 = v6;
    v24 = objc_autoreleasePoolPush();
    v25 = v10;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v43 = v19;
      v28 = v27 = v18;
      *buf = 138543618;
      v50 = v28;
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Ignoring updates for unknown keypaths: %@", buf, 0x16u);

      v18 = v27;
      v19 = v43;
    }

    objc_autoreleasePoolPop(v24);
    v6 = v23;
    v7 = v22;
  }

  if ([v21 count])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v10;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v42 = v18;
      v32 = v44 = v6;
      v33 = v7;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      *buf = 138543874;
      v50 = v32;
      v51 = 2112;
      v52 = v34;
      v53 = 2112;
      v54 = v35;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Received updates for %@ known key paths and %@ filtered settings", buf, 0x20u);

      v7 = v33;
      v18 = v42;

      v6 = v44;
    }

    objc_autoreleasePoolPop(v29);
    v36 = objc_autoreleasePoolPush();
    v37 = v30;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v40 = v39 = v18;
      *buf = 138543874;
      v50 = v40;
      v51 = 2114;
      v52 = v19;
      v53 = 2112;
      v54 = v21;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Received update for keyPaths: %{public}@ settings: %@", buf, 0x20u);

      v18 = v39;
    }

    objc_autoreleasePoolPop(v36);
    [(HMDFetchedAccessorySettingsController *)v37 _updateCacheWithSettings:v21];
    [(HMDFetchedAccessorySettingsController *)v37 _postUpdateEventsIfDifferent:v21];
    [(HMDFetchedAccessorySettingsController *)v37 _postNotificationForSettings:v21];
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDFetchedAccessorySettingsController_driver_didUpdateSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 keyPath];
  LODWORD(v3) = [v3 containsObject:v5];

  v6 = 48;
  if (v3)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  v8 = [v4 keyPath];
  [v7 addObject:v8];

  v9 = *(a1 + 32);
  v10 = [v4 keyPath];

  v11 = [v9 containsObject:v10];
  return v11;
}

- (id)cachedSettingForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_keyPathToSettingCache objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)languageValueListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDFetchedAccessorySettingsController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDFetchedAccessorySettingsController_languageValueListWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__HMDFetchedAccessorySettingsController_languageValueListWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) driverMap];
  v2 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v3 objectForKeyedSubscript:?];
  [v2 languageValueListWithCompletion:*(a1 + 40)];
}

- (void)updateSettingWithKeyPath:(id)a3 settingValue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedAccessorySettingsController *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMDFetchedAccessorySettingsController_updateSettingWithKeyPath_settingValue_completion___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __90__HMDFetchedAccessorySettingsController_updateSettingWithKeyPath_settingValue_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) driverMap];
  v4 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v2 availableKeyPaths];
  v5 = [v4 containsObject:*(a1 + 40)];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v37 = 138543618;
      v38 = v10;
      v39 = 2114;
      v40 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Got setting update request keyPath: %{public}@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v14)
    {
      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) BOOLSettingValue:v14 completion:*(a1 + 56)];
    }

    else if (v17)
    {
      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) integerSettingValue:v17 completion:*(a1 + 56)];
    }

    else
    {
      if (!v20)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(a1 + 32);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v34 = *(a1 + 40);
          v35 = *(a1 + 48);
          v37 = 138543874;
          v38 = v33;
          v39 = 2114;
          v40 = v34;
          v41 = 2112;
          v42 = v35;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Do not support provided type for update keypath: %{public}@ settingValue: %@", &v37, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v36 = *(a1 + 56);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(v36 + 16))(v36, v21);
        goto LABEL_23;
      }

      v21 = [*(a1 + 32) driverMap];
      v22 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v21 objectForKeyedSubscript:?];
      [v22 updateSettingWithKeyPath:*(a1 + 40) languageSettingValue:v20 completion:*(a1 + 56)];
    }

LABEL_23:
    goto LABEL_24;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(a1 + 40);
    v25 = [*(a1 + 32) driverMap];
    v27 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v25 availableKeyPaths];
    v37 = 138543874;
    v38 = v23;
    v39 = 2114;
    v40 = v24;
    v41 = 2114;
    v42 = v27;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Provided keypath: %{public}@ not in available keypaths: %{public}@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v28 = *(a1 + 56);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v28 + 16))(v28, v14);
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)fetchSettingsForKeyPaths:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDFetchedAccessorySettingsController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v93 = v5;
    v94 = 2114;
    v95 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received fetch request for keyPaths: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v70 = [MEMORY[0x277CBEB18] array];
  v71 = [MEMORY[0x277CBEB18] array];
  v7 = [*(a1 + 32) driverMap];
  v9 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v7 availableKeyPaths];

  v72 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v67 = v9;
  if (([v72 isSubsetOfSet:v9] & 1) == 0)
  {
    v10 = [v72 hmf_removedObjectsFromSet:v9];
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) driverMap];
      v17 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v15 availableKeyPaths];
      *buf = 138543874;
      v93 = v14;
      v94 = 2114;
      v95 = v10;
      v96 = 2114;
      v97 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Some provided keypaths: %{public}@ not in available keypaths: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v71 addObject:v18];
  }

  v19 = dispatch_group_create();
  v20 = [*(a1 + 32) driverMap];
  v66 = a1;
  v21 = *(a1 + 40);
  v64 = v21;
  v65 = v20;
  if (v20)
  {
    v23 = v21;
    v24 = [(HMDFetchedAccessorySettingsControllerMutableKeyPathMap *)v20 availableKeyPaths];
    v25 = [v24 mutableCopy];

    v26 = [MEMORY[0x277CBEB98] setWithArray:v23];
    v63 = v25;
    v27 = [v25 hmf_removedObjectsFromSet:v26];

    obj = [MEMORY[0x277CBEB18] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v29 = objc_getProperty(v20, v28, 8, 1);
    v30 = [v29 countByEnumeratingWithState:&v87 objects:buf count:16];
    if (v30)
    {
      v32 = v30;
      v33 = *v88;
      do
      {
        v34 = 0;
        do
        {
          if (*v88 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v87 + 1) + 8 * v34);
          v36 = MEMORY[0x277CBEB98];
          if (v35)
          {
            Property = objc_getProperty(*(*(&v87 + 1) + 8 * v34), v31, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v38 = [v36 setWithArray:Property];
          v39 = [v38 hmf_removedObjectsFromSet:v27];
          v40 = [v39 allObjects];

          if ([v40 count])
          {
            v41 = [HMDFetchedAccessorySettingsControllerKeyPathMapItem alloc];
            v42 = [v35 driver];
            v43 = [(HMDFetchedAccessorySettingsControllerKeyPathMapItem *)v41 initWithDriver:v42 keyPaths:v40];
            [obj addObject:v43];
          }

          ++v34;
        }

        while (v32 != v34);
        v44 = [v29 countByEnumeratingWithState:&v87 objects:buf count:16];
        v32 = v44;
      }

      while (v44);
    }

    v45 = [obj copy];
  }

  else
  {
    v45 = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obja = v45;
  v46 = [obja countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v84;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v84 != v48)
        {
          objc_enumerationMutation(obja);
        }

        v50 = *(*(&v83 + 1) + 8 * i);
        dispatch_group_enter(v19);
        v51 = MEMORY[0x277CBEB98];
        v52 = [v50 keyPaths];
        v53 = [v51 setWithArray:v52];
        v54 = [v72 na_setByIntersectingWithSet:v53];
        v55 = [v54 allObjects];

        v56 = [v50 driver];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_70;
        v79[3] = &unk_278688348;
        v80 = v70;
        v81 = v71;
        v82 = v19;
        [v56 fetchSettingsForKeyPaths:v55 completion:v79];
      }

      v47 = [obja countByEnumeratingWithState:&v83 objects:v91 count:16];
    }

    while (v47);
  }

  v57 = [*(v66 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_2;
  block[3] = &unk_278688978;
  v58 = *(v66 + 32);
  v59 = *(v66 + 40);
  v74 = v71;
  v75 = v58;
  v76 = v59;
  v77 = v70;
  v78 = *(v66 + 48);
  v60 = v70;
  v61 = v71;
  dispatch_group_notify(v19, v57, block);

  v62 = *MEMORY[0x277D85DE8];
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:a2];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __77__HMDFetchedAccessorySettingsController_fetchSettingsForKeyPaths_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@At least one of the driver's returned an error setting error on completion", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Finishing fetch request for keyPaths: %{public}@ restuls: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LocalSettingsFetch", "", buf, 2u);
  }

  v5 = [(HMDFetchedAccessorySettingsController *)self dataSource];
  v6 = [v5 setupActivity];
  v7 = v6;
  if (v6)
  {
    *buf = v6;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D0F770]);
    v9 = MEMORY[0x277CCACA8];
    v10 = MEMORY[0x22AAD2510](self, a2);
    v11 = [v9 stringWithFormat:@"%@, %s:%ld", v10, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Media/Media Accessory/Apple/Settings/Fetched Settings/HMDFetchedAccessorySettingsController.m", 184];
    *buf = [v8 initWithName:v11];
  }

  v12 = [(HMDFetchedAccessorySettingsController *)self dataSource];
  v13 = [v12 currentAccessorySetupMetricDispatcher];
  [v13 markSetupBeginStage:5 error:0];

  v14 = [(HMDFetchedAccessorySettingsController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v16 = *buf;
  v17 = 0xEEEEB0B5B2B2EEEELL;
  dispatch_async(v14, block);

  __HMFActivityScopeLeave();
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__112780;
  v43[4] = __Block_byref_object_dispose__112781;
  v44 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [*(a1 + 32) driverMap];
  v5 = v3;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  obj = Property;

  v7 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v7)
  {
    v24 = *v40;
    do
    {
      v25 = v7;
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        dispatch_group_enter(v2);
        v10 = [v9 keyPaths];
        v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
        v12 = [*(a1 + 32) pendingFetchKeyPaths];
        v13 = [v12 setByAddingObjectsFromSet:v11];
        v14 = [v13 mutableCopy];
        [*(a1 + 32) setPendingFetchKeyPaths:v14];

        v15 = *(a1 + 40);
        v45 = @"keyPaths";
        v46 = v10;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

        objc_initWeak(&location, *(a1 + 32));
        v17 = [v9 driver];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke_53;
        v30[3] = &unk_278678600;
        objc_copyWeak(&v37, &location);
        v31 = v2;
        v18 = v10;
        v32 = v18;
        v33 = v9;
        v34 = *(a1 + 40);
        v36 = v43;
        v19 = v11;
        v35 = v19;
        [v17 startWithKeyPaths:v18 completion:v30];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v7);
  }

  v20 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDFetchedAccessorySettingsController_start__block_invoke_68;
  block[3] = &unk_278678628;
  v21 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v28 = v43;
  v29 = *(a1 + 48);
  v27 = v21;
  dispatch_group_notify(v2, v20, block);

  _Block_object_dispose(v43, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    dispatch_assert_queue_V2(v9);

    v10 = objc_autoreleasePoolPush();
    v11 = v8;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = v8;
      v15 = v6;
      v16 = v5;
      v17 = a3;
      v18 = *(a1 + 40);
      [*(a1 + 48) driver];
      v19 = v38 = a1;
      *buf = 138543874;
      v42 = v13;
      v43 = 2114;
      v44 = v18;
      a3 = v17;
      v5 = v16;
      v6 = v15;
      v8 = v14;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched at startup: keyPaths: %{public}@ settings from driver: %@", buf, 0x20u);

      a1 = v38;
    }

    objc_autoreleasePoolPop(v10);
    v20 = objc_autoreleasePoolPush();
    v21 = v11;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v23;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched at startup: settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = *(a1 + 56);
    v40[0] = *(a1 + 40);
    v39[0] = @"keyPaths";
    v39[1] = @"error.code";
    v25 = MEMORY[0x277CCABB0];
    v26 = v24;
    v27 = [v25 numberWithInteger:{objc_msgSend(v6, "code")}];
    v40[1] = v27;
    v39[2] = @"domain";
    v28 = [v6 domain];
    v29 = v28;
    v30 = &stru_283CF9D50;
    if (v28)
    {
      v30 = v28;
    }

    v40[2] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

    if (v6)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v21;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v35 = a1;
        *buf = 138543618;
        v42 = v36;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Driver error on start %@", buf, 0x16u);

        a1 = v35;
      }

      objc_autoreleasePoolPop(v32);
      os_unfair_lock_lock_with_options();
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
      os_unfair_lock_unlock(v33 + 2);
    }

    [HMDFetchedAccessorySettingsController applyFetchedSettings:v21 requestedKeyPaths:v5];
  }

  dispatch_group_leave(*(a1 + 32));

  v37 = *MEMORY[0x277D85DE8];
}

void __46__HMDFetchedAccessorySettingsController_start__block_invoke_68(uint64_t a1)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  os_unfair_lock_unlock(v2 + 2);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v33 = v3;
  if (v5)
  {
    v7 = [v5 dataSource];
    v38[0] = @"error.code";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v33, "code")}];
    v38[1] = @"domain";
    v39[0] = v8;
    v9 = [v33 domain];
    v10 = v9;
    v11 = &stru_283CF9D50;
    if (v9)
    {
      v11 = v9;
    }

    v39[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v13 = v5[3];
    v14 = v13;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v14, OS_SIGNPOST_INTERVAL_END, v4, "LocalSettingsFetch", "", buf, 2u);
    }

    [v6 end];
    v15 = objc_autoreleasePoolPush();
    v16 = v5;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v16 dataSource];
      [v19 setupStartTimestamp];
      *buf = 138543618;
      v35 = v18;
      v36 = 2048;
      v37 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v22 = [v16 dataSource];
    [v22 setupStartTimestamp];
    v24 = v23;

    v25 = objc_autoreleasePoolPush();
    v26 = v16;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = (v21 / 0x3B9ACA00) - v24;
      if (v28 >= 0.0)
      {
        v29 = (v21 / 0x3B9ACA00) - v24;
      }

      else
      {
        v29 = -v28;
      }

      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v30;
      v36 = 2048;
      v37 = v29;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Settings creation latency %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [v7 setSetupStartTimestamp:0.0];
    v31 = [v7 currentAccessorySetupMetricDispatcher];
    [v31 markSetupEndStage:5 error:v33];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (HMDFetchedAccessorySettingsController)initWithQueue:(id)a3 dataSource:(id)a4 drivers:(id)a5 notificationCenter:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v41.receiver = self;
  v41.super_class = HMDFetchedAccessorySettingsController;
  v15 = [(HMDFetchedAccessorySettingsController *)&v41 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(&v16->_dataSource, a4);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingFetchKeyPaths = v16->_pendingFetchKeyPaths;
    v16->_pendingFetchKeyPaths = v17;

    v19 = [HMDFetchedAccessorySettingsControllerMutableKeyPathMap alloc];
    v20 = v13;
    if (v19)
    {
      v42.receiver = v19;
      v42.super_class = HMDFetchedAccessorySettingsControllerMutableKeyPathMap;
      v21 = [(HMDFetchedAccessorySettingsController *)&v42 init];
      if (v21)
      {
        v22 = [v20 mutableCopy];
        v23 = *&v21->_lock._os_unfair_lock_opaque;
        *&v21->_lock._os_unfair_lock_opaque = v22;
      }
    }

    else
    {
      v21 = 0;
    }

    driverMap = v16->_driverMap;
    v16->_driverMap = v21;

    v16->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v16->_notificationCenter, v14);
    v25 = objc_opt_new();
    keyPathToSettingCache = v16->_keyPathToSettingCache;
    v16->_keyPathToSettingCache = v25;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = v20;
    v28 = [v27 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        v31 = 0;
        do
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v37 + 1) + 8 * v31) driver];
          [v32 setDelegate:v16];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v29);
    }

    v33 = HMFGetOSLogHandle();
    logger = v16->_logger;
    v16->_logger = v33;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HMDFetchedAccessorySettingsController)initWithQueue:(id)a3 dataSource:(id)a4 drivers:(id)a5
{
  v8 = MEMORY[0x277CCAB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultCenter];
  v13 = [(HMDFetchedAccessorySettingsController *)self initWithQueue:v11 dataSource:v10 drivers:v9 notificationCenter:v12];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_112812 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_112812, &__block_literal_global_36_112813);
  }

  v3 = logCategory__hmf_once_v1_112814;

  return v3;
}

void __52__HMDFetchedAccessorySettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_112814;
  logCategory__hmf_once_v1_112814 = v1;
}

@end