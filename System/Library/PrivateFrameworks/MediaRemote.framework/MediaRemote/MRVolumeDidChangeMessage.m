@interface MRVolumeDidChangeMessage
- (MRVolumeDidChangeMessage)initWithVolume:(float)a3 endpointUID:(id)a4 outputDeviceUID:(id)a5;
- (NSString)endpointUID;
- (NSString)outputDeviceUID;
- (float)volume;
@end

@implementation MRVolumeDidChangeMessage

- (MRVolumeDidChangeMessage)initWithVolume:(float)a3 endpointUID:(id)a4 outputDeviceUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MRVolumeDidChangeMessage;
  v10 = [(MRProtocolMessage *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRVolumeDidChangeMessageProtobuf);
    *&v12 = a3;
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setVolume:v12];
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setEndpointUID:v8];
    [(_MRVolumeDidChangeMessageProtobuf *)v11 setOutputDeviceUID:v9];
    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (float)volume
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v2 volume];
  v4 = v3;

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