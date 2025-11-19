@interface Sync
@end

@implementation Sync

void __pk_Sync_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "Sync");
  v1 = pk_Sync_log___logger;
  pk_Sync_log___logger = v0;
}

@end