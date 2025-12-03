@interface NgtMenstrualAlgorithmsPrediction
- (NgtMenstrualAlgorithmsPrediction)initWithCoder:(id)coder;
- (_NSRange)lowRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsPrediction

- (NgtMenstrualAlgorithmsPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NgtMenstrualAlgorithmsPrediction *)self init];
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

    v11 = NSStringFromSelector(sel_startProbabilityLowRangeStart);
    [coderCopy decodeDoubleForKey:v11];
    v5->_startProbabilityLowRangeStart = v12;

    v13 = NSStringFromSelector(sel_endProbabilityLowRangeStart);
    [coderCopy decodeDoubleForKey:v13];
    v5->_endProbabilityLowRangeStart = v14;

    v15 = NSStringFromSelector(sel_startProbabilityLowRangeEnd);
    [coderCopy decodeDoubleForKey:v15];
    v5->_startProbabilityLowRangeEnd = v16;

    v17 = NSStringFromSelector(sel_endProbabilityLowRangeEnd);
    [coderCopy decodeDoubleForKey:v17];
    v5->_endProbabilityLowRangeEnd = v18;

    v19 = NSStringFromSelector(sel_startProbabilityStdDev);
    [coderCopy decodeDoubleForKey:v19];
    v5->_startProbabilityStdDev = v20;

    v21 = NSStringFromSelector(sel_endProbabilityStdDev);
    [coderCopy decodeDoubleForKey:v21];
    v5->_endProbabilityStdDev = v22;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_lowRange);
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];

    v5->_lowRange.location = [v25 rangeValue];
    v5->_lowRange.length = v26;
    v27 = NSStringFromSelector(sel_isOngoingMenstruation);
    v5->_isOngoingMenstruation = [coderCopy decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_predictionPrimarySource);
    v5->_predictionPrimarySource = [coderCopy decodeInt32ForKey:v28];

    v29 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
    v5->_daysOffsetFromCalendarMethod = [coderCopy decodeIntegerForKey:v29];

    v30 = v5;
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

  startProbabilityLowRangeStart = self->_startProbabilityLowRangeStart;
  v11 = NSStringFromSelector(sel_startProbabilityLowRangeStart);
  [coderCopy encodeDouble:v11 forKey:startProbabilityLowRangeStart];

  endProbabilityLowRangeStart = self->_endProbabilityLowRangeStart;
  v13 = NSStringFromSelector(sel_endProbabilityLowRangeStart);
  [coderCopy encodeDouble:v13 forKey:endProbabilityLowRangeStart];

  startProbabilityLowRangeEnd = self->_startProbabilityLowRangeEnd;
  v15 = NSStringFromSelector(sel_startProbabilityLowRangeEnd);
  [coderCopy encodeDouble:v15 forKey:startProbabilityLowRangeEnd];

  endProbabilityLowRangeEnd = self->_endProbabilityLowRangeEnd;
  v17 = NSStringFromSelector(sel_endProbabilityLowRangeEnd);
  [coderCopy encodeDouble:v17 forKey:endProbabilityLowRangeEnd];

  startProbabilityStdDev = self->_startProbabilityStdDev;
  v19 = NSStringFromSelector(sel_startProbabilityStdDev);
  [coderCopy encodeDouble:v19 forKey:startProbabilityStdDev];

  endProbabilityStdDev = self->_endProbabilityStdDev;
  v21 = NSStringFromSelector(sel_endProbabilityStdDev);
  [coderCopy encodeDouble:v21 forKey:endProbabilityStdDev];

  v22 = [MEMORY[0x277CCAE60] valueWithRange:{self->_lowRange.location, self->_lowRange.length}];
  v23 = NSStringFromSelector(sel_lowRange);
  [coderCopy encodeObject:v22 forKey:v23];

  isOngoingMenstruation = self->_isOngoingMenstruation;
  v25 = NSStringFromSelector(sel_isOngoingMenstruation);
  [coderCopy encodeBool:isOngoingMenstruation forKey:v25];

  predictionPrimarySource = self->_predictionPrimarySource;
  v27 = NSStringFromSelector(sel_predictionPrimarySource);
  [coderCopy encodeInt32:predictionPrimarySource forKey:v27];

  daysOffsetFromCalendarMethod = self->_daysOffsetFromCalendarMethod;
  v29 = NSStringFromSelector(sel_daysOffsetFromCalendarMethod);
  [coderCopy encodeInteger:daysOffsetFromCalendarMethod forKey:v29];
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