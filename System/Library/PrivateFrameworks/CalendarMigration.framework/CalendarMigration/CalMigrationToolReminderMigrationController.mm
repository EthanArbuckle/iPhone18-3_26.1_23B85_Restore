@interface CalMigrationToolReminderMigrationController
- (BOOL)shouldPerformMigration;
- (CalMigrationToolReminderMigrationController)initWithToolOptions:(id)a3 defaultProvider:(id)a4;
- (void)migrationDidFinishWithResult:(unint64_t)a3;
@end

@implementation CalMigrationToolReminderMigrationController

- (CalMigrationToolReminderMigrationController)initWithToolOptions:(id)a3 defaultProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalMigrationToolReminderMigrationController;
  v9 = [(CalMigrationToolReminderMigrationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toolOptions, a3);
    objc_storeStrong(&v10->_defaultProvider, a4);
  }

  return v10;
}

- (BOOL)shouldPerformMigration
{
  v3 = [(CalMigrationToolReminderMigrationController *)self toolOptions];
  v4 = [v3 performReminderMigration];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4 != -1)
  {
    return 0;
  }

  v5 = [(CalMigrationToolReminderMigrationController *)self defaultProvider];
  v6 = [v5 shouldPerformMigration];

  return v6;
}

- (void)migrationDidFinishWithResult:(unint64_t)a3
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This method should not be called in CalendarMigrationTool" userInfo:0];
  [v3 raise];
}

@end