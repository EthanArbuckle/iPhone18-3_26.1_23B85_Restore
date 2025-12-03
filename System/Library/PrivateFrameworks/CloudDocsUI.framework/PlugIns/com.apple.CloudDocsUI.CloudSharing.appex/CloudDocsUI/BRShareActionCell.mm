@interface BRShareActionCell
- (BRShareActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setRepresentedValue:(id)value;
@end

@implementation BRShareActionCell

- (BRShareActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = BRShareActionCell;
  v4 = [(BRShareActionCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_titleLabel setFont:v7];

    [(UILabel *)v4->_titleLabel setLineBreakMode:5];
    [(BRShareActionCell *)v4 addSubview:v4->_titleLabel];
    [(UILabel *)v4->_titleLabel _setTextColorFollowsTintColor:1];
    v8 = objc_opt_new();
    textCenterLayoutGuide = v4->_textCenterLayoutGuide;
    v4->_textCenterLayoutGuide = v8;

    [(BRShareActionCell *)v4 addLayoutGuide:v4->_textCenterLayoutGuide];
    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    safeAreaLayoutGuide = [(BRShareActionCell *)v4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:64.0];
    [v13 setActive:1];

    trailingAnchor = [(BRShareActionCell *)v4 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:32.0];
    [v16 setActive:1];

    centerYAnchor = [(BRShareActionCell *)v4 centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v19 setActive:1];
  }

  return v4;
}

- (void)setRepresentedValue:(id)value
{
  valueCopy = value;
  if (self->_representedValue != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_representedValue, value);
    [(UILabel *)self->_titleLabel setText:v6];
    valueCopy = v6;
  }
}

@end