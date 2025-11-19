@interface UIArbiterLog
@end

@implementation UIArbiterLog

uint64_t ___UIArbiterLog_block_invoke()
{
  _MergedGlobals_1 = os_log_create("com.apple.UIKit", "KeyboardArbiter");

  return MEMORY[0x2821F96F8]();
}

@end