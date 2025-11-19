@interface BWInferenceDataRequirement
- (BWInferenceDataRequirement)init;
- (BWInferenceDataRequirement)initWithDataRequirement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BWInferenceDataRequirement)initWithDataRequirement:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWInferenceDataRequirement;
  v4 = [(BWInferenceDataRequirement *)&v6 init];
  if (v4)
  {
    v4->_identifier = [a3 identifier];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithDataRequirement:self];
}

@end