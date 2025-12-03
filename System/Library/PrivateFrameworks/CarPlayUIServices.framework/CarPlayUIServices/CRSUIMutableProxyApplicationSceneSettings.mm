@interface CRSUIMutableProxyApplicationSceneSettings
- (NSString)proxiedApplicationBundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)frameRateLimit;
- (int64_t)mapStyle;
- (void)setFrameRateLimit:(id)limit;
- (void)setMapStyle:(int64_t)style;
- (void)setProxiedApplicationBundleIdentifier:(id)identifier;
@end

@implementation CRSUIMutableProxyApplicationSceneSettings

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1885817706];

  return v3;
}

- (void)setProxiedApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [identifierCopy copy];

  [otherSettings setObject:v5 forSetting:1885817706];
}

- (int64_t)mapStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422721];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setMapStyle:(int64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [otherSettings setObject:v4 forSetting:3152422721];
}

- (id)frameRateLimit
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3152422722];

  return v3;
}

- (void)setFrameRateLimit:(id)limit
{
  limitCopy = limit;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:limitCopy forSetting:3152422722];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIProxyApplicationSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end