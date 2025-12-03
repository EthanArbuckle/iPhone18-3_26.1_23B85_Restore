@interface WMStyle
- (WMStyle)initWithWDCharacterProperties:(id)properties;
- (WMStyle)initWithWDStyle:(id)style isInTextFrame:(BOOL)frame;
- (WMStyle)initWithWMStyle:(id)style;
- (id)cssStyleString;
- (void)ResoveInterPropertyDependencies;
- (void)addCharacterProperties:(id)properties;
- (void)cascadeWithStyle:(id)style;
@end

@implementation WMStyle

- (id)cssStyleString
{
  [(WMStyle *)self ResoveInterPropertyDependencies];
  v5.receiver = self;
  v5.super_class = WMStyle;
  cssStyleString = [(CMStyle *)&v5 cssStyleString];

  return cssStyleString;
}

- (void)ResoveInterPropertyDependencies
{
  v3 = [(NSMutableDictionary *)self->super.properties objectForKey:@"vertical-align"];
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    value = [v3 value];
    v4 = v15;
    if (value)
    {
      v6 = [(NSMutableDictionary *)self->super.properties objectForKey:@"font-size"];
      v7 = v6;
      if (v6)
      {
        [v6 value];
        v9 = v8;
        unitType = [v7 unitType];
        v11 = v9;
        v12 = v11 * 0.66;
        v13 = v12;
      }

      else
      {
        v13 = 7.0;
        unitType = 1;
      }

      v14 = [[CMLengthProperty alloc] initWithNumber:unitType unit:v13];
      [(NSMutableDictionary *)self->super.properties setObject:v14 forKey:@"font-size"];

      v4 = v15;
    }
  }
}

- (WMStyle)initWithWMStyle:(id)style
{
  v4.receiver = self;
  v4.super_class = WMStyle;
  return [(CMStyle *)&v4 initWithStyle:style];
}

- (WMStyle)initWithWDStyle:(id)style isInTextFrame:(BOOL)frame
{
  frameCopy = frame;
  styleCopy = style;
  baseStyle = [styleCopy baseStyle];
  v8 = baseStyle;
  if (!baseStyle || baseStyle == styleCopy)
  {
    v14.receiver = self;
    v14.super_class = WMStyle;
    v9 = [(CMStyle *)&v14 init];
  }

  else
  {
    v9 = [(WMStyle *)self initWithWDStyle:baseStyle isInTextFrame:frameCopy];
  }

  v10 = v9;
  if (v9)
  {
    characterProperties = [styleCopy characterProperties];
    [(WMStyle *)v10 addCharacterProperties:characterProperties];

    v12 = v10;
  }

  return v10;
}

- (WMStyle)initWithWDCharacterProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [(CMStyle *)self init];
  v6 = v5;
  if (v5)
  {
    [(WMStyle *)v5 addCharacterProperties:propertiesCopy];
    v7 = v6;
  }

  return v6;
}

- (void)addCharacterProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy isRightToLeftOverridden] && objc_msgSend(propertiesCopy, "rightToLeft"))
  {
    [(CMStyle *)self appendPropertyForName:@"direction" stringValue:@"rtl"];
  }

  if ([propertiesCopy isBoldOverridden])
  {
    v4 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [propertiesCopy bold]);
    v5 = [(CMStyle *)self propertyForName:0x286EF7410];
    [(CMToggleProperty *)v4 resolveWithBaseProperty:v5];
    [(CMStyle *)self addProperty:v4 forKey:0x286EF7410];
  }

  if ([propertiesCopy isItalicOverridden])
  {
    v6 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [propertiesCopy italic]);
    v7 = [(CMStyle *)self propertyForName:0x286EF7450];
    [(CMToggleProperty *)v6 resolveWithBaseProperty:v7];
    [(CMStyle *)self addProperty:v6 forKey:0x286EF7450];
  }

  if ([propertiesCopy isStrikeThroughOverridden])
  {
    v8 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [propertiesCopy strikeThrough]);
    v9 = [(CMStyle *)self propertyForName:0x286F082F0];
    [(CMToggleProperty *)v8 resolveWithBaseProperty:v9];
    [(CMStyle *)self addProperty:v8 forKey:0x286F082F0];
  }

  if ([propertiesCopy isDoubleStrikeThroughOverridden])
  {
    v10 = -[CMToggleProperty initWithCMTogglePropertyValue:]([CMToggleProperty alloc], "initWithCMTogglePropertyValue:", [propertiesCopy doubleStrikeThrough]);
    v11 = [(CMStyle *)self propertyForName:0x286F082F0];
    [(CMToggleProperty *)v10 resolveWithBaseProperty:v11];
    [(CMStyle *)self addProperty:v10 forKey:0x286F082F0];
  }

  if ([propertiesCopy isFontSizeOverridden])
  {
    v12 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 6, [propertiesCopy fontSize]);
    [(CMStyle *)self addProperty:v12 forKey:0x286EF73D0];
  }

  if ([propertiesCopy isVerticalAlignOverridden])
  {
    v13 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [propertiesCopy verticalAlign]);
    [(CMStyle *)self addProperty:v13 forKey:0x286F077D0];
  }

  if ([propertiesCopy isFontOverridden])
  {
    v14 = [CMStringProperty alloc];
    font = [propertiesCopy font];
    name = [font name];
    v17 = [(CMStringProperty *)v14 initWithString:name];

    [(CMStyle *)self addProperty:v17 forKey:0x286EF73B0];
  }

  if ([propertiesCopy isUnderlineOverridden])
  {
    v18 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [propertiesCopy underline]);
    [(CMStyle *)self addProperty:v18 forKey:0x286EF7490];
  }

  if ([propertiesCopy isSmallCapsOverridden] && (objc_msgSend(propertiesCopy, "smallCaps") & 0xFFFFFF7F) == 1)
  {
    [(CMStyle *)self appendPropertyForName:@"font-variant" stringWithColons:@":small-caps;"];
  }

  if ([propertiesCopy isCapsOverridden] && (objc_msgSend(propertiesCopy, "caps") & 0xFFFFFF7F) == 1)
  {
    [(CMStyle *)self appendPropertyForName:@"text-transform" stringWithColons:@":uppercase;"];
  }

  if ([propertiesCopy isColorOverridden])
  {
    color = [propertiesCopy color];
    v20 = [[CMColorProperty alloc] initWithColor:color];
    [(CMStyle *)self addProperty:v20 forKey:@"color"];
  }

  if ([propertiesCopy isShadingOverridden])
  {
    shading = [propertiesCopy shading];
    background = [shading background];
    v23 = background;
    if (background)
    {
      [background alphaComponent];
      if (v24 == 1.0)
      {
        v25 = [[CMColorProperty alloc] initWithColor:v23];
        [(CMStyle *)self addProperty:v25 forKey:0x286F07DF0];
      }
    }
  }
}

- (void)cascadeWithStyle:(id)style
{
  styleCopy = style;
  properties = [styleCopy properties];
  keyEnumerator = [properties keyEnumerator];
  for (i = 0; ; i = nextObject)
  {
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v8 = [properties objectForKey:nextObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(CMStyle *)self attributeForName:nextObject];
      [v8 resolveWithBaseProperty:v9];
    }

    [(CMStyle *)self addProperty:v8 forKey:nextObject];
  }
}

@end