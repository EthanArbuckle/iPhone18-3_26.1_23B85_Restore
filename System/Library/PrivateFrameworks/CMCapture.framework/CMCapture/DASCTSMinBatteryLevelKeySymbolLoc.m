@interface DASCTSMinBatteryLevelKeySymbolLoc
@end

@implementation DASCTSMinBatteryLevelKeySymbolLoc

void *__get_DASCTSMinBatteryLevelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DuetActivitySchedulerLibrary();
  result = dlsym(v2, "_DASCTSMinBatteryLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DASCTSMinBatteryLevelKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end