@interface CRSUIMutableDashboardWidgetSceneSettings
- (NSNumber)frameRateLimit;
- (OS_xpc_object)endpoint;
- (SBSHomeScreenIconStyleConfiguration)iconStyleConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)mapStyle;
- (unint64_t)widgetStyle;
- (void)setEndpoint:(id)a3;
- (void)setFrameRateLimit:(id)a3;
- (void)setIconStyleConfiguration:(id)a3;
- (void)setMapStyle:(int64_t)a3;
- (void)setWidgetStyle:(unint64_t)a3;
@end

@implementation CRSUIMutableDashboardWidgetSceneSettings

- (OS_xpc_object)endpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2883987265];

  return v3;
}

- (void)setEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:2883987265];
}

- (unint64_t)widgetStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:2883987264];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)setWidgetStyle:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:2883987264];
}

- (NSNumber)frameRateLimit
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422722];

  return v3;
}

- (void)setFrameRateLimit:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3152422722];
}

- (int64_t)mapStyle
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3152422721];

  v4 = [v3 integerValue];
  return v4;
}

- (void)setMapStyle:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:3152422721];
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

- (void)setIconStyleConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3152422723];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIDashboardWidgetSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end