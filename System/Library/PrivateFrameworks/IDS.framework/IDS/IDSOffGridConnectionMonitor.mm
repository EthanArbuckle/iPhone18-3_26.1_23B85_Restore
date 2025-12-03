@interface IDSOffGridConnectionMonitor
+ (id)sharedInstance;
- (BOOL)isConnectionSuitableForIMLOverStewie;
- (BOOL)isIMLActive;
- (BOOL)isIMLAvailable;
- (IDSOffGridConnectionMonitor)init;
- (NSString)description;
@end

@implementation IDSOffGridConnectionMonitor

- (BOOL)isConnectionSuitableForIMLOverStewie
{
  if ([(IDSOffGridConnectionMonitor *)self isDeviceOnline])
  {
    return 0;
  }

  return [(IDSOffGridConnectionMonitor *)self isIMLActive];
}

+ (id)sharedInstance
{
  if (qword_1ED5DDFE0 != -1)
  {
    sub_195B2AA8C();
  }

  v3 = qword_1EAEDC058;

  return v3;
}

- (IDSOffGridConnectionMonitor)init
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = IDSOffGridConnectionMonitor;
  v2 = [(IDSOffGridConnectionMonitor *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.ids.connectionMonitor.ct", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [objc_alloc(MEMORY[0x19A8BAE00](@"CTStewieStateMonitor" @"CoreTelephony"))];
    stewieConnectionMonitor = v2->_stewieConnectionMonitor;
    v2->_stewieConnectionMonitor = v7;

    start = [(CTStewieStateMonitor *)v2->_stewieConnectionMonitor start];
    iDSOffGridStateManager = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
    if (os_log_type_enabled(iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v12 = v2->_stewieConnectionMonitor;
      if (start)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1959FF000, iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT, "Started stewie connection monitor %@ %@", buf, 0x16u);
    }

    v13 = [objc_alloc(MEMORY[0x1E69A6118]) initWithRemoteHost:0 delegate:v2];
    networkConnectionMonitor = v2->_networkConnectionMonitor;
    v2->_networkConnectionMonitor = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)isIMLAvailable
{
  getState = [(CTStewieStateMonitor *)self->_stewieConnectionMonitor getState];
  v3 = [getState isAllowedService:16];

  return v3;
}

- (BOOL)isIMLActive
{
  getState = [(CTStewieStateMonitor *)self->_stewieConnectionMonitor getState];
  v3 = [getState isActiveService:16];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(IDSOffGridConnectionMonitor *)self isIMLAvailable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(IDSOffGridConnectionMonitor *)self isIMLActive])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<IDSOffGridConnectionMonitor %p>: isIMLAvailable %@, isIMLActive %@>", self, v4, v5];
}

@end