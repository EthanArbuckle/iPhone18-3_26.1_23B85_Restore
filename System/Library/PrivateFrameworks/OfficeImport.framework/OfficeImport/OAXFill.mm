@interface OAXFill
+ (id)pathGradientFillTypeEnumMap;
+ (id)presetPatternFillTypeEnumMap;
+ (id)readBlipRefFromXmlNode:(_xmlNode *)node packagePart:(id)part forDrawable:(id)drawable drawingState:(id)state forBullet:(BOOL)bullet;
+ (id)readFillFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (id)readGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readGroupFillFromXmlNode:(_xmlNode *)node;
+ (id)readImageFillFromXmlNode:(_xmlNode *)node packagePart:(id)part forDrawable:(id)drawable drawingState:(id)state;
+ (id)readLinearGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readPathGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readPresetPatternFillFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readSolidFillFromXmlNode:(_xmlNode *)node;
+ (id)tileFlipModeEnumMap;
+ (void)readGradientFillFromXmlNode:(_xmlNode *)node toGradientFill:(id)fill drawingState:(id)state;
+ (void)readTile:(_xmlNode *)tile tile:(id)a4;
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

+ (id)readFillFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  partCopy = part;
  stateCopy = state;
  if (node->type == XML_ELEMENT_NODE)
  {
    if (xmlStrEqual(node->name, "noFill"))
    {
      v10 = [self readNullFillFromXmlNode:node];
LABEL_14:
      v11 = v10;
      goto LABEL_16;
    }

    if (xmlStrEqual(node->name, "solidFill"))
    {
      v10 = [self readSolidFillFromXmlNode:node];
      goto LABEL_14;
    }

    if (xmlStrEqual(node->name, "gradFill"))
    {
      v10 = [self readGradientFillFromXmlNode:node drawingState:stateCopy];
      goto LABEL_14;
    }

    if (xmlStrEqual(node->name, "blipFill"))
    {
      v10 = [self readImageFillFromXmlNode:node packagePart:partCopy forDrawable:0 drawingState:stateCopy];
      goto LABEL_14;
    }

    if (xmlStrEqual(node->name, "pattFill"))
    {
      v10 = [self readPresetPatternFillFromXmlNode:node drawingState:stateCopy];
      goto LABEL_14;
    }

    if (xmlStrEqual(node->name, "grpFill"))
    {
      v10 = [self readGroupFillFromXmlNode:node];
      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (id)readBlipRefFromXmlNode:(_xmlNode *)node packagePart:(id)part forDrawable:(id)drawable drawingState:(id)state forBullet:(BOOL)bullet
{
  bulletCopy = bullet;
  partCopy = part;
  drawableCopy = drawable;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(node, oAXMainNamespace, "blip");

  if (!v15)
  {
    [TCMessageException raise:OABadFormat];
  }

  v16 = [stateCopy OCXReadRelationshipForNode:v15 attributeName:"embed" packagePart:partCopy];
  v17 = v16;
  if (v16)
  {
    targetLocation = [v16 targetLocation];
    if (bulletCopy)
    {
      [stateCopy bulletBlipRefForURL:targetLocation];
    }

    else
    {
      [stateCopy blipRefForURL:targetLocation];
    }
    v21 = ;
    [OAXBlipEffects readBlipEffectsFromBlipRef:v15 toBlipRef:v21 drawingState:stateCopy];
  }

  else
  {
    v19 = [stateCopy OCXReadRelationshipForNode:v15 attributeName:"link" packagePart:partCopy];
    v17 = v19;
    if (!v19)
    {
      v27 = 0;
      goto LABEL_14;
    }

    targetLocation2 = [v19 targetLocation];
    targetLocation = [targetLocation2 relativeString];

    v21 = [OADBlipRef blipRefWithIndex:0 name:targetLocation blip:0];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v23 = OCXFindChild(v15, oAXMainNamespace2, "extLst");

  if (v23)
  {
    v24 = OCXFirstChildNamed(v23, "ext");
    while (v24)
    {
      v25 = CXDefaultStringAttribute(v24, CXNoNamespace, "uri", 0);
      client = [stateCopy client];
      [client readBlipExtWithURI:v25 fromNode:v24 toDrawable:drawableCopy state:stateCopy];

      v24 = OCXNextSiblingNamed(v24, "ext");
    }
  }

  v27 = v21;

LABEL_14:

  return v27;
}

+ (id)readImageFillFromXmlNode:(_xmlNode *)node packagePart:(id)part forDrawable:(id)drawable drawingState:(id)state
{
  partCopy = part;
  drawableCopy = drawable;
  stateCopy = state;
  v13 = objc_alloc_init(OADImageFill);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(node, oAXMainNamespace, "stretch");

  if (v15)
  {
    v16 = objc_alloc_init(OADStretchTechnique);
    [self readStretch:v15 stretch:v16];
    [(OADImageFill *)v13 setTechnique:v16];
  }

  else
  {
    v16 = objc_alloc_init(OADTileTechnique);
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v18 = OCXFindChild(node, oAXMainNamespace2, "tile");

    if (v18)
    {
      [self readTile:v18 tile:v16];
    }

    [(OADImageFill *)v13 setTechnique:v16];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v20 = OCXFindChild(node, oAXMainNamespace3, "srcRect");

  if (v20)
  {
    v21 = [OAXBaseTypes readRelativeRectFromXmlNode:v20];
    [(OADImageFill *)v13 setSourceRect:v21];
  }

  v24 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "rotWithShape", &v24))
  {
    [(OADImageFill *)v13 setRotateWithShape:v24];
  }

  v22 = [self readBlipRefFromXmlNode:node packagePart:partCopy forDrawable:drawableCopy drawingState:stateCopy forBullet:0];
  if (v22)
  {
    [(OADImageFill *)v13 setBlipRef:v22];
  }

  return v13;
}

+ (id)readGroupFillFromXmlNode:(_xmlNode *)node
{
  v3 = objc_alloc_init(OADGroupFill);

  return v3;
}

+ (id)readSolidFillFromXmlNode:(_xmlNode *)node
{
  v4 = objc_alloc_init(OADSolidFill);
  v5 = [OAXColor readColorFromParentXmlNode:node];
  if (v5)
  {
    [(OADSolidFill *)v4 setColor:v5];
  }

  return v4;
}

+ (void)readGradientFillFromXmlNode:(_xmlNode *)node toGradientFill:(id)fill drawingState:(id)state
{
  fillCopy = fill;
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v11 = OCXFindChild(node, oAXMainNamespace, "gsLst");

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    selfCopy = self;
    nodeCopy = node;
    Child = OCXFindChild(v11, oAXMainNamespace2, "gs");

    while (Child)
    {
      [OAXBaseTypes readRequiredFractionFromXmlNode:Child name:"pos", selfCopy, nodeCopy];
      v16 = v15;
      v17 = [OAXColor readColorFromParentXmlNode:Child];
      LODWORD(v18) = v16;
      [OADGradientFillStop addStopWithColor:v17 position:v12 toArray:v18];
      oAXMainNamespace3 = [stateCopy OAXMainNamespace];
      Child = OCXFindNextChild(Child, oAXMainNamespace3, "gs");
    }

    [fillCopy setStops:{v12, selfCopy, nodeCopy}];
    self = v27;
    node = v29;
  }

  v30 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "rotWithShape", &v30))
  {
    [fillCopy setRotateWithShape:v30];
  }

  v20 = CXDefaultStringAttribute(node, CXNoNamespace, "flip", 0);
  if (v20)
  {
    tileFlipModeEnumMap = [self tileFlipModeEnumMap];
    v22 = [tileFlipModeEnumMap valueForString:v20];

    [fillCopy setFlipMode:v22];
  }

  oAXMainNamespace4 = [stateCopy OAXMainNamespace];
  v24 = OCXFindChild(node, oAXMainNamespace4, "tileRect");

  if (v24)
  {
    v25 = [OAXBaseTypes readRelativeRectFromXmlNode:v24];
    [fillCopy setTileRect:v25];
  }
}

+ (id)readLinearGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADGradientFill);
  [self readGradientFillFromXmlNode:node toGradientFill:v7 drawingState:stateCopy];
  v8 = objc_alloc_init(OADLinearShade);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "lin");

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

+ (id)readPathGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADGradientFill);
  [self readGradientFillFromXmlNode:node toGradientFill:v7 drawingState:stateCopy];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v9 = OCXFindChild(node, oAXMainNamespace, "path");

  if (!v9)
  {
    [TCMessageException raise:OABadFormat];
  }

  v10 = objc_alloc_init(OADPathShade);
  v11 = CXDefaultStringAttribute(v9, CXNoNamespace, "path", 0);
  if (v11)
  {
    pathGradientFillTypeEnumMap = [self pathGradientFillTypeEnumMap];
    v13 = [pathGradientFillTypeEnumMap valueForString:v11];

    [(OADPathShade *)v10 setType:v13];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v15 = OCXFindChild(v9, oAXMainNamespace2, "fillToRect");

  if (v15)
  {
    v16 = [OAXBaseTypes readRelativeRectFromXmlNode:v15];
    [(OADPathShade *)v10 setFillToRect:v16];
  }

  [(OADGradientFill *)v7 setShade:v10];

  return v7;
}

+ (id)readGradientFillFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v8 = OCXFindChild(node, oAXMainNamespace, "path");

  if (v8)
  {
    [self readPathGradientFillFromXmlNode:node drawingState:stateCopy];
  }

  else
  {
    [self readLinearGradientFillFromXmlNode:node drawingState:stateCopy];
  }
  v9 = ;

  return v9;
}

+ (void)readTile:(_xmlNode *)tile tile:(id)a4
{
  v13 = a4;
  [OAXBaseTypes readOptionalLengthFromXmlNode:tile name:"tx"];
  [v13 setOffsetX:?];
  [OAXBaseTypes readOptionalLengthFromXmlNode:tile name:"tx"];
  [v13 setOffsetY:?];
  v6 = CXDefaultFractionAttribute(tile, CXNoNamespace, "sx", 1.0);
  *&v6 = v6;
  [v13 setScaleX:v6];
  v7 = CXDefaultFractionAttribute(tile, CXNoNamespace, "sy", 1.0);
  *&v7 = v7;
  [v13 setScaleY:v7];
  v8 = CXDefaultStringAttribute(tile, CXNoNamespace, "flip", @"none");
  tileFlipModeEnumMap = [self tileFlipModeEnumMap];
  v10 = [tileFlipModeEnumMap valueForString:v8];

  [v13 setFlipMode:v10];
  v11 = [OAXBaseTypes readRectAlignmentFromXmlNode:tile name:"algn"];
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

+ (id)readPresetPatternFillFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADPatternFill);
  v8 = CXDefaultStringAttribute(node, CXNoNamespace, "prst", 0);
  if (v8)
  {
    presetPatternFillTypeEnumMap = [self presetPatternFillTypeEnumMap];
    v10 = [presetPatternFillTypeEnumMap valueForString:v8];
  }

  else
  {
    v10 = 1;
  }

  v11 = objc_alloc_init(OADPresetPattern);
  [(OADPresetPattern *)v11 setType:v10];
  [(OADPatternFill *)v7 setPattern:v11];
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "fgClr");

  if (v13)
  {
    v14 = [OAXColor readColorFromParentXmlNode:v13];
    [(OADPatternFill *)v7 setFgColor:v14];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v16 = OCXFindChild(node, oAXMainNamespace2, "bgClr");

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