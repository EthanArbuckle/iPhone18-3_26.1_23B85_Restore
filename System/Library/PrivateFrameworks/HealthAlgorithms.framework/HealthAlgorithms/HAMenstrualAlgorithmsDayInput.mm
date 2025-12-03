@interface HAMenstrualAlgorithmsDayInput
- (HAMenstrualAlgorithmsDayInput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsDayInput

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  julianDay = self->_julianDay;
  v5 = NSStringFromSelector(sel_julianDay);
  [coderCopy encodeInt32:julianDay forKey:v5];

  flow = self->_flow;
  v7 = NSStringFromSelector(sel_flow);
  [coderCopy encodeInt32:flow forKey:v7];

  spotting = self->_spotting;
  v9 = NSStringFromSelector(sel_spotting);
  [coderCopy encodeBool:spotting forKey:v9];

  ovulationTestResult = self->_ovulationTestResult;
  v11 = NSStringFromSelector(sel_ovulationTestResult);
  [coderCopy encodeInt32:ovulationTestResult forKey:v11];

  pregnancyTestResult = self->_pregnancyTestResult;
  v13 = NSStringFromSelector(sel_pregnancyTestResult);
  [coderCopy encodeInt32:pregnancyTestResult forKey:v13];

  sedentaryHeartRateStatistics = self->_sedentaryHeartRateStatistics;
  v15 = NSStringFromSelector(sel_sedentaryHeartRateStatistics);
  [coderCopy encodeObject:sedentaryHeartRateStatistics forKey:v15];

  sleepHeartRateStatistics = self->_sleepHeartRateStatistics;
  v17 = NSStringFromSelector(sel_sleepHeartRateStatistics);
  [coderCopy encodeObject:sleepHeartRateStatistics forKey:v17];

  wristTemperature = self->_wristTemperature;
  v19 = NSStringFromSelector(sel_wristTemperature);
  [coderCopy encodeObject:wristTemperature forKey:v19];
}

- (HAMenstrualAlgorithmsDayInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HAMenstrualAlgorithmsDayInput *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_julianDay);
    v5->_julianDay = [coderCopy decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_flow);
    v5->_flow = [coderCopy decodeInt32ForKey:v7];

    v8 = NSStringFromSelector(sel_spotting);
    v5->_spotting = [coderCopy decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_ovulationTestResult);
    v5->_ovulationTestResult = [coderCopy decodeInt32ForKey:v9];

    v10 = NSStringFromSelector(sel_pregnancyTestResult);
    v5->_pregnancyTestResult = [coderCopy decodeInt32ForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_sedentaryHeartRateStatistics);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    sedentaryHeartRateStatistics = v5->_sedentaryHeartRateStatistics;
    v5->_sedentaryHeartRateStatistics = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_sleepHeartRateStatistics);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    sleepHeartRateStatistics = v5->_sleepHeartRateStatistics;
    v5->_sleepHeartRateStatistics = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_wristTemperature);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    wristTemperature = v5->_wristTemperature;
    v5->_wristTemperature = v21;

    v23 = v5;
  }

  return v5;
}

@end