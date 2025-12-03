@interface NNMKProtectedSyncServiceServer
- (NNMKProtectedSyncServiceServer)initWithQueue:(id)queue;
@end

@implementation NNMKProtectedSyncServiceServer

- (NNMKProtectedSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected" queue:queue];
}

@end