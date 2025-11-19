@interface MRDIDSRemoteControlServiceDiscoveryChannel
- (id)debugDescription;
@end

@implementation MRDIDSRemoteControlServiceDiscoveryChannel

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  client = self->_client;
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@"  client = %@\n", v5];

  transport = self->_transport;
  v7 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@"  transport = %@\n", v7];

  [v3 appendString:@"}>"];

  return v3;
}

@end