@interface FMBorderedButton
- (double)borderWidth;
- (double)cornerRadius;
- (void)_bbUpdateLayer;
- (void)awakeFromNib;
- (void)prepareForInterfaceBuilder;
- (void)setBorderWidth:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
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

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v4 setEnabled:a3];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FMBorderedButton;
  [(FMBorderedButton *)&v4 setHighlighted:a3];
  [(FMBorderedButton *)self _bbUpdateLayer];
}

- (void)setBorderWidth:(double)a3
{
  if (a3 >= 0.0)
  {
    v7 = a3;
    [(FMBorderedButton *)self setHairlineBorder:0];
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v6 = v5;

    [(FMBorderedButton *)self setHairlineBorder:1];
    v7 = 1.0;
    if (v6 > 1.0)
    {
      v7 = 1.0 / v6;
    }
  }

  v8 = [(FMBorderedButton *)self layer];
  [v8 setBorderWidth:v7];
}

- (double)borderWidth
{
  if ([(FMBorderedButton *)self hairlineBorder])
  {
    return -1.0;
  }

  v4 = [(FMBorderedButton *)self layer];
  [v4 borderWidth];
  v6 = v5;

  return v6;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(FMBorderedButton *)self layer];
  [v4 setCornerRadius:a3];
}

- (double)cornerRadius
{
  v2 = [(FMBorderedButton *)self layer];
  [v2 cornerRadius];
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
      v2 = [(FMBorderedButton *)self titleColorForState:0];
      v6 = [v2 CGColor];
LABEL_14:
      v12 = [(FMBorderedButton *)self layer];
      [v12 setBorderColor:v6];

      v11 = v15;
      if (v15)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_7:
    v6 = [v5 CGColor];
    goto LABEL_14;
  }

  if (![(FMBorderedButton *)self isHighlighted])
  {
    if ([(FMBorderedButton *)self buttonType]== 1)
    {
      v7 = [MEMORY[0x277CD9E10] animation];
      [v7 setDuration:0.215];
      v8 = [(FMBorderedButton *)self layer];
      [v8 addAnimation:v7 forKey:@"borderColor"];
    }

    v15 = [(FMBorderedButton *)self titleColorForState:0];
    v9 = v15;
    v10 = [v15 CGColor];
    v2 = [(FMBorderedButton *)self layer];
    [v2 setBorderColor:v10];
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
    v2 = v4;
  }

  else
  {
    v2 = [(FMBorderedButton *)self titleColorForState:0];
    v4 = [v2 colorWithAlphaComponent:0.2];
  }

  v13 = [v4 CGColor];
  v14 = [(FMBorderedButton *)self layer];
  [v14 setBorderColor:v13];

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