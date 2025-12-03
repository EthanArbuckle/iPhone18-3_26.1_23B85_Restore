@interface _OSBatteryLowSOCPredictorOutput
- (_OSBatteryLowSOCPredictorOutput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSBatteryLowSOCPredictorOutput

- (void)encodeWithCoder:(id)coder
{
  confidence = self->_confidence;
  coderCopy = coder;
  [coderCopy encodeDouble:@"confidence" forKey:confidence];
  [coderCopy encodeDouble:@"confidenceThreshold" forKey:self->_confidenceThreshold];
  [coderCopy encodeBool:self->_lowSOCPredicted forKey:@"lowSOCPredicted"];
}

- (_OSBatteryLowSOCPredictorOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _OSBatteryLowSOCPredictorOutput;
  v5 = [(_OSBatteryLowSOCPredictorOutput *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    [coderCopy decodeDoubleForKey:@"confidenceThreshold"];
    v5->_confidenceThreshold = v7;
    v5->_lowSOCPredicted = [coderCopy decodeBoolForKey:@"lowSOCPredicted"];
    v8 = v5;
  }

  return v5;
}

@end