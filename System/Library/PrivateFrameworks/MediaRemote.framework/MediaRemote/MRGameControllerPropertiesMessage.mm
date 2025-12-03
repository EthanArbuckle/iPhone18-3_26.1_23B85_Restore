@interface MRGameControllerPropertiesMessage
- (MRGameControllerPropertiesMessage)initWithGameControllerProperties:(id)properties controllerID:(unint64_t)d;
- (_MRGameControllerPropertiesProtobuf)properties;
- (unint64_t)controllerID;
@end

@implementation MRGameControllerPropertiesMessage

- (MRGameControllerPropertiesMessage)initWithGameControllerProperties:(id)properties controllerID:(unint64_t)d
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = MRGameControllerPropertiesMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRGameControllerPropertiesMessageProtobuf);
    [(_MRGameControllerPropertiesMessageProtobuf *)v8 setProperties:propertiesCopy];
    [(_MRGameControllerPropertiesMessageProtobuf *)v8 setControllerID:d];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (_MRGameControllerPropertiesProtobuf)properties
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  properties = [underlyingCodableMessage properties];

  return properties;
}

- (unint64_t)controllerID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  controllerID = [underlyingCodableMessage controllerID];

  return controllerID;
}

@end