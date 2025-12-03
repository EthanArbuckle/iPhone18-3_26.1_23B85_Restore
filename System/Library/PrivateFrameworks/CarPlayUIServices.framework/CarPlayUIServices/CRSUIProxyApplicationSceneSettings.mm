@interface CRSUIProxyApplicationSceneSettings
- (NSString)proxiedApplicationBundleIdentifier;
- (id)frameRateLimit;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
@end

@implementation CRSUIProxyApplicationSceneSettings

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1885817706];

  return v3;
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableProxyApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end