@interface GCGenericDeviceDataRumbleMotorValueExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataRumbleMotorValueExpressionModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataRumbleMotorValueExpressionModel

- (GCGenericDeviceDataRumbleMotorValueExpressionModel)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"motorName", v8.receiver, v8.super_class}];

  motorName = v4->_motorName;
  v4->_motorName = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v6 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"motorName"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataRumbleMotorValueExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v9 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
    v6 = [v4 motorName];
    v7 = [v5 isEqual:v6];
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
  v3 = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
  v4 = [v2 stringWithFormat:@"(rumble-motor-value %@)", v3];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceDataRumbleMotorValueExpressionModel *)self motorName];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t motorName = %@\n}", v5, self, v6];

  return v7;
}

@end