@interface HKPopulationNormsAxisView
- (HKPopulationNormsAxisView)initWithOrientation:(int64_t)orientation axisLabels:(id)labels;
- (double)minorDimensionSize;
- (void)layoutSubviews;
@end

@implementation HKPopulationNormsAxisView

- (HKPopulationNormsAxisView)initWithOrientation:(int64_t)orientation axisLabels:(id)labels
{
  v24[1] = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v22.receiver = self;
  v22.super_class = HKPopulationNormsAxisView;
  v9 = [(HKPopulationNormsAxisView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    v9->_orientation = orientation;
    objc_storeStrong(&v9->_axisLabelValues, labels);
    if (!v10->_orientation && [(NSArray *)v10->_axisLabelValues count]<= 1)
    {
      [HKPopulationNormsAxisView initWithOrientation:a2 axisLabels:v10];
    }

    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    v23 = *MEMORY[0x1E69DB648];
    v24[0] = hk_chartAxisLabelFont;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    axisLabelAttributes = v10->_axisLabelAttributes;
    v10->_axisLabelAttributes = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(labelsCopy, "count")}];
    axisLabelViews = v10->_axisLabelViews;
    v10->_axisLabelViews = v14;

    if ([labelsCopy count])
    {
      v16 = 0;
      do
      {
        v17 = [_HKPopulationNormsAxisLabelView alloc];
        v18 = [(NSArray *)v10->_axisLabelValues objectAtIndexedSubscript:v16];
        v19 = [(_HKPopulationNormsAxisLabelView *)v17 initWithLabel:v18];

        [(_HKPopulationNormsAxisLabelView *)v19 setFont:hk_chartAxisLabelFont];
        hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
        [(_HKPopulationNormsAxisLabelView *)v19 setTextColor:hk_chartAxisLabelColor];

        [(HKPopulationNormsAxisView *)v10 addSubview:v19];
        [(NSMutableArray *)v10->_axisLabelViews addObject:v19];

        ++v16;
      }

      while ([labelsCopy count] > v16);
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = HKPopulationNormsAxisView;
  [(HKPopulationNormsAxisView *)&v21 layoutSubviews];
  orientation = self->_orientation;
  layer = [(HKPopulationNormsAxisView *)self layer];
  [layer frame];
  Height = CGRectGetHeight(v22);

  layer2 = [(HKPopulationNormsAxisView *)self layer];
  [layer2 frame];
  Width = CGRectGetWidth(v23);

  if (!orientation)
  {
    Width = Height;
  }

  v8 = [(NSMutableArray *)self->_axisLabelViews count];
  if ([(NSMutableArray *)self->_axisLabelViews count])
  {
    v9 = 0;
    v10 = Width / ((__PAIR128__(v8, orientation) - 1) >> 64);
    do
    {
      v11 = [(NSMutableArray *)self->_axisLabelViews objectAtIndexedSubscript:v9];
      v12 = v10 * v9;
      axisLabel = [v11 axisLabel];
      stringRepresentation = [axisLabel stringRepresentation];
      [stringRepresentation sizeWithAttributes:self->_axisLabelAttributes];
      v16 = v15;
      v18 = v17;

      v19 = v12 + 5.0;
      if (!orientation)
      {
        v19 = 5.0;
      }

      v20 = Height - v12 + v18 * -0.5;
      if (orientation)
      {
        v20 = 6.0;
      }

      [v11 setFrame:{v19, v20, v16, v18}];
      [v11 setNeedsLayout];

      ++v9;
    }

    while ([(NSMutableArray *)self->_axisLabelViews count]> v9);
  }
}

- (double)minorDimensionSize
{
  orientation = self->_orientation;
  if (![(NSMutableArray *)self->_axisLabelViews count])
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = [(NSMutableArray *)self->_axisLabelViews objectAtIndexedSubscript:v4];
    axisLabel = [v6 axisLabel];
    stringRepresentation = [axisLabel stringRepresentation];
    [stringRepresentation sizeWithAttributes:self->_axisLabelAttributes];
    v10 = v9;
    v12 = v11;

    v13 = v10 + 5.0;
    if (orientation)
    {
      v13 = v12 + 6.0;
    }

    v5 = fmax(v5, v13);

    ++v4;
  }

  while ([(NSMutableArray *)self->_axisLabelViews count]> v4);
  return v5;
}

- (void)initWithOrientation:(uint64_t)a1 axisLabels:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsAxisView.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"_axisLabelValues.count > 1"}];
}

@end