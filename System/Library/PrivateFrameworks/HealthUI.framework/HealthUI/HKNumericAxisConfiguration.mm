@interface HKNumericAxisConfiguration
- (HKNumericAxisConfiguration)init;
- (void)applyOverridesFromNumericAxisConfiguration:(id)a3;
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

- (void)applyOverridesFromNumericAxisConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  v6 = [v4 labelDimension];
  v7 = [(HKNumericAxisConfiguration *)v5 labelDimension];

  if (v6 != v7)
  {
    v8 = [v4 labelDimension];
    [(HKNumericAxisConfiguration *)self setLabelDimension:v8];
  }

  [v4 topVerticalLabelPadding];
  v10 = v9;
  [(HKNumericAxisConfiguration *)v5 topVerticalLabelPadding];
  if (v10 != v11)
  {
    [v4 topVerticalLabelPadding];
    [(HKNumericAxisConfiguration *)self setTopVerticalLabelPadding:?];
  }

  [v4 bottomVerticalLabelPadding];
  v13 = v12;
  [(HKNumericAxisConfiguration *)v5 bottomVerticalLabelPadding];
  if (v13 != v14)
  {
    [v4 bottomVerticalLabelPadding];
    [(HKNumericAxisConfiguration *)self setBottomVerticalLabelPadding:?];
  }

  [v4 bottomLegendViewPadding];
  v16 = v15;
  [(HKNumericAxisConfiguration *)v5 bottomLegendViewPadding];
  if (v16 != v17)
  {
    [v4 bottomLegendViewPadding];
    [(HKNumericAxisConfiguration *)self setBottomLegendViewPadding:?];
  }

  v18.receiver = self;
  v18.super_class = HKNumericAxisConfiguration;
  [(HKAxisConfiguration *)&v18 applyOverridesFromAxisConfiguration:v4];
}

@end