@interface OAXFill
+ (id)pathGradientFillTypeEnumMap;
+ (id)presetPatternFillTypeEnumMap;
+ (id)readBlipRefFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 forDrawable:(id)a5 drawingState:(id)a6 forBullet:(BOOL)a7;
+ (id)readFillFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5;
+ (id)readGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readGroupFillFromXmlNode:(_xmlNode *)a3;
+ (id)readImageFillFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 forDrawable:(id)a5 drawingState:(id)a6;
+ (id)readLinearGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readPathGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readPresetPatternFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readSolidFillFromXmlNode:(_xmlNode *)a3;
+ (id)tileFlipModeEnumMap;
+ (void)readGradientFillFromXmlNode:(_xmlNode *)a3 toGradientFill:(id)a4 drawingState:(id)a5;
+ (void)readTile:(_xmlNode *)a3 tile:(id)a4;
@end

@implementation OAXFill

+ (id)pathGradientFillTypeEnumMap
{
  if (+[OAXFill(Private) pathGradientFillTypeEnumMap]::once != -1)
  {
    +[OAXFill(Private) pathGradientFillTypeEnumMap];
  }

  v3 = +[OAXFill(Private) pathGradientFillTypeEnumMap]::pathGradientFillTypeEnumMap;

  return v3;
}

+ (id)tileFlipModeEnumMap
{
  v2 = +[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumMap;
  if (!+[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumMap)
  {
    {
      +[OAXFill(Private) tileFlipModeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumStructs count:4 caseSensitive:1];
    v4 = +[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumMap;
    +[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumMap = v3;

    v2 = +[OAXFill(Private) tileFlipModeEnumMap]::tileFlipModeEnumMap;
  }

  return v2;
}

+ (id)presetPatternFillTypeEnumMap
{
  v2 = +[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumMap;
  if (!+[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumMap)
  {
    {
      +[OAXFill(Private) presetPatternFillTypeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumStructs count:54 caseSensitive:1];
    v4 = +[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumMap;
    +[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumMap = v3;

    v2 = +[OAXFill(Private) presetPatternFillTypeEnumMap]::presetPatternFillTypeEnumMap;
  }

  return v2;
}

+ (id)readFillFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3->type == XML_ELEMENT_NODE)
  {
    if (xmlStrEqual(a3->name, "noFill"))
    {
      v10 = [a1 readNullFillFromXmlNode:a3];
LABEL_14:
      v11 = v10;
      goto LABEL_16;
    }

    if (xmlStrEqual(a3->name, "solidFill"))
    {
      v10 = [a1 readSolidFillFromXmlNode:a3];
      goto LABEL_14;
    }

    if (xmlStrEqual(a3->name, "gradFill"))
    {
      v10 = [a1 readGradientFillFromXmlNode:a3 drawingState:v9];
      goto LABEL_14;
    }

    if (xmlStrEqual(a3->name, "blipFill"))
    {
      v10 = [a1 readImageFillFromXmlNode:a3 packagePart:v8 forDrawable:0 drawingState:v9];
      goto LABEL_14;
    }

    if (xmlStrEqual(a3->name, "pattFill"))
    {
      v10 = [a1 readPresetPatternFillFromXmlNode:a3 drawingState:v9];
      goto LABEL_14;
    }

    if (xmlStrEqual(a3->name, "grpFill"))
    {
      v10 = [a1 readGroupFillFromXmlNode:a3];
      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (id)readBlipRefFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 forDrawable:(id)a5 drawingState:(id)a6 forBullet:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 OAXMainNamespace];
  v15 = OCXFindChild(a3, v14, "blip");

  if (!v15)
  {
    [TCMessageException raise:OABadFormat];
  }

  v16 = [v13 OCXReadRelationshipForNode:v15 attributeName:"embed" packagePart:v11];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 targetLocation];
    if (v7)
    {
      [v13 bulletBlipRefForURL:v18];
    }

    else
    {
      [v13 blipRefForURL:v18];
    }
    v21 = ;
    [OAXBlipEffects readBlipEffectsFromBlipRef:v15 toBlipRef:v21 drawingState:v13];
  }

  else
  {
    v19 = [v13 OCXReadRelationshipForNode:v15 attributeName:"link" packagePart:v11];
    v17 = v19;
    if (!v19)
    {
      v27 = 0;
      goto LABEL_14;
    }

    v20 = [v19 targetLocation];
    v18 = [v20 relativeString];

    v21 = [OADBlipRef blipRefWithIndex:0 name:v18 blip:0];
  }

  v22 = [v13 OAXMainNamespace];
  v23 = OCXFindChild(v15, v22, "extLst");

  if (v23)
  {
    v24 = OCXFirstChildNamed(v23, "ext");
    while (v24)
    {
      v25 = CXDefaultStringAttribute(v24, CXNoNamespace, "uri", 0);
      v26 = [v13 client];
      [v26 readBlipExtWithURI:v25 fromNode:v24 toDrawable:v12 state:v13];

      v24 = OCXNextSiblingNamed(v24, "ext");
    }
  }

  v27 = v21;

LABEL_14:

  return v27;
}

+ (id)readImageFillFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 forDrawable:(id)a5 drawingState:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(OADImageFill);
  v14 = [v12 OAXMainNamespace];
  v15 = OCXFindChild(a3, v14, "stretch");

  if (v15)
  {
    v16 = objc_alloc_init(OADStretchTechnique);
    [a1 readStretch:v15 stretch:v16];
    [(OADImageFill *)v13 setTechnique:v16];
  }

  else
  {
    v16 = objc_alloc_init(OADTileTechnique);
    v17 = [v12 OAXMainNamespace];
    v18 = OCXFindChild(a3, v17, "tile");

    if (v18)
    {
      [a1 readTile:v18 tile:v16];
    }

    [(OADImageFill *)v13 setTechnique:v16];
  }

  v19 = [v12 OAXMainNamespace];
  v20 = OCXFindChild(a3, v19, "srcRect");

  if (v20)
  {
    v21 = [OAXBaseTypes readRelativeRectFromXmlNode:v20];
    [(OADImageFill *)v13 setSourceRect:v21];
  }

  v24 = 0;
  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rotWithShape", &v24))
  {
    [(OADImageFill *)v13 setRotateWithShape:v24];
  }

  v22 = [a1 readBlipRefFromXmlNode:a3 packagePart:v10 forDrawable:v11 drawingState:v12 forBullet:0];
  if (v22)
  {
    [(OADImageFill *)v13 setBlipRef:v22];
  }

  return v13;
}

+ (id)readGroupFillFromXmlNode:(_xmlNode *)a3
{
  v3 = objc_alloc_init(OADGroupFill);

  return v3;
}

+ (id)readSolidFillFromXmlNode:(_xmlNode *)a3
{
  v4 = objc_alloc_init(OADSolidFill);
  v5 = [OAXColor readColorFromParentXmlNode:a3];
  if (v5)
  {
    [(OADSolidFill *)v4 setColor:v5];
  }

  return v4;
}

+ (void)readGradientFillFromXmlNode:(_xmlNode *)a3 toGradientFill:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 OAXMainNamespace];
  v11 = OCXFindChild(a3, v10, "gsLst");

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [v9 OAXMainNamespace];
    v26 = a1;
    v28 = a3;
    Child = OCXFindChild(v11, v13, "gs");

    while (Child)
    {
      [OAXBaseTypes readRequiredFractionFromXmlNode:Child name:"pos", v26, v28];
      v16 = v15;
      v17 = [OAXColor readColorFromParentXmlNode:Child];
      LODWORD(v18) = v16;
      [OADGradientFillStop addStopWithColor:v17 position:v12 toArray:v18];
      v19 = [v9 OAXMainNamespace];
      Child = OCXFindNextChild(Child, v19, "gs");
    }

    [v8 setStops:{v12, v26, v28}];
    a1 = v27;
    a3 = v29;
  }

  v30 = 0;
  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "rotWithShape", &v30))
  {
    [v8 setRotateWithShape:v30];
  }

  v20 = CXDefaultStringAttribute(a3, CXNoNamespace, "flip", 0);
  if (v20)
  {
    v21 = [a1 tileFlipModeEnumMap];
    v22 = [v21 valueForString:v20];

    [v8 setFlipMode:v22];
  }

  v23 = [v9 OAXMainNamespace];
  v24 = OCXFindChild(a3, v23, "tileRect");

  if (v24)
  {
    v25 = [OAXBaseTypes readRelativeRectFromXmlNode:v24];
    [v8 setTileRect:v25];
  }
}

+ (id)readLinearGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(OADGradientFill);
  [a1 readGradientFillFromXmlNode:a3 toGradientFill:v7 drawingState:v6];
  v8 = objc_alloc_init(OADLinearShade);
  v9 = [v6 OAXMainNamespace];
  v10 = OCXFindChild(a3, v9, "lin");

  if (v10)
  {
    v14 = 0;
    if (CXOptionalLongAttribute(v10, CXNoNamespace, "ang", &v14))
    {
      v11 = v14 / 60000.0;
      *&v11 = v11;
      [(OADLinearShade *)v8 setAngle:v11];
    }

    v13 = 0;
    if (CXOptionalBoolAttribute(v10, CXNoNamespace, "scaled", &v13))
    {
      [(OADLinearShade *)v8 setScaled:v13];
    }
  }

  [(OADGradientFill *)v7 setShade:v8];

  return v7;
}

+ (id)readPathGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(OADGradientFill);
  [a1 readGradientFillFromXmlNode:a3 toGradientFill:v7 drawingState:v6];
  v8 = [v6 OAXMainNamespace];
  v9 = OCXFindChild(a3, v8, "path");

  if (!v9)
  {
    [TCMessageException raise:OABadFormat];
  }

  v10 = objc_alloc_init(OADPathShade);
  v11 = CXDefaultStringAttribute(v9, CXNoNamespace, "path", 0);
  if (v11)
  {
    v12 = [a1 pathGradientFillTypeEnumMap];
    v13 = [v12 valueForString:v11];

    [(OADPathShade *)v10 setType:v13];
  }

  v14 = [v6 OAXMainNamespace];
  v15 = OCXFindChild(v9, v14, "fillToRect");

  if (v15)
  {
    v16 = [OAXBaseTypes readRelativeRectFromXmlNode:v15];
    [(OADPathShade *)v10 setFillToRect:v16];
  }

  [(OADGradientFill *)v7 setShade:v10];

  return v7;
}

+ (id)readGradientFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = [v6 OAXMainNamespace];
  v8 = OCXFindChild(a3, v7, "path");

  if (v8)
  {
    [a1 readPathGradientFillFromXmlNode:a3 drawingState:v6];
  }

  else
  {
    [a1 readLinearGradientFillFromXmlNode:a3 drawingState:v6];
  }
  v9 = ;

  return v9;
}

+ (void)readTile:(_xmlNode *)a3 tile:(id)a4
{
  v13 = a4;
  [OAXBaseTypes readOptionalLengthFromXmlNode:a3 name:"tx"];
  [v13 setOffsetX:?];
  [OAXBaseTypes readOptionalLengthFromXmlNode:a3 name:"tx"];
  [v13 setOffsetY:?];
  v6 = CXDefaultFractionAttribute(a3, CXNoNamespace, "sx", 1.0);
  *&v6 = v6;
  [v13 setScaleX:v6];
  v7 = CXDefaultFractionAttribute(a3, CXNoNamespace, "sy", 1.0);
  *&v7 = v7;
  [v13 setScaleY:v7];
  v8 = CXDefaultStringAttribute(a3, CXNoNamespace, "flip", @"none");
  v9 = [a1 tileFlipModeEnumMap];
  v10 = [v9 valueForString:v8];

  [v13 setFlipMode:v10];
  v11 = [OAXBaseTypes readRectAlignmentFromXmlNode:a3 name:"algn"];
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v13 setAlignment:v12];
}

+ (id)readPresetPatternFillFromXmlNode:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(OADPatternFill);
  v8 = CXDefaultStringAttribute(a3, CXNoNamespace, "prst", 0);
  if (v8)
  {
    v9 = [a1 presetPatternFillTypeEnumMap];
    v10 = [v9 valueForString:v8];
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_alloc_init(OADPresetPattern);
  [(OADPresetPattern *)v11 setType:v10];
  [(OADPatternFill *)v7 setPattern:v11];
  v12 = [v6 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "fgClr");

  if (v13)
  {
    v14 = [OAXColor readColorFromParentXmlNode:v13];
    [(OADPatternFill *)v7 setFgColor:v14];
  }

  v15 = [v6 OAXMainNamespace];
  v16 = OCXFindChild(a3, v15, "bgClr");

  if (v16)
  {
    v17 = [OAXColor readColorFromParentXmlNode:v16];
    [(OADPatternFill *)v7 setBgColor:v17];
  }

  return v7;
}

void __47__OAXFill_Private__pathGradientFillTypeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ47__OAXFill_Private__pathGradientFillTypeEnumMap_EUb_E31pathGradientFillTypeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __47__OAXFill_Private__pathGradientFillTypeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ47__OAXFill_Private__pathGradientFillTypeEnumMap_EUb_E31pathGradientFillTypeEnumStructs count:3 caseSensitive:1];
  v1 = +[OAXFill(Private) pathGradientFillTypeEnumMap]::pathGradientFillTypeEnumMap;
  +[OAXFill(Private) pathGradientFillTypeEnumMap]::pathGradientFillTypeEnumMap = v0;
}

void __47__OAXFill_Private__pathGradientFillTypeEnumMap__block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_ZGVZZ47__OAXFill_Private__pathGradientFillTypeEnumMap_EUb_E31pathGradientFillTypeEnumStructs))
  {
    __cxa_atexit(__cxx_global_array_dtor_76, 0, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ47__OAXFill_Private__pathGradientFillTypeEnumMap_EUb_E31pathGradientFillTypeEnumStructs);
  }
}

@end