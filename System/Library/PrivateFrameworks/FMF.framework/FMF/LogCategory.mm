@interface LogCategory
@end

@implementation LogCategory

uint64_t __LogCategory_Daemon_block_invoke()
{
  LogCategory_Daemon_log = os_log_create("com.apple.icloud.fmfd", "_");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LogCategory_FMFMapXPC_block_invoke()
{
  LogCategory_FMFMapXPC_log = os_log_create("com.apple.icloud.fmfd", "FMFMapXPC");

  return MEMORY[0x2821F96F8]();
}

@end