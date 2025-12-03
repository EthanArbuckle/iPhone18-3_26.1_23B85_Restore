@interface MRSetVolumeMessage
- (MRRequestDetails)details;
- (MRSetVolumeMessage)initWithVolume:(float)volume outputDeviceUID:(id)d details:(id)details;
- (NSString)outputDeviceUID;
- (float)volume;
@end

@implementation MRSetVolumeMessage

- (MRSetVolumeMessage)initWithVolume:(float)volume outputDeviceUID:(id)d details:(id)details
{
  dCopy = d;
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = MRSetVolumeMessage;
  v10 = [(MRProtocolMessage *)&v15 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRSetVolumeMessageProtobuf);
    [(_MRSetVolumeMessageProtobuf *)v11 setOutputDeviceUID:dCopy];
    *&v12 = volume;
    [(_MRSetVolumeMessageProtobuf *)v11 setVolume:v12];
    protobuf = [detailsCopy protobuf];
    [(_MRSetVolumeMessageProtobuf *)v11 setDetails:protobuf];

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

- (float)volume
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage volume];
  v4 = v3;

  return v4;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  details = [underlyingCodableMessage details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:details];

  return v6;
}

@end