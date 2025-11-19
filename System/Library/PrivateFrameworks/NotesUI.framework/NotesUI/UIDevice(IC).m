@interface UIDevice(IC)
+ (BOOL)ic_isLargeiPad;
+ (BOOL)ic_isVision;
+ (BOOL)ic_isiPad;
+ (BOOL)ic_isiPhone;
+ (uint64_t)ic_is12hrClock;
+ (uint64_t)ic_isLiveTextAvailable;
@end

@implementation UIDevice(IC)

+ (uint64_t)ic_isLiveTextAvailable
{
  if (ic_isLiveTextAvailable_onceToken != -1)
  {
    +[UIDevice(IC) ic_isLiveTextAvailable];
  }

  if (![MEMORY[0x1E69B7A58] isCameraAvailable] || ic_isLiveTextAvailable_isIPLiveTextEnabled != 1 || !MGIsQuestionValid())
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

+ (BOOL)ic_isiPad
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

+ (BOOL)ic_isVision
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 6;

  return v1;
}

+ (BOOL)ic_isiPhone
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

+ (BOOL)ic_isLargeiPad
{
  v0 = 0;
  if (MGGetSInt32Answer() == 11)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 nativeScale];
    v3 = v2;
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v0 = vabdd_f64(v3, v5) < 0.00999999978;
  }

  return v0;
}

+ (uint64_t)ic_is12hrClock
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v0 dateFormatFromTemplate:@"j" options:0 locale:v1];

  v3 = [v2 containsString:@"a"];
  return v3;
}

@end