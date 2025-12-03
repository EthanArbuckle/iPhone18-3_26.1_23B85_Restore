@interface HAMenstrualAlgorithmsPrediction
- (HAMenstrualAlgorithmsPrediction)initWithCoder:(id)coder;
- (_NSRange)lowRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsPrediction

- (HAMenstrualAlgorithmsPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HAMenstrualAlgorithmsPrediction *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_julianDayOfWindowStart);
    v5->_julianDayOfWindowStart = [coderCopy decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_startProbabilityMean);
    [coderCopy decodeDoubleForKey:v7];
    v5->_startProbabilityMean = v8;

    v9 = NSStringFromSelector(sel_endProbabilityMean);
    [coderCopy decodeDoubleForKey:v9];
    v5->_endProbabilityMean = v10;

    v11 = NSStringFromSelector(sel_startProbabilityStdDev);
    [coderCopy decodeDoubleForKey:v11];
    v5->_startProbabilityStdDev = v12;

    v13 = NSStringFromSelector(sel_endProbabilityStdDev);
    [coderCopy decodeDoubleForKey:v13];
    v5->_endProbabilityStdDev = v14;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_lowRange);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

    v5->_lowRange.location = [v17 rangeValue];
    v5->_lowRange.length = v18;
    v19 = NSStringFromSelector(sel_isOngoingMenstruation);
    v5->_isOngoingMenstruation = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_predictionPrimarySource);
    v5->_predictionPrimarySource = [coderCopy decodeInt32ForKey:v20];

    v21 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
    v5->_daysOffsetFromCalendarMethod = [coderCopy decodeIntegerForKey:v21];

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  julianDayOfWindowStart = self->_julianDayOfWindowStart;
  v5 = NSStringFromSelector(sel_julianDayOfWindowStart);
  [coderCopy encodeInt32:julianDayOfWindowStart forKey:v5];

  startProbabilityMean = self->_startProbabilityMean;
  v7 = NSStringFromSelector(sel_startProbabilityMean);
  [coderCopy encodeDouble:v7 forKey:startProbabilityMean];

  endProbabilityMean = self->_endProbabilityMean;
  v9 = NSStringFromSelector(sel_endProbabilityMean);
  [coderCopy encodeDouble:v9 forKey:endProbabilityMean];

  startProbabilityStdDev = self->_startProbabilityStdDev;
  v11 = NSStringFromSelector(sel_startProbabilityStdDev);
  [coderCopy encodeDouble:v11 forKey:startProbabilityStdDev];

  endProbabilityStdDev = self->_endProbabilityStdDev;
  v13 = NSStringFromSelector(sel_endProbabilityStdDev);
  [coderCopy encodeDouble:v13 forKey:endProbabilityStdDev];

  v14 = [MEMORY[0x277CCAE60] valueWithRange:{self->_lowRange.location, self->_lowRange.length}];
  v15 = NSStringFromSelector(sel_lowRange);
  [coderCopy encodeObject:v14 forKey:v15];

  isOngoingMenstruation = self->_isOngoingMenstruation;
  v17 = NSStringFromSelector(sel_isOngoingMenstruation);
  [coderCopy encodeBool:isOngoingMenstruation forKey:v17];

  predictionPrimarySource = self->_predictionPrimarySource;
  v19 = NSStringFromSelector(sel_predictionPrimarySource);
  [coderCopy encodeInt32:predictionPrimarySource forKey:v19];

  daysOffsetFromCalendarMethod = self->_daysOffsetFromCalendarMethod;
  v21 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
  [coderCopy encodeInteger:daysOffsetFromCalendarMethod forKey:v21];
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