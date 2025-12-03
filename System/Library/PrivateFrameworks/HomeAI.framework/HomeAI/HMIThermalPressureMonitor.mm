@interface HMIThermalPressureMonitor
+ (id)sharedInstance;
+ (id)shortDescription;
- (HMIThermalPressureMonitor)init;
- (void)_updateThermalPressureLevel;
- (void)dealloc;
@end

@implementation HMIThermalPressureMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_169 != -1)
  {
    +[HMIThermalPressureMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_168;

  return v3;
}

uint64_t __43__HMIThermalPressureMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_168 = objc_alloc_init(HMIThermalPressureMonitor);

  return MEMORY[0x2821F96F8]();
}

- (HMIThermalPressureMonitor)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMIThermalPressureMonitor;
  v2 = [(HMIThermalPressureMonitor *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMIDispatchQueueNameString(v2, 0);
    v5 = v4;
    uTF8String = [v4 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
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
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Registering for Thermal Pressure Notifications", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    objc_initWeak(buf, v11);
    v14 = v3->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__HMIThermalPressureMonitor_init__block_invoke;
    handler[3] = &unk_278752C10;
    objc_copyWeak(&v17, buf);
    notify_register_dispatch(*MEMORY[0x277D85E48], v11 + 4, v14, handler);
    [v11 _updateThermalPressureLevel];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __33__HMIThermalPressureMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateThermalPressureLevel];
}

- (void)_updateThermalPressureLevel
{
  v15 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v9 = 0;
  notify_register_check(*MEMORY[0x277D85E48], &out_token);
  notify_get_state(out_token, &v9);
  notify_cancel(out_token);
  self->_thermalPressureLevel = _mapOSThermalLevelToHMIThermalLevel(v9);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMIThermalPressureLevelAsString(self->_thermalPressureLevel);
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Thermal Pressure Level is now: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMIThermalPressureLevelDidChangeNotification" object:selfCopy];
}

- (void)dealloc
{
  notify_cancel(self->_osThermalPressureLevelNotificationToken);
  v3.receiver = self;
  v3.super_class = HMIThermalPressureMonitor;
  [(HMIThermalPressureMonitor *)&v3 dealloc];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end