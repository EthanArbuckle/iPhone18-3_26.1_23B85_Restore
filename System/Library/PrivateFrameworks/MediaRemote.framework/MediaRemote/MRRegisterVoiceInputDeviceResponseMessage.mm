@interface MRRegisterVoiceInputDeviceResponseMessage
- (int64_t)errorCode;
- (unsigned)deviceID;
@end

@implementation MRRegisterVoiceInputDeviceResponseMessage

- (unsigned)deviceID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  deviceID = [underlyingCodableMessage deviceID];

  return deviceID;
}

- (int64_t)errorCode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  errorCode = [underlyingCodableMessage errorCode];

  return errorCode;
}

@end