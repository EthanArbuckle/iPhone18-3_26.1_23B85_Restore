@interface MRVolumeDidChangeMessage
- (MRVolumeDidChangeMessage)initWithVolume:(float)volume endpointUID:(id)d outputDeviceUID:(id)iD;
- (NSString)endpointUID;
- (NSString)outputDeviceUID;
- (float)volume;
@end

@implementation MRVolumeDidChangeMessage

- (MRVolumeDidChangeMessage)initWithVolume:(float)volume endpointUID:(id)d outputDeviceUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = MRVolumeDidChangeMessage;
  v10 = [(MRProtocolMessage *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRVolumeDidChangeMessageProtobuf);
    *&v12 = volume;
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setVolume:v12];
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setEndpointUID:dCopy];
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setOutputDeviceUID:iDCopy];
    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (float)volume
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage volume];
  v4 = v3;

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