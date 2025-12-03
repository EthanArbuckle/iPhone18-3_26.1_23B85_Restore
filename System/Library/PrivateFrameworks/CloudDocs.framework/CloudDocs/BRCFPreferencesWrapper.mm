@interface BRCFPreferencesWrapper
- (id)getBoolValueOfPreference:(id)preference domain:(id)domain;
@end

@implementation BRCFPreferencesWrapper

- (id)getBoolValueOfPreference:(id)preference domain:(id)domain
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preference, domain, &keyExistsAndHasValidFormat);
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