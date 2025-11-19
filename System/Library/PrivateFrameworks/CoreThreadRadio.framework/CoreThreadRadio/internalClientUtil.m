@interface internalClientUtil
- (internalClientUtil)init;
- (void)cleanPreferred;
@end

@implementation internalClientUtil

- (internalClientUtil)init
{
  v3.receiver = self;
  v3.super_class = internalClientUtil;
  return [(internalClientUtil *)&v3 init];
}

- (void)cleanPreferred
{
  v2 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v3 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initApplePrivateStoreWithBackingStore:v2];

  [v3 deletePreferredAndFrozenThreadNetworksWithCompletion:&__block_literal_global_1];
}

@end