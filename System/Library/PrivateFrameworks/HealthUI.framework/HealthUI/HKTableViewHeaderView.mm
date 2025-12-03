@interface HKTableViewHeaderView
- (CGSize)intrinsicContentSize;
- (HKTableViewHeaderView)init;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)updateFont;
@end

@implementation HKTableViewHeaderView

- (HKTableViewHeaderView)init
{
  v7.receiver = self;
  v7.super_class = HKTableViewHeaderView;
  v2 = [(HKTableViewHeaderView *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v2->_label;
    v2->_label = v3;

    [(UILabel *)v2->_label setNumberOfLines:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:labelColor];

    [(UILabel *)v2->_label setTextAlignment:4];
    [(HKTableViewHeaderView *)v2 updateFont];
    [(HKTableViewHeaderView *)v2 addSubview:v2->_label];
  }

  return v2;
}

- (void)layoutSubviews
{
  [(HKTableViewHeaderView *)self bounds];
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_contentInsets.right);
  label = self->_label;
  v13 = v12 - (top + self->_contentInsets.bottom);

  [(UILabel *)label setFrame:v6, v8, v10, v13];
}

- (void)updateFont
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [(UILabel *)self->_label setFont:v3];

  [(HKTableViewHeaderView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_label intrinsicContentSize];
  preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  v5 = v4 + self->_contentInsets.top + self->_contentInsets.bottom;
  result.height = v5;
  result.width = preferredMaxLayoutWidth;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end