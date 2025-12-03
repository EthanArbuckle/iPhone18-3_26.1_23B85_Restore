@interface FMBorderedView
- (UIColor)borderColor;
- (double)borderWidth;
- (double)cornerRadius;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setCornerRadius:(double)radius;
@end

@implementation FMBorderedView

- (void)setBorderWidth:(double)width
{
  if (width >= 0.0)
  {
    widthCopy = width;
    [(FMBorderedView *)self setHairlineBorder:0];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    [(FMBorderedView *)self setHairlineBorder:1];
    widthCopy = 1.0;
    if (v6 > 1.0)
    {
      widthCopy = 1.0 / v6;
    }
  }

  layer = [(FMBorderedView *)self layer];
  [layer setBorderWidth:widthCopy];
}

- (double)borderWidth
{
  if ([(FMBorderedView *)self hairlineBorder])
  {
    return -1.0;
  }

  layer = [(FMBorderedView *)self layer];
  [layer borderWidth];
  v6 = v5;

  return v6;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(FMBorderedView *)self layer];
  [layer setCornerRadius:radius];
}

- (double)cornerRadius
{
  layer = [(FMBorderedView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(FMBorderedView *)self layer];
  [layer setBorderColor:cGColor];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x277D75348];
  layer = [(FMBorderedView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v4;
}

@end