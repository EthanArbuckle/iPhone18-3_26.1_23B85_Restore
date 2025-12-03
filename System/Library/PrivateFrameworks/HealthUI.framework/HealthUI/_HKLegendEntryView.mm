@interface _HKLegendEntryView
- (_HKLegendEntryView)initWithLegendEntry:(id)entry;
- (void)setLegendEntry:(id)entry;
@end

@implementation _HKLegendEntryView

- (_HKLegendEntryView)initWithLegendEntry:(id)entry
{
  entryCopy = entry;
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

    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    [(UILabel *)v6->_legendLabel setFont:hk_chartAxisLabelFont];

    [(_HKLegendEntryView *)v6 addArrangedSubview:v6->_legendLabel];
    [(_HKLegendEntryView *)v6 setLegendEntry:entryCopy];
  }

  return v6;
}

- (void)setLegendEntry:(id)entry
{
  entryCopy = entry;
  if ([(HKLegendEntry *)self->_currentLegendEntry isEqual:?])
  {
    goto LABEL_22;
  }

  title = [(HKLegendEntry *)self->_currentLegendEntry title];
  title2 = [entryCopy title];
  if ([title isEqualToString:title2])
  {
    labelColor = [(HKLegendEntry *)self->_currentLegendEntry labelColor];
    labelColor2 = [entryCopy labelColor];
    v9 = [labelColor isEqual:labelColor2];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  title3 = [entryCopy title];
  [(UILabel *)self->_legendLabel setText:title3];

  labelColor3 = [entryCopy labelColor];
  if (labelColor3)
  {
    [(UILabel *)self->_legendLabel setTextColor:labelColor3];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_legendLabel setTextColor:secondaryLabelColor];
  }

  [(UILabel *)self->_legendLabel sizeToFit];
LABEL_10:
  text = [(UILabel *)self->_legendLabel text];
  -[UILabel setHidden:](self->_legendLabel, "setHidden:", [text length] == 0);

  icon = [(HKLegendEntry *)self->_currentLegendEntry icon];
  icon2 = [entryCopy icon];
  v16 = icon2;
  if (icon != icon2)
  {

LABEL_13:
    legendIcon = self->_legendIcon;
    iconTint = [entryCopy iconTint];
    [(UIImageView *)legendIcon setTintColor:iconTint];

    iconTint2 = [entryCopy iconTint];

    v22 = self->_legendIcon;
    icon3 = [entryCopy icon];
    v24 = icon3;
    if (iconTint2)
    {
      v25 = [icon3 imageWithRenderingMode:2];
      [(UIImageView *)v22 setImage:v25];
    }

    else
    {
      [(UIImageView *)v22 setImage:icon3];
    }

    goto LABEL_17;
  }

  iconTint3 = [(HKLegendEntry *)self->_currentLegendEntry iconTint];
  iconTint4 = [entryCopy iconTint];

  if (iconTint3 != iconTint4)
  {
    goto LABEL_13;
  }

LABEL_17:
  icon4 = [entryCopy icon];
  [(UIImageView *)self->_legendIcon setHidden:icon4 == 0];

  dotColor = [(HKLegendEntry *)self->_currentLegendEntry dotColor];
  dotColor2 = [entryCopy dotColor];
  v29 = [dotColor isEqual:dotColor2];

  if ((v29 & 1) == 0)
  {
    dotColor3 = [entryCopy dotColor];
    [(_HKLegendDot *)self->_legendDot setDotColor:dotColor3];
  }

  innerDotColor = [(HKLegendEntry *)self->_currentLegendEntry innerDotColor];
  innerDotColor2 = [entryCopy innerDotColor];
  v33 = [innerDotColor isEqual:innerDotColor2];

  if ((v33 & 1) == 0)
  {
    innerDotColor3 = [entryCopy innerDotColor];
    [(_HKLegendDot *)self->_legendDot setInnerDotColor:innerDotColor3];
  }

  dotColor4 = [entryCopy dotColor];
  [(_HKLegendDot *)self->_legendDot setHidden:dotColor4 == 0];

  objc_storeStrong(&self->_currentLegendEntry, entry);
LABEL_22:
}

@end