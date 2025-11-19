@interface WMParagraphStyle
+ (BOOL)isShadingNull:(id)a3;
- (BOOL)isRTLWithOverridesFromProperties:(id)a3;
- (WMParagraphStyle)initWithDefaultProperties:(id)a3 style:(id)a4 isInTextFrame:(BOOL)a5;
- (id)leadingMarginPropertyNameWithOverridesFromProperties:(id)a3;
- (id)trailingMarginPropertyNameWithOverridesFromProperties:(id)a3;
- (void)addParagraphProperties:(id)a3;
- (void)addParagraphPropertiesFromStyle;
- (void)addParagraphPropertiesFromStyle:(id)a3;
- (void)addParagraphStyleCharacterProperties:(id)a3;
- (void)mapBorders:(id)a3;
@end

@implementation WMParagraphStyle

- (WMParagraphStyle)initWithDefaultProperties:(id)a3 style:(id)a4 isInTextFrame:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = WMParagraphStyle;
  v11 = [(CMStyle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseStyle, a4);
    v12->_isInTextFrame = a5;
    objc_storeStrong(&v12->_defaultParagraphProperties, a3);
  }

  return v12;
}

- (void)addParagraphPropertiesFromStyle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 baseStyle];
    if (v5 && v5 != v7)
    {
      [(WMParagraphStyle *)self addParagraphPropertiesFromStyle:v5];
    }

    v6 = [v7 paragraphProperties];
    [(WMParagraphStyle *)self addParagraphProperties:v6];

    v4 = v7;
  }
}

- (void)addParagraphPropertiesFromStyle
{
  [(WMParagraphStyle *)self addParagraphProperties:self->_defaultParagraphProperties];
  baseStyle = self->_baseStyle;

  [(WMParagraphStyle *)self addParagraphPropertiesFromStyle:baseStyle];
}

- (void)addParagraphStyleCharacterProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 baseStyle];
    if (v5 && v5 != v7)
    {
      [(WMParagraphStyle *)self addParagraphStyleCharacterProperties:v5];
    }

    v6 = [v7 characterProperties];
    [(WMStyle *)self addCharacterProperties:v6];

    v4 = v7;
  }
}

- (BOOL)isRTLWithOverridesFromProperties:(id)a3
{
  v4 = a3;
  if ([v4 isRightToLeftOverridden])
  {
    v5 = [v4 rightToLeft];
    if (!v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    if (v5 == 1)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v6 = v5 == 129;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CMStyle *)self propertyForName:0x286F07750];
  v8 = [v7 value];
  v9 = [v8 isEqualToString:0x286F03FF0];

  v10 = v6 ^ v9;
LABEL_7:

  return v10;
}

- (id)leadingMarginPropertyNameWithOverridesFromProperties:(id)a3
{
  v3 = [(WMParagraphStyle *)self isRTLWithOverridesFromProperties:a3];
  v4 = &HUPropNmMarginRight;
  if (!v3)
  {
    v4 = &HUPropNmMarginLeft;
  }

  v5 = *v4;

  return v5;
}

- (id)trailingMarginPropertyNameWithOverridesFromProperties:(id)a3
{
  v3 = [(WMParagraphStyle *)self isRTLWithOverridesFromProperties:a3];
  v4 = &HUPropNmMarginLeft;
  if (!v3)
  {
    v4 = &HUPropNmMarginRight;
  }

  v5 = *v4;

  return v5;
}

- (void)addParagraphProperties:(id)a3
{
  v24 = a3;
  if ([v24 isCharacterPropertiesOverridden])
  {
    v4 = [v24 characterProperties];
  }

  else
  {
    v4 = 0;
  }

  if ([v24 isBiDiOverridden] && objc_msgSend(v24, "biDi"))
  {
    v5 = [[CMStringProperty alloc] initWithString:0x286F03FF0];
    [(CMStyle *)self addProperty:v5 forKey:0x286F07750];
  }

  if ([v4 isRightToLeftOverridden])
  {
    if ([(WMParagraphStyle *)self isRTLWithOverridesFromProperties:v4])
    {
      v6 = [[CMStringProperty alloc] initWithString:0x286F03FF0];
    }

    else
    {
      v6 = [[CMStringProperty alloc] initWithString:0x286F04010];
    }

    [(CMStyle *)self addProperty:v6 forKey:0x286F07750];
  }

  if ([v24 isSpaceAfterOverridden])
  {
    v7 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 spaceAfter]);
    [(CMStyle *)self addProperty:v7 forKey:0x286F080B0];
  }

  if ([v24 isSpaceBeforeOverridden])
  {
    v8 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 spaceBefore]);
    [(CMStyle *)self addProperty:v8 forKey:0x286EF67D0];
  }

  if ([v24 isLineSpacingOverridden])
  {
    v9 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 8, [v24 lineSpacing] / 240.0 * 1.2);
    [(CMStyle *)self addProperty:v9 forKey:0x286F08090];
  }

  if ([v24 isJustificationOverridden])
  {
    v10 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [v24 justification]);
    [(CMStyle *)self addProperty:v10 forKey:0x286F08230];
  }

  if ([v24 isLeftIndentOverridden])
  {
    v11 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 leftIndent]);
    [(CMStyle *)self addProperty:v11 forKey:0x286EF67B0];
  }

  if ([v24 isRightIndentOverridden])
  {
    v12 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 rightIndent]);
    [(CMStyle *)self addProperty:v12 forKey:0x286F080D0];
  }

  if ([v24 isLeadingIndentOverridden])
  {
    v13 = [(WMParagraphStyle *)self leadingMarginPropertyNameWithOverridesFromProperties:v4];
    v14 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 leadingIndent]);
    [(CMStyle *)self addProperty:v14 forKey:v13];
  }

  if ([v24 isFollowingIndentOverridden])
  {
    v15 = [(WMParagraphStyle *)self trailingMarginPropertyNameWithOverridesFromProperties:v4];
    v16 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 followingIndent]);
    [(CMStyle *)self addProperty:v16 forKey:v15];
  }

  if ([v24 isFirstLineIndentOverridden])
  {
    v17 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, [v24 firstLineIndent]);
    [(CMStyle *)self addProperty:v17 forKey:0x286F08250];
  }

  [(WMParagraphStyle *)self mapBorders:v24];
  if ([v24 isShadingOverridden])
  {
    v18 = [v24 shading];
    v19 = [WMParagraphStyle isShadingNull:v18];

    if (!v19)
    {
      v20 = [v24 shading];
      v21 = [CMColorProperty nsColorFromShading:v20];

      v22 = [[CMColorProperty alloc] initWithColor:v21];
      [(CMStyle *)self addProperty:v22 forKey:0x286F07DF0];
    }
  }

  if ([v24 isCharacterPropertiesOverridden])
  {
    v23 = [v24 characterProperties];
    [(WMStyle *)self addCharacterProperties:v23];
  }
}

- (void)mapBorders:(id)a3
{
  v4 = a3;
  if (!self->_isInTextFrame)
  {
    v8 = v4;
    if ([v4 isBottomBorderOverridden])
    {
      v5 = [v8 bottomBorder];
      v6 = v5;
      if (v5 && [v5 style])
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

    v4 = v8;
  }
}

+ (BOOL)isShadingNull:(id)a3
{
  v3 = a3;
  v4 = [v3 style];
  if (v4)
  {
    if (v4 == 0xFFFF)
    {
      v5 = [v3 foreground];
      [v5 alphaComponent];
      if (v6 == 0.0)
      {
        v7 = [v3 background];
        [v7 alphaComponent];
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