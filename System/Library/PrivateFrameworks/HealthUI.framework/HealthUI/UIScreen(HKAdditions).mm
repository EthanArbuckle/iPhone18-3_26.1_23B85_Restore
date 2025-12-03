@interface UIScreen(HKAdditions)
+ (BOOL)hk_currentDeviceHasDisplayZoomedEnabled;
+ (int64_t)_screenHeightSizeClassForCurrentDevice;
@end

@implementation UIScreen(HKAdditions)

+ (BOOL)hk_currentDeviceHasDisplayZoomedEnabled
{
  mainScreen = [self mainScreen];
  [mainScreen scale];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 < v6;

  return v7;
}

+ (int64_t)_screenHeightSizeClassForCurrentDevice
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 scale];
  v7 = [HKScreenHeightSizeClassUtilities screenHeightSizeClassForHeight:v4 scale:v6];

  return v7;
}

@end