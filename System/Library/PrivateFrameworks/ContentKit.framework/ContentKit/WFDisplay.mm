@interface WFDisplay
- (WFDisplay)initWithCoder:(id)coder;
- (WFDisplay)initWithDisplayUUID:(id)d deviceName:(id)name name:(id)a5;
- (WFDisplay)initWithDisplayUUID:(id)d serializationUUID:(id)iD localizedName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDisplay

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializationUUID = [(WFDisplay *)self serializationUUID];
  [coderCopy encodeObject:serializationUUID forKey:@"serializationUUID"];

  name = [(WFDisplay *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  deviceName = [(WFDisplay *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
}

- (WFDisplay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializationUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];

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

- (WFDisplay)initWithDisplayUUID:(id)d serializationUUID:(id)iD localizedName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = WFDisplay;
  v11 = [(WFDisplay *)&v20 init];
  if (v11)
  {
    v12 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [iDCopy copy];
    serializationUUID = v11->_serializationUUID;
    v11->_serializationUUID = v14;

    v16 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v16;

    v18 = v11;
  }

  return v11;
}

- (WFDisplay)initWithDisplayUUID:(id)d deviceName:(id)name name:(id)a5
{
  dCopy = d;
  nameCopy = name;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = WFDisplay;
  v11 = [(WFDisplay *)&v22 init];
  if (v11)
  {
    v12 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [dCopy copy];
    serializationUUID = v11->_serializationUUID;
    v11->_serializationUUID = v14;

    v16 = [v10 copy];
    name = v11->_name;
    v11->_name = v16;

    v18 = [nameCopy copy];
    deviceName = v11->_deviceName;
    v11->_deviceName = v18;

    v20 = v11;
  }

  return v11;
}

@end