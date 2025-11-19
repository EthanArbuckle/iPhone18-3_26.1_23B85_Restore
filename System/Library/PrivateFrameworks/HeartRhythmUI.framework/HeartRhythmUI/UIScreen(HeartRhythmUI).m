@interface UIScreen(HeartRhythmUI)
+ (BOOL)hrui_currentDeviceHas5Point8InchScreen;
+ (BOOL)hrui_currentDeviceHasLargePhoneScreen;
+ (BOOL)hrui_currentDeviceHasMediumPhoneScreen;
+ (BOOL)hrui_currentDeviceHasSmallPhoneScreen;
@end

@implementation UIScreen(HeartRhythmUI)

+ (BOOL)hrui_currentDeviceHas5Point8InchScreen
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 nativeScale];
  v7 = v4 / v6;

  return v7 > 700.0;
}

+ (BOOL)hrui_currentDeviceHasSmallPhoneScreen
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 nativeScale];
  v7 = v4 / v6;

  return v7 <= 320.0;
}

+ (BOOL)hrui_currentDeviceHasMediumPhoneScreen
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 nativeScale];
  v7 = v4 / v6;

  return v7 <= 375.0 && v7 > 320.0;
}

+ (BOOL)hrui_currentDeviceHasLargePhoneScreen
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 nativeScale];
  v7 = v4 / v6;

  return v7 > 375.0;
}

@end