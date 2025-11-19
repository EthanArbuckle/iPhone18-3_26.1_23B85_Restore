@interface DDRTaskClearTelephonySettings
- (void)run;
@end

@implementation DDRTaskClearTelephonySettings

- (void)run
{
  v3 = [NSBundle mainBundle:0];
  [v3 bundleIdentifier];
  v4 = _CTServerConnectionCreateWithIdentifier();

  if (v4)
  {
    if ([(DDRTaskClearTelephonySettings *)self eraseDataPlan])
    {
      _CTServerConnectionEraseAllUserProfiles();
    }

    v5 = [CoreTelephonyClient alloc];
    v6 = dispatch_get_global_queue(2, 0);
    v7 = [v5 initWithQueue:v6];

    [v7 deleteHiddenSims:&stru_100014750];
    _CTServerConnectionEraseBasebandSettings();
    CFRelease(v4);
  }
}

@end