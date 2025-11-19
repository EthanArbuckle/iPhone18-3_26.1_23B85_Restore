@interface CRSUIMutableApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (double)bannerHeight;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
- (void)setBannerHeight:(double)a3;
- (void)setFrameRateLimit:(id)a3;
- (void)setMapStyle:(int64_t)a3;
@end

@implementation CRSUIMutableApplicationSceneSettings

- (void)setBannerHeight:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:3152422720];
}

- (double)bannerHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422720];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setFrameRateLimit:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3152422722];
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422722];

  return v3;
}

- (void)setMapStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:3152422721];
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422721];

  v4 = [v3 integerValue];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIApplicationSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end