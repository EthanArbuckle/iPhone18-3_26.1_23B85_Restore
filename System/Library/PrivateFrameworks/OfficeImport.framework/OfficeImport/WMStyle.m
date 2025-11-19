@interface WMStyle
- (WMStyle)initWithWDCharacterProperties:(id)a3;
- (WMStyle)initWithWDStyle:(id)a3 isInTextFrame:(BOOL)a4;
- (WMStyle)initWithWMStyle:(id)a3;
- (id)cssStyleString;
- (void)ResoveInterPropertyDependencies;
- (void)addCharacterProperties:(id)a3;
- (void)cascadeWithStyle:(id)a3;
@end

@implementation WMStyle

- (id)cssStyleString
{
  [(WMStyle *)self ResoveInterPropertyDependencies];
  v5.receiver = self;
  v5.super_class = WMStyle;
  v3 = [(CMStyle *)&v5 cssStyleString];

  return v3;
}

- (void)ResoveInterPropertyDependencies
{
  v3 = [(NSMutableDictionary *)self->super.properties objectForKey:@"vertical-align"];
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    v5 = [v3 value];
    v4 = v15;
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->super.properties objectForKey:@"font-size"];
      v7 = v6;
      if (v6)
      {
        [v6 value];
        v9 = v8;
        v10 = [v7 unitType];
        v11 = v9;
        v12 = v11 * 0.66;
        v13 = v12;
      }

      else
      {
        v13 = 7.0;
        v10 = 1;
      }

      v14 = [[CMLengthProperty alloc] initWithNumber:v10 unit:v13];
      [(NSMutableDictionary *)self->super.properties setObject:v14 forKey:@"font-size"];

      v4 = v15;
    }
  }
}

- (WMStyle)initWithWMStyle:(id)a3
{
  v4.receiver = self;
  v4.super_class = WMStyle;
  return [(CMStyle *)&v4 initWithStyle:a3];
}

- (WMStyle)initWithWDStyle:(id)a3 isInTextFrame:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 baseStyle];
  v8 = v7;
  if (!v7 || v7 == v6)
  {
    v14.receiver = self;
    v14.super_class = WMStyle;
    v9 = [(CMStyle *)&v14 init];
  }

  else
  {
    v9 = [(WMStyle *)self initWithWDStyle:v7 isInTextFrame:v4];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [v6 characterProperties];
    [(WMStyle *)v10 addCharacterProperties:v11];

    v12 = v10;
  }

  return v10;
}

- (WMStyle)initWithWDCharacterProperties:(id)a3
{
  v4 = a3;
  v5 = [(CMStyle *)self init];
  v6 = v5;
  if (v5)
  {
    [(WMStyle *)v5 addCharacterProperties:v4];
    v7 = v6;
  }

  return v6;
}

- (void)addCharacterProperties:(id)a3
{
  v26 = a3;
  if ([v26 isRightToLeftOverridden] && objc_msgSend(v26, "rightToLeft"))
  {
    [(CMStyle *)self appendPropertyForName:@"direction" stringValue:@"rtl"];
  }

  if ([v26 isBoldOverridden])
  {
    v4 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [v26 bold]);
    v5 = [(CMStyle *)self propertyForName:0x286EF7410];
    [(CMToggleProperty *)v4 resolveWithBaseProperty:v5];
    [(CMStyle *)self addProperty:v4 forKey:0x286EF7410];
  }

  if ([v26 isItalicOverridden])
  {
    v6 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [v26 italic]);
    v7 = [(CMStyle *)self propertyForName:0x286EF7450];
    [(CMToggleProperty *)v6 resolveWithBaseProperty:v7];
    [(CMStyle *)self addProperty:v6 forKey:0x286EF7450];
  }

  if ([v26 isStrikeThroughOverridden])
  {
    v8 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [v26 strikeThrough]);
    v9 = [(CMStyle *)self propertyForName:0x286F082F0];
    [(CMToggleProperty *)v8 resolveWithBaseProperty:v9];
    [(CMStyle *)self addProperty:v8 forKey:0x286F082F0];
  }

  if ([v26 isDoubleStrikeThroughOverridden])
  {
    v10 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [v26 doubleStrikeThrough]);
    v11 = [(CMStyle *)self propertyForName:0x286F082F0];
    [(CMToggleProperty *)v10 resolveWithBaseProperty:v11];
    [(CMStyle *)self addProperty:v10 forKey:0x286F082F0];
  }

  if ([v26 isFontSizeOverridden])
  {
    v12 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 6, [v26 fontSize]);
    [(CMStyle *)self addProperty:v12 forKey:0x286EF73D0];
  }

  if ([v26 isVerticalAlignOverridden])
  {
    v13 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [v26 verticalAlign]);
    [(CMStyle *)self addProperty:v13 forKey:0x286F077D0];
  }

  if ([v26 isFontOverridden])
  {
    v14 = [CMStringProperty alloc];
    v15 = [v26 font];
    v16 = [v15 name];
    v17 = [(CMStringProperty *)v14 initWithString:v16];

    [(CMStyle *)self addProperty:v17 forKey:0x286EF73B0];
  }

  if ([v26 isUnderlineOverridden])
  {
    v18 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [v26 underline]);
    [(CMStyle *)self addProperty:v18 forKey:0x286EF7490];
  }

  if ([v26 isSmallCapsOverridden] && (objc_msgSend(v26, "smallCaps") & 0xFFFFFF7F) == 1)
  {
    [(CMStyle *)self appendPropertyForName:@"font-variant" stringWithColons:@":small-caps;"];
  }

  if ([v26 isCapsOverridden] && (objc_msgSend(v26, "caps") & 0xFFFFFF7F) == 1)
  {
    [(CMStyle *)self appendPropertyForName:@"text-transform" stringWithColons:@":uppercase;"];
  }

  if ([v26 isColorOverridden])
  {
    v19 = [v26 color];
    v20 = [[CMColorProperty alloc] initWithColor:v19];
    [(CMStyle *)self addProperty:v20 forKey:@"color"];
  }

  if ([v26 isShadingOverridden])
  {
    v21 = [v26 shading];
    v22 = [v21 background];
    v23 = v22;
    if (v22)
    {
      [v22 alphaComponent];
      if (v24 == 1.0)
      {
        v25 = [[CMColorProperty alloc] initWithColor:v23];
        [(CMStyle *)self addProperty:v25 forKey:0x286F07DF0];
      }
    }
  }
}

- (void)cascadeWithStyle:(id)a3
{
  v10 = a3;
  v4 = [v10 properties];
  v5 = [v4 keyEnumerator];
  for (i = 0; ; i = v7)
  {
    v7 = [v5 nextObject];

    if (!v7)
    {
      break;
    }

    v8 = [v4 objectForKey:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(CMStyle *)self attributeForName:v7];
      [v8 resolveWithBaseProperty:v9];
    }

    [(CMStyle *)self addProperty:v8 forKey:v7];
  }
}

@end