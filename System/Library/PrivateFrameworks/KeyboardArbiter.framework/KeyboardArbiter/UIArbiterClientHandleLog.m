@interface UIArbiterClientHandleLog
@end

@implementation UIArbiterClientHandleLog

uint64_t ___UIArbiterClientHandleLog_block_invoke()
{
  qword_28122B738 = os_log_create("com.apple.KeyboardArbiter", "Handle");

  return MEMORY[0x2821F96F8]();
}

@end