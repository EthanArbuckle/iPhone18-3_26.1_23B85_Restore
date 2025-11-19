@interface HKHRAFibBurdenSevenDayAnalysisResults
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisResults)initWithCoder:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisResults)initWithResult:(int64_t)a3 sample:(id)a4 onboardedWithinAnalysisInterval:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisResults

- (HKHRAFibBurdenSevenDayAnalysisResults)initWithResult:(int64_t)a3 sample:(id)a4 onboardedWithinAnalysisInterval:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HKHRAFibBurdenSevenDayAnalysisResults;
  v10 = [(HKHRAFibBurdenSevenDayAnalysisResults *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_result = a3;
    objc_storeStrong(&v10->_sampleCreated, a4);
    v11->_onboardedWithinAnalysisInterval = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && self->_result == *(v4 + 2) && ((sampleCreated = self->_sampleCreated, !(sampleCreated | *(v4 + 3))) || -[HKQuantitySample isEqual:](sampleCreated, "isEqual:")) && self->_onboardedWithinAnalysisInterval == v4[8];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  result = self->_result;
  v5 = a3;
  [v5 encodeInteger:result forKey:@"Result"];
  [v5 encodeObject:self->_sampleCreated forKey:@"Sample"];
  [v5 encodeBool:self->_onboardedWithinAnalysisInterval forKey:@"OnboardedWithinAnalysisInterval"];
}

- (HKHRAFibBurdenSevenDayAnalysisResults)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenSevenDayAnalysisResults;
  v5 = [(HKHRAFibBurdenSevenDayAnalysisResults *)&v9 init];
  if (v5)
  {
    v5->_result = [v4 decodeIntegerForKey:@"Result"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sample"];
    sampleCreated = v5->_sampleCreated;
    v5->_sampleCreated = v6;

    v5->_onboardedWithinAnalysisInterval = [v4 decodeBoolForKey:@"OnboardedWithinAnalysisInterval"];
  }

  return v5;
}

@end