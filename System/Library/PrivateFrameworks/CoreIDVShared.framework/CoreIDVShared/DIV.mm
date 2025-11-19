@interface DIV
@end

@implementation DIV

uint64_t __DIV_LOG_KEXT_block_invoke()
{
  DIV_LOG_KEXT_log = os_log_create("com.apple.CoreIDV.telemetry", "kextCall");

  return MEMORY[0x2821F96F8]();
}

@end