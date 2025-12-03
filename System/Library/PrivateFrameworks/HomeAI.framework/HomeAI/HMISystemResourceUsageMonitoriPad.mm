@interface HMISystemResourceUsageMonitoriPad
- (BOOL)computeResourceUsageLevel;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)queue;
- (void)handleResourceUsageNotification;
- (void)possibleComputeResourceChange;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitoriPad

- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = HMISystemResourceUsageMonitoriPad;
  v6 = [(HMISystemResourceUsageMonitoriPad *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    v8 = objc_alloc_init(HMISystemResourceUsage);
    currentSystemResourceUsage = v7->_currentSystemResourceUsage;
    v7->_currentSystemResourceUsage = v8;

    v7->_displayOn = 1;
    v10 = [HMINotifydObserver alloc];
    workQueue = [(HMISystemResourceUsageMonitoriPad *)v7 workQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke;
    v23[3] = &unk_2787548D8;
    v12 = v7;
    v24 = v12;
    v13 = [(HMINotifydObserver *)v10 initWithNotificationName:"com.apple.iokit.hid.displayStatus" andQueue:workQueue andCallback:v23];
    notifydObserverForDisplayState = v12->_notifydObserverForDisplayState;
    v12->_notifydObserverForDisplayState = v13;

    v15 = [HMINotifydObserver alloc];
    workQueue2 = [(HMISystemResourceUsageMonitoriPad *)v12 workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke_4;
    v21[3] = &unk_2787548D8;
    v17 = v12;
    v22 = v17;
    v18 = [(HMINotifydObserver *)v15 initWithNotificationName:"com.apple.springboard.lockstate" andQueue:workQueue2 andCallback:v21];
    notifydObserverForLockState = v17->_notifydObserverForLockState;
    v17->_notifydObserverForLockState = v18;
  }

  return v7;
}

void __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setDisplayOn:a3 != 0];
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) isDisplayOn];
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Display enabled: %d", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) possibleComputeResourceChange];
}

void __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setLocked:a3 != 0];
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) isLocked];
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Device lock state: %d", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 32) possibleComputeResourceChange];
}

- (void)start
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMISystemResourceUsageMonitoriPad *)self possibleComputeResourceChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277D0F200] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277D0F1F8] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277CCA5E8] object:0];

  mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
  [mEMORY[0x277D0F8C8] start];

  notifydObserverForDisplayState = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForDisplayState];
  [notifydObserverForDisplayState start];

  notifydObserverForLockState = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForLockState];
  [notifydObserverForLockState start];
}

- (void)handleResourceUsageNotification
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMISystemResourceUsageMonitoriPad_handleResourceUsageNotification__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)possibleComputeResourceChange
{
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMISystemResourceUsageMonitoriPad *)self computeResourceUsageLevel])
  {
    delegate = [(HMISystemResourceUsageMonitoriPad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      currentSystemResourceUsage = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
      [delegate systemResourceUsageDidChangeTo:{objc_msgSend(currentSystemResourceUsage, "systemResourceUsageLevel")}];
    }
  }
}

- (BOOL)computeResourceUsageLevel
{
  v34 = *MEMORY[0x277D85DE8];
  workQueue = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v11 = 3;
LABEL_23:

      objc_autoreleasePoolPop(v6);
      goto LABEL_24;
    }

    v9 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v9;
    v10 = "%{public}@System is in low power mode";
LABEL_4:
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, v10, v33, 0xCu);

    goto LABEL_5;
  }

  mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
  batteryState = [mEMORY[0x277D0F8C8] batteryState];

  mEMORY[0x277D0F8C8]2 = [MEMORY[0x277D0F8C8] sharedManager];
  [mEMORY[0x277D0F8C8]2 batteryLevel];
  v16 = v15;

  if ([(HMISystemResourceUsageMonitoriPad *)self isDisplayOn])
  {
    v17 = ![(HMISystemResourceUsageMonitoriPad *)self isLocked];
  }

  else
  {
    v17 = 0;
  }

  if ((batteryState - 2) < 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (!v17)
    {
      if (v26)
      {
        v32 = HMFGetLogIdentifier();
        *v33 = 138543362;
        *&v33[4] = v32;
        v11 = 1;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Battery state charging/charged", v33, 0xCu);
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_23;
    }

    if (!v26)
    {
      goto LABEL_22;
    }

    v21 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v21;
    v22 = "%{public}@Battery state charging/charged but user is actively using the device";
    goto LABEL_20;
  }

  if (!batteryState)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v21 = HMFGetLogIdentifier();
    *v33 = 138543362;
    *&v33[4] = v21;
    v22 = "%{public}@Battery state unknown, should get the real one shortly";
LABEL_20:
    v23 = v8;
    v24 = 12;
    goto LABEL_21;
  }

  if (batteryState == 1)
  {
    v18 = v16;
    v6 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v8 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v18 <= 0.2)
    {
      if (!v20)
      {
        goto LABEL_5;
      }

      v9 = HMFGetLogIdentifier();
      *v33 = 138543362;
      *&v33[4] = v9;
      v10 = "%{public}@Battery level critical";
      goto LABEL_4;
    }

    if (v20)
    {
      v21 = HMFGetLogIdentifier();
      *v33 = 138543618;
      *&v33[4] = v21;
      *&v33[12] = 2048;
      *&v33[14] = v18;
      v22 = "%{public}@Battery level: %f";
      v23 = v8;
      v24 = 22;
LABEL_21:
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, v22, v33, v24);
    }

LABEL_22:
    v11 = 2;
    goto LABEL_23;
  }

  v11 = 0;
LABEL_24:
  v28 = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage:*v33];
  systemResourceUsageLevel = [v28 systemResourceUsageLevel];

  if (systemResourceUsageLevel != v11)
  {
    currentSystemResourceUsage = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
    [currentSystemResourceUsage setSystemResourceUsageLevel:v11];
  }

  return systemResourceUsageLevel != v11;
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end