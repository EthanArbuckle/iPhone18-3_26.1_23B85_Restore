@interface BWInferenceRequirement
- (BWInferenceRequirement)initWithProvider:(id)a3 configuration:(id)a4;
- (void)dealloc;
@end

@implementation BWInferenceRequirement

- (BWInferenceRequirement)initWithProvider:(id)a3 configuration:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWInferenceRequirement;
  v6 = [(BWInferenceRequirement *)&v8 init];
  if (v6)
  {
    v6->_provider = a3;
    v6->_configuration = a4;
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