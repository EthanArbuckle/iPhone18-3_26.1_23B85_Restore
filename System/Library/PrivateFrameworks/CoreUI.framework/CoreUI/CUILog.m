@interface CUILog
@end

@implementation CUILog

BOOL ___CUILog_block_invoke()
{
  result = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"CUIShowDebugLogs"];
  _CUILog___showDebugLogs = result;
  return result;
}

@end