@interface HMISystemResourceUsageMonitoriPad
- (BOOL)computeResourceUsageLevel;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)a3;
- (void)handleResourceUsageNotification;
- (void)possibleComputeResourceChange;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitoriPad

- (HMISystemResourceUsageMonitoriPad)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = HMISystemResourceUsageMonitoriPad;
  v6 = [(HMISystemResourceUsageMonitoriPad *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = objc_alloc_init(HMISystemResourceUsage);
    currentSystemResourceUsage = v7->_currentSystemResourceUsage;
    v7->_currentSystemResourceUsage = v8;

    v7->_displayOn = 1;
    v10 = [HMINotifydObserver alloc];
    v11 = [(HMISystemResourceUsageMonitoriPad *)v7 workQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke;
    v23[3] = &unk_2787548D8;
    v12 = v7;
    v24 = v12;
    v13 = [(HMINotifydObserver *)v10 initWithNotificationName:"com.apple.iokit.hid.displayStatus" andQueue:v11 andCallback:v23];
    notifydObserverForDisplayState = v12->_notifydObserverForDisplayState;
    v12->_notifydObserverForDisplayState = v13;

    v15 = [HMINotifydObserver alloc];
    v16 = [(HMISystemResourceUsageMonitoriPad *)v12 workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__HMISystemResourceUsageMonitoriPad_initWithWorkQueue___block_invoke_4;
    v21[3] = &unk_2787548D8;
    v17 = v12;
    v22 = v17;
    v18 = [(HMINotifydObserver *)v15 initWithNotificationName:"com.apple.springboard.lockstate" andQueue:v16 andCallback:v21];
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
  v3 = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMISystemResourceUsageMonitoriPad *)self possibleComputeResourceChange];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277D0F200] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277D0F1F8] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_handleResourceUsageNotification name:*MEMORY[0x277CCA5E8] object:0];

  v7 = [MEMORY[0x277D0F8C8] sharedManager];
  [v7 start];

  v8 = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForDisplayState];
  [v8 start];

  v9 = [(HMISystemResourceUsageMonitoriPad *)self notifydObserverForLockState];
  [v9 start];
}

- (void)handleResourceUsageNotification
{
  v3 = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMISystemResourceUsageMonitoriPad_handleResourceUsageNotification__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)possibleComputeResourceChange
{
  v3 = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMISystemResourceUsageMonitoriPad *)self computeResourceUsageLevel])
  {
    v5 = [(HMISystemResourceUsageMonitoriPad *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
      [v5 systemResourceUsageDidChangeTo:{objc_msgSend(v4, "systemResourceUsageLevel")}];
    }
  }
}

- (BOOL)computeResourceUsageLevel
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMISystemResourceUsageMonitoriPad *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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

  v12 = [MEMORY[0x277D0F8C8] sharedManager];
  v13 = [v12 batteryState];

  v14 = [MEMORY[0x277D0F8C8] sharedManager];
  [v14 batteryLevel];
  v16 = v15;

  if ([(HMISystemResourceUsageMonitoriPad *)self isDisplayOn])
  {
    v17 = ![(HMISystemResourceUsageMonitoriPad *)self isLocked];
  }

  else
  {
    v17 = 0;
  }

  if ((v13 - 2) < 2)
  {
    v6 = objc_autoreleasePoolPush();
    v25 = self;
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

  if (!v13)
  {
    v6 = objc_autoreleasePoolPush();
    v27 = self;
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

  if (v13 == 1)
  {
    v18 = v16;
    v6 = objc_autoreleasePoolPush();
    v19 = self;
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
  v29 = [v28 systemResourceUsageLevel];

  if (v29 != v11)
  {
    v30 = [(HMISystemResourceUsageMonitoriPad *)self currentSystemResourceUsage];
    [v30 setSystemResourceUsageLevel:v11];
  }

  return v29 != v11;
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end