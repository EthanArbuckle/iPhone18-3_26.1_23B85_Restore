@interface GCGenericDeviceDataRumbleMotorValueExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataRumbleMotorValueExpressionModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataRumbleMotorValueExpressionModel

- (GCGenericDeviceDataRumbleMotorValueExpressionModel)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"motorName", v8.receiver, v8.super_class}];

  motorName = v4->_motorName;
  v4->_motorName = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v6 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"motorName"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v9 isEqual:equalCopy])
  {
    motorName = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
    motorName2 = [equalCopy motorName];
    v7 = [motorName isEqual:motorName2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  motorName = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
  v4 = [v2 stringWithFormat:@"(rumble-motor-value %@)", motorName];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  motorName = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t motorName = %@\n}", v5, self, motorName];

  return v7;
}

@end