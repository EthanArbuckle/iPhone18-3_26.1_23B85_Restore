@interface BWInferenceDepthScalingConfiguration
- (BWInferenceDepthScalingConfiguration)initWithflipX:(BOOL)x clampMin:(id)min clampMax:(id)max NANValue:(id)value allowUpsampling:(BOOL)upsampling concurrencyWidth:(unint64_t)width;
- (void)dealloc;
@end

@implementation BWInferenceDepthScalingConfiguration

- (BWInferenceDepthScalingConfiguration)initWithflipX:(BOOL)x clampMin:(id)min clampMax:(id)max NANValue:(id)value allowUpsampling:(BOOL)upsampling concurrencyWidth:(unint64_t)width
{
  v15.receiver = self;
  v15.super_class = BWInferenceDepthScalingConfiguration;
  result = [(BWInferenceDepthScalingConfiguration *)&v15 init];
  if (result)
  {
    result->_flipX = x;
    result->_clampMin = min;
    result->_clampMax = max;
    result->_NANValue = value;
    result->_allowUpsampling = upsampling;
    result->_concurrencyWidth = width;
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