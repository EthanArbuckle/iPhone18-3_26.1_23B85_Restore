@interface NSInvocation
@end

@implementation NSInvocation

void __35__NSInvocation_MailExtensions__log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_36;
  log_log_36 = v1;
}

@end