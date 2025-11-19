@interface MRRegisterHIDDeviceResultMessage
- (MRRegisterHIDDeviceResultMessage)initWithErrorCode:(int64_t)a3 deviceIdentifier:(unint64_t)a4;
- (int64_t)errorCode;
- (unint64_t)deviceIdentifier;
@end

@implementation MRRegisterHIDDeviceResultMessage

- (MRRegisterHIDDeviceResultMessage)initWithErrorCode:(int64_t)a3 deviceIdentifier:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = MRRegisterHIDDeviceResultMessage;
  v6 = [(MRProtocolMessage *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRRegisterHIDDeviceResultMessageProtobuf);
    [(_MRRegisterHIDDeviceResultMessageProtobuf *)v7 setErrorCode:a3];
    [(_MRRegisterHIDDeviceResultMessageProtobuf *)v7 setDeviceIdentifier:a4];
    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
  }

  return v6;
}

- (int64_t)errorCode
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 errorCode];

  return v3;
}

- (unint64_t)deviceIdentifier
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 deviceIdentifier];

  return v3;
}

@end