@interface MRRegisterGameControllerResponseMessage
- (MRRegisterGameControllerResponseMessage)initWithControllerID:(unint64_t)d;
- (unint64_t)controllerID;
@end

@implementation MRRegisterGameControllerResponseMessage

- (MRRegisterGameControllerResponseMessage)initWithControllerID:(unint64_t)d
{
  v7.receiver = self;
  v7.super_class = MRRegisterGameControllerResponseMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRRegisterGameControllerResponseMessageProtobuf);
    [(_MRRegisterGameControllerResponseMessageProtobuf *)v5 setControllerID:d];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unint64_t)controllerID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  controllerID = [underlyingCodableMessage controllerID];

  return controllerID;
}

@end