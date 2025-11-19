@interface DC
@end

@implementation DC

uint64_t __DC_LOG_CLIENT_block_invoke()
{
  DC_LOG_CLIENT_log = os_log_create("com.apple.CoreIDV", "IDCredClient");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DC_LOG_MILESTONE_LOG_block_invoke()
{
  DC_LOG_MILESTONE_LOG_log = os_log_create("com.apple.CoreIDV", "Milestones");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DC_LOG_CLIENT_block_invoke_0()
{
  DC_LOG_CLIENT_log_0 = os_log_create("com.apple.CoreIDV", "IDCredClient");

  return MEMORY[0x2821F96F8]();
}

uint64_t __DC_LOG_CLIENT_block_invoke_1()
{
  DC_LOG_CLIENT_log_1 = os_log_create("com.apple.CoreIDV", "IDCredClient");

  return MEMORY[0x2821F96F8]();
}

@end