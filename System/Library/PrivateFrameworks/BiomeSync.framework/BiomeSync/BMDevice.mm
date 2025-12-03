@interface BMDevice
- (BMDevice)initWithCoder:(id)coder;
- (BMDevice)initWithDeviceIdentifier:(id)identifier idsDeviceIdentifier:(id)deviceIdentifier name:(id)name model:(id)model platform:(int64_t)platform;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMDevice

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  deviceIdentifier = self->_deviceIdentifier;
  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  model = self->_model;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_platform];
  v7 = [v2 stringWithFormat:@"identifier: %@ idsIdentifier: %@ model: %@ platform: %@", deviceIdentifier, idsDeviceIdentifier, model, v6];

  return v7;
}

- (BMDevice)initWithDeviceIdentifier:(id)identifier idsDeviceIdentifier:(id)deviceIdentifier name:(id)name model:(id)model platform:(int64_t)platform
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  nameCopy = name;
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = BMDevice;
  v17 = [(BMDevice *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceIdentifier, identifier);
    objc_storeStrong(&v18->_idsDeviceIdentifier, deviceIdentifier);
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v18->_model, model);
    v18->_platform = platform;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceIdentifier = [(BMDevice *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];

  idsDeviceIdentifier = [(BMDevice *)self idsDeviceIdentifier];
  [coderCopy encodeObject:idsDeviceIdentifier forKey:@"idsDeviceIdentifier"];

  name = [(BMDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  model = [(BMDevice *)self model];
  [coderCopy encodeObject:model forKey:@"model"];

  [coderCopy encodeInteger:-[BMDevice platform](self forKey:{"platform"), @"platform"}];
}

- (BMDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    if (v8)
    {
      self = -[BMDevice initWithDeviceIdentifier:idsDeviceIdentifier:name:model:platform:](self, "initWithDeviceIdentifier:idsDeviceIdentifier:name:model:platform:", v5, v6, v7, v8, [coderCopy decodeIntegerForKey:@"platform"]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end