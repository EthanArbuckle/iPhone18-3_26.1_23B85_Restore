@interface OAXShape3D
+ (BOOL)isEmpty:(id)empty;
+ (id)bevelTypeEnumMap;
+ (id)materialEnumMap;
+ (id)readBevelFromXmlNode:(_xmlNode *)node;
+ (id)readShape3DFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (void)bevelTypeEnumMap;
+ (void)materialEnumMap;
+ (void)writeBevel:(id)bevel to:(id)to;
+ (void)writeShape3D:(id)d to:(id)to;
+ (void)writeShape3DMaterialOnly:(id)only to:(id)to;
@end

@implementation OAXShape3D

+ (id)materialEnumMap
{
  v2 = +[OAXShape3D materialEnumMap]::materialEnumMap;
  if (!+[OAXShape3D materialEnumMap]::materialEnumMap)
  {
    {
      +[OAXShape3D materialEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXShape3D materialEnumMap]::materialEnumStructs count:15 caseSensitive:1];
    v4 = +[OAXShape3D materialEnumMap]::materialEnumMap;
    +[OAXShape3D materialEnumMap]::materialEnumMap = v3;

    v2 = +[OAXShape3D materialEnumMap]::materialEnumMap;
  }

  return v2;
}

+ (id)bevelTypeEnumMap
{
  v2 = +[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumMap;
  if (!+[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumMap)
  {
    {
      +[OAXShape3D bevelTypeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumStructs count:12 caseSensitive:1];
    v4 = +[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumMap;
    +[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumMap = v3;

    v2 = +[OAXShape3D bevelTypeEnumMap]::bevelTypeEnumMap;
  }

  return v2;
}

+ (id)readBevelFromXmlNode:(_xmlNode *)node
{
  v5 = objc_alloc_init(OADBevel);
  v13 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "w", &v13))
  {
    v6 = v13 / 12700.0;
    *&v6 = v6;
    [(OADBevel *)v5 setWidth:v6];
  }

  v12 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "h", &v12))
  {
    v7 = v12 / 12700.0;
    *&v7 = v7;
    [(OADBevel *)v5 setHeight:v7];
  }

  v8 = CXDefaultStringAttribute(node, CXNoNamespace, "prst", 0);
  if (v8)
  {
    bevelTypeEnumMap = [self bevelTypeEnumMap];
    v10 = [bevelTypeEnumMap valueForString:v8];

    [(OADBevel *)v5 setType:v10];
  }

  return v5;
}

+ (id)readShape3DFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  stateCopy = state;
  v8 = objc_alloc_init(OADShape3D);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v10 = OCXFindChild(node, oAXMainNamespace, "bevelT");

  if (v10)
  {
    v11 = [self readBevelFromXmlNode:v10];
    [(OADShape3D *)v8 setTopBevel:v11];
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace2, "bevelB");

  if (v13)
  {
    v14 = [self readBevelFromXmlNode:v13];
    [(OADShape3D *)v8 setBottomBevel:v14];
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v16 = OCXFindChild(node, oAXMainNamespace3, "extrusionClr");

  if (v16)
  {
    v17 = [OAXColor readColorFromParentXmlNode:v16];
    [(OADShape3D *)v8 setExtrusionColor:v17];
  }

  oAXMainNamespace4 = [stateCopy OAXMainNamespace];
  v19 = OCXFindChild(node, oAXMainNamespace4, "contourClr");

  if (v19)
  {
    v20 = [OAXColor readColorFromParentXmlNode:v19];
    [(OADShape3D *)v8 setContourColor:v20];
  }

  v30 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "z", &v30, 12))
  {
    v21 = v30 / 12700.0;
    *&v21 = v21;
    [(OADShape3D *)v8 setShapeDepth:v21];
  }

  v29 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "extrusionH", &v29))
  {
    v22 = v29 / 12700.0;
    *&v22 = v22;
    [(OADShape3D *)v8 setExtrusionHeight:v22];
  }

  v28 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "contourW", &v28))
  {
    v23 = v28 / 12700.0;
    *&v23 = v23;
    [(OADShape3D *)v8 setContourWidth:v23];
  }

  v24 = CXDefaultStringAttribute(node, CXNoNamespace, "prstMaterial", 0);
  if (v24)
  {
    materialEnumMap = [self materialEnumMap];
    v26 = [materialEnumMap valueForString:v24];

    [(OADShape3D *)v8 setMaterial:v26];
  }

  return v8;
}

+ (void)writeBevel:(id)bevel to:(id)to
{
  bevelCopy = bevel;
  toCopy = to;
  bevelTypeEnumMap = [self bevelTypeEnumMap];
  v8 = [bevelTypeEnumMap stringForValue:{objc_msgSend(bevelCopy, "type")}];

  [toCopy writeOAAttribute:@"prst" content:v8];
  v9 = MEMORY[0x277CCABB0];
  [bevelCopy width];
  *&v11 = v10 * 12700.0;
  v12 = [v9 numberWithFloat:v11];
  longValue = [v12 longValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"w" content:v14];

  v15 = MEMORY[0x277CCABB0];
  [bevelCopy height];
  *&v17 = v16 * 12700.0;
  v18 = [v15 numberWithFloat:v17];
  longValue2 = [v18 longValue];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"h" content:v20];
}

+ (void)writeShape3D:(id)d to:(id)to
{
  dCopy = d;
  toCopy = to;
  v7 = MEMORY[0x277CCABB0];
  [dCopy shapeDepth];
  *&v9 = v8 * 12700.0;
  v10 = [v7 numberWithFloat:v9];
  longValue = [v10 longValue];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"z" content:v12];

  v13 = MEMORY[0x277CCABB0];
  [dCopy extrusionHeight];
  *&v15 = v14 * 12700.0;
  v16 = [v13 numberWithFloat:v15];
  longValue2 = [v16 longValue];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"extrusionH" content:v18];

  v19 = MEMORY[0x277CCABB0];
  [dCopy contourWidth];
  *&v21 = v20 * 12700.0;
  v22 = [v19 numberWithFloat:v21];
  longValue3 = [v22 longValue];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
  [toCopy writeOAAttribute:@"contourW" content:v24];

  materialEnumMap = [self materialEnumMap];
  v26 = [materialEnumMap stringForValue:{objc_msgSend(dCopy, "material")}];

  [toCopy writeOAAttribute:@"prstMaterial" content:v26];
  topBevel = [dCopy topBevel];
  if (topBevel)
  {
    [toCopy startOAElement:@"bevelT"];
    [self writeBevel:topBevel to:toCopy];
    [toCopy endElement];
  }

  bottomBevel = [dCopy bottomBevel];
  if (bottomBevel)
  {
    [toCopy startOAElement:@"bevelB"];
    [self writeBevel:bottomBevel to:toCopy];
    [toCopy endElement];
  }

  extrusionColor = [dCopy extrusionColor];
  if (extrusionColor)
  {
    [toCopy startOAElement:@"extrusionClr"];
    [OAXColor writeColor:extrusionColor to:toCopy];
    [toCopy endElement];
  }

  contourColor = [dCopy contourColor];
  if (contourColor)
  {
    [toCopy startOAElement:@"contourClr"];
    [OAXColor writeColor:contourColor to:toCopy];
    [toCopy endElement];
  }
}

+ (void)writeShape3DMaterialOnly:(id)only to:(id)to
{
  onlyCopy = only;
  toCopy = to;
  if (![OAXShape3D isEmpty:onlyCopy])
  {
    materialEnumMap = [self materialEnumMap];
    v8 = [materialEnumMap stringForValue:{objc_msgSend(onlyCopy, "material")}];
    [toCopy writeOAAttribute:@"prstMaterial" content:v8];
  }
}

+ (BOOL)isEmpty:(id)empty
{
  emptyCopy = empty;
  v5 = emptyCopy;
  if (emptyCopy && [emptyCopy material])
  {
    materialEnumMap = [self materialEnumMap];
    v7 = [materialEnumMap stringForValue:{objc_msgSend(v5, "material")}];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (void)bevelTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_11, 0, &dword_25D297000);
  }
}

+ (void)materialEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_79, 0, &dword_25D297000);
  }
}

@end