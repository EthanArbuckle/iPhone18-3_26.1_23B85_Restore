@interface CRSUITemplateInstrumentClusterSceneSettings
- (NSString)description;
- (NSString)proxiedApplicationBundleIdentifier;
- (OS_xpc_object)templateEndpoint;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CRSUITemplateInstrumentClusterSceneSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIMutableTemplateInstrumentClusterSceneSettings allocWithZone:a3];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)proxiedApplicationBundleIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273413];

  return v3;
}

- (OS_xpc_object)templateEndpoint
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:4293273414];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CRSUITemplateInstrumentClusterSceneSettings;
  v4 = [(CRSUIInstrumentClusterSceneSettings *)&v8 description];
  v5 = [(CRSUITemplateInstrumentClusterSceneSettings *)self proxiedApplicationBundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: proxied bundle identifier: %@", v4, v5];

  return v6;
}

@end