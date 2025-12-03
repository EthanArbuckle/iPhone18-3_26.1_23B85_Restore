@interface CalDefaultReminderMigrationDefaultsProvider
+ (CalDefaultReminderMigrationDefaultsProvider)sharedInstance;
- (BOOL)havePerformedReminderMigrationCleanup;
- (BOOL)shouldBackupBeforeMigration;
- (void)setHavePerformedReminderMigrationCleanup:(BOOL)cleanup;
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
  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v3 = [mEMORY[0x277CF77A8] BOOLForKey:@"ShouldBackupBeforeRemindersMigration"];

  return v3;
}

- (BOOL)havePerformedReminderMigrationCleanup
{
  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v3 = [mEMORY[0x277CF77A8] integerForKey:@"LastReminderMigrationCleanupVersion"];

  return v3 == 1;
}

- (void)setHavePerformedReminderMigrationCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v6 = mEMORY[0x277CF77A8];
  if (cleanupCopy)
  {
    [mEMORY[0x277CF77A8] setInteger:1 forKey:@"LastReminderMigrationCleanupVersion"];

    mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
    v5 = @"LastReminderMigrationCleanupSystemVersion";
    v6 = mEMORY[0x277CF77A8];
  }

  else
  {
    v5 = @"LastReminderMigrationCleanupVersion";
  }

  [mEMORY[0x277CF77A8] removeObjectForKey:v5];
}

@end