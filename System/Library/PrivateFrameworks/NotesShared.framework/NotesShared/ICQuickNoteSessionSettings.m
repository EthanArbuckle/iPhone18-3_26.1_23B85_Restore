@interface ICQuickNoteSessionSettings
+ (BOOL)hasAccountSupportingLockScreen;
+ (int64_t)sessionDuration;
+ (int64_t)showOnLockScreen;
+ (int64_t)showOnLockScreenSettingValue;
+ (void)disableNotesOnLockScreenIfNecessary;
+ (void)initialize;
+ (void)setSessionDuration:(int64_t)a3;
+ (void)setShowOnLockScreen:(int64_t)a3;
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
    v2 = [v4 unsignedIntegerValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

+ (void)setShowOnLockScreen:(int64_t)a3
{
  v4 = MEMORY[0x277D36260];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v4 setObject:v5 forKey:@"ShowOnLockScreen"];

  v6 = MEMORY[0x277D36260];

  [v6 setBool:a3 == 0 forKey:@"DisableOnLockScreen"];
}

+ (int64_t)sessionDuration
{
  v2 = [MEMORY[0x277D36260] objectForKey:@"QuickNoteSessionExpiration"];
  v3 = [v2 integerValue];

  return v3;
}

+ (void)setSessionDuration:(int64_t)a3
{
  v3 = MEMORY[0x277D36260];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v3 setObject:v4 forKey:@"QuickNoteSessionExpiration"];
}

+ (void)disableNotesOnLockScreenIfNecessary
{
  if (([a1 hasAccountSupportingLockScreen] & 1) == 0)
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
  if ([a1 hasAccountSupportingLockScreen])
  {
    if ([MEMORY[0x277D36260] BOOLForKey:@"DisableOnLockScreen"])
    {
      v3 = [a1 showOnLockScreenSettingValue];
      if (v3)
      {
        v4 = v3;
        v5 = os_log_create("com.apple.notes", "QuickNote");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Enabling Notes on lock screen because there are modern accounts", buf, 2u);
        }

        [MEMORY[0x277D36260] setBool:0 forKey:@"DisableOnLockScreen"];
        if (v4 != 1)
        {
          [a1 setShowOnLockScreen:1];
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
  v3 = [v2 workerManagedObjectContext];

  LOBYTE(v2) = [ICAccount hasModernAccountInContext:v3];
  return v2;
}

+ (int64_t)showOnLockScreenSettingValue
{
  objc_opt_class();
  v2 = [MEMORY[0x277D36260] objectForKey:@"ShowOnLockScreen"];
  v3 = ICDynamicCast();

  if (v3 && ([v3 unsignedIntegerValue], objc_msgSend(v3, "unsignedIntegerValue") <= 3))
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end