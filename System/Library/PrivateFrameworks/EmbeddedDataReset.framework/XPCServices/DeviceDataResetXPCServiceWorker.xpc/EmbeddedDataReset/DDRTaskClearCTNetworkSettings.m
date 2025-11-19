@interface DDRTaskClearCTNetworkSettings
- (void)run;
@end

@implementation DDRTaskClearCTNetworkSettings

- (void)run
{
  v2 = _CTServerConnectionCreateWithIdentifier();
  if (v2)
  {
    v3 = v2;
    _CTServerConnectionEraseNetworkSettings();
    CFRelease(v3);
  }
}

@end