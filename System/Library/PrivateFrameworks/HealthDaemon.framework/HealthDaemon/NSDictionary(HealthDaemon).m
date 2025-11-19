@interface NSDictionary(HealthDaemon)
- (uint64_t)hd_validateMetadataKeysAndValuesWithClient:()HealthDaemon error:;
@end

@implementation NSDictionary(HealthDaemon)

- (uint64_t)hd_validateMetadataKeysAndValuesWithClient:()HealthDaemon error:
{
  v6 = a3;
  v7 = [v6 entitlements];
  v8 = [v7 hasPrivateMetadataAccess];

  v9 = [v6 configuration];

  v10 = [v9 applicationSDKVersionToken];

  return [a1 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:v8 applicationSDKVersionToken:v10 error:a4];
}

@end