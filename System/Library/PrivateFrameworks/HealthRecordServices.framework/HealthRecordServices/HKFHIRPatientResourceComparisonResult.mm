@interface HKFHIRPatientResourceComparisonResult
- (BOOL)isEqual:(id)equal;
- (HKFHIRPatientResourceComparisonResult)init;
- (HKFHIRPatientResourceComparisonResult)initWithCoder:(id)coder;
- (HKFHIRPatientResourceComparisonResult)initWithOutcome:(unint64_t)outcome;
@end

@implementation HKFHIRPatientResourceComparisonResult

- (HKFHIRPatientResourceComparisonResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRPatientResourceComparisonResult)initWithOutcome:(unint64_t)outcome
{
  v5.receiver = self;
  v5.super_class = HKFHIRPatientResourceComparisonResult;
  result = [(HKFHIRPatientResourceComparisonResult *)&v5 init];
  if (result)
  {
    result->_outcome = outcome;
  }

  return result;
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
      outcome = self->_outcome;
      v6 = outcome == [(HKFHIRPatientResourceComparisonResult *)equalCopy outcome];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HKFHIRPatientResourceComparisonResult)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"outcome"];

  return [(HKFHIRPatientResourceComparisonResult *)self initWithOutcome:v4];
}

@end