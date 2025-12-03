@interface CRSUITemplateDashboardWidgetSceneSettings
- (NSString)proxiedApplicationBundleIdentifier;
- (OS_xpc_object)templateEndpoint;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRSUITemplateDashboardWidgetSceneSettings

- (OS_xpc_object)templateEndpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987266];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableTemplateDashboardWidgetSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987267];

  return v3;
}

@end