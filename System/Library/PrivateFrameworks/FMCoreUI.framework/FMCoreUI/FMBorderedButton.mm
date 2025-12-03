@interface FMBorderedButton
- (double)borderWidth;
- (double)cornerRadius;
- (void)_bbUpdateLayer;
- (void)awakeFromNib;
- (void)prepareForInterfaceBuilder;
- (void)setBorderWidth:(double)width;
- (void)setCornerRadius:(double)radius;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation FMBorderedButton

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v3 awakeFromNib];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)prepareForInterfaceBuilder
{
  v3.receiver = self;
  v3.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v3 prepareForInterfaceBuilder];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v3 tintColorDidChange];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v4 setEnabled:enabled];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v4 setHighlighted:highlighted];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)setBorderWidth:(double)width
{
  if (width >= 0.0)
  {
    widthCopy = width;
    [(FMBorderedButton *)self setHairlineBorder:0];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    [(FMBorderedButton *)self setHairlineBorder:1];
    widthCopy = 1.0;
    if (v6 > 1.0)
    {
      widthCopy = 1.0 / v6;
    }
  }

  layer = [(FMBorderedButton *)self layer];
  [layer setBorderWidth:widthCopy];
}

- (double)borderWidth
{
  if ([(FMBorderedButton *)self hairlineBorder])
  {
    return -1.0;
  }

  layer = [(FMBorderedButton *)self layer];
  [layer borderWidth];
  v6 = v5;

  return v6;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(FMBorderedButton *)self layer];
  [layer setCornerRadius:radius];
}

- (double)cornerRadius
{
  layer = [(FMBorderedButton *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)_bbUpdateLayer
{
  if (([(FMBorderedButton *)self isEnabled]& 1) == 0)
  {
    v5 = [(FMBorderedButton *)self titleColorForState:2];
    v15 = v5;
    if (!v5)
    {
LABEL_13:
      layer3 = [(FMBorderedButton *)self titleColorForState:0];
      cGColor = [layer3 CGColor];
LABEL_14:
      layer = [(FMBorderedButton *)self layer];
      [layer setBorderColor:cGColor];

      v11 = v15;
      if (v15)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_7:
    cGColor = [v5 CGColor];
    goto LABEL_14;
  }

  if (![(FMBorderedButton *)self isHighlighted])
  {
    if ([(FMBorderedButton *)self buttonType]== 1)
    {
      animation = [MEMORY[0x277CD9E10] animation];
      [animation setDuration:0.215];
      layer2 = [(FMBorderedButton *)self layer];
      [layer2 addAnimation:animation forKey:@"borderColor"];
    }

    v15 = [(FMBorderedButton *)self titleColorForState:0];
    v9 = v15;
    cGColor2 = [v15 CGColor];
    layer3 = [(FMBorderedButton *)self layer];
    [layer3 setBorderColor:cGColor2];
    goto LABEL_11;
  }

  v15 = [(FMBorderedButton *)self titleColorForState:1];
  if ([(FMBorderedButton *)self buttonType]!= 1)
  {
    v5 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v15)
  {
    v4 = [v15 colorWithAlphaComponent:0.2];
    layer3 = v4;
  }

  else
  {
    layer3 = [(FMBorderedButton *)self titleColorForState:0];
    v4 = [layer3 colorWithAlphaComponent:0.2];
  }

  cGColor3 = [v4 CGColor];
  layer4 = [(FMBorderedButton *)self layer];
  [layer4 setBorderColor:cGColor3];

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_11:
  v11 = v15;
LABEL_18:
  v16 = v11;

  v11 = v16;
LABEL_19:
}

@end