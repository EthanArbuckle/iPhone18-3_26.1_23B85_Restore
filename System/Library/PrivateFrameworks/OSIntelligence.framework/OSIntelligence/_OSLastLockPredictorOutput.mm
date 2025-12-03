@interface _OSLastLockPredictorOutput
- (_OSLastLockPredictorOutput)initWithCoder:(id)coder;
- (_OSLastLockPredictorOutput)initWithConfidenceLevel:(int64_t)level andConfidenceValue:(double)value andPredictedDuration:(double)duration andReason:(int64_t)reason;
- (_OSLastLockPredictorOutput)initWithConfidenceValue:(double)value andRelaxedThreshold:(double)threshold andStrictThreshold:(double)strictThreshold andPredictedDuration:(double)duration andReason:(int64_t)reason;
- (id)confidenceLevelString;
- (id)description;
- (id)initInvalidOutput;
- (id)outputReasonString;
- (id)predictedDurationString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSLastLockPredictorOutput

- (id)initInvalidOutput
{
  v3.receiver = self;
  v3.super_class = _OSLastLockPredictorOutput;
  result = [(_OSLastLockPredictorOutput *)&v3 init];
  if (result)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  return result;
}

- (_OSLastLockPredictorOutput)initWithConfidenceLevel:(int64_t)level andConfidenceValue:(double)value andPredictedDuration:(double)duration andReason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = _OSLastLockPredictorOutput;
  result = [(_OSLastLockPredictorOutput *)&v12 init];
  if (result)
  {
    result->_confidenceLevel = level;
    durationCopy = 0.0;
    if (duration >= 0.0)
    {
      durationCopy = duration;
    }

    result->_confidenceValue = value;
    result->_predictedDuration = durationCopy;
    result->_outputReason = reason;
  }

  return result;
}

- (_OSLastLockPredictorOutput)initWithConfidenceValue:(double)value andRelaxedThreshold:(double)threshold andStrictThreshold:(double)strictThreshold andPredictedDuration:(double)duration andReason:(int64_t)reason
{
  v15.receiver = self;
  v15.super_class = _OSLastLockPredictorOutput;
  result = [(_OSLastLockPredictorOutput *)&v15 init];
  if (!result)
  {
    return result;
  }

  result->_confidenceValue = value;
  result->_confidenceLevel = 0;
  if (duration > 0.0)
  {
    if (value > strictThreshold)
    {
      v13 = 2;
LABEL_7:
      result->_confidenceLevel = v13;
      goto LABEL_8;
    }

    if (value > threshold)
    {
      v13 = 1;
      goto LABEL_7;
    }
  }

LABEL_8:
  durationCopy = 0.0;
  if (duration >= 0.0)
  {
    durationCopy = duration;
  }

  result->_predictedDuration = durationCopy;
  result->_outputReason = reason;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  confidenceLevelString = [(_OSLastLockPredictorOutput *)self confidenceLevelString];
  confidenceValueString = [(_OSLastLockPredictorOutput *)self confidenceValueString];
  predictedDurationString = [(_OSLastLockPredictorOutput *)self predictedDurationString];
  outputReasonString = [(_OSLastLockPredictorOutput *)self outputReasonString];
  v8 = [v3 stringWithFormat:@"[Last Lock Prediction] <Level: %@ | Value: %@ | Duration: %@ | Reason: %@>", confidenceLevelString, confidenceValueString, predictedDurationString, outputReasonString];

  return v8;
}

- (id)outputReasonString
{
  outputReason = self->_outputReason;
  if (outputReason >= 4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    stringValue = [v4 stringValue];
  }

  else
  {
    stringValue = off_2799C1B40[outputReason];
  }

  return stringValue;
}

- (id)confidenceLevelString
{
  confidenceLevel = self->_confidenceLevel;
  if (confidenceLevel > 2)
  {
    return @"unknown confidence";
  }

  else
  {
    return off_2799C1B60[confidenceLevel];
  }
}

- (id)predictedDurationString
{
  predictedDuration = self->_predictedDuration;
  if (predictedDuration == 0.0)
  {
    v4 = @"invalid duration";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f hours", *&predictedDuration];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  confidenceLevel = self->_confidenceLevel;
  coderCopy = coder;
  [coderCopy encodeInteger:confidenceLevel forKey:@"confidenceLevel"];
  [coderCopy encodeDouble:@"confidenceValue" forKey:self->_confidenceValue];
  [coderCopy encodeDouble:@"predictedDuration" forKey:self->_predictedDuration];
  [coderCopy encodeInteger:self->_outputReason forKey:@"outputReason"];
}

- (_OSLastLockPredictorOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _OSLastLockPredictorOutput;
  v5 = [(_OSLastLockPredictorOutput *)&v10 init];
  if (v5)
  {
    v5->_confidenceLevel = [coderCopy decodeIntegerForKey:@"confidenceLevel"];
    [coderCopy decodeDoubleForKey:@"confidenceValue"];
    v5->_confidenceValue = v6;
    [coderCopy decodeDoubleForKey:@"predictedDuration"];
    v5->_predictedDuration = v7;
    v5->_outputReason = [coderCopy decodeIntegerForKey:@"outputReason"];
    v8 = v5;
  }

  return v5;
}

@end