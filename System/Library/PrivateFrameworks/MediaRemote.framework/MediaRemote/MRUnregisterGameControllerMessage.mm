@interface MRUnregisterGameControllerMessage
- (MRUnregisterGameControllerMessage)initWithControllerID:(unint64_t)d;
- (unint64_t)controllerID;
@end

@implementation MRUnregisterGameControllerMessage

- (MRUnregisterGameControllerMessage)initWithControllerID:(unint64_t)d
{
  v7.receiver = self;
  v7.super_class = MRUnregisterGameControllerMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRUnregisterGameControllerMessageProtobuf);
    [(_MRUnregisterGameControllerMessageProtobuf *)v5 setControllerID:d];
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