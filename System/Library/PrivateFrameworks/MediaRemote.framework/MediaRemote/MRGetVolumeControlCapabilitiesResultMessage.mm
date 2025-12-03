@interface MRGetVolumeControlCapabilitiesResultMessage
- (unsigned)capabilities;
@end

@implementation MRGetVolumeControlCapabilitiesResultMessage

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  capabilities = [underlyingCodableMessage capabilities];
  v4 = MRCapabilitiesFromProtobuf(capabilities);

  return v4;
}

@end