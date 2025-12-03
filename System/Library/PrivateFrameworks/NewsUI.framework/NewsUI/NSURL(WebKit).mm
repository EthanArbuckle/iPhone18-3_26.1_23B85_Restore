@interface NSURL(WebKit)
+ (uint64_t)nu_canHandleNavigationAction:()WebKit;
@end

@implementation NSURL(WebKit)

+ (uint64_t)nu_canHandleNavigationAction:()WebKit
{
  v3 = a3;
  request = [v3 request];
  targetFrame = [v3 targetFrame];

  isMainFrame = [targetFrame isMainFrame];
  v7 = [MEMORY[0x277D7B810] _canHandleRequest:request forMainFrame:isMainFrame];

  return v7;
}

@end