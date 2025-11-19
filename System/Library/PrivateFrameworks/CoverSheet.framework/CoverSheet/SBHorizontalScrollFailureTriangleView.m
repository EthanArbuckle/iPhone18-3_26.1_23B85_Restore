@interface SBHorizontalScrollFailureTriangleView
- (SBHorizontalScrollFailureTriangleView)initWithStyle:(int)a3 recognizer:(id)a4 forPoint:(CGPoint)a5 withMaxVerticalOffset:(double)a6 inView:(id)a7 pointingRight:(BOOL)a8;
- (void)drawRect:(CGRect)a3;
- (void)setContentColor:(id)a3;
@end

@implementation SBHorizontalScrollFailureTriangleView

- (SBHorizontalScrollFailureTriangleView)initWithStyle:(int)a3 recognizer:(id)a4 forPoint:(CGPoint)a5 withMaxVerticalOffset:(double)a6 inView:(id)a7 pointingRight:(BOOL)a8
{
  y = a5.y;
  x = a5.x;
  v15 = a4;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = SBHorizontalScrollFailureTriangleView;
  v17 = [(SBHorizontalScrollFailureTriangleView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    v17->_style = a3;
    v17->_pointingRight = a8;
    [v16 bounds];
    if (v18->_pointingRight)
    {
      v20 = v19 - x;
    }

    else
    {
      v20 = x;
    }

    if (!v18->_pointingRight)
    {
      x = x - x;
    }

    if (v18->_style)
    {
      [v15 _effectiveBottomAngle];
      v22 = v20 * tan(v21 * 0.0174532925);
      v23 = y + a6;
    }

    else
    {
      [v15 _effectiveTopAngle];
      v22 = v20 * tan(v24 * 0.0174532925);
      v23 = y - a6 - v22;
    }

    [(SBHorizontalScrollFailureTriangleView *)v18 setFrame:x, v23, v20, v22];
    v25 = [MEMORY[0x277D75348] clearColor];
    [(SBHorizontalScrollFailureTriangleView *)v18 setBackgroundColor:v25];

    v26 = [MEMORY[0x277D75348] yellowColor];
    [(SBHorizontalScrollFailureTriangleView *)v18 setContentColor:v26];
  }

  return v18;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [MEMORY[0x277D75208] bezierPath];
  pointingRight = self->_pointingRight;
  v20 = v4;
  if (self->_style)
  {
    if (self->_pointingRight)
    {
      v6 = 0.0;
LABEL_6:
      [v4 moveToPoint:{0.0, v6}];
      [(SBHorizontalScrollFailureTriangleView *)self bounds];
      v10 = v9;
      [(SBHorizontalScrollFailureTriangleView *)self bounds];
      [v20 addLineToPoint:{v10, v11}];
      [(SBHorizontalScrollFailureTriangleView *)self bounds];
      v13 = v12;
      goto LABEL_10;
    }

    [(SBHorizontalScrollFailureTriangleView *)self bounds];
    v13 = 0.0;
    [v20 moveToPoint:{v14, 0.0}];
    [(SBHorizontalScrollFailureTriangleView *)self bounds];
    v16 = v15;
  }

  else
  {
    [(SBHorizontalScrollFailureTriangleView *)self bounds];
    if (pointingRight)
    {
      v4 = v20;
      v6 = v8;
      goto LABEL_6;
    }

    v17 = v7;
    [(SBHorizontalScrollFailureTriangleView *)self bounds];
    [v20 moveToPoint:{v17, v18}];
    [(SBHorizontalScrollFailureTriangleView *)self bounds];
    v16 = v19;
    v13 = 0.0;
  }

  [v20 addLineToPoint:{0.0, v16}];
LABEL_10:
  [v20 addLineToPoint:{v13, 0.0}];
  [v20 closePath];
  [(UIColor *)self->_contentColor setFill];
  [v20 fill];
}

- (void)setContentColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_contentColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentColor, a3);
    [(SBHorizontalScrollFailureTriangleView *)self setNeedsDisplay];
  }
}

@end