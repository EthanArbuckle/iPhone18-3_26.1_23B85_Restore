@interface OADShapeStyle
+ (id)defaultOfficeShapeStyle;
+ (id)defaultShapeStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)applyToGraphicProperties:(id)properties styleMatrix:(id)matrix useNull:(BOOL)null strokeWidthMultiplier:(float)multiplier;
- (void)applyToTextBody:(id)body;
- (void)applyToTextListStyle:(id)style;
- (void)setEffectMatrixIndex:(unsigned int)index color:(id)color;
- (void)setFillMatrixIndex:(unsigned int)index color:(id)color;
- (void)setLineMatrixIndex:(unsigned int)index color:(id)color;
@end

@implementation OADShapeStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(OADStyleMatrixReference *)self->mLineReference copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(OADStyleMatrixReference *)self->mFillReference copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(OADStyleMatrixReference *)self->mEffectReference copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(OADFontReference *)self->mFontReference copyWithZone:zone];
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

- (void)applyToGraphicProperties:(id)properties styleMatrix:(id)matrix useNull:(BOOL)null strokeWidthMultiplier:(float)multiplier
{
  nullCopy = null;
  propertiesCopy = properties;
  matrixCopy = matrix;
  isMergedWithParent = [propertiesCopy isMergedWithParent];
  [propertiesCopy setMergedWithParent:0];
  mLineReference = self->mLineReference;
  if (mLineReference)
  {
    v13 = [matrixCopy strokeAtIndex:{-[OADStyleMatrixReference matrixIndex](mLineReference, "matrixIndex")}];
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
  }

  if (nullCopy)
  {
    v13 = +[OADStroke nullStroke];
  }

LABEL_7:
  if (v13)
  {
    v14 = [v13 copy];

    if (multiplier != 1.0)
    {
      [v14 width];
      *&v16 = v15 * multiplier;
      [v14 setWidth:v16];
    }

    color = [(OADStyleMatrixReference *)self->mLineReference color];
    if (color)
    {
      [v14 setStyleColor:color];
    }

    if ([propertiesCopy hasStroke])
    {
      stroke = [propertiesCopy stroke];
      [stroke setParent:v14];
    }

    else
    {
      [propertiesCopy setStroke:v14];
    }
  }

  else
  {
    v14 = 0;
  }

  mFillReference = self->mFillReference;
  if (mFillReference)
  {
    v20 = [matrixCopy fillAtIndex:{-[OADStyleMatrixReference matrixIndex](mFillReference, "matrixIndex")}];
    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 0;
  }

  if (nullCopy)
  {
    v20 = +[OADNullFill nullFill];
  }

LABEL_23:
  if (v20)
  {
    v21 = [v20 copy];

    color2 = [(OADStyleMatrixReference *)self->mFillReference color];
    if (color2)
    {
      [v21 setStyleColor:color2];
    }

    else
    {
      v23 = +[OADNullFill nullFill];

      v21 = v23;
    }

    if ([propertiesCopy hasFill])
    {
      fill = [propertiesCopy fill];
      if ([v21 isMemberOfClass:objc_opt_class()])
      {
        [fill setParent:v21];
      }
    }

    else
    {
      [v21 setDefinedByStyle:1];
      [propertiesCopy setFill:v21];
    }

    v20 = v21;
  }

  if (([propertiesCopy hasEffects] & 1) == 0)
  {
    mEffectReference = self->mEffectReference;
    if (mEffectReference)
    {
      array = [matrixCopy effectsAtIndex:{-[OADStyleMatrixReference matrixIndex](mEffectReference, "matrixIndex")}];
    }

    else
    {
      array = 0;
    }

    if (!array && nullCopy)
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    if (array)
    {
      v27 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array copyItems:1];

      color3 = [(OADStyleMatrixReference *)self->mEffectReference color];
      if (color3)
      {
        [v27 makeObjectsPerformSelector:sel_setStyleColor_ withObject:color3];
      }

      [propertiesCopy setEffects:v27];
    }
  }

  [propertiesCopy setMergedWithParent:isMergedWithParent];
}

- (void)applyToTextBody:(id)body
{
  bodyCopy = body;
  overrideTextListStyle = [bodyCopy overrideTextListStyle];
  if (overrideTextListStyle)
  {
    [(OADShapeStyle *)self applyToTextListStyle:overrideTextListStyle];
  }

  else
  {
    paragraphCount = [bodyCopy paragraphCount];
    if (paragraphCount)
    {
      for (i = 0; i != paragraphCount; ++i)
      {
        v7 = [bodyCopy paragraphAtIndex:i];
        properties = [v7 properties];
        [(OADShapeStyle *)self applyToParagraphProperties:properties];
      }
    }
  }
}

- (void)applyToTextListStyle:(id)style
{
  styleCopy = style;
  defaultProperties = [styleCopy defaultProperties];
  [(OADShapeStyle *)self applyToParagraphProperties:defaultProperties];

  for (i = 0; i != 9; ++i)
  {
    v6 = [styleCopy propertiesForListLevel:i];
    [(OADShapeStyle *)self applyToParagraphProperties:v6];
  }
}

- (void)setLineMatrixIndex:(unsigned int)index color:(id)color
{
  colorCopy = color;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:index color:colorCopy];
  mLineReference = self->mLineReference;
  self->mLineReference = v6;
}

- (void)setFillMatrixIndex:(unsigned int)index color:(id)color
{
  colorCopy = color;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:index color:colorCopy];
  mFillReference = self->mFillReference;
  self->mFillReference = v6;
}

- (void)setEffectMatrixIndex:(unsigned int)index color:(id)color
{
  colorCopy = color;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:index color:colorCopy];
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

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end