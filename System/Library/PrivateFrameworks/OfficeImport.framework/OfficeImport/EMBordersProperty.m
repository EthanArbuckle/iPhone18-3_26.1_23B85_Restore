@interface EMBordersProperty
- (BOOL)hasSameColorsAs:(id)a3;
- (BOOL)hasSameStylesAs:(id)a3;
- (BOOL)hasSameWidthsAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMBordersProperty)initWithEDBorders:(id)a3;
- (EMBordersProperty)initWithOADStroke:(id)a3;
- (id)colorString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cssString;
- (id)cssStringForName:(id)a3;
- (id)stringFromColor:(id)a3;
- (id)stringFromStyleEnum:(int)a3;
- (id)stringFromWidthEnum:(int)a3;
- (id)styleHashNumber;
- (id)styleString;
- (id)widthHashNumber;
- (id)widthString;
- (void)setBorderStyleAndWidth:(int)a3 location:(unsigned int)a4;
- (void)setNoneAtLocation:(int)a3;
@end

@implementation EMBordersProperty

- (id)cssString
{
  v3 = [(EMBordersProperty *)self styleString];
  v4 = [(EMBordersProperty *)self widthString];
  v5 = [(EMBordersProperty *)self colorString];
  if ([v3 length] || objc_msgSend(v4, "length") || objc_msgSend(v5, "length"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v3 length])
    {
      [v6 appendString:v3];
    }

    if ([v4 length])
    {
      [v6 appendString:v4];
    }

    if ([v5 length])
    {
      [v6 appendString:v5];
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
  v3 = [(EMBordersProperty *)self styleHashNumber];
  p_superclass = OISpotlightImporter.superclass;
  v5 = +[EMWorkbookMapper borderStyleCache];
  v6 = [v5 objectForKey:v3];

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
    v12 = [p_superclass + 219 borderStyleCache];
    [v12 setObject:v7 forKey:v3];
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
  v3 = [(EMBordersProperty *)self widthHashNumber];
  p_superclass = OISpotlightImporter.superclass;
  v5 = +[EMWorkbookMapper borderWidthCache];
  v6 = [v5 objectForKey:v3];

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
    v12 = [p_superclass + 219 borderWidthCache];
    [v12 setObject:v7 forKey:v3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (EMBordersProperty)initWithOADStroke:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = EMBordersProperty;
  v5 = [(EMBordersProperty *)&v26 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  if (![v4 isFillOverridden] || (objc_msgSend(v4, "fill"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    v5->mBorderStyle[0] = 0;
    goto LABEL_19;
  }

  v8 = [v4 fill];
  v5->mBorderWidth[0] = 1;
  if ([v4 isDashOverridden])
  {
    v9 = [v4 dash];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v4 dash];
      v11 = [v10 type];

      if (v11)
      {
        v12 = 3;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if ([v4 isCompoundTypeOverridden] && objc_msgSend(v4, "compoundType"))
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

  if ([v8 isColorOverridden])
  {
    v15 = [v8 color];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v8 color];
      [v17 red];
      v19 = v18;
      [v17 green];
      v21 = v20;
      [v17 blue];
      v23 = [OITSUColor colorWithCalibratedRed:v19 green:v21 blue:v22 alpha:1.0];
      v24 = v5->mBorderColor;
      v5->mBorderColor = v23;
    }
  }

LABEL_19:
  return v5;
}

- (EMBordersProperty)initWithEDBorders:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = EMBordersProperty;
  v5 = [(EMBordersProperty *)&v29 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 topBorder];
      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [v7 type], 0);
      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [v7 type], 1);
      v8 = [v7 color];
      mBorderColor = v6->mBorderColor;
      v6->mBorderColor = v8;

      objc_storeStrong(&v6->mBorderTopColor, v6->mBorderColor);
      v10 = [v4 leftBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [v10 type], 2);
      v11 = [v10 color];
      mBorderLeftColor = v6->mBorderLeftColor;
      v6->mBorderLeftColor = v11;

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

      v17 = [v4 bottomBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [v17 type], 3);
      v18 = [v17 color];
      mBorderBottomColor = v6->mBorderBottomColor;
      v6->mBorderBottomColor = v18;

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

      v22 = [v4 rightBorder];

      -[EMBordersProperty setBorderStyleAndWidth:location:](v6, "setBorderStyleAndWidth:location:", [v22 type], 4);
      v23 = [v22 color];
      mBorderRightColor = v6->mBorderRightColor;
      v6->mBorderRightColor = v23;

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
      v22 = v6->mBorderColor;
      v6->mBorderColor = v27;
    }
  }

  return v6;
}

- (void)setNoneAtLocation:(int)a3
{
  mBorderStyle = self->mBorderStyle;
  self->mBorderStyle[a3] = 0;
  if (a3)
  {
    if (*mBorderStyle)
    {
      *mBorderStyle = -1;
    }
  }
}

- (id)cssStringForName:(id)a3
{
  if (self->mBorderStyle[0])
  {
    v4 = [(EMBordersProperty *)self cssString];
  }

  else
  {
    v4 = &stru_286EE1130;
  }

  return v4;
}

- (void)setBorderStyleAndWidth:(int)a3 location:(unsigned int)a4
{
  v4 = a3 - 3;
  if ((a3 - 3) > 0xA)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = dword_25D710BA0[v4];
    v6 = dword_25D710BCC[v4];
  }

  self->mBorderStyle[a4] = v5;
  self->mBorderWidth[a4] = v6;
}

- (id)stringFromStyleEnum:(int)a3
{
  if (a3 > 4)
  {
    return @":solid;";
  }

  else
  {
    return qword_2799CE0C0[a3];
  }
}

- (id)stringFromWidthEnum:(int)a3
{
  if (a3 > 3)
  {
    return @":solid;";
  }

  else
  {
    return qword_2799CE0E8[a3];
  }
}

- (id)stringFromColor:(id)a3
{
  v3 = a3;
  if ([v3 isBlack])
  {
    v4 = @":black;";
  }

  else
  {
    v5 = [[CMColorProperty alloc] initWithColor:v3];
    v4 = [(CMColorProperty *)v5 cssStringForName:&stru_286EE1130];
  }

  return v4;
}

- (BOOL)hasSameStylesAs:(id)a3
{
  v4 = [a3 borderStyles];
  v5 = self->mBorderStyle[0];
  v6 = *v4;
  if (v5 != -1)
  {
    return v6 == v5;
  }

  return v6 == -1 && v4[1] == self->mBorderStyle[1] && v4[2] == self->mBorderStyle[2] && v4[3] == self->mBorderStyle[3] && v4[4] == self->mBorderStyle[4];
}

- (BOOL)hasSameWidthsAs:(id)a3
{
  v4 = [a3 borderWidths];
  v5 = self->mBorderWidth[0];
  v6 = *v4;
  if (v5 != -1)
  {
    return v6 == v5;
  }

  return v6 == -1 && v4[1] == self->mBorderWidth[1] && v4[2] == self->mBorderWidth[2] && v4[3] == self->mBorderWidth[3] && v4[4] == self->mBorderWidth[4];
}

- (BOOL)hasSameColorsAs:(id)a3
{
  v4 = a3;
  v5 = v4;
  mBorderColor = self->mBorderColor;
  if (mBorderColor)
  {
    v7 = [v4 borderColor];
    LOBYTE(mBorderColor) = [(OITSUColor *)mBorderColor isEqual:v7];
  }

  return mBorderColor;
}

@end