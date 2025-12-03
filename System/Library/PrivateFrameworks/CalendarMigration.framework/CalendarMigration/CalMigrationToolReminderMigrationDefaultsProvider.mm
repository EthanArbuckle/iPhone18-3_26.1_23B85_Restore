@interface CalMigrationToolReminderMigrationDefaultsProvider
- (BOOL)havePerformedReminderMigrationCleanup;
- (BOOL)shouldBackupBeforeMigration;
- (CalMigrationToolReminderMigrationDefaultsProvider)initWithToolOptions:(id)options reminderDefaultsProvider:(id)provider calendarDefaultsProvider:(id)defaultsProvider calendarMigrationController:(id)controller;
- (void)setHavePerformedReminderMigrationCleanup:(BOOL)cleanup;
@end

@implementation CalMigrationToolReminderMigrationDefaultsProvider

- (CalMigrationToolReminderMigrationDefaultsProvider)initWithToolOptions:(id)options reminderDefaultsProvider:(id)provider calendarDefaultsProvider:(id)defaultsProvider calendarMigrationController:(id)controller
{
  optionsCopy = options;
  providerCopy = provider;
  defaultsProviderCopy = defaultsProvider;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = CalMigrationToolReminderMigrationDefaultsProvider;
  v15 = [(CalMigrationToolReminderMigrationDefaultsProvider *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_toolOptions, options);
    objc_storeStrong(&v16->_reminderDefaultsProvider, provider);
    objc_storeStrong(&v16->_calendarDefaultsProvider, defaultsProvider);
    objc_storeStrong(&v16->_calendarMigrationController, controller);
  }

  return v16;
}

- (BOOL)shouldBackupBeforeMigration
{
  toolOptions = [(CalMigrationToolReminderMigrationDefaultsProvider *)self toolOptions];
  backupBeforeReminderMigration = [toolOptions backupBeforeReminderMigration];

  if (backupBeforeReminderMigration == 1)
  {
    return 1;
  }

  if (backupBeforeReminderMigration != -1)
  {
    return 0;
  }

  reminderDefaultsProvider = [(CalMigrationToolReminderMigrationDefaultsProvider *)self reminderDefaultsProvider];
  shouldBackupBeforeMigration = [reminderDefaultsProvider shouldBackupBeforeMigration];

  return shouldBackupBeforeMigration;
}

- (BOOL)havePerformedReminderMigrationCleanup
{
  toolOptions = [(CalMigrationToolReminderMigrationDefaultsProvider *)self toolOptions];
  performCleanup = [toolOptions performCleanup];

  if (performCleanup != -1)
  {
    return performCleanup == 0;
  }

  reminderDefaultsProvider = [(CalMigrationToolReminderMigrationDefaultsProvider *)self reminderDefaultsProvider];
  havePerformedReminderMigrationCleanup = [reminderDefaultsProvider havePerformedReminderMigrationCleanup];

  return havePerformedReminderMigrationCleanup;
}

- (void)setHavePerformedReminderMigrationCleanup:(BOOL)cleanup
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This method should not be called in CalendarMigrationTool" userInfo:0];
  [v3 raise];
}

@end