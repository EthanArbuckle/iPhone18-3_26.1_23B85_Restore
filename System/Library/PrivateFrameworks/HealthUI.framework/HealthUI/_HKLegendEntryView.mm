@interface _HKLegendEntryView
- (_HKLegendEntryView)initWithLegendEntry:(id)a3;
- (void)setLegendEntry:(id)a3;
@end

@implementation _HKLegendEntryView

- (_HKLegendEntryView)initWithLegendEntry:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _HKLegendEntryView;
  v5 = [(_HKLegendEntryView *)&v17 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  v6 = v5;
  if (v5)
  {
    [(_HKLegendEntryView *)v5 setAlignment:3];
    [(_HKLegendEntryView *)v6 setDistribution:0];
    [(_HKLegendEntryView *)v6 setAxis:0];
    [(_HKLegendEntryView *)v6 setSpacing:5.0];
    LODWORD(v7) = 1144750080;
    [(_HKLegendEntryView *)v6 setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1144750080;
    [(_HKLegendEntryView *)v6 setContentHuggingPriority:1 forAxis:v8];
    v9 = objc_alloc_init(_HKLegendDot);
    legendDot = v6->_legendDot;
    v6->_legendDot = v9;

    [(_HKLegendEntryView *)v6 addArrangedSubview:v6->_legendDot];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    legendIcon = v6->_legendIcon;
    v6->_legendIcon = v11;

    [(_HKLegendEntryView *)v6 addArrangedSubview:v6->_legendIcon];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    legendLabel = v6->_legendLabel;
    v6->_legendLabel = v13;

    v15 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    [(UILabel *)v6->_legendLabel setFont:v15];

    [(_HKLegendEntryView *)v6 addArrangedSubview:v6->_legendLabel];
    [(_HKLegendEntryView *)v6 setLegendEntry:v4];
  }

  return v6;
}

- (void)setLegendEntry:(id)a3
{
  v36 = a3;
  if ([(HKLegendEntry *)self->_currentLegendEntry isEqual:?])
  {
    goto LABEL_22;
  }

  v5 = [(HKLegendEntry *)self->_currentLegendEntry title];
  v6 = [v36 title];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(HKLegendEntry *)self->_currentLegendEntry labelColor];
    v8 = [v36 labelColor];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = [v36 title];
  [(UILabel *)self->_legendLabel setText:v10];

  v11 = [v36 labelColor];
  if (v11)
  {
    [(UILabel *)self->_legendLabel setTextColor:v11];
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_legendLabel setTextColor:v12];
  }

  [(UILabel *)self->_legendLabel sizeToFit];
LABEL_10:
  v13 = [(UILabel *)self->_legendLabel text];
  -[UILabel setHidden:](self->_legendLabel, "setHidden:", [v13 length] == 0);

  v14 = [(HKLegendEntry *)self->_currentLegendEntry icon];
  v15 = [v36 icon];
  v16 = v15;
  if (v14 != v15)
  {

LABEL_13:
    legendIcon = self->_legendIcon;
    v20 = [v36 iconTint];
    [(UIImageView *)legendIcon setTintColor:v20];

    v21 = [v36 iconTint];

    v22 = self->_legendIcon;
    v23 = [v36 icon];
    v24 = v23;
    if (v21)
    {
      v25 = [v23 imageWithRenderingMode:2];
      [(UIImageView *)v22 setImage:v25];
    }

    else
    {
      [(UIImageView *)v22 setImage:v23];
    }

    goto LABEL_17;
  }

  v17 = [(HKLegendEntry *)self->_currentLegendEntry iconTint];
  v18 = [v36 iconTint];

  if (v17 != v18)
  {
    goto LABEL_13;
  }

LABEL_17:
  v26 = [v36 icon];
  [(UIImageView *)self->_legendIcon setHidden:v26 == 0];

  v27 = [(HKLegendEntry *)self->_currentLegendEntry dotColor];
  v28 = [v36 dotColor];
  v29 = [v27 isEqual:v28];

  if ((v29 & 1) == 0)
  {
    v30 = [v36 dotColor];
    [(_HKLegendDot *)self->_legendDot setDotColor:v30];
  }

  v31 = [(HKLegendEntry *)self->_currentLegendEntry innerDotColor];
  v32 = [v36 innerDotColor];
  v33 = [v31 isEqual:v32];

  if ((v33 & 1) == 0)
  {
    v34 = [v36 innerDotColor];
    [(_HKLegendDot *)self->_legendDot setInnerDotColor:v34];
  }

  v35 = [v36 dotColor];
  [(_HKLegendDot *)self->_legendDot setHidden:v35 == 0];

  objc_storeStrong(&self->_currentLegendEntry, a3);
LABEL_22:
}

@end