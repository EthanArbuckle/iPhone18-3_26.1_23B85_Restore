@interface MRRegisterForGameControllerEventsMessage
- (MRRegisterForGameControllerEventsMessage)initWithInputMode:(unsigned int)mode;
- (unsigned)inputMode;
@end

@implementation MRRegisterForGameControllerEventsMessage

- (MRRegisterForGameControllerEventsMessage)initWithInputMode:(unsigned int)mode
{
  modeCopy = mode;
  v7.receiver = self;
  v7.super_class = MRRegisterForGameControllerEventsMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRRegisterForGameControllerEventsMessageProtobuf);
    [(_MRRegisterForGameControllerEventsMessageProtobuf *)v5 setInputModeFlags:MRProtobufFromGameControllerInputMode(modeCopy)];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unsigned)inputMode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRGameControllerInputModeFromProtobuf([underlyingCodableMessage inputModeFlags]);

  return v3;
}

@end