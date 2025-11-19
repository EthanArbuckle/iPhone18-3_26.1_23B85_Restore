@interface CUILog
@end

@implementation CUILog

uint64_t ___CUILog_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  _CUILog___showDebugLogs = result;
  return result;
}

@end