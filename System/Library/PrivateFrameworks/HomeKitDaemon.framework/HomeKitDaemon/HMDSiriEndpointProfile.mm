@interface HMDSiriEndpointProfile
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
+ (id)namespace;
+ (id)uniqueIdentifierFromAccessory:(id)a3;
- (BOOL)_notificationEnabledForType:(unint64_t)a3;
- (BOOL)manuallyDisabled;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)a3;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)a3 notificationCenter:(id)a4;
- (NSArray)_allEndpointCharacteristicsToMonitor;
- (NSArray)_allSettingsCharacteristicsToMonitor;
- (NSArray)assistants;
- (NSArray)profileServices;
- (NSNumber)activeIdentifier;
- (NSNumber)needsOnboarding;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (id)_siriEndpointActiveIdentifierCharacteristic;
- (id)_siriEndpointActiveIdentifierReadRequest;
- (id)_siriEndpointManuallyDisabledCharacteristic;
- (id)_siriEndpointManuallyDisabledReadRequest;
- (id)_siriEndpointSessionStatusCharacteristic;
- (id)_siriEndpointSessionStatusReadRequest;
- (id)_siriEndpointVersionCharacteristic;
- (id)_siriEndpointVersionReadRequest;
- (id)_siriSettingMultifunctionButtonCharacteristic;
- (id)_siriSettingMultifunctionButtonReadRequest;
- (id)_siriSettingSiriEnableCharacteristic;
- (id)_siriSettingSiriEnableReadRequest;
- (id)_siriSettingSiriEngineVersionCharacteristic;
- (id)_siriSettingSiriEngineVersionReadRequest;
- (id)_siriSettingSiriLightOnUseCharacteristic;
- (id)_siriSettingSiriLightOnUseReadRequest;
- (id)_siriSettingSiriListeningCharacteristic;
- (id)_siriSettingSiriListeningReadRequest;
- (id)_siriSettingSiriTouchCharacteristic;
- (id)_siriSettingSiriTouchReadRequest;
- (id)attributeDescriptions;
- (int64_t)multifunctionButton;
- (int64_t)siriEnable;
- (int64_t)siriLightOnUse;
- (int64_t)siriListening;
- (int64_t)siriTouchToUse;
- (unint64_t)_capability;
- (void)_handleCharacteristicChanges:(id)a3;
- (void)_handleRefreshProfileState:(id)a3;
- (void)_handleRefreshProfileState:(id)a3 completionHandler:(id)a4;
- (void)_notificationEnable:(BOOL)a3 forType:(unint64_t)a4;
- (void)_notifyProfileSettingsUpdated:(id)a3;
- (void)_updateSessionState:(id)a3 settings:(id)a4 message:(id)a5;
- (void)addService:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleAccessoryConfigured:(id)a3;
- (void)handleDeviceCapabilitiesUpdated:(id)a3;
- (void)handleEnableNotifications:(id)a3;
- (void)handleHomeCharacteristicValuesChanged:(id)a3;
- (void)handlePrimaryResidentChanged:(id)a3;
- (void)handleUpdateNeedsOnboarding:(id)a3;
- (void)notifyClientsDidUpdateStagedNeedsOnboarding;
- (void)refreshStateWithCompletionHandler:(id)a3;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)setActiveIdentifier:(id)a3;
- (void)setAssistants:(id)a3;
- (void)setEnable:(int64_t)a3 completionHandler:(id)a4;
- (void)setLightOnUse:(int64_t)a3 completionHandler:(id)a4;
- (void)setListening:(int64_t)a3 completionHandler:(id)a4;
- (void)setManuallyDisabled:(BOOL)a3;
- (void)setMultifunctionButton:(int64_t)a3;
- (void)setNotifications:(BOOL)a3 options:(unint64_t)a4;
- (void)setProfileServices:(id)a3;
- (void)setSessionHubIdentifier:(id)a3;
- (void)setSiriEnable:(int64_t)a3;
- (void)setSiriEndpointVersion:(id)a3;
- (void)setSiriEngineVersion:(id)a3;
- (void)setSiriLightOnUse:(int64_t)a3;
- (void)setSiriListening:(int64_t)a3;
- (void)setSiriTouchToUse:(int64_t)a3;
- (void)setSoundOnUse:(int64_t)a3 completionHandler:(id)a4;
- (void)setTouchToUse:(int64_t)a3 completionHandler:(id)a4;
- (void)stageNeedsOnboarding:(int64_t)a3;
- (void)stageNeedsOnboarding:(int64_t)a3 withTimeout:(double)a4;
- (void)stagedValue:(id)a3 didExpireValue:(id)a4;
- (void)unregisterForNotifications;
- (void)updateNeedsOnboarding:(int64_t)a3 withTimeout:(double)a4;
@end

@implementation HMDSiriEndpointProfile

- (void)setNotifications:(BOOL)a3 options:(unint64_t)a4
{
  v7 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDSiriEndpointProfile_setNotifications_options___block_invoke;
  block[3] = &unk_27867B2E0;
  block[4] = self;
  block[5] = a4;
  v9 = a3;
  dispatch_async(v7, block);
}

void __51__HMDSiriEndpointProfile_setNotifications_options___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    [*(a1 + 32) _setNotifications:*(a1 + 48) options:1];
    if ((*(a1 + 40) & 2) == 0)
    {
LABEL_7:
      v8 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v2 & 2) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v12 = 138543618;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@[Notifications] options is not valid: %ld", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *MEMORY[0x277D85DE8];

  [v9 _setNotifications:v10 options:2];
}

- (NSArray)_allSettingsCharacteristicsToMonitor
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];

  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];

  if (v8)
  {
    [v3 addObject:v8];
  }

  v9 = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];

  if (v9)
  {
    [v3 addObject:v9];
  }

  v10 = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];

  if (v10)
  {
    [v3 addObject:v10];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(HMDSiriEndpointProfile *)self assistants];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) characteristicsToMonitor];
        [v3 addObjectsFromArray:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSArray)_allEndpointCharacteristicsToMonitor
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)_notificationEnable:(BOOL)a3 forType:(unint64_t)a4
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if (v5)
  {
    v7 = [(HMDSiriEndpointProfile *)self notifications]| a4;
  }

  else
  {
    v8 = [(HMDSiriEndpointProfile *)self notifications];
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8 & 1;
    }
  }

  [(HMDSiriEndpointProfile *)self setNotifications:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_notificationEnabledForType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  LOBYTE(a3) = (a3 & ~[(HMDSiriEndpointProfile *)self notifications]) == 0;
  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setSoundOnUse:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  if (v5)
  {
    v5[2](v5, v4);
  }
}

- (void)setLightOnUse:(int64_t)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 < 2)
  {
    v8 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3 == 1];
      v13 = [v11 authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v12 authorizationData:v13 type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v16 = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__HMDSiriEndpointProfile_setLightOnUse_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = v6;
        v30[1] = a3;
        [v10 writeCharacteristicValues:v15 source:1190 queue:v16 completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Light On Use] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (v6)
        {
          (*(v6 + 2))(v6, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Light On Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (v6)
      {
        (*(v6 + 2))(v6, v11);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v6)
    {
      (*(v6 + 2))(v6, v7);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __58__HMDSiriEndpointProfile_setLightOnUse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        v9 = 0;
        v37 = v6;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v46 = v18;
              v47 = 2112;
              v48 = v19;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v37;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000258-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriLightOnUse:v36[7]];
              v43 = @"settings-light";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriLightOnUse")}];
              v44 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v36[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v36[4];
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v36[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setTouchToUse:(int64_t)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 < 2)
  {
    v8 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3 == 1];
      v13 = [v11 authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v12 authorizationData:v13 type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v16 = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__HMDSiriEndpointProfile_setTouchToUse_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = v6;
        v30[1] = a3;
        [v10 writeCharacteristicValues:v15 source:1190 queue:v16 completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Touch To Use] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (v6)
        {
          (*(v6 + 2))(v6, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Touch To Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (v6)
      {
        (*(v6 + 2))(v6, v11);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v6)
    {
      (*(v6 + 2))(v6, v7);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __58__HMDSiriEndpointProfile_setTouchToUse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        v9 = 0;
        v37 = v6;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v46 = v18;
              v47 = 2112;
              v48 = v19;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v37;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000257-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriTouchToUse:v36[7]];
              v43 = @"settings-touch";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriTouchToUse")}];
              v44 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v36[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v36[4];
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v36[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setListening:(int64_t)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 < 2)
  {
    v8 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3 == 1];
      v13 = [v11 authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v12 authorizationData:v13 type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v16 = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __57__HMDSiriEndpointProfile_setListening_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = v6;
        v30[1] = a3;
        [v10 writeCharacteristicValues:v15 source:1190 queue:v16 completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Listening] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (v6)
        {
          (*(v6 + 2))(v6, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Listening] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (v6)
      {
        (*(v6 + 2))(v6, v11);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v6)
    {
      (*(v6 + 2))(v6, v7);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __57__HMDSiriEndpointProfile_setListening_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        v9 = 0;
        v37 = v6;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v46 = v18;
              v47 = 2112;
              v48 = v19;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v37;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000256-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriListening:v36[7]];
              v43 = @"settings-listening";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriListening")}];
              v44 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v36[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v36[4];
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v36[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setEnable:(int64_t)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 < 2)
  {
    v8 = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3 == 1];
      v13 = [v11 authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v11 value:v12 authorizationData:v13 type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v16 = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __54__HMDSiriEndpointProfile_setEnable_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = v6;
        v30[1] = a3;
        [v10 writeCharacteristicValues:v15 source:1190 queue:v16 completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Set Enable] failed to create siri enable write request", location, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        if (v6)
        {
          (*(v6 + 2))(v6, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Enable] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (v6)
      {
        (*(v6 + 2))(v6, v11);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v6)
    {
      (*(v6 + 2))(v6, v7);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __54__HMDSiriEndpointProfile_setEnable_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v3 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v40;
      do
      {
        v9 = 0;
        v37 = v6;
        do
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * v9);
          v11 = [v10 error];

          if (v11)
          {
            v12 = [v10 error];

            v13 = objc_autoreleasePoolPush();
            v14 = WeakRetained;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v16 = v8;
              v18 = v17 = WeakRetained;
              v19 = [v10 request];
              v20 = [v10 error];
              *buf = 138543874;
              v46 = v18;
              v47 = 2112;
              v48 = v19;
              v49 = 2112;
              v50 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Write request %@ failed with error %@", buf, 0x20u);

              WeakRetained = v17;
              v8 = v16;
              v6 = v37;
            }

            objc_autoreleasePoolPop(v13);
            v7 = v12;
          }

          else
          {
            v21 = [v10 request];
            v22 = [v21 characteristic];
            v23 = [v22 type];
            v24 = [v23 isEqual:@"00000255-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              [WeakRetained setSiriEnable:v36[7]];
              v43 = @"settings-enable";
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "siriEnable")}];
              v44 = v25;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

              [WeakRetained _notifyProfileSettingsUpdated:v26];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v33 = v36[5];
    if (v33)
    {
      (*(v33 + 16))(v33, v7);
    }

    v3 = v35;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v36[4];
      *buf = 138543618;
      v46 = v30;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    v32 = v36[5];
    if (v32)
    {
      (*(v32 + 16))(v32, v7);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = HMDSiriEndpointProfile;
  v4 = a3;
  [(HMDAccessoryProfile *)&v15 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState", v15.receiver, v15.super_class)}];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD1038]];

  v6 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
  v7 = [v6 UUIDString];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD1030]];

  v8 = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CD1058]];

  v9 = [(HMDSiriEndpointProfile *)self _capability];
  [v4 encodeInteger:v9 forKey:*MEMORY[0x277CD0FE8]];
  v10 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CD1048]];

  v11 = [(HMDSiriEndpointProfile *)self activeIdentifier];
  [v4 encodeObject:v11 forKey:*MEMORY[0x277CD0FC0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
  [v4 encodeObject:v12 forKey:*MEMORY[0x277CD1008]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
  [v4 encodeObject:v13 forKey:*MEMORY[0x277CD1010]];

  v14 = [(HMDSiriEndpointProfile *)self assistants];
  [v4 encodeObject:v14 forKey:*MEMORY[0x277CD0FE0]];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v5 = [v3 initWithName:@"uniqueIdentifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDSiriEndpointProfile *)self sessionState];
  v7 = HMSiriEndpointProfileSessionStateTypeToString();
  v8 = [v6 initWithName:@"sessionState" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)_capability
{
  v3 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HMDSiriEndpointProfile *)self needsOnboarding];
    v7 = [v6 integerValue];

    v8 = [v5 supportsSiriEndpointOnBoarding];
    v9 = 2;
    if (!v7)
    {
      v9 = 3;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7 == 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateSessionState:(id)a3 settings:(id)a4 message:(id)a5
{
  v116 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v110 = a5;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
  v111 = v11;
  if (v8)
  {
    v12 = [v8 sessionState];
    v13 = [v12 value];
    if (v13 >= 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 != [(HMDSiriEndpointProfile *)self sessionState])
    {
      v109 = v8;
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMSiriEndpointProfileSessionStateTypeToString();
        *buf = 138543618;
        v113 = v18;
        v114 = 2112;
        v115 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating session state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](v16, "sessionState")}];
      v11 = v111;
      [v111 setValue:v20 forKey:@"HMDSiriEndpointProfilePreviousSessionStateKey"];

      v8 = v109;
    }

    [(HMDSiriEndpointProfile *)self setSessionState:v14];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState")}];
    [v10 setValue:v21 forKey:*MEMORY[0x277CD1038]];

    v22 = [v8 hubUUID];
    v23 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    v24 = HMFEqualObjects();

    if ((v24 & 1) == 0)
    {
      v25 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
      v26 = [v25 UUIDString];
      [v11 setValue:v26 forKey:@"HMDSiriEndpointProfilePreviousSessionHubIdentiferKey"];
    }

    [(HMDSiriEndpointProfile *)self setSessionHubIdentifier:v22];
    v27 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    v28 = [v27 UUIDString];
    [v10 setValue:v28 forKey:*MEMORY[0x277CD1030]];
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  if (v9)
  {
    v30 = [v9 siriEnable];

    if (v30)
    {
      v31 = [v9 siriEnable];
      v32 = [v31 integerValue];
      v33 = v32 == 1 ? 1 : -1;
      v34 = v32 ? v33 : 0;

      if ([(HMDSiriEndpointProfile *)self siriEnable]!= v34)
      {
        [(HMDSiriEndpointProfile *)self setSiriEnable:v34];
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriEnable](self, "siriEnable")}];
        [v29 setValue:v35 forKey:@"settings-enable"];
      }
    }

    v36 = [v9 siriListening];

    if (v36)
    {
      v37 = [v9 siriListening];
      v38 = [v37 integerValue];
      v39 = v38 == 1 ? 1 : -1;
      v40 = v38 ? v39 : 0;

      if ([(HMDSiriEndpointProfile *)self siriListening]!= v40)
      {
        [(HMDSiriEndpointProfile *)self setSiriListening:v40];
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriListening](self, "siriListening")}];
        [v29 setValue:v41 forKey:@"settings-listening"];
      }
    }

    v42 = [v9 siriTouchToUse];

    if (v42)
    {
      v43 = [v9 siriTouchToUse];
      v44 = [v43 integerValue];
      v45 = v44 == 1 ? 1 : -1;
      v46 = v44 ? v45 : 0;

      if ([(HMDSiriEndpointProfile *)self siriTouchToUse]!= v46)
      {
        [(HMDSiriEndpointProfile *)self setSiriTouchToUse:v46];
        v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriTouchToUse](self, "siriTouchToUse")}];
        [v29 setValue:v47 forKey:@"settings-touch"];
      }
    }

    v48 = [v9 siriLightOnUse];

    if (v48)
    {
      v49 = [v9 siriLightOnUse];
      v50 = [v49 integerValue];
      v51 = v50 == 1 ? 1 : -1;
      v52 = v50 ? v51 : 0;

      if ([(HMDSiriEndpointProfile *)self siriLightOnUse]!= v52)
      {
        [(HMDSiriEndpointProfile *)self setSiriLightOnUse:v52];
        v53 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriLightOnUse](self, "siriLightOnUse")}];
        [v29 setValue:v53 forKey:@"settings-light"];
      }
    }

    v54 = [v9 siriEndpointVersion];

    if (v54)
    {
      v55 = [v9 siriEndpointVersion];
      [(HMDSiriEndpointProfile *)self setSiriEndpointVersion:v55];

      v56 = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
      [v10 setValue:v56 forKey:*MEMORY[0x277CD1058]];
    }

    v57 = [v9 siriEngineVersion];

    if (v57)
    {
      v58 = [v9 siriEngineVersion];
      v59 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      v60 = HMFEqualObjects();

      if ((v60 & 1) == 0)
      {
        v61 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
        [v11 setValue:v61 forKey:@"HMDSiriEndpointProfilePreviousSiriEngineVersionKey"];
      }

      v62 = [v9 siriEngineVersion];
      [(HMDSiriEndpointProfile *)self setSiriEngineVersion:v62];

      v63 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      [v10 setValue:v63 forKey:*MEMORY[0x277CD1048]];
    }

    v64 = [v9 activeIdentifier];

    if (v64)
    {
      v65 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      if (v65)
      {
        v66 = v65;
        v67 = [v9 activeIdentifier];
        v68 = [(HMDSiriEndpointProfile *)self activeIdentifier];
        v69 = HMFEqualObjects();

        if ((v69 & 1) == 0)
        {
          v70 = [(HMDSiriEndpointProfile *)self activeIdentifier];
          [v111 setValue:v70 forKey:@"HMDSiriEndpointProfilePreviousActiveIdentifierKey"];
        }
      }

      v71 = [v9 activeIdentifier];
      [(HMDSiriEndpointProfile *)self setActiveIdentifier:v71];

      v72 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      [v10 setValue:v72 forKey:*MEMORY[0x277CD0FC0]];

      v11 = v111;
    }

    v73 = [v9 manuallyDisabled];

    if (v73)
    {
      v74 = [v9 manuallyDisabled];
      v75 = [v74 BOOLValue];
      v76 = [(HMDSiriEndpointProfile *)self manuallyDisabled];

      if (v75 != v76)
      {
        v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
        [v11 setValue:v77 forKey:@"HMDSiriEndpointProfilePreviousManuallyDisabledKey"];
      }

      v78 = [v9 manuallyDisabled];
      -[HMDSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v78 BOOLValue]);

      v79 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
      [v10 setValue:v79 forKey:*MEMORY[0x277CD1008]];
    }

    v80 = [v9 multifunctionButton];

    if (v80)
    {
      v81 = [v9 multifunctionButton];
      v82 = [v81 integerValue];
      if (v82 == 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = -1;
      }

      if (v82)
      {
        v84 = v83;
      }

      else
      {
        v84 = 0;
      }

      if (v84 != [(HMDSiriEndpointProfile *)self multifunctionButton])
      {
        v85 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
        [v11 setValue:v85 forKey:@"HMDSiriEndpointProfilePreviousMultifunctionButtonKey"];
      }

      [(HMDSiriEndpointProfile *)self setMultifunctionButton:v84];
      v86 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
      [v10 setValue:v86 forKey:*MEMORY[0x277CD1010]];
    }

    if ([v9 assistantsUpdated])
    {
      v87 = [(HMDSiriEndpointProfile *)self assistants];
      v88 = encodeRootObjectForIncomingXPCMessage(v87, 0);
      [v10 setValue:v88 forKey:*MEMORY[0x277CD0FE0]];
    }
  }

  v89 = [v10 count];
  v90 = objc_autoreleasePoolPush();
  v91 = self;
  v92 = HMFGetOSLogHandle();
  v93 = os_log_type_enabled(v92, OS_LOG_TYPE_INFO);
  if (v89)
  {
    v94 = v8;
    if (v93)
    {
      v95 = HMFGetLogIdentifier();
      *buf = 138543618;
      v113 = v95;
      v114 = 2112;
      v115 = v10;
      _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated profile state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v90);
    v96 = objc_alloc(MEMORY[0x277D0F820]);
    v97 = [(HMDAccessoryProfile *)v91 uniqueIdentifier];
    v98 = [v96 initWithTarget:v97];

    v99 = MEMORY[0x277D0F848];
    v100 = *MEMORY[0x277CD1050];
    v101 = [v10 copy];
    v102 = [v99 messageWithName:v100 destination:v98 payload:v101];

    v103 = [v110 identifier];
    if (v103)
    {
      [v102 setIdentifier:v103];
    }

    [v102 setRequiresSPIEntitlement];
    v104 = [(HMDAccessoryProfile *)v91 msgDispatcher];
    v105 = [v102 copy];
    [v104 sendMessage:v105 completionHandler:0];

    v8 = v94;
  }

  else
  {
    if (v93)
    {
      v106 = HMFGetLogIdentifier();
      *buf = 138543362;
      v113 = v106;
      _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@No changes, not notifying XPC clients", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v90);
  }

  if ([v111 count])
  {
    v107 = [(HMDSiriEndpointProfile *)v91 notificationCenter];
    [v107 postNotificationName:@"HMDSiriEndpointProfileUpdatedNotification" object:v91 userInfo:v111];
  }

  [(HMDSiriEndpointProfile *)v91 _notifyProfileSettingsUpdated:v29];

  v108 = *MEMORY[0x277D85DE8];
}

- (void)_notifyProfileSettingsUpdated:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(HMDSiriEndpointProfile *)self notificationCenter];
    [v4 postNotificationName:@"HMDSiriEndpointProfileSettingsUpdatedNotification" object:self userInfo:v5];
  }
}

- (void)_handleRefreshProfileState:(id)a3 completionHandler:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v91 = a3;
  v86 = a4;
  val = self;
  v6 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v84 = v8;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v10 = [v91 arrayForKey:*MEMORY[0x277CD1018]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v18 = *MEMORY[0x277CD1040];
      v115[0] = *MEMORY[0x277CD1028];
      v115[1] = v18;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
    }

    v19 = v12;

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v19;
    v90 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v90)
    {
      v87 = *MEMORY[0x277CD1028];
      v88 = *v109;
      v83 = *MEMORY[0x277CD1040];
      do
      {
        v20 = 0;
        do
        {
          if (*v109 != v88)
          {
            v21 = v20;
            objc_enumerationMutation(obj);
            v20 = v21;
          }

          v92 = v20;
          v22 = *(*(&v108 + 1) + 8 * v20);
          if ([v22 isEqual:v87])
          {
            v23 = [(HMDSiriEndpointProfile *)val _siriEndpointSessionStatusReadRequest];
            if (v23)
            {
              [v9 addObject:v23];
            }

            else
            {
              v25 = objc_autoreleasePoolPush();
              v26 = val;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v28;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint session status is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v25);
            }

            v29 = [(HMDSiriEndpointProfile *)val _siriEndpointVersionReadRequest];

            if (v29)
            {
              [v9 addObject:v29];
            }

            else
            {
              v30 = objc_autoreleasePoolPush();
              v31 = val;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v33;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint version is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v30);
            }

            v34 = [(HMDSiriEndpointProfile *)val _siriEndpointActiveIdentifierReadRequest];

            if (v34)
            {
              [v9 addObject:v34];
            }

            else
            {
              v35 = objc_autoreleasePoolPush();
              v36 = val;
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v38;
                _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint active identifier is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v35);
            }

            v39 = [(HMDSiriEndpointProfile *)val _siriEndpointManuallyDisabledReadRequest];

            if (v39)
            {
              [v9 addObject:v39];
            }

            else
            {
              v40 = objc_autoreleasePoolPush();
              v41 = val;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v43;
                _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint manually disable is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v40);
            }

            v89 = [(HMDSiriEndpointProfile *)val _siriSettingMultifunctionButtonReadRequest];

            if (v89)
            {
              [v9 addObject:?];
            }

            else
            {
              v44 = objc_autoreleasePoolPush();
              v45 = val;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v47;
                _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint multifunction button is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v44);
            }

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v94 = [(HMDSiriEndpointProfile *)val assistants];
            v48 = [v94 countByEnumeratingWithState:&v104 objects:v113 count:16];
            if (v48)
            {
              v49 = *v105;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v105 != v49)
                  {
                    objc_enumerationMutation(v94);
                  }

                  v51 = *(*(&v104 + 1) + 8 * i);
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v52 = [v51 allCharacteristics];
                  v53 = [v52 countByEnumeratingWithState:&v100 objects:v112 count:16];
                  if (v53)
                  {
                    v54 = *v101;
                    do
                    {
                      for (j = 0; j != v53; ++j)
                      {
                        if (*v101 != v54)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v56 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v100 + 1) + 8 * j)];
                        if (v56)
                        {
                          [v9 addObject:v56];
                        }
                      }

                      v53 = [v52 countByEnumeratingWithState:&v100 objects:v112 count:16];
                    }

                    while (v53);
                  }
                }

                v48 = [v94 countByEnumeratingWithState:&v104 objects:v113 count:16];
              }

              while (v48);
            }

            v57 = v89;
          }

          else
          {
            if (![v22 isEqual:v83])
            {
              goto LABEL_87;
            }

            v24 = [(HMDSiriEndpointProfile *)val _siriSettingSiriEnableReadRequest];
            if (v24)
            {
              [v9 addObject:v24];
            }

            else
            {
              v58 = objc_autoreleasePoolPush();
              v59 = val;
              v60 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v61 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v61;
                _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri enable is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v58);
            }

            v62 = [(HMDSiriEndpointProfile *)val _siriSettingSiriListeningReadRequest];

            if (v62)
            {
              [v9 addObject:v62];
            }

            else
            {
              v63 = objc_autoreleasePoolPush();
              v64 = val;
              v65 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                v66 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v66;
                _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri listening is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v63);
            }

            v67 = [(HMDSiriEndpointProfile *)val _siriSettingSiriTouchReadRequest];

            if (v67)
            {
              [v9 addObject:v67];
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              v69 = val;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v71;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri touch is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v68);
            }

            v72 = [(HMDSiriEndpointProfile *)val _siriSettingSiriLightOnUseReadRequest];

            if (v72)
            {
              [v9 addObject:v72];
            }

            else
            {
              v73 = objc_autoreleasePoolPush();
              v74 = val;
              v75 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v76 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v76;
                _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri light on use is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v73);
            }

            v57 = [(HMDSiriEndpointProfile *)val _siriSettingSiriEngineVersionReadRequest];

            if (v57)
            {
              [v9 addObject:v57];
            }

            else
            {
              v77 = objc_autoreleasePoolPush();
              v78 = val;
              v79 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = HMFGetLogIdentifier();
                *buf = 138543362;
                v117 = v80;
                _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile State] siri endpoint settings siri engine is not available", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v77);
              v57 = 0;
            }
          }

LABEL_87:
          v20 = v92 + 1;
        }

        while (v92 + 1 != v90);
        v90 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v90);
    }

    objc_initWeak(buf, val);
    v81 = [(HMDAccessoryProfile *)val workQueue];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __71__HMDSiriEndpointProfile__handleRefreshProfileState_completionHandler___block_invoke;
    v95[3] = &unk_27867B2B8;
    objc_copyWeak(&v99, buf);
    v17 = v9;
    v96 = v17;
    v97 = v91;
    v98 = v86;
    [v84 readCharacteristicValues:v17 source:1190 queue:v81 completionHandler:v95];

    objc_destroyWeak(&v99);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = val;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v117 = v16;
      v118 = 2112;
      v119 = v14;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Refreshing Profile] accessory not part of profile (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v91 respondWithError:v17];
    if (v86)
    {
      v86[2]();
    }
  }

  v82 = *MEMORY[0x277D85DE8];
}

void __71__HMDSiriEndpointProfile__handleRefreshProfileState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v90 = WeakRetained;
  if ([v3 count])
  {
    v84 = a1;
    v89 = objc_alloc_init(HMDSiriEndpointHAPSettings);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v85 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v98 objects:v109 count:16];
    if (!v6)
    {
      v8 = 0;
      v91 = 0;
      goto LABEL_81;
    }

    v7 = v6;
    v8 = 0;
    v91 = 0;
    v92 = *v99;
    v87 = *MEMORY[0x277CCFB98];
    v86 = *MEMORY[0x277CCF750];
    while (1)
    {
      v9 = 0;
      v88 = v7;
      do
      {
        if (*v99 != v92)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v98 + 1) + 8 * v9);
        v11 = [v10 error];

        if (!v11)
        {
          v18 = [v10 request];
          v19 = [v18 characteristic];

          v20 = [v19 type];
          v21 = [v20 isEqual:@"00000254-0000-1000-8000-0026BB765291"];

          if (v21)
          {
            v22 = v5;
            v23 = [v10 value];
            v97 = 0;
            v24 = [HMDSiriEndpointSessionStateTLV parsedFromData:v23 error:&v97];
            v25 = v97;

            v26 = objc_autoreleasePoolPush();
            v27 = WeakRetained;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = HMFGetLogIdentifier();
              *buf = 138543874;
              v104 = v29;
              v105 = 2112;
              v106 = v24;
              v107 = 2112;
              v108 = v25;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Response Parsed HMDSiriEndpointSessionStateTLV: %@ with error: %@", buf, 0x20u);

              WeakRetained = v90;
            }

            objc_autoreleasePoolPop(v26);
            v5 = v22;
            goto LABEL_15;
          }

          v30 = [v19 type];
          v31 = [v30 isEqualToString:v87];

          if (v31)
          {
            v32 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v25 = v33;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriEndpointVersion:v25];
            goto LABEL_71;
          }

          v34 = [v19 type];
          v35 = [v34 isEqual:@"00000255-0000-1000-8000-0026BB765291"];

          if (v35)
          {
            v36 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            v25 = v37;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriEnable:v25];
            goto LABEL_71;
          }

          v38 = [v19 type];
          v39 = [v38 isEqual:@"00000256-0000-1000-8000-0026BB765291"];

          if (v39)
          {
            v40 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            v25 = v41;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriListening:v25];
            goto LABEL_71;
          }

          v42 = [v19 type];
          v43 = [v42 isEqual:@"00000257-0000-1000-8000-0026BB765291"];

          if (v43)
          {
            v44 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v25 = v45;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriTouchToUse:v25];
            goto LABEL_71;
          }

          v46 = [v19 type];
          v47 = [v46 isEqual:@"00000258-0000-1000-8000-0026BB765291"];

          if (v47)
          {
            v48 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }

            v25 = v49;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriLightOnUse:v25];
            goto LABEL_71;
          }

          v50 = [v19 type];
          v51 = [v50 isEqualToString:@"0000025A-0000-1000-8000-0026BB765291"];

          if (v51)
          {
            v52 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = v52;
            }

            else
            {
              v53 = 0;
            }

            v25 = v53;

            [(HMDSiriEndpointHAPSettings *)v89 setSiriEngineVersion:v25];
            goto LABEL_71;
          }

          v54 = [v19 type];
          v55 = [v54 isEqualToString:v86];

          if (v55)
          {
            v56 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            v25 = v57;

            [(HMDSiriEndpointHAPSettings *)v89 setActiveIdentifier:v25];
            goto LABEL_71;
          }

          v58 = [v19 type];
          v59 = [v58 isEqualToString:@"00000227-0000-1000-8000-0026BB765291"];

          if (v59)
          {
            v60 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            v25 = v61;

            [(HMDSiriEndpointHAPSettings *)v89 setManuallyDisabled:v25];
            goto LABEL_71;
          }

          v62 = [v19 type];
          v63 = [v62 isEqualToString:@"0000026B-0000-1000-8000-0026BB765291"];

          if (v63)
          {
            v64 = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            v25 = v65;

            [(HMDSiriEndpointHAPSettings *)v89 setMultifunctionButton:v25];
LABEL_71:
            v24 = v91;
          }

          else
          {
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v25 = [WeakRetained assistants];
            v66 = [v25 countByEnumeratingWithState:&v93 objects:v102 count:16];
            if (!v66)
            {
              goto LABEL_71;
            }

            v67 = v66;
            v83 = v5;
            v68 = *v94;
            do
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v94 != v68)
                {
                  objc_enumerationMutation(v25);
                }

                v70 = *(*(&v93 + 1) + 8 * i);
                v71 = [v10 value];
                LODWORD(v70) = [v70 updateCharacteristic:v19 value:v71];

                if (v70)
                {
                  [(HMDSiriEndpointHAPSettings *)v89 setAssistantsUpdated:1];
                }

                WeakRetained = v90;
              }

              v67 = [v25 countByEnumeratingWithState:&v93 objects:v102 count:16];
            }

            while (v67);
            v24 = v91;
            v5 = v83;
LABEL_15:
            v7 = v88;
          }

          v91 = v24;
          goto LABEL_73;
        }

        v12 = [v10 error];

        v13 = objc_autoreleasePoolPush();
        v14 = WeakRetained;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [v10 error];
          *buf = 138543618;
          v104 = v16;
          v105 = 2112;
          v106 = v17;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Read failed with error %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v8 = v12;
LABEL_73:
        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (!v7)
      {
LABEL_81:

        v77 = v91;
        [WeakRetained _updateSessionState:v91 settings:v89 message:*(v84 + 40)];
        v79 = [*(v84 + 40) responseHandler];

        if (v79)
        {
          v80 = [*(v84 + 40) responseHandler];
          (v80)[2](v80, v8, 0);
        }

        v81 = *(v84 + 48);
        v3 = v85;
        if (v81)
        {
          (*(v81 + 16))(v81, v8);
        }

        goto LABEL_86;
      }
    }
  }

  v72 = objc_autoreleasePoolPush();
  v73 = WeakRetained;
  v74 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = HMFGetLogIdentifier();
    v76 = *(a1 + 32);
    *buf = 138543618;
    v104 = v75;
    v105 = 2112;
    v106 = v76;
    _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Invalid response for %@", buf, 0x16u);

    WeakRetained = v90;
  }

  objc_autoreleasePoolPop(v72);
  v77 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  [*(a1 + 40) respondWithError:v77];
  v78 = *(a1 + 48);
  if (v78)
  {
    (*(v78 + 16))(v78, v77);
  }

LABEL_86:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)_handleRefreshProfileState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle refresh profile state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSiriEndpointProfile *)v6 _handleRefreshProfileState:v4 completionHandler:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsDidUpdateStagedNeedsOnboarding
{
  v3 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDSiriEndpointProfile_notifyClientsDidUpdateStagedNeedsOnboarding__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __69__HMDSiriEndpointProfile_notifyClientsDidUpdateStagedNeedsOnboarding__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277CD0FE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "_capability")}];
  v20[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying XPC clients of updated needsOnboarding: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_alloc(MEMORY[0x277D0F820]);
  v9 = [*(a1 + 32) uniqueIdentifier];
  v10 = [v8 initWithTarget:v9];

  v11 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1050] destination:v10 payload:v3];
  [v11 setRequiresSPIEntitlement];
  v12 = [*(a1 + 32) msgDispatcher];
  v13 = [v11 copy];
  [v12 sendMessage:v13 completionHandler:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)a3 didExpireValue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];

  if (v8 == v6)
  {
    v13 = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    [v13 commitValue:&unk_283E73148];

    [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleEnableNotifications:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD0FF0]];
  v6 = [v4 numberForKey:*MEMORY[0x277CD1000]];
  v7 = [v6 unsignedIntegerValue];

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Profile Notifications] parameters not specific", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v12];
  }

  -[HMDSiriEndpointProfile setNotifications:options:](self, "setNotifications:options:", [v5 BOOLValue], v7);
  [v4 respondWithSuccess];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateNeedsOnboarding:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_UUIDForKey:@"accessoryUUID"];

  v7 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v6)
  {
    if (v9)
    {
      v10 = [v9 uuid];
      v11 = [v10 isEqual:v6];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = [v4 name];
          v17 = [v4 userInfo];
          v25 = 138543874;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %@/%@", &v25, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        v18 = [v4 userInfo];
        v19 = [v18 objectForKeyedSubscript:@"HMDSiriEndpointProfileNeedsOnboardingResultCodingKey"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 integerValue];
        if (v22 == 3)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2 * (v22 == 2);
        }

        [(HMDSiriEndpointProfile *)v13 stageNeedsOnboarding:v23];
        [(HMDSiriEndpointProfile *)v13 notifyClientsDidUpdateStagedNeedsOnboarding];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateNeedsOnboarding:(int64_t)a3 withTimeout:(double)a4
{
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:a3 withTimeout:a4];

  [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
}

- (void)handleDeviceCapabilitiesUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDSiriEndpointProfile_handleDeviceCapabilitiesUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__HMDSiriEndpointProfile_handleDeviceCapabilitiesUpdated___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 32) userInfo];
  v6 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [v5 hmf_arrayForKey:@"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey" ofClasses:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    v28 = 138543874;
    v29 = v13;
    v30 = 2112;
    v31 = v4;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling updated resident capabilities: %@ notification: %@", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(a1 + 40) accessory];
  v16 = [v15 home];
  v17 = [v16 residentDeviceManager];
  v18 = [v17 residentDevices];
  v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_173];

  v20 = [v19 device];
  if (v19 && [v19 isConfirmed])
  {
    v21 = [v20 capabilities];
    if (v21 == v4 && ([v9 containsObject:@"supportsSiriEndpointSetup"] & 1) != 0)
    {
      v22 = [v4 supportsSiriEndpointSetup];

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543618;
          v29 = v26;
          v30 = 2112;
          v31 = v20;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Current device was updated to support Siri Endpoint Settings (%@)", &v28, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _setNotifications:1 options:2];
        [*(a1 + 40) _handleRefreshProfileState:0 completionHandler:0];
      }
    }

    else
    {
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentChanged:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDSiriEndpointProfile_handlePrimaryResidentChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __55__HMDSiriEndpointProfile_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v1 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 residentDeviceManager];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = v4;
  v5 = [v4 residentDevices];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v23 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 isCurrentDevice])
        {
          v11 = [v10 capabilities];
          v12 = [v11 supportsSiriEndpointSetup];

          if (v12)
          {
            v13 = [v10 isConfirmed];
            v14 = objc_autoreleasePoolPush();
            v15 = *(v1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v18 = v17 = v5;
              v19 = HMFBooleanToString();
              *buf = 138543618;
              v29 = v18;
              v30 = 2112;
              v31 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Current device is primary:%@ and does not support home hub", buf, 0x16u);

              v5 = v17;
              v1 = v23;
            }

            objc_autoreleasePoolPop(v14);
            v20 = *(v1 + 32);
            if (v13)
            {
              [v20 _setNotifications:1 options:2];
              [*(v1 + 32) _handleRefreshProfileState:0 completionHandler:0];
            }

            else
            {
              [v20 _setNotifications:0 options:2];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConfigured:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDSiriEndpointProfile_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __52__HMDSiriEndpointProfile_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) accessory];
  v8 = [v7 home];
  v9 = [v8 currentDeviceSupportsSidekickSettings];

  if (v9)
  {
    [*(a1 + 32) _setNotifications:1 options:2];
  }

  if ([*(a1 + 32) _notificationEnabledForType:1])
  {
    [*(a1 + 32) _setNotifications:1 options:1];
  }

  [*(a1 + 32) setSessionState:-1];
  result = [*(a1 + 32) _handleRefreshProfileState:0 completionHandler:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v6 count])
  {
    v7 = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke;
    block[3] = &unk_27868A750;
    v18 = v6;
    v19 = self;
    dispatch_async(v7, block);

    v8 = v18;
  }

  else
  {
    v9 = [v4 userInfo];
    v8 = [v9 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];

    v10 = [(HMDAccessoryProfile *)self accessory];
    v11 = [v10 uuid];
    v12 = [v11 UUIDString];
    v13 = [v8 hmf_dictionaryForKey:v12];

    if (v13)
    {
      v14 = [(HMDAccessoryProfile *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke_2;
      v15[3] = &unk_27868A750;
      v15[4] = self;
      v16 = v13;
      dispatch_async(v14, v15);
    }
  }
}

void __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v42;
    v30 = *MEMORY[0x277CD21B8];
    v32 = *v42;
    v33 = a1;
    do
    {
      v5 = 0;
      v34 = v3;
      do
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * v5);
        v7 = [*(a1 + 40) accessory];
        v8 = [v7 uuid];
        v9 = [v6 accessory];
        v10 = [v9 uuid];
        v11 = HMFEqualObjects();

        if (v11)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v12 = [*(a1 + 40) services];
          v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v38;
            v36 = v5;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                v18 = [v17 instanceID];
                v19 = [v6 service];
                v20 = [v19 instanceID];
                v21 = HMFEqualObjects();

                if (v21)
                {
                  v22 = [v17 instanceID];
                  v23 = [v22 stringValue];

                  v24 = [v31 objectForKeyedSubscript:v23];
                  if (!v24)
                  {
                    v24 = [MEMORY[0x277CBEB38] dictionary];
                    [v31 setObject:v24 forKeyedSubscript:v23];
                  }

                  v25 = [v6 instanceID];
                  v26 = [v25 stringValue];

                  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
                  v28 = [v6 value];
                  [v27 setObject:v28 forKeyedSubscript:v30];

                  [v24 setObject:v27 forKeyedSubscript:v26];
                  v5 = v36;
                  goto LABEL_19;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
              v5 = v36;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v4 = v32;
          a1 = v33;
          v3 = v34;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v3);
  }

  [*(a1 + 40) _handleCharacteristicChanges:v31];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)a3
{
  v143 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v104 = self;
  v5 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v105 = objc_alloc_init(HMDSiriEndpointHAPSettings);
  v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v4;
  v91 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
  if (v91)
  {
    context = 0;
    v90 = *v130;
    v113 = *MEMORY[0x277CD2128];
    v108 = *MEMORY[0x277CD21B8];
    v102 = *MEMORY[0x277CCFB98];
    v93 = *MEMORY[0x277CCF750];
    v103 = v7;
    v109 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v130 != v90)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v92 = v9;
        v96 = *(*(&v129 + 1) + 8 * v9);
        v115 = [v8 numberFromString:v90];
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v98 = [(HMDSiriEndpointProfile *)v104 services];
        v11 = [v98 countByEnumeratingWithState:&v125 objects:v141 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v126;
          v95 = *v126;
          do
          {
            v14 = 0;
            v97 = v12;
            do
            {
              if (*v126 != v13)
              {
                objc_enumerationMutation(v98);
              }

              v15 = [*(*(&v125 + 1) + 8 * v14) instanceID];
              v16 = HMFEqualObjects();

              if (v16)
              {
                v99 = v14;
                v17 = [obj hmf_dictionaryForKey:v96];
                v121 = 0u;
                v122 = 0u;
                v123 = 0u;
                v124 = 0u;
                v18 = v17;
                v19 = [v18 countByEnumeratingWithState:&v121 objects:v140 count:16];
                if (!v19)
                {
                  goto LABEL_95;
                }

                v20 = v19;
                v114 = *v122;
                while (1)
                {
                  v21 = 0;
                  v110 = v20;
                  do
                  {
                    if (*v122 != v114)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v121 + 1) + 8 * v21);
                    v23 = [v8 numberFromString:v22];
                    v24 = [v7 findCharacteristic:v23 forService:v115];
                    if (v24)
                    {
                      v25 = [v18 hmf_dictionaryForKey:v22];
                      v26 = [v25 hmf_dataForKey:v113];
                      if (v26)
                      {
LABEL_43:

                        goto LABEL_44;
                      }

                      v27 = v18;
                      v28 = v7;
                      v29 = [v25 objectForKeyedSubscript:v108];
                      v30 = [MEMORY[0x277CBEB68] null];
                      v31 = [v29 isEqual:v30];

                      if (v31)
                      {
                        v111 = v29;
                        v7 = v28;
                        v18 = v27;
                        v8 = v109;
                        v20 = v110;

                        goto LABEL_43;
                      }

                      if (!v29)
                      {
                        v7 = v28;
                        v18 = v27;
                        v8 = v109;
                        v20 = v110;
                        goto LABEL_43;
                      }

                      v112 = v29;
                      v32 = [v24 type];
                      v33 = [v32 isEqualToString:@"00000254-0000-1000-8000-0026BB765291"];

                      if (v33)
                      {
                        v120 = 0;
                        v34 = [HMDSiriEndpointSessionStateTLV parsedFromData:v29 error:&v120];
                        v35 = v120;

                        contexta = objc_autoreleasePoolPush();
                        v36 = v104;
                        v37 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                        {
                          v100 = HMFGetLogIdentifier();
                          *buf = 138543874;
                          v135 = v100;
                          v136 = 2112;
                          v137 = v34;
                          v138 = 2112;
                          v139 = v35;
                          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Parsed HMDSiriEndpointSessionStateTLV: %@ with error: %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(contexta);
                        v7 = v103;
                        v38 = v35;
LABEL_40:
                        v18 = v27;
LABEL_41:
                        v20 = v110;
                      }

                      else
                      {
                        v39 = [v24 type];
                        v40 = [v39 isEqualToString:v102];

                        if (v40)
                        {
                          v41 = v29;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v42 = v41;
                          }

                          else
                          {
                            v42 = 0;
                          }

                          v43 = v42;

                          v38 = v43;
                          [(HMDSiriEndpointHAPSettings *)v105 setSiriEndpointVersion:v43];
                          v34 = context;
                          v7 = v28;
                          goto LABEL_40;
                        }

                        v44 = [v24 type];
                        v45 = [v44 isEqualToString:@"00000255-0000-1000-8000-0026BB765291"];

                        v7 = v28;
                        if (v45)
                        {
                          v46 = v112;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v47 = v46;
                          }

                          else
                          {
                            v47 = 0;
                          }

                          v48 = v47;

                          v38 = v48;
                          [(HMDSiriEndpointHAPSettings *)v105 setSiriEnable:v48];
                          v34 = context;
                          goto LABEL_40;
                        }

                        v49 = [v24 type];
                        v50 = [v49 isEqualToString:@"00000256-0000-1000-8000-0026BB765291"];

                        v18 = v27;
                        if (v50)
                        {
                          v51 = v112;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v52 = v51;
                          }

                          else
                          {
                            v52 = 0;
                          }

                          v53 = v52;

                          v38 = v53;
                          [(HMDSiriEndpointHAPSettings *)v105 setSiriListening:v53];
                          v34 = context;
                          goto LABEL_41;
                        }

                        v54 = [v24 type];
                        v55 = [v54 isEqualToString:@"00000257-0000-1000-8000-0026BB765291"];

                        v20 = v110;
                        if (v55)
                        {
                          v56 = v112;
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v57 = v56;
                          }

                          else
                          {
                            v57 = 0;
                          }

                          v58 = v57;

                          v38 = v58;
                          [(HMDSiriEndpointHAPSettings *)v105 setSiriTouchToUse:v58];
                        }

                        else
                        {
                          v59 = [v24 type];
                          v60 = [v59 isEqualToString:@"00000258-0000-1000-8000-0026BB765291"];

                          if (v60)
                          {
                            v61 = v112;
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v62 = v61;
                            }

                            else
                            {
                              v62 = 0;
                            }

                            v63 = v62;

                            v38 = v63;
                            [(HMDSiriEndpointHAPSettings *)v105 setSiriLightOnUse:v63];
                          }

                          else
                          {
                            v64 = [v24 type];
                            v65 = [v64 isEqualToString:@"0000025A-0000-1000-8000-0026BB765291"];

                            if (v65)
                            {
                              v66 = v112;
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v67 = v66;
                              }

                              else
                              {
                                v67 = 0;
                              }

                              v68 = v67;

                              v38 = v68;
                              [(HMDSiriEndpointHAPSettings *)v105 setSiriEngineVersion:v68];
                            }

                            else
                            {
                              v69 = [v24 type];
                              v70 = [v69 isEqualToString:v93];

                              if (v70)
                              {
                                v71 = v112;
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v72 = v71;
                                }

                                else
                                {
                                  v72 = 0;
                                }

                                v73 = v72;

                                v38 = v73;
                                [(HMDSiriEndpointHAPSettings *)v105 setActiveIdentifier:v73];
                              }

                              else
                              {
                                v74 = [v24 type];
                                v75 = [v74 isEqualToString:@"00000227-0000-1000-8000-0026BB765291"];

                                if (v75)
                                {
                                  v76 = v112;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v77 = v76;
                                  }

                                  else
                                  {
                                    v77 = 0;
                                  }

                                  v78 = v77;

                                  v38 = v78;
                                  [(HMDSiriEndpointHAPSettings *)v105 setManuallyDisabled:v78];
                                }

                                else
                                {
                                  v79 = [v24 type];
                                  v80 = [v79 isEqualToString:@"0000026B-0000-1000-8000-0026BB765291"];

                                  if (!v80)
                                  {
                                    v118 = 0u;
                                    v119 = 0u;
                                    v116 = 0u;
                                    v117 = 0u;
                                    v101 = [(HMDSiriEndpointProfile *)v104 assistants];
                                    v84 = [v101 countByEnumeratingWithState:&v116 objects:v133 count:16];
                                    if (v84)
                                    {
                                      v85 = v84;
                                      v86 = *v117;
                                      do
                                      {
                                        for (i = 0; i != v85; ++i)
                                        {
                                          if (*v117 != v86)
                                          {
                                            objc_enumerationMutation(v101);
                                          }

                                          if ([*(*(&v116 + 1) + 8 * i) updateCharacteristic:v24 value:v112])
                                          {
                                            [(HMDSiriEndpointHAPSettings *)v105 setAssistantsUpdated:1];
                                          }
                                        }

                                        v85 = [v101 countByEnumeratingWithState:&v116 objects:v133 count:16];
                                      }

                                      while (v85);
                                      v34 = context;
                                      v7 = v103;
                                    }

                                    else
                                    {
                                      v34 = context;
                                    }

                                    v38 = v101;
                                    goto LABEL_42;
                                  }

                                  v81 = v112;
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v82 = v81;
                                  }

                                  else
                                  {
                                    v82 = 0;
                                  }

                                  v83 = v82;

                                  v38 = v83;
                                  [(HMDSiriEndpointHAPSettings *)v105 setMultifunctionButton:v83];
                                }
                              }
                            }
                          }
                        }

                        v34 = context;
                      }

LABEL_42:

                      context = v34;
                      v8 = v109;

                      goto LABEL_43;
                    }

LABEL_44:

                    ++v21;
                  }

                  while (v21 != v20);
                  v88 = [v18 countByEnumeratingWithState:&v121 objects:v140 count:16];
                  v20 = v88;
                  if (!v88)
                  {
LABEL_95:

                    v13 = v95;
                    v12 = v97;
                    v14 = v99;
                    break;
                  }
                }
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [v98 countByEnumeratingWithState:&v125 objects:v141 count:16];
          }

          while (v12);
        }

        v9 = v92 + 1;
      }

      while (v92 + 1 != v91);
      v91 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
      if (!v91)
      {
        goto LABEL_102;
      }
    }
  }

  context = 0;
LABEL_102:

  [(HMDSiriEndpointProfile *)v104 _updateSessionState:context settings:v105 message:0];
  v89 = *MEMORY[0x277D85DE8];
}

- (void)setSiriEngineVersion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  siriEngineVersion = self->_siriEngineVersion;
  self->_siriEngineVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)siriEngineVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEngineVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSiriLightOnUse:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_siriLightOnUse = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriLightOnUse
{
  os_unfair_lock_lock_with_options();
  siriLightOnUse = self->_siriLightOnUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriLightOnUse;
}

- (void)setSiriTouchToUse:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_siriTouchToUse = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriTouchToUse
{
  os_unfair_lock_lock_with_options();
  siriTouchToUse = self->_siriTouchToUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriTouchToUse;
}

- (void)setSiriListening:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_siriListening = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriListening
{
  os_unfair_lock_lock_with_options();
  siriListening = self->_siriListening;
  os_unfair_lock_unlock(&self->_lock);
  return siriListening;
}

- (void)setSiriEnable:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_siriEnable = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriEnable
{
  os_unfair_lock_lock_with_options();
  siriEnable = self->_siriEnable;
  os_unfair_lock_unlock(&self->_lock);
  return siriEnable;
}

- (void)setMultifunctionButton:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->_lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_manuallyDisabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  manuallyDisabled = self->_manuallyDisabled;
  os_unfair_lock_unlock(&self->_lock);
  return manuallyDisabled;
}

- (void)setActiveIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  activeIdentifier = self->_activeIdentifier;
  self->_activeIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)activeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activeIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)needsOnboarding
{
  v3 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 || ([v5 needsOnboarding], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    v6 = [v7 value];
  }

  return v6;
}

- (void)stageNeedsOnboarding:(int64_t)a3 withTimeout:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging needsOnboarding: %ld", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDSiriEndpointProfile *)v8 stagedNeedsOnboarding];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 stageValue:v12 withTimeout:a4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stageNeedsOnboarding:(int64_t)a3
{
  v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v7 = [v5 preferenceForKey:@"siriProfileOnBoardingPendingTime"];

  v6 = [v7 numberValue];
  [v6 doubleValue];
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:a3 withTimeout:?];
}

- (NSArray)assistants
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistants;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssistants:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  assistants = self->_assistants;
  self->_assistants = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addService:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self accessory];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = [(HMDSiriEndpointProfile *)self profileServices];
    v9 = [v7 arrayWithArray:v8];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v26 + 1) + 8 * v14) instanceID];
          v16 = [v4 instanceID];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            v22 = v10;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [v10 addObject:v4];
    v18 = [v10 copy];
    [(HMDSiriEndpointProfile *)self setProfileServices:v18];

    v19 = [v4 serviceType];
    v20 = [v19 isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

    if (v20)
    {
      v21 = [(HMDSiriEndpointProfile *)self assistants];
      v22 = [v21 mutableCopy];

      v23 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:v4];
      [v22 addObject:v23];
      v24 = [v22 copy];
      [(HMDSiriEndpointProfile *)self setAssistants:v24];

LABEL_13:
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (NSArray)profileServices
{
  os_unfair_lock_lock_with_options();
  v3 = self->_profileServices;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProfileServices:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  profileServices = self->_profileServices;
  self->_profileServices = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSiriEndpointVersion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  siriEndpointVersion = self->_siriEndpointVersion;
  self->_siriEndpointVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)siriEndpointVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEndpointVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)sessionHubIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionHubIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSessionHubIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_siriSettingMultifunctionButtonReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingMultifunctionButtonCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"0000026B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointManuallyDisabledReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointManuallyDisabledCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [v2 findCharacteristicWithType:@"00000227-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointActiveIdentifierReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointActiveIdentifierCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF750]];

  return v3;
}

- (id)_siriEndpointVersionReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointVersionCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointVersionCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCFB98]];

  return v3;
}

- (id)_siriEndpointSessionStatusReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointSessionStatusCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [v2 findCharacteristicWithType:@"00000254-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEngineVersionReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingSiriEngineVersionCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEngineVersionCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"0000025A-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriLightOnUseReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriLightOnUseCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"00000258-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriTouchReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriTouchCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"00000257-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriListeningReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriListeningCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"00000256-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEnableReadRequest
{
  v2 = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (v2)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEnableCharacteristic
{
  v2 = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [v2 findCharacteristicWithType:@"00000255-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)unregisterForNotifications
{
  v3 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v3 removeObserver:self];
}

- (void)registerForNotifications
{
  v10 = [(HMDAccessoryProfile *)self accessory];
  v3 = [v10 home];
  v4 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v4 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v10];

  v5 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v5 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:v3];

  v6 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v6 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:v10];

  v7 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v7 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v8 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v8 addObserver:self selector:sel_handleDeviceCapabilitiesUpdated_ name:@"HMDDeviceCapabilitiiesUpdatedNotification" object:0];

  v9 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [v9 addObserver:self selector:sel_handleUpdateNeedsOnboarding_ name:@"HMDSiriEndpointProfileUpdateNeedsOnboardingNotification" object:0];
}

- (void)registerForMessages
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 home];
  v14.receiver = self;
  v14.super_class = HMDSiriEndpointProfile;
  [(HMDAccessoryProfile *)&v14 registerForMessages];
  [(HMDSiriEndpointProfile *)self unregisterForNotifications];
  [(HMDSiriEndpointProfile *)self registerForNotifications];
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HMDSiriEndpointProfile_registerForMessages__block_invoke;
  v13[3] = &unk_27868A728;
  v13[4] = self;
  dispatch_async(v5, v13);

  v6 = [v4 featuresDataSource];
  v7 = [v6 isMessageBindingsEnabled];

  if ((v7 & 1) == 0)
  {
    v8 = [(HMDAccessoryProfile *)self msgDispatcher];
    v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v15[0] = v9;
    v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
    v15[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    [v8 registerForMessage:*MEMORY[0x277CD1020] receiver:self policies:v11 selector:sel__handleRefreshProfileState_];
    [v8 registerForMessage:*MEMORY[0x277CD0FF8] receiver:self policies:v11 selector:sel_handleEnableNotifications_];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__HMDSiriEndpointProfile_registerForMessages__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 home];
  v4 = [v3 currentDeviceSupportsSidekickSettings];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for characteristic notifications since current device supports home hub", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _setNotifications:1 options:2];
    [*(a1 + 32) _handleRefreshProfileState:0 completionHandler:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)a3 notificationCenter:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  v9 = [v8 accessory];
  if (v9)
  {
    v10 = [objc_opt_class() uniqueIdentifierFromAccessory:v9];
    v11 = HMDispatchQueueNameString();
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    v54.receiver = self;
    v54.super_class = HMDSiriEndpointProfile;
    v15 = [(HMDAccessoryProfile *)&v54 initWithAccessory:v9 uniqueIdentifier:v10 services:0 workQueue:v14];

    if (v15)
    {
      v48 = v7;
      v15->_sessionState = -1;
      v16 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
      sessionHubIdentifier = v15->_sessionHubIdentifier;
      v15->_sessionHubIdentifier = v16;

      siriEndpointVersion = v15->_siriEndpointVersion;
      v15->_siriEndpointVersion = &stru_283CF9D50;

      v19 = v6;
      if (!v6)
      {
        v19 = [MEMORY[0x277CBEA60] array];
      }

      v47 = v9;
      objc_storeStrong(&v15->_profileServices, v19);
      v49 = v6;
      if (!v6)
      {
      }

      objc_storeStrong(&v15->_notificationCenter, a4);
      v15->_siriEnable = -1;
      v15->_siriListening = -1;
      v15->_siriTouchToUse = -1;
      v15->_siriLightOnUse = -1;
      siriEngineVersion = v15->_siriEngineVersion;
      v15->_siriEngineVersion = &stru_283CF9D50;

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDSiriEndpointProfile.Endpoint.%@", @"com.apple.HomeKitDaemon.Local", v10];
      clientEndpointIdentifier = v15->_clientEndpointIdentifier;
      v15->_clientEndpointIdentifier = v21;

      v46 = v10;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.HMDSiriEndpointProfile.Settings.%@", @"com.apple.HomeKitDaemon.Local", v10];
      clientSettingsIdentifier = v15->_clientSettingsIdentifier;
      v15->_clientSettingsIdentifier = v23;

      v15->_manuallyDisabled = 0;
      v15->_multifunctionButton = -1;
      v25 = [MEMORY[0x277CBEB18] array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v45 = v15;
      v26 = v15->_profileServices;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v50 + 1) + 8 * i);
            v32 = [v31 serviceType];
            v33 = [v32 isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

            if (v33)
            {
              v34 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:v31];
              [v25 addObject:v34];
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v28);
      }

      v35 = [v25 copy];
      v15 = v45;
      assistants = v45->_assistants;
      v45->_assistants = v35;

      v37 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:&unk_283E73148];
      stagedNeedsOnboarding = v45->_stagedNeedsOnboarding;
      v45->_stagedNeedsOnboarding = v37;

      [(HMFStagedValue *)v15->_stagedNeedsOnboarding setDelegate:v15];
      v7 = v48;
      v6 = v49;
      v9 = v47;
      v10 = v46;
    }

    self = v15;

    v39 = self;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v42;
      v58 = 2112;
      v59 = v6;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Cannot create Siri Endpoint profile, cannot determine accessory from services %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v39 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v39;
}

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [(HMDSiriEndpointProfile *)self initWithSiriEndpointServices:v5 notificationCenter:v6];

  return v7;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 accessory];
  v14 = [v13 home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v26[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v14 userPrivilege:0 remoteAccessRequired:0];
  v26[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v18 = [v9 name];
  LODWORD(v16) = [v18 isEqualToString:*MEMORY[0x277CD1020]];

  v19 = [v9 name];
  v20 = v19;
  if (v16)
  {
    goto LABEL_7;
  }

  v21 = [v19 isEqualToString:*MEMORY[0x277CD0FF8]];

  if (v21)
  {
    v20 = [v9 name];
LABEL_7:
    v22 = HMFCreateMessageBinding();

    goto LABEL_9;
  }

  v25.receiver = a1;
  v25.super_class = &OBJC_METACLASS___HMDSiriEndpointProfile;
  v22 = objc_msgSendSuper2(&v25, sel_messageBindingForDispatcher_message_receiver_, v8, v9, v10);
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)uniqueIdentifierFromAccessory:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [v3 dataWithLength:16];
  v6 = [v4 uuid];

  [v6 getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];
  v7 = MEMORY[0x277CCAD78];
  v8 = [objc_opt_class() namespace];
  v9 = [v7 hmf_UUIDWithNamespace:v8 data:v5];

  return v9;
}

+ (id)namespace
{
  if (namespace_onceToken_145488 != -1)
  {
    dispatch_once(&namespace_onceToken_145488, &__block_literal_global_145489);
  }

  v3 = namespace_namespace_145490;

  return v3;
}

void __35__HMDSiriEndpointProfile_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4CF0DBFA-FE71-485F-956B-20002E66B3AA"];
  v1 = namespace_namespace_145490;
  namespace_namespace_145490 = v0;
}

@end