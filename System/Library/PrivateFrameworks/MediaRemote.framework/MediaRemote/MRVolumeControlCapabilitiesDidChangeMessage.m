@interface MRVolumeControlCapabilitiesDidChangeMessage
- (NSString)endpointUID;
- (NSString)outputDeviceUID;
- (unsigned)capabilities;
@end

@implementation MRVolumeControlCapabilitiesDidChangeMessage

- (unsigned)capabilities
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 capabilities];
  v4 = MRCapabilitiesFromProtobuf(v3);

  return v4;
}

- (NSString)endpointUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 endpointUID];

  return v3;
}

- (NSString)outputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUID];

  return v3;
}

@end