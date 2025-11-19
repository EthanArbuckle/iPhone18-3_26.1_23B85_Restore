@interface _HKPopulationNormsAxisLabelView
- (_HKPopulationNormsAxisLabelView)initWithLabel:(id)a3;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation _HKPopulationNormsAxisLabelView

- (_HKPopulationNormsAxisLabelView)initWithLabel:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _HKPopulationNormsAxisLabelView;
  v6 = [(_HKPopulationNormsAxisLabelView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_axisLabel, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    rangeStartLabel = v7->_rangeStartLabel;
    v7->_rangeStartLabel = v8;

    [(_HKPopulationNormsAxisLabelView *)v7 addSubview:v7->_rangeStartLabel];
    v10 = [(HKPopulationNormsAxisLabel *)v7->_axisLabel rangeEnd];

    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      rangeSeparatorLabel = v7->_rangeSeparatorLabel;
      v7->_rangeSeparatorLabel = v11;

      [(_HKPopulationNormsAxisLabelView *)v7 addSubview:v7->_rangeSeparatorLabel];
      v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      rangeEndLabel = v7->_rangeEndLabel;
      v7->_rangeEndLabel = v13;

      [(_HKPopulationNormsAxisLabelView *)v7 addSubview:v7->_rangeEndLabel];
    }
  }

  return v7;
}

- (void)setTextColor:(id)a3
{
  rangeStartLabel = self->_rangeStartLabel;
  v5 = a3;
  [(UILabel *)rangeStartLabel setTextColor:v5];
  [(UILabel *)self->_rangeSeparatorLabel setTextColor:v5];
  [(UILabel *)self->_rangeEndLabel setTextColor:v5];
}

- (void)setFont:(id)a3
{
  rangeStartLabel = self->_rangeStartLabel;
  v5 = a3;
  [(UILabel *)rangeStartLabel setFont:v5];
  [(UILabel *)self->_rangeSeparatorLabel setFont:v5];
  [(UILabel *)self->_rangeEndLabel setFont:v5];
}

- (void)layoutSubviews
{
  v3 = [(HKPopulationNormsAxisLabel *)self->_axisLabel stringRepresentation];
  v4 = [(HKPopulationNormsAxisLabel *)self->_axisLabel separatorString];
  v26 = [v3 componentsSeparatedByString:v4];

  v5 = [v26 objectAtIndexedSubscript:0];
  [(UILabel *)self->_rangeStartLabel setText:v5];

  [(UILabel *)self->_rangeStartLabel sizeToFit];
  if (self->_rangeEndLabel && [v26 count] == 2)
  {
    v6 = [(HKPopulationNormsAxisLabel *)self->_axisLabel separatorString];
    [(UILabel *)self->_rangeSeparatorLabel setText:v6];

    [(UILabel *)self->_rangeSeparatorLabel sizeToFit];
    [(UILabel *)self->_rangeSeparatorLabel bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UILabel *)self->_rangeStartLabel frame];
    MaxX = CGRectGetMaxX(v28);
    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    v30 = CGRectOffset(v29, MaxX, 0.0);
    [(UILabel *)self->_rangeSeparatorLabel setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    v16 = [v26 objectAtIndexedSubscript:1];
    [(UILabel *)self->_rangeEndLabel setText:v16];

    [(UILabel *)self->_rangeEndLabel sizeToFit];
    [(UILabel *)self->_rangeEndLabel bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(UILabel *)self->_rangeSeparatorLabel frame];
    v25 = CGRectGetMaxX(v31);
    v32.origin.x = v18;
    v32.origin.y = v20;
    v32.size.width = v22;
    v32.size.height = v24;
    v33 = CGRectOffset(v32, v25, 0.0);
    [(UILabel *)self->_rangeEndLabel setFrame:v33.origin.x, v33.origin.y, v33.size.width, v33.size.height];
  }
}

@end