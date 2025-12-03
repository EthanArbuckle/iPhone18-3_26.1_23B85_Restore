@interface NSDictionary(HealthDaemon)
- (uint64_t)hd_validateMetadataKeysAndValuesWithClient:()HealthDaemon error:;
@end

@implementation NSDictionary(HealthDaemon)

- (uint64_t)hd_validateMetadataKeysAndValuesWithClient:()HealthDaemon error:
{
  v6 = a3;
  entitlements = [v6 entitlements];
  hasPrivateMetadataAccess = [entitlements hasPrivateMetadataAccess];

  configuration = [v6 configuration];

  applicationSDKVersionToken = [configuration applicationSDKVersionToken];

  return [self hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:hasPrivateMetadataAccess applicationSDKVersionToken:applicationSDKVersionToken error:a4];
}

@end