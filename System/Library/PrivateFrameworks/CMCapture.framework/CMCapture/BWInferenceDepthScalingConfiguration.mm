@interface BWInferenceDepthScalingConfiguration
- (BWInferenceDepthScalingConfiguration)initWithflipX:(BOOL)a3 clampMin:(id)a4 clampMax:(id)a5 NANValue:(id)a6 allowUpsampling:(BOOL)a7 concurrencyWidth:(unint64_t)a8;
- (void)dealloc;
@end

@implementation BWInferenceDepthScalingConfiguration

- (BWInferenceDepthScalingConfiguration)initWithflipX:(BOOL)a3 clampMin:(id)a4 clampMax:(id)a5 NANValue:(id)a6 allowUpsampling:(BOOL)a7 concurrencyWidth:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = BWInferenceDepthScalingConfiguration;
  result = [(BWInferenceDepthScalingConfiguration *)&v15 init];
  if (result)
  {
    result->_flipX = a3;
    result->_clampMin = a4;
    result->_clampMax = a5;
    result->_NANValue = a6;
    result->_allowUpsampling = a7;
    result->_concurrencyWidth = a8;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWInferenceDepthScalingConfiguration;
  [(BWInferenceDepthScalingConfiguration *)&v2 dealloc];
}

@end