@interface SUUIFloatingOverlayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIFloatingOverlayView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentView:(id)view;
@end

@implementation SUUIFloatingOverlayView

- (SUUIFloatingOverlayView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SUUIFloatingOverlayView;
  v3 = [(SUUIFloatingOverlayView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIFloatingOverlayView *)v3 setBackgroundColor:clearColor];

    [(SUUIFloatingOverlayView *)v3 setClipsToBounds:1];
    layer = [(SUUIFloatingOverlayView *)v3 layer];
    [layer setCornerRadius:10.0];

    v6 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    inputSettings = [v6 inputSettings];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v9 = [systemBackgroundColor colorWithAlphaComponent:0.6];
    [inputSettings setColorTint:v9];

    [v6 setAutoresizingMask:18];
    [(SUUIFloatingOverlayView *)v3 bounds];
    [v6 setFrame:?];
    [(SUUIFloatingOverlayView *)v3 addSubview:v6];
  }

  return v3;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIFloatingOverlayView *)self setNeedsLayout];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  v9 = viewCopy;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    v7 = self->_contentView;
    if (v7)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v7 setBackgroundColor:clearColor];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self->_contentView sizeThatFits:fits.width, fits.height];
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