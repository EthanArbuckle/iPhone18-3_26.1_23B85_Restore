@interface WMBordersProperty
- (WMBordersProperty)init;
- (void)setBorder:(id)a3 location:(int)a4;
@end

@implementation WMBordersProperty

- (WMBordersProperty)init
{
  v3.receiver = self;
  v3.super_class = WMBordersProperty;
  return [(CMBordersProperty *)&v3 init];
}

- (void)setBorder:(id)a3 location:(int)a4
{
  v19 = a3;
  v6 = [v19 style];
  if (v6 > 6)
  {
    if (v6 == 7 || v6 == 22)
    {
      v7 = 3;
      goto LABEL_13;
    }

    if (v6 != 255)
    {
LABEL_11:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_9:
    self->super.mBorderStyle[a4] = 0;
    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    v7 = 2;
    goto LABEL_13;
  }

  if (v6 != 6)
  {
    goto LABEL_11;
  }

  v7 = 4;
LABEL_13:
  self->super.mBorderStyle[a4] = v7;
  v8 = [v19 width];
  if (self->super.mBorderStyle[a4] == 2)
  {
    goto LABEL_14;
  }

  v11 = v8 / 20.0;
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
    mBorderWidth[a4] = v10;
    goto LABEL_18;
  }

  mBorderWidth = self->super.mBorderWidth;
  if (v11 < 3.5)
  {
    v10 = 3;
    goto LABEL_17;
  }

  mBorderWidth[a4] = 4;
  self->super.mBorderWidth[a4 + 6] = v11;
LABEL_18:
  if (self->super.mBorderColor)
  {
    goto LABEL_37;
  }

  v12 = [v19 color];
  v13 = [v12 isBlack];

  if (v13)
  {
    v14 = +[OITSUColor blackColor];
LABEL_21:
    mBorderColor = self->super.mBorderColor;
    self->super.mBorderColor = v14;

    goto LABEL_37;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v16 = [v19 color];
      v17 = 40;
      goto LABEL_36;
    }

    if (a4 == 4)
    {
      v16 = [v19 color];
      v17 = 48;
      goto LABEL_36;
    }

LABEL_33:
    v14 = [v19 color];
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    v16 = [v19 color];
    v17 = 24;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    goto LABEL_33;
  }

  v16 = [v19 color];
  v17 = 32;
LABEL_36:
  v18 = *(&self->super.super.super.isa + v17);
  *(&self->super.super.super.isa + v17) = v16;

LABEL_37:
}

@end