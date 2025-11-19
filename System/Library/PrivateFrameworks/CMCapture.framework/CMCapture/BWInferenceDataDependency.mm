@interface BWInferenceDataDependency
- (BWInferenceDataDependency)initWithInferenceRequirement:(id)a3 dependentOnDataRequirement:(id)a4;
- (void)dealloc;
@end

@implementation BWInferenceDataDependency

- (BWInferenceDataDependency)initWithInferenceRequirement:(id)a3 dependentOnDataRequirement:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceDataDependency;
  v6 = [(BWInferenceDataDependency *)&v8 init];
  if (v6)
  {
    v6->_dataRequirement = a4;
    v6->_inferenceRequirement = a3;
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