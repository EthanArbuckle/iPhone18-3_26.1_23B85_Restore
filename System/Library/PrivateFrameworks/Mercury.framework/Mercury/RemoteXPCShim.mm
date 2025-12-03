@interface RemoteXPCShim
+ (id)anonymousConnectedPairWithTargetQueue:(id)queue;
@end

@implementation RemoteXPCShim

+ (id)anonymousConnectedPairWithTargetQueue:(id)queue
{
  queueCopy = queue;
  xpc_remote_connection_get_version_flags();
  xpc_remote_connection_create_connected_pair();

  v4 = 0;
  v5 = 0;
  v6 = [[RemoteXPCPair alloc] initWithClient:v4 server:v5];

  return v6;
}

@end