@interface CRSUIApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (double)bannerHeight;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
@end

@implementation CRSUIApplicationSceneSettings

- (double)bannerHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422720];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422722];

  return v3;
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422721];

  v4 = [v3 integerValue];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIMutableApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end