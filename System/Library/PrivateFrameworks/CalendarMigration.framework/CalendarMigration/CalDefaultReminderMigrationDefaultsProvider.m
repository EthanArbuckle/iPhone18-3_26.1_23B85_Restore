@interface CalDefaultReminderMigrationDefaultsProvider
+ (CalDefaultReminderMigrationDefaultsProvider)sharedInstance;
- (BOOL)havePerformedReminderMigrationCleanup;
- (BOOL)shouldBackupBeforeMigration;
- (void)setHavePerformedReminderMigrationCleanup:(BOOL)a3;
@end

@implementation CalDefaultReminderMigrationDefaultsProvider

+ (CalDefaultReminderMigrationDefaultsProvider)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CalDefaultReminderMigrationDefaultsProvider sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __61__CalDefaultReminderMigrationDefaultsProvider_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldBackupBeforeMigration
{
  v2 = [MEMORY[0x277CF77A8] shared];
  v3 = [v2 BOOLForKey:@"ShouldBackupBeforeRemindersMigration"];

  return v3;
}

- (BOOL)havePerformedReminderMigrationCleanup
{
  v2 = [MEMORY[0x277CF77A8] shared];
  v3 = [v2 integerForKey:@"LastReminderMigrationCleanupVersion"];

  return v3 == 1;
}

- (void)setHavePerformedReminderMigrationCleanup:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CF77A8] shared];
  v6 = v4;
  if (v3)
  {
    [v4 setInteger:1 forKey:@"LastReminderMigrationCleanupVersion"];

    v4 = [MEMORY[0x277CF77A8] shared];
    v5 = @"LastReminderMigrationCleanupSystemVersion";
    v6 = v4;
  }

  else
  {
    v5 = @"LastReminderMigrationCleanupVersion";
  }

  [v4 removeObjectForKey:v5];
}

@end