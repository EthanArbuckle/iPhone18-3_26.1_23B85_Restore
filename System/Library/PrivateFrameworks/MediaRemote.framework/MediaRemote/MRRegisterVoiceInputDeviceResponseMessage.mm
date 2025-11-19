@interface MRRegisterVoiceInputDeviceResponseMessage
- (int64_t)errorCode;
- (unsigned)deviceID;
@end

@implementation MRRegisterVoiceInputDeviceResponseMessage

- (unsigned)deviceID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 deviceID];

  return v3;
}

- (int64_t)errorCode
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 errorCode];

  return v3;
}

@end