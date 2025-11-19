@interface FTCServiceAvailabilityCenter
+ (id)sharedInstance;
- (BOOL)addListenerID:(id)a3 forService:(int64_t)a4;
- (BOOL)hasListenerID:(id)a3 forService:(int64_t)a4;
- (BOOL)removeListenerID:(id)a3 forService:(int64_t)a4;
- (FTCServiceAvailabilityCenter)init;
- (id)containerForService:(int64_t)a3 create:(BOOL)a4;
- (int64_t)availabilityForListenerID:(id)a3 forService:(int64_t)a4;
- (void)_handleServiceMonitorNotification:(id)a3;
- (void)_postNotificationForService:(int64_t)a3 availability:(int64_t)a4;
- (void)_startListeningToMonitor:(id)a3;
- (void)_stopListeningToMonitor:(id)a3;
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

- (void)_postNotificationForService:(int64_t)a3 availability:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = OSLogHandleForRegistrationCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = FTCServiceNameForServiceType(a3);
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_24A9AC000, v7, OS_LOG_TYPE_DEFAULT, "%@ posting availability change notification (%@) - available: %ld", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
  {
    FTCServiceNameForServiceType(a3);
    sub_24A9ACE54(@"ServiceAvailability", @"%@ posting availability change notification (%@) - available: %ld", v8, v9, v10, v11, v12, v13, self);
  }

  v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a4];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v16 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v14, @"availability", v15, @"servicetype", 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleServiceMonitorNotification:(id)a3
{
  v5 = [a3 object];
  v6 = [objc_msgSend(a3 "userInfo")];
  [v5 serviceType];
  [v6 integerValue];

  MEMORY[0x2821F9670](self, sel__postNotificationForService_availability_);
}

- (void)_startListeningToMonitor:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];

    MEMORY[0x2821F9670](v3, sel_addObserver_selector_name_object_);
  }
}

- (void)_stopListeningToMonitor:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 removeObserver:self name:@"__kFTCServiceMonitorAvailabilityDidChangeNotification" object:a3];
  }
}

- (id)containerForService:(int64_t)a3 create:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  if ([(FTCServiceAvailabilityCenter *)self _isValidServiceType:?])
  {
    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
    v8 = [(NSMutableDictionary *)self->_availabilityHandlers objectForKey:v7];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = !v4;
    }

    if (!v9)
    {
      v10 = OSLogHandleForRegistrationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = self;
        v23 = 2112;
        v24 = FTCServiceNameForServiceType(a3);
        _os_log_impl(&dword_24A9AC000, v10, OS_LOG_TYPE_DEFAULT, "%@ creating monitor for service: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
      {
        FTCServiceNameForServiceType(a3);
        sub_24A9ACE54(@"ServiceAvailability", @"%@ creating monitor for service: %@", v11, v12, v13, v14, v15, v16, self);
      }

      v17 = [[FTCServiceContainer alloc] initWithServiceType:a3];
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

- (BOOL)hasListenerID:(id)a3 forService:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(FTCServiceAvailabilityCenter *)self containerForService:a4 create:0];
  if (!v5)
  {
    return 0;
  }

  return [v5 hasListenerID:a3];
}

- (BOOL)addListenerID:(id)a3 forService:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = [a3 length];
    if (v7)
    {
      v8 = OSLogHandleForRegistrationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = self;
        v19 = 2112;
        v20 = a3;
        v21 = 2112;
        v22 = FTCServiceNameForServiceType(a4);
      }

      if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
      {
        FTCServiceNameForServiceType(a4);
      }

      v7 = [(FTCServiceAvailabilityCenter *)self containerForService:a4 create:1];
      if (v7)
      {
        LOBYTE(v7) = [v7 addListenerID:a3];
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

- (BOOL)removeListenerID:(id)a3 forService:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v28 = self;
      v29 = 2112;
      v30 = a3;
      v31 = 2112;
      v32 = FTCServiceNameForServiceType(a4);
    }

    if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
    {
      FTCServiceNameForServiceType(a4);
    }

    v14 = [(FTCServiceAvailabilityCenter *)self containerForService:a4 create:0];
    v15 = v14;
    if (v14)
    {
      [v14 removeListenerID:a3];
      if (![objc_msgSend(v15 "listeners")])
      {
        v16 = OSLogHandleForRegistrationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = FTCServiceNameForServiceType(a4);
          *buf = 138412546;
          v28 = self;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_24A9AC000, v16, OS_LOG_TYPE_DEFAULT, "%@ no more listeners for service: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && MarcoShouldLogRegistration())
        {
          FTCServiceNameForServiceType(a4);
          sub_24A9ACE54(@"ServiceAvailability", @"%@ no more listeners for service: %@", v18, v19, v20, v21, v22, v23, self);
        }

        -[FTCServiceAvailabilityCenter _stopListeningToMonitor:](self, "_stopListeningToMonitor:", [v15 monitor]);
        v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a4];
        [(NSMutableDictionary *)self->_availabilityHandlers removeObjectForKey:v24];
      }
    }
  }

  result = a3 != 0;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)availabilityForListenerID:(id)a3 forService:(int64_t)a4
{
  if (!a3)
  {
    return -2;
  }

  v5 = [(FTCServiceAvailabilityCenter *)self containerForService:a4 create:0];
  if (!v5)
  {
    return -2;
  }

  v6 = v5;
  if (![v5 hasListenerID:a3])
  {
    return -2;
  }

  v7 = [v6 monitor];

  return MEMORY[0x2821F9670](v7, sel_serviceAvailability);
}

@end