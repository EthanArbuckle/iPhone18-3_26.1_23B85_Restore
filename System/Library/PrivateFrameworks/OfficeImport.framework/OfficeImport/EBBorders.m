@interface EBBorders
+ (id)edBordersFromXlDXf:(XlDXf *)a3 edResources:(id)a4;
+ (id)edBordersFromXlXf:(XlXf *)a3 edResources:(id)a4;
+ (int)convertEDBorderEnumToXl:(int)a3;
+ (int)convertEDDiagonalEnumToXl:(int)a3;
+ (int)convertXlBorderEnumToED:(int)a3;
+ (int)convertXlDiagStyleEnumToED:(int)a3;
@end

@implementation EBBorders

+ (id)edBordersFromXlXf:(XlXf *)a3 edResources:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a1 convertXlBorderEnumToED:a3->var12];
    v8 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var17 edResources:v6];
    v23 = [EDBorder borderWithType:v7 colorReference:v8 resources:v6];
    v9 = [a1 convertXlBorderEnumToED:a3->var13];
    v10 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var18 edResources:v6];

    v22 = [EDBorder borderWithType:v9 colorReference:v10 resources:v6];
    v11 = [a1 convertXlBorderEnumToED:a3->var15];
    v12 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var20 edResources:v6];

    v13 = [EDBorder borderWithType:v11 colorReference:v12 resources:v6];
    v14 = [a1 convertXlBorderEnumToED:a3->var14];
    v15 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var19 edResources:v6];

    v16 = [EDBorder borderWithType:v14 colorReference:v15 resources:v6];
    v17 = [a1 convertXlBorderEnumToED:a3->var16];
    v18 = [EBColorReference edColorReferenceFromXlColorIndex:a3->var21 edResources:v6];

    v19 = +[EDBorder borderWithType:colorReference:diagonalType:resources:](EDBorder, "borderWithType:colorReference:diagonalType:resources:", v17, v18, [a1 convertXlDiagStyleEnumToED:a3->var10], v6);
    v20 = [EDBorders bordersWithLeft:v23 right:v22 top:v13 bottom:v16 diagonal:v19 resources:v6];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)edBordersFromXlDXf:(XlDXf *)a3 edResources:(id)a4
{
  v6 = a4;
  var9 = a3->var9;
  if (var9)
  {
    v8 = objc_alloc_init(EDBorders);
    var1 = a3->var1;
    if ((var1 & 4) == 0)
    {
      v10 = [a1 convertXlBorderEnumToED:*var9];
      v11 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 8) edResources:v6];
      v12 = [EDBorder borderWithType:v10 colorReference:v11 resources:v6];
      [(EDBorders *)v8 setLeftBorder:v12];

      var1 = a3->var1;
    }

    if ((var1 & 8) == 0)
    {
      v13 = [a1 convertXlBorderEnumToED:*(var9 + 1)];
      v14 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 9) edResources:v6];
      v15 = [EDBorder borderWithType:v13 colorReference:v14 resources:v6];
      [(EDBorders *)v8 setRightBorder:v15];

      var1 = a3->var1;
    }

    if ((var1 & 0x10) == 0)
    {
      v16 = [a1 convertXlBorderEnumToED:*(var9 + 2)];
      v17 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 11) edResources:v6];
      v18 = [EDBorder borderWithType:v16 colorReference:v17 resources:v6];
      [(EDBorders *)v8 setTopBorder:v18];

      var1 = a3->var1;
    }

    if ((var1 & 0x20) == 0)
    {
      v19 = [a1 convertXlBorderEnumToED:*(var9 + 3)];
      v20 = [EBColorReference edColorReferenceFromXlColorIndex:*(var9 + 10) edResources:v6];
      v21 = [EDBorder borderWithType:v19 colorReference:v20 resources:v6];
      [(EDBorders *)v8 setBottomBorder:v21];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)convertXlBorderEnumToED:(int)a3
{
  if ((a3 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE850[a3 - 1];
  }
}

+ (int)convertXlDiagStyleEnumToED:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertEDBorderEnumToXl:(int)a3
{
  if ((a3 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE884[a3 - 1];
  }
}

+ (int)convertEDDiagonalEnumToXl:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end