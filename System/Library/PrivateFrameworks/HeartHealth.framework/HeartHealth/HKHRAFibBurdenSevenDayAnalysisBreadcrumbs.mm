@interface HKHRAFibBurdenSevenDayAnalysisBreadcrumbs
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithAlarmFiredDate:(id)a3 xpcActivityFiredDate:(id)a4 protectedDataOperationRunDate:(id)a5 analysisStartedDate:(id)a6 tachogramsClassifiedDate:(id)a7 analysisEndedDate:(id)a8 analysisRetryLaterRequestedDate:(id)a9 lastAnalysisResultDate:(id)a10 lastAnalysisResultContext:(id)a11;
- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisBreadcrumbs

- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithAlarmFiredDate:(id)a3 xpcActivityFiredDate:(id)a4 protectedDataOperationRunDate:(id)a5 analysisStartedDate:(id)a6 tachogramsClassifiedDate:(id)a7 analysisEndedDate:(id)a8 analysisRetryLaterRequestedDate:(id)a9 lastAnalysisResultDate:(id)a10 lastAnalysisResultContext:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = HKHRAFibBurdenSevenDayAnalysisBreadcrumbs;
  v19 = [(HKHRAFibBurdenSevenDayAnalysisBreadcrumbs *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_alarmFiredDate, a3);
    objc_storeStrong(&v20->_xpcActivityFiredDate, a4);
    objc_storeStrong(&v20->_protectedDataOperationRunDate, a5);
    objc_storeStrong(&v20->_analysisStartedDate, a6);
    objc_storeStrong(&v20->_tachogramsClassifiedDate, a7);
    objc_storeStrong(&v20->_analysisEndedDate, a8);
    objc_storeStrong(&v20->_analysisRetryLaterRequestedDate, a9);
    objc_storeStrong(&v20->_lastAnalysisResultDate, a10);
    objc_storeStrong(&v20->_lastAnalysisResultContext, a11);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NSDate *)self->_alarmFiredDate isEqualToDate:v5->_alarmFiredDate]&& [(NSDate *)self->_xpcActivityFiredDate isEqualToDate:v5->_xpcActivityFiredDate]&& [(NSDate *)self->_protectedDataOperationRunDate isEqualToDate:v5->_protectedDataOperationRunDate]&& [(NSDate *)self->_analysisStartedDate isEqualToDate:v5->_analysisStartedDate]&& [(NSDate *)self->_tachogramsClassifiedDate isEqualToDate:v5->_tachogramsClassifiedDate]&& [(NSDate *)self->_analysisEndedDate isEqualToDate:v5->_analysisEndedDate]&& [(NSDate *)self->_analysisRetryLaterRequestedDate isEqualToDate:v5->_analysisRetryLaterRequestedDate]&& [(NSDate *)self->_lastAnalysisResultDate isEqualToDate:v5->_lastAnalysisResultDate]&& [(NSString *)self->_lastAnalysisResultContext isEqualToString:v5->_lastAnalysisResultContext];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_alarmFiredDate hash];
  v4 = [(NSDate *)self->_xpcActivityFiredDate hash]^ v3;
  v5 = [(NSDate *)self->_protectedDataOperationRunDate hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_analysisStartedDate hash];
  v7 = [(NSDate *)self->_tachogramsClassifiedDate hash];
  v8 = v7 ^ [(NSDate *)self->_analysisEndedDate hash];
  v9 = v6 ^ v8 ^ [(NSDate *)self->_analysisRetryLaterRequestedDate hash];
  v10 = [(NSDate *)self->_lastAnalysisResultDate hash];
  return v9 ^ v10 ^ [(NSString *)self->_lastAnalysisResultContext hash];
}

- (void)encodeWithCoder:(id)a3
{
  alarmFiredDate = self->_alarmFiredDate;
  v5 = a3;
  [v5 encodeObject:alarmFiredDate forKey:@"AlarmFiredDateKey"];
  [v5 encodeObject:self->_xpcActivityFiredDate forKey:@"XpcActivityFiredDateKey"];
  [v5 encodeObject:self->_protectedDataOperationRunDate forKey:@"ProtectedDataOperationRunDateKey"];
  [v5 encodeObject:self->_analysisStartedDate forKey:@"AnalysisStartedDateKey"];
  [v5 encodeObject:self->_tachogramsClassifiedDate forKey:@"TachogramsClassifiedDateKey"];
  [v5 encodeObject:self->_analysisEndedDate forKey:@"AnalysisEndedDateKey"];
  [v5 encodeObject:self->_analysisRetryLaterRequestedDate forKey:@"AnalysisRetryLaterRequestedDateKey"];
  [v5 encodeObject:self->_lastAnalysisResultDate forKey:@"LastAnalysisResultDateKey"];
  [v5 encodeObject:self->_lastAnalysisResultContext forKey:@"LastAnalysisResultContextKey"];
}

- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HKHRAFibBurdenSevenDayAnalysisBreadcrumbs;
  v5 = [(HKHRAFibBurdenSevenDayAnalysisBreadcrumbs *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlarmFiredDateKey"];
    alarmFiredDate = v5->_alarmFiredDate;
    v5->_alarmFiredDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"XpcActivityFiredDateKey"];
    xpcActivityFiredDate = v5->_xpcActivityFiredDate;
    v5->_xpcActivityFiredDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProtectedDataOperationRunDateKey"];
    protectedDataOperationRunDate = v5->_protectedDataOperationRunDate;
    v5->_protectedDataOperationRunDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisStartedDateKey"];
    analysisStartedDate = v5->_analysisStartedDate;
    v5->_analysisStartedDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TachogramsClassifiedDateKey"];
    tachogramsClassifiedDate = v5->_tachogramsClassifiedDate;
    v5->_tachogramsClassifiedDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisEndedDateKey"];
    analysisEndedDate = v5->_analysisEndedDate;
    v5->_analysisEndedDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisRetryLaterRequestedDateKey"];
    analysisRetryLaterRequestedDate = v5->_analysisRetryLaterRequestedDate;
    v5->_analysisRetryLaterRequestedDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastAnalysisResultDateKey"];
    lastAnalysisResultDate = v5->_lastAnalysisResultDate;
    v5->_lastAnalysisResultDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastAnalysisResultContextKey"];
    lastAnalysisResultContext = v5->_lastAnalysisResultContext;
    v5->_lastAnalysisResultContext = v22;
  }

  return v5;
}

@end