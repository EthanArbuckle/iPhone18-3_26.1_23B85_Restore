@interface FMBorderedView
- (UIColor)borderColor;
- (double)borderWidth;
- (double)cornerRadius;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation FMBorderedView

- (void)setBorderWidth:(double)a3
{
  if (a3 >= 0.0)
  {
    v7 = a3;
    [(FMBorderedView *)self setHairlineBorder:0];
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v6 = v5;

    [(FMBorderedView *)self setHairlineBorder:1];
    v7 = 1.0;
    if (v6 > 1.0)
    {
      v7 = 1.0 / v6;
    }
  }

  v8 = [(FMBorderedView *)self layer];
  [v8 setBorderWidth:v7];
}

- (double)borderWidth
{
  if ([(FMBorderedView *)self hairlineBorder])
  {
    return -1.0;
  }

  v4 = [(FMBorderedView *)self layer];
  [v4 borderWidth];
  v6 = v5;

  return v6;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(FMBorderedView *)self layer];
  [v4 setCornerRadius:a3];
}

- (double)cornerRadius
{
  v2 = [(FMBorderedView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(FMBorderedView *)self layer];
  [v7 setBorderColor:v6];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(FMBorderedView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "borderColor")}];

  return v4;
}

@end