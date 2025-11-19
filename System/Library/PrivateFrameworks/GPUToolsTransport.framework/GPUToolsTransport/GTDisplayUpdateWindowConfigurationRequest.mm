@interface GTDisplayUpdateWindowConfigurationRequest
- (GTDisplayUpdateWindowConfigurationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDisplayUpdateWindowConfigurationRequest

- (GTDisplayUpdateWindowConfigurationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTDisplayUpdateWindowConfigurationRequest;
  v5 = [(GTDisplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_orientation = [v4 decodeInt64ForKey:@"orientation"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windowTitle"];
    windowTitle = v5->_windowTitle;
    v5->_windowTitle = v6;

    v5->_visible = [v4 decodeBoolForKey:@"visible"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTDisplayUpdateWindowConfigurationRequest;
  v4 = a3;
  [(GTDisplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_orientation forKey:{@"orientation", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_windowTitle forKey:@"windowTitle"];
  [v4 encodeBool:self->_visible forKey:@"visible"];
}

@end