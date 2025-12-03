@interface HKHRAFibBurdenSevenDayAnalysisResults
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenSevenDayAnalysisResults)initWithCoder:(id)coder;
- (HKHRAFibBurdenSevenDayAnalysisResults)initWithResult:(int64_t)result sample:(id)sample onboardedWithinAnalysisInterval:(BOOL)interval;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisResults

- (HKHRAFibBurdenSevenDayAnalysisResults)initWithResult:(int64_t)result sample:(id)sample onboardedWithinAnalysisInterval:(BOOL)interval
{
  sampleCopy = sample;
  v13.receiver = self;
  v13.super_class = HKHRAFibBurdenSevenDayAnalysisResults;
  v10 = [(HKHRAFibBurdenSevenDayAnalysisResults *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_result = result;
    objc_storeStrong(&v10->_sampleCreated, sample);
    v11->_onboardedWithinAnalysisInterval = interval;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_result == *(equalCopy + 2) && ((sampleCreated = self->_sampleCreated, !(sampleCreated | *(equalCopy + 3))) || -[HKQuantitySample isEqual:](sampleCreated, "isEqual:")) && self->_onboardedWithinAnalysisInterval == equalCopy[8];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  result = self->_result;
  coderCopy = coder;
  [coderCopy encodeInteger:result forKey:@"Result"];
  [coderCopy encodeObject:self->_sampleCreated forKey:@"Sample"];
  [coderCopy encodeBool:self->_onboardedWithinAnalysisInterval forKey:@"OnboardedWithinAnalysisInterval"];
}

- (HKHRAFibBurdenSevenDayAnalysisResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenSevenDayAnalysisResults;
  v5 = [(HKHRAFibBurdenSevenDayAnalysisResults *)&v9 init];
  if (v5)
  {
    v5->_result = [coderCopy decodeIntegerForKey:@"Result"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sample"];
    sampleCreated = v5->_sampleCreated;
    v5->_sampleCreated = v6;

    v5->_onboardedWithinAnalysisInterval = [coderCopy decodeBoolForKey:@"OnboardedWithinAnalysisInterval"];
  }

  return v5;
}

@end