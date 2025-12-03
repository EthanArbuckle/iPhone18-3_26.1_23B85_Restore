@interface CRSUIApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (double)bannerHeight;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
@end

@implementation CRSUIApplicationSceneSettings

- (double)bannerHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422720];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end