@interface SUUIGiftTableSectionHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setLabel:(id)label;
@end

@implementation SUUIGiftTableSectionHeaderView

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(SUUIGiftTableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SUUIGiftTableSectionHeaderView *)self label];
  if (label != labelCopy && ([labelCopy isEqualToString:label] & 1) == 0)
  {
    label = self->_label;
    if (labelCopy)
    {
      if (!label)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_label;
        self->_label = v6;

        v8 = self->_label;
        backgroundColor = [(SUUIGiftTableSectionHeaderView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:secondaryLabelColor];

        [(UILabel *)self->_label setTextAlignment:4];
        [(SUUIGiftTableSectionHeaderView *)self addSubview:self->_label];
        label = self->_label;
      }

      [(UILabel *)label setText:?];
      [(UILabel *)self->_label sizeToFit];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      v14 = self->_label;
      self->_label = 0;
    }

    [(SUUIGiftTableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIGiftTableSectionHeaderView *)self bounds];
  [(UILabel *)self->_label frame];
  label = self->_label;

  [(UILabel *)label setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  label = self->_label;
  colorCopy = color;
  [(UILabel *)label setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIGiftTableSectionHeaderView;
  [(SUUIGiftTableSectionHeaderView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 22.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 24.0;
  }

  v8 = v7 + self->_contentInsets.top + self->_contentInsets.bottom;
  v9 = width;
  result.height = v8;
  result.width = v9;
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