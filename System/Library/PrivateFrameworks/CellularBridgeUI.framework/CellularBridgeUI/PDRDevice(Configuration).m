@interface PDRDevice(Configuration)
+ (id)activeDevice;
- (BOOL)hasHomeButton;
- (BOOL)isCellularSeries3;
- (uint64_t)isRunningInternalBuild;
@end

@implementation PDRDevice(Configuration)

- (BOOL)hasHomeButton
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D37BA0]];
  v2 = [v1 integerValue];

  return v2 != 2;
}

- (uint64_t)isRunningInternalBuild
{
  if (isRunningInternalBuild_onceToken != -1)
  {
    [PDRDevice(Configuration) isRunningInternalBuild];
  }

  return isRunningInternalBuild_isInternalBuild;
}

- (BOOL)isCellularSeries3
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D37BE8]];
  v2 = [v1 stringValue];

  v3 = ![v2 caseInsensitiveCompare:{@"watch3, 1"}] || !objc_msgSend(v2, "caseInsensitiveCompare:", @"watch3,2");
  return v3;
}

+ (id)activeDevice
{
  v0 = [MEMORY[0x277D37B50] sharedInstance];
  v1 = [v0 getDevicesExcluding:4];
  v2 = [v1 firstObject];

  return v2;
}

@end