@interface IDSBassHarborCheckInMetric
- (IDSBassHarborCheckInMetric)initWithCohort:(id)cohort;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSBassHarborCheckInMetric

- (IDSBassHarborCheckInMetric)initWithCohort:(id)cohort
{
  cohortCopy = cohort;
  v9.receiver = self;
  v9.super_class = IDSBassHarborCheckInMetric;
  v6 = [(IDSBassHarborCheckInMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cohort, cohort);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  cohort = self->_cohort;
  if (cohort)
  {
    CFDictionarySetValue(v3, @"cohort", cohort);
  }

  return v4;
}

@end