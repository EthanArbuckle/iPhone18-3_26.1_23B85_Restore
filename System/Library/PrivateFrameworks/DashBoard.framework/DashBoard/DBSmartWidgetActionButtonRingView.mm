@interface DBSmartWidgetActionButtonRingView
- (void)drawRect:(CGRect)rect;
- (void)setFillColor:(id)color;
- (void)setFocusHighlightColor:(id)color;
@end

@implementation DBSmartWidgetActionButtonRingView

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);

  [(DBSmartWidgetActionButtonRingView *)self setNeedsDisplay];
}

- (void)setFocusHighlightColor:(id)color
{
  objc_storeStrong(&self->_focusHighlightColor, color);

  [(DBSmartWidgetActionButtonRingView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(DBSmartWidgetActionButtonRingView *)self bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v23 = CGRectInset(v22, 4.0, 4.0);
  v9 = v23.origin.x;
  v10 = v23.origin.y;
  v11 = v23.size.width;
  v12 = v23.size.height;
  fillColor = [(DBSmartWidgetActionButtonRingView *)self fillColor];
  if ([(DBSmartWidgetActionButtonRingView *)self isSelected])
  {
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];

    fillColor = _carSystemPrimaryColor;
  }

  if ([(DBSmartWidgetActionButtonRingView *)self isHighlighted])
  {
    v14 = [fillColor colorWithAlphaComponent:0.5];
    [v14 setFill];
  }

  else
  {
    [fillColor setFill];
  }

  if ([(DBSmartWidgetActionButtonRingView *)self isFocusRingVisible])
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v25 = CGRectInset(v24, 1.0, 1.0);
    v15 = v25.origin.x;
    v16 = v25.origin.y;
    v17 = v25.size.width;
    v18 = v25.size.height;
    focusHighlightColor = [(DBSmartWidgetActionButtonRingView *)self focusHighlightColor];
    [focusHighlightColor setStroke];

    CGContextSetLineWidth(CurrentContext, 2.0);
    v26.origin.x = v15;
    v26.origin.y = v16;
    v26.size.width = v17;
    v26.size.height = v18;
    CGContextStrokeEllipseInRect(CurrentContext, v26);
  }

  v27.origin.x = v9;
  v27.origin.y = v10;
  v27.size.width = v11;
  v27.size.height = v12;
  CGContextFillEllipseInRect(CurrentContext, v27);
}

@end