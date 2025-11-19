@interface SUUISeparatorView
- (void)drawRect:(CGRect)a3;
- (void)setColor1:(id)a3;
- (void)setColor2:(id)a3;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation SUUISeparatorView

- (void)setColor1:(id)a3
{
  if (self->_color1 != a3)
  {
    v4 = [a3 copy];
    color1 = self->_color1;
    self->_color1 = v4;

    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setColor2:(id)a3
{
  if (self->_color2 != a3)
  {
    v4 = [a3 copy];
    color2 = self->_color2;
    self->_color2 = v4;

    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if (self->_separatorStyle != a3)
  {
    self->_separatorStyle = a3;
    [(SUUISeparatorView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(SUUISeparatorView *)self bounds:a3.origin.x];
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