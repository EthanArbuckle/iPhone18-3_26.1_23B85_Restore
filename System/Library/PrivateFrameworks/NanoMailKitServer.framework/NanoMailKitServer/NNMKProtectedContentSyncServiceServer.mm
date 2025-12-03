@interface NNMKProtectedContentSyncServiceServer
- (NNMKProtectedContentSyncServiceServer)initWithQueue:(id)queue;
@end

@implementation NNMKProtectedContentSyncServiceServer

- (NNMKProtectedContentSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedContentSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected.content" queue:queue];
}

@end