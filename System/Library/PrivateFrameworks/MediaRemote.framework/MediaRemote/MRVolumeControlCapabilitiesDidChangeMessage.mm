@interface MRVolumeControlCapabilitiesDidChangeMessage
- (NSString)endpointUID;
- (NSString)outputDeviceUID;
- (unsigned)capabilities;
@end

@implementation MRVolumeControlCapabilitiesDidChangeMessage

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  capabilities = [underlyingCodableMessage capabilities];
  v4 = MRCapabilitiesFromProtobuf(capabilities);

  return v4;
}

- (NSString)endpointUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  endpointUID = [underlyingCodableMessage endpointUID];

  return endpointUID;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

@end