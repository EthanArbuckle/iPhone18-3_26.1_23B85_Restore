@interface HXUILabelWithBackgroundView
- (CGSize)sizeThatFits:(CGSize)a3;
- (HXUILabelWithBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation HXUILabelWithBackgroundView

- (HXUILabelWithBackgroundView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = HXUILabelWithBackgroundView;
  v3 = [(HXUILabelWithBackgroundView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v3->_label setFont:v6];

    [(UILabel *)v3->_label setTextAlignment:1];
    [(UILabel *)v3->_label setAdjustsFontForContentSizeCategory:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_label setTextColor:v7];

    [(HXUILabelWithBackgroundView *)v3 addSubview:v3->_label];
    v8 = [(HXUILabelWithBackgroundView *)v3 layer];
    [v8 setCornerRadius:8.0];

    v9 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [(HXUILabelWithBackgroundView *)v3 setBackgroundColor:v9];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HXUILabelWithBackgroundView;
  [(HXUILabelWithBackgroundView *)&v3 layoutSubviews];
  [(HXUILabelWithBackgroundView *)self bounds];
  v5 = CGRectInset(v4, 12.0, 7.0);
  [(UILabel *)self->_label setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = a3.width + -24.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  [(UILabel *)self->_label sizeThatFits:v3, a3.height];
  v5 = v4 + 24.0;
  v7 = v6 + 14.0;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)setText:(id)a3
{
  [(UILabel *)self->_label setText:a3];

  [(HXUILabelWithBackgroundView *)self setNeedsLayout];
}

@end