@interface BWInferenceRequirement
- (BWInferenceRequirement)initWithProvider:(id)provider configuration:(id)configuration;
- (void)dealloc;
@end

@implementation BWInferenceRequirement

- (BWInferenceRequirement)initWithProvider:(id)provider configuration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWInferenceRequirement;
  v6 = [(BWInferenceRequirement *)&v8 init];
  if (v6)
  {
    v6->_provider = provider;
    v6->_configuration = configuration;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceRequirement;
  [(BWInferenceRequirement *)&v3 dealloc];
}

@end