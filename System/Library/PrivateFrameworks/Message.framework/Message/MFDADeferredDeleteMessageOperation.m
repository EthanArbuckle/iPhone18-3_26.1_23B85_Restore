@interface MFDADeferredDeleteMessageOperation
@end

@implementation MFDADeferredDeleteMessageOperation

void __42___MFDADeferredDeleteMessageOperation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_279;
  log_log_279 = v1;
}

@end