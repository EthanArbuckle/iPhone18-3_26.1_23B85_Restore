@interface NgtMenstrualAlgorithmsDayInput
- (NgtMenstrualAlgorithmsDayInput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsDayInput

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  julianDay = self->_julianDay;
  v5 = NSStringFromSelector(sel_julianDay);
  [v18 encodeInt32:julianDay forKey:v5];

  flow = self->_flow;
  v7 = NSStringFromSelector(sel_flow);
  [v18 encodeInt32:flow forKey:v7];

  spotting = self->_spotting;
  v9 = NSStringFromSelector(sel_spotting);
  [v18 encodeBool:spotting forKey:v9];

  ovulationTestResult = self->_ovulationTestResult;
  v11 = NSStringFromSelector(sel_ovulationTestResult);
  [v18 encodeInt32:ovulationTestResult forKey:v11];

  sedentaryHeartRateStatistics = self->_sedentaryHeartRateStatistics;
  v13 = NSStringFromSelector(sel_sedentaryHeartRateStatistics);
  [v18 encodeObject:sedentaryHeartRateStatistics forKey:v13];

  sleepHeartRateStatistics = self->_sleepHeartRateStatistics;
  v15 = NSStringFromSelector(sel_sleepHeartRateStatistics);
  [v18 encodeObject:sleepHeartRateStatistics forKey:v15];

  wristTemperature = self->_wristTemperature;
  v17 = NSStringFromSelector(sel_wristTemperature);
  [v18 encodeObject:wristTemperature forKey:v17];
}

- (NgtMenstrualAlgorithmsDayInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NgtMenstrualAlgorithmsDayInput *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_julianDay);
    v5->_julianDay = [v4 decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_flow);
    v5->_flow = [v4 decodeInt32ForKey:v7];

    v8 = NSStringFromSelector(sel_spotting);
    v5->_spotting = [v4 decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_ovulationTestResult);
    v5->_ovulationTestResult = [v4 decodeInt32ForKey:v9];

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_sedentaryHeartRateStatistics);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    sedentaryHeartRateStatistics = v5->_sedentaryHeartRateStatistics;
    v5->_sedentaryHeartRateStatistics = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_sleepHeartRateStatistics);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    sleepHeartRateStatistics = v5->_sleepHeartRateStatistics;
    v5->_sleepHeartRateStatistics = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_wristTemperature);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    wristTemperature = v5->_wristTemperature;
    v5->_wristTemperature = v20;

    v22 = v5;
  }

  return v5;
}

@end