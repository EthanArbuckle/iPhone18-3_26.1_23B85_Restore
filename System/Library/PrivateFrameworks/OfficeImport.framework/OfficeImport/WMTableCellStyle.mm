@interface WMTableCellStyle
+ (float)resolveColorValueWithPercentage:(float)a3 foregroundComponent:(float)a4 backgroundComponent:(float)a5;
+ (id)dominantColorOf:(id)a3;
+ (id)resolveStyleColorWithPercentage:(float)a3 foregroundColor:(id)a4 backgroundColor:(id)a5;
+ (id)resolveStyleColorWithPercentage:(float)a3 shading:(id)a4;
- (WMTableCellStyle)initWithTableCellProperties:(id)a3;
- (void)addTableCellProperties:(id)a3;
- (void)addTableCellStyleProperties:(id)a3;
@end

@implementation WMTableCellStyle

- (WMTableCellStyle)initWithTableCellProperties:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WMTableCellStyle;
  v5 = [(CMStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WMTableCellStyle *)v5 addTableCellProperties:v4];
    v7 = v6;
  }

  return v6;
}

- (void)addTableCellStyleProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 baseStyle];
    if (v5 && v5 != v7)
    {
      [(WMTableCellStyle *)self addTableCellStyleProperties:v5];
    }

    v6 = [v7 tableCellProperties];
    [(WMTableCellStyle *)self addTableCellProperties:v6];

    v4 = v7;
  }
}

- (void)addTableCellProperties:(id)a3
{
  v14 = a3;
  if (([v14 isTopBorderOverridden] & 1) != 0 || (objc_msgSend(v14, "isLeftBorderOverridden") & 1) != 0 || (objc_msgSend(v14, "isBottomBorderOverridden") & 1) != 0 || objc_msgSend(v14, "isRightBorderOverridden"))
  {
    v4 = objc_alloc_init(WMBordersProperty);
    if ([v14 isTopBorderOverridden])
    {
      v5 = [v14 topBorder];
      [(WMBordersProperty *)v4 setBorder:v5 location:1];
    }

    if ([v14 isLeftBorderOverridden])
    {
      v6 = [v14 leftBorder];
      [(WMBordersProperty *)v4 setBorder:v6 location:2];
    }

    if ([v14 isBottomBorderOverridden])
    {
      v7 = [v14 bottomBorder];
      [(WMBordersProperty *)v4 setBorder:v7 location:3];
    }

    if ([v14 isRightBorderOverridden])
    {
      v8 = [v14 rightBorder];
      [(WMBordersProperty *)v4 setBorder:v8 location:4];
    }

    [(CMBordersProperty *)v4 adjustValues];
    [(CMStyle *)self addProperty:v4 forKey:0x286F08330];
  }

  if ([v14 isVerticalAlignmentOverridden])
  {
    v9 = -[WMEnumProperty initWithEnum:]([WMEnumProperty alloc], "initWithEnum:", [v14 verticalAlignment]);
    [(CMStyle *)self addProperty:v9 forKey:0x286F08350];
  }

  if ([v14 isLeftMarginOverridden])
  {
    self->mLeftPadding = [v14 leftMargin];
    [(CMStyle *)self appendPropertyForName:0x286F081B0 length:2 unit:?];
  }

  if ([v14 isRightMarginOverridden])
  {
    self->mRightPadding = [v14 rightMargin];
    [(CMStyle *)self appendPropertyForName:0x286F081D0 length:2 unit:?];
  }

  if ([v14 isShadingOverridden])
  {
    v10 = [v14 shading];
    v11 = [CMColorProperty alloc];
    v12 = [WMTableCellStyle dominantColorOf:v10];
    v13 = [(CMColorProperty *)v11 initWithColor:v12];

    [(CMStyle *)self addProperty:v13 forKey:0x286F07DF0];
  }
}

+ (id)dominantColorOf:(id)a3
{
  v5 = a3;
  v6 = [v5 style];
  LODWORD(v7) = 1057384038;
  switch(v6)
  {
    case 0:
      a1 = WMTableCellStyle;
      v7 = 0.0;
      goto LABEL_21;
    case 1:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1.0;
      goto LABEL_21;
    case 2:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1028443341;
      goto LABEL_21;
    case 3:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1036831949;
      goto LABEL_21;
    case 4:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1045220557;
      goto LABEL_21;
    case 5:
      a1 = WMTableCellStyle;
      goto LABEL_20;
    case 6:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1050253722;
      goto LABEL_21;
    case 7:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1053609165;
      goto LABEL_21;
    case 8:
      a1 = WMTableCellStyle;
      goto LABEL_2;
    case 9:
      a1 = WMTableCellStyle;
      goto LABEL_18;
    case 10:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1060320051;
      goto LABEL_21;
    case 11:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 0.75;
      goto LABEL_21;
    case 12:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1061997773;
      goto LABEL_21;
    case 13:
      a1 = WMTableCellStyle;
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
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1020054733;
      goto LABEL_21;
    case 36:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1033476506;
      goto LABEL_21;
    case 37:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 0.125;
      goto LABEL_21;
    case 38:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1041865114;
      goto LABEL_21;
    case 39:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1043542835;
      goto LABEL_21;
    case 40:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1046898278;
      goto LABEL_21;
    case 41:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1049414861;
      goto LABEL_21;
    case 42:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1051092582;
      goto LABEL_21;
    case 43:
      a1 = WMTableCellStyle;
LABEL_6:
      LODWORD(v7) = 1051931443;
      goto LABEL_21;
    case 44:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 0.375;
      goto LABEL_21;
    case 45:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1054448026;
      goto LABEL_21;
    case 46:
      a1 = WMTableCellStyle;
      LODWORD(v7) = 1055286886;
      goto LABEL_21;
    case 47:
      a1 = WMTableCellStyle;
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
      v8 = [a1 resolveStyleColorWithPercentage:v5 shading:v7];
      break;
    default:
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:247 description:@"Bad shading style encountered."];

      v8 = 0;
      break;
  }

  return v8;
}

+ (id)resolveStyleColorWithPercentage:(float)a3 shading:(id)a4
{
  v6 = a4;
  v7 = [v6 foreground];
  v8 = [v6 background];
  *&v9 = a3;
  v10 = [a1 resolveStyleColorWithPercentage:v7 foregroundColor:v8 backgroundColor:v9];

  return v10;
}

+ (id)resolveStyleColorWithPercentage:(float)a3 foregroundColor:(id)a4 backgroundColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:269 description:@"Foreground color is not set."];

    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:268 description:@"Percentage out of range."];

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_17:
  v39 = [MEMORY[0x277CCA890] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:270 description:@"Background color is not set."];

LABEL_7:
  [v10 alphaComponent];
  if (v12 == 0.0)
  {
    v13 = [OITSUColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  [v9 alphaComponent];
  if (v15 == 0.0)
  {
    v16 = [OITSUColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];

    v9 = v16;
  }

  [v9 redComponent];
  v18 = v17;
  [v14 redComponent];
  *&v19 = v18;
  *&v21 = v20;
  *&v20 = a3;
  [a1 resolveColorValueWithPercentage:v20 foregroundComponent:v19 backgroundComponent:v21];
  LODWORD(v18) = v22;
  [v9 greenComponent];
  v24 = v23;
  [v14 greenComponent];
  *&v25 = v24;
  *&v27 = v26;
  *&v26 = a3;
  [a1 resolveColorValueWithPercentage:v26 foregroundComponent:v25 backgroundComponent:v27];
  LODWORD(v24) = v28;
  [v9 blueComponent];
  v30 = v29;
  [v14 blueComponent];
  *&v31 = v30;
  *&v33 = v32;
  *&v32 = a3;
  [a1 resolveColorValueWithPercentage:v32 foregroundComponent:v31 backgroundComponent:v33];
  v35 = [OITSUColor colorWithRed:*&v18 green:*&v24 blue:v34 alpha:1.0];

  return v35;
}

+ (float)resolveColorValueWithPercentage:(float)a3 foregroundComponent:(float)a4 backgroundComponent:(float)a5
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:301 description:@"Percentage out of range."];
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:303 description:@"Foreground component out of range."];
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WMTableCellStyle.mm" lineNumber:305 description:@"Background component out of range."];
  }

  return (a3 * a4) + ((1.0 - a3) * a5);
}

@end