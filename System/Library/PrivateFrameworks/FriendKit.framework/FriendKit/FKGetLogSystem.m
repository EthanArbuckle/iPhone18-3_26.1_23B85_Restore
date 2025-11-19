@interface FKGetLogSystem
@end

@implementation FKGetLogSystem

void ___FKGetLogSystem_block_invoke()
{
  v3 = FriendKitBundle();
  v0 = [v3 bundleIdentifier];
  v1 = os_log_create([v0 UTF8String], "main");
  v2 = _FKGetLogSystem_log;
  _FKGetLogSystem_log = v1;
}

@end