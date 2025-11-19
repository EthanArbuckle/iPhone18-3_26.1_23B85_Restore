@interface UIDevice(CKUtilities)
+ (BOOL)__ck_currentDeviceIsMac;
+ (uint64_t)__ck_currentDeviceIsPadOrMac;
@end

@implementation UIDevice(CKUtilities)

+ (BOOL)__ck_currentDeviceIsMac
{
  v1 = [a1 currentDevice];
  v2 = [v1 userInterfaceIdiom] == 5;

  return v2;
}

+ (uint64_t)__ck_currentDeviceIsPadOrMac
{
  if ([a1 __ck_currentDeviceIsMac])
  {
    return 1;
  }

  v3 = [a1 currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

@end