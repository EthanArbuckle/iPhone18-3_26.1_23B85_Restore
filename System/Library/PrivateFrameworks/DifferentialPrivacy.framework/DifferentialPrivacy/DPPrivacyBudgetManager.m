@interface DPPrivacyBudgetManager
@end

@implementation DPPrivacyBudgetManager

void __64___DPPrivacyBudgetManager_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  [_DPPrivacyBudget updateAllBudgetsIn:*(a1 + 32)];
  objc_autoreleasePoolPop(v4);
}

@end