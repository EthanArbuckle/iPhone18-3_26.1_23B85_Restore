@interface BWInferenceScalerConfiguration
- (BWInferenceScalerConfiguration)init;
@end

@implementation BWInferenceScalerConfiguration

- (BWInferenceScalerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWInferenceScalerConfiguration;
  result = [(BWInferenceScalerConfiguration *)&v3 init];
  if (result)
  {
    result->_options = 0;
    result->_filterType = 3;
  }

  return result;
}

@end