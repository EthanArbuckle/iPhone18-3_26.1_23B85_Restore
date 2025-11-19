@interface EBDifferentialStyle
+ (id)edDifferentialStyleFromXlDXf:(XlDXf *)a3 edResources:(id)a4;
+ (unsigned)xlDXfBordersFlagsFromEDDifferentialStyle:(id)a3;
+ (unsigned)xlDXfPatternFlagsFromEDDifferentialStyle:(id)a3;
@end

@implementation EBDifferentialStyle

+ (id)edDifferentialStyleFromXlDXf:(XlDXf *)a3 edResources:(id)a4
{
  v5 = a4;
  v6 = +[EDDifferentialStyle differentialStyle];
  var3 = a3->var3;
  if ((var3 & 2) != 0)
  {
    v8 = [EBContentFormat edContentFormatFromXlDXfUserFmt:a3->var6 edResources:v5];
    [v6 setContentFormat:v8];

    var3 = a3->var3;
  }

  if ((var3 & 4) != 0)
  {
    v9 = [EBFont edFontFromXlDXfFont:a3->var7 edResources:v5];
    [v6 setFont:v9];

    var3 = a3->var3;
  }

  if ((var3 & 0x10) != 0)
  {
    v10 = [EBBorders edBordersFromXlDXf:a3 edResources:v5];
    [v6 setBorders:v10];

    var3 = a3->var3;
  }

  if ((var3 & 0x20) != 0)
  {
    v11 = [EBFill edFillFromXlDXf:a3 edResources:v5];
    [v6 setFill:v11];
  }

  return v6;
}

+ (unsigned)xlDXfPatternFlagsFromEDDifferentialStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 fill];
    v7 = [v6 type];
    v8 = [v6 foreColor];

    v9 = [v6 backColor];
    v10 = v9;
    if (v7)
    {
      v11 = 62;
    }

    else
    {
      v11 = 63;
    }

    if (v8)
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

+ (unsigned)xlDXfBordersFlagsFromEDDifferentialStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 borders];
  v5 = [v4 leftBorder];

  v6 = [v3 borders];
  v7 = [v6 rightBorder];

  v8 = [v3 borders];
  v9 = [v8 topBorder];

  v10 = [v3 borders];
  v11 = [v10 bottomBorder];
  v12 = v11;
  if (v5)
  {
    v13 = -5;
  }

  else
  {
    v13 = -1;
  }

  if (v7)
  {
    v13 &= ~8u;
  }

  if (v9)
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