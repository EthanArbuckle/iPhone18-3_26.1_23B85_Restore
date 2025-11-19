@interface OADShapeStyle
+ (id)defaultOfficeShapeStyle;
+ (id)defaultShapeStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)applyToGraphicProperties:(id)a3 styleMatrix:(id)a4 useNull:(BOOL)a5 strokeWidthMultiplier:(float)a6;
- (void)applyToTextBody:(id)a3;
- (void)applyToTextListStyle:(id)a3;
- (void)setEffectMatrixIndex:(unsigned int)a3 color:(id)a4;
- (void)setFillMatrixIndex:(unsigned int)a3 color:(id)a4;
- (void)setLineMatrixIndex:(unsigned int)a3 color:(id)a4;
@end

@implementation OADShapeStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(OADStyleMatrixReference *)self->mLineReference copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OADStyleMatrixReference *)self->mFillReference copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(OADStyleMatrixReference *)self->mEffectReference copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(OADFontReference *)self->mFontReference copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

+ (id)defaultShapeStyle
{
  v2 = +[OADShapeStyle defaultShapeStyle]::defaultShapeStyle;
  if (!+[OADShapeStyle defaultShapeStyle]::defaultShapeStyle)
  {
    v3 = objc_alloc_init(OADShapeStyle);
    v4 = +[OADShapeStyle defaultShapeStyle]::defaultShapeStyle;
    +[OADShapeStyle defaultShapeStyle]::defaultShapeStyle = v3;

    [+[OADShapeStyle defaultShapeStyle]::defaultShapeStyle setLineMatrixIndex:0 color:0];
    [+[OADShapeStyle defaultShapeStyle]::defaultShapeStyle setFillMatrixIndex:0 color:0];
    [+[OADShapeStyle defaultShapeStyle]::defaultShapeStyle setEffectMatrixIndex:0 color:0];
    v5 = objc_alloc_init(OADFontReference);
    [(OADFontReference *)v5 setIndex:0xFFFFFFFFLL];
    [+[OADShapeStyle defaultShapeStyle]::defaultShapeStyle setFontReference:v5];

    v2 = +[OADShapeStyle defaultShapeStyle]::defaultShapeStyle;
  }

  return v2;
}

+ (id)defaultOfficeShapeStyle
{
  v2 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
  if (!+[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle)
  {
    v3 = objc_alloc_init(OADShapeStyle);
    v4 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
    +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle = v3;

    v5 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
    v6 = [OADSchemeColor schemeColorWithIndex:4];
    [v5 setLineMatrixIndex:1 color:v6];

    v7 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
    v8 = [OADSchemeColor schemeColorWithIndex:4];
    [v7 setFillMatrixIndex:3 color:v8];

    v9 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
    v10 = [OADSchemeColor schemeColorWithIndex:4];
    [v9 setEffectMatrixIndex:2 color:v10];

    v11 = objc_alloc_init(OADFontReference);
    [(OADFontReference *)v11 setIndex:1];
    v12 = [OADSchemeColor schemeColorWithIndex:1];
    [(OADFontReference *)v11 setColor:v12];

    [+[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle setFontReference:v11];
    v2 = +[OADShapeStyle defaultOfficeShapeStyle]::defaultOfficeShapeStyle;
  }

  return v2;
}

- (void)applyToGraphicProperties:(id)a3 styleMatrix:(id)a4 useNull:(BOOL)a5 strokeWidthMultiplier:(float)a6
{
  v7 = a5;
  v29 = a3;
  v10 = a4;
  v11 = [v29 isMergedWithParent];
  [v29 setMergedWithParent:0];
  mLineReference = self->mLineReference;
  if (mLineReference)
  {
    v13 = [v10 strokeAtIndex:{-[OADStyleMatrixReference matrixIndex](mLineReference, "matrixIndex")}];
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v13 = +[OADStroke nullStroke];
  }

LABEL_7:
  if (v13)
  {
    v14 = [v13 copy];

    if (a6 != 1.0)
    {
      [v14 width];
      *&v16 = v15 * a6;
      [v14 setWidth:v16];
    }

    v17 = [(OADStyleMatrixReference *)self->mLineReference color];
    if (v17)
    {
      [v14 setStyleColor:v17];
    }

    if ([v29 hasStroke])
    {
      v18 = [v29 stroke];
      [v18 setParent:v14];
    }

    else
    {
      [v29 setStroke:v14];
    }
  }

  else
  {
    v14 = 0;
  }

  mFillReference = self->mFillReference;
  if (mFillReference)
  {
    v20 = [v10 fillAtIndex:{-[OADStyleMatrixReference matrixIndex](mFillReference, "matrixIndex")}];
    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v7)
  {
    v20 = +[OADNullFill nullFill];
  }

LABEL_23:
  if (v20)
  {
    v21 = [v20 copy];

    v22 = [(OADStyleMatrixReference *)self->mFillReference color];
    if (v22)
    {
      [v21 setStyleColor:v22];
    }

    else
    {
      v23 = +[OADNullFill nullFill];

      v21 = v23;
    }

    if ([v29 hasFill])
    {
      v24 = [v29 fill];
      if ([v21 isMemberOfClass:objc_opt_class()])
      {
        [v24 setParent:v21];
      }
    }

    else
    {
      [v21 setDefinedByStyle:1];
      [v29 setFill:v21];
    }

    v20 = v21;
  }

  if (([v29 hasEffects] & 1) == 0)
  {
    mEffectReference = self->mEffectReference;
    if (mEffectReference)
    {
      v26 = [v10 effectsAtIndex:{-[OADStyleMatrixReference matrixIndex](mEffectReference, "matrixIndex")}];
    }

    else
    {
      v26 = 0;
    }

    if (!v26 && v7)
    {
      v26 = [MEMORY[0x277CBEA60] array];
    }

    if (v26)
    {
      v27 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v26 copyItems:1];

      v28 = [(OADStyleMatrixReference *)self->mEffectReference color];
      if (v28)
      {
        [v27 makeObjectsPerformSelector:sel_setStyleColor_ withObject:v28];
      }

      [v29 setEffects:v27];
    }
  }

  [v29 setMergedWithParent:v11];
}

- (void)applyToTextBody:(id)a3
{
  v9 = a3;
  v4 = [v9 overrideTextListStyle];
  if (v4)
  {
    [(OADShapeStyle *)self applyToTextListStyle:v4];
  }

  else
  {
    v5 = [v9 paragraphCount];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [v9 paragraphAtIndex:i];
        v8 = [v7 properties];
        [(OADShapeStyle *)self applyToParagraphProperties:v8];
      }
    }
  }
}

- (void)applyToTextListStyle:(id)a3
{
  v7 = a3;
  v4 = [v7 defaultProperties];
  [(OADShapeStyle *)self applyToParagraphProperties:v4];

  for (i = 0; i != 9; ++i)
  {
    v6 = [v7 propertiesForListLevel:i];
    [(OADShapeStyle *)self applyToParagraphProperties:v6];
  }
}

- (void)setLineMatrixIndex:(unsigned int)a3 color:(id)a4
{
  v8 = a4;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:a3 color:v8];
  mLineReference = self->mLineReference;
  self->mLineReference = v6;
}

- (void)setFillMatrixIndex:(unsigned int)a3 color:(id)a4
{
  v8 = a4;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:a3 color:v8];
  mFillReference = self->mFillReference;
  self->mFillReference = v6;
}

- (void)setEffectMatrixIndex:(unsigned int)a3 color:(id)a4
{
  v8 = a4;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:a3 color:v8];
  mEffectReference = self->mEffectReference;
  self->mEffectReference = v6;
}

- (id)description
{
  v3 = [OITSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [(OADStyleMatrixReference *)self->mLineReference description];
  [v3 addField:@"Line" value:v4];

  v5 = [(OADStyleMatrixReference *)self->mFillReference description];
  [v3 addField:@"Fill" value:v5];

  v6 = [(OADStyleMatrixReference *)self->mEffectReference description];
  [v3 addField:@"Effect" value:v6];

  v7 = [(OADFontReference *)self->mFontReference description];
  [v3 addField:@"Font" value:v7];

  v8 = [v3 descriptionString];

  return v8;
}

@end