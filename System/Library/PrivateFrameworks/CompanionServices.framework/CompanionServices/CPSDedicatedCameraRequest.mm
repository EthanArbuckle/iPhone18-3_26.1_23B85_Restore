@interface CPSDedicatedCameraRequest
- (CPSDedicatedCameraRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSDedicatedCameraRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:self->_deviceType withName:@"deviceType"];
  [v3 appendString:self->_deviceName withName:@"deviceName" skipIfEmpty:1];
  v5 = [v3 build];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPSDedicatedCameraRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_deviceName forKey:{@"deviceName", v6.receiver, v6.super_class}];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deviceType];
  [v4 encodeObject:v5 forKey:@"deviceType"];
}

- (CPSDedicatedCameraRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPSDedicatedCameraRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"deviceType"];
    v5->_deviceType = [v10 integerValue];
  }

  return v5;
}

@end