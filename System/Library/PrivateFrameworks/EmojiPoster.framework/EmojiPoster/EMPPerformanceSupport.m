@interface EMPPerformanceSupport
+ (BOOL)shouldSkipUnlockAnimationForCurrentDevice;
@end

@implementation EMPPerformanceSupport

+ (BOOL)shouldSkipUnlockAnimationForCurrentDevice
{
  if (shouldSkipUnlockAnimationForCurrentDevice_onceToken != -1)
  {
    +[EMPPerformanceSupport shouldSkipUnlockAnimationForCurrentDevice];
  }

  return shouldSkipUnlockAnimationForCurrentDevice_shouldSkip;
}

uint64_t __66__EMPPerformanceSupport_shouldSkipUnlockAnimationForCurrentDevice__block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    shouldSkipUnlockAnimationForCurrentDevice_shouldSkip = 1;
  }

  return result;
}

@end