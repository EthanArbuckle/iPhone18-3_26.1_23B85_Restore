@interface CalMigrationToolReminderMigrationController
- (BOOL)shouldPerformMigration;
- (CalMigrationToolReminderMigrationController)initWithToolOptions:(id)options defaultProvider:(id)provider;
- (void)migrationDidFinishWithResult:(unint64_t)result;
@end

@implementation CalMigrationToolReminderMigrationController

- (CalMigrationToolReminderMigrationController)initWithToolOptions:(id)options defaultProvider:(id)provider
{
  optionsCopy = options;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CalMigrationToolReminderMigrationController;
  v9 = [(CalMigrationToolReminderMigrationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toolOptions, options);
    objc_storeStrong(&v10->_defaultProvider, provider);
  }

  return v10;
}

- (BOOL)shouldPerformMigration
{
  toolOptions = [(CalMigrationToolReminderMigrationController *)self toolOptions];
  performReminderMigration = [toolOptions performReminderMigration];

  if (performReminderMigration == 1)
  {
    return 1;
  }

  if (performReminderMigration != -1)
  {
    return 0;
  }

  defaultProvider = [(CalMigrationToolReminderMigrationController *)self defaultProvider];
  shouldPerformMigration = [defaultProvider shouldPerformMigration];

  return shouldPerformMigration;
}

- (void)migrationDidFinishWithResult:(unint64_t)result
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This method should not be called in CalendarMigrationTool" userInfo:0];
  [v3 raise];
}

@end