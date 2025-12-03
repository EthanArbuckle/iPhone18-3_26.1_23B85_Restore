@interface WMTableCellStyle
+ (float)resolveColorValueWithPercentage:(float)percentage foregroundComponent:(float)component backgroundComponent:(float)backgroundComponent;
+ (id)dominantColorOf:(id)of;
+ (id)resolveStyleColorWithPercentage:(float)percentage foregroundColor:(id)color backgroundColor:(id)backgroundColor;
+ (id)resolveStyleColorWithPercentage:(float)percentage shading:(id)shading;
- (WMTableCellStyle)initWithTableCellProperties:(id)properties;
- (void)addTableCellProperties:(id)properties;
- (void)addTableCellStyleProperties:(id)properties;
@end

@implementation WMTableCellStyle

- (WMTableCellStyle)initWithTableCellProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = WMTableCellStyle;
  v5 = [(CMStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WMTableCellStyle *)v5 addTableCellProperties:propertiesCopy];
    v7 = v6;
  }

  return v6;
}

- (void)addTableCellStyleProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v7 = propertiesCopy;
    baseStyle = [propertiesCopy baseStyle];
    if (baseStyle && baseStyle != v7)
    {
      [(WMTableCellStyle *)self addTableCellStyleProperties:baseStyle];
    }

    tableCellProperties = [v7 tableCellProperties];
    [(WMTableCellStyle *)self addTableCellProperties:tableCellProperties];

    propertiesCopy = v7;
  }
}

- (void)addTableCellProperties:(id)properties
{
  propertiesCopy = properties;
  if (([propertiesCopy isTopBorderOverridden] & 1) != 0 || (objc_msgSend(propertiesCopy, "isLeftBorderOverridden") & 1) != 0 || (objc_msgSend(propertiesCopy, "isBottomBorderOverridden") & 1) != 0 || objc_msgSend(propertiesCopy, "isRightBorderOverridden"))
  {
    v4 = objc_alloc_init(WMBordersProperty);
    if ([propertiesCopy isTopBorderOverridden])
    {
      topBorder = [propertiesCopy topBorder];
      [(WMBordersProperty *)v4 setBorder:topBorder location:1];
    }

    if ([propertiesCopy isLeftBorderOverridden])
    {
      leftBorder = [propertiesCopy leftBorder];
      [(WMBordersProperty *)v4 setBorder:leftBorder location:2];
    }

    if ([propertiesCopy isBottomBorderOverridden])
    {
      bottomBorder = [propertiesCopy bottomBorder];
      [(WMBordersProperty *)v4 setBorder:bottomBorder location:3];
    }

    if ([propertiesCopy isRightBorderOverridden])
    {
      rightBorder = [propertiesCopy rightBorder];
      [(WMBordersProperty *)v4 setBorder:rightBorder location:4];
    }

    [(CMBordersProperty *)v4 adjustValues];
    [(CMStyle *)self addProperty:v4 forKey:0x286F08330];
  }

  if ([propertiesCopy isVerticalAlignmentOverridden])
  {
    v9 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [propertiesCopy verticalAlignment]);
    [(CMStyle *)self addProperty:v9 forKey:0x286F08350];
  }

  if ([propertiesCopy isLeftMarginOverridden])
  {
    self->mLeftPadding = [propertiesCopy leftMargin];
    [(CMStyle *)self appendPropertyForName:0x286F081B0 length:2 unit:?];
  }

  if ([propertiesCopy isRightMarginOverridden])
  {
    self->mRightPadding = [propertiesCopy rightMargin];
    [(CMStyle *)self appendPropertyForName:0x286F081D0 length:2 unit:?];
  }

  if ([propertiesCopy isShadingOverridden])
  {
    shading = [propertiesCopy shading];
    v11 = [CMColorProperty alloc];
    v12 = [WMTableCellStyle dominantColorOf:shading];
    v13 = [(CMColorProperty *)v11 initWithColor:v12];

    [(CMStyle *)self addProperty:v13 forKey:0x286F07DF0];
  }
}

+ (id)dominantColorOf:(id)of
{
  ofCopy = of;
  style = [ofCopy style];
  LODWORD(v7) = 1057384038;
  switch(style)
  {
    case 0:
      self = WMTableCellStyle;
      v7 = 0.0;
      goto LABEL_21;
    case 1:
      self = WMTableCellStyle;
      LODWORD(v7) = 1.0;
      goto LABEL_21;
    case 2:
      self = WMTableCellStyle;
      LODWORD(v7) = 1028443341;
      goto LABEL_21;
    case 3:
      self = WMTableCellStyle;
      LODWORD(v7) = 1036831949;
      goto LABEL_21;
    case 4:
      self = WMTableCellStyle;
      LODWORD(v7) = 1045220557;
      goto LABEL_21;
    case 5:
      self = WMTableCellStyle;
      goto LABEL_20;
    case 6:
      self = WMTableCellStyle;
      LODWORD(v7) = 1050253722;
      goto LABEL_21;
    case 7:
      self = WMTableCellStyle;
      LODWORD(v7) = 1053609165;
      goto LABEL_21;
    case 8:
      self = WMTableCellStyle;
      goto LABEL_2;
    case 9:
      self = WMTableCellStyle;
      goto LABEL_18;
    case 10:
      self = WMTableCellStyle;
      LODWORD(v7) = 1060320051;
      goto LABEL_21;
    case 11:
      self = WMTableCellStyle;
      LODWORD(v7) = 0.75;
      goto LABEL_21;
    case 12:
      self = WMTableCellStyle;
      LODWORD(v7) = 1061997773;
      goto LABEL_21;
    case 13:
      self = WMTableCellStyle;
      LODWORD(v7) = *"fff?";
      goto LABEL_21;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 25:
LABEL_2:
      LODWORD(v7) = 0.5;
      goto LABEL_21;
    case 19:
LABEL_18:
      LODWORD(v7) = 1058642330;
      goto LABEL_21;
    case 20:
    case 21:
    case 22:
    case 23:
LABEL_20:
      LODWORD(v7) = 0.25;
      goto LABEL_21;
    case 24:
      goto LABEL_6;
    case 35:
      self = WMTableCellStyle;
      LODWORD(v7) = 1020054733;
      goto LABEL_21;
    case 36:
      self = WMTableCellStyle;
      LODWORD(v7) = 1033476506;
      goto LABEL_21;
    case 37:
      self = WMTableCellStyle;
      LODWORD(v7) = 0.125;
      goto LABEL_21;
    case 38:
      self = WMTableCellStyle;
      LODWORD(v7) = 1041865114;
      goto LABEL_21;
    case 39:
      self = WMTableCellStyle;
      LODWORD(v7) = 1043542835;
      goto LABEL_21;
    case 40:
      self = WMTableCellStyle;
      LODWORD(v7) = 1046898278;
      goto LABEL_21;
    case 41:
      self = WMTableCellStyle;
      LODWORD(v7) = 1049414861;
      goto LABEL_21;
    case 42:
      self = WMTableCellStyle;
      LODWORD(v7) = 1051092582;
      goto LABEL_21;
    case 43:
      self = WMTableCellStyle;
LABEL_6:
      LODWORD(v7) = 1051931443;
      goto LABEL_21;
    case 44:
      self = WMTableCellStyle;
      LODWORD(v7) = 0.375;
      goto LABEL_21;
    case 45:
      self = WMTableCellStyle;
      LODWORD(v7) = 1054448026;
      goto LABEL_21;
    case 46:
      self = WMTableCellStyle;
      LODWORD(v7) = 1055286886;
      goto LABEL_21;
    case 47:
      self = WMTableCellStyle;
      LODWORD(v7) = 1056125747;
      goto LABEL_21;
    case 48:
      goto LABEL_21;
    case 49:
      LODWORD(v7) = 1057803469;
      goto LABEL_21;
    case 50:
      LODWORD(v7) = 1058222899;
      goto LABEL_21;
    case 51:
      LODWORD(v7) = 0.625;
      goto LABEL_21;
    case 52:
      LODWORD(v7) = 1059481190;
      goto LABEL_21;
    case 53:
      LODWORD(v7) = 1059900621;
      goto LABEL_21;
    case 54:
      LODWORD(v7) = 1060739482;
      goto LABEL_21;
    case 55:
      LODWORD(v7) = 1061578342;
      goto LABEL_21;
    case 56:
      LODWORD(v7) = 1062417203;
      goto LABEL_21;
    case 57:
      LODWORD(v7) = 1062836634;
      goto LABEL_21;
    case 58:
      LODWORD(v7) = 0.875;
      goto LABEL_21;
    case 59:
      LODWORD(v7) = 1064094925;
      goto LABEL_21;
    case 60:
      LODWORD(v7) = 1064514355;
      goto LABEL_21;
    case 61:
      LODWORD(v7) = 1064933786;
      goto LABEL_21;
    case 62:
      LODWORD(v7) = 1064849900;
LABEL_21:
      v8 = [self resolveStyleColorWithPercentage:ofCopy shading:v7];
      break;
    default:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:247 description:@"Bad shading style encountered."];

      v8 = 0;
      break;
  }

  return v8;
}

+ (id)resolveStyleColorWithPercentage:(float)percentage shading:(id)shading
{
  shadingCopy = shading;
  foreground = [shadingCopy foreground];
  background = [shadingCopy background];
  *&v9 = percentage;
  v10 = [self resolveStyleColorWithPercentage:foreground foregroundColor:background backgroundColor:v9];

  return v10;
}

+ (id)resolveStyleColorWithPercentage:(float)percentage foregroundColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  if (percentage >= 0.0 && percentage <= 1.0)
  {
    if (colorCopy)
    {
      goto LABEL_6;
    }

LABEL_16:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:269 description:@"Foreground color is not set."];

    if (backgroundColorCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:268 description:@"Percentage out of range."];

  if (!colorCopy)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (backgroundColorCopy)
  {
    goto LABEL_7;
  }

LABEL_17:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:270 description:@"Background color is not set."];

LABEL_7:
  [backgroundColorCopy alphaComponent];
  if (v12 == 0.0)
  {
    v13 = [OITSUColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    v14 = v13;
  }

  else
  {
    v14 = backgroundColorCopy;
  }

  [colorCopy alphaComponent];
  if (v15 == 0.0)
  {
    v16 = [OITSUColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];

    colorCopy = v16;
  }

  [colorCopy redComponent];
  v18 = v17;
  [v14 redComponent];
  *&v19 = v18;
  *&v21 = v20;
  *&v20 = percentage;
  [self resolveColorValueWithPercentage:v20 foregroundComponent:v19 backgroundComponent:v21];
  LODWORD(v18) = v22;
  [colorCopy greenComponent];
  v24 = v23;
  [v14 greenComponent];
  *&v25 = v24;
  *&v27 = v26;
  *&v26 = percentage;
  [self resolveColorValueWithPercentage:v26 foregroundComponent:v25 backgroundComponent:v27];
  LODWORD(v24) = v28;
  [colorCopy blueComponent];
  v30 = v29;
  [v14 blueComponent];
  *&v31 = v30;
  *&v33 = v32;
  *&v32 = percentage;
  [self resolveColorValueWithPercentage:v32 foregroundComponent:v31 backgroundComponent:v33];
  v35 = [OITSUColor colorWithRed:*&v18 green:*&v24 blue:v34 alpha:1.0];

  return v35;
}

+ (float)resolveColorValueWithPercentage:(float)percentage foregroundComponent:(float)component backgroundComponent:(float)backgroundComponent
{
  if (percentage < 0.0 || percentage > 1.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:301 description:@"Percentage out of range."];
  }

  if (component < 0.0 || component > 1.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:303 description:@"Foreground component out of range."];
  }

  if (backgroundComponent < 0.0 || backgroundComponent > 1.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WMTableCellStyle.mm" lineNumber:305 description:@"Background component out of range."];
  }

  return (percentage * component) + ((1.0 - percentage) * backgroundComponent);
}

@end