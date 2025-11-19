@interface NSXPCConnection(BMXPCListener)
+ (id)bm_connectionWithPeer:()BMXPCListener queue:;
@end

@implementation NSXPCConnection(BMXPCListener)

+ (id)bm_connectionWithPeer:()BMXPCListener queue:
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    xpc_connection_set_target_queue(v5, v6);
  }

  v7 = [[_BMXPCConnection alloc] _initWithConnection:v5 queue:v6 flags:1];

  return v7;
}

@end