@interface CRSUIDashboardWidgetSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mapStyle;
- (unint64_t)widgetStyle;
@end

@implementation CRSUIDashboardWidgetSceneSettings

- (unint64_t)widgetStyle
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987264];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (OS_xpc_object)endpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987265];

  return v3;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableDashboardWidgetSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end