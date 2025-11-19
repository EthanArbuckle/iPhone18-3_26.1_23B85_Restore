@interface DPCoreAnalyticsCollector
@end

@implementation DPCoreAnalyticsCollector

uint64_t __43___DPCoreAnalyticsCollector_sharedInstance__block_invoke()
{
  sharedInstance_reporter = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end