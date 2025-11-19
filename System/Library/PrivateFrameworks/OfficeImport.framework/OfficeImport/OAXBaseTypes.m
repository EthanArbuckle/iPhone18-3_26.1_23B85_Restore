@interface OAXBaseTypes
+ (CGPoint)readPoint2DFromXmlNode:(_xmlNode *)a3;
+ (CGSize)readSize2DFromXmlNode:(_xmlNode *)a3;
+ (id)readPoint3DFromXmlNode:(_xmlNode *)a3;
+ (id)readRelativeRectFromXmlNode:(_xmlNode *)a3;
+ (id)readRotation3DFromXmlNode:(_xmlNode *)a3;
+ (id)readVector3DFromXmlNode:(_xmlNode *)a3;
+ (id)rectAlignmentEnumMap;
+ (id)stringForRectAlignment:(int)a3;
+ (int)readRectAlignmentFromXmlNode:(_xmlNode *)a3 name:(const char *)a4;
+ (void)rectAlignmentEnumMap;
+ (void)writeRectAlignment:(int)a3 to:(id)a4;
+ (void)writeRelativeRect:(id)a3 to:(id)a4;
@end

@implementation OAXBaseTypes

+ (id)rectAlignmentEnumMap
{
  v2 = +[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumMap;
  if (!+[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumMap)
  {
    {
      +[OAXBaseTypes rectAlignmentEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumStructs count:9 caseSensitive:1];
    v4 = +[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumMap;
    +[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumMap = v3;

    v2 = +[OAXBaseTypes rectAlignmentEnumMap]::rectAlignmentEnumMap;
  }

  return v2;
}

+ (CGPoint)readPoint2DFromXmlNode:(_xmlNode *)a3
{
  [a1 readRequiredLengthFromXmlNode:a3 name:"x"];
  v6 = v5;
  [a1 readRequiredLengthFromXmlNode:a3 name:"y"];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (CGSize)readSize2DFromXmlNode:(_xmlNode *)a3
{
  [a1 readRequiredLengthFromXmlNode:a3 name:"cx"];
  v6 = v5;
  [a1 readRequiredLengthFromXmlNode:a3 name:"cy"];
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (id)readRelativeRectFromXmlNode:(_xmlNode *)a3
{
  if (a3)
  {
    [a1 readOptionalFractionFromXmlNode:a3 name:"l"];
    v6 = v5;
    [a1 readOptionalFractionFromXmlNode:a3 name:"t"];
    v8 = v7;
    [a1 readOptionalFractionFromXmlNode:a3 name:"r"];
    v10 = v9;
    [a1 readOptionalFractionFromXmlNode:a3 name:"b"];
    v12 = v11;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  v13 = [OADRelativeRect alloc];
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  LODWORD(v16) = v10;
  LODWORD(v17) = v12;
  v18 = [(OADRelativeRect *)v13 initWithLeft:v14 top:v15 right:v16 bottom:v17];

  return v18;
}

+ (id)stringForRectAlignment:(int)a3
{
  v3 = *&a3;
  v4 = [a1 rectAlignmentEnumMap];
  v5 = [v4 stringForValue:v3];

  return v5;
}

+ (void)writeRelativeRect:(id)a3 to:(id)a4
{
  v30 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v30 left];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"l" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [v30 top];
  *&v14 = v13 * 100000.0;
  v15 = [v12 numberWithFloat:v14];
  v16 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v16];
  [v5 writeOAAttribute:@"t" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [v30 right];
  *&v20 = v19 * 100000.0;
  v21 = [v18 numberWithFloat:v20];
  v22 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v22];
  [v5 writeOAAttribute:@"r" content:v23];

  v24 = MEMORY[0x277CCABB0];
  [v30 bottom];
  *&v26 = v25 * 100000.0;
  v27 = [v24 numberWithFloat:v26];
  v28 = [v27 longValue];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v28];
  [v5 writeOAAttribute:@"b" content:v29];
}

+ (int)readRectAlignmentFromXmlNode:(_xmlNode *)a3 name:(const char *)a4
{
  v5 = CXDefaultStringAttribute(a3, CXNoNamespace, a4, 0);
  if (v5)
  {
    v6 = [a1 rectAlignmentEnumMap];
    v7 = [v6 valueForString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)writeRectAlignment:(int)a3 to:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [a1 rectAlignmentEnumMap];
  v7 = [v6 stringForValue:v4];

  [v8 writeOAAttribute:@"algn" content:v7];
}

+ (id)readVector3DFromXmlNode:(_xmlNode *)a3
{
  [a1 readRequiredLengthFromXmlNode:a3 name:"dx"];
  v6 = v5;
  [a1 readRequiredLengthFromXmlNode:a3 name:"dy"];
  v8 = v7;
  [a1 readRequiredLengthFromXmlNode:a3 name:"dz"];
  v10 = v9;
  v11 = [OADVector3D alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(OADVector3D *)v11 initWithDx:v12 dy:v13 dz:v14];

  return v15;
}

+ (id)readPoint3DFromXmlNode:(_xmlNode *)a3
{
  [a1 readRequiredLengthFromXmlNode:a3 name:"x"];
  v6 = v5;
  [a1 readRequiredLengthFromXmlNode:a3 name:"y"];
  v8 = v7;
  [a1 readRequiredLengthFromXmlNode:a3 name:"z"];
  v10 = v9;
  v11 = [OADPoint3D alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(OADPoint3D *)v11 initWithX:v12 y:v13 z:v14];

  return v15;
}

+ (id)readRotation3DFromXmlNode:(_xmlNode *)a3
{
  [a1 readRequiredAngleFromXmlNode:a3 name:"lat"];
  v6 = v5;
  [a1 readRequiredAngleFromXmlNode:a3 name:"lon"];
  v8 = v7;
  [a1 readRequiredAngleFromXmlNode:a3 name:"rev"];
  v10 = v9;
  v11 = [OADRotation3D alloc];
  *&v12 = v6;
  *&v13 = v8;
  *&v14 = v10;
  v15 = [(OADRotation3D *)v11 initWithLatitude:v12 longitude:v13 revolution:v14];

  return v15;
}

+ (void)rectAlignmentEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_25D297000);
  }
}

@end