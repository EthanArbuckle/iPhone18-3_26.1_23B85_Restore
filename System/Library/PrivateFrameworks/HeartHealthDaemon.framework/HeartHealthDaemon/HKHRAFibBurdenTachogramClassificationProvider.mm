@interface HKHRAFibBurdenTachogramClassificationProvider
- (ABTachogramClassification)tachogramClassification;
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenTachogramClassificationProvider)initWithCoder:(id)coder;
- (HKHRAFibBurdenTachogramClassificationProvider)initWithSampleClassification:(id)classification;
- (HKHRAFibBurdenTachogramClassificationProvider)initWithSampleClassification:(id)classification tachogramClassification:(id)tachogramClassification;
@end

@implementation HKHRAFibBurdenTachogramClassificationProvider

- (HKHRAFibBurdenTachogramClassificationProvider)initWithSampleClassification:(id)classification
{
  classificationCopy = classification;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenTachogramClassificationProvider;
  v6 = [(HKHRAFibBurdenTachogramClassificationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sampleClassification, classification);
  }

  return v7;
}

- (HKHRAFibBurdenTachogramClassificationProvider)initWithSampleClassification:(id)classification tachogramClassification:(id)tachogramClassification
{
  classificationCopy = classification;
  tachogramClassificationCopy = tachogramClassification;
  v12.receiver = self;
  v12.super_class = HKHRAFibBurdenTachogramClassificationProvider;
  v9 = [(HKHRAFibBurdenTachogramClassificationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sampleClassification, classification);
    objc_storeStrong(&v10->_computedTachogramClassification, tachogramClassification);
  }

  return v10;
}

- (ABTachogramClassification)tachogramClassification
{
  computedTachogramClassification = self->_computedTachogramClassification;
  if (!computedTachogramClassification)
  {
    v4 = objc_opt_new();
    v5 = self->_computedTachogramClassification;
    self->_computedTachogramClassification = v4;

    sampleUUID = [(HKHRSampleClassification *)self->_sampleClassification sampleUUID];
    [(ABTachogramClassification *)self->_computedTachogramClassification setUuid:sampleUUID];

    sampleDateInterval = [(HKHRSampleClassification *)self->_sampleClassification sampleDateInterval];
    endDate = [sampleDateInterval endDate];
    [(ABTachogramClassification *)self->_computedTachogramClassification setDate:endDate];

    [(ABTachogramClassification *)self->_computedTachogramClassification setAFibDetected:[(HKHRSampleClassification *)self->_sampleClassification classification]== 1];
    computedTachogramClassification = self->_computedTachogramClassification;
  }

  v9 = computedTachogramClassification;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sampleClassification = self->_sampleClassification;
      sampleClassification = [(HKHRAFibBurdenTachogramClassificationProvider *)equalCopy sampleClassification];
      v7 = [(HKHRSampleClassification *)sampleClassification isEqual:sampleClassification];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (HKHRAFibBurdenTachogramClassificationProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenTachogramClassificationProvider;
  v5 = [(HKHRAFibBurdenTachogramClassificationProvider *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleClassification"];
    sampleClassification = v5->_sampleClassification;
    v5->_sampleClassification = v6;
  }

  return v5;
}

@end