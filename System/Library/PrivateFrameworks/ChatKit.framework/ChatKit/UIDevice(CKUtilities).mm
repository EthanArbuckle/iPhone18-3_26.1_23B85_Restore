@interface UIDevice(CKUtilities)
+ (BOOL)__ck_currentDeviceIsMac;
+ (uint64_t)__ck_currentDeviceIsPadOrMac;
@end

@implementation UIDevice(CKUtilities)

+ (BOOL)__ck_currentDeviceIsMac
{
  currentDevice = [self currentDevice];
  v2 = [currentDevice userInterfaceIdiom] == 5;

  return v2;
}

+ (uint64_t)__ck_currentDeviceIsPadOrMac
{
  if ([self __ck_currentDeviceIsMac])
  {
    return 1;
  }

  currentDevice = [self currentDevice];
  v2 = [currentDevice userInterfaceIdiom] == 1;

  return v2;
}

@end