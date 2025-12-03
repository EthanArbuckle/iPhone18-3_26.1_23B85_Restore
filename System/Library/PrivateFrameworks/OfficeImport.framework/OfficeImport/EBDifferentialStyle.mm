@interface EBDifferentialStyle
+ (id)edDifferentialStyleFromXlDXf:(XlDXf *)xf edResources:(id)resources;
+ (unsigned)xlDXfBordersFlagsFromEDDifferentialStyle:(id)style;
+ (unsigned)xlDXfPatternFlagsFromEDDifferentialStyle:(id)style;
@end

@implementation EBDifferentialStyle

+ (id)edDifferentialStyleFromXlDXf:(XlDXf *)xf edResources:(id)resources
{
  resourcesCopy = resources;
  v6 = +[EDDifferentialStyle differentialStyle];
  var3 = xf->var3;
  if ((var3 & 2) != 0)
  {
    v8 = [EBContentFormat edContentFormatFromXlDXfUserFmt:xf->var6 edResources:resourcesCopy];
    [v6 setContentFormat:v8];

    var3 = xf->var3;
  }

  if ((var3 & 4) != 0)
  {
    v9 = [EBFont edFontFromXlDXfFont:xf->var7 edResources:resourcesCopy];
    [v6 setFont:v9];

    var3 = xf->var3;
  }

  if ((var3 & 0x10) != 0)
  {
    v10 = [EBBorders edBordersFromXlDXf:xf edResources:resourcesCopy];
    [v6 setBorders:v10];

    var3 = xf->var3;
  }

  if ((var3 & 0x20) != 0)
  {
    v11 = [EBFill edFillFromXlDXf:xf edResources:resourcesCopy];
    [v6 setFill:v11];
  }

  return v6;
}

+ (unsigned)xlDXfPatternFlagsFromEDDifferentialStyle:(id)style
{
  styleCopy = style;
  fill = [styleCopy fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    fill2 = [styleCopy fill];
    type = [fill2 type];
    foreColor = [fill2 foreColor];

    backColor = [fill2 backColor];
    v10 = backColor;
    if (type)
    {
      v11 = 62;
    }

    else
    {
      v11 = 63;
    }

    if (foreColor)
    {
      v12 = v11 & 0x3D;
    }

    else
    {
      v12 = v11;
    }

    if (v10)
    {
      v12 &= 0x3Bu;
    }
  }

  else
  {
    v12 = 63;
  }

  return v12;
}

+ (unsigned)xlDXfBordersFlagsFromEDDifferentialStyle:(id)style
{
  styleCopy = style;
  borders = [styleCopy borders];
  leftBorder = [borders leftBorder];

  borders2 = [styleCopy borders];
  rightBorder = [borders2 rightBorder];

  borders3 = [styleCopy borders];
  topBorder = [borders3 topBorder];

  borders4 = [styleCopy borders];
  bottomBorder = [borders4 bottomBorder];
  v12 = bottomBorder;
  if (leftBorder)
  {
    v13 = -5;
  }

  else
  {
    v13 = -1;
  }

  if (rightBorder)
  {
    v13 &= ~8u;
  }

  if (topBorder)
  {
    v14 = v13 & 0xEF;
  }

  else
  {
    v14 = v13;
  }

  if (v12)
  {
    v14 &= ~0x20u;
  }

  return v14;
}

@end