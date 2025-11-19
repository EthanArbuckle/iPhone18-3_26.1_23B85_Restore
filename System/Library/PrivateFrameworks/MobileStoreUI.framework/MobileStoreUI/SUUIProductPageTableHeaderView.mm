@interface SUUIProductPageTableHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIProductPageTableHeaderView

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SUUIProductPageTableHeaderView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v14 = a3;
  v4 = [(SUUIProductPageTableHeaderView *)self title];
  if (v4 != v14 && ([v4 isEqualToString:v14] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v14)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SUUIProductPageTableHeaderView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        v13 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v12 setTextColor:v13];

        [(SUUIProductPageTableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setHidden:0];
      [(UILabel *)self->_titleLabel setText:v14];
      [(UILabel *)self->_titleLabel sizeToFit];
      [(SUUIProductPageTableHeaderView *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)titleLabel setHidden:1];
    }
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPageTableHeaderView *)self bounds];
  [(UILabel *)self->_titleLabel frame];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  titleLabel = self->_titleLabel;
  v5 = a3;
  [(UILabel *)titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIProductPageTableHeaderView;
  [(SUUIProductPageTableHeaderView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_titleLabel frame:a3.width];
  v5 = v4 + self->_contentInsets.bottom + self->_contentInsets.top;
  v7 = v6 + self->_contentInsets.left + self->_contentInsets.right;
  result.height = v5;
  result.width = v7;
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