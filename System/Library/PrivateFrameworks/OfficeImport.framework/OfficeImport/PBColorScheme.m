@interface PBColorScheme
+ (int)oadSchemeColorValueForEshSchemeColorIndex:(unsigned __int16)a3;
+ (unsigned)eshSchemeColorIndexForOADSchemeColorValue:(int)a3;
+ (void)addColorWithIndex:(int)a3 fromScheme:(PptColorSchemeAtom *)a4 colorTransform:(void *)a5 atIndex:(int)a6 inScheme:(id)a7;
+ (void)readFromColorScheme:(PptColorSchemeAtom *)a3 toColorScheme:(id)a4 colorMap:(id)a5 state:(id)a6;
@end

@implementation PBColorScheme

+ (int)oadSchemeColorValueForEshSchemeColorIndex:(unsigned __int16)a3
{
  if (a3 > 7u)
  {
    return -1;
  }

  else
  {
    return oadSchemeColorValueArray[a3];
  }
}

+ (unsigned)eshSchemeColorIndexForOADSchemeColorValue:(int)a3
{
  v3 = 0;
  while (oadSchemeColorValueArray[v3] != a3)
  {
    if (++v3 == 8)
    {
      LOWORD(v3) = -1;
      return v3;
    }
  }

  return v3;
}

+ (void)addColorWithIndex:(int)a3 fromScheme:(PptColorSchemeAtom *)a4 colorTransform:(void *)a5 atIndex:(int)a6 inScheme:(id)a7
{
  v7 = *&a6;
  v10 = a3;
  v20 = a7;
  v11 = (*(a4->var0 + 19))(a4, v10);
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  if (a5)
  {
    v12 = (a5)(v11[1]);
    LODWORD(v13) = (a5)(v13);
    LODWORD(v14) = (a5)(v14);
  }

  v15 = [OADRgbColor alloc];
  *&v16 = v12;
  *&v17 = v13;
  *&v18 = v14;
  v19 = [(OADRgbColor *)v15 initWithRedByte:v16 greenByte:v17 blueByte:v18];
  [v20 addColor:v19 index:v7];
}

+ (void)readFromColorScheme:(PptColorSchemeAtom *)a3 toColorScheme:(id)a4 colorMap:(id)a5 state:(id)a6
{
  v13 = a4;
  v9 = a5;
  v10 = v9;
  if (__PAIR64__(a3->var7.var1, a3->var7.var0) == 0xFF000000FFLL && a3->var7.var2 == 255 && a3->var7.var3 == 255)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3->var8.var0 == 255 && !a3->var8.var1 && !a3->var8.var2 && a3->var8.var3 == 0;
  }

  [v9 addDefaultMappings:v11];
  v12 = 0;
  do
  {
    [a1 addColorWithIndex:v12 fromScheme:a3 atIndex:+[OADColor mapSchemeColorID:colorMap:](OADColor inScheme:{"mapSchemeColorID:colorMap:", objc_msgSend(a1, "oadSchemeColorValueForEshSchemeColorIndex:", v12), v10), v13}];
    v12 = (v12 + 1);
  }

  while (v12 != 8);
}

@end