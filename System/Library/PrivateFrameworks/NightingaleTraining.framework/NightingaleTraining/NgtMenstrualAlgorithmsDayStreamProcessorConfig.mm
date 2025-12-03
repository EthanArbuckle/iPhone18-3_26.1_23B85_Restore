@interface NgtMenstrualAlgorithmsDayStreamProcessorConfig
- (NgtMenstrualAlgorithmsDayStreamProcessorConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsDayStreamProcessorConfig

- (NgtMenstrualAlgorithmsDayStreamProcessorConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = NgtMenstrualAlgorithmsDayStreamProcessorConfig;
  v5 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)&v41 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_userReportedCycleLength);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    userReportedCycleLength = v5->_userReportedCycleLength;
    v5->_userReportedCycleLength = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_julianDayOfUserReportedCycleLength);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    julianDayOfUserReportedCycleLength = v5->_julianDayOfUserReportedCycleLength;
    v5->_julianDayOfUserReportedCycleLength = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_userReportedMenstruationLength);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    userReportedMenstruationLength = v5->_userReportedMenstruationLength;
    v5->_userReportedMenstruationLength = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_julianDayOfUserReportedMenstruationLength);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    julianDayOfUserReportedMenstruationLength = v5->_julianDayOfUserReportedMenstruationLength;
    v5->_julianDayOfUserReportedMenstruationLength = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_awakeSHRCountThreshold);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    awakeSHRCountThreshold = v5->_awakeSHRCountThreshold;
    v5->_awakeSHRCountThreshold = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_sleepSHRCountThreshold);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    sleepSHRCountThreshold = v5->_sleepSHRCountThreshold;
    v5->_sleepSHRCountThreshold = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_birthDateComponents);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    birthDateComponents = v5->_birthDateComponents;
    v5->_birthDateComponents = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_deviationInput);
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    deviationInput = v5->_deviationInput;
    v5->_deviationInput = v36;

    v38 = NSStringFromSelector(sel_todayAsJulianDay);
    v5->_todayAsJulianDay = [coderCopy decodeInt32ForKey:v38];

    v39 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userReportedCycleLength = self->_userReportedCycleLength;
  v5 = NSStringFromSelector(sel_userReportedCycleLength);
  [coderCopy encodeObject:userReportedCycleLength forKey:v5];

  julianDayOfUserReportedCycleLength = self->_julianDayOfUserReportedCycleLength;
  v7 = NSStringFromSelector(sel_julianDayOfUserReportedCycleLength);
  [coderCopy encodeObject:julianDayOfUserReportedCycleLength forKey:v7];

  userReportedMenstruationLength = self->_userReportedMenstruationLength;
  v9 = NSStringFromSelector(sel_userReportedMenstruationLength);
  [coderCopy encodeObject:userReportedMenstruationLength forKey:v9];

  julianDayOfUserReportedMenstruationLength = self->_julianDayOfUserReportedMenstruationLength;
  v11 = NSStringFromSelector(sel_julianDayOfUserReportedMenstruationLength);
  [coderCopy encodeObject:julianDayOfUserReportedMenstruationLength forKey:v11];

  awakeSHRCountThreshold = self->_awakeSHRCountThreshold;
  v13 = NSStringFromSelector(sel_awakeSHRCountThreshold);
  [coderCopy encodeObject:awakeSHRCountThreshold forKey:v13];

  sleepSHRCountThreshold = self->_sleepSHRCountThreshold;
  v15 = NSStringFromSelector(sel_sleepSHRCountThreshold);
  [coderCopy encodeObject:sleepSHRCountThreshold forKey:v15];

  birthDateComponents = self->_birthDateComponents;
  v17 = NSStringFromSelector(sel_birthDateComponents);
  [coderCopy encodeObject:birthDateComponents forKey:v17];

  deviationInput = self->_deviationInput;
  v19 = NSStringFromSelector(sel_deviationInput);
  [coderCopy encodeObject:deviationInput forKey:v19];

  todayAsJulianDay = self->_todayAsJulianDay;
  v21 = NSStringFromSelector(sel_todayAsJulianDay);
  [coderCopy encodeInt32:todayAsJulianDay forKey:v21];
}

@end