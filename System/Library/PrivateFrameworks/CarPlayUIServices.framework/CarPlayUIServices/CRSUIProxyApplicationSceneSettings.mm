@interface CRSUIProxyApplicationSceneSettings
- (NSString)proxiedApplicationBundleIdentifier;
- (id)frameRateLimit;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
@end

@implementation CRSUIProxyApplicationSceneSettings

- (NSString)proxiedApplicationBundleIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1885817706];

  return v3;
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422721];

  v4 = [v3 integerValue];
  return v4;
}

- (id)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422722];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIMutableProxyApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end