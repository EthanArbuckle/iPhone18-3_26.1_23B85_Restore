@interface HMDNaturalLightingMatterCurveWriter
+ (id)logCategory;
- (BOOL)didAdjustNewColorTempBasedOnAccessoryColorTempRange:(id *)a3;
- (BOOL)isAccessoryColorTemp:(id)a3 closeToCurveColorTemp:(id)a4;
- (BOOL)isDemoMode;
- (BOOL)isTimerRunning;
- (BOOL)shouldAcceptSpecificationVersion:(id)a3;
- (HMDHAPAccessory)accessory;
- (HMDLightProfile)lightProfile;
- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)a3 accessory:(id)a4;
- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)a3 accessory:(id)a4 dataSource:(id)a5 notificationCenter:(id)a6 timerFactory:(id)a7;
- (NSNumber)regularTransitionTime;
- (id)isNaturalLightingAllowedBasedOnAllowList;
- (id)isNaturalLightingAllowedBasedOnSpecVersion;
- (id)logIdentifier;
- (unsigned)getShortTransitionTimeForAccessoryColorTemp:(id)a3 curveColorTemp:(id)a4;
- (void)checkIfNaturalLightingAllowed;
- (void)configurePostNaturalLightingContext;
- (void)configurePreNaturalLightingContext;
- (void)configureWithLightProfile:(id)a3;
- (void)disableNaturalLightingCurveWithCompletion:(id)a3;
- (void)disableNaturalLightingWithReason:(id)a3 message:(id)a4;
- (void)enableNaturalLightingWithReason:(id)a3;
- (void)enableNaturalLightingWithReason:(id)a3 message:(id)a4;
- (void)enableOrUpdateNaturalLightingCurveWithColorMode:(id)a3 accessoryColorTemp:(id)a4 completion:(id)a5;
- (void)enableOrUpdateNaturalLightingCurveWithCompletion:(id)a3;
- (void)getDemoModeTransitionTime:(id *)a3 newColorTemp:(id *)a4 accessoryColorTemp:(id)a5 colorMode:(id)a6;
- (void)getTransitionTime:(id *)a3 newColorTemp:(id *)a4 accessoryColorTemp:(id)a5 colorMode:(id)a6;
- (void)handleAccessoryConnected:(id)a3;
- (void)handleAccessoryFirmwareVersionChangedNotification:(id)a3;
- (void)handleColorControlAttributeReport:(id)a3;
- (void)handleColorTemperatureAttributes:(id)a3;
- (void)handleHomeNaturalLightingContextUpdated:(id)a3;
- (void)handleMobileAssetsUpdatedNotification:(id)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)handleSetNaturalLightingEnabledMessage:(id)a3 lightProfile:(id)a4;
- (void)setNaturalLightingEnabled:(BOOL)a3 completion:(id)a4;
- (void)setStartUpColorTemperature;
- (void)startPeriodicWriteTimerWithInterval:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)updateNaturalLightingEnabledFromAttributes;
- (void)updateSettingsIfNaturalLightingSupportedByAccessory;
@end

@implementation HMDNaturalLightingMatterCurveWriter

- (HMDLightProfile)lightProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_lightProfile);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)handleColorControlAttributeReport:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 attribute];

  v7 = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v8 = [v7 isNaturalLightingEnabled];

  if (v8 && [v6 isEqualToNumber:&unk_283E75380])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = [v4 path];
      v13 = [v21 endpoint];
      v20 = [v4 path];
      v14 = [v20 cluster];
      v15 = [v4 path];
      [v15 attribute];
      v16 = v22 = v9;
      v17 = [v4 value];
      *buf = 138544386;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling MTRAttributeReport with endpoint: %@, cluster: %@, attribute: %@, value: %@", buf, 0x34u);

      v9 = v22;
    }

    objc_autoreleasePoolPop(v9);
    v18 = [v4 value];
    if ([v18 intValue] != 2)
    {
      [(HMDNaturalLightingMatterCurveWriter *)v10 disableNaturalLightingWithReason:@"accessory-attribute-unexpected-color-mode" message:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryFirmwareVersionChangedNotification:(id)a3
{
  v4 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDNaturalLightingMatterCurveWriter_handleAccessoryFirmwareVersionChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __89__HMDNaturalLightingMatterCurveWriter_handleAccessoryFirmwareVersionChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling firmware version changed notification", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) checkIfNaturalLightingAllowed];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryConnected:(id)a3
{
  v4 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDNaturalLightingMatterCurveWriter_handleAccessoryConnected___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __64__HMDNaturalLightingMatterCurveWriter_handleAccessoryConnected___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lightProfile];
  v3 = [*(a1 + 32) accessory];
  v4 = [v3 home];
  v5 = [v4 isCurrentDeviceConfirmedPrimaryResident];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v22 = [*(a1 + 32) accessory];
      v11 = [v22 name];
      [v2 isNaturalLightingSupported];
      v12 = HMFBooleanToString();
      [v2 isNaturalLightingEnabled];
      v13 = HMFBooleanToString();
      [*(a1 + 32) naturalLightingAllowed];
      v14 = HMFBooleanToString();
      *buf = 138544386;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ became connected natural lighting supported:%@ enabled:%@ allowed: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v6);
    if ([v2 isNaturalLightingSupported] && objc_msgSend(*(a1 + 32), "naturalLightingAllowed"))
    {
      [*(a1 + 32) updateNaturalLightingEnabledFromAttributes];
    }

    else if ([*(a1 + 32) naturalLightingAllowed])
    {
      [*(a1 + 32) updateSettingsIfNaturalLightingSupportedByAccessory];
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D0F7A8]);
      v17 = [*(a1 + 32) workQueue];
      v18 = [v16 initWithQueue:v17];

      v19 = [*(a1 + 32) isNaturalLightingAllowedBasedOnSpecVersion];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMDNaturalLightingMatterCurveWriter_handleAccessoryConnected___block_invoke_84;
      v23[3] = &unk_278689888;
      v23[4] = *(a1 + 32);
      v20 = [v19 inContext:v18 then:v23 orRecover:&__block_literal_global_87_278598];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v15;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Not handling accessory connected notification on non-primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMDNaturalLightingMatterCurveWriter_handleAccessoryConnected___block_invoke_84(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 uuid];
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is allowed for this accessory: %@ based on spec version.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) setNaturalLightingAllowed:1];
    [*(a1 + 32) updateSettingsIfNaturalLightingSupportedByAccessory];
  }

  else
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) accessory];
      v14 = [v13 uuid];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is not allowed for this accessory: %@ based on spec version.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

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

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident updated notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDNaturalLightingMatterCurveWriter *)v10 accessory];
  v14 = [v13 home];
  v15 = [v14 uuid];
  v16 = [v8 hmf_isEqualToUUID:v15];

  if (v16)
  {
    v17 = [(HMDNaturalLightingMatterCurveWriter *)v10 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDNaturalLightingMatterCurveWriter_handlePrimaryResidentUpdateNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v10;
    dispatch_async(v17, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v10;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring resident update for other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __79__HMDNaturalLightingMatterCurveWriter_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lightProfile];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = [v4 isCurrentDeviceConfirmedPrimaryResident];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) lightProfile];
      [v10 isNaturalLightingSupported];
      v11 = HMFBooleanToString();
      v12 = [*(a1 + 32) lightProfile];
      [v12 isNaturalLightingEnabled];
      v13 = HMFBooleanToString();
      [*(a1 + 32) naturalLightingAllowed];
      HMFBooleanToString();
      v14 = v16 = v6;
      *buf = 138544130;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device became primary resident, natural lighting supported:%@ enabled:%@ allowed: %@", buf, 0x2Au);

      v6 = v16;
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) checkIfNaturalLightingAllowed];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMobileAssetsUpdatedNotification:(id)a3
{
  v4 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDNaturalLightingMatterCurveWriter_handleMobileAssetsUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __77__HMDNaturalLightingMatterCurveWriter_handleMobileAssetsUpdatedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling mobile assets updated notification", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) checkIfNaturalLightingAllowed];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeNaturalLightingContextUpdated:(id)a3
{
  v4 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDNaturalLightingMatterCurveWriter_handleHomeNaturalLightingContextUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __79__HMDNaturalLightingMatterCurveWriter_handleHomeNaturalLightingContextUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling home natural lighting context updated notification", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) configurePostNaturalLightingContext];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)timerDidFire:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Periodic write timer fired", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDNaturalLightingMatterCurveWriter *)v6 workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDNaturalLightingMatterCurveWriter *)v6 periodicWriteTimer];

  if (v10 != v4)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDNaturalLightingMatterCurveWriter *)v12 periodicWriteTimer];
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received timer did fire callback for unknown timer. Expected: %@ received: %@", &v20, 0x20u);

LABEL_10:
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v16 = [(HMDNaturalLightingMatterCurveWriter *)v6 accessory];
  v17 = [v16 naturalLightingEnabled];
  v18 = [v17 BOOLValue];

  if ((v18 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not acting on timer expiry because natural lighting is not enabled", &v20, 0xCu);
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    goto LABEL_12;
  }

  [(HMDNaturalLightingMatterCurveWriter *)v6 enableNaturalLightingWithReason:@"periodic-timer-expired"];
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startPeriodicWriteTimerWithInterval:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 longValue];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v9;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting Periodic write timer for %f seconds", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDNaturalLightingMatterCurveWriter *)v7 timerFactory];
  v11 = v10[2](v10, 0, v5);
  [(HMDNaturalLightingMatterCurveWriter *)v7 setPeriodicWriteTimer:v11];

  v12 = [(HMDNaturalLightingMatterCurveWriter *)v7 periodicWriteTimer];
  [v12 setDelegate:v7];

  v13 = [(HMDNaturalLightingMatterCurveWriter *)v7 workQueue];
  v14 = [(HMDNaturalLightingMatterCurveWriter *)v7 periodicWriteTimer];
  [v14 setDelegateQueue:v13];

  v15 = [(HMDNaturalLightingMatterCurveWriter *)v7 periodicWriteTimer];
  [v15 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAcceptSpecificationVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntValue];
    v6 = [v4 unsignedIntValue];
    v7 = (v5 & 0xFF000000) != 0;
    if ((v6 & 0xFC0000) == 0)
    {
      v7 = 0;
    }

    if (v5 >> 25)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getDemoModeTransitionTime:(id *)a3 newColorTemp:(id *)a4 accessoryColorTemp:(id)a5 colorMode:(id)a6
{
  v8 = 1800000 * (++getDemoModeTransitionTime_newColorTemp_accessoryColorTemp_colorMode__count % 0x30u) + 2000;
  v9 = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve:a3];
  *a4 = [v9 colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v8}];

  *a3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:20];
}

- (BOOL)isAccessoryColorTemp:(id)a3 closeToCurveColorTemp:(id)a4
{
  v5 = a4;
  v6 = [a3 shortValue];
  v7 = [v5 shortValue];

  v8 = v6 - v7;
  if (v6 - v7 < 0)
  {
    v8 = v7 - v6;
  }

  return v8 < 0xB;
}

- (NSNumber)regularTransitionTime
{
  v2 = (arc4random_uniform(0x78u) + 1800);
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithUnsignedShort:v2];
}

- (unsigned)getShortTransitionTimeForAccessoryColorTemp:(id)a3 curveColorTemp:(id)a4
{
  v5 = a4;
  v6 = [a3 shortValue];
  v7 = [v5 shortValue];

  v8 = v6 - v7;
  if (v6 - v7 < 0)
  {
    v8 = v7 - v6;
  }

  v9 = v8 / 0xAu;
  if (v9 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v9;
  }
}

- (BOOL)didAdjustNewColorTempBasedOnAccessoryColorTempRange:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMinColorTemperature];
  if (v5)
  {
    v6 = v5;
    v7 = [*a3 intValue];
    v8 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMinColorTemperature];
    v9 = [v8 intValue];

    if (v7 < v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *a3;
        v15 = [(HMDNaturalLightingMatterCurveWriter *)v11 accessoryMinColorTemperature];
        v30 = 138543874;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Adjusting new color temp: %@ to min color temp: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [(HMDNaturalLightingMatterCurveWriter *)v11 accessoryMinColorTemperature];
LABEL_11:
      *a3 = v16;
      LOBYTE(v17) = 1;
      goto LABEL_13;
    }
  }

  v17 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMaxColorTemperature];
  if (v17)
  {
    v18 = v17;
    v19 = [*a3 intValue];
    v20 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMaxColorTemperature];
    v21 = [v20 intValue];

    if (v19 <= v21)
    {
      LOBYTE(v17) = 0;
      goto LABEL_13;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *a3;
      v27 = [(HMDNaturalLightingMatterCurveWriter *)v23 accessoryMaxColorTemperature];
      v30 = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Adjusting new color temp: %@ to max color temp: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v16 = [(HMDNaturalLightingMatterCurveWriter *)v23 accessoryMaxColorTemperature];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)getTransitionTime:(id *)a3 newColorTemp:(id *)a4 accessoryColorTemp:(id)a5 colorMode:(id)a6
{
  v31 = a5;
  v10 = a6;
  v11 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v12 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v13 = [v12 date];
  v14 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v15 = [v14 localTimeZone];
  v16 = [v11 millisecondsElapsedSinceStartOfDayWithDate:v13 timeZone:v15];

  v17 = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve];
  v18 = [v17 colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v16}];

  LODWORD(v17) = [v10 intValue];
  if (v17 != 2)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    goto LABEL_5;
  }

  if ([(HMDNaturalLightingMatterCurveWriter *)self isAccessoryColorTemp:v31 closeToCurveColorTemp:v18])
  {
    v19 = [(HMDNaturalLightingMatterCurveWriter *)self regularTransitionTime];
LABEL_5:
    *a3 = v19;
    v20 = 0.0;
    goto LABEL_7;
  }

  v21 = [(HMDNaturalLightingMatterCurveWriter *)self getShortTransitionTimeForAccessoryColorTemp:v31 curveColorTemp:v18];
  *a3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
  v20 = v21;
LABEL_7:
  v22 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v23 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v24 = [v23 date];
  v25 = [v24 dateByAddingTimeInterval:v20];
  v26 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v27 = [v26 localTimeZone];
  v28 = [v22 millisecondsElapsedSinceStartOfDayWithDate:v25 timeZone:v27];

  v29 = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve];
  *a4 = [v29 colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v28}];

  if ([(HMDNaturalLightingMatterCurveWriter *)self didAdjustNewColorTempBasedOnAccessoryColorTempRange:a4])
  {
    *v30 = [(HMDNaturalLightingMatterCurveWriter *)self regularTransitionTime];
  }
}

- (void)enableOrUpdateNaturalLightingCurveWithColorMode:(id)a3 accessoryColorTemp:(id)a4 completion:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v40 = a5;
  v10 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDNaturalLightingMatterCurveWriter *)v12 accessory];
    v16 = [v15 name];
    *buf = 138544130;
    v53 = v14;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    v58 = 2112;
    v59 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting, colorMode: %@ accessoryColorTemp: %@ for accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v17 = [(HMDNaturalLightingMatterCurveWriter *)v12 accessory];
  v41 = v8;
  if ([(HMDNaturalLightingMatterCurveWriter *)v12 isDemoMode])
  {
    v48 = 0;
    v49 = 0;
    [(HMDNaturalLightingMatterCurveWriter *)v12 getDemoModeTransitionTime:&v49 newColorTemp:&v48 accessoryColorTemp:v9 colorMode:v8];
    v18 = v49;
    v19 = v48;
    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v23 = HMFGetLogIdentifier();
    v24 = [v17 name];
    *buf = 138544386;
    v53 = v23;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v18;
    v58 = 2112;
    v59 = v24;
    v60 = 2112;
    v61 = v9;
    v25 = "%{public}@Demo mode: Calculated new color temp: %@ transition time: %@ for accessory: %@ with color temp: %@";
  }

  else
  {
    v50 = 0;
    v51 = 0;
    [(HMDNaturalLightingMatterCurveWriter *)v12 getTransitionTime:&v51 newColorTemp:&v50 accessoryColorTemp:v9 colorMode:v8];
    v18 = v51;
    v19 = v50;
    v20 = objc_autoreleasePoolPush();
    v26 = v12;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v23 = HMFGetLogIdentifier();
    v24 = [v17 name];
    *buf = 138544386;
    v53 = v23;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v18;
    v58 = 2112;
    v59 = v24;
    v60 = 2112;
    v61 = v9;
    v25 = "%{public}@Calculated new color temp: %@ transition time: %@ for accessory: %@ with color temp: %@";
  }

  _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, v25, buf, 0x34u);

LABEL_9:
  objc_autoreleasePoolPop(v20);
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{10 * objc_msgSend(v18, "unsignedIntValue")}];
  v28 = [v17 chipAccessoryServer];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 identifier];
    v31 = [v17 hapInstanceId];
    v32 = [v17 matchingHAPAccessoryWithServerIdentifier:v30 instanceID:v31];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke;
    v42[3] = &unk_278689B30;
    v42[4] = v12;
    v33 = v40;
    v47 = v40;
    v43 = v19;
    v44 = v27;
    v45 = v9;
    v46 = v18;
    [v29 fetchColorControlClusterForHapAccessory:v32 completionHandler:v42];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v12;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v37;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@chipAccessoryServer is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v38 = [(HMDNaturalLightingMatterCurveWriter *)v35 regularTransitionTime];
    v33 = v40;
    (*(v40 + 2))(v40, v32, v38);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1[4];
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[4] accessory];
      v21 = [v20 name];
      *buf = 138543874;
      v34 = v19;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_76;
    block[3] = &unk_27868A7A0;
    v23 = a1[9];
    block[4] = a1[4];
    v32 = v23;
    dispatch_async(v22, block);

    v15 = v32;
  }

  else
  {
    v8 = a1[5];
    v9 = a1[6];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_2;
    v26[3] = &unk_278689B08;
    v25 = a1[4];
    v10 = a1[7];
    v11 = a1[5];
    v12 = a1[6];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v25;
    *(&v14 + 1) = v10;
    v27 = v14;
    v28 = v13;
    v29 = a1[8];
    v30 = a1[9];
    [v5 moveToCustomColorTemperatureValue:v8 transitionTime:v9 completionHandler:v26];

    v15 = *(&v27 + 1);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_76(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:59];
  v3 = [*(a1 + 32) regularTransitionTime];
  (*(v2 + 16))(v2, v4, v3);
}

void __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v16 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) accessory];
    v11 = [v10 name];
    *buf = 138544642;
    v22 = v7;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed setting color temperature: [%@ -> %@] with transitionTime: %@ on accessory: %@ with error: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v4);
  v12 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_77;
  block[3] = &unk_278689F98;
  v18 = *(a1 + 64);
  v13 = *(a1 + 72);
  v19 = v3;
  v20 = v13;
  v14 = v3;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke_77(uint64_t a1)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "unsignedIntValue") + 1}];
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

- (void)enableOrUpdateNaturalLightingCurveWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v6 = [v5 chipAccessoryServer];
  if (v6)
  {
    v7 = [v5 chipAccessoryServer];
    v8 = [v7 identifier];
    v9 = [v5 hapInstanceId];
    v10 = [v5 matchingHAPAccessoryWithServerIdentifier:v8 instanceID:v9];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke;
    v17[3] = &unk_278689A90;
    v17[4] = self;
    v18 = v4;
    [v6 fetchColorControlClusterForHapAccessory:v10 completionHandler:v17];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@chipAccessoryServer is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v15 = [(HMDNaturalLightingMatterCurveWriter *)v12 regularTransitionTime];
    (*(v4 + 2))(v4, v10, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) accessory];
      v15 = [v14 name];
      *buf = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_72;
    block[3] = &unk_27868A7A0;
    v17 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v17;
    dispatch_async(v16, block);

    v9 = v22;
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_2;
    v19[3] = &unk_278689AE0;
    v8 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v8;
    [v5 readColorModeAndColorTemperatureWithCompletion:v19];
    v9 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_72(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:59];
  v3 = [*(a1 + 32) regularTransitionTime];
  (*(v2 + 16))(v2, v4, v3);
}

void __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) accessory];
      v15 = [v14 name];
      *buf = 138543874;
      v28 = v13;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to read color mode and temp from accessory: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_73;
    block[3] = &unk_27868A7A0;
    v17 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v26 = v17;
    dispatch_async(v16, block);

    v18 = v26;
  }

  else
  {
    v19 = [*(a1 + 32) workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_2_74;
    v21[3] = &unk_278689AB8;
    v21[4] = *(a1 + 32);
    v22 = v7;
    v23 = v8;
    v24 = *(a1 + 40);
    dispatch_async(v19, v21);

    v18 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke_73(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:59];
  v3 = [*(a1 + 32) regularTransitionTime];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)disableNaturalLightingCurveWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v6 = [v5 chipAccessoryServer];
  if (v6)
  {
    v7 = [v5 chipAccessoryServer];
    v8 = [v7 identifier];
    v9 = [v5 hapInstanceId];
    v10 = [v5 matchingHAPAccessoryWithServerIdentifier:v8 instanceID:v9];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke;
    v17[3] = &unk_278689A90;
    v17[4] = self;
    v18 = v4;
    [v6 fetchColorControlClusterForHapAccessory:v10 completionHandler:v17];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@chipAccessoryServer is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v15 = [(HMDNaturalLightingMatterCurveWriter *)v12 regularTransitionTime];
    (*(v4 + 2))(v4, v10, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) accessory];
      v15 = [v14 name];
      *buf = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_70;
    block[3] = &unk_27868A7A0;
    v17 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v17;
    dispatch_async(v16, block);

    v9 = v22;
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_2;
    v19[3] = &unk_278689A68;
    v8 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v8;
    [v5 stopMoveToColorTemperatureCommandWithCompletion:v19];
    v9 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:59];
  v3 = [*(a1 + 32) regularTransitionTime];
  (*(v2 + 16))(v2, v4, v3);
}

void __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopped moving color temperature with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_71;
  block[3] = &unk_278689F98;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v14 = v3;
  v15 = v10;
  v16 = v9;
  v11 = v3;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke_71(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) regularTransitionTime];
  (*(v2 + 16))(v2, v1, v3);
}

- (void)setNaturalLightingEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [(HMDNaturalLightingMatterCurveWriter *)self enableOrUpdateNaturalLightingCurveWithCompletion:v7];
  }

  else
  {
    [(HMDNaturalLightingMatterCurveWriter *)self disableNaturalLightingCurveWithCompletion:v7];
  }
}

- (void)setStartUpColorTemperature
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "naturalLightingStartUpColorTemperature")}];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v4 name];
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting startUpColorTemperature:%@ on accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v4 chipAccessoryServer];
  v14 = [v13 identifier];
  v15 = [v4 hapInstanceId];
  v16 = [v4 matchingHAPAccessoryWithServerIdentifier:v14 instanceID:v15];

  v17 = [v4 chipAccessoryServer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HMDNaturalLightingMatterCurveWriter_setStartUpColorTemperature__block_invoke;
  v20[3] = &unk_278689A40;
  v20[4] = v9;
  v21 = v7;
  v18 = v7;
  [v17 fetchColorControlClusterForHapAccessory:v16 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __65__HMDNaturalLightingMatterCurveWriter_setStartUpColorTemperature__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) accessory];
      v14 = [v13 name];
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__HMDNaturalLightingMatterCurveWriter_setStartUpColorTemperature__block_invoke_68;
    v16[3] = &unk_27868A1D8;
    v8 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v8;
    [v5 writeStartUpColorTemperature:v17 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HMDNaturalLightingMatterCurveWriter_setStartUpColorTemperature__block_invoke_68(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) accessory];
    v10 = [v9 name];
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed setting startup color temperature: %@ on accessory: %@ with error: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingsIfNaturalLightingSupportedByAccessory
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v5 = [v4 home];
  v6 = v5;
  if (!v4 || !v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v15;
      v16 = "%{public}@Not updating natural lighting settings because accessory or home is nil";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_229538000, v17, v18, v16, buf, 0xCu);
LABEL_11:
    }

LABEL_12:

    objc_autoreleasePoolPop(v12);
    goto LABEL_13;
  }

  if (([v5 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v15;
      v16 = "%{public}@Not updating natural lighting settings yet because current device is not a primary resident";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (![(HMDNaturalLightingMatterCurveWriter *)self naturalLightingAllowed])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v15 = HMFGetLogIdentifier();
    v20 = [v4 uuid];
    *buf = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating natural lighting settings because natural lighting is not allowed for this accessory: %@", buf, 0x16u);

    goto LABEL_11;
  }

  v7 = [v4 chipAccessoryServer];
  v8 = [v7 identifier];
  v9 = [v4 hapInstanceId];
  v10 = [v4 matchingHAPAccessoryWithServerIdentifier:v8 instanceID:v9];

  v11 = [v4 chipAccessoryServer];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke;
  v21[3] = &unk_278689A18;
  v21[4] = self;
  v22 = &unk_283E75338;
  v23 = &unk_283E75350;
  [v11 fetchColorControlClusterForHapAccessory:v10 completionHandler:v21];

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
}

void __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) accessory];
      v15 = [v14 name];
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke_66;
    v17[3] = &unk_2786899F0;
    v17[4] = *(a1 + 32);
    [v5 supportsColorTemperatureRangeWithMinColorTemperature:v8 maxColorTemperature:v9 completion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke_66(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke_2;
  block[3] = &unk_2786899C8;
  v22 = a2;
  v13 = *(a1 + 32);
  v18 = v9;
  v19 = v13;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v12, block);
}

void __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (*(a1 + 64) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 64);
      v16 = HMFBooleanToString();
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) accessory];
      v19 = [v18 name];
      v21 = 138544130;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Completed reading color temperature support: %@ with error: %@ from accessory: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 64);
      v7 = HMFBooleanToString();
      v8 = [*(a1 + 40) accessory];
      v9 = [v8 name];
      v21 = 138543874;
      v22 = v5;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Completed reading color temperature support: %@ from accessory: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) setAccessoryMinColorTemperature:*(a1 + 48)];
    [*(a1 + 40) setAccessoryMaxColorTemperature:*(a1 + 56)];
    v10 = [*(a1 + 40) lightProfile];
    [v10 updateSettingsWithNaturalLightingSupported:1];

    [*(a1 + 40) updateNaturalLightingEnabledFromAttributes];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleColorTemperatureAttributes:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 colorMode];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Color temperature attributes read from accessory: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5 && [v5 intValue] != 2)
  {
    [(HMDNaturalLightingMatterCurveWriter *)v7 disableNaturalLightingWithReason:@"accessory-attribute-colorMode-change" message:0];
    goto LABEL_16;
  }

  v11 = [v4 remainingTime];
  v12 = [(HMDNaturalLightingMatterCurveWriter *)v7 accessory];
  v13 = [v12 naturalLightingEnabled];
  v14 = [v13 BOOLValue];

  if (v14 && v11 && [v11 unsignedShortValue])
  {
    v15 = @"naturalLightingEnabled";
LABEL_13:
    [(HMDNaturalLightingMatterCurveWriter *)v7 enableNaturalLightingWithReason:v15];
    goto LABEL_14;
  }

  if (v14)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [(HMDNaturalLightingMatterCurveWriter *)v17 accessory];
      v21 = [v20 name];
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is enabled and remaining time is 0, yet enabling again on accessory: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = @"naturalLightingEnabled-zeroRemainingTime";
    goto LABEL_13;
  }

LABEL_14:

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateNaturalLightingEnabledFromAttributes
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v5 = [v4 home];
  v6 = v5;
  if (!v4 || !v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      v16 = "%{public}@Not updating natural lighting enabled because accessory or home is nil";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_229538000, v17, v18, v16, buf, 0xCu);
LABEL_11:
    }

LABEL_12:

    objc_autoreleasePoolPop(v12);
    goto LABEL_13;
  }

  if (([v5 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      v16 = "%{public}@Not updating natural lighting settings yet because current device is not a primary resident";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (![(HMDNaturalLightingMatterCurveWriter *)self naturalLightingAllowed])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v15 = HMFGetLogIdentifier();
    v20 = [v4 uuid];
    *buf = 138543618;
    v23 = v15;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating natural lighting settings because natural lighting is not allowed for this accessory: %@", buf, 0x16u);

    goto LABEL_11;
  }

  v7 = [v4 chipAccessoryServer];
  v8 = [v7 identifier];
  v9 = [v4 hapInstanceId];
  v10 = [v4 matchingHAPAccessoryWithServerIdentifier:v8 instanceID:v9];

  v11 = [v4 chipAccessoryServer];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke;
  v21[3] = &unk_2786899A0;
  v21[4] = self;
  [v11 fetchColorControlClusterForHapAccessory:v10 completionHandler:v21];

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
}

void __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) accessory];
      v14 = [v13 name];
      *buf = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch color control cluster from accessory: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reading color temperature attributes from accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke_49;
    v16[3] = &unk_278689978;
    v16[4] = *(a1 + 32);
    [v5 readColorTemperatureAttributesWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to read color temperature attributes with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = [*(a1 + 32) workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke_50;
    v13[3] = &unk_27868A750;
    v13[4] = *(a1 + 32);
    v14 = v5;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disableNaturalLightingWithReason:(id)a3 message:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v9 = [v8 isNaturalLightingEnabled];
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Disabling natural lighting with reason: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, v12);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingWithReason_message___block_invoke;
    v20[3] = &unk_278689928;
    objc_copyWeak(&v23, buf);
    v21 = v8;
    v22 = v7;
    [(HMDNaturalLightingMatterCurveWriter *)v12 setNaturalLightingEnabled:0 completion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v8 uniqueIdentifier];
      *buf = 138543874;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is already disabled for lightProfile: %@ reason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [0 respondWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __80__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingWithReason_message___block_invoke(id *a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] updateSettingsWithNaturalLightingEnabled:0];
    [WeakRetained stopPeriodicWriteTimer];
    if (a1[5])
    {
      v20 = *MEMORY[0x277CD07A8];
      v8 = [a1[4] settings];
      v9 = encodeRootObjectForIncomingXPCMessage(v8, 0);
      v21[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      [a1[5] respondWithPayload:v10];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Disabled natural lighting with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableNaturalLightingWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason___block_invoke;
  v12[3] = &unk_278689950;
  objc_copyWeak(&v14, buf);
  v10 = v5;
  v13 = v10;
  [(HMDNaturalLightingMatterCurveWriter *)v7 setNaturalLightingEnabled:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Enabled natural lighting completed with error: %@ transitionTime: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (!v5)
    {
      [*(a1 + 32) updateSettingsWithNaturalLightingEnabled:1];
    }

    [v9 startPeriodicWriteTimerWithInterval:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableNaturalLightingWithReason:(id)a3 message:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  objc_initWeak(buf, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason_message___block_invoke;
  v16[3] = &unk_278689928;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v8;
  v18 = v14;
  [(HMDNaturalLightingMatterCurveWriter *)v10 setNaturalLightingEnabled:1 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __79__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason_message___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Enabled natural lighting completed with error: %@ transitionTime: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = a1[5];
    if (v5)
    {
      [v12 updateSettingsWithNaturalLightingEnabled:0];
      [v9 stopPeriodicWriteTimer];
      [a1[4] respondWithError:v5];
    }

    else
    {
      [v12 updateSettingsWithNaturalLightingEnabled:1];
      v15 = [a1[5] settings];
      v16 = encodeRootObjectForIncomingXPCMessage(v15, 0);
      v20 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

      [a1[4] respondWithPayload:v17];
      [v9 setStartUpColorTemperature];
      [v9 startPeriodicWriteTimerWithInterval:v6];
    }
  }

  else
  {
    v13 = a1[4];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v13 respondWithError:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTimerRunning
{
  v2 = [(HMDNaturalLightingMatterCurveWriter *)self periodicWriteTimer];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isDemoMode
{
  v2 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v3 = [v2 naturalLightingStartUpColorTemperature] == 123;

  return v3;
}

- (void)handleSetNaturalLightingEnabledMessage:(id)a3 lightProfile:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v6 messagePayload];
    v29 = 138543618;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received message to set matter natural lighting setting: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDNaturalLightingMatterCurveWriter *)v10 accessory];
  v15 = [v14 home];
  v16 = v15;
  if (!v14 || !v15)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v10;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = MEMORY[0x277CCA9B8];
    v22 = 20;
    goto LABEL_14;
  }

  if (([v15 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v10;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Cannot enable natural lighting because this device is not primary resident", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v21 = MEMORY[0x277CCA9B8];
    v22 = 48;
LABEL_14:
    v27 = [v21 hmErrorWithCode:v22];
    [v6 respondWithError:v27];

    goto LABEL_15;
  }

  if ([v6 BOOLForKey:*MEMORY[0x277CD0798]])
  {
    [(HMDNaturalLightingMatterCurveWriter *)v10 enableNaturalLightingWithReason:@"XPCMessagge" message:v6];
  }

  else
  {
    [(HMDNaturalLightingMatterCurveWriter *)v10 disableNaturalLightingWithReason:@"XPCMessagge" message:v6];
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void __65__HMDNaturalLightingMatterCurveWriter_setNaturalLightingEnabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 0];
    v9 = [*(a1 + 40) uniqueIdentifier];
    v10 = [v9 UUIDString];
    v25 = v10;
    v26[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@setNaturalLightingEnabled finished with response: %@ error: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 32) fulfillWithValue:v11];
    if (v5 || (*(a1 + 56) & 1) == 0)
    {
      [*(a1 + 40) updateSettingsWithNaturalLightingEnabled:0];
      [v13 stopPeriodicWriteTimer];
    }

    else
    {
      [*(a1 + 40) updateSettingsWithNaturalLightingEnabled:1];
      if ([v6 longValue])
      {
        [v13 startPeriodicWriteTimerWithInterval:v6];
      }
    }
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v16 rejectWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)isNaturalLightingAllowedBasedOnAllowList
{
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v4 = [v3 home];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D0F7A8]);
    v6 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
    v7 = [v5 initWithQueue:v6];

    v8 = MEMORY[0x277D0F7C0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnAllowList__block_invoke;
    v13[3] = &unk_2786898D8;
    v14 = v4;
    v15 = v3;
    v9 = [v8 inContext:v7 perform:v13];
  }

  else
  {
    v10 = MEMORY[0x277D0F7C0];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v9 = [v10 futureWithValue:v11];
  }

  return v9;
}

uint64_t __79__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnAllowList__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) isAccessoryCertifiedForNaturalLighting:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDNaturalLightingMatterCurveWriter *)v4 isNaturalLightingAllowedBasedOnSpecVersion];
  }
}

- (id)isNaturalLightingAllowedBasedOnSpecVersion
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 chipAccessoryServer];

    if (v5)
    {
      *buf = 0;
      v6 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      v7 = [v4 chipAccessoryServer];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnSpecVersion__block_invoke;
      v17[3] = &unk_2786898B0;
      v17[4] = self;
      v18 = *buf;
      [v7 readSpecificationVersionWithCompletionHandler:v17];

      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      v12 = "%{public}@Not handling natural lighting allowed check because chipAccessoryServer is nil";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      v12 = "%{public}@Not handling natural lighting allowed check because accessory is nil";
LABEL_8:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v13 = MEMORY[0x277D0F7C0];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [v13 futureWithValue:v14];

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

void __81__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnSpecVersion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) shouldAcceptSpecificationVersion:v5];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = @"not";
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      if (v7)
      {
        v12 = &stru_283CF9D50;
      }

      v20 = v5;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received spec version: %@ is %@ accepted to allow natural lighting", &v17, 0x20u);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to read specification version with error: %@", &v17, 0x16u);
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v14 fulfillWithValue:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)checkIfNaturalLightingAllowed
{
  v3 = objc_alloc(MEMORY[0x277D0F7A8]);
  v4 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  v5 = [v3 initWithQueue:v4];

  v6 = [(HMDNaturalLightingMatterCurveWriter *)self isNaturalLightingAllowedBasedOnSpecVersion];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke;
  v13[3] = &unk_278689888;
  v13[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_23;
  v12[3] = &unk_278689CD8;
  v12[4] = self;
  v7 = [v6 inContext:v5 then:v13 orRecover:v12];
  if (![(HMDNaturalLightingMatterCurveWriter *)self naturalLightingAllowed])
  {
    v8 = [(HMDNaturalLightingMatterCurveWriter *)self isNaturalLightingAllowedBasedOnAllowList];
    v10[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_25;
    v11[3] = &unk_278689888;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_26;
    v10[3] = &unk_278689CD8;
    v9 = [v8 inContext:v5 then:v11 orRecover:v10];
  }
}

uint64_t __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 uuid];
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is allowed for this accessory: %@ based on spec version.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) setNaturalLightingAllowed:1];
    [*(a1 + 32) updateSettingsIfNaturalLightingSupportedByAccessory];
  }

  else
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) accessory];
      v14 = [v13 uuid];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is not allowed for this accessory: %@ based on spec version.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_23(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) accessory];
    v9 = [v8 uuid];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to check if natural lighting allowed for this accessory: %@ based on spec version.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_25(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 uuid];
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is allowed for this accessory: %@ based on allow list.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) setNaturalLightingAllowed:1];
    [*(a1 + 32) updateSettingsIfNaturalLightingSupportedByAccessory];
  }

  else
  {
    if (v8)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) accessory];
      v14 = [v13 uuid];
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Natural lighting is not allowed for this accessory: %@ based on allow list.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __68__HMDNaturalLightingMatterCurveWriter_checkIfNaturalLightingAllowed__block_invoke_26(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) accessory];
    v9 = [v8 uuid];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to check if natural lighting allowed for this accessory: %@ based on allow list.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)configurePostNaturalLightingContext
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v4 = [v3 home];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3 && v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@configurePostNaturalLightingContext", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v4 naturalLightingContext];
    v11 = [v10 curve];

    if (v11)
    {
      v12 = -[HMDNaturalLightingCurve initWithCurve:minimumColorTemperature:maximumColorTemperature:]([HMDNaturalLightingCurve alloc], "initWithCurve:minimumColorTemperature:maximumColorTemperature:", v11, [v11 minimumColorTemperature], objc_msgSend(v11, "maximumColorTemperature"));
      [(HMDNaturalLightingMatterCurveWriter *)v6 setNaturalLightingCurve:v12];

      v13 = [(HMDNaturalLightingMatterCurveWriter *)v6 naturalLightingCurve];

      if (v13)
      {
        v14 = [(HMDNaturalLightingMatterCurveWriter *)v6 notificationCenter];
        [v14 addObserver:v6 selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

        v15 = [(HMDNaturalLightingMatterCurveWriter *)v6 notificationCenter];
        [v15 addObserver:v6 selector:sel_handleAccessoryConnected_ name:@"HMDAccessoryConnectedNotification" object:v3];

        v16 = [v3 bridge];
        v17 = [(HMDNaturalLightingMatterCurveWriter *)v6 notificationCenter];
        v18 = v17;
        if (v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v3;
        }

        [v17 addObserver:v6 selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v19];

        v20 = [(HMDNaturalLightingMatterCurveWriter *)v6 notificationCenter];
        v21 = [v4 homeManager];
        v22 = [v21 mobileAssetManager];
        [v20 addObserver:v6 selector:sel_handleMobileAssetsUpdatedNotification_ name:@"HMDMobileAssetManagerFoundUpdateNotification" object:v22];

        [(HMDNaturalLightingMatterCurveWriter *)v6 checkIfNaturalLightingAllowed];
        goto LABEL_20;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = v6;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v27;
        v28 = "%{public}@Failed to initialize the curve points";
        goto LABEL_18;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v6;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v27;
        v28 = "%{public}@configurePostNaturalLightingContext failed because curve is nil";
LABEL_18:
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, v28, &v30, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v24);
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v23;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@configurePostNaturalLightingContext failed because accessory or home is nil", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)configurePreNaturalLightingContext
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v4 = [v3 home];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@configurePreNaturalLightingContext, wait for natural lighting context", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDNaturalLightingMatterCurveWriter *)v6 notificationCenter];
    [v10 addObserver:v6 selector:sel_handleHomeNaturalLightingContextUpdated_ name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:v4];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@configurePreNaturalLightingContext failed because home is nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithLightProfile:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v7 = [v6 home];
  v8 = v7;
  if (v6 && v7)
  {
    [(HMDNaturalLightingMatterCurveWriter *)self setLightProfile:v4];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 uniqueIdentifier];
      v14 = [(HMDNaturalLightingMatterCurveWriter *)v10 accessory];
      v15 = [v14 uuid];
      [(HMDNaturalLightingMatterCurveWriter *)v10 isDemoMode];
      HMFBooleanToString();
      v16 = v24 = v9;
      *buf = 138544130;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring matter light profile: %@, accessory: %@ demoMode: %@ ", buf, 0x2Au);

      v9 = v24;
    }

    objc_autoreleasePoolPop(v9);
    v17 = [v8 naturalLightingContext];
    v18 = [v17 curve];

    if (v18)
    {
      [(HMDNaturalLightingMatterCurveWriter *)v10 configurePostNaturalLightingContext];
    }

    else
    {
      [(HMDNaturalLightingMatterCurveWriter *)v10 configurePreNaturalLightingContext];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Not configuring matter light profile because accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)a3 accessory:(id)a4 dataSource:(id)a5 notificationCenter:(id)a6 timerFactory:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = HMDNaturalLightingMatterCurveWriter;
  v18 = [(HMDNaturalLightingMatterCurveWriter *)&v22 init];
  if (v18)
  {
    v19 = _Block_copy(v17);
    timerFactory = v18->_timerFactory;
    v18->_timerFactory = v19;

    objc_storeStrong(&v18->_workQueue, a3);
    objc_storeWeak(&v18->_accessory, v14);
    objc_storeStrong(&v18->_dataSource, a5);
    objc_storeStrong(&v18->_notificationCenter, a6);
    v18->_naturalLightingAllowed = 0;
  }

  return v18;
}

- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)a3 accessory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDLightProfileDataSource);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(HMDNaturalLightingMatterCurveWriter *)self initWithWorkQueue:v7 accessory:v6 dataSource:v8 notificationCenter:v9 timerFactory:&__block_literal_global_278733];

  return v10;
}

id __67__HMDNaturalLightingMatterCurveWriter_initWithWorkQueue_accessory___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t79_278739 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t79_278739, &__block_literal_global_95_278740);
  }

  v3 = logCategory__hmf_once_v80_278741;

  return v3;
}

void __50__HMDNaturalLightingMatterCurveWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v80_278741;
  logCategory__hmf_once_v80_278741 = v1;
}

@end