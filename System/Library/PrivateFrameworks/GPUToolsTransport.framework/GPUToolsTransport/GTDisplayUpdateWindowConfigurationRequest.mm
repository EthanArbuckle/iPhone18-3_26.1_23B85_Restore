@interface GTDisplayUpdateWindowConfigurationRequest
- (GTDisplayUpdateWindowConfigurationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTDisplayUpdateWindowConfigurationRequest

- (GTDisplayUpdateWindowConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTDisplayUpdateWindowConfigurationRequest;
  v5 = [(GTDisplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_orientation = [coderCopy decodeInt64ForKey:@"orientation"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"windowTitle"];
    windowTitle = v5->_windowTitle;
    v5->_windowTitle = v6;

    v5->_visible = [coderCopy decodeBoolForKey:@"visible"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTDisplayUpdateWindowConfigurationRequest;
  coderCopy = coder;
  [(GTDisplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_orientation forKey:{@"orientation", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_windowTitle forKey:@"windowTitle"];
  [coderCopy encodeBool:self->_visible forKey:@"visible"];
}

@end