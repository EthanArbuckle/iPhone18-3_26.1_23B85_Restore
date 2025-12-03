@interface FTCServiceAvailabilityCenter
+ (id)sharedInstance;
- (BOOL)addListenerID:(id)d forService:(int64_t)service;
- (BOOL)hasListenerID:(id)d forService:(int64_t)service;
- (BOOL)removeListenerID:(id)d forService:(int64_t)service;
- (FTCServiceAvailabilityCenter)init;
- (id)containerForService:(int64_t)service create:(BOOL)create;
- (int64_t)availabilityForListenerID:(id)d forService:(int64_t)service;
- (void)_handleServiceMonitorNotification:(id)notification;
- (void)_postNotificationForService:(int64_t)service availability:(int64_t)availability;
- (void)_startListeningToMonitor:(id)monitor;
- (void)_stopListeningToMonitor:(id)monitor;
- (void)dealloc;
@end

@implementation FTCServiceAvailabilityCenter

+ (id)sharedInstance
{
  if (qword_280B21A78 != -1)
  {
    sub_24A9AE0A0();
  }

  return qword_280B21A70;
}

- (FTCServiceAvailabilityCenter)init
{
  v4.receiver = self;
  v4.super_class = FTCServiceAvailabilityCenter;
  v2 = [(FTCServiceAvailabilityCenter *)&v4 init];
  if (v2)
  {
    v2->_availabilityHandlers = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = FTCServiceAvailabilityCenter;
  [(FTCServiceAvailabilityCenter *)&v3 dealloc];
}

- (void)_postNotificationForService:(int64_t)service availability:(int64_t)availability
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForRegistrationCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = FTCServiceNameForServiceType(service);
    v22 = 2048;
    availabilityCopy = availability;
    _os_log_impl(&dword_24A9AC000, v7, OS_LOG_TYPE_DEFAULT, "%@ posting availability change notification (%@) - available: %ld", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
  {
    FTCServiceNameForServiceType(service);
    sub_24A9ACE54(@"ServiceAvailability", @"%@ posting availability change notification (%@) - available: %ld", v8, v9, v10, v11, v12, v13, self);
  }

  v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:availability];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:service];
  v16 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v14, @"availability", v15, @"servicetype", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleServiceMonitorNotification:(id)notification
{
  object = [notification object];
  v6 = [objc_msgSend(notification "userInfo")];
  [object serviceType];
  [v6 integerValue];

  MEMORY[0x2821F9670](self, sel__postNotificationForService_availability_);
}

- (void)_startListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    MEMORY[0x2821F9670](defaultCenter, sel_addObserver_selector_name_object_);
  }
}

- (void)_stopListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter removeObserver:self name:@"__kFTCServiceMonitorAvailabilityDidChangeNotification" object:monitor];
  }
}

- (id)containerForService:(int64_t)service create:(BOOL)create
{
  createCopy = create;
  v25 = *MEMORY[0x277D85DE8];
  if ([(FTCServiceAvailabilityCenter *)self _isValidServiceType:?])
  {
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:service];
    v8 = [(NSMutableDictionary *)self->_availabilityHandlers objectForKey:v7];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = !createCopy;
    }

    if (!v9)
    {
      v10 = OSLogHandleForRegistrationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v23 = 2112;
        v24 = FTCServiceNameForServiceType(service);
        _os_log_impl(&dword_24A9AC000, v10, OS_LOG_TYPE_DEFAULT, "%@ creating monitor for service: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
      {
        FTCServiceNameForServiceType(service);
        sub_24A9ACE54(@"ServiceAvailability", @"%@ creating monitor for service: %@", v11, v12, v13, v14, v15, v16, self);
      }

      v17 = [[FTCServiceContainer alloc] initWithServiceType:service];
      v18 = v17;
      if (v17)
      {
        [(FTCServiceAvailabilityCenter *)self _startListeningToMonitor:[(FTCServiceContainer *)v17 monitor]];
        [(NSMutableDictionary *)self->_availabilityHandlers setObject:v18 forKey:v7];
      }

      v8 = v18;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasListenerID:(id)d forService:(int64_t)service
{
  if (!d)
  {
    return 0;
  }

  v5 = [(FTCServiceAvailabilityCenter *)self containerForService:service create:0];
  if (!v5)
  {
    return 0;
  }

  return [v5 hasListenerID:d];
}

- (BOOL)addListenerID:(id)d forService:(int64_t)service
{
  v23 = *MEMORY[0x277D85DE8];
  if (d)
  {
    v7 = [d length];
    if (v7)
    {
      v8 = OSLogHandleForRegistrationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v19 = 2112;
        dCopy = d;
        v21 = 2112;
        v22 = FTCServiceNameForServiceType(service);
      }

      if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
      {
        FTCServiceNameForServiceType(service);
      }

      v7 = [(FTCServiceAvailabilityCenter *)self containerForService:service create:1];
      if (v7)
      {
        LOBYTE(v7) = [v7 addListenerID:d];
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)removeListenerID:(id)d forService:(int64_t)service
{
  v33 = *MEMORY[0x277D85DE8];
  if (d)
  {
    v7 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v29 = 2112;
      dCopy = d;
      v31 = 2112;
      v32 = FTCServiceNameForServiceType(service);
    }

    if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
    {
      FTCServiceNameForServiceType(service);
    }

    v14 = [(FTCServiceAvailabilityCenter *)self containerForService:service create:0];
    v15 = v14;
    if (v14)
    {
      [v14 removeListenerID:d];
      if (![objc_msgSend(v15 "listeners")])
      {
        v16 = OSLogHandleForRegistrationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = FTCServiceNameForServiceType(service);
          *buf = 138412546;
          selfCopy2 = self;
          v29 = 2112;
          dCopy = v17;
          _os_log_impl(&dword_24A9AC000, v16, OS_LOG_TYPE_DEFAULT, "%@ no more listeners for service: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
        {
          FTCServiceNameForServiceType(service);
          sub_24A9ACE54(@"ServiceAvailability", @"%@ no more listeners for service: %@", v18, v19, v20, v21, v22, v23, self);
        }

        -[FTCServiceAvailabilityCenter _stopListeningToMonitor:](self, "_stopListeningToMonitor:", [v15 monitor]);
        v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:service];
        [(NSMutableDictionary *)self->_availabilityHandlers removeObjectForKey:v24];
      }
    }
  }

  result = d != 0;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)availabilityForListenerID:(id)d forService:(int64_t)service
{
  if (!d)
  {
    return -2;
  }

  v5 = [(FTCServiceAvailabilityCenter *)self containerForService:service create:0];
  if (!v5)
  {
    return -2;
  }

  v6 = v5;
  if (![v5 hasListenerID:d])
  {
    return -2;
  }

  monitor = [v6 monitor];

  return MEMORY[0x2821F9670](monitor, sel_serviceAvailability);
}

@end