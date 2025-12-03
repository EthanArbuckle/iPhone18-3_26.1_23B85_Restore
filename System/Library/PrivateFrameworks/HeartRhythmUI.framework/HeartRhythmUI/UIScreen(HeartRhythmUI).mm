@interface UIScreen(HeartRhythmUI)
+ (BOOL)hrui_currentDeviceHas5Point8InchScreen;
+ (BOOL)hrui_currentDeviceHasLargePhoneScreen;
+ (BOOL)hrui_currentDeviceHasMediumPhoneScreen;
+ (BOOL)hrui_currentDeviceHasSmallPhoneScreen;
@end

@implementation UIScreen(HeartRhythmUI)

+ (BOOL)hrui_currentDeviceHas5Point8InchScreen
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 / v6;

  return v7 > 700.0;
}

+ (BOOL)hrui_currentDeviceHasSmallPhoneScreen
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 / v6;

  return v7 <= 320.0;
}

+ (BOOL)hrui_currentDeviceHasMediumPhoneScreen
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 / v6;

  return v7 <= 375.0 && v7 > 320.0;
}

+ (BOOL)hrui_currentDeviceHasLargePhoneScreen
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 nativeScale];
  v7 = v4 / v6;

  return v7 > 375.0;
}

@end