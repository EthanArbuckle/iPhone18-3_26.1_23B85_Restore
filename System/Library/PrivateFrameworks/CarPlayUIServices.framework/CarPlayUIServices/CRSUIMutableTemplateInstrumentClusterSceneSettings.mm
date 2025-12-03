@interface CRSUIMutableTemplateInstrumentClusterSceneSettings
- (NSString)description;
- (NSString)proxiedApplicationBundleIdentifier;
- (OS_xpc_object)templateEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setProxiedApplicationBundleIdentifier:(id)identifier;
- (void)setTemplateEndpoint:(id)endpoint;
@end

@implementation CRSUIMutableTemplateInstrumentClusterSceneSettings

- (NSString)proxiedApplicationBundleIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273413];

  return v3;
}

- (void)setProxiedApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:4293273413];
}

- (OS_xpc_object)templateEndpoint
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:4293273414];

  return v3;
}

- (void)setTemplateEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:endpointCopy forSetting:4293273414];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUITemplateInstrumentClusterSceneSettings allocWithZone:zone];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CRSUIMutableTemplateInstrumentClusterSceneSettings;
  v4 = [(CRSUIMutableInstrumentClusterSceneSettings *)&v8 description];
  proxiedApplicationBundleIdentifier = [(CRSUIMutableTemplateInstrumentClusterSceneSettings *)self proxiedApplicationBundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@: proxied bundle identifier: %@", v4, proxiedApplicationBundleIdentifier];

  return v6;
}

@end