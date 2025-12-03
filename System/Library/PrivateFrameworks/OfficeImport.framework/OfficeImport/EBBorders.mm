@interface EBBorders
+ (id)edBordersFromXlDXf:(XlDXf *)xf edResources:(id)resources;
+ (id)edBordersFromXlXf:(XlXf *)xf edResources:(id)resources;
+ (int)convertEDBorderEnumToXl:(int)xl;
+ (int)convertEDDiagonalEnumToXl:(int)xl;
+ (int)convertXlBorderEnumToED:(int)d;
+ (int)convertXlDiagStyleEnumToED:(int)d;
@end

@implementation EBBorders

+ (id)edBordersFromXlXf:(XlXf *)xf edResources:(id)resources
{
  resourcesCopy = resources;
  if (xf)
  {
    v7 = [self convertXlBorderEnumToED:xf->var12];
    v8 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var17 edResources:resourcesCopy];
    v23 = [EDBorder borderWithType:v7 colorReference:v8 resources:resourcesCopy];
    v9 = [self convertXlBorderEnumToED:xf->var13];
    v10 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var18 edResources:resourcesCopy];

    v22 = [EDBorder borderWithType:v9 colorReference:v10 resources:resourcesCopy];
    v11 = [self convertXlBorderEnumToED:xf->var15];
    v12 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var20 edResources:resourcesCopy];

    v13 = [EDBorder borderWithType:v11 colorReference:v12 resources:resourcesCopy];
    v14 = [self convertXlBorderEnumToED:xf->var14];
    v15 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var19 edResources:resourcesCopy];

    v16 = [EDBorder borderWithType:v14 colorReference:v15 resources:resourcesCopy];
    v17 = [self convertXlBorderEnumToED:xf->var16];
    v18 = [EBColorReference edColorReferenceFromXlColorIndex:xf->var21 edResources:resourcesCopy];

    v19 = +[EDBorder borderWithType:colorReference:diagonalType:resources:](EDBorder, "borderWithType:colorReference:diagonalType:resources:", v17, v18, [self convertXlDiagStyleEnumToED:xf->var10], resourcesCopy);
    v20 = [EDBorders bordersWithLeft:v23 right:v22 top:v13 bottom:v16 diagonal:v19 resources:resourcesCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)edBordersFromXlDXf:(XlDXf *)xf edResources:(id)resources
{
  resourcesCopy = resources;
  var9 = xf->var9;
  if (var9)
  {
    v8 = objc_alloc_init(EDBorders);
    var1 = xf->var1;
    if ((var1 & 4) == 0)
    {
      v10 = [self convertXlBorderEnumToED:*var9];
      v11 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 8) edResources:resourcesCopy];
      v12 = [EDBorder borderWithType:v10 colorReference:v11 resources:resourcesCopy];
      [(EDBorders *)v8 setLeftBorder:v12];

      var1 = xf->var1;
    }

    if ((var1 & 8) == 0)
    {
      v13 = [self convertXlBorderEnumToED:*(var9 + 1)];
      v14 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 9) edResources:resourcesCopy];
      v15 = [EDBorder borderWithType:v13 colorReference:v14 resources:resourcesCopy];
      [(EDBorders *)v8 setRightBorder:v15];

      var1 = xf->var1;
    }

    if ((var1 & 0x10) == 0)
    {
      v16 = [self convertXlBorderEnumToED:*(var9 + 2)];
      v17 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 11) edResources:resourcesCopy];
      v18 = [EDBorder borderWithType:v16 colorReference:v17 resources:resourcesCopy];
      [(EDBorders *)v8 setTopBorder:v18];

      var1 = xf->var1;
    }

    if ((var1 & 0x20) == 0)
    {
      v19 = [self convertXlBorderEnumToED:*(var9 + 3)];
      v20 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 10) edResources:resourcesCopy];
      v21 = [EDBorder borderWithType:v19 colorReference:v20 resources:resourcesCopy];
      [(EDBorders *)v8 setBottomBorder:v21];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)convertXlBorderEnumToED:(int)d
{
  if ((d - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE850[d - 1];
  }
}

+ (int)convertXlDiagStyleEnumToED:(int)d
{
  if ((d - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return d;
  }
}

+ (int)convertEDBorderEnumToXl:(int)xl
{
  if ((xl - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE884[xl - 1];
  }
}

+ (int)convertEDDiagonalEnumToXl:(int)xl
{
  if ((xl - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return xl;
  }
}

@end