@interface HIDTimeSync
+ (id)timeSyncFromHIDDevice:(id)a3;
+ (id)timeSyncFromHIDEventService:(id)a3;
+ (id)timeSyncFromHIDServiceClient:(id)a3;
+ (id)timeSyncFromProtocol:(unint64_t)a3;
+ (unsigned)findDeviceForServiceID:(unint64_t)a3;
- (BOOL)registerPropertyNotification:(unsigned int)a3;
- (BOOL)setProviderProperty:(id)a3 forKey:(id)a4;
- (HIDTimeSync)init;
- (id)dataFromSyncedTime:(unint64_t)a3 error:(id *)a4;
- (id)initInternal;
- (id)properties;
- (unint64_t)syncedTimeFromData:(id)a3 error:(id *)a4;
- (unsigned)findDevice;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)handlePropertyUpdate:(id)a3;
- (void)setCancelHandler:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setEventHandler:(id)a3;
@end

@implementation HIDTimeSync

- (HIDTimeSync)init
{
  v3.receiver = self;
  v3.super_class = HIDTimeSync;
  return [(HIDTimeSync *)&v3 init];
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = HIDTimeSync;
  return [(HIDTimeSync *)&v3 init];
}

+ (id)timeSyncFromProtocol:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = objc_alloc_init(HIDBasicTimeSync);
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a3 != 1)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = +[HIDTimeSync newTestTimeSync];
  if (v3)
  {
LABEL_6:
    v3->super._propertyPort = 0;
    v3->super._propertyNotify = 0;
  }

LABEL_8:

  return v3;
}

+ (id)timeSyncFromHIDDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"HIDTimeSyncProtocol"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[HIDTimeSync timeSyncFromProtocol:](HIDTimeSync, "timeSyncFromProtocol:", [v5 unsignedIntegerValue]);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 16), a3);
      v8 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)timeSyncFromHIDEventService:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"HIDTimeSyncProtocol"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[HIDTimeSync timeSyncFromProtocol:](HIDTimeSync, "timeSyncFromProtocol:", [v5 unsignedIntegerValue]);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong((v6 + 24), a3);
      v8 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)timeSyncFromHIDServiceClient:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"HIDTimeSyncProtocol"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[HIDTimeSync timeSyncFromProtocol:](HIDTimeSync, "timeSyncFromProtocol:", [v5 unsignedIntegerValue]);
    objc_storeStrong(v6 + 4, a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setEventHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (atomic_load(&self->_state))
  {
    [(HIDTimeSync *)&self->_state setEventHandler:v11];
  }

  v9 = v4;
  v6 = _Block_copy(v4);
  eventHandler = self->_eventHandler;
  self->_eventHandler = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDispatchQueue:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (atomic_load(&self->_state))
  {
    [(HIDTimeSync *)&self->_state setEventHandler:v9];
  }

  queue = self->_queue;
  self->_queue = v4;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setCancelHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (atomic_load(&self->_state))
  {
    [(HIDTimeSync *)&self->_state setEventHandler:v11];
  }

  v9 = v4;
  v6 = _Block_copy(v4);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  OUTLINED_FUNCTION_5(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void __23__HIDTimeSync_activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 properties];
  [v1 handlePropertyUpdate:v2];
}

- (void)cancel
{
  OUTLINED_FUNCTION_1_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

uint64_t __21__HIDTimeSync_cancel__block_invoke(uint64_t a1)
{
  result = (*(*(*(a1 + 32) + 72) + 16))();
  atomic_fetch_or((*(a1 + 32) + 8), 0x10u);
  return result;
}

- (void)dealloc
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (unsigned)findDevice
{
  if (self->_device)
  {
    v2 = [(HIDDevice *)self->_device service];
    IOObjectRetain(v2);
    return v2;
  }

  if (self->_client)
  {
    client = self->_client;
  }

  else
  {
    client = self->_service;
    if (!client)
    {
      return 0;
    }
  }

  v5 = [(HIDServiceClient *)client serviceID];

  return [HIDTimeSync findDeviceForServiceID:v5];
}

+ (unsigned)findDeviceForServiceID:(unint64_t)a3
{
  iterator = 0;
  v4 = IORegistryEntryIDMatching(a3);
  if (!v4)
  {
    +[HIDTimeSync findDeviceForServiceID:];
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  if (!MatchingService)
  {
    +[HIDTimeSync findDeviceForServiceID:];
    return 0;
  }

  v6 = MatchingService;
  if (MEMORY[0x2318DEAB0](MatchingService, "IOService", 3, &iterator))
  {
    v9 = _IOHIDLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HIDTimeSync *)a3 findDeviceForServiceID:v9];
    }
  }

  else
  {
    v7 = IOIteratorNext(iterator);
    if (v7)
    {
      v8 = v7;
      while (!IOObjectConformsTo(v8, "IOHIDDevice"))
      {
        IOObjectRelease(v8);
        v8 = IOIteratorNext(iterator);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_11;
    }

LABEL_8:
    v9 = _IOHIDLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HIDTimeSync *)a3 findDeviceForServiceID:v9];
    }
  }

  v8 = 0;
LABEL_11:
  IOObjectRelease(v6);
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  return v8;
}

- (BOOL)registerPropertyNotification:(unsigned int)a3
{
  v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_propertyPort = v5;
  v6 = [(HIDTimeSync *)self queue];
  IONotificationPortSetDispatchQueue(v5, v6);

  v7 = IOServiceAddInterestNotification(self->_propertyPort, a3, "IOGeneralInterest", HIDTimeSyncPropertyHandler, self, &self->_propertyNotify);
  if (v7)
  {
    v8 = _IOHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HIDTimeSync *)v7 registerPropertyNotification:v8];
    }
  }

  return v7 == 0;
}

- (void)handlePropertyUpdate:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

- (unint64_t)syncedTimeFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)dataFromSyncedTime:(unint64_t)a3 error:(id *)a4
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)properties
{
  if (!self->_device)
  {
    if (self->_service)
    {
      v3 = *MEMORY[0x277CD2898];
      service = self->_service;
    }

    else
    {
      service = self->_client;
      if (!service)
      {
        goto LABEL_16;
      }

      v3 = *MEMORY[0x277CD2898];
    }

    v5 = IORegistryEntryIDMatching([(HIDEventService *)service serviceID]);
    MatchingService = IOServiceGetMatchingService(v3, v5);
    if (MatchingService)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_13;
  }

  MatchingService = [(HIDDevice *)self->_device service];
  IOObjectRetain(MatchingService);
  if (!MatchingService)
  {
    goto LABEL_16;
  }

LABEL_9:
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"HIDTimeSyncProperties", *MEMORY[0x277CBECE8], 3u);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFDictionaryGetTypeID())
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  IOObjectRelease(MatchingService);
LABEL_13:

  return v7;
}

- (BOOL)setProviderProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HIDTimeSync *)self findDevice];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CD2850]) initWithService:v8];
    [v10 open];
    v11 = [v10 setProperty:v6 forKey:v7];
    [v10 close];
    IOObjectRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setEventHandler:(_OWORD *)a3 .cold.1(unsigned int *a1, void *a2, _OWORD *a3)
{
  OUTLINED_FUNCTION_1_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

+ (void)findDeviceForServiceID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_22DF7D000, a2, OS_LOG_TYPE_ERROR, "Failed to create iterator for ID 0x%llx", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)findDeviceForServiceID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_22DF7D000, a2, OS_LOG_TYPE_ERROR, "Failed find device for ID 0x%llx", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)findDeviceForServiceID:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _IOHIDLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6(&dword_22DF7D000, v1, v2, "Failed to get service for ID 0x%llx", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)findDeviceForServiceID:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _IOHIDLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6(&dword_22DF7D000, v1, v2, "Failed to get matching for ID 0x%llx", v3, v4, v5, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerPropertyNotification:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22DF7D000, a2, OS_LOG_TYPE_ERROR, "IOServiceAddInterestNotification 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end