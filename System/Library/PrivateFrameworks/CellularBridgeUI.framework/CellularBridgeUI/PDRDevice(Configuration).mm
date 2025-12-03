@interface PDRDevice(Configuration)
+ (id)activeDevice;
- (BOOL)hasHomeButton;
- (BOOL)isCellularSeries3;
- (uint64_t)isRunningInternalBuild;
@end

@implementation PDRDevice(Configuration)

- (BOOL)hasHomeButton
{
  v1 = [self valueForProperty:*MEMORY[0x277D37BA0]];
  integerValue = [v1 integerValue];

  return integerValue != 2;
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
  v1 = [self valueForProperty:*MEMORY[0x277D37BE8]];
  stringValue = [v1 stringValue];

  v3 = ![stringValue caseInsensitiveCompare:{@"watch3, 1"}] || !objc_msgSend(stringValue, "caseInsensitiveCompare:", @"watch3,2");
  return v3;
}

+ (id)activeDevice
{
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  v1 = [mEMORY[0x277D37B50] getDevicesExcluding:4];
  firstObject = [v1 firstObject];

  return firstObject;
}

@end