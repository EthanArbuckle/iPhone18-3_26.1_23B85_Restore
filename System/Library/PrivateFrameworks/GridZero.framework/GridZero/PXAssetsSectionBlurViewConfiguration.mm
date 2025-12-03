@interface PXAssetsSectionBlurViewConfiguration
- (PXAssetsSectionBlurViewConfiguration)initWithIntensity:(double)intensity maximumBlurRadius:(double)radius maximumDimmingFraction:(double)fraction;
@end

@implementation PXAssetsSectionBlurViewConfiguration

- (PXAssetsSectionBlurViewConfiguration)initWithIntensity:(double)intensity maximumBlurRadius:(double)radius maximumDimmingFraction:(double)fraction
{
  v9.receiver = self;
  v9.super_class = PXAssetsSectionBlurViewConfiguration;
  result = [(PXAssetsSectionBlurViewConfiguration *)&v9 init];
  if (result)
  {
    result->_intensity = intensity;
    result->_maximumBlurRadius = radius;
    result->_maximumDimmingFraction = fraction;
  }

  return result;
}

@end