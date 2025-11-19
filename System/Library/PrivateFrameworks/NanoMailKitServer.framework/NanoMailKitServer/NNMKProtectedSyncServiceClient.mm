@interface NNMKProtectedSyncServiceClient
- (NNMKProtectedSyncServiceClient)initWithQueue:(id)a3;
@end

@implementation NNMKProtectedSyncServiceClient

- (NNMKProtectedSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKProtectedSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.protected" queue:a3];
}

@end