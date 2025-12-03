@interface CPSDedicatedCameraRequest
- (CPSDedicatedCameraRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSDedicatedCameraRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_deviceType withName:@"deviceType"];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CPSDedicatedCameraRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_deviceName forKey:{@"deviceName", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deviceType];
  [coderCopy encodeObject:v5 forKey:@"deviceType"];
}

- (CPSDedicatedCameraRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CPSDedicatedCameraRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"deviceType"];
    v5->_deviceType = [v10 integerValue];
  }

  return v5;
}

@end