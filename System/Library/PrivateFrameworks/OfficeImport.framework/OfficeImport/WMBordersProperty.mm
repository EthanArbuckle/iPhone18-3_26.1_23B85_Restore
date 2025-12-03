@interface WMBordersProperty
- (WMBordersProperty)init;
- (void)setBorder:(id)border location:(int)location;
@end

@implementation WMBordersProperty

- (WMBordersProperty)init
{
  v3.receiver = self;
  v3.super_class = WMBordersProperty;
  return [(CMBordersProperty *)&v3 init];
}

- (void)setBorder:(id)border location:(int)location
{
  borderCopy = border;
  style = [borderCopy style];
  if (style > 6)
  {
    if (style == 7 || style == 22)
    {
      v7 = 3;
      goto LABEL_13;
    }

    if (style != 255)
    {
LABEL_11:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_9:
    self->super.mBorderStyle[location] = 0;
    goto LABEL_37;
  }

  if (!style)
  {
    goto LABEL_9;
  }

  if (style == 3)
  {
    v7 = 2;
    goto LABEL_13;
  }

  if (style != 6)
  {
    goto LABEL_11;
  }

  v7 = 4;
LABEL_13:
  self->super.mBorderStyle[location] = v7;
  width = [borderCopy width];
  if (self->super.mBorderStyle[location] == 2)
  {
    goto LABEL_14;
  }

  v11 = width / 20.0;
  if (v11 < 1.5)
  {
    mBorderWidth = self->super.mBorderWidth;
    v10 = 1;
    goto LABEL_17;
  }

  if (v11 < 2.5)
  {
LABEL_14:
    mBorderWidth = self->super.mBorderWidth;
    v10 = 2;
LABEL_17:
    mBorderWidth[location] = v10;
    goto LABEL_18;
  }

  mBorderWidth = self->super.mBorderWidth;
  if (v11 < 3.5)
  {
    v10 = 3;
    goto LABEL_17;
  }

  mBorderWidth[location] = 4;
  self->super.mBorderWidth[location + 6] = v11;
LABEL_18:
  if (self->super.mBorderColor)
  {
    goto LABEL_37;
  }

  color = [borderCopy color];
  isBlack = [color isBlack];

  if (isBlack)
  {
    color3 = +[OITSUColor blackColor];
LABEL_21:
    mBorderColor = self->super.mBorderColor;
    self->super.mBorderColor = color3;

    goto LABEL_37;
  }

  if (location > 2)
  {
    if (location == 3)
    {
      color2 = [borderCopy color];
      v17 = 40;
      goto LABEL_36;
    }

    if (location == 4)
    {
      color2 = [borderCopy color];
      v17 = 48;
      goto LABEL_36;
    }

LABEL_33:
    color3 = [borderCopy color];
    goto LABEL_21;
  }

  if (location == 1)
  {
    color2 = [borderCopy color];
    v17 = 24;
    goto LABEL_36;
  }

  if (location != 2)
  {
    goto LABEL_33;
  }

  color2 = [borderCopy color];
  v17 = 32;
LABEL_36:
  v18 = *(&self->super.super.super.isa + v17);
  *(&self->super.super.super.isa + v17) = color2;

LABEL_37:
}

@end