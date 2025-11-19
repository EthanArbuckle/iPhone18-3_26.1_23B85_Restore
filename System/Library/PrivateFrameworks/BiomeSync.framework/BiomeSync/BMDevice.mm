@interface BMDevice
- (BMDevice)initWithCoder:(id)a3;
- (BMDevice)initWithDeviceIdentifier:(id)a3 idsDeviceIdentifier:(id)a4 name:(id)a5 model:(id)a6 platform:(int64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BMDevice)initWithDeviceIdentifier:(id)a3 idsDeviceIdentifier:(id)a4 name:(id)a5 model:(id)a6 platform:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BMDevice;
  v17 = [(BMDevice *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceIdentifier, a3);
    objc_storeStrong(&v18->_idsDeviceIdentifier, a4);
    objc_storeStrong(&v18->_name, a5);
    objc_storeStrong(&v18->_model, a6);
    v18->_platform = a7;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(BMDevice *)self deviceIdentifier];
  [v8 encodeObject:v4 forKey:@"deviceIdentifier"];

  v5 = [(BMDevice *)self idsDeviceIdentifier];
  [v8 encodeObject:v5 forKey:@"idsDeviceIdentifier"];

  v6 = [(BMDevice *)self name];
  [v8 encodeObject:v6 forKey:@"name"];

  v7 = [(BMDevice *)self model];
  [v8 encodeObject:v7 forKey:@"model"];

  [v8 encodeInteger:-[BMDevice platform](self forKey:{"platform"), @"platform"}];
}

- (BMDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    if (v8)
    {
      self = -[BMDevice initWithDeviceIdentifier:idsDeviceIdentifier:name:model:platform:](self, "initWithDeviceIdentifier:idsDeviceIdentifier:name:model:platform:", v5, v6, v7, v8, [v4 decodeIntegerForKey:@"platform"]);
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end