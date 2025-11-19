@interface BRCFPreferencesWrapper
- (id)getBoolValueOfPreference:(id)a3 domain:(id)a4;
@end

@implementation BRCFPreferencesWrapper

- (id)getBoolValueOfPreference:(id)a3 domain:(id)a4
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, a4, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:AppBooleanValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end