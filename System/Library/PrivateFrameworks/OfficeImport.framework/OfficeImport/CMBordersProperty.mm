@interface CMBordersProperty
+ (BOOL)isStroked:(id)stroked;
- (CMBordersProperty)init;
- (CMBordersProperty)initWithOADStroke:(id)stroke;
- (id)colorString;
- (id)cssString;
- (id)cssStringForName:(id)name;
- (id)stringFromColor:(id)color;
- (id)stringFromStyleEnum:(int)enum;
- (id)stringFromWidthEnum:(int)enum;
- (id)styleString;
- (id)widthString;
- (void)adjustValues;
- (void)setFromOadStroke:(id)stroke atLocation:(int)location state:(id)state;
- (void)setNoneAtLocation:(int)location;
@end

@implementation CMBordersProperty

- (CMBordersProperty)init
{
  v7.receiver = self;
  v7.super_class = CMBordersProperty;
  v2 = [(CMBordersProperty *)&v7 init];
  v3 = v2;
  if (v2)
  {
    for (i = 0; i != 5; ++i)
    {
      v2->mBorderStyle[i] = -1;
      v2->mBorderWidth[i] = -1;
    }

    mBorderColor = v2->mBorderColor;
    v2->mBorderColor = 0;

    v3->mCustomWidth = 0;
  }

  return v3;
}

- (void)adjustValues
{
  if (self->mBorderStyle[0] == -1)
  {
    v2 = self->mBorderStyle[1];
    if (v2 == self->mBorderStyle[2] && v2 == self->mBorderStyle[3] && v2 == self->mBorderStyle[4])
    {
      self->mBorderStyle[0] = v2;
    }
  }

  if (self->mBorderWidth[0] == -1)
  {
    v3 = self->mBorderWidth[1];
    if (v3 == self->mBorderWidth[2] && v3 == self->mBorderWidth[3] && v3 == self->mBorderWidth[4])
    {
      self->mBorderWidth[0] = v3;
    }
  }

  if (!self->mBorderColor)
  {
    mBorderTopColor = self->mBorderTopColor;
    mBorderLeftColor = self->mBorderLeftColor;
    if (mBorderTopColor == mBorderLeftColor && mBorderTopColor == self->mBorderRightColor && mBorderTopColor == self->mBorderBottomColor)
    {
      objc_storeStrong(&self->mBorderColor, mBorderLeftColor);
    }
  }
}

- (id)cssString
{
  v3 = MEMORY[0x277CCAB68];
  styleString = [(CMBordersProperty *)self styleString];
  v5 = [v3 stringWithString:styleString];

  widthString = [(CMBordersProperty *)self widthString];
  [v5 appendString:widthString];

  colorString = [(CMBordersProperty *)self colorString];
  [v5 appendString:colorString];

  return v5;
}

- (id)styleString
{
  mBorderStyle = self->mBorderStyle;
  if (self->mBorderStyle[0] != -1)
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:0x286F07FB0];
    v5 = [(CMBordersProperty *)self stringFromStyleEnum:*mBorderStyle];
    [v4 appendString:v5];
    v6 = v4;
LABEL_12:

    goto LABEL_13;
  }

  if (self->mBorderStyle[1] == -1)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithString:&stru_286EE1130];
  }

  else
  {
    v7 = [MEMORY[0x277CCAB68] stringWithString:0x286F07FF0];
    v8 = [(CMBordersProperty *)self stringFromStyleEnum:mBorderStyle[1]];
    [v7 appendString:v8];

    v6 = v7;
  }

  if (mBorderStyle[2] != -1)
  {
    [v6 appendString:0x286F07F10];
    v9 = [(CMBordersProperty *)self stringFromStyleEnum:mBorderStyle[2]];
    [v6 appendString:v9];
  }

  if (mBorderStyle[3] != -1)
  {
    [v6 appendString:0x286F07E90];
    v10 = [(CMBordersProperty *)self stringFromStyleEnum:mBorderStyle[3]];
    [v6 appendString:v10];
  }

  if (mBorderStyle[4] != -1)
  {
    [v6 appendString:0x286F07F70];
    v5 = [(CMBordersProperty *)self stringFromStyleEnum:mBorderStyle[4]];
    [v6 appendString:v5];
    goto LABEL_12;
  }

LABEL_13:
  v11 = v6;

  return v6;
}

- (id)widthString
{
  mBorderWidth = self->mBorderWidth;
  if (self->mBorderWidth[0] != -1)
  {
    v4 = [MEMORY[0x277CCAB68] stringWithString:0x286F08030];
    v5 = [(CMBordersProperty *)self stringFromWidthEnum:*mBorderWidth];
    [v4 appendString:v5];
    v6 = v4;
LABEL_12:

    goto LABEL_13;
  }

  if (self->mBorderWidth[1] == -1)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithString:&stru_286EE1130];
  }

  else
  {
    v7 = [MEMORY[0x277CCAB68] stringWithString:0x286F08010];
    v8 = [(CMBordersProperty *)self stringFromWidthEnum:mBorderWidth[1]];
    [v7 appendString:v8];

    v6 = v7;
  }

  if (mBorderWidth[2] != -1)
  {
    [v6 appendString:0x286F07F30];
    v9 = [(CMBordersProperty *)self stringFromWidthEnum:mBorderWidth[2]];
    [v6 appendString:v9];
  }

  if (mBorderWidth[3] != -1)
  {
    [v6 appendString:0x286F07EB0];
    v10 = [(CMBordersProperty *)self stringFromWidthEnum:mBorderWidth[3]];
    [v6 appendString:v10];
  }

  if (mBorderWidth[4] != -1)
  {
    [v6 appendString:0x286F07F90];
    v5 = [(CMBordersProperty *)self stringFromWidthEnum:mBorderWidth[4]];
    [v6 appendString:v5];
    goto LABEL_12;
  }

LABEL_13:
  v11 = v6;

  return v6;
}

- (id)colorString
{
  if (self->mBorderColor)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:0x286F07ED0];
    [(CMBordersProperty *)self stringFromColor:self->mBorderColor];
  }

  else
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:0x286F07FD0];
    v5 = [(CMBordersProperty *)self stringFromColor:self->mBorderTopColor];
    [v3 appendString:v5];

    [v3 appendString:0x286F07EF0];
    v6 = [(CMBordersProperty *)self stringFromColor:self->mBorderLeftColor];
    [v3 appendString:v6];

    [v3 appendString:0x286F07E70];
    v7 = [(CMBordersProperty *)self stringFromColor:self->mBorderBottomColor];
    [v3 appendString:v7];

    [v3 appendString:0x286F07F50];
    [(CMBordersProperty *)self stringFromColor:self->mBorderRightColor];
  }
  v4 = ;
  [v3 appendString:v4];

  return v3;
}

+ (BOOL)isStroked:(id)stroked
{
  strokedCopy = stroked;
  if ([strokedCopy isFillOverridden])
  {
    fill = [strokedCopy fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CMBordersProperty)initWithOADStroke:(id)stroke
{
  strokeCopy = stroke;
  v28.receiver = self;
  v28.super_class = CMBordersProperty;
  v5 = [(CMBordersProperty *)&v28 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5->mCustomWidth = 0;
  if (![strokeCopy isFillOverridden] || (objc_msgSend(strokeCopy, "width"), v7 == 0.0) || (objc_msgSend(strokeCopy, "fill"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) == 0))
  {
    v6->mBorderStyle[0] = 0;
    goto LABEL_10;
  }

  fill = [strokeCopy fill];
  v6->mBorderWidth[0] = 1;
  if ([strokeCopy isDashOverridden])
  {
    dash = [strokeCopy dash];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dash2 = [strokeCopy dash];
      type = [dash2 type];

      if (type)
      {
        v14 = 3;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  if ([strokeCopy isCompoundTypeOverridden] && objc_msgSend(strokeCopy, "compoundType"))
  {
    v6->mBorderStyle[0] = 2;
    v6->mBorderWidth[0] = 2;
    goto LABEL_17;
  }

  v14 = 1;
LABEL_16:
  v6->mBorderStyle[0] = v14;
LABEL_17:
  v16 = +[OITSUColor blackColor];
  mBorderColor = v6->mBorderColor;
  v6->mBorderColor = v16;

  if ([fill isColorOverridden])
  {
    color = [fill color];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      color2 = [fill color];
      [color2 red];
      v22 = v21;
      [color2 green];
      v24 = v23;
      [color2 blue];
      v26 = [OITSUColor colorWithCalibratedRed:v22 green:v24 blue:v25 alpha:1.0];
      v27 = v6->mBorderColor;
      v6->mBorderColor = v26;
    }
  }

LABEL_10:
  return v6;
}

- (void)setNoneAtLocation:(int)location
{
  mBorderStyle = self->mBorderStyle;
  self->mBorderStyle[location] = 0;
  if (location)
  {
    if (*mBorderStyle)
    {
      *mBorderStyle = -1;
    }
  }
}

- (void)setFromOadStroke:(id)stroke atLocation:(int)location state:(id)state
{
  strokeCopy = stroke;
  stateCopy = state;
  if (![strokeCopy isFillOverridden] || (objc_msgSend(strokeCopy, "fill"), v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
  {
    self->mBorderStyle[location] = 0;
    goto LABEL_23;
  }

  fill = [strokeCopy fill];
  mBorderWidth = self->mBorderWidth;
  self->mBorderWidth[location] = 1;
  if ([strokeCopy isDashOverridden])
  {
    dash = [strokeCopy dash];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dash2 = [strokeCopy dash];
      type = [dash2 type];

      if (type)
      {
        mBorderStyle = self->mBorderStyle;
        v17 = 3;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if ([strokeCopy isCompoundTypeOverridden] && objc_msgSend(strokeCopy, "compoundType"))
  {
    self->mBorderStyle[location] = 2;
    mBorderWidth[location] = 2;
    goto LABEL_14;
  }

  mBorderStyle = self->mBorderStyle;
  v17 = 1;
LABEL_13:
  mBorderStyle[location] = v17;
LABEL_14:
  if ([strokeCopy isWidthOverridden])
  {
    [strokeCopy width];
    if (v18 > 1.5)
    {
      *mBorderWidth = 4;
      [strokeCopy width];
      self->mCustomWidth = v19;
    }
  }

  if ([fill isColorOverridden])
  {
    v20 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];
    if ((location - 1) >= 4)
    {
      v21 = &OBJC_IVAR___CMBordersProperty_mBorderColor;
    }

    else
    {
      v21 = off_2799CDD90[location - 1];
    }

    objc_storeStrong((&self->super.super.isa + *v21), v20);
  }

LABEL_23:
}

- (id)cssStringForName:(id)name
{
  if (self->mBorderStyle[0])
  {
    cssString = [(CMBordersProperty *)self cssString];
  }

  else
  {
    cssString = @"border-style:none;";
  }

  return cssString;
}

- (id)stringFromStyleEnum:(int)enum
{
  if (enum > 4)
  {
    return @":solid;";
  }

  else
  {
    return off_2799CDDB0[enum];
  }
}

- (id)stringFromWidthEnum:(int)enum
{
  if (enum <= 1)
  {
    if (enum)
    {
LABEL_9:
      v4 = @":thin;";

      return v4;
    }

    v4 = @":0;";
  }

  else
  {
    switch(enum)
    {
      case 2:
        v4 = @":medium;";

        break;
      case 3:
        v4 = @":thick;";

        break;
      case 4:
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@": %d", self->mCustomWidth];;

        return v4;
      default:
        goto LABEL_9;
    }
  }

  return v4;
}

- (id)stringFromColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isBlack] & 1) != 0 || (objc_msgSend(colorCopy, "redComponent"), v5 == 1.0) && (objc_msgSend(colorCopy, "greenComponent"), v6 == 1.0) && (objc_msgSend(colorCopy, "blueComponent"), v7 == 1.0) && (objc_msgSend(colorCopy, "alphaComponent"), v8 == 0.0))
  {
    v4 = @":black;";
  }

  else
  {
    v9 = [[CMColorProperty alloc] initWithColor:colorCopy];
    v4 = [(CMColorProperty *)v9 cssStringForName:&stru_286EE1130];
  }

  return v4;
}

@end