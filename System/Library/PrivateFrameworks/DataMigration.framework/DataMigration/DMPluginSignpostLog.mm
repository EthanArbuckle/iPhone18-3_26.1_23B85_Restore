@interface DMPluginSignpostLog
@end

@implementation DMPluginSignpostLog

uint64_t ___DMPluginSignpostLog_block_invoke()
{
  _DMPluginSignpostLog_log = os_log_create("com.apple.migration", "pluginSignpost");

  return MEMORY[0x2821F96F8]();
}

@end