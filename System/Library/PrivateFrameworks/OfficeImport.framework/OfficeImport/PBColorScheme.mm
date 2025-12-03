@interface PBColorScheme
+ (int)oadSchemeColorValueForEshSchemeColorIndex:(unsigned __int16)index;
+ (unsigned)eshSchemeColorIndexForOADSchemeColorValue:(int)value;
+ (void)addColorWithIndex:(int)index fromScheme:(PptColorSchemeAtom *)scheme colorTransform:(void *)transform atIndex:(int)atIndex inScheme:(id)inScheme;
+ (void)readFromColorScheme:(PptColorSchemeAtom *)scheme toColorScheme:(id)colorScheme colorMap:(id)map state:(id)state;
@end

@implementation PBColorScheme

+ (int)oadSchemeColorValueForEshSchemeColorIndex:(unsigned __int16)index
{
  if (index > 7u)
  {
    return -1;
  }

  else
  {
    return oadSchemeColorValueArray[index];
  }
}

+ (unsigned)eshSchemeColorIndexForOADSchemeColorValue:(int)value
{
  v3 = 0;
  while (oadSchemeColorValueArray[v3] != value)
  {
    if (++v3 == 8)
    {
      LOWORD(v3) = -1;
      return v3;
    }
  }

  return v3;
}

+ (void)addColorWithIndex:(int)index fromScheme:(PptColorSchemeAtom *)scheme colorTransform:(void *)transform atIndex:(int)atIndex inScheme:(id)inScheme
{
  v7 = *&atIndex;
  indexCopy = index;
  inSchemeCopy = inScheme;
  v11 = (*(scheme->var0 + 19))(scheme, indexCopy);
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  if (transform)
  {
    v12 = (transform)(v11[1]);
    LODWORD(v13) = (transform)(v13);
    LODWORD(v14) = (transform)(v14);
  }

  v15 = [OADRgbColor alloc];
  *&v16 = v12;
  *&v17 = v13;
  *&v18 = v14;
  v19 = [(OADRgbColor *)v15 initWithRedByte:v16 greenByte:v17 blueByte:v18];
  [inSchemeCopy addColor:v19 index:v7];
}

+ (void)readFromColorScheme:(PptColorSchemeAtom *)scheme toColorScheme:(id)colorScheme colorMap:(id)map state:(id)state
{
  colorSchemeCopy = colorScheme;
  mapCopy = map;
  v10 = mapCopy;
  if (__PAIR64__(scheme->var7.var1, scheme->var7.var0) == 0xFF000000FFLL && scheme->var7.var2 == 255 && scheme->var7.var3 == 255)
  {
    v11 = 1;
  }

  else
  {
    v11 = scheme->var8.var0 == 255 && !scheme->var8.var1 && !scheme->var8.var2 && scheme->var8.var3 == 0;
  }

  [mapCopy addDefaultMappings:v11];
  v12 = 0;
  do
  {
    [self addColorWithIndex:v12 fromScheme:scheme atIndex:+[OADColor mapSchemeColorID:colorMap:](OADColor inScheme:{"mapSchemeColorID:colorMap:", objc_msgSend(self, "oadSchemeColorValueForEshSchemeColorIndex:", v12), v10), colorSchemeCopy}];
    v12 = (v12 + 1);
  }

  while (v12 != 8);
}

@end