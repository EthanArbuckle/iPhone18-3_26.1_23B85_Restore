@interface CMContinuityCaptureUserOnboarding
+ (id)sharedInstance;
+ (id)stateToString:(int64_t)a3;
+ (void)invalidate;
- (BOOL)logTryItNowAnalytics;
- (CMContinuityCaptureUserOnboarding)initWithQueue:(id)a3;
- (id)description;
- (void)setLogTryItNowAnalytics:(BOOL)a3;
@end

@implementation CMContinuityCaptureUserOnboarding

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CMContinuityCaptureUserOnboarding sharedInstance];
  }

  v3 = _userOnboarding;

  return v3;
}

void __51__CMContinuityCaptureUserOnboarding_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureUserOnboarding alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.continuitycapture.useronboarding", v4);
  v2 = [(CMContinuityCaptureUserOnboarding *)v0 initWithQueue:v1];
  v3 = _userOnboarding;
  _userOnboarding = v2;
}

- (BOOL)logTryItNowAnalytics
{
  v2 = self;
  objc_sync_enter(v2);
  logTryItNowAnalytics = v2->_logTryItNowAnalytics;
  objc_sync_exit(v2);

  return logTryItNowAnalytics;
}

- (void)setLogTryItNowAnalytics:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_logTryItNowAnalytics = a3;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if (_userOnboarding && ([_userOnboarding invalidated] & 1) == 0)
  {
    [_userOnboarding _invalidate];
  }

  objc_sync_exit(obj);
}

+ (id)stateToString:(int64_t)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected onboarding state %d", a3];
  }

  else
  {
    v4 = off_278D5C460[a3];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: [%p]", v5, self];

  return v6;
}

- (CMContinuityCaptureUserOnboarding)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMContinuityCaptureUserOnboarding;
  v3 = [(CMContinuityCaptureUserOnboarding *)&v7 init];
  v4 = v3;
  if (v3)
  {
    [(CMContinuityCaptureUserOnboarding *)v3 willChangeValueForKey:@"state"];
    v4->_state = 3;
    [(CMContinuityCaptureUserOnboarding *)v4 didChangeValueForKey:@"state"];
    v5 = v4;
  }

  return v4;
}

@end