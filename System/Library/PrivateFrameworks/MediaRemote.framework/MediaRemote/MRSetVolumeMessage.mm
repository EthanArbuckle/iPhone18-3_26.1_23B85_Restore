@interface MRSetVolumeMessage
- (MRRequestDetails)details;
- (MRSetVolumeMessage)initWithVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5;
- (NSString)outputDeviceUID;
- (float)volume;
@end

@implementation MRSetVolumeMessage

- (MRSetVolumeMessage)initWithVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = MRSetVolumeMessage;
  v10 = [(MRProtocolMessage *)&v15 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRSetVolumeMessageProtobuf);
    [(_MRSetVolumeMessageProtobuf *)v11 setOutputDeviceUID:v8];
    *&v12 = a3;
    [(_MRSetVolumeMessageProtobuf *)v11 setVolume:v12];
    v13 = [v9 protobuf];
    [(_MRSetVolumeMessageProtobuf *)v11 setDetails:v13];

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (NSString)outputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUID];

  return v3;
}

- (float)volume
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:v5];

  return v6;
}

@end