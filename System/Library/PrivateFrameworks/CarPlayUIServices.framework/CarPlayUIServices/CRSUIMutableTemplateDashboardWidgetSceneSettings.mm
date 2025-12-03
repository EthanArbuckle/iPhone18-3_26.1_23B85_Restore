@interface CRSUIMutableTemplateDashboardWidgetSceneSettings
- (NSString)proxiedApplicationBundleIdentifier;
- (OS_xpc_object)templateEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setProxiedApplicationBundleIdentifier:(id)identifier;
- (void)setTemplateEndpoint:(id)endpoint;
@end

@implementation CRSUIMutableTemplateDashboardWidgetSceneSettings

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987267];

  return v3;
}

- (void)setProxiedApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:2883987267];
}

- (OS_xpc_object)templateEndpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:2883987266];

  return v3;
}

- (void)setTemplateEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:endpointCopy forSetting:2883987266];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUITemplateDashboardWidgetSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end