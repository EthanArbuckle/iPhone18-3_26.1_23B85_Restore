@interface MRRegisterForGameControllerEventsMessage
- (MRRegisterForGameControllerEventsMessage)initWithInputMode:(unsigned int)a3;
- (unsigned)inputMode;
@end

@implementation MRRegisterForGameControllerEventsMessage

- (MRRegisterForGameControllerEventsMessage)initWithInputMode:(unsigned int)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRRegisterForGameControllerEventsMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRRegisterForGameControllerEventsMessageProtobuf);
    [(_MRRegisterForGameControllerEventsMessageProtobuf *)v5 setInputModeFlags:MRProtobufFromGameControllerInputMode(v3)];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unsigned)inputMode
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRGameControllerInputModeFromProtobuf([v2 inputModeFlags]);

  return v3;
}

@end