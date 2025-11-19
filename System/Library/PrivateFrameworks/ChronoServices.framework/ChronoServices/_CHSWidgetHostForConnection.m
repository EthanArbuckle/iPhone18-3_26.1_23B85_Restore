@interface _CHSWidgetHostForConnection
- (_CHSWidgetHostForConnection)initWithIdentifier:(id)a3 configuration:(id)a4 activationState:(unint64_t)a5;
@end

@implementation _CHSWidgetHostForConnection

- (_CHSWidgetHostForConnection)initWithIdentifier:(id)a3 configuration:(id)a4 activationState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _CHSWidgetHostForConnection;
  v10 = [(_CHSWidgetHostForConnection *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    configuration = v10->_configuration;
    v10->_configuration = v13;

    v10->_activationState = a5;
  }

  return v10;
}

@end