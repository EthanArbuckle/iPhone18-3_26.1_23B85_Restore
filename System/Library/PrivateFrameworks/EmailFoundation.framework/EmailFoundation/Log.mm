@interface Log
@end

@implementation Log

void ___Log_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFContentProtectionObserver");
  v1 = _Log_log;
  _Log_log = v0;
}

void ___Log_block_invoke_0()
{
  v0 = os_log_create("com.apple.email", "EFContentProtectionUtilities");
  v1 = _Log_log_0;
  _Log_log_0 = v0;
}

@end