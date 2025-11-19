@interface NgtMenstrualAlgorithmsDeviation
- (NgtMenstrualAlgorithmsDeviation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsDeviation

- (NgtMenstrualAlgorithmsDeviation)initWithCoder:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NgtMenstrualAlgorithmsDeviation;
  v5 = [(NgtMenstrualAlgorithmsDeviation *)&v16 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_julianDayOfWindowStart);
    v5->_julianDayOfAnalysisWindowStart = [v4 decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_julianDayOfAnalysisWindowEnd);
    v5->_julianDayOfAnalysisWindowEnd = [v4 decodeInt32ForKey:v7];

    v8 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = NSStringFromSelector(sel_metricsForCoreAnalytics);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];
    metricsForCoreAnalytics = v5->_metricsForCoreAnalytics;
    v5->_metricsForCoreAnalytics = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  julianDayOfAnalysisWindowStart = self->_julianDayOfAnalysisWindowStart;
  v5 = NSStringFromSelector(sel_julianDayOfWindowStart);
  [v10 encodeInt32:julianDayOfAnalysisWindowStart forKey:v5];

  julianDayOfAnalysisWindowEnd = self->_julianDayOfAnalysisWindowEnd;
  v7 = NSStringFromSelector(sel_julianDayOfAnalysisWindowEnd);
  [v10 encodeInt32:julianDayOfAnalysisWindowEnd forKey:v7];

  metricsForCoreAnalytics = self->_metricsForCoreAnalytics;
  v9 = NSStringFromSelector(sel_metricsForCoreAnalytics);
  [v10 encodeObject:metricsForCoreAnalytics forKey:v9];
}

@end