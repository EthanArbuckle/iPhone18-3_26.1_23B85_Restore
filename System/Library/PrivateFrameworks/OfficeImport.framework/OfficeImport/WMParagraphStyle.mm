@interface WMParagraphStyle
+ (BOOL)isShadingNull:(id)null;
- (BOOL)isRTLWithOverridesFromProperties:(id)properties;
- (WMParagraphStyle)initWithDefaultProperties:(id)properties style:(id)style isInTextFrame:(BOOL)frame;
- (id)leadingMarginPropertyNameWithOverridesFromProperties:(id)properties;
- (id)trailingMarginPropertyNameWithOverridesFromProperties:(id)properties;
- (void)addParagraphProperties:(id)properties;
- (void)addParagraphPropertiesFromStyle;
- (void)addParagraphPropertiesFromStyle:(id)style;
- (void)addParagraphStyleCharacterProperties:(id)properties;
- (void)mapBorders:(id)borders;
@end

@implementation WMParagraphStyle

- (WMParagraphStyle)initWithDefaultProperties:(id)properties style:(id)style isInTextFrame:(BOOL)frame
{
  propertiesCopy = properties;
  styleCopy = style;
  v14.receiver = self;
  v14.super_class = WMParagraphStyle;
  v11 = [(CMStyle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseStyle, style);
    v12->_isInTextFrame = frame;
    objc_storeStrong(&v12->_defaultParagraphProperties, properties);
  }

  return v12;
}

- (void)addParagraphPropertiesFromStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    v7 = styleCopy;
    baseStyle = [styleCopy baseStyle];
    if (baseStyle && baseStyle != v7)
    {
      [(WMParagraphStyle *)self addParagraphPropertiesFromStyle:baseStyle];
    }

    paragraphProperties = [v7 paragraphProperties];
    [(WMParagraphStyle *)self addParagraphProperties:paragraphProperties];

    styleCopy = v7;
  }
}

- (void)addParagraphPropertiesFromStyle
{
  [(WMParagraphStyle *)self addParagraphProperties:self->_defaultParagraphProperties];
  baseStyle = self->_baseStyle;

  [(WMParagraphStyle *)self addParagraphPropertiesFromStyle:baseStyle];
}

- (void)addParagraphStyleCharacterProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v7 = propertiesCopy;
    baseStyle = [propertiesCopy baseStyle];
    if (baseStyle && baseStyle != v7)
    {
      [(WMParagraphStyle *)self addParagraphStyleCharacterProperties:baseStyle];
    }

    characterProperties = [v7 characterProperties];
    [(WMStyle *)self addCharacterProperties:characterProperties];

    propertiesCopy = v7;
  }
}

- (BOOL)isRTLWithOverridesFromProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy isRightToLeftOverridden])
  {
    rightToLeft = [propertiesCopy rightToLeft];
    if (!rightToLeft)
    {
      v10 = 0;
      goto LABEL_7;
    }

    if (rightToLeft == 1)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v6 = rightToLeft == 129;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CMStyle *)self propertyForName:0x286F07750];
  value = [v7 value];
  v9 = [value isEqualToString:0x286F03FF0];

  v10 = v6 ^ v9;
LABEL_7:

  return v10;
}

- (id)leadingMarginPropertyNameWithOverridesFromProperties:(id)properties
{
  v3 = [(WMParagraphStyle *)self isRTLWithOverridesFromProperties:properties];
  v4 = &HUPropNmMarginRight;
  if (!v3)
  {
    v4 = &HUPropNmMarginLeft;
  }

  v5 = *v4;

  return v5;
}

- (id)trailingMarginPropertyNameWithOverridesFromProperties:(id)properties
{
  v3 = [(WMParagraphStyle *)self isRTLWithOverridesFromProperties:properties];
  v4 = &HUPropNmMarginLeft;
  if (!v3)
  {
    v4 = &HUPropNmMarginRight;
  }

  v5 = *v4;

  return v5;
}

- (void)addParagraphProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy isCharacterPropertiesOverridden])
  {
    characterProperties = [propertiesCopy characterProperties];
  }

  else
  {
    characterProperties = 0;
  }

  if ([propertiesCopy isBiDiOverridden] && objc_msgSend(propertiesCopy, "biDi"))
  {
    v5 = [[CMStringProperty alloc] initWithString:0x286F03FF0];
    [(CMStyle *)self addProperty:v5 forKey:0x286F07750];
  }

  if ([characterProperties isRightToLeftOverridden])
  {
    if ([(WMParagraphStyle *)self isRTLWithOverridesFromProperties:characterProperties])
    {
      v6 = [[CMStringProperty alloc] initWithString:0x286F03FF0];
    }

    else
    {
      v6 = [[CMStringProperty alloc] initWithString:0x286F04010];
    }

    [(CMStyle *)self addProperty:v6 forKey:0x286F07750];
  }

  if ([propertiesCopy isSpaceAfterOverridden])
  {
    v7 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy spaceAfter]);
    [(CMStyle *)self addProperty:v7 forKey:0x286F080B0];
  }

  if ([propertiesCopy isSpaceBeforeOverridden])
  {
    v8 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy spaceBefore]);
    [(CMStyle *)self addProperty:v8 forKey:0x286EF67D0];
  }

  if ([propertiesCopy isLineSpacingOverridden])
  {
    v9 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 8, [propertiesCopy lineSpacing] / 240.0 * 1.2);
    [(CMStyle *)self addProperty:v9 forKey:0x286F08090];
  }

  if ([propertiesCopy isJustificationOverridden])
  {
    v10 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [propertiesCopy justification]);
    [(CMStyle *)self addProperty:v10 forKey:0x286F08230];
  }

  if ([propertiesCopy isLeftIndentOverridden])
  {
    v11 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy leftIndent]);
    [(CMStyle *)self addProperty:v11 forKey:0x286EF67B0];
  }

  if ([propertiesCopy isRightIndentOverridden])
  {
    v12 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy rightIndent]);
    [(CMStyle *)self addProperty:v12 forKey:0x286F080D0];
  }

  if ([propertiesCopy isLeadingIndentOverridden])
  {
    v13 = [(WMParagraphStyle *)self leadingMarginPropertyNameWithOverridesFromProperties:characterProperties];
    v14 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy leadingIndent]);
    [(CMStyle *)self addProperty:v14 forKey:v13];
  }

  if ([propertiesCopy isFollowingIndentOverridden])
  {
    v15 = [(WMParagraphStyle *)self trailingMarginPropertyNameWithOverridesFromProperties:characterProperties];
    v16 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy followingIndent]);
    [(CMStyle *)self addProperty:v16 forKey:v15];
  }

  if ([propertiesCopy isFirstLineIndentOverridden])
  {
    v17 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [propertiesCopy firstLineIndent]);
    [(CMStyle *)self addProperty:v17 forKey:0x286F08250];
  }

  [(WMParagraphStyle *)self mapBorders:propertiesCopy];
  if ([propertiesCopy isShadingOverridden])
  {
    shading = [propertiesCopy shading];
    v19 = [WMParagraphStyle isShadingNull:shading];

    if (!v19)
    {
      shading2 = [propertiesCopy shading];
      v21 = [CMColorProperty nsColorFromShading:shading2];

      v22 = [[CMColorProperty alloc] initWithColor:v21];
      [(CMStyle *)self addProperty:v22 forKey:0x286F07DF0];
    }
  }

  if ([propertiesCopy isCharacterPropertiesOverridden])
  {
    characterProperties2 = [propertiesCopy characterProperties];
    [(WMStyle *)self addCharacterProperties:characterProperties2];
  }
}

- (void)mapBorders:(id)borders
{
  bordersCopy = borders;
  if (!self->_isInTextFrame)
  {
    v8 = bordersCopy;
    if ([bordersCopy isBottomBorderOverridden])
    {
      bottomBorder = [v8 bottomBorder];
      v6 = bottomBorder;
      if (bottomBorder && [bottomBorder style])
      {
        v7 = objc_alloc_init(WMBordersProperty);
        [(WMBordersProperty *)v7 setBorder:v6 location:3];
        [(CMStyle *)self addProperty:v7 forKey:0x286F07E50];
      }
    }

    else
    {
      v6 = 0;
    }

    bordersCopy = v8;
  }
}

+ (BOOL)isShadingNull:(id)null
{
  nullCopy = null;
  style = [nullCopy style];
  if (style)
  {
    if (style == 0xFFFF)
    {
      foreground = [nullCopy foreground];
      [foreground alphaComponent];
      if (v6 == 0.0)
      {
        background = [nullCopy background];
        [background alphaComponent];
        v9 = v8 == 0.0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end