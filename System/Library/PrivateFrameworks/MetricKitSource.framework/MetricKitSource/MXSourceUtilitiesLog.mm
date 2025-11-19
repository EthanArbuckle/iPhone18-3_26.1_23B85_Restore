@interface MXSourceUtilitiesLog
@end

@implementation MXSourceUtilitiesLog

uint64_t ___MXSourceUtilitiesLog_block_invoke()
{
  _MXSourceUtilitiesLog_log = os_log_create("com.apple.metrickit.sourceutilities", "");

  return MEMORY[0x2821F96F8]();
}

@end