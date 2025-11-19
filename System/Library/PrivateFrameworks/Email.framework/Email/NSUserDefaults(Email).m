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
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v3 valueForKey:v7];

  if (!v5)
  {
    v6 = [v4 valueForKey:v7];
    if (v6)
    {
      [v3 setObject:v6 forKey:v7];
      [v4 removeObjectForKey:v7];
    }
  }
}

+ (BOOL)em_defaultExistsForKey:()Email
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [v4 objectForKey:v3];

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
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [v0 integerForKey:@"LoadRemoteContent-v2"];

  return (v1 & 3) == 0;
}

- (uint64_t)shouldPresentRemoteContentAlert
{
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [v0 objectForKey:@"RemoteContentAlertDate"];

  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v1 ef_isEarlierThanDate:v2];

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

  return [a1 setInteger:v3 forKey:@"LoadRemoteContent-v2"];
}

+ (uint64_t)_em_linesOfPreviewShouldReset:()Email
{
  result = _em_linesOfPreviewShouldReset__linesOfPreview;
  if (_em_linesOfPreviewShouldReset__linesOfPreview < 0 || a3)
  {
    v4 = [MEMORY[0x1E695E000] em_userDefaults];
    v5 = [v4 objectForKey:@"LinesOfPreview"];

    if (v5)
    {
      v6 = [v5 intValue];
      _em_linesOfPreviewShouldReset__linesOfPreview = v6;
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 0;
      }

      else
      {
        if (v6 < 6)
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
  v1 = [a1 objectForKey:@"PreferredGroupedSenderGroupingLogic"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end