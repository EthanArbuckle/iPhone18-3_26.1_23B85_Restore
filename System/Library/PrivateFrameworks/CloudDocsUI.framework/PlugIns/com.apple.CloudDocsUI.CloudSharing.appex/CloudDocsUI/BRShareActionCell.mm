@interface BRShareActionCell
- (BRShareActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setRepresentedValue:(id)a3;
@end

@implementation BRShareActionCell

- (BRShareActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = BRShareActionCell;
  v4 = [(BRShareActionCell *)&v21 initWithStyle:a3 reuseIdentifier:a4];
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
    v10 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v11 = [(BRShareActionCell *)v4 safeAreaLayoutGuide];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:64.0];
    [v13 setActive:1];

    v14 = [(BRShareActionCell *)v4 trailingAnchor];
    v15 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:32.0];
    [v16 setActive:1];

    v17 = [(BRShareActionCell *)v4 centerYAnchor];
    v18 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];
  }

  return v4;
}

- (void)setRepresentedValue:(id)a3
{
  v5 = a3;
  if (self->_representedValue != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_representedValue, a3);
    [(UILabel *)self->_titleLabel setText:v6];
    v5 = v6;
  }
}

@end