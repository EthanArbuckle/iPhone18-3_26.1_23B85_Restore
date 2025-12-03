@interface NNMKProtectedSyncServiceClient
- (NNMKProtectedSyncServiceClient)initWithQueue:(id)queue;
@end

@implementation NNMKProtectedSyncServiceClient

- (NNMKProtectedSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected" queue:queue];
}

@end