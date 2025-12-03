@interface MRGetVolumeMessage
- (MRGetVolumeMessage)initWithOutputDeviceUID:(id)d;
- (NSString)outputDeviceUID;
@end

@implementation MRGetVolumeMessage

- (MRGetVolumeMessage)initWithOutputDeviceUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = MRGetVolumeMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRGetVolumeMessageProtobuf);
    [(_MRGetVolumeMessageProtobuf *)v6 setOutputDeviceUID:dCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

@end