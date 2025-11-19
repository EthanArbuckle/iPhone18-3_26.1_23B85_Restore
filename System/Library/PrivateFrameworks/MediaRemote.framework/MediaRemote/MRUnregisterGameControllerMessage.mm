@interface MRUnregisterGameControllerMessage
- (MRUnregisterGameControllerMessage)initWithControllerID:(unint64_t)a3;
- (unint64_t)controllerID;
@end

@implementation MRUnregisterGameControllerMessage

- (MRUnregisterGameControllerMessage)initWithControllerID:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MRUnregisterGameControllerMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRUnregisterGameControllerMessageProtobuf);
    [(_MRUnregisterGameControllerMessageProtobuf *)v5 setControllerID:a3];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unint64_t)controllerID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 controllerID];

  return v3;
}

@end