@interface UIArbiterEventsLog
@end

@implementation UIArbiterEventsLog

uint64_t ___UIArbiterEventsLog_block_invoke()
{
  qword_28122B728 = os_log_create("com.apple.KeyboardArbiter", "Events");

  return MEMORY[0x2821F96F8]();
}

@end