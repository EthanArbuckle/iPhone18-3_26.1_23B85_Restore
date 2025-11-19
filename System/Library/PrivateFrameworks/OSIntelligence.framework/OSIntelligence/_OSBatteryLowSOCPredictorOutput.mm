@interface _OSBatteryLowSOCPredictorOutput
- (_OSBatteryLowSOCPredictorOutput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSBatteryLowSOCPredictorOutput

- (void)encodeWithCoder:(id)a3
{
  confidence = self->_confidence;
  v5 = a3;
  [v5 encodeDouble:@"confidence" forKey:confidence];
  [v5 encodeDouble:@"confidenceThreshold" forKey:self->_confidenceThreshold];
  [v5 encodeBool:self->_lowSOCPredicted forKey:@"lowSOCPredicted"];
}

- (_OSBatteryLowSOCPredictorOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _OSBatteryLowSOCPredictorOutput;
  v5 = [(_OSBatteryLowSOCPredictorOutput *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    [v4 decodeDoubleForKey:@"confidenceThreshold"];
    v5->_confidenceThreshold = v7;
    v5->_lowSOCPredicted = [v4 decodeBoolForKey:@"lowSOCPredicted"];
    v8 = v5;
  }

  return v5;
}

@end