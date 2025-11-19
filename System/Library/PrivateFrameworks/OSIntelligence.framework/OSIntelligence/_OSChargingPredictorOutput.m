@interface _OSChargingPredictorOutput
- (_OSChargingPredictorOutput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSChargingPredictorOutput

- (void)encodeWithCoder:(id)a3
{
  confidence = self->_confidence;
  v5 = a3;
  [v5 encodeDouble:@"confidence" forKey:confidence];
  [v5 encodeBool:self->_meetsSystemConfidenceThreshold forKey:@"meetsThreshold"];
  [v5 encodeDouble:@"chargingDuration" forKey:self->_chargingDuration];
}

- (_OSChargingPredictorOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _OSChargingPredictorOutput;
  v5 = [(_OSChargingPredictorOutput *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v6;
    v5->_meetsSystemConfidenceThreshold = [v4 decodeBoolForKey:@"meetsThreshold"];
    [v4 decodeDoubleForKey:@"chargingDuration"];
    v5->_chargingDuration = v7;
    v8 = v5;
  }

  return v5;
}

@end