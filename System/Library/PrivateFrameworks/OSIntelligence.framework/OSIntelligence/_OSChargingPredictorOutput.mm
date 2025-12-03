@interface _OSChargingPredictorOutput
- (_OSChargingPredictorOutput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSChargingPredictorOutput

- (void)encodeWithCoder:(id)coder
{
  confidence = self->_confidence;
  coderCopy = coder;
  [coderCopy encodeDouble:@"confidence" forKey:confidence];
  [coderCopy encodeBool:self->_meetsSystemConfidenceThreshold forKey:@"meetsThreshold"];
  [coderCopy encodeDouble:@"chargingDuration" forKey:self->_chargingDuration];
}

- (_OSChargingPredictorOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _OSChargingPredictorOutput;
  v5 = [(_OSChargingPredictorOutput *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    v5->_meetsSystemConfidenceThreshold = [coderCopy decodeBoolForKey:@"meetsThreshold"];
    [coderCopy decodeDoubleForKey:@"chargingDuration"];
    v5->_chargingDuration = v7;
    v8 = v5;
  }

  return v5;
}

@end