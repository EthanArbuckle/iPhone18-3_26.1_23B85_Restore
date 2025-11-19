@interface CDPLogSystemAnalytics
@end

@implementation CDPLogSystemAnalytics

uint64_t ___CDPLogSystemAnalytics_block_invoke()
{
  _CDPLogSystemAnalytics_log = os_log_create("com.apple.cdp", "analytics");

  return MEMORY[0x1EEE66BB8]();
}

@end