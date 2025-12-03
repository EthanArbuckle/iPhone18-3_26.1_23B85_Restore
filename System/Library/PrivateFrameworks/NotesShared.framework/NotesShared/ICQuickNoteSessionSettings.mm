@interface ICQuickNoteSessionSettings
+ (BOOL)hasAccountSupportingLockScreen;
+ (int64_t)sessionDuration;
+ (int64_t)showOnLockScreen;
+ (int64_t)showOnLockScreenSettingValue;
+ (void)disableNotesOnLockScreenIfNecessary;
+ (void)initialize;
+ (void)setSessionDuration:(int64_t)duration;
+ (void)setShowOnLockScreen:(int64_t)screen;
+ (void)updateNotesOnLockScreenWhenAccountSupportingLockScreenAdded;
@end

@implementation ICQuickNoteSessionSettings

+ (void)initialize
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D36260];
  v4[0] = @"ShowOnLockScreen";
  v4[1] = @"QuickNoteSessionExpiration";
  v5[0] = &unk_282747E80;
  v5[1] = &unk_282747E98;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [v2 registerDefaults:v3];
}

+ (int64_t)showOnLockScreen
{
  if ([MEMORY[0x277D36260] BOOLForKey:@"DisableOnLockScreen"])
  {
    return 0;
  }

  objc_opt_class();
  v3 = [MEMORY[0x277D36260] objectForKey:@"ShowOnLockScreen"];
  v4 = ICDynamicCast();

  if (v4 && ([v4 unsignedIntegerValue], objc_msgSend(v4, "unsignedIntegerValue") <= 3))
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

+ (void)setShowOnLockScreen:(int64_t)screen
{
  v4 = MEMORY[0x277D36260];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v4 setObject:v5 forKey:@"ShowOnLockScreen"];

  v6 = MEMORY[0x277D36260];

  [v6 setBool:screen == 0 forKey:@"DisableOnLockScreen"];
}

+ (int64_t)sessionDuration
{
  v2 = [MEMORY[0x277D36260] objectForKey:@"QuickNoteSessionExpiration"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (void)setSessionDuration:(int64_t)duration
{
  v3 = MEMORY[0x277D36260];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:duration];
  [v3 setObject:v4 forKey:@"QuickNoteSessionExpiration"];
}

+ (void)disableNotesOnLockScreenIfNecessary
{
  if (([self hasAccountSupportingLockScreen] & 1) == 0)
  {
    v2 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[(ICQuickNoteSessionSettings *)v2];
    }

    [MEMORY[0x277D36260] setBool:1 forKey:@"DisableOnLockScreen"];
  }
}

+ (void)updateNotesOnLockScreenWhenAccountSupportingLockScreenAdded
{
  if ([self hasAccountSupportingLockScreen])
  {
    if ([MEMORY[0x277D36260] BOOLForKey:@"DisableOnLockScreen"])
    {
      showOnLockScreenSettingValue = [self showOnLockScreenSettingValue];
      if (showOnLockScreenSettingValue)
      {
        v4 = showOnLockScreenSettingValue;
        v5 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Enabling Notes on lock screen because there are modern accounts", buf, 2u);
        }

        [MEMORY[0x277D36260] setBool:0 forKey:@"DisableOnLockScreen"];
        if (v4 != 1)
        {
          [self setShowOnLockScreen:1];
        }
      }
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Disabling Notes on lock screen because there are no modern accounts", v7, 2u);
    }

    [MEMORY[0x277D36260] setBool:1 forKey:@"DisableOnLockScreen"];
  }
}

+ (BOOL)hasAccountSupportingLockScreen
{
  v2 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v2 workerManagedObjectContext];

  LOBYTE(v2) = [ICAccount hasModernAccountInContext:workerManagedObjectContext];
  return v2;
}

+ (int64_t)showOnLockScreenSettingValue
{
  objc_opt_class();
  v2 = [MEMORY[0x277D36260] objectForKey:@"ShowOnLockScreen"];
  v3 = ICDynamicCast();

  if (v3 && ([v3 unsignedIntegerValue], objc_msgSend(v3, "unsignedIntegerValue") <= 3))
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

@end