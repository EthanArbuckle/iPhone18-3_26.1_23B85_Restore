@interface SUUIGiftTableSectionHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setLabel:(id)a3;
@end

@implementation SUUIGiftTableSectionHeaderView

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SUUIGiftTableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setLabel:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftTableSectionHeaderView *)self label];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    label = self->_label;
    if (v15)
    {
      if (!label)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_label;
        self->_label = v6;

        v8 = self->_label;
        v9 = [(SUUIGiftTableSectionHeaderView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        v13 = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

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

- (void)setBackgroundColor:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIGiftTableSectionHeaderView;
  [(SUUIGiftTableSectionHeaderView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 22.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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