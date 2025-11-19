@interface EMCellStyle
+ (id)_parseFontName:(id)a3 nameContainsBold:(BOOL *)a4 nameContainsItalic:(BOOL *)a5;
+ (id)styleForFont:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMCellStyle)initWithStyleWrapper:(id)a3 type:(int)a4 columnWidth:(unint64_t)a5 contentWidth:(unint64_t)a6 truncateContents:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cssStyleString;
- (void)addAlignmentStyle:(id)a3;
- (void)addBordersStyle:(id)a3;
- (void)addFillStyle;
- (void)addFontStyle:(id)a3;
- (void)resolveContentWidth;
- (void)resolveFormatType;
@end

@implementation EMCellStyle

- (EMCellStyle)initWithStyleWrapper:(id)a3 type:(int)a4 columnWidth:(unint64_t)a5 contentWidth:(unint64_t)a6 truncateContents:(BOOL)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = EMCellStyle;
  v14 = [(CMStyle *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_emStyle, a3);
    v15->_edCellType = a4;
    v15->_contentWidth = a6;
    v15->_columnWidth = a5;
    v15->_truncateContents = a7;
    v15->_resolvedProperties = 0;
  }

  return v15;
}

- (void)resolveFormatType
{
  v11 = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  if (self->_edCellType == 2)
  {
    v3 = [[CMStringProperty alloc] initWithString:0x286EF6750];
    [(CMStyle *)self addProperty:v3 forKey:0x286F08170];
  }

  if (![v11 isAlignmentInfoOverridden])
  {
    goto LABEL_8;
  }

  v4 = [v11 alignmentInfo];
  if (([v4 isHorizontalAlignOverridden] & 1) == 0)
  {

LABEL_8:
    edCellType = self->_edCellType;
    v8 = [EMEnumProperty alloc];
    if (edCellType == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v10 = [(EMEnumProperty *)v8 initWithEnum:v9];
    [(CMStyle *)self addProperty:v10 forKey:@"text-align"];

    goto LABEL_12;
  }

  v5 = [v11 alignmentInfo];
  v6 = [v5 horizontalAlignment];

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_12:
}

- (void)resolveContentWidth
{
  v3 = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  v4 = v3;
  if (self->_columnWidth < self->_contentWidth && v3 != 0)
  {
    v13 = v3;
    v6 = [v3 isAlignmentInfoOverridden];
    v4 = v13;
    if (v6)
    {
      v7 = [v13 alignmentInfo];
      if ([v7 isTextWrapped])
      {
        goto LABEL_27;
      }

      if ([v7 textRotation])
      {
        goto LABEL_27;
      }

      v8 = self->_contentWidth - self->_columnWidth;
      if (v8 < 2.0)
      {
        goto LABEL_27;
      }

      v9 = [(CMStyle *)self propertyForName:@"text-align"];
      if (!v9)
      {
LABEL_26:

LABEL_27:
        v4 = v13;
        goto LABEL_28;
      }

      v10 = [(CMStyle *)self propertyForName:@"Borders"];
      v11 = [v9 value];
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (v10)
          {
            [v10 setNoneAtLocation:2];
          }

          goto LABEL_23;
        }

        if (v11 != 6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v11 < 2)
        {
          if (self->_truncateContents)
          {
            v12 = [[CMStringProperty alloc] initWithString:0x286EF6750];
            [(CMStyle *)self addProperty:v12 forKey:0x286F08170];
LABEL_24:
          }

LABEL_25:

          goto LABEL_26;
        }

        if (v11 != 2)
        {
          goto LABEL_25;
        }
      }

      if (v10)
      {
        [v10 setNoneAtLocation:2];
        [v10 setNoneAtLocation:4];
      }

      v8 = v8 * 0.5;
LABEL_23:
      v12 = [[CMLengthProperty alloc] initWithNumber:-v8];
      [(CMStyle *)self addProperty:v12 forKey:@"text-indent"];
      goto LABEL_24;
    }
  }

LABEL_28:
}

+ (id)styleForFont:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v15 = 0;
  v6 = [v4 name];

  if (v6)
  {
    v7 = [v4 name];
    v8 = [a1 _parseFontName:v7 nameContainsBold:&v15 + 1 nameContainsItalic:&v15];

    [v5 appendFormat:@"%@:%@;", 0x286EF73B0, v8];
  }

  if ((v15 & 0x100) != 0 || [v4 isBoldOverridden] && objc_msgSend(v4, "isBold"))
  {
    [v5 appendString:@" font-weight:bold;"];
  }

  if ((v15 & 1) != 0 || [v4 isItalicOverridden] && objc_msgSend(v4, "isItalic"))
  {
    [v5 appendString:@" font-style:italic;"];
  }

  if ([v4 isStrikeOverridden] && objc_msgSend(v4, "isStrike"))
  {
    [v5 appendString:@" text-decoration:line-through;"];
  }

  if ([v4 isUnderlineOverridden])
  {
    [v5 appendString:@" "];
    v9 = +[EMEnumProperty mapUnderlineValue:](EMEnumProperty, "mapUnderlineValue:", [v4 underline]);
    [v5 appendString:v9];
  }

  v10 = [v4 color];
  if (([v10 isBlack] & 1) == 0)
  {
    [v5 appendString:0x286F077B0];
    v11 = [CMColorProperty cssStringFromTSUColor:v10];
    [v5 appendString:v11];
  }

  if ([v4 isHeightOverridden])
  {
    [v4 height];
    if (v12 != 200.0)
    {
      [v5 appendString:0x286EF73D0];
      [v4 height];
      v13 = [CMLengthProperty cssStringValue:2 unit:?];
      [v5 appendString:v13];
    }
  }

  return v5;
}

- (void)addFontStyle:(id)a3
{
  v6 = a3;
  mStyleString = self->super.mStyleString;
  v5 = [objc_opt_class() styleForFont:v6];
  [(NSMutableString *)mStyleString appendString:v5];
}

- (void)addFillStyle
{
  v3 = [(EMCellStyleWrapper *)self->_emStyle fillColor];
  if (v3)
  {
    v5 = v3;
    v4 = [CMColorProperty cssStringFromTSUColor:v3];
    [(CMStyle *)self appendPropertyForName:0x286F07DF0 stringWithColons:v4];

    v3 = v5;
  }
}

- (void)addBordersStyle:(id)a3
{
  v5 = a3;
  v4 = [[EMBordersProperty alloc] initWithEDBorders:v5];
  [(CMStyle *)self addProperty:v4 forKey:@"Borders"];
}

- (void)addAlignmentStyle:(id)a3
{
  v13 = a3;
  v4 = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  if ([v13 isVerticalAlignOverridden])
  {
    v5 = -[EMEnumProperty initWithEnum:]([EMEnumProperty alloc], "initWithEnum:", [v13 verticalAlignment]);
    [(CMStyle *)self addProperty:v5 forKey:0x286F077D0];
  }

  if ([v13 isHorizontalAlignOverridden] && objc_msgSend(v13, "horizontalAlignment"))
  {
    v6 = -[EMEnumProperty initWithEnum:]([EMEnumProperty alloc], "initWithEnum:", [v13 horizontalAlignment]);
    [(CMStyle *)self addProperty:v6 forKey:0x286F08230];
  }

  if ([v13 indent] >= 1)
  {
    v7 = 12.0;
    if ([v4 isFontOverridden])
    {
      v8 = [v4 font];
      [v8 height];
      v7 = v9 / 20.0;
    }

    v10 = -[CMLengthProperty initWithNumber:]([CMLengthProperty alloc], "initWithNumber:", v7 * [v13 indent]);
    [(CMStyle *)self addProperty:v10 forKey:0x286F081B0];
  }

  if ([v13 isTextWrapped])
  {
    [(CMStyle *)self appendPropertyForName:0x286F082B0 stringWithColons:@":normal;"];
  }

  v11 = [[CMLengthProperty alloc] initWithNumber:0.0];
  [(CMStyle *)self addProperty:v11 forKey:0x286F081F0];
  [(CMStyle *)self addProperty:v11 forKey:0x286F08190];
  v12 = [[CMLengthProperty alloc] initWithNumber:1 unit:2.0];

  [(CMStyle *)self addProperty:v12 forKey:0x286F081B0];
  [(CMStyle *)self addProperty:v12 forKey:0x286F081D0];
}

+ (id)_parseFontName:(id)a3 nameContainsBold:(BOOL *)a4 nameContainsItalic:(BOOL *)a5
{
  v7 = a3;
  if ([v7 hasSuffix:@" Bold"])
  {
    *a4 = 1;
    v8 = [v7 length];
LABEL_3:
    v9 = v8 - 5;
LABEL_13:
    v11 = [v7 substringToIndex:v9];
    goto LABEL_14;
  }

  if ([v7 hasSuffix:@" BoldItalic"])
  {
    *a4 = 1;
    *a5 = 1;
    v10 = [v7 length];
LABEL_6:
    v9 = v10 - 11;
    goto LABEL_13;
  }

  if ([v7 hasSuffix:@" MediumItalic"])
  {
    *a5 = 1;
    v9 = [v7 length] - 13;
    goto LABEL_13;
  }

  if ([v7 hasSuffix:@" SemiBold"])
  {
    *a4 = 1;
    v9 = [v7 length] - 9;
    goto LABEL_13;
  }

  if ([v7 hasSuffix:@" SemiBoldItalic"])
  {
    *a4 = 1;
    *a5 = 1;
    v9 = [v7 length] - 15;
    goto LABEL_13;
  }

  if ([v7 hasSuffix:@" Text"])
  {
    v8 = [v7 length];
    goto LABEL_3;
  }

  if ([v7 hasSuffix:@" TextItalic"])
  {
    *a5 = 1;
    v10 = [v7 length];
    goto LABEL_6;
  }

  v11 = v7;
LABEL_14:
  v12 = v11;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = EMCellStyle;
  v4 = [(CMStyle *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_emStyle);
  *(v4 + 8) = self->_edCellType;
  v4[6] = *&self->_contentWidth;
  v4[5] = *&self->_columnWidth;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EMCellStyleWrapper *)v5->_emStyle isEqual:self->_emStyle]&& v5->_contentWidth == self->_contentWidth && v5->_columnWidth == self->_columnWidth && v5->_edCellType == self->_edCellType;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)cssStyleString
{
  v3 = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  v4 = v3;
  if (!self->_resolvedProperties)
  {
    self->_resolvedProperties = 1;
    v5 = [v3 font];

    if (v5)
    {
      v6 = [v4 font];
      [(EMCellStyle *)self addFontStyle:v6];
    }

    if ([v4 isBordersOverridden])
    {
      v7 = [v4 borders];
      [(EMCellStyle *)self addBordersStyle:v7];
    }

    [(EMCellStyle *)self addFillStyle];
    v8 = [v4 alignmentInfo];

    if (v8)
    {
      v9 = [v4 alignmentInfo];
      [(EMCellStyle *)self addAlignmentStyle:v9];
    }

    [(EMCellStyle *)self resolveFormatType];
    [(EMCellStyle *)self resolveContentWidth];
  }

  v12.receiver = self;
  v12.super_class = EMCellStyle;
  v10 = [(CMStyle *)&v12 cssStyleString];

  return v10;
}

@end