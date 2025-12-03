@interface NNMKProtectedContentSyncServiceClient
- (NNMKProtectedContentSyncServiceClient)initWithQueue:(id)queue;
@end

@implementation NNMKProtectedContentSyncServiceClient

- (NNMKProtectedContentSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedContentSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected.content" queue:queue];
}

@end