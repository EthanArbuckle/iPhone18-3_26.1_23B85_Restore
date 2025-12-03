@interface HKHRAFibBurdenAnalysisResult
- (BOOL)isEqual:(id)equal;
- (HKHRAFibBurdenAnalysisResult)initWithBurdenPercentage:(id)percentage burdenPercentageWasClampedToLowerBound:(BOOL)bound unavailabilityReason:(int64_t)reason;
- (HKHRAFibBurdenAnalysisResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRAFibBurdenAnalysisResult

- (HKHRAFibBurdenAnalysisResult)initWithBurdenPercentage:(id)percentage burdenPercentageWasClampedToLowerBound:(BOOL)bound unavailabilityReason:(int64_t)reason
{
  percentageCopy = percentage;
  v13.receiver = self;
  v13.super_class = HKHRAFibBurdenAnalysisResult;
  v10 = [(HKHRAFibBurdenAnalysisResult *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_burdenPercentage, percentage);
    v11->_burdenPercentageWasClampedToLowerBound = bound;
    v11->_unavailabilityReason = reason;
  }

  return v11;
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
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  burdenPercentage = self->_burdenPercentage;
  coderCopy = coder;
  [coderCopy encodeObject:burdenPercentage forKey:@"BurdenPercentageKey"];
  [coderCopy encodeBool:self->_burdenPercentageWasClampedToLowerBound forKey:@"BurdenPercentageWasClampedToLowerBoundKey"];
  [coderCopy encodeInteger:self->_unavailabilityReason forKey:@"UnavailabilityReasonKey"];
}

- (HKHRAFibBurdenAnalysisResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHRAFibBurdenAnalysisResult;
  v5 = [(HKHRAFibBurdenAnalysisResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BurdenPercentageKey"];
    burdenPercentage = v5->_burdenPercentage;
    v5->_burdenPercentage = v6;

    v5->_burdenPercentageWasClampedToLowerBound = [coderCopy decodeBoolForKey:@"BurdenPercentageWasClampedToLowerBoundKey"];
    v5->_unavailabilityReason = [coderCopy decodeIntegerForKey:@"UnavailabilityReasonKey"];
  }

  return v5;
}

@end