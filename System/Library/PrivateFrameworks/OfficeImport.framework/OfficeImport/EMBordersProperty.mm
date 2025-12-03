@interface EMBordersProperty
- (BOOL)hasSameColorsAs:(id)as;
- (BOOL)hasSameStylesAs:(id)as;
- (BOOL)hasSameWidthsAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (EMBordersProperty)initWithEDBorders:(id)borders;
- (EMBordersProperty)initWithOADStroke:(id)stroke;
- (id)colorString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cssString;
- (id)cssStringForName:(id)name;
- (id)stringFromColor:(id)color;
- (id)stringFromStyleEnum:(int)enum;
- (id)stringFromWidthEnum:(int)enum;
- (id)styleHashNumber;
- (id)styleString;
- (id)widthHashNumber;
- (id)widthString;
- (void)setBorderStyleAndWidth:(int)width location:(unsigned int)location;
- (void)setNoneAtLocation:(int)location;
@end

@implementation EMBordersProperty

- (id)cssString
{
  styleString = [(EMBordersProperty *)self styleString];
  widthString = [(EMBordersProperty *)self widthString];
  colorString = [(EMBordersProperty *)self colorString];
  if ([styleString length] || objc_msgSend(widthString, "length") || objc_msgSend(colorString, "length"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([styleString length])
    {
      [v6 appendString:styleString];
    }

    if ([widthString length])
    {
      [v6 appendString:widthString];
    }

    if ([colorString length])
    {
      [v6 appendString:colorString];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)styleString
{
  v14[4] = *MEMORY[0x277D85DE8];
  styleHashNumber = [(EMBordersProperty *)self styleHashNumber];
  p_superclass = OISpotlightImporter.superclass;
  v5 = +[EMWorkbookMapper borderStyleCache];
  v6 = [v5 objectForKey:styleHashNumber];

  if (v6)
  {
    v7 = v6;
    goto LABEL_19;
  }

  if (self->mBorderStyle[0] != -1)
  {
    v8 = [(EMBordersProperty *)self stringFromStyleEnum:?];
    if (v8)
    {
      v7 = [MEMORY[0x277CCAB68] stringWithString:0x286F07FB0];
      [v7 appendString:v8];
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14[0] = @"border-top-style";
  v14[1] = @"border-left-style";
  v14[2] = @"border-bottom-style";
  v9 = 0;
  v7 = 0;
  v14[3] = @"border-right-style";
  do
  {
    v10 = [(EMBordersProperty *)self stringFromStyleEnum:self->mBorderStyle[dword_25D710B90[v9]]];
    if (v10)
    {
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      }

      [v7 appendString:v14[v9]];
      [v7 appendString:v10];
    }

    ++v9;
  }

  while (v9 != 4);
  v11 = 3;
  p_superclass = (OISpotlightImporter + 8);
  do
  {
  }

  while (v11 != -1);
  if (v7)
  {
LABEL_18:
    borderStyleCache = [p_superclass + 219 borderStyleCache];
    [borderStyleCache setObject:v7 forKey:styleHashNumber];
  }

LABEL_19:

  return v7;
}

- (id)styleHashNumber
{
  v2 = self->mBorderStyle[0];
  if (v2 == -1)
  {
    v2 = vaddvq_s32(vmulq_s32(*&self->mBorderStyle[1], xmmword_25D710B80));
  }

  return [MEMORY[0x277CCABB0] numberWithInt:v2];
}

- (id)widthString
{
  v14[4] = *MEMORY[0x277D85DE8];
  widthHashNumber = [(EMBordersProperty *)self widthHashNumber];
  p_superclass = OISpotlightImporter.superclass;
  v5 = +[EMWorkbookMapper borderWidthCache];
  v6 = [v5 objectForKey:widthHashNumber];

  if (v6)
  {
    v7 = v6;
    goto LABEL_19;
  }

  if (self->mBorderStyle[0] != -1)
  {
    v8 = [(EMBordersProperty *)self stringFromWidthEnum:self->mBorderWidth[0]];
    if (v8)
    {
      v7 = [MEMORY[0x277CCAB68] stringWithString:0x286F08030];
      [v7 appendString:v8];
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14[0] = @"border-top-width";
  v14[1] = @"border-left-width";
  v14[2] = @"border-bottom-width";
  v9 = 0;
  v7 = 0;
  v14[3] = @"border-right-width";
  do
  {
    v10 = [(EMBordersProperty *)self stringFromWidthEnum:self->mBorderWidth[dword_25D710B90[v9]]];
    if (v10)
    {
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      }

      [v7 appendString:v14[v9]];
      [v7 appendString:v10];
    }

    ++v9;
  }

  while (v9 != 4);
  v11 = 3;
  p_superclass = (OISpotlightImporter + 8);
  do
  {
  }

  while (v11 != -1);
  if (v7)
  {
LABEL_18:
    borderWidthCache = [p_superclass + 219 borderWidthCache];
    [borderWidthCache setObject:v7 forKey:widthHashNumber];
  }

LABEL_19:

  return v7;
}

- (id)widthHashNumber
{
  v2 = self->mBorderWidth[0];
  if (v2 == -1)
  {
    v2 = vaddvq_s32(vmulq_s32(*&self->mBorderWidth[1], xmmword_25D710B80));
  }

  return [MEMORY[0x277CCABB0] numberWithInt:v2];
}

- (id)colorString
{
  if (self->mBorderColor)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:0x286F07ED0];
    [(EMBordersProperty *)self stringFromColor:self->mBorderColor];
  }

  else
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:0x286F07FD0];
    v5 = [(EMBordersProperty *)self stringFromColor:self->mBorderTopColor];
    [v3 appendString:v5];

    [v3 appendString:0x286F07EF0];
    v6 = [(EMBordersProperty *)self stringFromColor:self->mBorderLeftColor];
    [v3 appendString:v6];

    [v3 appendString:0x286F07E70];
    v7 = [(EMBordersProperty *)self stringFromColor:self->mBorderBottomColor];
    [v3 appendString:v7];

    [v3 appendString:0x286F07F50];
    [(EMBordersProperty *)self stringFromColor:self->mBorderRightColor];
  }
  v4 = ;
  [v3 appendString:v4];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[EMBordersProperty isNoneAtLocation:](self, "isNoneAtLocation:", 0) && ([v5 isNoneAtLocation:0] & 1) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(EMBordersProperty *)self hasSameColorsAs:v5]&& [(EMBordersProperty *)self hasSameStylesAs:v5]&& [(EMBordersProperty *)self hasSameWidthsAs:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[EMBordersProperty allocWithZone:?]];
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    objc_storeStrong(&v4->mBorderColor, self->mBorderColor);
    objc_storeStrong(p_isa + 3, self->mBorderTopColor);
    objc_storeStrong(p_isa + 4, self->mBorderLeftColor);
    objc_storeStrong(p_isa + 5, self->mBorderBottomColor);
    objc_storeStrong(p_isa + 6, self->mBorderRightColor);
    for (i = 0; i != 5; ++i)
    {
      *(p_isa + i * 4 + 56) = self->mBorderStyle[i];
    }

    for (j = 0; j != 5; ++j)
    {
      *(p_isa + j * 4 + 76) = self->mBorderWidth[j];
    }

    v8 = p_isa;
  }

  return p_isa;
}

- (EMBordersProperty)initWithOADStroke:(id)stroke
{
  strokeCopy = stroke;
  v26.receiver = self;
  v26.super_class = EMBordersProperty;
  v5 = [(EMBordersProperty *)&v26 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  if (![strokeCopy isFillOverridden] || (objc_msgSend(strokeCopy, "fill"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    v5->mBorderStyle[0] = 0;
    goto LABEL_19;
  }

  fill = [strokeCopy fill];
  v5->mBorderWidth[0] = 1;
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
        v12 = 3;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if ([strokeCopy isCompoundTypeOverridden] && objc_msgSend(strokeCopy, "compoundType"))
  {
    v5->mBorderStyle[0] = 2;
    v5->mBorderWidth[0] = 2;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_14:
  v5->mBorderStyle[0] = v12;
LABEL_15:
  v13 = +[OITSUColor blackColor];
  mBorderColor = v5->mBorderColor;
  v5->mBorderColor = v13;

  if ([fill isColorOverridden])
  {
    color = [fill color];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      color2 = [fill color];
      [color2 red];
      v19 = v18;
      [color2 green];
      v21 = v20;
      [color2 blue];
      v23 = [OITSUColor colorWithCalibratedRed:v19 green:v21 blue:v22 alpha:1.0];
      v24 = v5->mBorderColor;
      v5->mBorderColor = v23;
    }
  }

LABEL_19:
  return v5;
}

- (EMBordersProperty)initWithEDBorders:(id)borders
{
  bordersCopy = borders;
  v29.receiver = self;
  v29.super_class = EMBordersProperty;
  v5 = [(EMBordersProperty *)&v29 init];
  v6 = v5;
  if (v5)
  {
    if (bordersCopy)
    {
      topBorder = [bordersCopy topBorder];
      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [topBorder type], 0);
      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [topBorder type], 1);
      color = [topBorder color];
      mBorderColor = v6->mBorderColor;
      v6->mBorderColor = color;

      objc_storeStrong(&v6->mBorderTopColor, v6->mBorderColor);
      leftBorder = [bordersCopy leftBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [leftBorder type], 2);
      color2 = [leftBorder color];
      mBorderLeftColor = v6->mBorderLeftColor;
      v6->mBorderLeftColor = color2;

      mBorderStyle = v6->mBorderStyle;
      if (v6->mBorderStyle[2] != v6->mBorderStyle[0])
      {
        *mBorderStyle = -1;
      }

      mBorderWidth = v6->mBorderWidth;
      if (v6->mBorderWidth[2] != v6->mBorderWidth[0])
      {
        *mBorderWidth = -1;
      }

      v15 = v6->mBorderColor;
      if (v15 && ![(OITSUColor *)v15 isEqual:v6->mBorderLeftColor])
      {
        v16 = v6->mBorderColor;
        v6->mBorderColor = 0;
      }

      bottomBorder = [bordersCopy bottomBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [bottomBorder type], 3);
      color3 = [bottomBorder color];
      mBorderBottomColor = v6->mBorderBottomColor;
      v6->mBorderBottomColor = color3;

      if (v6->mBorderStyle[3] != v6->mBorderStyle[0])
      {
        *mBorderStyle = -1;
      }

      if (v6->mBorderWidth[3] != *mBorderWidth)
      {
        *mBorderWidth = -1;
      }

      v20 = v6->mBorderColor;
      if (v20 && ![(OITSUColor *)v20 isEqual:v6->mBorderBottomColor])
      {
        v21 = v6->mBorderColor;
        v6->mBorderColor = 0;
      }

      rightBorder = [bordersCopy rightBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [rightBorder type], 4);
      color4 = [rightBorder color];
      mBorderRightColor = v6->mBorderRightColor;
      v6->mBorderRightColor = color4;

      if (v6->mBorderStyle[4] != v6->mBorderStyle[0])
      {
        *mBorderStyle = -1;
      }

      if (v6->mBorderWidth[4] != *mBorderWidth)
      {
        *mBorderWidth = -1;
      }

      v25 = v6->mBorderColor;
      if (v25 && ![(OITSUColor *)v25 isEqual:v6->mBorderRightColor])
      {
        v26 = v6->mBorderColor;
        v6->mBorderColor = 0;
      }
    }

    else
    {
      [(EMBordersProperty *)v5 setBorderStyleAndWidth:6 location:1];
      [(EMBordersProperty *)v6 setBorderStyleAndWidth:13 location:2];
      [(EMBordersProperty *)v6 setBorderStyleAndWidth:12 location:3];
      [(EMBordersProperty *)v6 setBorderStyleAndWidth:0 location:4];
      v6->mBorderStyle[0] = -1;
      v6->mBorderWidth[0] = -1;
      v27 = +[OITSUColor blackColor];
      rightBorder = v6->mBorderColor;
      v6->mBorderColor = v27;
    }
  }

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

- (id)cssStringForName:(id)name
{
  if (self->mBorderStyle[0])
  {
    cssString = [(EMBordersProperty *)self cssString];
  }

  else
  {
    cssString = &stru_286EE1130;
  }

  return cssString;
}

- (void)setBorderStyleAndWidth:(int)width location:(unsigned int)location
{
  v4 = width - 3;
  if ((width - 3) > 0xA)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = dword_25D710BA0[v4];
    v6 = dword_25D710BCC[v4];
  }

  self->mBorderStyle[location] = v5;
  self->mBorderWidth[location] = v6;
}

- (id)stringFromStyleEnum:(int)enum
{
  if (enum > 4)
  {
    return @":solid;";
  }

  else
  {
    return qword_2799CE0C0[enum];
  }
}

- (id)stringFromWidthEnum:(int)enum
{
  if (enum > 3)
  {
    return @":solid;";
  }

  else
  {
    return qword_2799CE0E8[enum];
  }
}

- (id)stringFromColor:(id)color
{
  colorCopy = color;
  if ([colorCopy isBlack])
  {
    v4 = @":black;";
  }

  else
  {
    v5 = [[CMColorProperty alloc] initWithColor:colorCopy];
    v4 = [(CMColorProperty *)v5 cssStringForName:&stru_286EE1130];
  }

  return v4;
}

- (BOOL)hasSameStylesAs:(id)as
{
  borderStyles = [as borderStyles];
  v5 = self->mBorderStyle[0];
  v6 = *borderStyles;
  if (v5 != -1)
  {
    return v6 == v5;
  }

  return v6 == -1 && borderStyles[1] == self->mBorderStyle[1] && borderStyles[2] == self->mBorderStyle[2] && borderStyles[3] == self->mBorderStyle[3] && borderStyles[4] == self->mBorderStyle[4];
}

- (BOOL)hasSameWidthsAs:(id)as
{
  borderWidths = [as borderWidths];
  v5 = self->mBorderWidth[0];
  v6 = *borderWidths;
  if (v5 != -1)
  {
    return v6 == v5;
  }

  return v6 == -1 && borderWidths[1] == self->mBorderWidth[1] && borderWidths[2] == self->mBorderWidth[2] && borderWidths[3] == self->mBorderWidth[3] && borderWidths[4] == self->mBorderWidth[4];
}

- (BOOL)hasSameColorsAs:(id)as
{
  asCopy = as;
  v5 = asCopy;
  mBorderColor = self->mBorderColor;
  if (mBorderColor)
  {
    borderColor = [asCopy borderColor];
    LOBYTE(mBorderColor) = [(OITSUColor *)mBorderColor isEqual:borderColor];
  }

  return mBorderColor;
}

@end