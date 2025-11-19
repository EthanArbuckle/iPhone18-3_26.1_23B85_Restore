@interface MRGetVolumeControlCapabilitiesResultMessage
- (unsigned)capabilities;
@end

@implementation MRGetVolumeControlCapabilitiesResultMessage

- (unsigned)capabilities
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 capabilities];
  v4 = MRCapabilitiesFromProtobuf(v3);

  return v4;
}

@end