@interface MRAdjustVolumeMessage
- (MRAdjustVolumeMessage)initWithAdjustment:(int64_t)adjustment outputDeviceUID:(id)d details:(id)details;
- (MRRequestDetails)details;
- (NSString)outputDeviceUID;
- (int64_t)adjustment;
@end

@implementation MRAdjustVolumeMessage

- (MRAdjustVolumeMessage)initWithAdjustment:(int64_t)adjustment outputDeviceUID:(id)d details:(id)details
{
  dCopy = d;
  detailsCopy = details;
  v14.receiver = self;
  v14.super_class = MRAdjustVolumeMessage;
  v10 = [(MRProtocolMessage *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRAdjustVolumeMessageProtobuf);
    [(_MRAdjustVolumeMessageProtobuf *)v11 setAdjustment:adjustment];
    [(_MRAdjustVolumeMessageProtobuf *)v11 setOutputDeviceUID:dCopy];
    protobuf = [detailsCopy protobuf];
    [(_MRAdjustVolumeMessageProtobuf *)v11 setDetails:protobuf];

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (int64_t)adjustment
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  adjustment = [underlyingCodableMessage adjustment];

  return adjustment;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
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