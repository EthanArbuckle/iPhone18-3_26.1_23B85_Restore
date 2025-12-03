@interface MRRegisterGameControllerMessage
- (MRRegisterGameControllerMessage)initWithProperties:(id)properties;
- (_MRGameControllerPropertiesProtobuf)properties;
@end

@implementation MRRegisterGameControllerMessage

- (MRRegisterGameControllerMessage)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = MRRegisterGameControllerMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRegisterGameControllerMessageProtobuf);
    [(_MRRegisterGameControllerMessageProtobuf *)v6 setProperties:propertiesCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (_MRGameControllerPropertiesProtobuf)properties
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  properties = [underlyingCodableMessage properties];

  return properties;
}

@end