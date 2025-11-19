@interface FMDistanceBadge
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)insets;
- (void)_commonSetup;
- (void)awakeFromNib;
- (void)drawRect:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
- (void)prepareForInterfaceBuilder;
- (void)setBackgroundColor:(id)a3;
@end

@implementation FMDistanceBadge

- (void)awakeFromNib
{
  v3 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self setRoundedRectBackgroundColor:v3];

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

  v4 = [MEMORY[0x277D75348] whiteColor];
  [(FMDistanceBadge *)self setTextColor:v4];

  [(FMDistanceBadge *)self setAdjustsFontSizeToFitWidth:1];
  [(FMDistanceBadge *)self setMinimumScaleFactor:0.8];
  [(FMDistanceBadge *)self setTextAlignment:1];

  [(FMDistanceBadge *)self setInsets:1.0, 9.0, 2.0, 9.0];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [MEMORY[0x277D75348] clearColor];
  v5.receiver = self;
  v5.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v5 setBackgroundColor:v4];
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FMDistanceBadge *)self insets];
  v12.receiver = self;
  v12.super_class = FMDistanceBadge;
  [(FMDistanceBadge *)&v12 drawTextInRect:x + v11, y + v8, width - (v11 + v9), height - (v8 + v10)];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  [(FMDistanceBadge *)self bounds];
  v9 = [UIView newPathForRoundedRect:"newPathForRoundedRect:radius:" radius:?];
  v10 = [(UIView *)self roundedRectBackgroundColor];

  if (v10)
  {
    v11 = [(UIView *)self roundedRectBackgroundColor];
    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);
  }

  v12 = [(UIView *)self roundedRectBorderColor];

  if (v12)
  {
    v13 = [(UIView *)self roundedRectBorderColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [v13 CGColor]);
  }

  v14 = [(UIView *)self roundedRectBorderWidth];

  if (v14)
  {
    v15 = [(UIView *)self roundedRectBorderWidth];
    [v15 floatValue];
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