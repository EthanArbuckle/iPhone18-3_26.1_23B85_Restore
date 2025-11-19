@interface PXTitleLegibilityDimmingViewConfiguration
- (PXTitleLegibilityDimmingViewConfiguration)initWithGradientImageConfiguration:(id)a3;
@end

@implementation PXTitleLegibilityDimmingViewConfiguration

- (PXTitleLegibilityDimmingViewConfiguration)initWithGradientImageConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXTitleLegibilityDimmingViewConfiguration;
  v5 = [(PXTitleLegibilityDimmingViewConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    gradientImageConfiguration = v5->_gradientImageConfiguration;
    v5->_gradientImageConfiguration = v6;
  }

  return v5;
}

@end