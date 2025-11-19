@interface FIUIChartMinMaxValueAxisDescriptor
- (CGSize)shadowOffset;
- (id)_axisLabelForValue:(id)a3 highlighted:(BOOL)a4;
- (id)axisLabels;
@end

@implementation FIUIChartMinMaxValueAxisDescriptor

- (id)_axisLabelForValue:(id)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(FIUIChartAxisLabel);
  v8 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v6 numberStyle:1];
  [(FIUIChartAxisLabel *)v7 setText:v8];

  v9 = 16;
  if (v4)
  {
    v9 = 24;
  }

  [(FIUIChartAxisLabel *)v7 setLabelColor:*(&self->super.isa + v9)];
  [(FIUIChartAxisLabel *)v7 setLocation:v6];

  [(FIUIChartAxisLabel *)v7 setShadowColor:self->_shadowColor];
  [(FIUIChartAxisLabel *)v7 setShadowOffset:self->_shadowOffset.width, self->_shadowOffset.height];
  [(FIUIChartAxisLabel *)v7 setShadowBlur:self->_shadowBlur];

  return v7;
}

- (id)axisLabels
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v4 = [(FIUIChartMinMaxValueAxisDescriptor *)self _axisLabelForValue:self->_minValue highlighted:0];
  [v3 addObject:v4];

  highlightedValue = self->_highlightedValue;
  if (highlightedValue)
  {
    v6 = [(FIUIChartMinMaxValueAxisDescriptor *)self _axisLabelForValue:highlightedValue highlighted:1];
    [v3 addObject:v6];
  }

  v7 = [(FIUIChartMinMaxValueAxisDescriptor *)self _axisLabelForValue:self->_maxValue highlighted:0];
  [v3 addObject:v7];

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end