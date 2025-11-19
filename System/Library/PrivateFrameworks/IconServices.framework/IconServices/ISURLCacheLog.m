@interface ISURLCacheLog
@end

@implementation ISURLCacheLog

uint64_t ___ISURLCacheLog_block_invoke()
{
  _ISURLCacheLog_log = os_log_create("com.apple.iconservices", "url-cache");

  return MEMORY[0x1EEE66BB8]();
}

@end