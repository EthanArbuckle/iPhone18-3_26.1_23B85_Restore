@interface CRSUITemplateInstrumentClusterSceneSettings
- (NSString)description;
- (NSString)proxiedApplicationBundleIdentifier;
- (OS_xpc_object)templateEndpoint;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRSUITemplateInstrumentClusterSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableTemplateInstrumentClusterSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273413];

  return v3;
}

- (OS_xpc_object)templateEndpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273414];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CRSUITemplateInstrumentClusterSceneSettings;
  v4 = [(CRSUIInstrumentClusterSceneSettings *)&v8 description];
  proxiedApplicationBundleIdentifier = [(CRSUITemplateInstrumentClusterSceneSettings *)self proxiedApplicationBundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: proxied bundle identifier: %@", v4, proxiedApplicationBundleIdentifier];

  return v6;
}

@end