@interface HTInternalSettings
- (BOOL)isHUDEnabled;
- (int64_t)hudThreshold;
- (void)applySettings;
- (void)setHUDEnabled:(BOOL)enabled;
- (void)setHUDThreshold:(int64_t)threshold;
@end

@implementation HTInternalSettings

- (BOOL)isHUDEnabled
{
  v2 = *MEMORY[0x277D0FA18];
  CFPreferencesSynchronize(*MEMORY[0x277D0FA18], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  *keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x277D0FA80], v2, 0);
  if (AppBooleanValue)
  {
    if (CFPreferencesGetAppBooleanValue(*MEMORY[0x277D0FA90], v2, &keyExistsAndHasValidFormat[1]))
    {
      v4 = 1;
    }

    else
    {
      v4 = keyExistsAndHasValidFormat[1] == 0;
    }

    if (v4)
    {
      v5 = CFPreferencesGetAppBooleanValue(*MEMORY[0x277D0FAF8], v2, keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat[0])
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 0;
      }

      LOBYTE(AppBooleanValue) = !v6;
    }

    else
    {
      LOBYTE(AppBooleanValue) = 0;
    }
  }

  return AppBooleanValue;
}

- (void)setHUDEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(HTInternalSettings *)self isHUDEnabled]!= enabled)
  {
    v5 = *MEMORY[0x277D0FA80];
    if (enabledCopy)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v7 = *MEMORY[0x277D0FA18];
      CFPreferencesSetAppValue(v5, v6, *MEMORY[0x277D0FA18]);

      CFPreferencesSetAppValue(*MEMORY[0x277D0FA90], 0, v7);
      v8 = *MEMORY[0x277D0FAF8];
      v9 = v7;
    }

    else
    {
      v9 = *MEMORY[0x277D0FA18];
      v8 = *MEMORY[0x277D0FA80];
    }

    CFPreferencesSetAppValue(v8, 0, v9);

    [(HTInternalSettings *)self applySettings];
  }
}

- (int64_t)hudThreshold
{
  v2 = *MEMORY[0x277D0FA18];
  CFPreferencesSynchronize(*MEMORY[0x277D0FA18], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = CFPreferencesCopyAppValue(*MEMORY[0x277D0FA88], v2);
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 500;
  }

  return intValue;
}

- (void)setHUDThreshold:(int64_t)threshold
{
  v4 = *MEMORY[0x277D0FA88];
  if (threshold == 500)
  {
    CFPreferencesSetAppValue(*MEMORY[0x277D0FA88], 0, *MEMORY[0x277D0FA18]);
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    CFPreferencesSetAppValue(v4, v5, *MEMORY[0x277D0FA18]);
  }

  [(HTInternalSettings *)self applySettings];
}

- (void)applySettings
{
  CFPreferencesSynchronize(*MEMORY[0x277D0FA18], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v2 = *MEMORY[0x277D0FA20];

  notify_post(v2);
}

@end