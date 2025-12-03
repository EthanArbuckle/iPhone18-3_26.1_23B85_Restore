@interface CRSUIMutableDashboardWidgetSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (unint64_t)widgetStyle;
- (void)setEndpoint:(id)endpoint;
- (void)setFrameRateLimit:(id)limit;
- (void)setIconStyleConfiguration:(id)configuration;
- (void)setMapStyle:(int64_t)style;
- (void)setWidgetStyle:(unint64_t)style;
@end

@implementation CRSUIMutableDashboardWidgetSceneSettings

- (OS_xpc_object)endpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987265];

  return v3;
}

- (void)setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:endpointCopy forSetting:2883987265];
}

- (unint64_t)widgetStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987264];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setWidgetStyle:(unint64_t)style
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [otherSettings setObject:v4 forSetting:2883987264];
}

- (NSNumber)frameRateLimit
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

- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration
{
  otherSettings = [(FBSSettings *)self otherSettings];
  defaultStyleConfiguration = [otherSettings objectForSetting:3152422723];

  if (!defaultStyleConfiguration)
  {
    defaultStyleConfiguration = [MEMORY[0x277D66AB0] defaultStyleConfiguration];
  }

  return defaultStyleConfiguration;
}

- (void)setIconStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:configurationCopy forSetting:3152422723];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIDashboardWidgetSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end