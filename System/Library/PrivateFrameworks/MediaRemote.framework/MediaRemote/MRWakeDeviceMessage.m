@interface MRWakeDeviceMessage
- (MRWakeDeviceMessage)init;
@end

@implementation MRWakeDeviceMessage

- (MRWakeDeviceMessage)init
{
  v5.receiver = self;
  v5.super_class = MRWakeDeviceMessage;
  v2 = [(MRProtocolMessage *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_MRWakeDeviceMessageProtobuf);
    [(MRProtocolMessage *)v2 setUnderlyingCodableMessage:v3];
  }

  return v2;
}

@end