@interface CMContinuityCaptureUserNotificationCenter
+ (id)sharedInstance;
+ (void)invalidate;
- (CMContinuityCaptureUserNotificationCenter)initWithQueue:(id)a3;
- (id)description;
@end

@implementation CMContinuityCaptureUserNotificationCenter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  }

  v3 = _notificationCenter;

  return v3;
}

void __59__CMContinuityCaptureUserNotificationCenter_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureiOSNotificationCenter alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.continuitycapture.usernotification", v4);
  v2 = [(CMContinuityCaptureiOSNotificationCenter *)v0 initWithQueue:v1];
  v3 = _notificationCenter;
  _notificationCenter = v2;
}

+ (void)invalidate
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if (_notificationCenter)
  {
    [_notificationCenter invalidate];
  }

  objc_sync_exit(obj);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: [%p]", v5, self];

  return v6;
}

- (CMContinuityCaptureUserNotificationCenter)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMContinuityCaptureUserNotificationCenter;
  v3 = [(CMContinuityCaptureUserNotificationCenter *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end