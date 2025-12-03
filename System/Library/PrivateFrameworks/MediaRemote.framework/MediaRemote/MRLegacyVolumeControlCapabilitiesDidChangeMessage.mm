@interface MRLegacyVolumeControlCapabilitiesDidChangeMessage
- (unsigned)capabilities;
@end

@implementation MRLegacyVolumeControlCapabilitiesDidChangeMessage

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRCapabilitiesFromProtobuf(underlyingCodableMessage);

  return v3;
}

@end