@interface SBHorizontalScrollFailureTriangleView
- (SBHorizontalScrollFailureTriangleView)initWithStyle:(int)style recognizer:(id)recognizer forPoint:(CGPoint)point withMaxVerticalOffset:(double)offset inView:(id)view pointingRight:(BOOL)right;
- (void)drawRect:(CGRect)rect;
- (void)setContentColor:(id)color;
@end

@implementation SBHorizontalScrollFailureTriangleView

- (SBHorizontalScrollFailureTriangleView)initWithStyle:(int)style recognizer:(id)recognizer forPoint:(CGPoint)point withMaxVerticalOffset:(double)offset inView:(id)view pointingRight:(BOOL)right
{
  y = point.y;
  x = point.x;
  recognizerCopy = recognizer;
  viewCopy = view;
  v28.receiver = self;
  v28.super_class = SBHorizontalScrollFailureTriangleView;
  v17 = [(SBHorizontalScrollFailureTriangleView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    v17->_style = style;
    v17->_pointingRight = right;
    [viewCopy bounds];
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
      [recognizerCopy _effectiveBottomAngle];
      v22 = v20 * tan(v21 * 0.0174532925);
      v23 = y + offset;
    }

    else
    {
      [recognizerCopy _effectiveTopAngle];
      v22 = v20 * tan(v24 * 0.0174532925);
      v23 = y - offset - v22;
    }

    [(SBHorizontalScrollFailureTriangleView *)v18 setFrame:x, v23, v20, v22];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBHorizontalScrollFailureTriangleView *)v18 setBackgroundColor:clearColor];

    yellowColor = [MEMORY[0x277D75348] yellowColor];
    [(SBHorizontalScrollFailureTriangleView *)v18 setContentColor:yellowColor];
  }

  return v18;
}

- (void)drawRect:(CGRect)rect
{
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  pointingRight = self->_pointingRight;
  v20 = bezierPath;
  if (self->_style)
  {
    if (self->_pointingRight)
    {
      v6 = 0.0;
LABEL_6:
      [bezierPath moveToPoint:{0.0, v6}];
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
      bezierPath = v20;
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

- (void)setContentColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_contentColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentColor, color);
    [(SBHorizontalScrollFailureTriangleView *)self setNeedsDisplay];
  }
}

@end