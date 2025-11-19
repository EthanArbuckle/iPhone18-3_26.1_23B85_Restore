@interface _OSInactivityPredictorOutput
- (_OSInactivityPredictorOutput)initWithCoder:(id)a3;
- (_OSInactivityPredictorOutput)initWithConfidenceLevel:(int64_t)a3 andConfidenceValue:(double)a4 andPredictedDuration:(double)a5 andReason:(int64_t)a6;
- (_OSInactivityPredictorOutput)initWithConfidenceValue:(double)a3 andRelaxedThreshold:(double)a4 andStrictThreshold:(double)a5 andPredictedDuration:(double)a6 andReason:(int64_t)a7;
- (_OSInactivityPredictorOutput)initWithConfidenceValue:(double)a3 andRelaxedThreshold:(double)a4 andStrictThreshold:(double)a5 andPredictedDuration:(double)a6 withReason:(int64_t)a7;
- (id)confidenceLevelString;
- (id)description;
- (id)initInvalidOutput;
- (id)outputReasonString;
- (id)predictedDurationString;
- (void)adjustedPredictedDurationWithStrictLeeway:(double)a3 andRelaxedLeeway:(double)a4 andMaxPredictionCap:(double)a5;
- (void)encodeWithCoder:(id)a3;
- (void)safeSubtractWaitTimeFromPredictedDuration:(double)a3;
@end

@implementation _OSInactivityPredictorOutput

- (id)initInvalidOutput
{
  v3.receiver = self;
  v3.super_class = _OSInactivityPredictorOutput;
  result = [(_OSInactivityPredictorOutput *)&v3 init];
  if (result)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  return result;
}

- (_OSInactivityPredictorOutput)initWithConfidenceLevel:(int64_t)a3 andConfidenceValue:(double)a4 andPredictedDuration:(double)a5 andReason:(int64_t)a6
{
  v12.receiver = self;
  v12.super_class = _OSInactivityPredictorOutput;
  result = [(_OSInactivityPredictorOutput *)&v12 init];
  if (result)
  {
    result->_confidenceLevel = a3;
    v11 = 0.0;
    if (a5 >= 0.0)
    {
      v11 = a5;
    }

    result->_confidenceValue = a4;
    result->_predictedDuration = v11;
    result->_outputReason = a6;
  }

  return result;
}

- (_OSInactivityPredictorOutput)initWithConfidenceValue:(double)a3 andRelaxedThreshold:(double)a4 andStrictThreshold:(double)a5 andPredictedDuration:(double)a6 andReason:(int64_t)a7
{
  v15.receiver = self;
  v15.super_class = _OSInactivityPredictorOutput;
  result = [(_OSInactivityPredictorOutput *)&v15 init];
  if (!result)
  {
    return result;
  }

  result->_confidenceValue = a3;
  result->_confidenceLevel = 0;
  if (a6 > 0.0)
  {
    if (a3 > a5)
    {
      v13 = 2;
LABEL_7:
      result->_confidenceLevel = v13;
      goto LABEL_8;
    }

    if (a3 > a4)
    {
      v13 = 1;
      goto LABEL_7;
    }
  }

LABEL_8:
  v14 = 0.0;
  if (a6 >= 0.0)
  {
    v14 = a6;
  }

  result->_predictedDuration = v14;
  result->_outputReason = a7;
  return result;
}

- (_OSInactivityPredictorOutput)initWithConfidenceValue:(double)a3 andRelaxedThreshold:(double)a4 andStrictThreshold:(double)a5 andPredictedDuration:(double)a6 withReason:(int64_t)a7
{
  v15.receiver = self;
  v15.super_class = _OSInactivityPredictorOutput;
  result = [(_OSInactivityPredictorOutput *)&v15 init];
  if (!result)
  {
    return result;
  }

  result->_confidenceValue = a3;
  result->_confidenceLevel = 0;
  if (a6 > 0.0)
  {
    if (a3 > a5)
    {
      v13 = 2;
LABEL_7:
      result->_confidenceLevel = v13;
      goto LABEL_8;
    }

    if (a3 > a4)
    {
      v13 = 1;
      goto LABEL_7;
    }
  }

LABEL_8:
  v14 = 0.0;
  if (a6 >= 0.0)
  {
    v14 = a6;
  }

  result->_predictedDuration = v14;
  result->_outputReason = a7;
  return result;
}

- (void)adjustedPredictedDurationWithStrictLeeway:(double)a3 andRelaxedLeeway:(double)a4 andMaxPredictionCap:(double)a5
{
  confidenceLevel = self->_confidenceLevel;
  if (confidenceLevel)
  {
    if (confidenceLevel != 2)
    {
      a3 = a4;
    }

    v6 = a3 * self->_predictedDuration;
    self->_predictedDuration = v6;
  }

  else
  {
    self->_predictedDuration = 0.0;
    v6 = 0.0;
  }

  if (a5 > 0.0)
  {
    if (v6 >= a5)
    {
      v6 = a5;
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    self->_predictedDuration = v6;
  }
}

- (void)safeSubtractWaitTimeFromPredictedDuration:(double)a3
{
  v3 = self->_predictedDuration + a3 / -3600.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  self->_predictedDuration = v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_OSInactivityPredictorOutput *)self confidenceLevelString];
  v5 = [(_OSInactivityPredictorOutput *)self confidenceValueString];
  v6 = [(_OSInactivityPredictorOutput *)self predictedDurationString];
  v7 = [(_OSInactivityPredictorOutput *)self outputReasonString];
  v8 = [v3 stringWithFormat:@"[Inactivity Prediction] <Level: %@ | Value: %@ | Duration: %@ | Reason: %@>", v4, v5, v6, v7];

  return v8;
}

- (id)outputReasonString
{
  outputReason = self->_outputReason;
  if (outputReason >= 6)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v3 = [v4 stringValue];
  }

  else
  {
    v3 = off_2799C1C38[outputReason];
  }

  return v3;
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
    return off_2799C1C68[confidenceLevel];
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

- (void)encodeWithCoder:(id)a3
{
  confidenceLevel = self->_confidenceLevel;
  v5 = a3;
  [v5 encodeInteger:confidenceLevel forKey:@"confidenceLevel"];
  [v5 encodeDouble:@"confidenceValue" forKey:self->_confidenceValue];
  [v5 encodeDouble:@"predictedDuration" forKey:self->_predictedDuration];
  [v5 encodeInteger:self->_outputReason forKey:@"outputReason"];
}

- (_OSInactivityPredictorOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _OSInactivityPredictorOutput;
  v5 = [(_OSInactivityPredictorOutput *)&v10 init];
  if (v5)
  {
    v5->_confidenceLevel = [v4 decodeIntegerForKey:@"confidenceLevel"];
    [v4 decodeDoubleForKey:@"confidenceValue"];
    v5->_confidenceValue = v6;
    [v4 decodeDoubleForKey:@"predictedDuration"];
    v5->_predictedDuration = v7;
    v5->_outputReason = [v4 decodeIntegerForKey:@"outputReason"];
    v8 = v5;
  }

  return v5;
}

@end