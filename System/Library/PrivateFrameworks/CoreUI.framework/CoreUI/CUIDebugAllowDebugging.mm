@interface CUIDebugAllowDebugging
@end

@implementation CUIDebugAllowDebugging

BOOL ____CUIDebugAllowDebugging_block_invoke()
{
  result = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"CUIAllowDebugPrefs"];
  __CUIDebugAllowDebugging___AllowDebugPrefs = result;
  return result;
}

@end