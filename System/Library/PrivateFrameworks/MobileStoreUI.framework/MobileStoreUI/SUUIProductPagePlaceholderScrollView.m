@interface SUUIProductPagePlaceholderScrollView
- (void)layoutSubviews;
- (void)setPlaceholderView:(id)a3;
@end

@implementation SUUIProductPagePlaceholderScrollView

- (void)setPlaceholderView:(id)a3
{
  v5 = a3;
  placeholderView = self->_placeholderView;
  if (placeholderView != v5)
  {
    v7 = v5;
    [(UIView *)placeholderView removeFromSuperview];
    objc_storeStrong(&self->_placeholderView, a3);
    if (self->_placeholderView)
    {
      [(SUUIProductPagePlaceholderScrollView *)self addSubview:?];
    }

    placeholderView = [(SUUIProductPagePlaceholderScrollView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](placeholderView, v5);
}

- (void)layoutSubviews
{
  [(SUUIProductPagePlaceholderScrollView *)self bounds];
  placeholderView = self->_placeholderView;
  if (placeholderView)
  {
    v6 = v3;
    v7 = v4;
    [(UIView *)placeholderView sizeToFit];
    if (!self->_isPad)
    {
      [(SUUIProductPagePlaceholderScrollView *)self contentInset];
      v9 = v7 - v8;
      [(SUUIProductPagePlaceholderScrollView *)self contentInset];
      v7 = v9 - v10;
    }

    [(UIView *)self->_placeholderView frame];
    v13 = (v7 - v12) * 0.5;
    offset = roundf(v13);
    if (self->_offset != 0.0)
    {
      offset = self->_offset;
    }

    v15 = (v6 - v11) * 0.5;
    [(UIView *)self->_placeholderView setFrame:roundf(v15), offset];
  }

  v16.receiver = self;
  v16.super_class = SUUIProductPagePlaceholderScrollView;
  [(SUUIProductPagePlaceholderScrollView *)&v16 layoutSubviews];
}

@end