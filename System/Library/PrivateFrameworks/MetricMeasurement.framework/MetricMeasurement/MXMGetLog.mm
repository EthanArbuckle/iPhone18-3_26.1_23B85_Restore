@interface MXMGetLog
@end

@implementation MXMGetLog

uint64_t ___MXMGetLog_block_invoke()
{
  _MXMGetLog__defaultLogger = os_log_create("com.apple.metricmeasurement", "Default");

  return MEMORY[0x2821F96F8]();
}

@end