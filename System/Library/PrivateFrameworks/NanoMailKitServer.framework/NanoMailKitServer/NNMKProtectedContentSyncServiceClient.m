@interface NNMKProtectedContentSyncServiceClient
- (NNMKProtectedContentSyncServiceClient)initWithQueue:(id)a3;
@end

@implementation NNMKProtectedContentSyncServiceClient

- (NNMKProtectedContentSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedContentSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected.content" queue:a3];
}

@end