@interface BusinessSettingsHelper
- (BOOL)areBusinessUpdatesEnabled;
@end

@implementation BusinessSettingsHelper

- (BOOL)areBusinessUpdatesEnabled
{
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"RCSForBusinessEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

@end