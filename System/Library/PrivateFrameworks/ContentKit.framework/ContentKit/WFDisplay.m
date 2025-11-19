@interface WFDisplay
- (WFDisplay)initWithCoder:(id)a3;
- (WFDisplay)initWithDisplayUUID:(id)a3 deviceName:(id)a4 name:(id)a5;
- (WFDisplay)initWithDisplayUUID:(id)a3 serializationUUID:(id)a4 localizedName:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDisplay

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDisplay *)self serializationUUID];
  [v4 encodeObject:v5 forKey:@"serializationUUID"];

  v6 = [(WFDisplay *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(WFDisplay *)self deviceName];
  [v4 encodeObject:v7 forKey:@"deviceName"];
}

- (WFDisplay)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializationUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];

  if (v7)
  {
    v8 = [(WFDisplay *)self initWithDisplayUUID:v5 deviceName:v7 name:v6];
  }

  else
  {
    v8 = [(WFDisplay *)self initWithDisplayUUID:v5 name:v6];
  }

  v9 = v8;

  return v9;
}

- (WFDisplay)initWithDisplayUUID:(id)a3 serializationUUID:(id)a4 localizedName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WFDisplay;
  v11 = [(WFDisplay *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [v9 copy];
    serializationUUID = v11->_serializationUUID;
    v11->_serializationUUID = v14;

    v16 = [v10 copy];
    name = v11->_name;
    v11->_name = v16;

    v18 = v11;
  }

  return v11;
}

- (WFDisplay)initWithDisplayUUID:(id)a3 deviceName:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = WFDisplay;
  v11 = [(WFDisplay *)&v22 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [v8 copy];
    serializationUUID = v11->_serializationUUID;
    v11->_serializationUUID = v14;

    v16 = [v10 copy];
    name = v11->_name;
    v11->_name = v16;

    v18 = [v9 copy];
    deviceName = v11->_deviceName;
    v11->_deviceName = v18;

    v20 = v11;
  }

  return v11;
}

@end