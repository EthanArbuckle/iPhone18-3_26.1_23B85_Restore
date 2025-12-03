@interface _DPPrivacyBudgetManager
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPPrivacyBudgetManager

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  databaseCopy = database;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64___DPPrivacyBudgetManager_scheduleMaintenanceWithName_database___block_invoke;
  v10[3] = &unk_27858A930;
  v11 = databaseCopy;
  v6 = databaseCopy;
  nameCopy = name;
  v8 = MEMORY[0x22AA7A8C0](v10);
  v9 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn12Hours handler:v8];

  [_DPPeriodicTaskManager registerTask:v9];
}

@end