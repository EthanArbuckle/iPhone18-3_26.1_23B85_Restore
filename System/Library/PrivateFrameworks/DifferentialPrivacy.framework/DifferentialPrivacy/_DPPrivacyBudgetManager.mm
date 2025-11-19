@interface _DPPrivacyBudgetManager
- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4;
@end

@implementation _DPPrivacyBudgetManager

- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64___DPPrivacyBudgetManager_scheduleMaintenanceWithName_database___block_invoke;
  v10[3] = &unk_27858A930;
  v11 = v5;
  v6 = v5;
  v7 = a3;
  v8 = MEMORY[0x22AA7A8C0](v10);
  v9 = [_DPPeriodicTask taskWithName:v7 period:kSecondsIn12Hours handler:v8];

  [_DPPeriodicTaskManager registerTask:v9];
}

@end