@interface PXTitleLegibilityDimmingViewConfiguration
- (PXTitleLegibilityDimmingViewConfiguration)initWithGradientImageConfiguration:(id)configuration;
@end

@implementation PXTitleLegibilityDimmingViewConfiguration

- (PXTitleLegibilityDimmingViewConfiguration)initWithGradientImageConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXTitleLegibilityDimmingViewConfiguration;
  v5 = [(PXTitleLegibilityDimmingViewConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    gradientImageConfiguration = v5->_gradientImageConfiguration;
    v5->_gradientImageConfiguration = v6;
  }

  return v5;
}

@end