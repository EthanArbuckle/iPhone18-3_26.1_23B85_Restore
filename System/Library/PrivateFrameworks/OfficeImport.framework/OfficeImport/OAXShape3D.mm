@interface OAXShape3D
+ (BOOL)isEmpty:(id)a3;
+ (id)bevelTypeEnumMap;
+ (id)materialEnumMap;
+ (id)readBevelFromXmlNode:(_xmlNode *)a3;
+ (id)readShape3DFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5;
+ (void)bevelTypeEnumMap;
+ (void)materialEnumMap;
+ (void)writeBevel:(id)a3 to:(id)a4;
+ (void)writeShape3D:(id)a3 to:(id)a4;
+ (void)writeShape3DMaterialOnly:(id)a3 to:(id)a4;
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

+ (id)readBevelFromXmlNode:(_xmlNode *)a3
{
  v5 = objc_alloc_init(OADBevel);
  v13 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "w", &v13))
  {
    v6 = v13 / 12700.0;
    *&v6 = v6;
    [(OADBevel *)v5 setWidth:v6];
  }

  v12 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "h", &v12))
  {
    v7 = v12 / 12700.0;
    *&v7 = v7;
    [(OADBevel *)v5 setHeight:v7];
  }

  v8 = CXDefaultStringAttribute(a3, CXNoNamespace, "prst", 0);
  if (v8)
  {
    v9 = [a1 bevelTypeEnumMap];
    v10 = [v9 valueForString:v8];

    [(OADBevel *)v5 setType:v10];
  }

  return v5;
}

+ (id)readShape3DFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(OADShape3D);
  v9 = [v7 OAXMainNamespace];
  v10 = OCXFindChild(a3, v9, "bevelT");

  if (v10)
  {
    v11 = [a1 readBevelFromXmlNode:v10];
    [(OADShape3D *)v8 setTopBevel:v11];
  }

  v12 = [v7 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "bevelB");

  if (v13)
  {
    v14 = [a1 readBevelFromXmlNode:v13];
    [(OADShape3D *)v8 setBottomBevel:v14];
  }

  v15 = [v7 OAXMainNamespace];
  v16 = OCXFindChild(a3, v15, "extrusionClr");

  if (v16)
  {
    v17 = [OAXColor readColorFromParentXmlNode:v16];
    [(OADShape3D *)v8 setExtrusionColor:v17];
  }

  v18 = [v7 OAXMainNamespace];
  v19 = OCXFindChild(a3, v18, "contourClr");

  if (v19)
  {
    v20 = [OAXColor readColorFromParentXmlNode:v19];
    [(OADShape3D *)v8 setContourColor:v20];
  }

  v30 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "z", &v30, 12))
  {
    v21 = v30 / 12700.0;
    *&v21 = v21;
    [(OADShape3D *)v8 setShapeDepth:v21];
  }

  v29 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "extrusionH", &v29))
  {
    v22 = v29 / 12700.0;
    *&v22 = v22;
    [(OADShape3D *)v8 setExtrusionHeight:v22];
  }

  v28 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "contourW", &v28))
  {
    v23 = v28 / 12700.0;
    *&v23 = v23;
    [(OADShape3D *)v8 setContourWidth:v23];
  }

  v24 = CXDefaultStringAttribute(a3, CXNoNamespace, "prstMaterial", 0);
  if (v24)
  {
    v25 = [a1 materialEnumMap];
    v26 = [v25 valueForString:v24];

    [(OADShape3D *)v8 setMaterial:v26];
  }

  return v8;
}

+ (void)writeBevel:(id)a3 to:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [a1 bevelTypeEnumMap];
  v8 = [v7 stringForValue:{objc_msgSend(v21, "type")}];

  [v6 writeOAAttribute:@"prst" content:v8];
  v9 = MEMORY[0x277CCABB0];
  [v21 width];
  *&v11 = v10 * 12700.0;
  v12 = [v9 numberWithFloat:v11];
  v13 = [v12 longValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v13];
  [v6 writeOAAttribute:@"w" content:v14];

  v15 = MEMORY[0x277CCABB0];
  [v21 height];
  *&v17 = v16 * 12700.0;
  v18 = [v15 numberWithFloat:v17];
  v19 = [v18 longValue];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v19];
  [v6 writeOAAttribute:@"h" content:v20];
}

+ (void)writeShape3D:(id)a3 to:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCABB0];
  [v31 shapeDepth];
  *&v9 = v8 * 12700.0;
  v10 = [v7 numberWithFloat:v9];
  v11 = [v10 longValue];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v11];
  [v6 writeOAAttribute:@"z" content:v12];

  v13 = MEMORY[0x277CCABB0];
  [v31 extrusionHeight];
  *&v15 = v14 * 12700.0;
  v16 = [v13 numberWithFloat:v15];
  v17 = [v16 longValue];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v17];
  [v6 writeOAAttribute:@"extrusionH" content:v18];

  v19 = MEMORY[0x277CCABB0];
  [v31 contourWidth];
  *&v21 = v20 * 12700.0;
  v22 = [v19 numberWithFloat:v21];
  v23 = [v22 longValue];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v23];
  [v6 writeOAAttribute:@"contourW" content:v24];

  v25 = [a1 materialEnumMap];
  v26 = [v25 stringForValue:{objc_msgSend(v31, "material")}];

  [v6 writeOAAttribute:@"prstMaterial" content:v26];
  v27 = [v31 topBevel];
  if (v27)
  {
    [v6 startOAElement:@"bevelT"];
    [a1 writeBevel:v27 to:v6];
    [v6 endElement];
  }

  v28 = [v31 bottomBevel];
  if (v28)
  {
    [v6 startOAElement:@"bevelB"];
    [a1 writeBevel:v28 to:v6];
    [v6 endElement];
  }

  v29 = [v31 extrusionColor];
  if (v29)
  {
    [v6 startOAElement:@"extrusionClr"];
    [OAXColor writeColor:v29 to:v6];
    [v6 endElement];
  }

  v30 = [v31 contourColor];
  if (v30)
  {
    [v6 startOAElement:@"contourClr"];
    [OAXColor writeColor:v30 to:v6];
    [v6 endElement];
  }
}

+ (void)writeShape3DMaterialOnly:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![OAXShape3D isEmpty:v9])
  {
    v7 = [a1 materialEnumMap];
    v8 = [v7 stringForValue:{objc_msgSend(v9, "material")}];
    [v6 writeOAAttribute:@"prstMaterial" content:v8];
  }
}

+ (BOOL)isEmpty:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 material])
  {
    v6 = [a1 materialEnumMap];
    v7 = [v6 stringForValue:{objc_msgSend(v5, "material")}];
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