@interface UIScreen(HKAdditions)
+ (BOOL)hk_currentDeviceHasDisplayZoomedEnabled;
+ (int64_t)_screenHeightSizeClassForCurrentDevice;
@end

@implementation UIScreen(HKAdditions)

+ (BOOL)hk_currentDeviceHasDisplayZoomedEnabled
{
  v2 = [a1 mainScreen];
  [v2 scale];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 nativeScale];
  v7 = v4 < v6;

  return v7;
}

+ (int64_t)_screenHeightSizeClassForCurrentDevice
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 scale];
  v7 = [HKScreenHeightSizeClassUtilities screenHeightSizeClassForHeight:v4 scale:v6];

  return v7;
}

@end