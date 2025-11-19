@interface CRSUIDashboardWidgetSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
- (unint64_t)widgetStyle;
@end

@implementation CRSUIDashboardWidgetSceneSettings

- (unint64_t)widgetStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2883987264];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (OS_xpc_object)endpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2883987265];

  return v3;
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

- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422723];

  if (!v3)
  {
    v3 = [MEMORY[0x277D66AB0] defaultStyleConfiguration];
  }

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIMutableDashboardWidgetSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end