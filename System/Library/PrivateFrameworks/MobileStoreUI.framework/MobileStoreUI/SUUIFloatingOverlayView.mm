@interface SUUIFloatingOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIFloatingOverlayView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentView:(id)a3;
@end

@implementation SUUIFloatingOverlayView

- (SUUIFloatingOverlayView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SUUIFloatingOverlayView;
  v3 = [(SUUIFloatingOverlayView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SUUIFloatingOverlayView *)v3 setBackgroundColor:v4];

    [(SUUIFloatingOverlayView *)v3 setClipsToBounds:1];
    v5 = [(SUUIFloatingOverlayView *)v3 layer];
    [v5 setCornerRadius:10.0];

    v6 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    v7 = [v6 inputSettings];
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    [v7 setColorTint:v9];

    [v6 setAutoresizingMask:18];
    [(SUUIFloatingOverlayView *)v3 bounds];
    [v6 setFrame:?];
    [(SUUIFloatingOverlayView *)v3 addSubview:v6];
  }

  return v3;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIFloatingOverlayView *)self setNeedsLayout];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  v9 = v5;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = self->_contentView;
    if (v7)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v7 setBackgroundColor:v8];

      [(SUUIFloatingOverlayView *)self addSubview:self->_contentView];
    }
  }
}

- (void)layoutSubviews
{
  contentView = self->_contentView;
  [(SUUIFloatingOverlayView *)self bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentInset.right);
  v13 = v12 - (top + self->_contentInset.bottom);

  [(UIView *)contentView setFrame:v7, v9, v11, v13];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
  v6 = v5 + self->_contentInset.top + self->_contentInset.bottom;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end