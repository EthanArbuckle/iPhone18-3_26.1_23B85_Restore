@interface SUUIGiftDashView
- (CGSize)dashSize;
- (void)drawRect:(CGRect)rect;
@end

@implementation SUUIGiftDashView

- (void)drawRect:(CGRect)rect
{
  [(SUUIGiftDashView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  p_dashSize = &self->_dashSize;
  height = self->_dashSize.height;
  [(UIColor *)self->_dashColor set];
  if (v5 > 0.0)
  {
    v10 = (v7 - height) * 0.5;
    v11 = floorf(v10);
    v12 = 0.0;
    do
    {
      if (p_dashSize->width >= v5 - v12)
      {
        width = v5 - v12;
      }

      else
      {
        width = p_dashSize->width;
      }

      v15 = v12;
      v16 = v11;
      v13 = self->_dashSize.height;
      UIRectFill(*(&width - 2));
      v12 = v12 + self->_dashSpacing;
    }

    while (v12 < v5);
  }
}

- (CGSize)dashSize
{
  width = self->_dashSize.width;
  height = self->_dashSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end