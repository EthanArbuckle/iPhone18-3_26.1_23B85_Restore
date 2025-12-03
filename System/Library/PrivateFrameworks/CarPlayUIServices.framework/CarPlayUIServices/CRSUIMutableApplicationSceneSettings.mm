@interface CRSUIMutableApplicationSceneSettings
- (NSNumber)frameRateLimit;
- (double)bannerHeight;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (void)setBannerHeight:(double)height;
- (void)setFrameRateLimit:(id)limit;
- (void)setMapStyle:(int64_t)style;
@end

@implementation CRSUIMutableApplicationSceneSettings

- (void)setBannerHeight:(double)height
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  [otherSettings setObject:v4 forSetting:3152422720];
}

- (double)bannerHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422720];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setFrameRateLimit:(id)limit
{
  limitCopy = limit;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:limitCopy forSetting:3152422722];
}

- (NSNumber)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (void)setMapStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:3152422721];
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end