@interface HKMHPromptedAssessment
- (BOOL)isEqual:(id)equal;
- (HKMHPromptedAssessment)initWithCoder:(id)coder;
- (HKMHPromptedAssessment)initWithEligibilityStartDate:(id)date reason:(int64_t)reason;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHPromptedAssessment

- (HKMHPromptedAssessment)initWithEligibilityStartDate:(id)date reason:(int64_t)reason
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = HKMHPromptedAssessment;
  v7 = [(HKMHPromptedAssessment *)&v11 init];
  if (v7)
  {
    v8 = [dateCopy copy];
    eligibilityStartDate = v7->_eligibilityStartDate;
    v7->_eligibilityStartDate = v8;

    v7->_reason = reason;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKMHPromptedAssessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eligibilityStartDate"];
  v6 = [coderCopy decodeIntegerForKey:@"reason"];

  v7 = [(HKMHPromptedAssessment *)self initWithEligibilityStartDate:v5 reason:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  eligibilityStartDate = self->_eligibilityStartDate;
  coderCopy = coder;
  [coderCopy encodeObject:eligibilityStartDate forKey:@"eligibilityStartDate"];
  [coderCopy encodeInteger:self->_reason forKey:@"reason"];
}

@end