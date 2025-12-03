@interface SUUISeparatorView
- (void)drawRect:(CGRect)rect;
- (void)setColor1:(id)color1;
- (void)setColor2:(id)color2;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation SUUISeparatorView

- (void)setColor1:(id)color1
{
  if (self->_color1 != color1)
  {
    v4 = [color1 copy];
    color1 = self->_color1;
    self->_color1 = v4;

    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setColor2:(id)color2
{
  if (self->_color2 != color2)
  {
    v4 = [color2 copy];
    color2 = self->_color2;
    self->_color2 = v4;

    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setSeparatorStyle:(int64_t)style
{
  if (self->_separatorStyle != style)
  {
    self->_separatorStyle = style;
    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  [(SUUISeparatorView *)self bounds:rect.origin.x];
  v6 = v4;
  v7 = v5;
  separatorStyle = self->_separatorStyle;
  if (separatorStyle == 1)
  {
    v12 = v4 * 0.5;
    v11 = floorf(v12);
    [(UIColor *)self->_color1 set];
    v10 = 0.0;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v11;
    v19.size.height = v7;
    UIRectFill(v19);
    [(UIColor *)self->_color2 set];
    v6 = v11;
  }

  else
  {
    if (separatorStyle)
    {
      return;
    }

    v9 = v5 * 0.5;
    v10 = floorf(v9);
    [(UIColor *)self->_color1 set];
    v11 = 0.0;
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v6;
    v18.size.height = v10;
    UIRectFill(v18);
    [(UIColor *)self->_color2 set];
    v7 = v10;
  }

  v13 = v11;
  v14 = v10;
  v15 = v6;
  v16 = v7;

  UIRectFill(*&v13);
}

@end