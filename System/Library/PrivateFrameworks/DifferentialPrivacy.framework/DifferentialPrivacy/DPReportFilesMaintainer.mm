@interface DPReportFilesMaintainer
@end

@implementation DPReportFilesMaintainer

void __65___DPReportFilesMaintainer_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 32) doMaintenance];
  objc_autoreleasePoolPop(v4);
}

@end