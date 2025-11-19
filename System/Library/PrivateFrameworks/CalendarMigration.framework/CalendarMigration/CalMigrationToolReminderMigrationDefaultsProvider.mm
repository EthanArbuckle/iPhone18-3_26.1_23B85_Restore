@interface CalMigrationToolReminderMigrationDefaultsProvider
- (BOOL)havePerformedReminderMigrationCleanup;
- (BOOL)shouldBackupBeforeMigration;
- (CalMigrationToolReminderMigrationDefaultsProvider)initWithToolOptions:(id)a3 reminderDefaultsProvider:(id)a4 calendarDefaultsProvider:(id)a5 calendarMigrationController:(id)a6;
- (void)setHavePerformedReminderMigrationCleanup:(BOOL)a3;
@end

@implementation CalMigrationToolReminderMigrationDefaultsProvider

- (CalMigrationToolReminderMigrationDefaultsProvider)initWithToolOptions:(id)a3 reminderDefaultsProvider:(id)a4 calendarDefaultsProvider:(id)a5 calendarMigrationController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CalMigrationToolReminderMigrationDefaultsProvider;
  v15 = [(CalMigrationToolReminderMigrationDefaultsProvider *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_toolOptions, a3);
    objc_storeStrong(&v16->_reminderDefaultsProvider, a4);
    objc_storeStrong(&v16->_calendarDefaultsProvider, a5);
    objc_storeStrong(&v16->_calendarMigrationController, a6);
  }

  return v16;
}

- (BOOL)shouldBackupBeforeMigration
{
  v3 = [(CalMigrationToolReminderMigrationDefaultsProvider *)self toolOptions];
  v4 = [v3 backupBeforeReminderMigration];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4 != -1)
  {
    return 0;
  }

  v5 = [(CalMigrationToolReminderMigrationDefaultsProvider *)self reminderDefaultsProvider];
  v6 = [v5 shouldBackupBeforeMigration];

  return v6;
}

- (BOOL)havePerformedReminderMigrationCleanup
{
  v3 = [(CalMigrationToolReminderMigrationDefaultsProvider *)self toolOptions];
  v4 = [v3 performCleanup];

  if (v4 != -1)
  {
    return v4 == 0;
  }

  v6 = [(CalMigrationToolReminderMigrationDefaultsProvider *)self reminderDefaultsProvider];
  v7 = [v6 havePerformedReminderMigrationCleanup];

  return v7;
}

- (void)setHavePerformedReminderMigrationCleanup:(BOOL)a3
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This method should not be called in CalendarMigrationTool" userInfo:0];
  [v3 raise];
}

@end