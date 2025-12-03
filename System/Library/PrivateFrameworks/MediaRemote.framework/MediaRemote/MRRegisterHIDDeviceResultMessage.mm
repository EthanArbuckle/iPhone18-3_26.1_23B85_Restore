@interface MRRegisterHIDDeviceResultMessage
- (MRRegisterHIDDeviceResultMessage)initWithErrorCode:(int64_t)code deviceIdentifier:(unint64_t)identifier;
- (int64_t)errorCode;
- (unint64_t)deviceIdentifier;
@end

@implementation MRRegisterHIDDeviceResultMessage

- (MRRegisterHIDDeviceResultMessage)initWithErrorCode:(int64_t)code deviceIdentifier:(unint64_t)identifier
{
  v9.receiver = self;
  v9.super_class = MRRegisterHIDDeviceResultMessage;
  v6 = [(MRProtocolMessage *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRRegisterHIDDeviceResultMessageProtobuf);
    [(_MRRegisterHIDDeviceResultMessageProtobuf *)v7 setErrorCode:code];
    [(_MRRegisterHIDDeviceResultMessageProtobuf *)v7 setDeviceIdentifier:identifier];
    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
  }

  return v6;
}

- (int64_t)errorCode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  errorCode = [underlyingCodableMessage errorCode];

  return errorCode;
}

- (unint64_t)deviceIdentifier
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  deviceIdentifier = [underlyingCodableMessage deviceIdentifier];

  return deviceIdentifier;
}

@end