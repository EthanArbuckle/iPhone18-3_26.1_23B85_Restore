@interface HAMenstrualAlgorithmsDayStreamProcessorConfig
- (HAMenstrualAlgorithmsDayStreamProcessorConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsDayStreamProcessorConfig

- (HAMenstrualAlgorithmsDayStreamProcessorConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = HAMenstrualAlgorithmsDayStreamProcessorConfig;
  v5 = [(HAMenstrualAlgorithmsDayStreamProcessorConfig *)&v33 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_userReportedCycleLength);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    userReportedCycleLength = v5->_userReportedCycleLength;
    v5->_userReportedCycleLength = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_julianDayOfUserReportedCycleLength);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    julianDayOfUserReportedCycleLength = v5->_julianDayOfUserReportedCycleLength;
    v5->_julianDayOfUserReportedCycleLength = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_userReportedMenstruationLength);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    userReportedMenstruationLength = v5->_userReportedMenstruationLength;
    v5->_userReportedMenstruationLength = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_julianDayOfUserReportedMenstruationLength);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    julianDayOfUserReportedMenstruationLength = v5->_julianDayOfUserReportedMenstruationLength;
    v5->_julianDayOfUserReportedMenstruationLength = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_birthDateComponents);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    birthDateComponents = v5->_birthDateComponents;
    v5->_birthDateComponents = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_deviationInput);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    deviationInput = v5->_deviationInput;
    v5->_deviationInput = v28;

    v30 = NSStringFromSelector(sel_todayAsJulianDay);
    v5->_todayAsJulianDay = [v4 decodeInt32ForKey:v30];

    v31 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  userReportedCycleLength = self->_userReportedCycleLength;
  v5 = NSStringFromSelector(sel_userReportedCycleLength);
  [v18 encodeObject:userReportedCycleLength forKey:v5];

  julianDayOfUserReportedCycleLength = self->_julianDayOfUserReportedCycleLength;
  v7 = NSStringFromSelector(sel_julianDayOfUserReportedCycleLength);
  [v18 encodeObject:julianDayOfUserReportedCycleLength forKey:v7];

  userReportedMenstruationLength = self->_userReportedMenstruationLength;
  v9 = NSStringFromSelector(sel_userReportedMenstruationLength);
  [v18 encodeObject:userReportedMenstruationLength forKey:v9];

  julianDayOfUserReportedMenstruationLength = self->_julianDayOfUserReportedMenstruationLength;
  v11 = NSStringFromSelector(sel_julianDayOfUserReportedMenstruationLength);
  [v18 encodeObject:julianDayOfUserReportedMenstruationLength forKey:v11];

  birthDateComponents = self->_birthDateComponents;
  v13 = NSStringFromSelector(sel_birthDateComponents);
  [v18 encodeObject:birthDateComponents forKey:v13];

  deviationInput = self->_deviationInput;
  v15 = NSStringFromSelector(sel_deviationInput);
  [v18 encodeObject:deviationInput forKey:v15];

  todayAsJulianDay = self->_todayAsJulianDay;
  v17 = NSStringFromSelector(sel_todayAsJulianDay);
  [v18 encodeInt32:todayAsJulianDay forKey:v17];
}

@end