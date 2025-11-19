@interface MRGetVolumeControlCapabilitiesMessage
- (MRGetVolumeControlCapabilitiesMessage)initWithOutputDeviceUID:(id)a3;
- (NSString)outputDeviceUID;
@end

@implementation MRGetVolumeControlCapabilitiesMessage

- (MRGetVolumeControlCapabilitiesMessage)initWithOutputDeviceUID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRGetVolumeControlCapabilitiesMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRGetVolumeControlCapabilitiesMessageProtobuf);
    [(_MRGetVolumeControlCapabilitiesMessageProtobuf *)v6 setOutputDeviceUID:v4];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSString)outputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUID];

  return v3;
}

@end