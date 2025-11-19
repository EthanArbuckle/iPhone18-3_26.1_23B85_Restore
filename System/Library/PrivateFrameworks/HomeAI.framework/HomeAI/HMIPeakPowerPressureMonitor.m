@interface HMIPeakPowerPressureMonitor
+ (id)sharedInstance;
+ (id)shortDescription;
- (HMIPeakPowerPressureMonitor)init;
- (void)_updatePeakPowerPressureLevel;
- (void)dealloc;
@end

@implementation HMIPeakPowerPressureMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_208 != -1)
  {
    +[HMIPeakPowerPressureMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_207;

  return v3;
}

uint64_t __45__HMIPeakPowerPressureMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_207 = objc_alloc_init(HMIPeakPowerPressureMonitor);

  return MEMORY[0x2821F96F8]();
}

- (HMIPeakPowerPressureMonitor)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMIPeakPowerPressureMonitor;
  v2 = [(HMIPeakPowerPressureMonitor *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMIDispatchQueueNameString(v2, 0);
    v5 = v4;
    v6 = [v4 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v8;

    v10 = objc_autoreleasePoolPush();
    v11 = v3;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Registering for Peak Power Pressure Notifications", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    objc_initWeak(buf, v11);
    v14 = v3->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __35__HMIPeakPowerPressureMonitor_init__block_invoke;
    handler[3] = &unk_278752C10;
    objc_copyWeak(&v17, buf);
    notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v11 + 4, v14, handler);
    [v11 _updatePeakPowerPressureLevel];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __35__HMIPeakPowerPressureMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePeakPowerPressureLevel];
}

- (void)_updatePeakPowerPressureLevel
{
  v16 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v10 = 0;
  notify_register_check("com.apple.system.peakpowerpressurelevel", &out_token);
  notify_get_state(out_token, &v10);
  notify_cancel(out_token);
  v3 = v10;
  if (v10 <= 19)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10 == 10)
    {
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v10)
    {
      case 20:
        v3 = 2;
        goto LABEL_12;
      case 30:
        v3 = 3;
        goto LABEL_12;
      case 40:
        v3 = 4;
        goto LABEL_12;
    }
  }

  v3 = -1;
LABEL_12:
  self->_peakPowerPressureLevel = v3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    peakPowerPressureLevel = self->_peakPowerPressureLevel;
    *buf = 138543618;
    v13 = v7;
    v14 = 2048;
    v15 = peakPowerPressureLevel;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Peak Power Pressure Level is now: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"HMIPeakPowerPressureLevelDidChangeNotification" object:v5];
}

- (void)dealloc
{
  notify_cancel(self->_osPeakPowerPressureLevelNotificationToken);
  v3.receiver = self;
  v3.super_class = HMIPeakPowerPressureMonitor;
  [(HMIPeakPowerPressureMonitor *)&v3 dealloc];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end