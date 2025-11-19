@interface LACUICapsuleLabel
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)intrinsicContentSize;
- (double)_insetHorizontal;
- (double)_insetVertical;
- (id)_desaturatedSystemRedColor;
- (void)_setBackgroundColor:(void *)a1;
- (void)setStyle:(int64_t)a3;
@end

@implementation LACUICapsuleLabel

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v12 = v11;

  if (width <= v12)
  {
    if (self)
    {
      style = self->_style;
      v23 = 0.0;
      v24 = 16.0;
      if (style != 1)
      {
        v24 = 0.0;
      }

      width = width + v24 * -2.0;
      if (style == 1)
      {
        v23 = 2.0;
      }
    }

    else
    {
      v23 = 0.0;
    }

    v25.receiver = self;
    v25.super_class = LACUICapsuleLabel;
    [(LACUICapsuleLabel *)&v25 textRectForBounds:a4 limitedToNumberOfLines:x, y, width, height + v23 * -2.0];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = LACUICapsuleLabel;
    [(LACUICapsuleLabel *)&v26 textRectForBounds:a4 limitedToNumberOfLines:x, y, width, height];
    if (self)
    {
      v17 = self->_style;
      v18 = 0.0;
      v19 = 16.0;
      if (v17 != 1)
      {
        v19 = 0.0;
      }

      v20 = v15 + v19 * 2.0;
      if (v17 == 1)
      {
        v18 = 2.0;
      }
    }

    else
    {
      v18 = 0.0;
      v20 = v15 + 0.0;
    }

    v21 = v16 + v18 * 2.0;
  }

  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v16.receiver = self;
  v16.super_class = LACUICapsuleLabel;
  [(LACUICapsuleLabel *)&v16 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(LACUICapsuleLabel *)self text];
  v8 = [v7 length];

  if (v8)
  {
    if (self)
    {
      style = self->_style;
      v10 = 0.0;
      v11 = 16.0;
      if (style != 1)
      {
        v11 = 0.0;
      }

      v4 = v4 + v11 * 2.0;
      if (style == 1)
      {
        v10 = 2.0;
      }
    }

    else
    {
      v10 = 0.0;
      v4 = v4 + 0.0;
    }

    v6 = v6 + v10 * 2.0;
    v12 = [(LACUICapsuleLabel *)self layer];
    [v12 setCornerRadius:{fmin(v6 * 0.5, 18.0)}];

    v13 = [(LACUICapsuleLabel *)self layer];
    [v13 masksToBounds];
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setStyle:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v8 = [(LACUICapsuleLabel *)self _desaturatedSystemRedColor];
      v5 = MEMORY[0x277D75348];
      goto LABEL_7;
    case 1:
      v8 = [MEMORY[0x277D75348] whiteColor];
      v6 = [MEMORY[0x277D75348] systemRedColor];
LABEL_8:
      v7 = v6;
      goto LABEL_10;
    case 0:
      v8 = [MEMORY[0x277D75348] labelColor];
      v5 = MEMORY[0x277D75348];
LABEL_7:
      v6 = [v5 clearColor];
      goto LABEL_8;
  }

  v8 = 0;
  v7 = 0;
LABEL_10:
  [(LACUICapsuleLabel *)self setTextColor:v8];
  [(LACUICapsuleLabel *)self _setBackgroundColor:v7];
  self->_style = a3;
}

- (double)_insetHorizontal
{
  if (!a1)
  {
    return 0.0;
  }

  result = 0.0;
  if (*(a1 + 808) == 1)
  {
    return 16.0;
  }

  return result;
}

- (double)_insetVertical
{
  if (!a1)
  {
    return 0.0;
  }

  result = 0.0;
  if (*(a1 + 808) == 1)
  {
    return 2.0;
  }

  return result;
}

- (id)_desaturatedSystemRedColor
{
  if (a1)
  {
    v1 = [MEMORY[0x277D75348] systemRedColor];
    v7 = 0.0;
    v8 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if ([v1 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5])
    {
      v2 = [MEMORY[0x277D75348] colorWithHue:v8 saturation:fmax(fmin(v7 + -0.4 brightness:1.0) alpha:{0.0), v6, v5}];
    }

    else
    {
      v2 = v1;
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBackgroundColor:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = [a1 layer];
    v4 = [v3 CGColor];

    [v5 setBackgroundColor:v4];
  }
}

@end