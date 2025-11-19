@interface HAMenstrualAlgorithmsPrediction
- (HAMenstrualAlgorithmsPrediction)initWithCoder:(id)a3;
- (_NSRange)lowRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsPrediction

- (HAMenstrualAlgorithmsPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAMenstrualAlgorithmsPrediction *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_julianDayOfWindowStart);
    v5->_julianDayOfWindowStart = [v4 decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_startProbabilityMean);
    [v4 decodeDoubleForKey:v7];
    v5->_startProbabilityMean = v8;

    v9 = NSStringFromSelector(sel_endProbabilityMean);
    [v4 decodeDoubleForKey:v9];
    v5->_endProbabilityMean = v10;

    v11 = NSStringFromSelector(sel_startProbabilityStdDev);
    [v4 decodeDoubleForKey:v11];
    v5->_startProbabilityStdDev = v12;

    v13 = NSStringFromSelector(sel_endProbabilityStdDev);
    [v4 decodeDoubleForKey:v13];
    v5->_endProbabilityStdDev = v14;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_lowRange);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];

    v5->_lowRange.location = [v17 rangeValue];
    v5->_lowRange.length = v18;
    v19 = NSStringFromSelector(sel_isOngoingMenstruation);
    v5->_isOngoingMenstruation = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_predictionPrimarySource);
    v5->_predictionPrimarySource = [v4 decodeInt32ForKey:v20];

    v21 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
    v5->_daysOffsetFromCalendarMethod = [v4 decodeIntegerForKey:v21];

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  julianDayOfWindowStart = self->_julianDayOfWindowStart;
  v5 = NSStringFromSelector(sel_julianDayOfWindowStart);
  [v22 encodeInt32:julianDayOfWindowStart forKey:v5];

  startProbabilityMean = self->_startProbabilityMean;
  v7 = NSStringFromSelector(sel_startProbabilityMean);
  [v22 encodeDouble:v7 forKey:startProbabilityMean];

  endProbabilityMean = self->_endProbabilityMean;
  v9 = NSStringFromSelector(sel_endProbabilityMean);
  [v22 encodeDouble:v9 forKey:endProbabilityMean];

  startProbabilityStdDev = self->_startProbabilityStdDev;
  v11 = NSStringFromSelector(sel_startProbabilityStdDev);
  [v22 encodeDouble:v11 forKey:startProbabilityStdDev];

  endProbabilityStdDev = self->_endProbabilityStdDev;
  v13 = NSStringFromSelector(sel_endProbabilityStdDev);
  [v22 encodeDouble:v13 forKey:endProbabilityStdDev];

  v14 = [MEMORY[0x277CCAE60] valueWithRange:{self->_lowRange.location, self->_lowRange.length}];
  v15 = NSStringFromSelector(sel_lowRange);
  [v22 encodeObject:v14 forKey:v15];

  isOngoingMenstruation = self->_isOngoingMenstruation;
  v17 = NSStringFromSelector(sel_isOngoingMenstruation);
  [v22 encodeBool:isOngoingMenstruation forKey:v17];

  predictionPrimarySource = self->_predictionPrimarySource;
  v19 = NSStringFromSelector(sel_predictionPrimarySource);
  [v22 encodeInt32:predictionPrimarySource forKey:v19];

  daysOffsetFromCalendarMethod = self->_daysOffsetFromCalendarMethod;
  v21 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
  [v22 encodeInteger:daysOffsetFromCalendarMethod forKey:v21];
}

- (_NSRange)lowRange
{
  length = self->_lowRange.length;
  location = self->_lowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end