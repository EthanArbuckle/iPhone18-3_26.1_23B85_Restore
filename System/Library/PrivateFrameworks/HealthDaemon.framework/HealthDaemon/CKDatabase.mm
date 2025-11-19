@interface CKDatabase
@end

@implementation CKDatabase

uint64_t __64__CKDatabase_OperationAnalytics__hd_addOperationObserver_queue___block_invoke()
{
  _HKInitializeLogging();
  v0 = objc_alloc(MEMORY[0x277CCD738]);
  qword_280D67BF8 = [v0 initWithName:@"CloudSyncOperationObservation" loggingCategory:*MEMORY[0x277CCC328]];

  return MEMORY[0x2821F96F8]();
}

@end