@interface HMIThermalMonitor
+ (id)sharedInstance;
- (BOOL)readMaxValue:(double *)a3;
- (BOOL)readValueFromSensor:(int)a3 value:(double *)a4;
- (HMIThermalMonitor)init;
- (void)_updateThermalLevel;
- (void)dealloc;
@end

@implementation HMIThermalMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HMIThermalMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __35__HMIThermalMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(HMIThermalMonitor);

  return MEMORY[0x2821F96F8]();
}

- (HMIThermalMonitor)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMIThermalMonitor;
  v2 = [(HMIThermalMonitor *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_client = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    services = v3->_services;
    v3->_services = v4;

    v3->_thermalLevel = 0;
    v6 = HMIDispatchQueueNameString(v3, 0);
    v7 = v6;
    v8 = [v6 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v10;

    v12 = objc_autoreleasePoolPush();
    v13 = v3;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Registering for Thermal Level Notifications", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    objc_initWeak(buf, v13);
    v16 = v3->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__HMIThermalMonitor_init__block_invoke;
    handler[3] = &unk_278752C10;
    objc_copyWeak(&v19, buf);
    notify_register_dispatch(*MEMORY[0x277D85E40], v13 + 4, v16, handler);
    [v13 _updateThermalLevel];
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __25__HMIThermalMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateThermalLevel];
}

- (BOOL)readValueFromSensor:(int)a3 value:(double *)a4
{
  v5 = *&a3;
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v7 = [(HMIThermalMonitor *)self services];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  client = [v7 objectForKey:v8];

  if (client)
  {
    goto LABEL_19;
  }

  client = self->_client;
  v10 = *MEMORY[0x277CBECE8];
  if (!client)
  {
    client = IOHIDEventSystemClientCreate();
    self->_client = client;
    if (!client)
    {
LABEL_24:
      v17 = 0;
      goto LABEL_22;
    }
  }

  valuePtr = 65280;
  v21 = v5;
  v19 = 5;
  *keys = xmmword_278752C40;
  v26 = @"LocationID";
  values = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  cf = CFNumberCreate(v10, kCFNumberSInt32Type, &v19);
  v24 = CFNumberCreate(v10, kCFNumberSInt32Type, &v21);
  v11 = CFDictionaryCreate(v10, keys, &values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v11)
  {
    client = 0;
    goto LABEL_24;
  }

  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  IOHIDEventSystemClientSetMatching();
  v12 = IOHIDEventSystemClientCopyServices(client);
  v13 = v12;
  if (v12)
  {
    if (CFArrayGetCount(v12) < 1)
    {
      client = 0;
    }

    else
    {
      client = CFArrayGetValueAtIndex(v13, 0);
    }

    CFRelease(v13);
  }

  else
  {
    client = 0;
  }

  CFRelease(v11);
  if (!client)
  {
    goto LABEL_24;
  }

  client = [[HMIThermalMonitorService alloc] initWithService:client];
  v14 = [(HMIThermalMonitor *)self services];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [v14 setObject:client forKey:v15];

LABEL_19:
  if (a4)
  {
    [(__IOHIDEventSystemClient *)client readValue];
    *a4 = v16;
  }

  v17 = 1;
LABEL_22:

  os_unfair_lock_unlock(&self->_lock);
  return v17;
}

- (BOOL)readMaxValue:(double *)a3
{
  v5 = 0;
  v6 = 0.0;
  do
  {
    v8 = 0.0;
    [(HMIThermalMonitor *)self readValueFromSensor:dword_22D297F20[v5] value:&v8];
    if (v6 < v8)
    {
      v6 = v8;
    }

    ++v5;
  }

  while (v5 != 8);
  if (a3)
  {
    *a3 = v6;
  }

  return 1;
}

- (void)_updateThermalLevel
{
  v15 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v9 = 0;
  notify_register_check(*MEMORY[0x277D85E40], &out_token);
  notify_get_state(out_token, &v9);
  notify_cancel(out_token);
  self->_thermalLevel = v9;
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    thermalLevel = self->_thermalLevel;
    *buf = 138543618;
    v12 = v6;
    v13 = 2048;
    v14 = thermalLevel;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Thermal Level is now: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"HMIThermalLevelDidChangeNotification" object:v4];
}

- (void)dealloc
{
  notify_cancel(self->_thermalLevelNotificationToken);
  client = self->_client;
  if (client)
  {
    CFRelease(client);
  }

  v4.receiver = self;
  v4.super_class = HMIThermalMonitor;
  [(HMIThermalMonitor *)&v4 dealloc];
}

@end