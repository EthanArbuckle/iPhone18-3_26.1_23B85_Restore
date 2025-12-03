@interface HMDSiriEndpointProfile
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)namespace;
+ (id)uniqueIdentifierFromAccessory:(id)accessory;
- (BOOL)_notificationEnabledForType:(unint64_t)type;
- (BOOL)manuallyDisabled;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services;
- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services notificationCenter:(id)center;
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
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_handleRefreshProfileState:(id)state;
- (void)_handleRefreshProfileState:(id)state completionHandler:(id)handler;
- (void)_notificationEnable:(BOOL)enable forType:(unint64_t)type;
- (void)_notifyProfileSettingsUpdated:(id)updated;
- (void)_updateSessionState:(id)state settings:(id)settings message:(id)message;
- (void)addService:(id)service;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleDeviceCapabilitiesUpdated:(id)updated;
- (void)handleEnableNotifications:(id)notifications;
- (void)handleHomeCharacteristicValuesChanged:(id)changed;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleUpdateNeedsOnboarding:(id)onboarding;
- (void)notifyClientsDidUpdateStagedNeedsOnboarding;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)setActiveIdentifier:(id)identifier;
- (void)setAssistants:(id)assistants;
- (void)setEnable:(int64_t)enable completionHandler:(id)handler;
- (void)setLightOnUse:(int64_t)use completionHandler:(id)handler;
- (void)setListening:(int64_t)listening completionHandler:(id)handler;
- (void)setManuallyDisabled:(BOOL)disabled;
- (void)setMultifunctionButton:(int64_t)button;
- (void)setNotifications:(BOOL)notifications options:(unint64_t)options;
- (void)setProfileServices:(id)services;
- (void)setSessionHubIdentifier:(id)identifier;
- (void)setSiriEnable:(int64_t)enable;
- (void)setSiriEndpointVersion:(id)version;
- (void)setSiriEngineVersion:(id)version;
- (void)setSiriLightOnUse:(int64_t)use;
- (void)setSiriListening:(int64_t)listening;
- (void)setSiriTouchToUse:(int64_t)use;
- (void)setSoundOnUse:(int64_t)use completionHandler:(id)handler;
- (void)setTouchToUse:(int64_t)use completionHandler:(id)handler;
- (void)stageNeedsOnboarding:(int64_t)onboarding;
- (void)stageNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)unregisterForNotifications;
- (void)updateNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout;
@end

@implementation HMDSiriEndpointProfile

- (void)setNotifications:(BOOL)notifications options:(unint64_t)options
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDSiriEndpointProfile_setNotifications_options___block_invoke;
  block[3] = &unk_27867B2E0;
  block[4] = self;
  block[5] = options;
  notificationsCopy = notifications;
  dispatch_async(workQueue, block);
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
  array = [MEMORY[0x277CBEB18] array];
  _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (_siriSettingSiriEnableCharacteristic)
  {
    [array addObject:_siriSettingSiriEnableCharacteristic];
  }

  _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];

  if (_siriSettingSiriListeningCharacteristic)
  {
    [array addObject:_siriSettingSiriListeningCharacteristic];
  }

  _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];

  if (_siriSettingSiriTouchCharacteristic)
  {
    [array addObject:_siriSettingSiriTouchCharacteristic];
  }

  _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];

  if (_siriSettingSiriLightOnUseCharacteristic)
  {
    [array addObject:_siriSettingSiriLightOnUseCharacteristic];
  }

  _siriEndpointActiveIdentifierCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];

  if (_siriEndpointActiveIdentifierCharacteristic)
  {
    [array addObject:_siriEndpointActiveIdentifierCharacteristic];
  }

  _siriEndpointManuallyDisabledCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];

  if (_siriEndpointManuallyDisabledCharacteristic)
  {
    [array addObject:_siriEndpointManuallyDisabledCharacteristic];
  }

  _siriSettingMultifunctionButtonCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];

  if (_siriSettingMultifunctionButtonCharacteristic)
  {
    [array addObject:_siriSettingMultifunctionButtonCharacteristic];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  assistants = [(HMDSiriEndpointProfile *)self assistants];
  v12 = [assistants countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(assistants);
        }

        characteristicsToMonitor = [*(*(&v20 + 1) + 8 * i) characteristicsToMonitor];
        [array addObjectsFromArray:characteristicsToMonitor];
      }

      v13 = [assistants countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [array copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSArray)_allEndpointCharacteristicsToMonitor
{
  array = [MEMORY[0x277CBEB18] array];
  _siriEndpointSessionStatusCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (_siriEndpointSessionStatusCharacteristic)
  {
    [array addObject:_siriEndpointSessionStatusCharacteristic];
  }

  v5 = [array copy];

  return v5;
}

- (void)_notificationEnable:(BOOL)enable forType:(unint64_t)type
{
  enableCopy = enable;
  os_unfair_lock_lock_with_options();
  if (enableCopy)
  {
    v7 = [(HMDSiriEndpointProfile *)self notifications]| type;
  }

  else
  {
    notifications = [(HMDSiriEndpointProfile *)self notifications];
    if (type)
    {
      v7 = 0;
    }

    else
    {
      v7 = notifications & 1;
    }
  }

  [(HMDSiriEndpointProfile *)self setNotifications:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_notificationEnabledForType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  LOBYTE(type) = (type & ~[(HMDSiriEndpointProfile *)self notifications]) == 0;
  os_unfair_lock_unlock(&self->_lock);
  return type;
}

- (void)refreshStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)setSoundOnUse:(int64_t)use completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v4);
  }
}

- (void)setLightOnUse:(int64_t)use completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (use < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
      if (!_siriSettingSiriLightOnUseCharacteristic)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:use == 1];
      authorizationData = [_siriSettingSiriLightOnUseCharacteristic authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:_siriSettingSiriLightOnUseCharacteristic value:v12 authorizationData:authorizationData type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__HMDSiriEndpointProfile_setLightOnUse_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = handlerCopy;
        v30[1] = use;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Light On Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriLightOnUseCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriLightOnUseCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
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

- (void)setTouchToUse:(int64_t)use completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (use < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
      if (!_siriSettingSiriTouchCharacteristic)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:use == 1];
      authorizationData = [_siriSettingSiriTouchCharacteristic authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:_siriSettingSiriTouchCharacteristic value:v12 authorizationData:authorizationData type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__HMDSiriEndpointProfile_setTouchToUse_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = handlerCopy;
        v30[1] = use;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Touch To Use] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriTouchCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriTouchCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
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

- (void)setListening:(int64_t)listening completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (listening < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
      if (!_siriSettingSiriListeningCharacteristic)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:listening == 1];
      authorizationData = [_siriSettingSiriListeningCharacteristic authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:_siriSettingSiriListeningCharacteristic value:v12 authorizationData:authorizationData type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __57__HMDSiriEndpointProfile_setListening_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = handlerCopy;
        v30[1] = listening;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Listening] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriListeningCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriListeningCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
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

- (void)setEnable:(int64_t)enable completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (enable < 2)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = accessory;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
      if (!_siriSettingSiriEnableCharacteristic)
      {
        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:enable == 1];
      authorizationData = [_siriSettingSiriEnableCharacteristic authorizationData];
      v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:_siriSettingSiriEnableCharacteristic value:v12 authorizationData:authorizationData type:0];

      if (v14)
      {
        objc_initWeak(location, self);
        v31 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        workQueue = [(HMDAccessoryProfile *)self workQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __54__HMDSiriEndpointProfile_setEnable_completionHandler___block_invoke;
        v27[3] = &unk_278684638;
        objc_copyWeak(v30, location);
        v17 = v14;
        v28 = v17;
        v29 = handlerCopy;
        v30[1] = enable;
        [v10 writeCharacteristicValues:v15 source:1190 queue:workQueue completionHandler:v27];

        objc_destroyWeak(v30);
        objc_destroyWeak(location);
      }

      else
      {
LABEL_12:
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, v17);
        }
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Set Enable] accessory not part of profile", location, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      _siriSettingSiriEnableCharacteristic = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, _siriSettingSiriEnableCharacteristic);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v7);
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

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = HMDSiriEndpointProfile;
  coderCopy = coder;
  [(HMDAccessoryProfile *)&v15 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState", v15.receiver, v15.super_class)}];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD1038]];

  sessionHubIdentifier = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
  uUIDString = [sessionHubIdentifier UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD1030]];

  siriEndpointVersion = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
  [coderCopy encodeObject:siriEndpointVersion forKey:*MEMORY[0x277CD1058]];

  _capability = [(HMDSiriEndpointProfile *)self _capability];
  [coderCopy encodeInteger:_capability forKey:*MEMORY[0x277CD0FE8]];
  siriEngineVersion = [(HMDSiriEndpointProfile *)self siriEngineVersion];
  [coderCopy encodeObject:siriEngineVersion forKey:*MEMORY[0x277CD1048]];

  activeIdentifier = [(HMDSiriEndpointProfile *)self activeIdentifier];
  [coderCopy encodeObject:activeIdentifier forKey:*MEMORY[0x277CD0FC0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
  [coderCopy encodeObject:v12 forKey:*MEMORY[0x277CD1008]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile multifunctionButton](self, "multifunctionButton")}];
  [coderCopy encodeObject:v13 forKey:*MEMORY[0x277CD1010]];

  assistants = [(HMDSiriEndpointProfile *)self assistants];
  [coderCopy encodeObject:assistants forKey:*MEMORY[0x277CD0FE0]];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v5 = [v3 initWithName:@"uniqueIdentifier" value:uniqueIdentifier];
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
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    needsOnboarding = [(HMDSiriEndpointProfile *)self needsOnboarding];
    integerValue = [needsOnboarding integerValue];

    supportsSiriEndpointOnBoarding = [v5 supportsSiriEndpointOnBoarding];
    v9 = 2;
    if (!integerValue)
    {
      v9 = 3;
    }

    if (supportsSiriEndpointOnBoarding)
    {
      v10 = v9;
    }

    else
    {
      v10 = integerValue == 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateSessionState:(id)state settings:(id)settings message:(id)message
{
  v116 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  settingsCopy = settings;
  messageCopy = message;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
  v111 = v11;
  if (stateCopy)
  {
    sessionState = [stateCopy sessionState];
    value = [sessionState value];
    if (value >= 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = value;
    }

    if (v14 != [(HMDSiriEndpointProfile *)self sessionState])
    {
      v109 = stateCopy;
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](selfCopy, "sessionState")}];
      v11 = v111;
      [v111 setValue:v20 forKey:@"HMDSiriEndpointProfilePreviousSessionStateKey"];

      stateCopy = v109;
    }

    [(HMDSiriEndpointProfile *)self setSessionState:v14];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile sessionState](self, "sessionState")}];
    [v10 setValue:v21 forKey:*MEMORY[0x277CD1038]];

    hubUUID = [stateCopy hubUUID];
    sessionHubIdentifier = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    v24 = HMFEqualObjects();

    if ((v24 & 1) == 0)
    {
      sessionHubIdentifier2 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
      uUIDString = [sessionHubIdentifier2 UUIDString];
      [v11 setValue:uUIDString forKey:@"HMDSiriEndpointProfilePreviousSessionHubIdentiferKey"];
    }

    [(HMDSiriEndpointProfile *)self setSessionHubIdentifier:hubUUID];
    sessionHubIdentifier3 = [(HMDSiriEndpointProfile *)self sessionHubIdentifier];
    uUIDString2 = [sessionHubIdentifier3 UUIDString];
    [v10 setValue:uUIDString2 forKey:*MEMORY[0x277CD1030]];
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  if (settingsCopy)
  {
    siriEnable = [settingsCopy siriEnable];

    if (siriEnable)
    {
      siriEnable2 = [settingsCopy siriEnable];
      integerValue = [siriEnable2 integerValue];
      v33 = integerValue == 1 ? 1 : -1;
      v34 = integerValue ? v33 : 0;

      if ([(HMDSiriEndpointProfile *)self siriEnable]!= v34)
      {
        [(HMDSiriEndpointProfile *)self setSiriEnable:v34];
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriEnable](self, "siriEnable")}];
        [v29 setValue:v35 forKey:@"settings-enable"];
      }
    }

    siriListening = [settingsCopy siriListening];

    if (siriListening)
    {
      siriListening2 = [settingsCopy siriListening];
      integerValue2 = [siriListening2 integerValue];
      v39 = integerValue2 == 1 ? 1 : -1;
      v40 = integerValue2 ? v39 : 0;

      if ([(HMDSiriEndpointProfile *)self siriListening]!= v40)
      {
        [(HMDSiriEndpointProfile *)self setSiriListening:v40];
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriListening](self, "siriListening")}];
        [v29 setValue:v41 forKey:@"settings-listening"];
      }
    }

    siriTouchToUse = [settingsCopy siriTouchToUse];

    if (siriTouchToUse)
    {
      siriTouchToUse2 = [settingsCopy siriTouchToUse];
      integerValue3 = [siriTouchToUse2 integerValue];
      v45 = integerValue3 == 1 ? 1 : -1;
      v46 = integerValue3 ? v45 : 0;

      if ([(HMDSiriEndpointProfile *)self siriTouchToUse]!= v46)
      {
        [(HMDSiriEndpointProfile *)self setSiriTouchToUse:v46];
        v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriTouchToUse](self, "siriTouchToUse")}];
        [v29 setValue:v47 forKey:@"settings-touch"];
      }
    }

    siriLightOnUse = [settingsCopy siriLightOnUse];

    if (siriLightOnUse)
    {
      siriLightOnUse2 = [settingsCopy siriLightOnUse];
      integerValue4 = [siriLightOnUse2 integerValue];
      v51 = integerValue4 == 1 ? 1 : -1;
      v52 = integerValue4 ? v51 : 0;

      if ([(HMDSiriEndpointProfile *)self siriLightOnUse]!= v52)
      {
        [(HMDSiriEndpointProfile *)self setSiriLightOnUse:v52];
        v53 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSiriEndpointProfile siriLightOnUse](self, "siriLightOnUse")}];
        [v29 setValue:v53 forKey:@"settings-light"];
      }
    }

    siriEndpointVersion = [settingsCopy siriEndpointVersion];

    if (siriEndpointVersion)
    {
      siriEndpointVersion2 = [settingsCopy siriEndpointVersion];
      [(HMDSiriEndpointProfile *)self setSiriEndpointVersion:siriEndpointVersion2];

      siriEndpointVersion3 = [(HMDSiriEndpointProfile *)self siriEndpointVersion];
      [v10 setValue:siriEndpointVersion3 forKey:*MEMORY[0x277CD1058]];
    }

    siriEngineVersion = [settingsCopy siriEngineVersion];

    if (siriEngineVersion)
    {
      siriEngineVersion2 = [settingsCopy siriEngineVersion];
      siriEngineVersion3 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      v60 = HMFEqualObjects();

      if ((v60 & 1) == 0)
      {
        siriEngineVersion4 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
        [v11 setValue:siriEngineVersion4 forKey:@"HMDSiriEndpointProfilePreviousSiriEngineVersionKey"];
      }

      siriEngineVersion5 = [settingsCopy siriEngineVersion];
      [(HMDSiriEndpointProfile *)self setSiriEngineVersion:siriEngineVersion5];

      siriEngineVersion6 = [(HMDSiriEndpointProfile *)self siriEngineVersion];
      [v10 setValue:siriEngineVersion6 forKey:*MEMORY[0x277CD1048]];
    }

    activeIdentifier = [settingsCopy activeIdentifier];

    if (activeIdentifier)
    {
      activeIdentifier2 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      if (activeIdentifier2)
      {
        v66 = activeIdentifier2;
        activeIdentifier3 = [settingsCopy activeIdentifier];
        activeIdentifier4 = [(HMDSiriEndpointProfile *)self activeIdentifier];
        v69 = HMFEqualObjects();

        if ((v69 & 1) == 0)
        {
          activeIdentifier5 = [(HMDSiriEndpointProfile *)self activeIdentifier];
          [v111 setValue:activeIdentifier5 forKey:@"HMDSiriEndpointProfilePreviousActiveIdentifierKey"];
        }
      }

      activeIdentifier6 = [settingsCopy activeIdentifier];
      [(HMDSiriEndpointProfile *)self setActiveIdentifier:activeIdentifier6];

      activeIdentifier7 = [(HMDSiriEndpointProfile *)self activeIdentifier];
      [v10 setValue:activeIdentifier7 forKey:*MEMORY[0x277CD0FC0]];

      v11 = v111;
    }

    manuallyDisabled = [settingsCopy manuallyDisabled];

    if (manuallyDisabled)
    {
      manuallyDisabled2 = [settingsCopy manuallyDisabled];
      bOOLValue = [manuallyDisabled2 BOOLValue];
      manuallyDisabled3 = [(HMDSiriEndpointProfile *)self manuallyDisabled];

      if (bOOLValue != manuallyDisabled3)
      {
        v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
        [v11 setValue:v77 forKey:@"HMDSiriEndpointProfilePreviousManuallyDisabledKey"];
      }

      manuallyDisabled4 = [settingsCopy manuallyDisabled];
      -[HMDSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [manuallyDisabled4 BOOLValue]);

      v79 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDSiriEndpointProfile manuallyDisabled](self, "manuallyDisabled")}];
      [v10 setValue:v79 forKey:*MEMORY[0x277CD1008]];
    }

    multifunctionButton = [settingsCopy multifunctionButton];

    if (multifunctionButton)
    {
      multifunctionButton2 = [settingsCopy multifunctionButton];
      integerValue5 = [multifunctionButton2 integerValue];
      if (integerValue5 == 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = -1;
      }

      if (integerValue5)
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

    if ([settingsCopy assistantsUpdated])
    {
      assistants = [(HMDSiriEndpointProfile *)self assistants];
      v88 = encodeRootObjectForIncomingXPCMessage(assistants, 0);
      [v10 setValue:v88 forKey:*MEMORY[0x277CD0FE0]];
    }
  }

  v89 = [v10 count];
  v90 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v92 = HMFGetOSLogHandle();
  v93 = os_log_type_enabled(v92, OS_LOG_TYPE_INFO);
  if (v89)
  {
    v94 = stateCopy;
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
    uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy2 uniqueIdentifier];
    v98 = [v96 initWithTarget:uniqueIdentifier];

    v99 = MEMORY[0x277D0F848];
    v100 = *MEMORY[0x277CD1050];
    v101 = [v10 copy];
    v102 = [v99 messageWithName:v100 destination:v98 payload:v101];

    identifier = [messageCopy identifier];
    if (identifier)
    {
      [v102 setIdentifier:identifier];
    }

    [v102 setRequiresSPIEntitlement];
    msgDispatcher = [(HMDAccessoryProfile *)selfCopy2 msgDispatcher];
    v105 = [v102 copy];
    [msgDispatcher sendMessage:v105 completionHandler:0];

    stateCopy = v94;
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
    notificationCenter = [(HMDSiriEndpointProfile *)selfCopy2 notificationCenter];
    [notificationCenter postNotificationName:@"HMDSiriEndpointProfileUpdatedNotification" object:selfCopy2 userInfo:v111];
  }

  [(HMDSiriEndpointProfile *)selfCopy2 _notifyProfileSettingsUpdated:v29];

  v108 = *MEMORY[0x277D85DE8];
}

- (void)_notifyProfileSettingsUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy count])
  {
    notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDSiriEndpointProfileSettingsUpdatedNotification" object:self userInfo:updatedCopy];
  }
}

- (void)_handleRefreshProfileState:(id)state completionHandler:(id)handler
{
  v120 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handlerCopy = handler;
  val = self;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = accessory;
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
    v10 = [stateCopy arrayForKey:*MEMORY[0x277CD1018]];
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
            _siriEndpointSessionStatusReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointSessionStatusReadRequest];
            if (_siriEndpointSessionStatusReadRequest)
            {
              [v9 addObject:_siriEndpointSessionStatusReadRequest];
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

            _siriEndpointVersionReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointVersionReadRequest];

            if (_siriEndpointVersionReadRequest)
            {
              [v9 addObject:_siriEndpointVersionReadRequest];
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

            _siriEndpointActiveIdentifierReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointActiveIdentifierReadRequest];

            if (_siriEndpointActiveIdentifierReadRequest)
            {
              [v9 addObject:_siriEndpointActiveIdentifierReadRequest];
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

            _siriEndpointManuallyDisabledReadRequest = [(HMDSiriEndpointProfile *)val _siriEndpointManuallyDisabledReadRequest];

            if (_siriEndpointManuallyDisabledReadRequest)
            {
              [v9 addObject:_siriEndpointManuallyDisabledReadRequest];
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

            _siriSettingMultifunctionButtonReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingMultifunctionButtonReadRequest];

            if (_siriSettingMultifunctionButtonReadRequest)
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
            assistants = [(HMDSiriEndpointProfile *)val assistants];
            v48 = [assistants countByEnumeratingWithState:&v104 objects:v113 count:16];
            if (v48)
            {
              v49 = *v105;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v105 != v49)
                  {
                    objc_enumerationMutation(assistants);
                  }

                  v51 = *(*(&v104 + 1) + 8 * i);
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  allCharacteristics = [v51 allCharacteristics];
                  v53 = [allCharacteristics countByEnumeratingWithState:&v100 objects:v112 count:16];
                  if (v53)
                  {
                    v54 = *v101;
                    do
                    {
                      for (j = 0; j != v53; ++j)
                      {
                        if (*v101 != v54)
                        {
                          objc_enumerationMutation(allCharacteristics);
                        }

                        v56 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v100 + 1) + 8 * j)];
                        if (v56)
                        {
                          [v9 addObject:v56];
                        }
                      }

                      v53 = [allCharacteristics countByEnumeratingWithState:&v100 objects:v112 count:16];
                    }

                    while (v53);
                  }
                }

                v48 = [assistants countByEnumeratingWithState:&v104 objects:v113 count:16];
              }

              while (v48);
            }

            _siriSettingSiriEngineVersionReadRequest = _siriSettingMultifunctionButtonReadRequest;
          }

          else
          {
            if (![v22 isEqual:v83])
            {
              goto LABEL_87;
            }

            _siriSettingSiriEnableReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriEnableReadRequest];
            if (_siriSettingSiriEnableReadRequest)
            {
              [v9 addObject:_siriSettingSiriEnableReadRequest];
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

            _siriSettingSiriListeningReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriListeningReadRequest];

            if (_siriSettingSiriListeningReadRequest)
            {
              [v9 addObject:_siriSettingSiriListeningReadRequest];
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

            _siriSettingSiriTouchReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriTouchReadRequest];

            if (_siriSettingSiriTouchReadRequest)
            {
              [v9 addObject:_siriSettingSiriTouchReadRequest];
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

            _siriSettingSiriLightOnUseReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriLightOnUseReadRequest];

            if (_siriSettingSiriLightOnUseReadRequest)
            {
              [v9 addObject:_siriSettingSiriLightOnUseReadRequest];
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

            _siriSettingSiriEngineVersionReadRequest = [(HMDSiriEndpointProfile *)val _siriSettingSiriEngineVersionReadRequest];

            if (_siriSettingSiriEngineVersionReadRequest)
            {
              [v9 addObject:_siriSettingSiriEngineVersionReadRequest];
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
              _siriSettingSiriEngineVersionReadRequest = 0;
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
    workQueue = [(HMDAccessoryProfile *)val workQueue];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __71__HMDSiriEndpointProfile__handleRefreshProfileState_completionHandler___block_invoke;
    v95[3] = &unk_27867B2B8;
    objc_copyWeak(&v99, buf);
    v17 = v9;
    v96 = v17;
    v97 = stateCopy;
    v98 = handlerCopy;
    [v84 readCharacteristicValues:v17 source:1190 queue:workQueue completionHandler:v95];

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
    [stateCopy respondWithError:v17];
    if (handlerCopy)
    {
      handlerCopy[2]();
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

- (void)_handleRefreshProfileState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle refresh profile state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSiriEndpointProfile *)selfCopy _handleRefreshProfileState:stateCopy completionHandler:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsDidUpdateStagedNeedsOnboarding
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDSiriEndpointProfile_notifyClientsDidUpdateStagedNeedsOnboarding__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];

  if (stagedNeedsOnboarding == valueCopy)
  {
    stagedNeedsOnboarding2 = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    [stagedNeedsOnboarding2 commitValue:&unk_283E73148];

    [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = valueCopy;
      v19 = 2112;
      v20 = expireValueCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleEnableNotifications:(id)notifications
{
  v16 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [notificationsCopy numberForKey:*MEMORY[0x277CD0FF0]];
  v6 = [notificationsCopy numberForKey:*MEMORY[0x277CD1000]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [notificationsCopy respondWithError:v12];
  }

  -[HMDSiriEndpointProfile setNotifications:options:](self, "setNotifications:options:", [v5 BOOLValue], unsignedIntegerValue);
  [notificationsCopy respondWithSuccess];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateNeedsOnboarding:(id)onboarding
{
  v31 = *MEMORY[0x277D85DE8];
  onboardingCopy = onboarding;
  userInfo = [onboardingCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"accessoryUUID"];

  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessory;
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
      uuid = [v9 uuid];
      v11 = [uuid isEqual:v6];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          name = [onboardingCopy name];
          userInfo2 = [onboardingCopy userInfo];
          v25 = 138543874;
          v26 = v15;
          v27 = 2112;
          v28 = name;
          v29 = 2112;
          v30 = userInfo2;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling %@/%@", &v25, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        userInfo3 = [onboardingCopy userInfo];
        v19 = [userInfo3 objectForKeyedSubscript:@"HMDSiriEndpointProfileNeedsOnboardingResultCodingKey"];

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

        integerValue = [v21 integerValue];
        if (integerValue == 3)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2 * (integerValue == 2);
        }

        [(HMDSiriEndpointProfile *)selfCopy stageNeedsOnboarding:v23];
        [(HMDSiriEndpointProfile *)selfCopy notifyClientsDidUpdateStagedNeedsOnboarding];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout
{
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:onboarding withTimeout:timeout];

  [(HMDSiriEndpointProfile *)self notifyClientsDidUpdateStagedNeedsOnboarding];
}

- (void)handleDeviceCapabilitiesUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDSiriEndpointProfile_handleDeviceCapabilitiesUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
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

- (void)handlePrimaryResidentChanged:(id)changed
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDSiriEndpointProfile_handlePrimaryResidentChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleAccessoryConfigured:(id)configured
{
  configuredCopy = configured;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDSiriEndpointProfile_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = configuredCopy;
  v6 = configuredCopy;
  dispatch_async(workQueue, v7);
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

- (void)handleHomeCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v6 count])
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke;
    block[3] = &unk_27868A750;
    v18 = v6;
    selfCopy = self;
    dispatch_async(workQueue, block);

    v8 = v18;
  }

  else
  {
    userInfo2 = [changedCopy userInfo];
    v8 = [userInfo2 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];

    accessory = [(HMDAccessoryProfile *)self accessory];
    uuid = [accessory uuid];
    uUIDString = [uuid UUIDString];
    v13 = [v8 hmf_dictionaryForKey:uUIDString];

    if (v13)
    {
      workQueue2 = [(HMDAccessoryProfile *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__HMDSiriEndpointProfile_handleHomeCharacteristicValuesChanged___block_invoke_2;
      v15[3] = &unk_27868A750;
      v15[4] = self;
      v16 = v13;
      dispatch_async(workQueue2, v15);
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

- (void)_handleCharacteristicChanges:(id)changes
{
  v143 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  selfCopy = self;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
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
  obj = changesCopy;
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
        services = [(HMDSiriEndpointProfile *)selfCopy services];
        v11 = [services countByEnumeratingWithState:&v125 objects:v141 count:16];
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
                objc_enumerationMutation(services);
              }

              instanceID = [*(*(&v125 + 1) + 8 * v14) instanceID];
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
                      null = [MEMORY[0x277CBEB68] null];
                      v31 = [v29 isEqual:null];

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
                      type = [v24 type];
                      v33 = [type isEqualToString:@"00000254-0000-1000-8000-0026BB765291"];

                      if (v33)
                      {
                        v120 = 0;
                        v34 = [HMDSiriEndpointSessionStateTLV parsedFromData:v29 error:&v120];
                        v35 = v120;

                        contexta = objc_autoreleasePoolPush();
                        v36 = selfCopy;
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
                        type2 = [v24 type];
                        v40 = [type2 isEqualToString:v102];

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

                        type3 = [v24 type];
                        v45 = [type3 isEqualToString:@"00000255-0000-1000-8000-0026BB765291"];

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

                        type4 = [v24 type];
                        v50 = [type4 isEqualToString:@"00000256-0000-1000-8000-0026BB765291"];

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

                        type5 = [v24 type];
                        v55 = [type5 isEqualToString:@"00000257-0000-1000-8000-0026BB765291"];

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
                          type6 = [v24 type];
                          v60 = [type6 isEqualToString:@"00000258-0000-1000-8000-0026BB765291"];

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
                            type7 = [v24 type];
                            v65 = [type7 isEqualToString:@"0000025A-0000-1000-8000-0026BB765291"];

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
                              type8 = [v24 type];
                              v70 = [type8 isEqualToString:v93];

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
                                type9 = [v24 type];
                                v75 = [type9 isEqualToString:@"00000227-0000-1000-8000-0026BB765291"];

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
                                  type10 = [v24 type];
                                  v80 = [type10 isEqualToString:@"0000026B-0000-1000-8000-0026BB765291"];

                                  if (!v80)
                                  {
                                    v118 = 0u;
                                    v119 = 0u;
                                    v116 = 0u;
                                    v117 = 0u;
                                    assistants = [(HMDSiriEndpointProfile *)selfCopy assistants];
                                    v84 = [assistants countByEnumeratingWithState:&v116 objects:v133 count:16];
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
                                            objc_enumerationMutation(assistants);
                                          }

                                          if ([*(*(&v116 + 1) + 8 * i) updateCharacteristic:v24 value:v112])
                                          {
                                            [(HMDSiriEndpointHAPSettings *)v105 setAssistantsUpdated:1];
                                          }
                                        }

                                        v85 = [assistants countByEnumeratingWithState:&v116 objects:v133 count:16];
                                      }

                                      while (v85);
                                      v34 = context;
                                      v7 = v103;
                                    }

                                    else
                                    {
                                      v34 = context;
                                    }

                                    v38 = assistants;
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
            v12 = [services countByEnumeratingWithState:&v125 objects:v141 count:16];
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

  [(HMDSiriEndpointProfile *)selfCopy _updateSessionState:context settings:v105 message:0];
  v89 = *MEMORY[0x277D85DE8];
}

- (void)setSiriEngineVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = [versionCopy copy];
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

- (void)setSiriLightOnUse:(int64_t)use
{
  os_unfair_lock_lock_with_options();
  self->_siriLightOnUse = use;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriLightOnUse
{
  os_unfair_lock_lock_with_options();
  siriLightOnUse = self->_siriLightOnUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriLightOnUse;
}

- (void)setSiriTouchToUse:(int64_t)use
{
  os_unfair_lock_lock_with_options();
  self->_siriTouchToUse = use;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriTouchToUse
{
  os_unfair_lock_lock_with_options();
  siriTouchToUse = self->_siriTouchToUse;
  os_unfair_lock_unlock(&self->_lock);
  return siriTouchToUse;
}

- (void)setSiriListening:(int64_t)listening
{
  os_unfair_lock_lock_with_options();
  self->_siriListening = listening;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriListening
{
  os_unfair_lock_lock_with_options();
  siriListening = self->_siriListening;
  os_unfair_lock_unlock(&self->_lock);
  return siriListening;
}

- (void)setSiriEnable:(int64_t)enable
{
  os_unfair_lock_lock_with_options();
  self->_siriEnable = enable;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)siriEnable
{
  os_unfair_lock_lock_with_options();
  siriEnable = self->_siriEnable;
  os_unfair_lock_unlock(&self->_lock);
  return siriEnable;
}

- (void)setMultifunctionButton:(int64_t)button
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = button;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->_lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)disabled
{
  os_unfair_lock_lock_with_options();
  self->_manuallyDisabled = disabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  manuallyDisabled = self->_manuallyDisabled;
  os_unfair_lock_unlock(&self->_lock);
  return manuallyDisabled;
}

- (void)setActiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
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
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 || ([v5 needsOnboarding], (value = objc_claimAutoreleasedReturnValue()) == 0))
  {
    stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)self stagedNeedsOnboarding];
    value = [stagedNeedsOnboarding value];
  }

  return value;
}

- (void)stageNeedsOnboarding:(int64_t)onboarding withTimeout:(double)timeout
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2048;
    onboardingCopy = onboarding;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging needsOnboarding: %ld", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  stagedNeedsOnboarding = [(HMDSiriEndpointProfile *)selfCopy stagedNeedsOnboarding];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:onboarding];
  [stagedNeedsOnboarding stageValue:v12 withTimeout:timeout];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stageNeedsOnboarding:(int64_t)onboarding
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v7 = [mEMORY[0x277D0F8D0] preferenceForKey:@"siriProfileOnBoardingPendingTime"];

  numberValue = [v7 numberValue];
  [numberValue doubleValue];
  [(HMDSiriEndpointProfile *)self stageNeedsOnboarding:onboarding withTimeout:?];
}

- (NSArray)assistants
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistants;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssistants:(id)assistants
{
  assistantsCopy = assistants;
  os_unfair_lock_lock_with_options();
  v4 = [assistantsCopy copy];
  assistants = self->_assistants;
  self->_assistants = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessory = [(HMDAccessoryProfile *)self accessory];
  workQueue = [accessory workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (serviceCopy)
  {
    v7 = MEMORY[0x277CBEB18];
    profileServices = [(HMDSiriEndpointProfile *)self profileServices];
    v9 = [v7 arrayWithArray:profileServices];

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

          instanceID = [*(*(&v26 + 1) + 8 * v14) instanceID];
          instanceID2 = [serviceCopy instanceID];
          v17 = [instanceID isEqual:instanceID2];

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

    [v10 addObject:serviceCopy];
    v18 = [v10 copy];
    [(HMDSiriEndpointProfile *)self setProfileServices:v18];

    serviceType = [serviceCopy serviceType];
    v20 = [serviceType isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

    if (v20)
    {
      assistants = [(HMDSiriEndpointProfile *)self assistants];
      v22 = [assistants mutableCopy];

      v23 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:serviceCopy];
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

- (void)setProfileServices:(id)services
{
  servicesCopy = services;
  os_unfair_lock_lock_with_options();
  v4 = [servicesCopy copy];
  profileServices = self->_profileServices;
  self->_profileServices = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSiriEndpointVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = [versionCopy copy];
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

- (void)setSessionHubIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_siriSettingMultifunctionButtonReadRequest
{
  _siriSettingMultifunctionButtonCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingMultifunctionButtonCharacteristic];
  if (_siriSettingMultifunctionButtonCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingMultifunctionButtonCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingMultifunctionButtonCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"0000026B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointManuallyDisabledReadRequest
{
  _siriEndpointManuallyDisabledCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointManuallyDisabledCharacteristic];
  if (_siriEndpointManuallyDisabledCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointManuallyDisabledCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointManuallyDisabledCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:@"00000227-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriEndpointActiveIdentifierReadRequest
{
  _siriEndpointActiveIdentifierCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointActiveIdentifierCharacteristic];
  if (_siriEndpointActiveIdentifierCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointActiveIdentifierCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointActiveIdentifierCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:*MEMORY[0x277CCF750]];

  return v3;
}

- (id)_siriEndpointVersionReadRequest
{
  _siriEndpointVersionCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointVersionCharacteristic];
  if (_siriEndpointVersionCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointVersionCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointVersionCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:*MEMORY[0x277CCFB98]];

  return v3;
}

- (id)_siriEndpointSessionStatusReadRequest
{
  _siriEndpointSessionStatusCharacteristic = [(HMDSiriEndpointProfile *)self _siriEndpointSessionStatusCharacteristic];
  if (_siriEndpointSessionStatusCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriEndpointSessionStatusCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriEndpointSessionStatusCharacteristic
{
  _siriEndpointService = [(HMDSiriEndpointProfile *)self _siriEndpointService];
  v3 = [_siriEndpointService findCharacteristicWithType:@"00000254-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEngineVersionReadRequest
{
  _siriSettingSiriEngineVersionCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEngineVersionCharacteristic];
  if (_siriSettingSiriEngineVersionCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriEngineVersionCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEngineVersionCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"0000025A-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriLightOnUseReadRequest
{
  _siriSettingSiriLightOnUseCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriLightOnUseCharacteristic];
  if (_siriSettingSiriLightOnUseCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriLightOnUseCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriLightOnUseCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000258-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriTouchReadRequest
{
  _siriSettingSiriTouchCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriTouchCharacteristic];
  if (_siriSettingSiriTouchCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriTouchCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriTouchCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000257-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriListeningReadRequest
{
  _siriSettingSiriListeningCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriListeningCharacteristic];
  if (_siriSettingSiriListeningCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriListeningCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriListeningCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000256-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_siriSettingSiriEnableReadRequest
{
  _siriSettingSiriEnableCharacteristic = [(HMDSiriEndpointProfile *)self _siriSettingSiriEnableCharacteristic];
  if (_siriSettingSiriEnableCharacteristic)
  {
    v3 = [HMDCharacteristicRequest requestWithCharacteristic:_siriSettingSiriEnableCharacteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_siriSettingSiriEnableCharacteristic
{
  _siriService = [(HMDSiriEndpointProfile *)self _siriService];
  v3 = [_siriService findCharacteristicWithType:@"00000255-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)unregisterForNotifications
{
  notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)registerForNotifications
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  notificationCenter = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  notificationCenter2 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleHomeCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:home];

  notificationCenter3 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  notificationCenter4 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter4 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter5 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter5 addObserver:self selector:sel_handleDeviceCapabilitiesUpdated_ name:@"HMDDeviceCapabilitiiesUpdatedNotification" object:0];

  notificationCenter6 = [(HMDSiriEndpointProfile *)self notificationCenter];
  [notificationCenter6 addObserver:self selector:sel_handleUpdateNeedsOnboarding_ name:@"HMDSiriEndpointProfileUpdateNeedsOnboardingNotification" object:0];
}

- (void)registerForMessages
{
  v15[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v14.receiver = self;
  v14.super_class = HMDSiriEndpointProfile;
  [(HMDAccessoryProfile *)&v14 registerForMessages];
  [(HMDSiriEndpointProfile *)self unregisterForNotifications];
  [(HMDSiriEndpointProfile *)self registerForNotifications];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HMDSiriEndpointProfile_registerForMessages__block_invoke;
  v13[3] = &unk_27868A728;
  v13[4] = self;
  dispatch_async(workQueue, v13);

  featuresDataSource = [home featuresDataSource];
  isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

  if ((isMessageBindingsEnabled & 1) == 0)
  {
    msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
    v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v15[0] = v9;
    v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v15[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    [msgDispatcher registerForMessage:*MEMORY[0x277CD1020] receiver:self policies:v11 selector:sel__handleRefreshProfileState_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CD0FF8] receiver:self policies:v11 selector:sel_handleEnableNotifications_];
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

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services notificationCenter:(id)center
{
  v60 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  centerCopy = center;
  firstObject = [servicesCopy firstObject];
  accessory = [firstObject accessory];
  if (accessory)
  {
    v10 = [objc_opt_class() uniqueIdentifierFromAccessory:accessory];
    v11 = HMDispatchQueueNameString();
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    v54.receiver = self;
    v54.super_class = HMDSiriEndpointProfile;
    v15 = [(HMDAccessoryProfile *)&v54 initWithAccessory:accessory uniqueIdentifier:v10 services:0 workQueue:v14];

    if (v15)
    {
      v48 = centerCopy;
      v15->_sessionState = -1;
      hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
      sessionHubIdentifier = v15->_sessionHubIdentifier;
      v15->_sessionHubIdentifier = hmf_zeroUUID;

      siriEndpointVersion = v15->_siriEndpointVersion;
      v15->_siriEndpointVersion = &stru_283CF9D50;

      array = servicesCopy;
      if (!servicesCopy)
      {
        array = [MEMORY[0x277CBEA60] array];
      }

      v47 = accessory;
      objc_storeStrong(&v15->_profileServices, array);
      v49 = servicesCopy;
      if (!servicesCopy)
      {
      }

      objc_storeStrong(&v15->_notificationCenter, center);
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
      array2 = [MEMORY[0x277CBEB18] array];
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
            serviceType = [v31 serviceType];
            v33 = [serviceType isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"];

            if (v33)
            {
              v34 = [[HMDSiriEndpointProfileAssistant alloc] initWithService:v31];
              [array2 addObject:v34];
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v28);
      }

      v35 = [array2 copy];
      v15 = v45;
      assistants = v45->_assistants;
      v45->_assistants = v35;

      v37 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:&unk_283E73148];
      stagedNeedsOnboarding = v45->_stagedNeedsOnboarding;
      v45->_stagedNeedsOnboarding = v37;

      [(HMFStagedValue *)v15->_stagedNeedsOnboarding setDelegate:v15];
      centerCopy = v48;
      servicesCopy = v49;
      accessory = v47;
      v10 = v46;
    }

    self = v15;

    selfCopy = self;
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
      v59 = servicesCopy;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Cannot create Siri Endpoint profile, cannot determine accessory from services %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    selfCopy = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDSiriEndpointProfile)initWithSiriEndpointServices:(id)services
{
  v4 = MEMORY[0x277CCAB98];
  servicesCopy = services;
  defaultCenter = [v4 defaultCenter];
  v7 = [(HMDSiriEndpointProfile *)self initWithSiriEndpointServices:servicesCopy notificationCenter:defaultCenter];

  return v7;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v26[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  accessory = [v12 accessory];
  home = [accessory home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v26[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v26[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  name = [messageCopy name];
  LODWORD(v16) = [name isEqualToString:*MEMORY[0x277CD1020]];

  name2 = [messageCopy name];
  name3 = name2;
  if (v16)
  {
    goto LABEL_7;
  }

  v21 = [name2 isEqualToString:*MEMORY[0x277CD0FF8]];

  if (v21)
  {
    name3 = [messageCopy name];
LABEL_7:
    v22 = HMFCreateMessageBinding();

    goto LABEL_9;
  }

  v25.receiver = self;
  v25.super_class = &OBJC_METACLASS___HMDSiriEndpointProfile;
  v22 = objc_msgSendSuper2(&v25, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)uniqueIdentifierFromAccessory:(id)accessory
{
  v3 = MEMORY[0x277CBEB28];
  accessoryCopy = accessory;
  v5 = [v3 dataWithLength:16];
  uuid = [accessoryCopy uuid];

  [uuid getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];
  v7 = MEMORY[0x277CCAD78];
  namespace = [objc_opt_class() namespace];
  v9 = [v7 hmf_UUIDWithNamespace:namespace data:v5];

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