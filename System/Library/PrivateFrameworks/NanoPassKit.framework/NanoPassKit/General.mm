@interface General
@end

@implementation General

void __pk_General_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "General");
  v1 = pk_General_log___logger;
  pk_General_log___logger = v0;
}

@end