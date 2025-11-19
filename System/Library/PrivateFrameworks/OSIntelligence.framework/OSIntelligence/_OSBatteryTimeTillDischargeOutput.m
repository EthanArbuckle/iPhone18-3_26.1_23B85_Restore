@interface _OSBatteryTimeTillDischargeOutput
- (_OSBatteryTimeTillDischargeOutput)initWithCoder:(id)a3;
@end

@implementation _OSBatteryTimeTillDischargeOutput

- (_OSBatteryTimeTillDischargeOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _OSBatteryTimeTillDischargeOutput;
  v5 = [(_OSBatteryTimeTillDischargeOutput *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"predictedDischargeTime"];
    v5->_predictedDischargeTime = v6;
    v7 = v5;
  }

  return v5;
}

@end