@interface PBCharacterProperties
+ (void)readCharacterProperties:(id)a3 characterProperty:(PptCharProperty *)a4 state:(id)a5;
+ (void)readCharacterProperties:(id)a3 specialInfo:(const PptSpecialInfo *)a4 state:(id)a5;
@end

@implementation PBCharacterProperties

+ (void)readCharacterProperties:(id)a3 characterProperty:(PptCharProperty *)a4 state:(id)a5
{
  v44 = a3;
  v7 = a5;
  v8 = [v7 currentMacCharStyle];
  v9 = v8;
  {
    v14 = *(v13 + 8 * v12);
  }

  else
  {
    v14 = 0;
  }

  if (([v7 hasCharacterPropertyBulletIndex] & 1) == 0)
  {
    [v7 setBulletIndex:(*(a4 + 2) >> 10) & 0xF];
  }

  [v44 setIsBold:*(a4 + 2) & 1];
  [v44 setIsItalic:(*(a4 + 2) >> 1) & 1];
  [v44 setUnderlineType:(*(a4 + 4) >> 1) & 2];
  if ((*(a4 + 2) & 0x10) != 0)
  {
    v15 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
    if (!+[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects)
    {
      v16 = objc_alloc(MEMORY[0x277CBEA60]);
      v17 = [v16 initWithObjects:{kOADAutoTextShadowEffect, 0}];
      v18 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
      +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects = v17;

      v15 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
    }
  }

  else
  {
    if (+[PBCharacterProperties readCharacterProperties:characterProperty:state:]::once != -1)
    {
      +[PBCharacterProperties readCharacterProperties:characterProperty:state:];
    }

    v15 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
  }

  [v44 setEffects:v15];
  if (v14 && *(v14 + 8) == 1)
  {
    *&v19 = EshFixedPointUtil::toFloat(*(v14 + 12));
    [v44 setOpacity:v19];
  }

  v20 = *(a4 + 2);
  if ((v20 & 8) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = (v20 << 22 >> 31) & 3;
  }

  [v44 setFormatType:v21];
  v22 = a4->var19 / 100.0;
  *&v22 = v22;
  [v44 setBaseline:v22];
  if ((*(&a4->var0 + 1) & 0x40) != 0)
  {
    LOWORD(v23) = a4->var17;
    *&v23 = LODWORD(v23);
    [v44 setSize:v23];
  }

  if (a4->var13 != 0xFFFFLL)
  {
    v24 = [v7 fontEntityAtIndex:?];
    v25 = [v24 faceName];
    [v44 setLatinFont:v25];
  }

  if ((*(&a4->var0 + 1) & 0x10) != 0 && a4->var15 != 0xFFFFLL)
  {
    v26 = [v7 fontEntityAtIndex:?];
    v27 = [v26 faceName];
    [v44 setHAnsiFont:v27];
  }

  if (a4->var14 != 0xFFFFLL)
  {
    v28 = [v7 fontEntityAtIndex:?];
    v29 = [v28 faceName];
    [v44 setEastAsianFont:v29];
  }

  if ((a4->var16 & 0x8000000000000000) == 0)
  {
    v30 = [v7 fontEntityAtIndex:?];
    v31 = [v30 faceName];
    [v44 setSymbolFont:v31];
  }

  var0 = a4->var0;
  if ((*&a4->var0 & 0x40) != 0 && (*(a4 + 2) & 0x40) != 0)
  {
    [v44 setFormatKerningType:2];
    var0 = a4->var0;
  }

  if ((*&var0 & 0x100) != 0 && (*(a4 + 2) & 0x100) != 0)
  {
    [v44 setFormatKerningType:1];
  }

  var1 = a4->var18.var1;
  if (var1 != 255)
  {
    if (var1 == 254)
    {
      v34 = a4->var18.var0.var1;
      var2 = a4->var18.var0.var2;
      var3 = a4->var18.var0.var3;
      v37 = [OADRgbColor alloc];
      *&v38 = v34;
      *&v39 = var2;
      *&v40 = var3;
      v41 = [(OADRgbColor *)v37 initWithRedByte:v38 greenByte:v39 blueByte:v40];
    }

    else
    {
      v41 = [[OADSchemeColor alloc] initWithSchemeColorIndex:[PBColorScheme oadSchemeColorValueForEshSchemeColorIndex:a4->var18.var1]];
    }

    v42 = v41;
    v43 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v43 setColor:v42];
    [v44 setFill:v43];
  }
}

void __73__PBCharacterProperties_readCharacterProperties_characterProperty_state___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v1 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
  +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects = v0;
}

+ (void)readCharacterProperties:(id)a3 specialInfo:(const PptSpecialInfo *)a4 state:(id)a5
{
  v6 = a3;
  if ((*&a4->var0 & 2) != 0)
  {
    [v6 setLanguage:*&a4->var1];
  }
}

@end