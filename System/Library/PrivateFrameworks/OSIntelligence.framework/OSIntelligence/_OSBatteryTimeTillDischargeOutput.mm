@interface _OSBatteryTimeTillDischargeOutput
- (_OSBatteryTimeTillDischargeOutput)initWithCoder:(id)coder;
@end

@implementation _OSBatteryTimeTillDischargeOutput

- (_OSBatteryTimeTillDischargeOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _OSBatteryTimeTillDischargeOutput;
  v5 = [(_OSBatteryTimeTillDischargeOutput *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"predictedDischargeTime"];
    v5->_predictedDischargeTime = v6;
    v7 = v5;
  }

  return v5;
}

@end