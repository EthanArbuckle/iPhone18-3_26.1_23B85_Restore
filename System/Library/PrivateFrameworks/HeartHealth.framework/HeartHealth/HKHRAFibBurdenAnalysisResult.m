@interface HKHRAFibBurdenAnalysisResult
- (BOOL)isEqual:(id)a3;
- (HKHRAFibBurdenAnalysisResult)initWithBurdenPercentage:(id)a3 burdenPercentageWasClampedToLowerBound:(BOOL)a4 unavailabilityReason:(int64_t)a5;
- (HKHRAFibBurdenAnalysisResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRAFibBurdenAnalysisResult

- (HKHRAFibBurdenAnalysisResult)initWithBurdenPercentage:(id)a3 burdenPercentageWasClampedToLowerBound:(BOOL)a4 unavailabilityReason:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HKHRAFibBurdenAnalysisResult;
  v10 = [(HKHRAFibBurdenAnalysisResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_burdenPercentage, a3);
    v11->_burdenPercentageWasClampedToLowerBound = a4;
    v11->_unavailabilityReason = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      burdenPercentage = self->_burdenPercentage;
      v7 = (!burdenPercentage && !v5->_burdenPercentage || [(NSNumber *)burdenPercentage isEqualToNumber:self->_burdenPercentage]) && self->_burdenPercentageWasClampedToLowerBound == v5->_burdenPercentageWasClampedToLowerBound && self->_unavailabilityReason == v5->_unavailabilityReason;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  burdenPercentage = self->_burdenPercentage;
  v5 = a3;
  [v5 encodeObject:burdenPercentage forKey:@"BurdenPercentageKey"];
  [v5 encodeBool:self->_burdenPercentageWasClampedToLowerBound forKey:@"BurdenPercentageWasClampedToLowerBoundKey"];
  [v5 encodeInteger:self->_unavailabilityReason forKey:@"UnavailabilityReasonKey"];
}

- (HKHRAFibBurdenAnalysisResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenAnalysisResult;
  v5 = [(HKHRAFibBurdenAnalysisResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BurdenPercentageKey"];
    burdenPercentage = v5->_burdenPercentage;
    v5->_burdenPercentage = v6;

    v5->_burdenPercentageWasClampedToLowerBound = [v4 decodeBoolForKey:@"BurdenPercentageWasClampedToLowerBoundKey"];
    v5->_unavailabilityReason = [v4 decodeIntegerForKey:@"UnavailabilityReasonKey"];
  }

  return v5;
}

@end