@interface HUElasticSliderValueNormalizationOptions
- (HUElasticSliderValueNormalizationOptions)init;
@end

@implementation HUElasticSliderValueNormalizationOptions

- (HUElasticSliderValueNormalizationOptions)init
{
  v3.receiver = self;
  v3.super_class = HUElasticSliderValueNormalizationOptions;
  result = [(HUElasticSliderValueNormalizationOptions *)&v3 init];
  if (result)
  {
    result->_boundingStrategy = 1;
  }

  return result;
}

@end