@interface HKFHIRPatientResourceComparisonResult
- (BOOL)isEqual:(id)a3;
- (HKFHIRPatientResourceComparisonResult)init;
- (HKFHIRPatientResourceComparisonResult)initWithCoder:(id)a3;
- (HKFHIRPatientResourceComparisonResult)initWithOutcome:(unint64_t)a3;
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

- (HKFHIRPatientResourceComparisonResult)initWithOutcome:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKFHIRPatientResourceComparisonResult;
  result = [(HKFHIRPatientResourceComparisonResult *)&v5 init];
  if (result)
  {
    result->_outcome = a3;
  }

  return result;
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
      outcome = self->_outcome;
      v6 = outcome == [(HKFHIRPatientResourceComparisonResult *)v4 outcome];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HKFHIRPatientResourceComparisonResult)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"outcome"];

  return [(HKFHIRPatientResourceComparisonResult *)self initWithOutcome:v4];
}

@end