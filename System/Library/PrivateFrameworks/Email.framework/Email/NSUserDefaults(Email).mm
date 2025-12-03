@interface NSUserDefaults(Email)
+ (BOOL)em_defaultExistsForKey:()Email;
+ (id)em_userDefaults;
+ (uint64_t)_em_linesOfPreviewShouldReset:()Email;
+ (uint64_t)em_lockdownModeEnabled;
+ (void)em_migrateDefault:()Email;
- (BOOL)shouldPresentRemoteContentOptionsSheet;
- (uint64_t)enableMailTrackingProtection:()Email;
- (uint64_t)preferredGroupedSenderGrouping;
- (uint64_t)shouldPresentRemoteContentAlert;
@end

@implementation NSUserDefaults(Email)

+ (id)em_userDefaults
{
  if (em_userDefaults_onceToken != -1)
  {
    +[NSUserDefaults(Email) em_userDefaults];
  }

  v1 = em_userDefaults_userDefaults;

  return v1;
}

+ (void)em_migrateDefault:()Email
{
  v7 = a3;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [em_userDefaults valueForKey:v7];

  if (!v5)
  {
    v6 = [standardUserDefaults valueForKey:v7];
    if (v6)
    {
      [em_userDefaults setObject:v6 forKey:v7];
      [standardUserDefaults removeObjectForKey:v7];
    }
  }
}

+ (BOOL)em_defaultExistsForKey:()Email
{
  v3 = a3;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [em_userDefaults objectForKey:v3];

  return v5 != 0;
}

+ (uint64_t)em_lockdownModeEnabled
{
  if (em_lockdownModeEnabled_onceToken != -1)
  {
    +[NSUserDefaults(Email) em_lockdownModeEnabled];
  }

  return em_lockdownModeEnabled_lockdownModeEnabled;
}

- (BOOL)shouldPresentRemoteContentOptionsSheet
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [em_userDefaults integerForKey:@"LoadRemoteContent-v2"];

  return (v1 & 3) == 0;
}

- (uint64_t)shouldPresentRemoteContentAlert
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [em_userDefaults objectForKey:@"RemoteContentAlertDate"];

  date = [MEMORY[0x1E695DF00] date];
  v3 = [v1 ef_isEarlierThanDate:date];

  return v3;
}

- (uint64_t)enableMailTrackingProtection:()Email
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 9;
  }

  return [self setInteger:v3 forKey:@"LoadRemoteContent-v2"];
}

+ (uint64_t)_em_linesOfPreviewShouldReset:()Email
{
  result = _em_linesOfPreviewShouldReset__linesOfPreview;
  if (_em_linesOfPreviewShouldReset__linesOfPreview < 0 || a3)
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v5 = [em_userDefaults objectForKey:@"LinesOfPreview"];

    if (v5)
    {
      intValue = [v5 intValue];
      _em_linesOfPreviewShouldReset__linesOfPreview = intValue;
      if ((intValue & 0x80000000) != 0)
      {
        v7 = 0;
      }

      else
      {
        if (intValue < 6)
        {
LABEL_10:

          return _em_linesOfPreviewShouldReset__linesOfPreview;
        }

        v7 = 5;
      }
    }

    else
    {
      v7 = 2;
    }

    _em_linesOfPreviewShouldReset__linesOfPreview = v7;
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)preferredGroupedSenderGrouping
{
  v1 = [self objectForKey:@"PreferredGroupedSenderGroupingLogic"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

@end