@interface HMDLightProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)enableNaturalLightingCharacteristicNotificationsForObserver:(id)a3;
- (BOOL)shouldRetrySetNaturalLightingEnabledWithError:(id)a3;
- (BOOL)supportsCHIP;
- (BOOL)updateActiveTransitionCountWithCharacteristic:(id)a3;
- (BOOL)updateEnabledCharacteristicsNotifications;
- (BOOL)updateNaturalLightingCurve;
- (HMDHAPAccessory)hapAccessory;
- (HMDLightProfile)initWithUUID:(id)a3 workQueue:(id)a4 lightService:(id)a5 accessory:(id)a6 characteristicsAvailabilityListener:(id)a7 naturalLightingCurveWriter:(id)a8 dataSource:(id)a9;
- (HMDLightProfile)initWithWorkQueue:(id)a3 lightService:(id)a4 accessory:(id)a5;
- (HMLightProfileSettings)settings;
- (NSDate)mostRecentNaturalLightingEnabledDate;
- (NSDate)mostRecentNaturalLightingUsedDate;
- (NSSet)availableCharacteristics;
- (NSSet)readCharacteristicRequests;
- (id)availableCharacteristicWithType:(id)a3 fromChangedObjects:(id)a4;
- (id)updateSettingsWithReadCharacteristicResponsePayload:(id)a3 error:(id *)a4;
- (void)_handleAccessoryCharacteristicsChanged:(id)a3;
- (void)callSetNaturalLightingEnabledCompletion:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)disableNaturalLightingCharacteristicNotificationsForObserver:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchNaturalLightingEnabledWithCompletion:(id)a3;
- (void)handleAccessoryCharacteristicsChanged:(id)a3;
- (void)handleAccessoryUnconfigured:(id)a3;
- (void)handleFetchNaturalLightColorTemperatureForBrightnessMessage:(id)a3;
- (void)handleHomeDidDisableCharacteristicNotification:(id)a3;
- (void)handleHomeDidEnableCharacteristicNotification:(id)a3;
- (void)handleHomeNaturalLightingContextUpdated:(id)a3;
- (void)handleSetNaturalLightingEnabledMessage:(id)a3;
- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4;
- (void)notifyClientsOfUpdatedSettingsWithPreviousSettings:(id)a3;
- (void)readNaturalLightingCharacteristicsWithReason:(id)a3;
- (void)readNaturalLightingCharacteristicsWithReason:(id)a3 completion:(id)a4;
- (void)registerForMessages;
- (void)resetNaturalLightingEnabledRetryContext;
- (void)retrySetNaturalLightingEnabledWithContext:(id)a3 error:(id)a4;
- (void)setNaturalLightingCharacteristicsNotificationEnabled:(BOOL)a3 forObserver:(id)a4;
- (void)setNaturalLightingEnabled:(BOOL)a3 completion:(id)a4;
- (void)synchronizeCurveToAccessory;
- (void)updateNaturalLightingEnabledForCharacteristic:(id)a3;
- (void)updateSettingsWithCharacteristics:(id)a3;
- (void)updateSupportedFeaturesWithCharacteristics:(id)a3;
@end

@implementation HMDLightProfile

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (BOOL)supportsCHIP
{
  v2 = [(HMDLightProfile *)self hapAccessory];
  v3 = [v2 supportsCHIP];

  return v3;
}

- (void)handleHomeNaturalLightingContextUpdated:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __59__HMDLightProfile_handleHomeNaturalLightingContextUpdated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) updateNaturalLightingCurve])
  {
    v4 = [*(a1 + 32) settings];
    v2 = *(a1 + 32);
    v3 = [v2 availableCharacteristics];
    [v2 updateSupportedFeaturesWithCharacteristics:v3];

    [*(a1 + 32) notifyClientsOfUpdatedSettingsWithPreviousSettings:v4];
    [*(a1 + 32) synchronizeCurveToAccessory];
  }
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDLightProfile_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__HMDLightProfile_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) object];
  [v1 disableNaturalLightingCharacteristicNotificationsForObserver:v2];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDLightProfile_handleHomeDidEnableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HMDLightProfile_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) object];
  [v1 enableNaturalLightingCharacteristicNotificationsForObserver:v2];
}

- (void)handleAccessoryCharacteristicsChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDLightProfile_handleAccessoryCharacteristicsChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleAccessoryUnconfigured:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDLightProfile_handleAccessoryUnconfigured___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__HMDLightProfile_handleAccessoryUnconfigured___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling accessory disconnected notification: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CBEB98] set];
  [*(a1 + 32) setReadCharacteristics:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchNaturalLightingEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDLightProfile_fetchNaturalLightingEnabledWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDLightProfile_fetchNaturalLightingEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) characteristicValueObservers];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) readCharacteristics];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@At least one characteristic value observer subscribed and last time read was successful, so returning the cached enabled value as it should be up to date", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) settings];
      (*(v9 + 16))(v9, [v10 isNaturalLightingEnabled], 0);

      v11 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *MEMORY[0x277D85DE8];

  [v12 readNaturalLightingCharacteristicsWithReason:@"Get up to date natural lighting enabled value" completion:v13];
}

- (void)setNaturalLightingCharacteristicsNotificationEnabled:(BOOL)a3 forObserver:(id)a4
{
  v8 = a4;
  v6 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v6);

  if (a3)
  {
    v7 = [(HMDLightProfile *)self enableNaturalLightingCharacteristicNotificationsForObserver:v8];

    if (v7)
    {

      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }
  }

  else
  {
    [(HMDLightProfile *)self disableNaturalLightingCharacteristicNotificationsForObserver:v8];
  }
}

- (NSDate)mostRecentNaturalLightingUsedDate
{
  if (([(HMDLightProfile *)self supportedFeatures]& 1) != 0)
  {
    v3 = [(HMDLightProfile *)self lastNaturalLightingUsedDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)mostRecentNaturalLightingEnabledDate
{
  if (([(HMDLightProfile *)self supportedFeatures]& 1) != 0)
  {
    v3 = [(HMDLightProfile *)self lastNaturalLightingEnabledDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNaturalLightingEnabled:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDLightProfile_setNaturalLightingEnabled_completion___block_invoke;
  block[3] = &unk_279733DB0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (HMLightProfileSettings)settings
{
  v2 = [objc_alloc(MEMORY[0x277CD1B28]) initWithSupportedFeatures:-[HMDLightProfile supportedFeatures](self naturalLightingEnabled:{"supportedFeatures"), -[HMDLightProfile isNaturalLightingEnabled](self, "isNaturalLightingEnabled")}];

  return v2;
}

- (NSSet)readCharacteristicRequests
{
  v2 = [(HMDLightProfile *)self availableCharacteristics];
  v3 = [v2 na_map:&__block_literal_global_159_183915];

  if ([v3 count] == 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

id __45__HMDLightProfile_readCharacteristicRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if (([v3 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"00000144-0000-1000-8000-0026BB765291") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"0000024B-0000-1000-8000-0026BB765291"))
  {
    v4 = [HMDCharacteristicRequest requestWithCharacteristic:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)updateSettingsWithReadCharacteristicResponsePayload:(id)a3 error:(id *)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v6 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDLightProfile *)self readCharacteristicRequests];
  v8 = [v7 na_map:&__block_literal_global_156_183918];

  if (![v8 count])
  {
    v41 = [MEMORY[0x277CBEB98] set];
    [(HMDLightProfile *)self setReadCharacteristics:v41];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    }

    v42 = objc_autoreleasePoolPush();
    v43 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v82 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Read characteristics disappeared from the light profile", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
LABEL_56:
    v62 = 0;
    goto LABEL_57;
  }

  v73 = a4;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = *v78;
  v71 = v8;
  v72 = self;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v78 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v77 + 1) + 8 * i);
      v76 = 0;
      v14 = [v75 hmd_valueOfCharacteristic:v13 error:{&v76, v71}];
      v15 = v76;
      if (!v14)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = v72;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543874;
          v82 = v49;
          v83 = 2112;
          v84 = v13;
          v85 = 2112;
          v86 = v15;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Read request failed for characteristic failed %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
        v50 = [MEMORY[0x277CBEB98] set];
        [(HMDLightProfile *)v47 setReadCharacteristics:v50];

        v51 = v73;
        v52 = obj;
        if (v73)
        {
          v53 = v15;
          v18 = 0;
          goto LABEL_51;
        }

        v18 = 0;
        goto LABEL_53;
      }

      v16 = [v13 type];
      v17 = [v16 isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

      if (v17)
      {
        v18 = v14;
        objc_opt_class();
        v19 = objc_opt_isKindOfClass() & 1;
        if (v19)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (!v19)
        {
          v54 = objc_autoreleasePoolPush();
          v55 = v72;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v58 = HMFGetLogIdentifier();
            v59 = objc_opt_class();
            *buf = 138544130;
            v82 = v58;
            v83 = 2112;
            v84 = v13;
            v85 = 2112;
            v86 = v18;
            v87 = 2112;
            v88 = v59;
            _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v54);
          v60 = [MEMORY[0x277CBEB98] set];
          [(HMDLightProfile *)v55 setReadCharacteristics:v60];

          v51 = v73;
          if (v73)
          {
            v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
            v8 = v71;
            v52 = obj;
            goto LABEL_52;
          }

          v8 = v71;
          v52 = obj;
LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
        v22 = [v13 type];
        if ([v22 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"])
        {
        }

        else
        {
          v23 = [v13 type];
          v24 = [v23 isEqualToString:@"00000144-0000-1000-8000-0026BB765291"];

          if (!v24)
          {
            goto LABEL_22;
          }
        }

        v18 = v14;
        objc_opt_class();
        v25 = objc_opt_isKindOfClass() & 1;
        if (v25)
        {
          v26 = v18;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        if (!v25)
        {
          v63 = objc_autoreleasePoolPush();
          v64 = v72;
          v65 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = HMFGetLogIdentifier();
            v67 = objc_opt_class();
            *buf = 138544130;
            v82 = v66;
            v83 = 2112;
            v84 = v13;
            v85 = 2112;
            v86 = v18;
            v87 = 2112;
            v88 = v67;
            _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@Value of characteristic: %@ is not of expected type %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v63);
          v68 = [MEMORY[0x277CBEB98] set];
          [(HMDLightProfile *)v64 setReadCharacteristics:v68];

          v51 = v73;
          v52 = obj;
          if (v73)
          {
            v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
LABEL_51:
            v8 = v71;
LABEL_52:
            *v51 = v53;
            goto LABEL_55;
          }

LABEL_53:
          v8 = v71;
          goto LABEL_55;
        }
      }

LABEL_22:
    }

    v10 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    v8 = v71;
    self = v72;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_24:

  [(HMDLightProfile *)self setReadCharacteristics:obj];
  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v82 = v31;
    v83 = 2112;
    v84 = obj;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Successfully handled read response payload for characteristics:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v32 = [(HMDLightProfile *)v29 hapAccessory];
  v33 = [v32 home];
  v34 = [v33 naturalLightingContext];
  if (v34)
  {
    v35 = v34;
    v36 = [(HMDLightProfile *)v29 naturalLightingCurve];

    if (!v36)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v29;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v40;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve before updating settings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      [(HMDLightProfile *)v38 updateNaturalLightingCurve];
    }
  }

  else
  {
  }

  v61 = [(HMDLightProfile *)v29 availableCharacteristics];
  [(HMDLightProfile *)v29 updateSettingsWithCharacteristics:v61];

  v62 = [(HMDLightProfile *)v29 settings];
LABEL_57:

  v69 = *MEMORY[0x277D85DE8];

  return v62;
}

- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke;
  v15[3] = &unk_279733D48;
  v15[4] = self;
  v7 = [v5 na_filter:v15];

  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_144_183929];
  [(HMDLightProfile *)self setBrightnessCharacteristic:v8];

  v9 = [v7 na_firstObjectPassingTest:&__block_literal_global_146_183930];
  [(HMDLightProfile *)self setColorTemperatureCharacteristic:v9];

  [(HMDLightProfile *)self updateNaturalLightingCurve];
  [(HMDLightProfile *)self updateSettingsWithCharacteristics:v7];
  [(HMDLightProfile *)self updateEnabledCharacteristicsNotifications];
  v10 = [(HMDLightProfile *)self readCharacteristicRequests];
  v11 = [v10 na_map:&__block_literal_global_149_183931];

  v12 = [(HMDLightProfile *)self characteristicValueObservers];
  if ([v12 count])
  {
    v13 = [(HMDLightProfile *)self readCharacteristics];
    v14 = [v13 isEqual:v11];

    if ((v14 & 1) == 0)
    {
      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }
  }

  else
  {
  }
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [*(a1 + 32) service];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF7D8]];

  return v3;
}

uint64_t __62__HMDLightProfile_listener_didUpdateAvailableCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDLightProfile;
  v4 = a3;
  [(HMDAccessoryProfile *)&v6 encodeWithCoder:v4];
  v5 = [(HMDLightProfile *)self settings:v6.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD07A8]];
}

- (NSSet)availableCharacteristics
{
  v3 = [(HMDLightProfile *)self characteristicsAvailabilityListener];
  v4 = [v3 availableCharacteristics];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDLightProfile_availableCharacteristics__block_invoke;
  v7[3] = &unk_279733D48;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

uint64_t __43__HMDLightProfile_availableCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [*(a1 + 32) service];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)callSetNaturalLightingEnabledCompletion:(id)a3 error:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v7);

  [(HMDLightProfile *)self setNaturalLightingEnabledRetryContext:0];
  v8[2](v8, v6);
}

- (BOOL)shouldRetrySetNaturalLightingEnabledWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CCFD28]])
  {

    goto LABEL_5;
  }

  v7 = [v4 code];

  if (v7 != 4)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)retrySetNaturalLightingEnabledWithContext:(id)a3 error:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 completion];
  v10 = [v6 naturalLightingEnabled];
  v11 = [(HMDLightProfile *)self dataSource];
  v12 = [v11 naturalLightingEnabledMaxRetryCount];

  v13 = [(HMDLightProfile *)self dataSource];
  [v13 naturalLightingEnabledRetryInterval];
  v15 = v14;

  if (v12 < 1 || *&v15 <= 0.0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v22;
      v38 = 2048;
      v39 = v12;
      v40 = 2048;
      v41 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Skipping retry because either retry count: %ld or retry interval: %f is less than or equal to 0", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v16 = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  v17 = [v16 retryCount] + 1;

  if (v17 > v12)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v21;
      v38 = 2112;
      v39 = v6;
      v40 = 2048;
      v41 = v12;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context: %@ exhausted retry attempts: %lu", buf, 0x20u);
    }

LABEL_6:

    objc_autoreleasePoolPop(v18);
    [(HMDLightProfile *)v19 callSetNaturalLightingEnabledCompletion:v9 error:v7];
    goto LABEL_13;
  }

  v23 = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  [v23 setRetryCount:v17];

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v27;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Will retry set Natural Lighting enabled with retry context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  objc_initWeak(buf, v25);
  v28 = [(HMDLightProfile *)v25 dataSource];
  v29 = [(HMDAccessoryProfile *)v25 workQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__HMDLightProfile_retrySetNaturalLightingEnabledWithContext_error___block_invoke;
  v31[3] = &unk_279733D20;
  objc_copyWeak(v34, buf);
  v32 = v6;
  v33 = v9;
  v34[1] = v15;
  v35 = v10;
  [v28 dispatchAfterTimeInterval:v29 queue:v31 block:*&v15];

  objc_destroyWeak(v34);
  objc_destroyWeak(buf);
LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

void __67__HMDLightProfile_retrySetNaturalLightingEnabledWithContext_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v23 = 138543874;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Retrying Natural Lighting enabled with retry context: %@ after %fs", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [v4 naturalLightingEnabledRetryContext];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      [v4 setNaturalLightingEnabled:*(a1 + 64) completion:*(a1 + 40) retryContext:*(a1 + 32)];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v4;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v12 naturalLightingEnabledRetryContext];
        v16 = *(a1 + 32);
        v23 = 138543874;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not retrying because retry context changed from (%@ -> %@)", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Natural Lighting enabled for retry context %@ because self is gone", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 40) + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_139;
    block[3] = &unk_279733CD0;
    v15 = v3;
    v16 = v5;
    v19 = *(a1 + 56);
    v18 = *(a1 + 40);
    v17 = *(a1 + 32);
    dispatch_async(v6, block);

    v7 = v15;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 56);
      v12 = HMFBooleanToString();
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ because self is gone", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __69__HMDLightProfile_setNaturalLightingEnabled_completion_retryContext___block_invoke_139(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 64);
      v17 = HMFBooleanToString();
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote characteristic for Natural Lighting enabled: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 40) handleSetNaturalLightingEnabled:*(a1 + 64)];
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 48) || ([*(a1 + 40) shouldRetrySetNaturalLightingEnabledWithError:v2] & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 64);
      v8 = HMFBooleanToString();
      v19 = 138543874;
      v20 = v6;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v2;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to write characteristic for Natural Lighting enabled: %{public}@ error: %{public}@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = v2;
LABEL_11:
    [v9 callSetNaturalLightingEnabledCompletion:v10 error:v11];
    goto LABEL_12;
  }

  [*(a1 + 40) retrySetNaturalLightingEnabledWithContext:*(a1 + 48) error:v2];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)disableNaturalLightingCharacteristicNotificationsForObserver:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDLightProfile *)self characteristicValueObservers];
  [v6 removeObject:v4];

  v7 = [(HMDLightProfile *)self characteristicValueObservers];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(HMDLightProfile *)self hapAccessory];
    v10 = [v9 home];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:self name:@"HMDAccessoryDisconnectedNotification" object:v9];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:self name:@"HMDAccessoryCharacteristicsChangedNotification" object:v9];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 removeObserver:self name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:v10];

    v14 = [(HMDLightProfile *)self notificationEnabledCharacteristics];
    v15 = [v14 count];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for natural lighting characteristics: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [v14 allObjects];
      v22 = [(HMDLightProfile *)v17 clientIdentifier];
      [v9 setNotificationsEnabled:0 forCharacteristics:v21 clientIdentifier:v22];

      v23 = [MEMORY[0x277CBEB98] set];
      [(HMDLightProfile *)v17 setNotificationEnabledCharacteristics:v23];
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v24;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find any characteristics to disable notifications", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)enableNaturalLightingCharacteristicNotificationsForObserver:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDLightProfile *)self characteristicValueObservers];
  v7 = [v6 count];

  v8 = [(HMDLightProfile *)self characteristicValueObservers];
  [v8 addObject:v4];

  if (v7)
  {
    return 0;
  }

  v10 = [(HMDLightProfile *)self hapAccessory];
  v11 = [v10 home];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:v10];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_handleAccessoryCharacteristicsChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v10];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel_handleHomeNaturalLightingContextUpdated_ name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:v11];

  v15 = [(HMDLightProfile *)self updateEnabledCharacteristicsNotifications];
  return v15;
}

- (BOOL)updateEnabledCharacteristicsNotifications
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLightProfile *)self availableCharacteristics];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_131_183959];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDLightProfile *)self characteristicValueObservers];
  v8 = [v7 count];

  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      v25 = "%{public}@Not enabling characteristic notifications because there are no Characteristic value observers";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v25, &v28, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v21);
    v11 = 0;
    goto LABEL_15;
  }

  if (![v6 count])
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      v25 = "%{public}@Did not find any characteristics to enable notifications";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [v6 count];
  v10 = [(HMDLightProfile *)self notificationEnabledCharacteristics];
  v11 = v9 != [v10 count];

  [(HMDLightProfile *)self setNotificationEnabledCharacteristics:v6];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [(HMDLightProfile *)v13 notificationEnabledCharacteristics];
    v28 = 138543618;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for natural lighting characteristics: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDLightProfile *)v13 hapAccessory];
  v18 = [(HMDLightProfile *)v13 notificationEnabledCharacteristics];
  v19 = [v18 allObjects];
  v20 = [(HMDLightProfile *)v13 clientIdentifier];
  [v17 setNotificationsEnabled:1 forCharacteristics:v19 clientIdentifier:v20];

LABEL_15:
  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __60__HMDLightProfile_updateEnabledCharacteristicsNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)synchronizeCurveToAccessory
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLightProfile *)self naturalLightingCurve];
  if (v4 && (v5 = v4, v6 = [(HMDLightProfile *)self isNaturalLightingEnabled], v5, v6))
  {
    v17 = [(HMDLightProfile *)self naturalLightingCurveWriter];
    v7 = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
    [v17 synchronizeCurveWithActiveTransitionContext:v7];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [(HMDLightProfile *)v10 isNaturalLightingEnabled];
      v13 = HMFBooleanToString();
      v14 = [(HMDLightProfile *)v10 naturalLightingCurve];
      v15 = HMFBooleanToString();
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not rewriting curve because either natural lighting is disabled: %@ or curve is nil: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateSettingsWithCharacteristics:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 na_firstObjectPassingTest:&__block_literal_global_127_183965];
  if (v6)
  {
    [(HMDLightProfile *)self updateActiveTransitionCountWithCharacteristic:v6];
  }

  v7 = [(HMDLightProfile *)self settings];
  v8 = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
  [(HMDLightProfile *)self updateSupportedFeaturesWithCharacteristics:v4];
  v9 = [v4 na_firstObjectPassingTest:&__block_literal_global_129_183966];
  [(HMDLightProfile *)self updateNaturalLightingEnabledForCharacteristic:v9];
  [(HMDLightProfile *)self notifyClientsOfUpdatedSettingsWithPreviousSettings:v7];
  v10 = [(HMDLightProfile *)self naturalLightingActiveTransitionContext];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDLightProfile *)v13 naturalLightingActiveTransitionContext];
      v20 = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [(HMDLightProfile *)v13 naturalLightingCurveWriter];
    v18 = [(HMDLightProfile *)v13 naturalLightingActiveTransitionContext];
    [v17 handleActiveTransitionContextUpdated:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HMDLightProfile_updateSettingsWithCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"];

  return v3;
}

uint64_t __53__HMDLightProfile_updateSettingsWithCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"0000024B-0000-1000-8000-0026BB765291"];

  return v3;
}

- (BOOL)updateActiveTransitionCountWithCharacteristic:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 value];
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

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v12;
      v26 = 2112;
      *v27 = v6;
      *&v27[8] = 2112;
      v28 = objc_opt_class();
      v13 = "%{public}@Active transition count value: %@ is not of type %@";
      v14 = v11;
      v15 = 32;
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v9);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if ([v8 integerValue] < 0 || objc_msgSend(v8, "integerValue") >= 256)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v12;
      v26 = 2048;
      *v27 = [v8 integerValue];
      v13 = "%{public}@Active transition count value: %ld is less than 0 or greater than 255";
      v14 = v11;
      v15 = 22;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, v13, &v24, v15);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v19 = [v8 unsignedCharValue];
  if ([(HMDLightProfile *)self activeTransitionsCount]== v19)
  {
    goto LABEL_13;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v23;
    v26 = 1024;
    *v27 = [(HMDLightProfile *)v21 activeTransitionsCount];
    *&v27[4] = 1024;
    *&v27[6] = v19;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating active transition count from (%u -> %u)", &v24, 0x18u);
  }

  objc_autoreleasePoolPop(v20);
  [(HMDLightProfile *)v21 setActiveTransitionsCount:v19];
  v16 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)readNaturalLightingCharacteristicsWithReason:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDLightProfile *)self readCharacteristicRequests];
  if ([v9 count])
  {
    v10 = [(HMDLightProfile *)self hapAccessory];
    v11 = [v10 home];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v16;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending read requests to the accessory: %@ with reason: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      objc_initWeak(buf, v13);
      v17 = [v9 allObjects];
      v18 = [(HMDAccessoryProfile *)v13 description];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke;
      v24[3] = &unk_2797355F8;
      objc_copyWeak(&v26, buf);
      v25 = v7;
      [v11 readCharacteristicValues:v17 source:1140 sourceForLogging:v18 qualityOfService:-1 withCompletionHandler:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v21;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Home is not configured on the accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*(v7 + 2))(v7, 0, v22);
    }
  }

  else
  {
    v19 = [(HMDLightProfile *)self availableCharacteristics];
    [(HMDLightProfile *)self updateSettingsWithCharacteristics:v19];

    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v7 + 2))(v7, 0, v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke_2;
    v12[3] = &unk_279733CA8;
    objc_copyWeak(&v16, (a1 + 40));
    v15 = *(a1 + 32);
    v13 = v6;
    v14 = v5;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v16);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __75__HMDLightProfile_readNaturalLightingCharacteristicsWithReason_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
LABEL_8:
    v13 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v13 + 16))(v13, 0, v14);

    goto LABEL_11;
  }

  if (![*(a1 + 32) count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received empty response payload for charactersitic read requests %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v16 = 0;
  v4 = [WeakRetained updateSettingsWithReadCharacteristicResponsePayload:v3 error:&v16];
  v5 = v16;
  v6 = *(a1 + 48);
  if (v4)
  {
    (*(v6 + 16))(v6, [v4 isNaturalLightingEnabled], 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, v5);
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)readNaturalLightingCharacteristicsWithReason:(id)a3
{
  v5 = a3;
  v4 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:v5 completion:&__block_literal_global_123_183976];
}

- (BOOL)updateNaturalLightingCurve
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLightProfile *)self brightnessCharacteristic];
  v5 = [v4 metadata];
  v6 = [v5 minimumValue];
  v7 = [v6 integerValue];

  v8 = [(HMDLightProfile *)self brightnessCharacteristic];
  v9 = [v8 metadata];
  v10 = [v9 maximumValue];
  v11 = [v10 integerValue];

  v12 = [(HMDLightProfile *)self colorTemperatureCharacteristic];
  v13 = [v12 metadata];
  v14 = [v13 minimumValue];

  v15 = [(HMDLightProfile *)self colorTemperatureCharacteristic];
  v16 = [v15 metadata];
  v17 = [v16 maximumValue];

  v18 = [(HMDAccessoryProfile *)self accessory];
  v19 = [v18 home];
  v20 = [v19 naturalLightingContext];
  v21 = [v20 curve];

  if ([v21 minimumBrightness] < v7 || objc_msgSend(v21, "minimumBrightness") > v11)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
LABEL_6:

      v27 = v22;
LABEL_7:
      objc_autoreleasePoolPop(v27);
      v28 = 0;
      goto LABEL_8;
    }

    v25 = HMFGetLogIdentifier();
    *buf = 138544130;
    v52 = v25;
    v53 = 2048;
    v54 = [v21 minimumBrightness];
    v55 = 2048;
    v56 = v7;
    v57 = 2048;
    v58 = v11;
    v26 = "%{public}@Not initializing curve because curve minimum brightness is not in supported range %ld (%ld:%ld)";
LABEL_5:
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, v26, buf, 0x2Au);

    goto LABEL_6;
  }

  if ([v21 maximumBrightness] < v7 || objc_msgSend(v21, "maximumBrightness") > v11)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v25 = HMFGetLogIdentifier();
    *buf = 138544130;
    v52 = v25;
    v53 = 2048;
    v54 = [v21 maximumBrightness];
    v55 = 2048;
    v56 = v7;
    v57 = 2048;
    v58 = v11;
    v26 = "%{public}@Not initializing curve because curve maximum brightness is not in supported range %ld (%ld:%ld)";
    goto LABEL_5;
  }

  if (!v14 || !v17)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v46;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = v17;
      v47 = "%{public}@Either minimum color temperature: %@ or maximum color temperature: %@";
      goto LABEL_24;
    }

LABEL_25:

    v27 = v43;
    goto LABEL_7;
  }

  v42 = [v14 integerValue];
  if (v42 > [v17 integerValue])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v46;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = v17;
      v47 = "%{public}@Minimum color temperature value: %@ is greater than maximum color temperature value: %@";
LABEL_24:
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x20u);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v48 = [v14 integerValue];
  if (v48 > [v21 maximumColorTemperature])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v46 = HMFGetLogIdentifier();
    *buf = 138543874;
    v52 = v46;
    v53 = 2112;
    v54 = v14;
    v55 = 2048;
    v56 = [v21 maximumColorTemperature];
    v47 = "%{public}@Minimum color temperature value: %@  is greater than the curve maximum color temperature value: %ld";
    goto LABEL_24;
  }

  v49 = [v17 integerValue];
  if (v49 < [v21 minimumColorTemperature])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v46 = HMFGetLogIdentifier();
    *buf = 138543874;
    v52 = v46;
    v53 = 2112;
    v54 = v17;
    v55 = 2048;
    v56 = [v21 minimumColorTemperature];
    v47 = "%{public}@Maximum color temperature value: %@  is less than the curve minimum color temperature value: %ld";
    goto LABEL_24;
  }

  v28 = -[HMDNaturalLightingCurve initWithCurve:minimumColorTemperature:maximumColorTemperature:]([HMDNaturalLightingCurve alloc], "initWithCurve:minimumColorTemperature:maximumColorTemperature:", v21, [v14 integerValue], objc_msgSend(v17, "integerValue"));
LABEL_8:
  v29 = [(HMDLightProfile *)self naturalLightingCurve];
  v30 = HMFEqualObjects();

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v50 = [(HMDLightProfile *)v32 naturalLightingCurve];
      v35 = v21;
      v36 = v17;
      v37 = v14;
      v38 = [v50 checksum];
      v39 = [(HMDNaturalLightingCurve *)v28 checksum];
      *buf = 138543874;
      v52 = v34;
      v53 = 2048;
      v54 = v38;
      v14 = v37;
      v17 = v36;
      v21 = v35;
      v55 = 2048;
      v56 = v39;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated natural lighting curve from %llu -> %llu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    [(HMDLightProfile *)v32 setNaturalLightingCurve:v28];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v30 ^ 1;
}

- (id)availableCharacteristicWithType:(id)a3 fromChangedObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDLightProfile *)self availableCharacteristics];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HMDLightProfile_availableCharacteristicWithType_fromChangedObjects___block_invoke;
  v14[3] = &unk_279733C60;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v9;
  v12 = [v7 na_firstObjectPassingTest:v14];

  return v12;
}

uint64_t __70__HMDLightProfile_availableCharacteristicWithType_fromChangedObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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
  if (v5 && [*(a1 + 32) containsObject:v5])
  {
    v6 = [v5 type];
    v7 = [v6 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleAccessoryCharacteristicsChanged:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 name];
    *buf = 138543618;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDLightProfile *)v7 settings];
  v12 = [(HMDLightProfile *)v7 naturalLightingActiveTransitionContext];
  v13 = [v4 userInfo];
  v14 = [v13 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v15 = [(HMDLightProfile *)v7 availableCharacteristicWithType:@"00000144-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  v16 = [(HMDLightProfile *)v7 hapAccessory];
  v17 = [v16 home];
  v18 = [v17 naturalLightingContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(HMDLightProfile *)v7 naturalLightingCurve];

    if (!v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v7;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Initialize the curve since natural lighting context is present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [(HMDLightProfile *)v22 updateNaturalLightingCurve];
    }
  }

  else
  {
  }

  if (v15)
  {
    v25 = [(HMDLightProfile *)v7 availableCharacteristics];
    [(HMDLightProfile *)v7 updateSupportedFeaturesWithCharacteristics:v25];
  }

  v26 = [(HMDLightProfile *)v7 availableCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  if (v26)
  {
    [(HMDLightProfile *)v7 updateNaturalLightingEnabledForCharacteristic:v26];
  }

  v27 = [(HMDLightProfile *)v7 availableCharacteristicWithType:@"0000024B-0000-1000-8000-0026BB765291" fromChangedObjects:v14];
  if (v27 && [(HMDLightProfile *)v7 updateActiveTransitionCountWithCharacteristic:v27])
  {
    [(HMDLightProfile *)v7 readNaturalLightingCharacteristicsWithReason:@"Active transition count updated"];
  }

  [(HMDLightProfile *)v7 notifyClientsOfUpdatedSettingsWithPreviousSettings:v11];
  v28 = [(HMDLightProfile *)v7 naturalLightingActiveTransitionContext];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    v38 = v11;
    v39 = v4;
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(HMDLightProfile *)v31 naturalLightingActiveTransitionContext];
      *buf = 138543874;
      v41 = v33;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting active transition context from %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = [(HMDLightProfile *)v31 naturalLightingCurveWriter];
    v36 = [(HMDLightProfile *)v31 naturalLightingActiveTransitionContext];
    [v35 handleActiveTransitionContextUpdated:v36];

    v11 = v38;
    v4 = v39;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)updateSupportedFeaturesWithCharacteristics:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDLightProfile *)self setSupportedFeatures:0];
  [(HMDLightProfile *)self setNaturalLightingSupported:0];
  v6 = [v4 na_firstObjectPassingTest:&__block_literal_global_183995];
  if (v6)
  {
    v7 = [v4 na_firstObjectPassingTest:&__block_literal_global_105_183997];
    if (!v7)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *MEMORY[0x277CCF7D8];
        *buf = 138543874;
        v72 = v38;
        v73 = 2112;
        v74 = v39;
        v75 = 2112;
        v76 = v4;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Characteristic Color Temperature: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      goto LABEL_46;
    }

    v8 = [v4 na_firstObjectPassingTest:&__block_literal_global_108_183999];
    if (!v8)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v44 = *MEMORY[0x277CCF788];
        *buf = 138543874;
        v72 = v43;
        v73 = 2112;
        v74 = v44;
        v75 = 2112;
        v76 = v4;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Characteristics Brightness: %@ is not supported, available characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      goto LABEL_45;
    }

    v9 = [v4 na_firstObjectPassingTest:&__block_literal_global_111_184001];
    if (v9)
    {
      [(HMDLightProfile *)self setNaturalLightingSupported:1];
      v10 = [(HMDLightProfile *)self naturalLightingCurve];

      if (v10)
      {
        v11 = [v9 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v13)
        {
          v67 = v11;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v65 = v14;
            v19 = v18 = v13;
            v20 = [(__CFString *)v18 hmf_hexadecimalRepresentation];
            *buf = 138543618;
            v72 = v19;
            v73 = 2112;
            v74 = v20;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Decoding supported value transition configuration: %@", buf, 0x16u);

            v11 = v67;
            v13 = v18;
            v14 = v65;
          }

          objc_autoreleasePoolPop(v14);
          v70 = 0;
          v21 = [MEMORY[0x277CFEC60] parsedFromData:v13 error:&v70];
          v64 = v21;
          v66 = v70;
          if (v21)
          {
            v63 = v13;
            v22 = [v21 transitions];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_113;
            v68[3] = &unk_279733C30;
            v23 = v7;
            v69 = v23;
            v24 = [v22 na_firstObjectPassingTest:v68];

            v25 = objc_autoreleasePoolPush();
            v26 = v15;
            v27 = HMFGetOSLogHandle();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
            v62 = v24;
            if (v24)
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v30 = v29 = v25;
                *buf = 138543362;
                v72 = v30;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supported features with natural lighting feature", buf, 0xCu);

                v25 = v29;
              }

              objc_autoreleasePoolPop(v25);
              [(HMDLightProfile *)v26 setSupportedFeatures:1];
            }

            else
            {
              if (v28)
              {
                HMFGetLogIdentifier();
                v60 = v59 = v25;
                *buf = 138543618;
                v72 = v60;
                v73 = 2112;
                v74 = v23;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Characteristic: %@ doesn't support Linear Derived Transition", buf, 0x16u);

                v25 = v59;
              }

              objc_autoreleasePoolPop(v25);
            }

            v11 = v67;
            v58 = v64;

            v13 = v63;
          }

          else
          {
            v54 = objc_autoreleasePoolPush();
            v55 = v15;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = HMFGetLogIdentifier();
              *buf = 138543874;
              v72 = v57;
              v73 = 2112;
              v74 = v13;
              v75 = 2112;
              v76 = v66;
              _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode the supported value transition configuration from: %@ error: %@", buf, 0x20u);

              v11 = v67;
            }

            objc_autoreleasePoolPop(v54);
            v58 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            *buf = 138543618;
            v72 = v53;
            v73 = 2112;
            v74 = v11;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Supported Value Transition Configuration Characteristic value: %@ is not of expected type NSData", buf, 0x16u);

            v13 = 0;
          }

          objc_autoreleasePoolPop(v14);
        }

        goto LABEL_44;
      }

      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v48;
        v49 = "%{public}@Natural lighting curve is not set";
        v50 = v47;
        v51 = OS_LOG_TYPE_ERROR;
        v52 = 12;
        goto LABEL_30;
      }
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543874;
        v72 = v48;
        v73 = 2112;
        v74 = @"00000144-0000-1000-8000-0026BB765291";
        v75 = 2112;
        v76 = v4;
        v49 = "%{public}@Supported Value Transition Characteristic: %@ is not supported, available characteristics: %@";
        v50 = v47;
        v51 = OS_LOG_TYPE_INFO;
        v52 = 32;
LABEL_30:
        _os_log_impl(&dword_2531F8000, v50, v51, v49, buf, v52);
      }
    }

    objc_autoreleasePoolPop(v45);
LABEL_44:

LABEL_45:
LABEL_46:

    goto LABEL_47;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543874;
    v72 = v34;
    v73 = 2112;
    v74 = @"00000143-0000-1000-8000-0026BB765291";
    v75 = 2112;
    v76 = v4;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Value Transition Control Characteristic: %@ is not supported, available characteristics: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
LABEL_47:

  v61 = *MEMORY[0x277D85DE8];
}

unint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 HAPInstanceID];
  v5 = [v4 value];
  v6 = [*(a1 + 32) instanceID];
  if ([v5 isEqualToNumber:v6])
  {
    v7 = [v3 transitionTypes];
    v8 = ([v7 value] >> 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_109(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000144-0000-1000-8000-0026BB765291"];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_106(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke_103(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF7D8]];

  return v3;
}

uint64_t __62__HMDLightProfile_updateSupportedFeaturesWithCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)updateNaturalLightingEnabledForCharacteristic:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v67 = v9;
    v68 = 2112;
    v69 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting enabled with characteristic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDLightProfile *)v7 colorTemperatureCharacteristic];
  if (!v10)
  {
    [(HMDLightProfile *)v7 setNaturalLightingEnabled:0];
    [(HMDLightProfile *)v7 setNaturalLightingActiveTransitionContext:0];
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v29;
      v68 = 2112;
      v69 = 0;
      v30 = "%{public}@Ignoring Value Transition Control Characteristic update because Color Temperature Characteristic is %@";
      v31 = v28;
      v32 = 22;
LABEL_19:
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    }

LABEL_20:

    objc_autoreleasePoolPop(v26);
    goto LABEL_44;
  }

  if (!v4)
  {
    [(HMDLightProfile *)v7 setNaturalLightingEnabled:0];
    [(HMDLightProfile *)v7 setNaturalLightingActiveTransitionContext:0];
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v29;
      v30 = "%{public}@Value Transition Control Characteristic is nil";
      v31 = v28;
      v32 = 12;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v11 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v13 hmf_hexadecimalRepresentation];
      *buf = 138543618;
      v67 = v17;
      v68 = 2112;
      v69 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Decoding Value Transition Control Characteristic value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CFEAB8] parsedFromData:v13 error:0];
    v20 = [v19 naturalLightingEnabledForCharacteristic:v10];
    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v15;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v67 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Start", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      -[HMDLightProfile setNaturalLightingEnabled:](v22, "setNaturalLightingEnabled:", [v20 BOOLValue]);
      v25 = [v19 naturalLightingActiveTransitionContextForCharacteristic:v10];
      [(HMDLightProfile *)v22 setNaturalLightingActiveTransitionContext:v25];
    }

    else
    {
      v65 = v19;
      v25 = [MEMORY[0x277CFEAC0] parsedFromData:v13 error:0];
      v37 = [v25 valueTransition];
      v38 = [(HMDLightProfile *)v15 colorTemperatureCharacteristic];
      v39 = [v37 naturalLightingActiveTransitionContextForCharacteristic:v38];

      if (v39)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v15;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v67 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Fetch Response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        [(HMDLightProfile *)v41 setNaturalLightingEnabled:1];
      }

      else
      {
        v44 = [v25 transitionState];
        if ([v44 isValid])
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v15;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            contexta = HMFGetLogIdentifier();
            [v44 activeTransitionContexts];
            v48 = v61 = v45;
            *buf = 138543618;
            v67 = contexta;
            v68 = 2112;
            v69 = v48;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition Control Write Response, active transition contexts are: %@", buf, 0x16u);

            v45 = v61;
          }

          objc_autoreleasePoolPop(v45);
          -[HMDLightProfile setNaturalLightingEnabled:](v46, "setNaturalLightingEnabled:", [v44 isNaturalLightingEnabledForCharacteristic:v10]);
          v49 = [v25 transitionState];
          v50 = [v49 naturalLightingActiveTransitionContextForCharacteristic:v10];
          [(HMDLightProfile *)v46 setNaturalLightingActiveTransitionContext:v50];
        }

        else
        {
          v51 = [MEMORY[0x277CFEAE8] parsedFromData:v13 error:0];

          v52 = [v51 isValid];
          context = objc_autoreleasePoolPush();
          v53 = v15;
          v54 = HMFGetOSLogHandle();
          v55 = v54;
          if (v52)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v62 = HMFGetLogIdentifier();
              v56 = [v51 activeTransitionContexts];
              *buf = 138543618;
              v67 = v62;
              v68 = 2112;
              v69 = v56;
              v57 = v56;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Parsed the Value Transition Control Characteristic value update as Transition State, active transition contexts are: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            -[HMDLightProfile setNaturalLightingEnabled:](v53, "setNaturalLightingEnabled:", [v51 isNaturalLightingEnabledForCharacteristic:v10]);
            v58 = [v51 naturalLightingActiveTransitionContextForCharacteristic:v10];
            [(HMDLightProfile *)v53 setNaturalLightingActiveTransitionContext:v58];
          }

          else
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              v67 = v59;
              v68 = 2112;
              v69 = v13;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_DEBUG, "%{public}@Did not handle Value Transition Control Characteristic update: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
          }

          v44 = v51;
        }
      }

      v19 = v65;
    }
  }

  else
  {
    [(HMDLightProfile *)v7 setNaturalLightingEnabled:0];
    [(HMDLightProfile *)v7 setNaturalLightingActiveTransitionContext:0];
    v33 = objc_autoreleasePoolPush();
    v34 = v7;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v36;
      v68 = 2112;
      v69 = v11;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Value Transition Control Characteristic value is not of type data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_44:
  v60 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfUpdatedSettingsWithPreviousSettings:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDLightProfile *)self settings];
  v7 = [v6 isEqual:v4];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDLightProfile *)v9 settings];
      *buf = 138543874;
      v50 = v11;
      v51 = 2112;
      v52 = v4;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating settings from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDLightProfile *)v9 settings];
    v14 = [v13 supportedFeatures] & 1;

    if (v14 != ([v4 supportedFeatures] & 1))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v9;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMFBooleanToString();
        v20 = HMFBooleanToString();
        *buf = 138543874;
        v50 = v18;
        v51 = 2112;
        v52 = v19;
        v53 = 2112;
        v54 = v20;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting to sync siri data since natural lighting supported changed from %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [(HMDAccessoryProfile *)v16 accessory];
      v22 = [v21 home];
      v23 = [v22 homeManager];
      [v23 assistantSyncDataChanged:@"Natural lighting support updated"];
    }

    v24 = [(HMDLightProfile *)v9 isNaturalLightingEnabled];
    v25 = [v4 isNaturalLightingEnabled];
    if (v24)
    {
      if ((v25 & 1) == 0)
      {
        v26 = [(HMDLightProfile *)v9 lastNaturalLightingEnabledDate];
        v27 = [(HMDLightProfile *)v9 dataSource];
        v28 = [v27 date];
        [(HMDLightProfile *)v9 setLastNaturalLightingUsedDate:v28];
        [(HMDLightProfile *)v9 setLastNaturalLightingEnabledDate:v28];

        v29 = objc_autoreleasePoolPush();
        v30 = v9;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [(HMDLightProfile *)v30 lastNaturalLightingEnabledDate];
          *buf = 138543874;
          v50 = v32;
          v51 = 2112;
          v52 = v33;
          v53 = 2112;
          v54 = v26;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Updating lastNaturalLightingEnabledDate to: %@ from: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
      }

      if (![(HMDLightProfile *)v9 supportsCHIP])
      {
        [(HMDLightProfile *)v9 synchronizeCurveToAccessory];
      }
    }

    else if (v25)
    {
      v34 = [(HMDLightProfile *)v9 dataSource];
      v35 = [v34 date];
      [(HMDLightProfile *)v9 setLastNaturalLightingUsedDate:v35];
    }

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 postNotificationName:@"HMDLightProfile.SettingsUpdated" object:v9];

    v37 = [(HMDLightProfile *)v9 settings];
    v38 = encodeRootObjectForIncomingXPCMessage(v37, 0);
    v48 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

    v40 = objc_alloc(MEMORY[0x277D0F820]);
    v41 = [(HMDAccessoryProfile *)v9 uniqueIdentifier];
    v42 = [v40 initWithTarget:v41];

    v43 = objc_alloc(MEMORY[0x277D0F848]);
    v44 = [v43 initWithName:*MEMORY[0x277CD07B0] destination:v42 payload:v39];
    [v44 setRequiresSPIEntitlement];
    v45 = [(HMDAccessoryProfile *)v9 msgDispatcher];
    [v45 sendMessage:v44];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)resetNaturalLightingEnabledRetryContext
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLightProfile *)self naturalLightingEnabledRetryContext];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting natural lighting context: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v10 = [v4 completion];
    (v10)[2](v10, v9);

    [(HMDLightProfile *)v6 setNaturalLightingEnabledRetryContext:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchNaturalLightColorTemperatureForBrightnessMessage:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v46 = v9;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch color temperature for brightness: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 numberForKey:*MEMORY[0x277CD0768]];
  if ([v11 integerValue] < 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v27;
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid brightness value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v12];
  }

  else
  {
    v12 = [(HMDLightProfile *)v7 hapAccessory];
    v13 = [v12 home];
    v14 = [v13 naturalLightingContext];
    if (v14)
    {
      v15 = [(HMDLightProfile *)v7 naturalLightingCurve];
      if (v15)
      {
        v42 = v13;
        v16 = [(HMDLightProfile *)v7 dataSource];
        v17 = [(HMDLightProfile *)v7 dataSource];
        v18 = [v17 date];
        v41 = v14;
        v19 = [v14 timeZone];
        v20 = [v16 millisecondsElapsedSinceStartOfDayWithDate:v18 timeZone:v19];

        v21 = [v15 colorTemperatureForBrightness:objc_msgSend(v11 millisecondsElapsedSinceStartOfDay:{"integerValue"), v20}];
        v22 = v21;
        if (v21)
        {
          v43 = *MEMORY[0x277CD0778];
          v44 = v21;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [v4 respondWithPayload:v23];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = v7;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v39;
            v47 = 2112;
            v48 = v11;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to calculate color temperature value for brightness: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [v4 respondWithError:v23];
        }

        v14 = v41;
        v13 = v42;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v7;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v35;
          v47 = 2112;
          v48 = 0;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting curve is not set: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
        [v4 respondWithError:v22];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v7;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v46 = v31;
        v47 = 2112;
        v48 = 0;
        v49 = 2112;
        v50 = v13;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting context not set for home (%@:%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      [v4 respondWithError:v15];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)handleSetNaturalLightingEnabledMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    v11 = [(HMDLightProfile *)v7 hapAccessory];
    [v11 supportsCHIP];
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to set Natural Lighting setting: %@ supportsCHIP: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = [v4 BOOLForKey:*MEMORY[0x277CD0798]];
  v14 = [v4 BOOLForKey:*MEMORY[0x277CD07A0]];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __58__HMDLightProfile_handleSetNaturalLightingEnabledMessage___block_invoke;
  v21 = &unk_2797358C8;
  v22 = v4;
  v23 = v7;
  v15 = v4;
  v16 = _Block_copy(&v18);
  [(HMDLightProfile *)v7 setNaturalLightingEnabled:v13 shouldRetryOnFailure:v14 completion:v16, v18, v19, v20, v21];

  v17 = *MEMORY[0x277D85DE8];
}

void __58__HMDLightProfile_handleSetNaturalLightingEnabledMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x277D85DE8];

    [v3 respondWithError:a2];
  }

  else
  {
    v9 = *MEMORY[0x277CD07A8];
    v5 = [*(a1 + 40) settings];
    v6 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    [*(a1 + 32) respondWithPayload:v7];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)registerForMessages
{
  v35[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDLightProfile *)self hapAccessory];
  v5 = [v4 home];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [(HMDLightProfile *)self naturalLightingCurveWriter];
    [v7 configureWithLightProfile:self];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:v6];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:v6];

    v10 = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [v10 setDelegate:self];

    v11 = [(HMDLightProfile *)self characteristicsAvailabilityListener];
    [v11 start];

    if ([v6 hasCharacteristicNotificationRegistrations] && -[HMDLightProfile enableNaturalLightingCharacteristicNotificationsForObserver:](self, "enableNaturalLightingCharacteristicNotificationsForObserver:", v6))
    {
      [(HMDLightProfile *)self readNaturalLightingCharacteristicsWithReason:@"Characteristic notifications enabled"];
    }

    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v13 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:0 remoteAccessRequired:0];
    if ([v4 supportsCHIP])
    {
      v35[0] = v12;
      v35[1] = v13;
      v35[2] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v35;
      v17 = 3;
    }

    else
    {
      v34 = v12;
      v15 = MEMORY[0x277CBEA60];
      v16 = &v34;
      v17 = 1;
    }

    v22 = [v15 arrayWithObjects:v16 count:v17];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [(HMDAccessoryProfile *)v24 msgDispatcher];
    [v27 registerForMessage:*MEMORY[0x277CD0790] receiver:v24 policies:v22 selector:sel_handleSetNaturalLightingEnabledMessage_];

    v28 = [(HMDAccessoryProfile *)v24 msgDispatcher];
    [v28 registerForMessage:*MEMORY[0x277CD0780] receiver:v24 policies:v22 selector:sel_handleFetchNaturalLightColorTemperatureForBrightnessMessage_];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);
  v4 = [(NSSet *)self->_notificationEnabledCharacteristics allObjects];
  [WeakRetained setNotificationsEnabled:0 forCharacteristics:v4 clientIdentifier:self->_clientIdentifier];

  v5.receiver = self;
  v5.super_class = HMDLightProfile;
  [(HMDLightProfile *)&v5 dealloc];
}

- (HMDLightProfile)initWithUUID:(id)a3 workQueue:(id)a4 lightService:(id)a5 accessory:(id)a6 characteristicsAvailabilityListener:(id)a7 naturalLightingCurveWriter:(id)a8 dataSource:(id)a9
{
  v38[1] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a6;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v38[0] = v16;
  v18 = MEMORY[0x277CBEA60];
  v19 = a4;
  v20 = a3;
  v21 = [v18 arrayWithObjects:v38 count:1];
  v37.receiver = self;
  v37.super_class = HMDLightProfile;
  v22 = [(HMDAccessoryProfile *)&v37 initWithAccessory:v17 uniqueIdentifier:v20 services:v21 workQueue:v19];

  if (v22)
  {
    objc_storeStrong(&v22->_service, a5);
    objc_storeStrong(&v22->_characteristicsAvailabilityListener, a7);
    objc_storeWeak(&v22->_hapAccessory, v17);
    v23 = [MEMORY[0x277CBEB98] set];
    notificationEnabledCharacteristics = v22->_notificationEnabledCharacteristics;
    v22->_notificationEnabledCharacteristics = v23;

    v25 = MEMORY[0x277CCACA8];
    v26 = [MEMORY[0x277CCAD78] UUID];
    v27 = [v26 UUIDString];
    v28 = [v25 stringWithFormat:@"%@.HMDLightProfile.%@", @"com.apple.HomeKitDaemon", v27];
    clientIdentifier = v22->_clientIdentifier;
    v22->_clientIdentifier = v28;

    objc_storeStrong(&v22->_naturalLightingCurveWriter, a8);
    objc_storeStrong(&v22->_dataSource, a9);
    v30 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    characteristicValueObservers = v22->_characteristicValueObservers;
    v22->_characteristicValueObservers = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v22;
}

- (HMDLightProfile)initWithWorkQueue:(id)a3 lightService:(id)a4 accessory:(id)a5
{
  v44[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(HMDLightProfileDataSource);
  v11 = MEMORY[0x277CCACA8];
  v12 = [v8 instanceID];
  v13 = [v11 stringWithFormat:@"%@", v12];

  v14 = MEMORY[0x277CCAD78];
  v15 = [v9 uuid];
  v39 = v13;
  v44[0] = v13;
  v44[1] = @"2BB698E3-7C61-4B4F-B60A-33194DF41A06";
  v16 = 0x277CBE000uLL;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v18 = [v14 hm_deriveUUIDFromBaseUUID:v15 withSalts:v17];

  v19 = +[HMDDeviceCapabilities deviceCapabilities];
  LODWORD(v17) = [v19 isResidentCapable];

  if (v17)
  {
    v20 = [v9 home];
    v21 = MEMORY[0x277CCACA8];
    [v20 name];
    v38 = v7;
    v22 = v8;
    v24 = v23 = v10;
    v25 = [v9 name];
    v26 = [v18 UUIDString];
    v27 = [v21 stringWithFormat:@"%@/%@/%@", v24, v25, v26];

    v16 = 0x277CBE000;
    v10 = v23;
    v8 = v22;
    v7 = v38;
    v28 = [[HMDNaturalLightingCurveWriter alloc] initWithUUID:v18 workQueue:v38 logIdentifier:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x277CBEB98];
  v43[0] = @"00000143-0000-1000-8000-0026BB765291";
  v43[1] = @"00000144-0000-1000-8000-0026BB765291";
  v30 = *MEMORY[0x277CCF788];
  v43[2] = *MEMORY[0x277CCF7D8];
  v43[3] = v30;
  v43[4] = @"0000024B-0000-1000-8000-0026BB765291";
  v31 = [*(v16 + 2656) arrayWithObjects:v43 count:5];
  v32 = [v29 setWithArray:v31];

  v41 = *MEMORY[0x277CD0EA0];
  v42 = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v34 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:v9 workQueue:v7 interestedCharacteristicTypesByServiceType:v33];
  v35 = [(HMDLightProfile *)self initWithUUID:v18 workQueue:v7 lightService:v8 accessory:v9 characteristicsAvailabilityListener:v34 naturalLightingCurveWriter:v28 dataSource:v10];

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t75 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t75, &__block_literal_global_151_184078);
  }

  v3 = logCategory__hmf_once_v76;

  return v3;
}

uint64_t __30__HMDLightProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v76;
  logCategory__hmf_once_v76 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v54[3] = *MEMORY[0x277D85DE8];
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

  v13 = [v12 hapAccessory];
  v14 = [v13 home];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
  }

  else
  {
    v47 = v8;
    v22 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v23 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v24 = [HMDUserMessagePolicy userMessagePolicyWithHome:v15 userPrivilege:0 remoteAccessRequired:0];
    v25 = [v13 supportsCHIP];
    v45 = v23;
    v46 = v22;
    if (v25)
    {
      v54[0] = v22;
      v54[1] = v23;
      v54[2] = v24;
      v26 = MEMORY[0x277CBEA60];
      v27 = v54;
      v28 = 3;
    }

    else
    {
      v53 = v22;
      v26 = MEMORY[0x277CBEA60];
      v27 = &v53;
      v28 = 1;
    }

    v29 = [v26 arrayWithObjects:v27 count:{v28, v24}];
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v33;
      v51 = 2112;
      v52 = v15;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Registering for xpc handler messages with home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [v9 name];
    v35 = [v34 isEqualToString:*MEMORY[0x277CD0790]];

    v36 = [v9 name];
    v37 = v36;
    if (v35)
    {
      v21 = HMFCreateMessageBinding();

      v38 = v46;
      v39 = v44;
    }

    else
    {
      v40 = [v36 isEqualToString:*MEMORY[0x277CD0780]];

      v39 = v44;
      if (v40)
      {
        v41 = [v9 name];
        v21 = HMFCreateMessageBinding();
      }

      else
      {
        v48.receiver = v31;
        v48.super_class = &OBJC_METACLASS___HMDLightProfile;
        v21 = objc_msgSendSuper2(&v48, sel_messageBindingForDispatcher_message_receiver_, v47, v9, v10);
      }

      v38 = v46;
    }

    v8 = v47;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v21;
}

@end