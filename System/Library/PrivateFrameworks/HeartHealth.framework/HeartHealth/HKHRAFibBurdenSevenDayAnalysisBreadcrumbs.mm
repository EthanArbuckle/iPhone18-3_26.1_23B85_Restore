@interface HKHRAFibBurdenSevenDayAnalysisBreadcrumbs
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithAlarmFiredDate:(id)date xpcActivityFiredDate:(id)firedDate protectedDataOperationRunDate:(id)runDate analysisStartedDate:(id)startedDate tachogramsClassifiedDate:(id)classifiedDate analysisEndedDate:(id)endedDate analysisRetryLaterRequestedDate:(id)requestedDate lastAnalysisResultDate:(id)self0 lastAnalysisResultContext:(id)self1;
- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisBreadcrumbs

- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithAlarmFiredDate:(id)date xpcActivityFiredDate:(id)firedDate protectedDataOperationRunDate:(id)runDate analysisStartedDate:(id)startedDate tachogramsClassifiedDate:(id)classifiedDate analysisEndedDate:(id)endedDate analysisRetryLaterRequestedDate:(id)requestedDate lastAnalysisResultDate:(id)self0 lastAnalysisResultContext:(id)self1
{
  dateCopy = date;
  firedDateCopy = firedDate;
  runDateCopy = runDate;
  startedDateCopy = startedDate;
  classifiedDateCopy = classifiedDate;
  endedDateCopy = endedDate;
  requestedDateCopy = requestedDate;
  resultDateCopy = resultDate;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = HKHRAFibBurdenSevenDayAnalysisBreadcrumbs;
  v19 = [(HKHRAFibBurdenSevenDayAnalysisBreadcrumbs *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_alarmFiredDate, date);
    objc_storeStrong(&v20->_xpcActivityFiredDate, firedDate);
    objc_storeStrong(&v20->_protectedDataOperationRunDate, runDate);
    objc_storeStrong(&v20->_analysisStartedDate, startedDate);
    objc_storeStrong(&v20->_tachogramsClassifiedDate, classifiedDate);
    objc_storeStrong(&v20->_analysisEndedDate, endedDate);
    objc_storeStrong(&v20->_analysisRetryLaterRequestedDate, requestedDate);
    objc_storeStrong(&v20->_lastAnalysisResultDate, resultDate);
    objc_storeStrong(&v20->_lastAnalysisResultContext, context);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  alarmFiredDate = self->_alarmFiredDate;
  coderCopy = coder;
  [coderCopy encodeObject:alarmFiredDate forKey:@"AlarmFiredDateKey"];
  [coderCopy encodeObject:self->_xpcActivityFiredDate forKey:@"XpcActivityFiredDateKey"];
  [coderCopy encodeObject:self->_protectedDataOperationRunDate forKey:@"ProtectedDataOperationRunDateKey"];
  [coderCopy encodeObject:self->_analysisStartedDate forKey:@"AnalysisStartedDateKey"];
  [coderCopy encodeObject:self->_tachogramsClassifiedDate forKey:@"TachogramsClassifiedDateKey"];
  [coderCopy encodeObject:self->_analysisEndedDate forKey:@"AnalysisEndedDateKey"];
  [coderCopy encodeObject:self->_analysisRetryLaterRequestedDate forKey:@"AnalysisRetryLaterRequestedDateKey"];
  [coderCopy encodeObject:self->_lastAnalysisResultDate forKey:@"LastAnalysisResultDateKey"];
  [coderCopy encodeObject:self->_lastAnalysisResultContext forKey:@"LastAnalysisResultContextKey"];
}

- (HKHRAFibBurdenSevenDayAnalysisBreadcrumbs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HKHRAFibBurdenSevenDayAnalysisBreadcrumbs;
  v5 = [(HKHRAFibBurdenSevenDayAnalysisBreadcrumbs *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlarmFiredDateKey"];
    alarmFiredDate = v5->_alarmFiredDate;
    v5->_alarmFiredDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"XpcActivityFiredDateKey"];
    xpcActivityFiredDate = v5->_xpcActivityFiredDate;
    v5->_xpcActivityFiredDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProtectedDataOperationRunDateKey"];
    protectedDataOperationRunDate = v5->_protectedDataOperationRunDate;
    v5->_protectedDataOperationRunDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisStartedDateKey"];
    analysisStartedDate = v5->_analysisStartedDate;
    v5->_analysisStartedDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TachogramsClassifiedDateKey"];
    tachogramsClassifiedDate = v5->_tachogramsClassifiedDate;
    v5->_tachogramsClassifiedDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisEndedDateKey"];
    analysisEndedDate = v5->_analysisEndedDate;
    v5->_analysisEndedDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisRetryLaterRequestedDateKey"];
    analysisRetryLaterRequestedDate = v5->_analysisRetryLaterRequestedDate;
    v5->_analysisRetryLaterRequestedDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastAnalysisResultDateKey"];
    lastAnalysisResultDate = v5->_lastAnalysisResultDate;
    v5->_lastAnalysisResultDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastAnalysisResultContextKey"];
    lastAnalysisResultContext = v5->_lastAnalysisResultContext;
    v5->_lastAnalysisResultContext = v22;
  }

  return v5;
}

@end