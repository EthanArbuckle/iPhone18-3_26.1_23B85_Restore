@interface _DPDeviceInfo
+ (BOOL)isDataCollectionEnabled;
+ (BOOL)isDisabledByTaskingForCrashCopier;
+ (BOOL)isDisabledByTaskingForDedisco;
+ (BOOL)isDisabledByTaskingForTransport:(unint64_t)transport;
+ (BOOL)isInternalBuild;
+ (BOOL)isRunningUnitTests;
+ (id)osVersion;
@end

@implementation _DPDeviceInfo

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[_DPDeviceInfo isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

+ (id)osVersion
{
  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"???";
  }

  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"???";
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ (%@)", @"iPhone OS", v5, v7];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

+ (BOOL)isDataCollectionEnabled
{
  if (isDataCollectionEnabled_onceToken != -1)
  {
    +[_DPDeviceInfo isDataCollectionEnabled];
  }

  return isDataCollectionEnabled_dataCollectionEnabled;
}

+ (BOOL)isDisabledByTaskingForTransport:(unint64_t)transport
{
  if (transport == 4)
  {
    return [self isDisabledByTaskingForDedisco];
  }

  if (transport == 1)
  {
    return [self isDisabledByTaskingForCrashCopier];
  }

  return 0;
}

+ (BOOL)isDisabledByTaskingForCrashCopier
{
  if ([objc_opt_class() isRunningUnitTests])
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = OSAGetDATaskingValue();
  bOOLValue = [v4 BOOLValue];

  objc_autoreleasePoolPop(v3);
  return bOOLValue;
}

+ (BOOL)isDisabledByTaskingForDedisco
{
  v2 = objc_autoreleasePoolPush();
  v3 = OSAGetDATaskingValue();
  bOOLValue = [v3 BOOLValue];

  objc_autoreleasePoolPop(v2);
  return bOOLValue;
}

+ (BOOL)isRunningUnitTests
{
  if (isRunningUnitTests_onceToken != -1)
  {
    +[_DPDeviceInfo isRunningUnitTests];
  }

  return isRunningUnitTests_runningTests;
}

@end