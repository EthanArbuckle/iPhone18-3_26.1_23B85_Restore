@interface FIStoreDemoModeProvider
+ (BOOL)isRunningInStoreDemoMode;
@end

@implementation FIStoreDemoModeProvider

+ (BOOL)isRunningInStoreDemoMode
{
  if (isRunningInStoreDemoMode_onceToken != -1)
  {
    +[FIStoreDemoModeProvider isRunningInStoreDemoMode];
  }

  return isRunningInStoreDemoMode_inStoreDemoMode;
}

uint64_t __51__FIStoreDemoModeProvider_isRunningInStoreDemoMode__block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  isRunningInStoreDemoMode_inStoreDemoMode = v2;
  return result;
}

@end