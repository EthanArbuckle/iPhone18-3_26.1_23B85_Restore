@interface RemotePassAction
@end

@implementation RemotePassAction

void __pk_RemotePassAction_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "RemotePassAction");
  v1 = pk_RemotePassAction_log___logger;
  pk_RemotePassAction_log___logger = v0;
}

@end