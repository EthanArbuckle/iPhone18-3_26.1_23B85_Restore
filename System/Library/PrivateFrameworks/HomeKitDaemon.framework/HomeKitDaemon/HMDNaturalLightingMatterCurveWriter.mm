@interface HMDNaturalLightingMatterCurveWriter
+ (id)logCategory;
- (BOOL)didAdjustNewColorTempBasedOnAccessoryColorTempRange:(id *)range;
- (BOOL)isAccessoryColorTemp:(id)temp closeToCurveColorTemp:(id)colorTemp;
- (BOOL)isDemoMode;
- (BOOL)isTimerRunning;
- (BOOL)shouldAcceptSpecificationVersion:(id)version;
- (HMDHAPAccessory)accessory;
- (HMDLightProfile)lightProfile;
- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)queue accessory:(id)accessory;
- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)queue accessory:(id)accessory dataSource:(id)source notificationCenter:(id)center timerFactory:(id)factory;
- (NSNumber)regularTransitionTime;
- (id)isNaturalLightingAllowedBasedOnAllowList;
- (id)isNaturalLightingAllowedBasedOnSpecVersion;
- (id)logIdentifier;
- (unsigned)getShortTransitionTimeForAccessoryColorTemp:(id)temp curveColorTemp:(id)colorTemp;
- (void)checkIfNaturalLightingAllowed;
- (void)configurePostNaturalLightingContext;
- (void)configurePreNaturalLightingContext;
- (void)configureWithLightProfile:(id)profile;
- (void)disableNaturalLightingCurveWithCompletion:(id)completion;
- (void)disableNaturalLightingWithReason:(id)reason message:(id)message;
- (void)enableNaturalLightingWithReason:(id)reason;
- (void)enableNaturalLightingWithReason:(id)reason message:(id)message;
- (void)enableOrUpdateNaturalLightingCurveWithColorMode:(id)mode accessoryColorTemp:(id)temp completion:(id)completion;
- (void)enableOrUpdateNaturalLightingCurveWithCompletion:(id)completion;
- (void)getDemoModeTransitionTime:(id *)time newColorTemp:(id *)temp accessoryColorTemp:(id)colorTemp colorMode:(id)mode;
- (void)getTransitionTime:(id *)time newColorTemp:(id *)temp accessoryColorTemp:(id)colorTemp colorMode:(id)mode;
- (void)handleAccessoryConnected:(id)connected;
- (void)handleAccessoryFirmwareVersionChangedNotification:(id)notification;
- (void)handleColorControlAttributeReport:(id)report;
- (void)handleColorTemperatureAttributes:(id)attributes;
- (void)handleHomeNaturalLightingContextUpdated:(id)updated;
- (void)handleMobileAssetsUpdatedNotification:(id)notification;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleSetNaturalLightingEnabledMessage:(id)message lightProfile:(id)profile;
- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion;
- (void)setStartUpColorTemperature;
- (void)startPeriodicWriteTimerWithInterval:(id)interval;
- (void)timerDidFire:(id)fire;
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
  lightProfile = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  logIdentifier = [lightProfile logIdentifier];

  return logIdentifier;
}

- (void)handleColorControlAttributeReport:(id)report
{
  v33 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  path = [reportCopy path];
  attribute = [path attribute];

  lightProfile = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  isNaturalLightingEnabled = [lightProfile isNaturalLightingEnabled];

  if (isNaturalLightingEnabled && [attribute isEqualToNumber:&unk_283E75380])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      path2 = [reportCopy path];
      endpoint = [path2 endpoint];
      path3 = [reportCopy path];
      cluster = [path3 cluster];
      path4 = [reportCopy path];
      [path4 attribute];
      v16 = v22 = v9;
      value = [reportCopy value];
      *buf = 138544386;
      v24 = v12;
      v25 = 2112;
      v26 = endpoint;
      v27 = 2112;
      v28 = cluster;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = value;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling MTRAttributeReport with endpoint: %@, cluster: %@, attribute: %@, value: %@", buf, 0x34u);

      v9 = v22;
    }

    objc_autoreleasePoolPop(v9);
    value2 = [reportCopy value];
    if ([value2 intValue] != 2)
    {
      [(HMDNaturalLightingMatterCurveWriter *)selfCopy disableNaturalLightingWithReason:@"accessory-attribute-unexpected-color-mode" message:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryFirmwareVersionChangedNotification:(id)notification
{
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDNaturalLightingMatterCurveWriter_handleAccessoryFirmwareVersionChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleAccessoryConnected:(id)connected
{
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDNaturalLightingMatterCurveWriter_handleAccessoryConnected___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

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
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident updated notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  accessory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
  home = [accessory home];
  uuid = [home uuid];
  v16 = [v8 hmf_isEqualToUUID:uuid];

  if (v16)
  {
    workQueue = [(HMDNaturalLightingMatterCurveWriter *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDNaturalLightingMatterCurveWriter_handlePrimaryResidentUpdateNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
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

- (void)handleMobileAssetsUpdatedNotification:(id)notification
{
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDNaturalLightingMatterCurveWriter_handleMobileAssetsUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleHomeNaturalLightingContextUpdated:(id)updated
{
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDNaturalLightingMatterCurveWriter_handleHomeNaturalLightingContextUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)timerDidFire:(id)fire
{
  v26 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Periodic write timer fired", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)selfCopy workQueue];
  dispatch_assert_queue_V2(workQueue);

  periodicWriteTimer = [(HMDNaturalLightingMatterCurveWriter *)selfCopy periodicWriteTimer];

  if (periodicWriteTimer != fireCopy)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      periodicWriteTimer2 = [(HMDNaturalLightingMatterCurveWriter *)v12 periodicWriteTimer];
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = periodicWriteTimer2;
      v24 = 2112;
      v25 = fireCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received timer did fire callback for unknown timer. Expected: %@ received: %@", &v20, 0x20u);

LABEL_10:
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  accessory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
  naturalLightingEnabled = [accessory naturalLightingEnabled];
  bOOLValue = [naturalLightingEnabled BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
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

  [(HMDNaturalLightingMatterCurveWriter *)selfCopy enableNaturalLightingWithReason:@"periodic-timer-expired"];
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startPeriodicWriteTimerWithInterval:(id)interval
{
  v21 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  longValue = [intervalCopy longValue];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v9;
    v19 = 2048;
    v20 = longValue;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting Periodic write timer for %f seconds", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  timerFactory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy timerFactory];
  v11 = timerFactory[2](timerFactory, 0, longValue);
  [(HMDNaturalLightingMatterCurveWriter *)selfCopy setPeriodicWriteTimer:v11];

  periodicWriteTimer = [(HMDNaturalLightingMatterCurveWriter *)selfCopy periodicWriteTimer];
  [periodicWriteTimer setDelegate:selfCopy];

  workQueue = [(HMDNaturalLightingMatterCurveWriter *)selfCopy workQueue];
  periodicWriteTimer2 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy periodicWriteTimer];
  [periodicWriteTimer2 setDelegateQueue:workQueue];

  periodicWriteTimer3 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy periodicWriteTimer];
  [periodicWriteTimer3 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAcceptSpecificationVersion:(id)version
{
  versionCopy = version;
  v4 = versionCopy;
  if (versionCopy)
  {
    unsignedIntValue = [versionCopy unsignedIntValue];
    unsignedIntValue2 = [v4 unsignedIntValue];
    v7 = (unsignedIntValue & 0xFF000000) != 0;
    if ((unsignedIntValue2 & 0xFC0000) == 0)
    {
      v7 = 0;
    }

    if (unsignedIntValue >> 25)
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

- (void)getDemoModeTransitionTime:(id *)time newColorTemp:(id *)temp accessoryColorTemp:(id)colorTemp colorMode:(id)mode
{
  v8 = 1800000 * (++getDemoModeTransitionTime_newColorTemp_accessoryColorTemp_colorMode__count % 0x30u) + 2000;
  v9 = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve:time];
  *temp = [v9 colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v8}];

  *time = [MEMORY[0x277CCABB0] numberWithUnsignedShort:20];
}

- (BOOL)isAccessoryColorTemp:(id)temp closeToCurveColorTemp:(id)colorTemp
{
  colorTempCopy = colorTemp;
  shortValue = [temp shortValue];
  shortValue2 = [colorTempCopy shortValue];

  v8 = shortValue - shortValue2;
  if (shortValue - shortValue2 < 0)
  {
    v8 = shortValue2 - shortValue;
  }

  return v8 < 0xB;
}

- (NSNumber)regularTransitionTime
{
  v2 = (arc4random_uniform(0x78u) + 1800);
  v3 = MEMORY[0x277CCABB0];

  return [v3 numberWithUnsignedShort:v2];
}

- (unsigned)getShortTransitionTimeForAccessoryColorTemp:(id)temp curveColorTemp:(id)colorTemp
{
  colorTempCopy = colorTemp;
  shortValue = [temp shortValue];
  shortValue2 = [colorTempCopy shortValue];

  v8 = shortValue - shortValue2;
  if (shortValue - shortValue2 < 0)
  {
    v8 = shortValue2 - shortValue;
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

- (BOOL)didAdjustNewColorTempBasedOnAccessoryColorTempRange:(id *)range
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryMinColorTemperature = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMinColorTemperature];
  if (accessoryMinColorTemperature)
  {
    v6 = accessoryMinColorTemperature;
    intValue = [*range intValue];
    accessoryMinColorTemperature2 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMinColorTemperature];
    intValue2 = [accessoryMinColorTemperature2 intValue];

    if (intValue < intValue2)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *range;
        accessoryMinColorTemperature3 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessoryMinColorTemperature];
        v30 = 138543874;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = accessoryMinColorTemperature3;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Adjusting new color temp: %@ to min color temp: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      accessoryMinColorTemperature4 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessoryMinColorTemperature];
LABEL_11:
      *range = accessoryMinColorTemperature4;
      LOBYTE(accessoryMaxColorTemperature) = 1;
      goto LABEL_13;
    }
  }

  accessoryMaxColorTemperature = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMaxColorTemperature];
  if (accessoryMaxColorTemperature)
  {
    v18 = accessoryMaxColorTemperature;
    intValue3 = [*range intValue];
    accessoryMaxColorTemperature2 = [(HMDNaturalLightingMatterCurveWriter *)self accessoryMaxColorTemperature];
    intValue4 = [accessoryMaxColorTemperature2 intValue];

    if (intValue3 <= intValue4)
    {
      LOBYTE(accessoryMaxColorTemperature) = 0;
      goto LABEL_13;
    }

    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *range;
      accessoryMaxColorTemperature3 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy2 accessoryMaxColorTemperature];
      v30 = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = accessoryMaxColorTemperature3;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Adjusting new color temp: %@ to max color temp: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    accessoryMinColorTemperature4 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy2 accessoryMaxColorTemperature];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];
  return accessoryMaxColorTemperature;
}

- (void)getTransitionTime:(id *)time newColorTemp:(id *)temp accessoryColorTemp:(id)colorTemp colorMode:(id)mode
{
  colorTempCopy = colorTemp;
  modeCopy = mode;
  dataSource = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  dataSource2 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  date = [dataSource2 date];
  dataSource3 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  localTimeZone = [dataSource3 localTimeZone];
  v16 = [dataSource millisecondsElapsedSinceStartOfDayWithDate:date timeZone:localTimeZone];

  naturalLightingCurve = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve];
  v18 = [naturalLightingCurve colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v16}];

  LODWORD(naturalLightingCurve) = [modeCopy intValue];
  if (naturalLightingCurve != 2)
  {
    regularTransitionTime = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0];
    goto LABEL_5;
  }

  if ([(HMDNaturalLightingMatterCurveWriter *)self isAccessoryColorTemp:colorTempCopy closeToCurveColorTemp:v18])
  {
    regularTransitionTime = [(HMDNaturalLightingMatterCurveWriter *)self regularTransitionTime];
LABEL_5:
    *time = regularTransitionTime;
    v20 = 0.0;
    goto LABEL_7;
  }

  v21 = [(HMDNaturalLightingMatterCurveWriter *)self getShortTransitionTimeForAccessoryColorTemp:colorTempCopy curveColorTemp:v18];
  *time = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
  v20 = v21;
LABEL_7:
  dataSource4 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  dataSource5 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  date2 = [dataSource5 date];
  v25 = [date2 dateByAddingTimeInterval:v20];
  dataSource6 = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  localTimeZone2 = [dataSource6 localTimeZone];
  v28 = [dataSource4 millisecondsElapsedSinceStartOfDayWithDate:v25 timeZone:localTimeZone2];

  naturalLightingCurve2 = [(HMDNaturalLightingMatterCurveWriter *)self naturalLightingCurve];
  *temp = [naturalLightingCurve2 colorTemperatureForBrightness:objc_msgSend(&unk_283E75368 millisecondsElapsedSinceStartOfDay:{"integerValue"), v28}];

  if ([(HMDNaturalLightingMatterCurveWriter *)self didAdjustNewColorTempBasedOnAccessoryColorTempRange:temp])
  {
    *v30 = [(HMDNaturalLightingMatterCurveWriter *)self regularTransitionTime];
  }
}

- (void)enableOrUpdateNaturalLightingCurveWithColorMode:(id)mode accessoryColorTemp:(id)temp completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  tempCopy = temp;
  completionCopy = completion;
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    accessory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
    name = [accessory name];
    *buf = 138544130;
    v53 = v14;
    v54 = 2112;
    v55 = modeCopy;
    v56 = 2112;
    v57 = tempCopy;
    v58 = 2112;
    v59 = name;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting, colorMode: %@ accessoryColorTemp: %@ for accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  accessory2 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
  v41 = modeCopy;
  if ([(HMDNaturalLightingMatterCurveWriter *)selfCopy isDemoMode])
  {
    v48 = 0;
    v49 = 0;
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy getDemoModeTransitionTime:&v49 newColorTemp:&v48 accessoryColorTemp:tempCopy colorMode:modeCopy];
    v18 = v49;
    v19 = v48;
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v23 = HMFGetLogIdentifier();
    name2 = [accessory2 name];
    *buf = 138544386;
    v53 = v23;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v18;
    v58 = 2112;
    v59 = name2;
    v60 = 2112;
    v61 = tempCopy;
    v25 = "%{public}@Demo mode: Calculated new color temp: %@ transition time: %@ for accessory: %@ with color temp: %@";
  }

  else
  {
    v50 = 0;
    v51 = 0;
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy getTransitionTime:&v51 newColorTemp:&v50 accessoryColorTemp:tempCopy colorMode:modeCopy];
    v18 = v51;
    v19 = v50;
    v20 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v23 = HMFGetLogIdentifier();
    name2 = [accessory2 name];
    *buf = 138544386;
    v53 = v23;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v18;
    v58 = 2112;
    v59 = name2;
    v60 = 2112;
    v61 = tempCopy;
    v25 = "%{public}@Calculated new color temp: %@ transition time: %@ for accessory: %@ with color temp: %@";
  }

  _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, v25, buf, 0x34u);

LABEL_9:
  objc_autoreleasePoolPop(v20);
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{10 * objc_msgSend(v18, "unsignedIntValue")}];
  chipAccessoryServer = [accessory2 chipAccessoryServer];
  v29 = chipAccessoryServer;
  if (chipAccessoryServer)
  {
    identifier = [chipAccessoryServer identifier];
    hapInstanceId = [accessory2 hapInstanceId];
    v32 = [accessory2 matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __117__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithColorMode_accessoryColorTemp_completion___block_invoke;
    v42[3] = &unk_278689B30;
    v42[4] = selfCopy;
    v33 = completionCopy;
    v47 = completionCopy;
    v43 = v19;
    v44 = v27;
    v45 = tempCopy;
    v46 = v18;
    [v29 fetchColorControlClusterForHapAccessory:v32 completionHandler:v42];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
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
    regularTransitionTime = [(HMDNaturalLightingMatterCurveWriter *)v35 regularTransitionTime];
    v33 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v32, regularTransitionTime);
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

- (void)enableOrUpdateNaturalLightingCurveWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  chipAccessoryServer = [accessory chipAccessoryServer];
  if (chipAccessoryServer)
  {
    chipAccessoryServer2 = [accessory chipAccessoryServer];
    identifier = [chipAccessoryServer2 identifier];
    hapInstanceId = [accessory hapInstanceId];
    v10 = [accessory matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__HMDNaturalLightingMatterCurveWriter_enableOrUpdateNaturalLightingCurveWithCompletion___block_invoke;
    v17[3] = &unk_278689A90;
    v17[4] = self;
    v18 = completionCopy;
    [chipAccessoryServer fetchColorControlClusterForHapAccessory:v10 completionHandler:v17];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    regularTransitionTime = [(HMDNaturalLightingMatterCurveWriter *)selfCopy regularTransitionTime];
    (*(completionCopy + 2))(completionCopy, v10, regularTransitionTime);
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

- (void)disableNaturalLightingCurveWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  chipAccessoryServer = [accessory chipAccessoryServer];
  if (chipAccessoryServer)
  {
    chipAccessoryServer2 = [accessory chipAccessoryServer];
    identifier = [chipAccessoryServer2 identifier];
    hapInstanceId = [accessory hapInstanceId];
    v10 = [accessory matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingCurveWithCompletion___block_invoke;
    v17[3] = &unk_278689A90;
    v17[4] = self;
    v18 = completionCopy;
    [chipAccessoryServer fetchColorControlClusterForHapAccessory:v10 completionHandler:v17];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    regularTransitionTime = [(HMDNaturalLightingMatterCurveWriter *)selfCopy regularTransitionTime];
    (*(completionCopy + 2))(completionCopy, v10, regularTransitionTime);
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

- (void)setNaturalLightingEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (enabledCopy)
  {
    [(HMDNaturalLightingMatterCurveWriter *)self enableOrUpdateNaturalLightingCurveWithCompletion:completionCopy];
  }

  else
  {
    [(HMDNaturalLightingMatterCurveWriter *)self disableNaturalLightingCurveWithCompletion:completionCopy];
  }
}

- (void)setStartUpColorTemperature
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v5 = MEMORY[0x277CCABB0];
  dataSource = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v7 = [v5 numberWithInteger:{objc_msgSend(dataSource, "naturalLightingStartUpColorTemperature")}];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    name = [accessory name];
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = name;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting startUpColorTemperature:%@ on accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  chipAccessoryServer = [accessory chipAccessoryServer];
  identifier = [chipAccessoryServer identifier];
  hapInstanceId = [accessory hapInstanceId];
  v16 = [accessory matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

  chipAccessoryServer2 = [accessory chipAccessoryServer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HMDNaturalLightingMatterCurveWriter_setStartUpColorTemperature__block_invoke;
  v20[3] = &unk_278689A40;
  v20[4] = selfCopy;
  v21 = v7;
  v18 = v7;
  [chipAccessoryServer2 fetchColorControlClusterForHapAccessory:v16 completionHandler:v20];

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
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];
  v6 = home;
  if (!accessory || !home)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v15 = HMFGetLogIdentifier();
    uuid = [accessory uuid];
    *buf = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = uuid;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating natural lighting settings because natural lighting is not allowed for this accessory: %@", buf, 0x16u);

    goto LABEL_11;
  }

  chipAccessoryServer = [accessory chipAccessoryServer];
  identifier = [chipAccessoryServer identifier];
  hapInstanceId = [accessory hapInstanceId];
  v10 = [accessory matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

  chipAccessoryServer2 = [accessory chipAccessoryServer];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__HMDNaturalLightingMatterCurveWriter_updateSettingsIfNaturalLightingSupportedByAccessory__block_invoke;
  v21[3] = &unk_278689A18;
  v21[4] = self;
  v22 = &unk_283E75338;
  v23 = &unk_283E75350;
  [chipAccessoryServer2 fetchColorControlClusterForHapAccessory:v10 completionHandler:v21];

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

- (void)handleColorTemperatureAttributes:(id)attributes
{
  v27 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  colorMode = [attributesCopy colorMode];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [attributesCopy shortDescription];
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Color temperature attributes read from accessory: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (colorMode && [colorMode intValue] != 2)
  {
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy disableNaturalLightingWithReason:@"accessory-attribute-colorMode-change" message:0];
    goto LABEL_16;
  }

  remainingTime = [attributesCopy remainingTime];
  accessory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
  naturalLightingEnabled = [accessory naturalLightingEnabled];
  bOOLValue = [naturalLightingEnabled BOOLValue];

  if (bOOLValue && remainingTime && [remainingTime unsignedShortValue])
  {
    v15 = @"naturalLightingEnabled";
LABEL_13:
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy enableNaturalLightingWithReason:v15];
    goto LABEL_14;
  }

  if (bOOLValue)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      accessory2 = [(HMDNaturalLightingMatterCurveWriter *)v17 accessory];
      name = [accessory2 name];
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = name;
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
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];
  v6 = home;
  if (!accessory || !home)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v15 = HMFGetLogIdentifier();
    uuid = [accessory uuid];
    *buf = 138543618;
    v23 = v15;
    v24 = 2112;
    v25 = uuid;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating natural lighting settings because natural lighting is not allowed for this accessory: %@", buf, 0x16u);

    goto LABEL_11;
  }

  chipAccessoryServer = [accessory chipAccessoryServer];
  identifier = [chipAccessoryServer identifier];
  hapInstanceId = [accessory hapInstanceId];
  v10 = [accessory matchingHAPAccessoryWithServerIdentifier:identifier instanceID:hapInstanceId];

  chipAccessoryServer2 = [accessory chipAccessoryServer];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HMDNaturalLightingMatterCurveWriter_updateNaturalLightingEnabledFromAttributes__block_invoke;
  v21[3] = &unk_2786899A0;
  v21[4] = self;
  [chipAccessoryServer2 fetchColorControlClusterForHapAccessory:v10 completionHandler:v21];

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

- (void)disableNaturalLightingWithReason:(id)reason message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  messageCopy = message;
  lightProfile = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  isNaturalLightingEnabled = [lightProfile isNaturalLightingEnabled];
  if (messageCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = isNaturalLightingEnabled;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      v27 = reasonCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Disabling natural lighting with reason: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, selfCopy);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__HMDNaturalLightingMatterCurveWriter_disableNaturalLightingWithReason_message___block_invoke;
    v20[3] = &unk_278689928;
    objc_copyWeak(&v23, buf);
    v21 = lightProfile;
    v22 = messageCopy;
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy setNaturalLightingEnabled:0 completion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      uniqueIdentifier = [lightProfile uniqueIdentifier];
      *buf = 138543874;
      v25 = v16;
      v26 = 2112;
      v27 = uniqueIdentifier;
      v28 = 2112;
      v29 = reasonCopy;
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

- (void)enableNaturalLightingWithReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  lightProfile = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = reasonCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, selfCopy);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason___block_invoke;
  v12[3] = &unk_278689950;
  objc_copyWeak(&v14, buf);
  v10 = lightProfile;
  v13 = v10;
  [(HMDNaturalLightingMatterCurveWriter *)selfCopy setNaturalLightingEnabled:1 completion:v12];

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

- (void)enableNaturalLightingWithReason:(id)reason message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  messageCopy = message;
  lightProfile = [(HMDNaturalLightingMatterCurveWriter *)self lightProfile];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = reasonCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Enabling natural lighting with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDNaturalLightingMatterCurveWriter_enableNaturalLightingWithReason_message___block_invoke;
  v16[3] = &unk_278689928;
  objc_copyWeak(&v19, buf);
  v13 = messageCopy;
  v17 = v13;
  v14 = lightProfile;
  v18 = v14;
  [(HMDNaturalLightingMatterCurveWriter *)selfCopy setNaturalLightingEnabled:1 completion:v16];

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
  periodicWriteTimer = [(HMDNaturalLightingMatterCurveWriter *)self periodicWriteTimer];
  v3 = periodicWriteTimer != 0;

  return v3;
}

- (BOOL)isDemoMode
{
  dataSource = [(HMDNaturalLightingMatterCurveWriter *)self dataSource];
  v3 = [dataSource naturalLightingStartUpColorTemperature] == 123;

  return v3;
}

- (void)handleSetNaturalLightingEnabledMessage:(id)message lightProfile:(id)profile
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  profileCopy = profile;
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    v29 = 138543618;
    v30 = v12;
    v31 = 2112;
    v32 = messagePayload;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received message to set matter natural lighting setting: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  accessory = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
  home = [accessory home];
  v16 = home;
  if (!accessory || !home)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
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

  if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
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
    [messageCopy respondWithError:v27];

    goto LABEL_15;
  }

  if ([messageCopy BOOLForKey:*MEMORY[0x277CD0798]])
  {
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy enableNaturalLightingWithReason:@"XPCMessagge" message:messageCopy];
  }

  else
  {
    [(HMDNaturalLightingMatterCurveWriter *)selfCopy disableNaturalLightingWithReason:@"XPCMessagge" message:messageCopy];
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
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];
  if (home)
  {
    v5 = objc_alloc(MEMORY[0x277D0F7A8]);
    workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
    v7 = [v5 initWithQueue:workQueue];

    v8 = MEMORY[0x277D0F7C0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnAllowList__block_invoke;
    v13[3] = &unk_2786898D8;
    v14 = home;
    v15 = accessory;
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
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  v4 = accessory;
  if (accessory)
  {
    chipAccessoryServer = [accessory chipAccessoryServer];

    if (chipAccessoryServer)
    {
      *buf = 0;
      v6 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      chipAccessoryServer2 = [v4 chipAccessoryServer];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__HMDNaturalLightingMatterCurveWriter_isNaturalLightingAllowedBasedOnSpecVersion__block_invoke;
      v17[3] = &unk_2786898B0;
      v17[4] = self;
      v18 = *buf;
      [chipAccessoryServer2 readSpecificationVersionWithCompletionHandler:v17];

      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
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
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  v5 = [v3 initWithQueue:workQueue];

  isNaturalLightingAllowedBasedOnSpecVersion = [(HMDNaturalLightingMatterCurveWriter *)self isNaturalLightingAllowedBasedOnSpecVersion];
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
  v7 = [isNaturalLightingAllowedBasedOnSpecVersion inContext:v5 then:v13 orRecover:v12];
  if (![(HMDNaturalLightingMatterCurveWriter *)self naturalLightingAllowed])
  {
    isNaturalLightingAllowedBasedOnAllowList = [(HMDNaturalLightingMatterCurveWriter *)self isNaturalLightingAllowedBasedOnAllowList];
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
    v9 = [isNaturalLightingAllowedBasedOnAllowList inContext:v5 then:v11 orRecover:v10];
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
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (accessory && home)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@configurePostNaturalLightingContext", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    naturalLightingContext = [home naturalLightingContext];
    curve = [naturalLightingContext curve];

    if (curve)
    {
      v12 = -[HMDNaturalLightingCurve initWithCurve:minimumColorTemperature:maximumColorTemperature:]([HMDNaturalLightingCurve alloc], "initWithCurve:minimumColorTemperature:maximumColorTemperature:", curve, [curve minimumColorTemperature], objc_msgSend(curve, "maximumColorTemperature"));
      [(HMDNaturalLightingMatterCurveWriter *)selfCopy setNaturalLightingCurve:v12];

      naturalLightingCurve = [(HMDNaturalLightingMatterCurveWriter *)selfCopy naturalLightingCurve];

      if (naturalLightingCurve)
      {
        notificationCenter = [(HMDNaturalLightingMatterCurveWriter *)selfCopy notificationCenter];
        [notificationCenter addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

        notificationCenter2 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy notificationCenter];
        [notificationCenter2 addObserver:selfCopy selector:sel_handleAccessoryConnected_ name:@"HMDAccessoryConnectedNotification" object:accessory];

        bridge = [accessory bridge];
        notificationCenter3 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy notificationCenter];
        v18 = notificationCenter3;
        if (bridge)
        {
          v19 = bridge;
        }

        else
        {
          v19 = accessory;
        }

        [notificationCenter3 addObserver:selfCopy selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v19];

        notificationCenter4 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy notificationCenter];
        homeManager = [home homeManager];
        mobileAssetManager = [homeManager mobileAssetManager];
        [notificationCenter4 addObserver:selfCopy selector:sel_handleMobileAssetsUpdatedNotification_ name:@"HMDMobileAssetManagerFoundUpdateNotification" object:mobileAssetManager];

        [(HMDNaturalLightingMatterCurveWriter *)selfCopy checkIfNaturalLightingAllowed];
        goto LABEL_20;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
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
      v25 = selfCopy;
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
  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (home)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@configurePreNaturalLightingContext, wait for natural lighting context", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    notificationCenter = [(HMDNaturalLightingMatterCurveWriter *)selfCopy notificationCenter];
    [notificationCenter addObserver:selfCopy selector:sel_handleHomeNaturalLightingContextUpdated_ name:@"HMDHomeNaturalLightingContextUpdatedNotification" object:home];
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

- (void)configureWithLightProfile:(id)profile
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workQueue = [(HMDNaturalLightingMatterCurveWriter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDNaturalLightingMatterCurveWriter *)self accessory];
  home = [accessory home];
  v8 = home;
  if (accessory && home)
  {
    [(HMDNaturalLightingMatterCurveWriter *)self setLightProfile:profileCopy];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uniqueIdentifier = [profileCopy uniqueIdentifier];
      accessory2 = [(HMDNaturalLightingMatterCurveWriter *)selfCopy accessory];
      uuid = [accessory2 uuid];
      [(HMDNaturalLightingMatterCurveWriter *)selfCopy isDemoMode];
      HMFBooleanToString();
      v16 = v24 = v9;
      *buf = 138544130;
      v26 = v12;
      v27 = 2112;
      v28 = uniqueIdentifier;
      v29 = 2112;
      v30 = uuid;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring matter light profile: %@, accessory: %@ demoMode: %@ ", buf, 0x2Au);

      v9 = v24;
    }

    objc_autoreleasePoolPop(v9);
    naturalLightingContext = [v8 naturalLightingContext];
    curve = [naturalLightingContext curve];

    if (curve)
    {
      [(HMDNaturalLightingMatterCurveWriter *)selfCopy configurePostNaturalLightingContext];
    }

    else
    {
      [(HMDNaturalLightingMatterCurveWriter *)selfCopy configurePreNaturalLightingContext];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)queue accessory:(id)accessory dataSource:(id)source notificationCenter:(id)center timerFactory:(id)factory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  sourceCopy = source;
  centerCopy = center;
  factoryCopy = factory;
  v22.receiver = self;
  v22.super_class = HMDNaturalLightingMatterCurveWriter;
  v18 = [(HMDNaturalLightingMatterCurveWriter *)&v22 init];
  if (v18)
  {
    v19 = _Block_copy(factoryCopy);
    timerFactory = v18->_timerFactory;
    v18->_timerFactory = v19;

    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeWeak(&v18->_accessory, accessoryCopy);
    objc_storeStrong(&v18->_dataSource, source);
    objc_storeStrong(&v18->_notificationCenter, center);
    v18->_naturalLightingAllowed = 0;
  }

  return v18;
}

- (HMDNaturalLightingMatterCurveWriter)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v8 = objc_alloc_init(HMDLightProfileDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(HMDNaturalLightingMatterCurveWriter *)self initWithWorkQueue:queueCopy accessory:accessoryCopy dataSource:v8 notificationCenter:defaultCenter timerFactory:&__block_literal_global_278733];

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