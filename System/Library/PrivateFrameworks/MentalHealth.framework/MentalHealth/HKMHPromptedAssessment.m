@interface HKMHPromptedAssessment
- (BOOL)isEqual:(id)a3;
- (HKMHPromptedAssessment)initWithCoder:(id)a3;
- (HKMHPromptedAssessment)initWithEligibilityStartDate:(id)a3 reason:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHPromptedAssessment

- (HKMHPromptedAssessment)initWithEligibilityStartDate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKMHPromptedAssessment;
  v7 = [(HKMHPromptedAssessment *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    eligibilityStartDate = v7->_eligibilityStartDate;
    v7->_eligibilityStartDate = v8;

    v7->_reason = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(NSDate *)self->_eligibilityStartDate isEqualToDate:v5[1]])
    {
      v6 = self->_reason == v5[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HKMHPromptedAssessment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eligibilityStartDate"];
  v6 = [v4 decodeIntegerForKey:@"reason"];

  v7 = [(HKMHPromptedAssessment *)self initWithEligibilityStartDate:v5 reason:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  eligibilityStartDate = self->_eligibilityStartDate;
  v5 = a3;
  [v5 encodeObject:eligibilityStartDate forKey:@"eligibilityStartDate"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
}

@end