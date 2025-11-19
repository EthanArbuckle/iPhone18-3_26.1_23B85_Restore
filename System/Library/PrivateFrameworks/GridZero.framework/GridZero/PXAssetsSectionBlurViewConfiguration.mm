@interface PXAssetsSectionBlurViewConfiguration
- (PXAssetsSectionBlurViewConfiguration)initWithIntensity:(double)a3 maximumBlurRadius:(double)a4 maximumDimmingFraction:(double)a5;
@end

@implementation PXAssetsSectionBlurViewConfiguration

- (PXAssetsSectionBlurViewConfiguration)initWithIntensity:(double)a3 maximumBlurRadius:(double)a4 maximumDimmingFraction:(double)a5
{
  v9.receiver = self;
  v9.super_class = PXAssetsSectionBlurViewConfiguration;
  result = [(PXAssetsSectionBlurViewConfiguration *)&v9 init];
  if (result)
  {
    result->_intensity = a3;
    result->_maximumBlurRadius = a4;
    result->_maximumDimmingFraction = a5;
  }

  return result;
}

@end