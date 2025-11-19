@interface DDRTaskResetCommCenterSettings
- (void)run;
@end

@implementation DDRTaskResetCommCenterSettings

- (void)run
{
  v2 = _CTServerConnectionCreateWithIdentifier();
  if (v2)
  {
    v3 = v2;
    _CTServerConnectionEraseCommCentersPreferences();
    CFRelease(v3);
  }

  else
  {
    v4 = DDRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100009190(v4);
    }
  }
}

@end