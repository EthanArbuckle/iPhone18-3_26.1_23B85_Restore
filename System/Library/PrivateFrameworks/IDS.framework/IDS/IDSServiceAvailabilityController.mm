@interface IDSServiceAvailabilityController
+ (id)sharedInstance;
- (BOOL)_isValidServiceType:(id)a3;
- (BOOL)addListenerID:(id)a3 forService:(id)a4;
- (BOOL)hasListenerID:(id)a3 forService:(id)a4;
- (BOOL)removeListenerID:(id)a3 forService:(id)a4;
- (IDSServiceAvailabilityController)init;
- (id)containerForService:(id)a3 create:(BOOL)a4;
- (int64_t)availabilityForListenerID:(id)a3 forService:(id)a4;
- (void)_handleServiceMonitorNotification:(id)a3;
- (void)_postNotificationForService:(id)a3 availability:(int64_t)a4;
- (void)_startListeningToMonitor:(id)a3;
- (void)_stopListeningToMonitor:(id)a3;
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

    v4 = 0;
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
    v4 = self;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IDSServiceAvailabilityController;
  [(IDSServiceAvailabilityController *)&v4 dealloc];
}

- (BOOL)_isValidServiceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.madrid"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.private.ac") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ess") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.private.alloy.bulletinboard"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.private.alloy.photostream"];
  }

  return v4;
}

- (void)_postNotificationForService:(id)a3 availability:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[IDSLogging ServiceAvailability];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = a4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ posting availability change notification (%@) - available: %d", buf, 0x1Cu);
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a4];
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"availability", v6, @"service", 0}];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 __mainThreadPostNotificationName:@"__IDSServiceAvailabilityDidChangeNotification" object:self userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleServiceMonitorNotification:(id)a3
{
  v4 = a3;
  v8 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:@"availability"];

  v7 = [v8 service];
  -[IDSServiceAvailabilityController _postNotificationForService:availability:](self, "_postNotificationForService:availability:", v7, [v6 integerValue]);
}

- (void)_startListeningToMonitor:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD88];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 addObserver:self selector:sel__handleServiceMonitorNotification_ name:@"__kIDSServiceMonitorAvailabilityDidChangeNotification" object:v5];
  }
}

- (void)_stopListeningToMonitor:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD88];
    v5 = a3;
    v6 = [v4 defaultCenter];
    [v6 removeObserver:self name:@"__kIDSServiceMonitorAvailabilityDidChangeNotification" object:v5];
  }
}

- (id)containerForService:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(IDSServiceAvailabilityController *)self _isValidServiceType:v6])
  {
    v7 = [(NSMutableDictionary *)self->_availabilityHandlers objectForKey:v6];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !v4;
    }

    if (!v8)
    {
      v9 = +[IDSLogging ServiceAvailability];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ creating monitor for service: %@", &v14, 0x16u);
      }

      v10 = [[IDSServiceContainer alloc] initWithService:v6];
      v7 = v10;
      if (v10)
      {
        v11 = [(IDSServiceContainer *)v10 monitor];
        [(IDSServiceAvailabilityController *)self _startListeningToMonitor:v11];

        [(NSMutableDictionary *)self->_availabilityHandlers setObject:v7 forKey:v6];
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

- (BOOL)hasListenerID:(id)a3 forService:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(IDSServiceAvailabilityController *)self containerForService:a4 create:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 hasListenerID:v6];
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

- (BOOL)addListenerID:(id)a3 forService:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
    }

    v9 = [(IDSServiceAvailabilityController *)self containerForService:v7 create:1];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 addListenerID:v6];
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

- (BOOL)removeListenerID:(id)a3 forService:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[IDSLogging ServiceAvailability];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
    }

    v9 = [(IDSServiceAvailabilityController *)self containerForService:v7 create:0];
    v10 = v9;
    if (v9)
    {
      [v9 removeListenerID:v6];
      v11 = [v10 listeners];
      v12 = [v11 count];

      if (!v12)
      {
        v13 = +[IDSLogging ServiceAvailability];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = self;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%@ no more listeners for service: %@", &v17, 0x16u);
        }

        v14 = [v10 monitor];
        [(IDSServiceAvailabilityController *)self _stopListeningToMonitor:v14];

        [(NSMutableDictionary *)self->_availabilityHandlers removeObjectForKey:v7];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (int64_t)availabilityForListenerID:(id)a3 forService:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(IDSServiceAvailabilityController *)self containerForService:v7 create:0];
    v9 = v8;
    if (v8)
    {
      if ([v8 hasListenerID:v6])
      {
        v10 = [v9 monitor];
        v11 = [v10 serviceAvailability];

LABEL_10:
        goto LABEL_11;
      }

      v12 = +[IDSLogging ServiceAvailability];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412802;
        v16 = self;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
      }
    }

    v11 = -2;
    goto LABEL_10;
  }

  v11 = -2;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end