@interface HKNumericAxisConfiguration
- (HKNumericAxisConfiguration)init;
- (void)applyOverridesFromNumericAxisConfiguration:(id)configuration;
@end

@implementation HKNumericAxisConfiguration

- (HKNumericAxisConfiguration)init
{
  v6.receiver = self;
  v6.super_class = HKNumericAxisConfiguration;
  v2 = [(HKAxisConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    labelDimension = v2->_labelDimension;
    v2->_labelDimension = 0;

    v3->_topVerticalLabelPadding = 10.0;
    v3->_bottomVerticalLabelPadding = 10.0;
    v3->_bottomLegendViewPadding = 0.0;
  }

  return v3;
}

- (void)applyOverridesFromNumericAxisConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  labelDimension = [configurationCopy labelDimension];
  labelDimension2 = [(HKNumericAxisConfiguration *)v5 labelDimension];

  if (labelDimension != labelDimension2)
  {
    labelDimension3 = [configurationCopy labelDimension];
    [(HKNumericAxisConfiguration *)self setLabelDimension:labelDimension3];
  }

  [configurationCopy topVerticalLabelPadding];
  v10 = v9;
  [(HKNumericAxisConfiguration *)v5 topVerticalLabelPadding];
  if (v10 != v11)
  {
    [configurationCopy topVerticalLabelPadding];
    [(HKNumericAxisConfiguration *)self setTopVerticalLabelPadding:?];
  }

  [configurationCopy bottomVerticalLabelPadding];
  v13 = v12;
  [(HKNumericAxisConfiguration *)v5 bottomVerticalLabelPadding];
  if (v13 != v14)
  {
    [configurationCopy bottomVerticalLabelPadding];
    [(HKNumericAxisConfiguration *)self setBottomVerticalLabelPadding:?];
  }

  [configurationCopy bottomLegendViewPadding];
  v16 = v15;
  [(HKNumericAxisConfiguration *)v5 bottomLegendViewPadding];
  if (v16 != v17)
  {
    [configurationCopy bottomLegendViewPadding];
    [(HKNumericAxisConfiguration *)self setBottomLegendViewPadding:?];
  }

  v18.receiver = self;
  v18.super_class = HKNumericAxisConfiguration;
  [(HKAxisConfiguration *)&v18 applyOverridesFromAxisConfiguration:configurationCopy];
}

@end