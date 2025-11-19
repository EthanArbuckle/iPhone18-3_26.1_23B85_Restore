@interface MRLegacyVolumeControlCapabilitiesDidChangeMessage
- (unsigned)capabilities;
@end

@implementation MRLegacyVolumeControlCapabilitiesDidChangeMessage

- (unsigned)capabilities
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRCapabilitiesFromProtobuf(v2);

  return v3;
}

@end