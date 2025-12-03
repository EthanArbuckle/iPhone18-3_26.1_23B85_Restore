@interface _UIShareHeaderFooterView
- (_UIShareHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation _UIShareHeaderFooterView

- (_UIShareHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = _UIShareHeaderFooterView;
  v3 = [(_UIShareHeaderFooterView *)&v23 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_opt_new();
    [(_UIShareHeaderFooterView *)v3 setCenteredTitleView:v4];

    [(UILabel *)v3->_centeredTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIShareHeaderFooterView *)v3 addSubview:v3->_centeredTitleView];
    v5 = objc_opt_new();
    centerXAnchor = [(UILabel *)v3->_centeredTitleView centerXAnchor];
    centerXAnchor2 = [(_UIShareHeaderFooterView *)v3 centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v5 addObject:v8];

    widthAnchor = [(UILabel *)v3->_centeredTitleView widthAnchor];
    widthAnchor2 = [(_UIShareHeaderFooterView *)v3 widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.899999976];
    [v5 addObject:v11];

    firstBaselineAnchor = [(UILabel *)v3->_centeredTitleView firstBaselineAnchor];
    topAnchor = [(_UIShareHeaderFooterView *)v3 topAnchor];
    v14 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:20.0];
    [v5 addObject:v14];

    bottomAnchor = [(_UIShareHeaderFooterView *)v3 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_centeredTitleView lastBaselineAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:10.0];
    [v5 addObject:v17];

    [NSLayoutConstraint activateConstraints:v5];
    v18 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_centeredTitleView setTextColor:v18];

    [(UILabel *)v3->_centeredTitleView setNumberOfLines:0];
    v19 = +[UIFontMetrics defaultMetrics];
    v20 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
    v21 = [v19 scaledFontForFont:v20];
    [(UILabel *)v3->_centeredTitleView setFont:v21];

    [(UILabel *)v3->_centeredTitleView setAdjustsFontForContentSizeCategory:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100012F00;
  v2[3] = &unk_10004C920;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

@end