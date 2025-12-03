@interface EMCellStyle
+ (id)_parseFontName:(id)name nameContainsBold:(BOOL *)bold nameContainsItalic:(BOOL *)italic;
+ (id)styleForFont:(id)font;
- (BOOL)isEqual:(id)equal;
- (EMCellStyle)initWithStyleWrapper:(id)wrapper type:(int)type columnWidth:(unint64_t)width contentWidth:(unint64_t)contentWidth truncateContents:(BOOL)contents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cssStyleString;
- (void)addAlignmentStyle:(id)style;
- (void)addBordersStyle:(id)style;
- (void)addFillStyle;
- (void)addFontStyle:(id)style;
- (void)resolveContentWidth;
- (void)resolveFormatType;
@end

@implementation EMCellStyle

- (EMCellStyle)initWithStyleWrapper:(id)wrapper type:(int)type columnWidth:(unint64_t)width contentWidth:(unint64_t)contentWidth truncateContents:(BOOL)contents
{
  wrapperCopy = wrapper;
  v17.receiver = self;
  v17.super_class = EMCellStyle;
  v14 = [(CMStyle *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_emStyle, wrapper);
    v15->_edCellType = type;
    v15->_contentWidth = contentWidth;
    v15->_columnWidth = width;
    v15->_truncateContents = contents;
    v15->_resolvedProperties = 0;
  }

  return v15;
}

- (void)resolveFormatType
{
  edStyle = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  if (self->_edCellType == 2)
  {
    v3 = [[CMStringProperty alloc] initWithString:0x286EF6750];
    [(CMStyle *)self addProperty:v3 forKey:0x286F08170];
  }

  if (![edStyle isAlignmentInfoOverridden])
  {
    goto LABEL_8;
  }

  alignmentInfo = [edStyle alignmentInfo];
  if (([alignmentInfo isHorizontalAlignOverridden] & 1) == 0)
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

  alignmentInfo2 = [edStyle alignmentInfo];
  horizontalAlignment = [alignmentInfo2 horizontalAlignment];

  if (!horizontalAlignment)
  {
    goto LABEL_8;
  }

LABEL_12:
}

- (void)resolveContentWidth
{
  edStyle = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  v4 = edStyle;
  if (self->_columnWidth < self->_contentWidth && edStyle != 0)
  {
    v13 = edStyle;
    isAlignmentInfoOverridden = [edStyle isAlignmentInfoOverridden];
    v4 = v13;
    if (isAlignmentInfoOverridden)
    {
      alignmentInfo = [v13 alignmentInfo];
      if ([alignmentInfo isTextWrapped])
      {
        goto LABEL_27;
      }

      if ([alignmentInfo textRotation])
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
      value = [v9 value];
      if (value > 2)
      {
        if (value == 3)
        {
          if (v10)
          {
            [v10 setNoneAtLocation:2];
          }

          goto LABEL_23;
        }

        if (value != 6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (value < 2)
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

        if (value != 2)
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

+ (id)styleForFont:(id)font
{
  fontCopy = font;
  string = [MEMORY[0x277CCAB68] string];
  v15 = 0;
  name = [fontCopy name];

  if (name)
  {
    name2 = [fontCopy name];
    v8 = [self _parseFontName:name2 nameContainsBold:&v15 + 1 nameContainsItalic:&v15];

    [string appendFormat:@"%@:%@;", 0x286EF73B0, v8];
  }

  if ((v15 & 0x100) != 0 || [fontCopy isBoldOverridden] && objc_msgSend(fontCopy, "isBold"))
  {
    [string appendString:@" font-weight:bold;"];
  }

  if ((v15 & 1) != 0 || [fontCopy isItalicOverridden] && objc_msgSend(fontCopy, "isItalic"))
  {
    [string appendString:@" font-style:italic;"];
  }

  if ([fontCopy isStrikeOverridden] && objc_msgSend(fontCopy, "isStrike"))
  {
    [string appendString:@" text-decoration:line-through;"];
  }

  if ([fontCopy isUnderlineOverridden])
  {
    [string appendString:@" "];
    v9 = +[EMEnumProperty mapUnderlineValue:](EMEnumProperty, "mapUnderlineValue:", [fontCopy underline]);
    [string appendString:v9];
  }

  color = [fontCopy color];
  if (([color isBlack] & 1) == 0)
  {
    [string appendString:0x286F077B0];
    v11 = [CMColorProperty cssStringFromTSUColor:color];
    [string appendString:v11];
  }

  if ([fontCopy isHeightOverridden])
  {
    [fontCopy height];
    if (v12 != 200.0)
    {
      [string appendString:0x286EF73D0];
      [fontCopy height];
      v13 = [CMLengthProperty cssStringValue:2 unit:?];
      [string appendString:v13];
    }
  }

  return string;
}

- (void)addFontStyle:(id)style
{
  styleCopy = style;
  mStyleString = self->super.mStyleString;
  v5 = [objc_opt_class() styleForFont:styleCopy];
  [(NSMutableString *)mStyleString appendString:v5];
}

- (void)addFillStyle
{
  fillColor = [(EMCellStyleWrapper *)self->_emStyle fillColor];
  if (fillColor)
  {
    v5 = fillColor;
    v4 = [CMColorProperty cssStringFromTSUColor:fillColor];
    [(CMStyle *)self appendPropertyForName:0x286F07DF0 stringWithColons:v4];

    fillColor = v5;
  }
}

- (void)addBordersStyle:(id)style
{
  styleCopy = style;
  v4 = [[EMBordersProperty alloc] initWithEDBorders:styleCopy];
  [(CMStyle *)self addProperty:v4 forKey:@"Borders"];
}

- (void)addAlignmentStyle:(id)style
{
  styleCopy = style;
  edStyle = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  if ([styleCopy isVerticalAlignOverridden])
  {
    v5 = -[EMEnumProperty initWithEnum:]([EMEnumProperty alloc], "initWithEnum:", [styleCopy verticalAlignment]);
    [(CMStyle *)self addProperty:v5 forKey:0x286F077D0];
  }

  if ([styleCopy isHorizontalAlignOverridden] && objc_msgSend(styleCopy, "horizontalAlignment"))
  {
    v6 = -[EMEnumProperty initWithEnum:]([EMEnumProperty alloc], "initWithEnum:", [styleCopy horizontalAlignment]);
    [(CMStyle *)self addProperty:v6 forKey:0x286F08230];
  }

  if ([styleCopy indent] >= 1)
  {
    v7 = 12.0;
    if ([edStyle isFontOverridden])
    {
      font = [edStyle font];
      [font height];
      v7 = v9 / 20.0;
    }

    v10 = -[CMLengthProperty initWithNumber:]([CMLengthProperty alloc], "initWithNumber:", v7 * [styleCopy indent]);
    [(CMStyle *)self addProperty:v10 forKey:0x286F081B0];
  }

  if ([styleCopy isTextWrapped])
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

+ (id)_parseFontName:(id)name nameContainsBold:(BOOL *)bold nameContainsItalic:(BOOL *)italic
{
  nameCopy = name;
  if ([nameCopy hasSuffix:@" Bold"])
  {
    *bold = 1;
    v8 = [nameCopy length];
LABEL_3:
    v9 = v8 - 5;
LABEL_13:
    v11 = [nameCopy substringToIndex:v9];
    goto LABEL_14;
  }

  if ([nameCopy hasSuffix:@" BoldItalic"])
  {
    *bold = 1;
    *italic = 1;
    v10 = [nameCopy length];
LABEL_6:
    v9 = v10 - 11;
    goto LABEL_13;
  }

  if ([nameCopy hasSuffix:@" MediumItalic"])
  {
    *italic = 1;
    v9 = [nameCopy length] - 13;
    goto LABEL_13;
  }

  if ([nameCopy hasSuffix:@" SemiBold"])
  {
    *bold = 1;
    v9 = [nameCopy length] - 9;
    goto LABEL_13;
  }

  if ([nameCopy hasSuffix:@" SemiBoldItalic"])
  {
    *bold = 1;
    *italic = 1;
    v9 = [nameCopy length] - 15;
    goto LABEL_13;
  }

  if ([nameCopy hasSuffix:@" Text"])
  {
    v8 = [nameCopy length];
    goto LABEL_3;
  }

  if ([nameCopy hasSuffix:@" TextItalic"])
  {
    *italic = 1;
    v10 = [nameCopy length];
    goto LABEL_6;
  }

  v11 = nameCopy;
LABEL_14:
  v12 = v11;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = EMCellStyle;
  v4 = [(CMStyle *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_emStyle);
  *(v4 + 8) = self->_edCellType;
  v4[6] = *&self->_contentWidth;
  v4[5] = *&self->_columnWidth;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  edStyle = [(EMCellStyleWrapper *)self->_emStyle edStyle];
  v4 = edStyle;
  if (!self->_resolvedProperties)
  {
    self->_resolvedProperties = 1;
    font = [edStyle font];

    if (font)
    {
      font2 = [v4 font];
      [(EMCellStyle *)self addFontStyle:font2];
    }

    if ([v4 isBordersOverridden])
    {
      borders = [v4 borders];
      [(EMCellStyle *)self addBordersStyle:borders];
    }

    [(EMCellStyle *)self addFillStyle];
    alignmentInfo = [v4 alignmentInfo];

    if (alignmentInfo)
    {
      alignmentInfo2 = [v4 alignmentInfo];
      [(EMCellStyle *)self addAlignmentStyle:alignmentInfo2];
    }

    [(EMCellStyle *)self resolveFormatType];
    [(EMCellStyle *)self resolveContentWidth];
  }

  v12.receiver = self;
  v12.super_class = EMCellStyle;
  cssStyleString = [(CMStyle *)&v12 cssStyleString];

  return cssStyleString;
}

@end