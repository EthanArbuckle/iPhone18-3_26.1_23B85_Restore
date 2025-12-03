@interface PBCharacterProperties
+ (void)readCharacterProperties:(id)properties characterProperty:(PptCharProperty *)property state:(id)state;
+ (void)readCharacterProperties:(id)properties specialInfo:(const PptSpecialInfo *)info state:(id)state;
@end

@implementation PBCharacterProperties

+ (void)readCharacterProperties:(id)properties characterProperty:(PptCharProperty *)property state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  currentMacCharStyle = [stateCopy currentMacCharStyle];
  v9 = currentMacCharStyle;
  {
    v14 = *(v13 + 8 * v12);
  }

  else
  {
    v14 = 0;
  }

  if (([stateCopy hasCharacterPropertyBulletIndex] & 1) == 0)
  {
    [stateCopy setBulletIndex:(*(property + 2) >> 10) & 0xF];
  }

  [propertiesCopy setIsBold:*(property + 2) & 1];
  [propertiesCopy setIsItalic:(*(property + 2) >> 1) & 1];
  [propertiesCopy setUnderlineType:(*(property + 4) >> 1) & 2];
  if ((*(property + 2) & 0x10) != 0)
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

  [propertiesCopy setEffects:v15];
  if (v14 && *(v14 + 8) == 1)
  {
    *&v19 = EshFixedPointUtil::toFloat(*(v14 + 12));
    [propertiesCopy setOpacity:v19];
  }

  v20 = *(property + 2);
  if ((v20 & 8) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = (v20 << 22 >> 31) & 3;
  }

  [propertiesCopy setFormatType:v21];
  v22 = property->var19 / 100.0;
  *&v22 = v22;
  [propertiesCopy setBaseline:v22];
  if ((*(&property->var0 + 1) & 0x40) != 0)
  {
    LOWORD(v23) = property->var17;
    *&v23 = LODWORD(v23);
    [propertiesCopy setSize:v23];
  }

  if (property->var13 != 0xFFFFLL)
  {
    v24 = [stateCopy fontEntityAtIndex:?];
    faceName = [v24 faceName];
    [propertiesCopy setLatinFont:faceName];
  }

  if ((*(&property->var0 + 1) & 0x10) != 0 && property->var15 != 0xFFFFLL)
  {
    v26 = [stateCopy fontEntityAtIndex:?];
    faceName2 = [v26 faceName];
    [propertiesCopy setHAnsiFont:faceName2];
  }

  if (property->var14 != 0xFFFFLL)
  {
    v28 = [stateCopy fontEntityAtIndex:?];
    faceName3 = [v28 faceName];
    [propertiesCopy setEastAsianFont:faceName3];
  }

  if ((property->var16 & 0x8000000000000000) == 0)
  {
    v30 = [stateCopy fontEntityAtIndex:?];
    faceName4 = [v30 faceName];
    [propertiesCopy setSymbolFont:faceName4];
  }

  var0 = property->var0;
  if ((*&property->var0 & 0x40) != 0 && (*(property + 2) & 0x40) != 0)
  {
    [propertiesCopy setFormatKerningType:2];
    var0 = property->var0;
  }

  if ((*&var0 & 0x100) != 0 && (*(property + 2) & 0x100) != 0)
  {
    [propertiesCopy setFormatKerningType:1];
  }

  var1 = property->var18.var1;
  if (var1 != 255)
  {
    if (var1 == 254)
    {
      v34 = property->var18.var0.var1;
      var2 = property->var18.var0.var2;
      var3 = property->var18.var0.var3;
      v37 = [OADRgbColor alloc];
      *&v38 = v34;
      *&v39 = var2;
      *&v40 = var3;
      v41 = [(OADRgbColor *)v37 initWithRedByte:v38 greenByte:v39 blueByte:v40];
    }

    else
    {
      v41 = [[OADSchemeColor alloc] initWithSchemeColorIndex:[PBColorScheme oadSchemeColorValueForEshSchemeColorIndex:property->var18.var1]];
    }

    v42 = v41;
    v43 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v43 setColor:v42];
    [propertiesCopy setFill:v43];
  }
}

void __73__PBCharacterProperties_readCharacterProperties_characterProperty_state___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v1 = +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects;
  +[PBCharacterProperties readCharacterProperties:characterProperty:state:]::effects = v0;
}

+ (void)readCharacterProperties:(id)properties specialInfo:(const PptSpecialInfo *)info state:(id)state
{
  propertiesCopy = properties;
  if ((*&info->var0 & 2) != 0)
  {
    [propertiesCopy setLanguage:*&info->var1];
  }
}

@end