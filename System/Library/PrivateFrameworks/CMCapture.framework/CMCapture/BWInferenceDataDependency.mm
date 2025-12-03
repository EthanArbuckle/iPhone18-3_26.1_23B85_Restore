@interface BWInferenceDataDependency
- (BWInferenceDataDependency)initWithInferenceRequirement:(id)requirement dependentOnDataRequirement:(id)dataRequirement;
- (void)dealloc;
@end

@implementation BWInferenceDataDependency

- (BWInferenceDataDependency)initWithInferenceRequirement:(id)requirement dependentOnDataRequirement:(id)dataRequirement
{
  v8.receiver = self;
  v8.super_class = BWInferenceDataDependency;
  v6 = [(BWInferenceDataDependency *)&v8 init];
  if (v6)
  {
    v6->_dataRequirement = dataRequirement;
    v6->_inferenceRequirement = requirement;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceDataDependency;
  [(BWInferenceDataDependency *)&v3 dealloc];
}

@end