@interface _CHSWidgetHostForConnection
- (_CHSWidgetHostForConnection)initWithIdentifier:(id)identifier configuration:(id)configuration activationState:(unint64_t)state;
@end

@implementation _CHSWidgetHostForConnection

- (_CHSWidgetHostForConnection)initWithIdentifier:(id)identifier configuration:(id)configuration activationState:(unint64_t)state
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = _CHSWidgetHostForConnection;
  v10 = [(_CHSWidgetHostForConnection *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [configurationCopy copy];
    configuration = v10->_configuration;
    v10->_configuration = v13;

    v10->_activationState = state;
  }

  return v10;
}

@end