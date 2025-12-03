@interface HMDPowerManager
+ (id)logCategory;
- (BOOL)isPowerAsserted;
- (HMDPowerManager)init;
- (HMDPowerManager)initWithPowerManager:(id)manager timerProvider:(id)provider ttrManager:(id)ttrManager;
- (int)_ensureNetworkInterfaceMonitorStarted;
- (void)_ensureNetworkInterfaceMonitorStopped;
- (void)_update;
- (void)dealloc;
- (void)setNetworkAccessRequired:(BOOL)required;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPowerManager

- (void)timerDidFire:(id)fire
{
  v14 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  verificationTimer = self->_verificationTimer;
  if (verificationTimer == fireCopy)
  {
    self->_verificationTimer = 0;

    if (![(HMDPowerManager *)self isPowerAsserted])
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@HomeKit remote access power assertion unexpectedly released", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      ttrManager = selfCopy->_ttrManager;
      if (ttrManager)
      {
        [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Power Assertion was released unexpectedly" radarTitle:@"Power Assertion was released unexpectedly" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_ensureNetworkInterfaceMonitorStopped
{
  v12 = *MEMORY[0x277D85DE8];
  scStore = self->_scStore;
  if (scStore)
  {
    SCDynamicStoreSetDispatchQueue(scStore, 0);
    CFRelease(self->_scStore);
    self->_scStore = 0;
    if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopped network interface monitor", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  scContext = self->_scContext;
  if (scContext)
  {

    self->_scContext = 0;
  }

  self->_networkInterfaceActive = 0;
  v9 = *MEMORY[0x277D85DE8];
}

- (int)_ensureNetworkInterfaceMonitorStarted
{
  v27 = *MEMORY[0x277D85DE8];
  memset(&context, 0, sizeof(context));
  if (self->_scStore)
  {
    v9 = 0;
    goto LABEL_35;
  }

  selfCopy = self;
  selfCopy->_scContext = selfCopy;
  context.info = selfCopy;
  v4 = SCDynamicStoreCreate(0, @"HomeKit:NetworkInterfaceMonitor", _handleNetworkInterfaceChanged, &context);
  if (v4)
  {
LABEL_3:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      v9 = -6728;
      if (!v4)
      {
LABEL_27:
        if (!v9)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

LABEL_26:
      CFRelease(v4);
      goto LABEL_27;
    }

    v6 = Mutable;
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE16A0]);
    if (!NetworkInterfaceEntity)
    {
      v9 = -6728;
      goto LABEL_25;
    }

    v8 = NetworkInterfaceEntity;
    CFArrayAppendValue(v6, NetworkInterfaceEntity);
    CFRelease(v8);
    if (!SCDynamicStoreSetNotificationKeys(v4, 0, v6))
    {
      if (!SCError())
      {
        goto LABEL_19;
      }

      v10 = SCError();
      if (v10)
      {
        goto LABEL_18;
      }
    }

    if (SCDynamicStoreSetDispatchQueue(v4, selfCopy->_dispatchQueue))
    {
      goto LABEL_7;
    }

    if (SCError())
    {
      v10 = SCError();
      if (!v10)
      {
LABEL_7:
        self->_scStore = v4;
        [(HMDPowerManager *)selfCopy setNetworkInterfaceActive:_isNetworkIntefaceActive(selfCopy)];
        if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v11 = objc_autoreleasePoolPush();
        v12 = selfCopy;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Start network interface monitor", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v4 = 0;
        v9 = 0;
LABEL_25:
        CFRelease(v6);
        if (!v4)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_18:
      v9 = v10;
      goto LABEL_25;
    }

LABEL_19:
    v9 = -6700;
    goto LABEL_25;
  }

  if (SCError())
  {
    v9 = SCError();
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = -6700;
  }

LABEL_28:
  if (gLogCategory_HMDPowerManager <= 60 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = strerror(v9);
    *buf = 138543618;
    v24 = v18;
    v25 = 2080;
    v26 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Start network interface monitor failed: %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDPowerManager *)v16 _ensureNetworkInterfaceMonitorStopped];
LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_update
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_started && self->_networkAccessRequired && isAppleTV())
  {
    [(HMDPowerManager *)self _ensureNetworkInterfaceMonitorStarted];
  }

  else
  {
    [(HMDPowerManager *)self _ensureNetworkInterfaceMonitorStopped];
  }

  networkInterfaceActive = [(HMDPowerManager *)self networkInterfaceActive];
  powerAssertion = self->_powerAssertion;
  if (networkInterfaceActive)
  {
    if (powerAssertion)
    {
      goto LABEL_24;
    }

    v5 = [(HMDIOPM *)self->_iopmLib iopmAssertionCreateWithDescription:@"PreventUserIdleSystemSleep" name:@"HomeKit remote access" details:0 humanReadableReason:0 localizationBundlePath:0 timeout:0 timeoutAction:0.0 iopmAssertionID:&self->_powerAssertion];
    if (v5)
    {
      v6 = v5;
      if (gLogCategory_HMDPowerManager <= 60 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v16;
        v32 = 2080;
        v33 = strerror(v6);
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Create HomeKit remote access power assertion failed: %s", buf, 0x16u);
      }

LABEL_39:
      objc_autoreleasePoolPop(v13);
      ttrManager = selfCopy->_ttrManager;
      if (ttrManager)
      {
        [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Unable to create power assertion" radarTitle:@"Unable to create power assertion" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
      }

      goto LABEL_24;
    }

    if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Created HomeKit remote access power assertion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    isPowerAsserted = [(HMDPowerManager *)selfCopy2 isPowerAsserted];
    v13 = objc_autoreleasePoolPush();
    selfCopy = selfCopy2;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (!isPowerAsserted)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v28;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Create HomeKit remote access power assertion failed to become active", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@HomeKit remote access power assertion is active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    timerProvider = [(HMDPowerManager *)selfCopy timerProvider];
    v26 = [timerProvider timerWithTimeInterval:0 options:2.5];
    verificationTimer = selfCopy->_verificationTimer;
    selfCopy->_verificationTimer = v26;

    [(HMFTimer *)selfCopy->_verificationTimer setDelegate:selfCopy];
    [(HMFTimer *)selfCopy->_verificationTimer setDelegateQueue:selfCopy->_dispatchQueue];
    [(HMFTimer *)selfCopy->_verificationTimer resume];
  }

  else
  {
    if (powerAssertion)
    {
      IOPMAssertionRelease(powerAssertion);
      self->_powerAssertion = 0;
      if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Released HomeKit remote access power assertion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    [(HMFTimer *)self->_verificationTimer suspend];
    v11 = self->_verificationTimer;
    self->_verificationTimer = 0;
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPowerAsserted
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  iopmUpdateAssertionsByProcess = [(HMDIOPM *)selfCopy->_iopmLib iopmUpdateAssertionsByProcess];
  if (iopmUpdateAssertionsByProcess)
  {
    v4 = iopmUpdateAssertionsByProcess;
    v5 = objc_autoreleasePoolPush();
    v6 = selfCopy;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v8;
      v26 = 2080;
      v27 = strerror(v4);
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@iopmUpdateAssertionsByProcess returned %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    ttrManager = v6->_ttrManager;
    if (ttrManager)
    {
      [(HMMRadarInitiating *)ttrManager requestRadarWithDisplayReason:@"Unable to set power assertion for assertion verification" radarTitle:@"Unable to set power assertion for assertion verification" componentName:@"HomeKit" componentVersion:@"Resident" componentID:938669];
    }

    goto LABEL_15;
  }

  assertionsByPID = [(HMDIOPM *)selfCopy->_iopmLib assertionsByPID];
  if (!assertionsByPID || (v11 = assertionsByPID, *buf = getpid(), v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, buf), Value = CFDictionaryGetValue(v11, v12), CFRelease(v12), !Value))
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  for (i = 0; ; ++i)
  {
    Count = CFArrayGetCount(Value);
    v16 = Count > i;
    if (Count <= i)
    {
      break;
    }

    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
    if (ValueAtIndex)
    {
      v18 = ValueAtIndex;
      v19 = CFDictionaryGetValue(ValueAtIndex, @"AssertType");
      v20 = CFDictionaryGetValue(v18, @"AssertLevel");
      valuePtr = 0;
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
        if (valuePtr == 255)
        {
          if (CFEqual(v19, @"PreventUserIdleSystemSleep"))
          {
            break;
          }
        }
      }
    }
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__HMDPowerManager_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMDPowerManager_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)setNetworkAccessRequired:(BOOL)required
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HMDPowerManager_setNetworkAccessRequired___block_invoke;
  v4[3] = &unk_278688650;
  requiredCopy = required;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __44__HMDPowerManager_setNetworkAccessRequired___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 16))
  {
    *(v2 + 16) = v1;
    return [*(result + 32) _update];
  }

  return result;
}

- (void)dealloc
{
  [(HMFTimer *)self->_verificationTimer suspend];
  verificationTimer = self->_verificationTimer;
  self->_verificationTimer = 0;

  v4.receiver = self;
  v4.super_class = HMDPowerManager;
  [(HMDPowerManager *)&v4 dealloc];
}

- (HMDPowerManager)initWithPowerManager:(id)manager timerProvider:(id)provider ttrManager:(id)ttrManager
{
  managerCopy = manager;
  providerCopy = provider;
  ttrManagerCopy = ttrManager;
  v17.receiver = self;
  v17.super_class = HMDPowerManager;
  v12 = [(HMDPowerManager *)&v17 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.HMDPowerManager", v13);
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v14;

    objc_storeStrong(&v12->_iopmLib, manager);
    objc_storeStrong(&v12->_timerProvider, provider);
    if (ttrManagerCopy)
    {
      objc_storeStrong(&v12->_ttrManager, ttrManager);
    }
  }

  return v12;
}

- (HMDPowerManager)init
{
  v3 = objc_alloc_init(HMDIOPMWrapper);
  v4 = objc_opt_new();
  v5 = +[HMDTTRManager sharedManager];
  v6 = [(HMDPowerManager *)self initWithPowerManager:v3 timerProvider:v4 ttrManager:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_84913 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_84913, &__block_literal_global_84914);
  }

  v3 = logCategory__hmf_once_v1_84915;

  return v3;
}

void __30__HMDPowerManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_84915;
  logCategory__hmf_once_v1_84915 = v1;
}

@end