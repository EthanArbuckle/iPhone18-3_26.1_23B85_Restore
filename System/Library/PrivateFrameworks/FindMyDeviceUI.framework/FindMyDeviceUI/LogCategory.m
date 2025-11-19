@interface LogCategory
@end

@implementation LogCategory

uint64_t __LogCategory_Unspecified_block_invoke()
{
  LogCategory_Unspecified_log = os_log_create("com.apple.icloud.FindMyiPhoneLockScreen", "_");

  return MEMORY[0x2821F96F8]();
}

@end