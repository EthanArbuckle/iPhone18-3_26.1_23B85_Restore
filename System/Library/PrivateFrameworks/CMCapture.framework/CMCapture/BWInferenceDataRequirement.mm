@interface BWInferenceDataRequirement
- (BWInferenceDataRequirement)init;
- (BWInferenceDataRequirement)initWithDataRequirement:(id)requirement;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BWInferenceDataRequirement

- (BWInferenceDataRequirement)init
{
  v3.receiver = self;
  v3.super_class = BWInferenceDataRequirement;
  result = [(BWInferenceDataRequirement *)&v3 init];
  if (result)
  {
    result->_identifier = atomic_fetch_add(&nextRequirementIdentifier, 1uLL);
  }

  return result;
}

- (BWInferenceDataRequirement)initWithDataRequirement:(id)requirement
{
  v6.receiver = self;
  v6.super_class = BWInferenceDataRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 init];
  if (v4)
  {
    v4->_identifier = [requirement identifier];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithDataRequirement:self];
}

@end