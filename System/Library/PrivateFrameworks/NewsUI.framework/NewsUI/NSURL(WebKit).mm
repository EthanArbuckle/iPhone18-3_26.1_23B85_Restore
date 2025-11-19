@interface NSURL(WebKit)
+ (uint64_t)nu_canHandleNavigationAction:()WebKit;
@end

@implementation NSURL(WebKit)

+ (uint64_t)nu_canHandleNavigationAction:()WebKit
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v3 targetFrame];

  v6 = [v5 isMainFrame];
  v7 = [MEMORY[0x277D7B810] _canHandleRequest:v4 forMainFrame:v6];

  return v7;
}

@end