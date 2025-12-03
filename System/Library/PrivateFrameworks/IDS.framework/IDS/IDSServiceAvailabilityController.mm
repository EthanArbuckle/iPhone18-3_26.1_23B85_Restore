@interface IDSServiceAvailabilityController
+ (id)sharedInstance;
- (BOOL)_isValidServiceType:(id)type;
- (BOOL)addListenerID:(id)d forService:(id)service;
- (BOOL)hasListenerID:(id)d forService:(id)service;
- (BOOL)removeListenerID:(id)d forService:(id)service;
- (IDSServiceAvailabilityController)init;
- (id)containerForService:(id)service create:(BOOL)create;
- (int64_t)availabilityForListenerID:(id)d forService:(id)service;
- (void)_handleServiceMonitorNotification:(id)notification;
- (void)_postNotificationForService:(id)service availability:(int64_t)availability;
- (void)_startListeningToMonitor:(id)monitor;
- (void)_stopListeningToMonitor:(id)monitor;
- (void)dealloc;
@end

@implementation IDSServiceAvailabilityController

+ (id)sharedInstance
{
  if (qword_1ED5DE0A0 != -1)
  {
    sub_195A009F8();
  }

  v3 = qword_1ED5DE060;

  return v3;
}

- (IDSServiceAvailabilityController)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v3);
    }

    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IDSServiceAvailabilityController;
    v5 = [(IDSServiceAvailabilityController *)&v9 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      availabilityHandlers = v5->_availabilityHandlers;
      v5->_availabilityHandlers = v6;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IDSServiceAvailabilityController;
  [(IDSServiceAvailabilityController *)&v4 dealloc];
}

- (BOOL)_isValidServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.private.ac") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.ess") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.private.alloy.bulletinboard"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"com.apple.private.alloy.photostream"];
  }

  return v4;
}

- (void)_postNotificationForService:(id)service availability:(int64_t)availability
{
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v7 = +[IDSLogging ServiceAvailability];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    v15 = serviceCopy;
    v16 = 1024;
    availabilityCopy = availability;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ posting availability change notification (%@) - available: %d", buf, 0x1Cu);
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:availability];
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"availability", serviceCopy, @"service", 0}];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__IDSServiceAvailabilityDidChangeNotification" object:self userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleServiceMonitorNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v6 = [userInfo objectForKey:@"availability"];

  service = [object service];
  -[IDSServiceAvailabilityController _postNotificationForService:availability:](self, "_postNotificationForService:availability:", service, [v6 integerValue]);
}

- (void)_startListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    v4 = MEMORY[0x1E696AD88];
    monitorCopy = monitor;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleServiceMonitorNotification_ name:@"__kIDSServiceMonitorAvailabilityDidChangeNotification" object:monitorCopy];
  }
}

- (void)_stopListeningToMonitor:(id)monitor
{
  if (monitor)
  {
    v4 = MEMORY[0x1E696AD88];
    monitorCopy = monitor;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:@"__kIDSServiceMonitorAvailabilityDidChangeNotification" object:monitorCopy];
  }
}

- (id)containerForService:(id)service create:(BOOL)create
{
  createCopy = create;
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if ([(IDSServiceAvailabilityController *)self _isValidServiceType:serviceCopy])
  {
    v7 = [(NSMutableDictionary *)self->_availabilityHandlers objectForKey:serviceCopy];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !createCopy;
    }

    if (!v8)
    {
      v9 = +[IDSLogging ServiceAvailability];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        selfCopy = self;
        v16 = 2112;
        v17 = serviceCopy;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ creating monitor for service: %@", &v14, 0x16u);
      }

      v10 = [[IDSServiceContainer alloc] initWithService:serviceCopy];
      v7 = v10;
      if (v10)
      {
        monitor = [(IDSServiceContainer *)v10 monitor];
        [(IDSServiceAvailabilityController *)self _startListeningToMonitor:monitor];

        [(NSMutableDictionary *)self->_availabilityHandlers setObject:v7 forKey:serviceCopy];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)hasListenerID:(id)d forService:(id)service
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [(IDSServiceAvailabilityController *)self containerForService:service create:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 hasListenerID:dCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addListenerID:(id)d forService:(id)service
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  if (dCopy && [dCopy length])
  {
    v8 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = dCopy;
      v18 = 2112;
      v19 = serviceCopy;
    }

    v9 = [(IDSServiceAvailabilityController *)self containerForService:serviceCopy create:1];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 addListenerID:dCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)removeListenerID:(id)d forService:(id)service
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  if (dCopy)
  {
    v8 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      selfCopy2 = self;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = serviceCopy;
    }

    v9 = [(IDSServiceAvailabilityController *)self containerForService:serviceCopy create:0];
    v10 = v9;
    if (v9)
    {
      [v9 removeListenerID:dCopy];
      listeners = [v10 listeners];
      v12 = [listeners count];

      if (!v12)
      {
        v13 = +[IDSLogging ServiceAvailability];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = serviceCopy;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%@ no more listeners for service: %@", &v17, 0x16u);
        }

        monitor = [v10 monitor];
        [(IDSServiceAvailabilityController *)self _stopListeningToMonitor:monitor];

        [(NSMutableDictionary *)self->_availabilityHandlers removeObjectForKey:serviceCopy];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return dCopy != 0;
}

- (int64_t)availabilityForListenerID:(id)d forService:(id)service
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  if (dCopy)
  {
    v8 = [(IDSServiceAvailabilityController *)self containerForService:serviceCopy create:0];
    v9 = v8;
    if (v8)
    {
      if ([v8 hasListenerID:dCopy])
      {
        monitor = [v9 monitor];
        serviceAvailability = [monitor serviceAvailability];

LABEL_10:
        goto LABEL_11;
      }

      v12 = +[IDSLogging ServiceAvailability];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412802;
        selfCopy = self;
        v17 = 2112;
        v18 = dCopy;
        v19 = 2112;
        v20 = serviceCopy;
      }
    }

    serviceAvailability = -2;
    goto LABEL_10;
  }

  serviceAvailability = -2;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return serviceAvailability;
}

@end