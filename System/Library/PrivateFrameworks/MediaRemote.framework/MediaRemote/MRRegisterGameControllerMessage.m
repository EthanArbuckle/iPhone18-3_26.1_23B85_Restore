@interface MRRegisterGameControllerMessage
- (MRRegisterGameControllerMessage)initWithProperties:(id)a3;
- (_MRGameControllerPropertiesProtobuf)properties;
@end

@implementation MRRegisterGameControllerMessage

- (MRRegisterGameControllerMessage)initWithProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRRegisterGameControllerMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRegisterGameControllerMessageProtobuf);
    [(_MRRegisterGameControllerMessageProtobuf *)v6 setProperties:v4];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (_MRGameControllerPropertiesProtobuf)properties
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 properties];

  return v3;
}

@end