@interface FMDistanceBadge
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)insets;
- (void)_commonSetup;
- (void)awakeFromNib;
- (void)drawRect:(CGRect)rect;
- (void)drawTextInRect:(CGRect)rect;
- (void)prepareForInterfaceBuilder;
- (void)setBackgroundColor:(id)color;
@end

@implementation FMDistanceBadge

- (void)awakeFromNib
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self setRoundedRectBackgroundColor:clearColor];

  v4.receiver = self;
  v4.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v4 awakeFromNib];
  [(FMDistanceBadge *)self _commonSetup];
}

- (void)prepareForInterfaceBuilder
{
  v3.receiver = self;
  v3.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v3 prepareForInterfaceBuilder];
  [(FMDistanceBadge *)self _commonSetup];
}

- (void)_commonSetup
{
  v3 = [MEMORY[0x277D75348] colorWithRed:0.4627 green:0.7764 blue:0.2313 alpha:1.0];
  [(UIView *)self setRoundedRectBackgroundColor:v3];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(FMDistanceBadge *)self setTextColor:whiteColor];

  [(FMDistanceBadge *)self setAdjustsFontSizeToFitWidth:1];
  [(FMDistanceBadge *)self setMinimumScaleFactor:0.8];
  [(FMDistanceBadge *)self setTextAlignment:1];

  [(FMDistanceBadge *)self setInsets:1.0, 9.0, 2.0, 9.0];
}

- (void)setBackgroundColor:(id)color
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  v5.receiver = self;
  v5.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v5 setBackgroundColor:clearColor];
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(FMDistanceBadge *)self insets];
  v12.receiver = self;
  v12.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v12 drawTextInRect:x + v11, y + v8, width - (v11 + v9), height - (v8 + v10)];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  [(FMDistanceBadge *)self bounds];
  v9 = [UIView newPathForRoundedRect:"newPathForRoundedRect:radius:" radius:?];
  roundedRectBackgroundColor = [(UIView *)self roundedRectBackgroundColor];

  if (roundedRectBackgroundColor)
  {
    roundedRectBackgroundColor2 = [(UIView *)self roundedRectBackgroundColor];
    CGContextSetFillColorWithColor(CurrentContext, [roundedRectBackgroundColor2 CGColor]);
  }

  roundedRectBorderColor = [(UIView *)self roundedRectBorderColor];

  if (roundedRectBorderColor)
  {
    roundedRectBorderColor2 = [(UIView *)self roundedRectBorderColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [roundedRectBorderColor2 CGColor]);
  }

  roundedRectBorderWidth = [(UIView *)self roundedRectBorderWidth];

  if (roundedRectBorderWidth)
  {
    roundedRectBorderWidth2 = [(UIView *)self roundedRectBorderWidth];
    [roundedRectBorderWidth2 floatValue];
    CGContextSetLineWidth(CurrentContext, v16);
  }

  CGContextAddPath(CurrentContext, v9);
  CGContextFillPath(CurrentContext);
  CGContextStrokePath(CurrentContext);
  CGPathRelease(v9);
  v17.receiver = self;
  v17.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v17 drawRect:x, y, width, height];
}

- (CGSize)intrinsicContentSize
{
  v15.receiver = self;
  v15.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v15 intrinsicContentSize];
  v5 = v3;
  v6 = v4;
  if ((v3 != *MEMORY[0x277CBF3A8] || v4 != *(MEMORY[0x277CBF3A8] + 8)) && v3 != *MEMORY[0x277D77260] && v4 != *MEMORY[0x277D77260])
  {
    [(FMDistanceBadge *)self insets];
    v6 = v6 + v9 + v10;
    v5 = v5 + v11 + v12;
  }

  v13 = v5;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end