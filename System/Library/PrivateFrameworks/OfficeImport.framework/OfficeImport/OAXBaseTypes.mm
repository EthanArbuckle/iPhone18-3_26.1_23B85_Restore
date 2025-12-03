@interface OAXBaseTypes
+ (CGPoint)readPoint2DFromXmlNode:(_xmlNode *)node;
+ (CGSize)readSize2DFromXmlNode:(_xmlNode *)node;
+ (id)readPoint3DFromXmlNode:(_xmlNode *)node;
+ (id)readRelativeRectFromXmlNode:(_xmlNode *)node;
+ (id)readRotation3DFromXmlNode:(_xmlNode *)node;
+ (id)readVector3DFromXmlNode:(_xmlNode *)node;
+ (id)rectAlignmentEnumMap;
+ (id)stringForRectAlignment:(int)alignment;
+ (int)readRectAlignmentFromXmlNode:(_xmlNode *)node name:(const char *)name;
+ (void)rectAlignmentEnumMap;
+ (void)writeRectAlignment:(int)alignment to:(id)to;
+ (void)writeRelativeRect:(id)rect to:(id)to;
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

+ (CGPoint)readPoint2DFromXmlNode:(_xmlNode *)node
{
  [self readRequiredLengthFromXmlNode:node name:"x"];
  v6 = v5;
  [self readRequiredLengthFromXmlNode:node name:"y"];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (CGSize)readSize2DFromXmlNode:(_xmlNode *)node
{
  [self readRequiredLengthFromXmlNode:node name:"cx"];
  v6 = v5;
  [self readRequiredLengthFromXmlNode:node name:"cy"];
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (id)readRelativeRectFromXmlNode:(_xmlNode *)node
{
  if (node)
  {
    [self readOptionalFractionFromXmlNode:node name:"l"];
    v6 = v5;
    [self readOptionalFractionFromXmlNode:node name:"t"];
    v8 = v7;
    [self readOptionalFractionFromXmlNode:node name:"r"];
    v10 = v9;
    [self readOptionalFractionFromXmlNode:node name:"b"];
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

+ (id)stringForRectAlignment:(int)alignment
{
  v3 = *&alignment;
  rectAlignmentEnumMap = [self rectAlignmentEnumMap];
  v5 = [rectAlignmentEnumMap stringForValue:v3];

  return v5;
}

+ (void)writeRelativeRect:(id)rect to:(id)to
{
  rectCopy = rect;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [rectCopy left];
  *&v8 = v7 * 100000.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"l" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [rectCopy top];
  *&v14 = v13 * 100000.0;
  v15 = [v12 numberWithFloat:v14];
  longValue2 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"t" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [rectCopy right];
  *&v20 = v19 * 100000.0;
  v21 = [v18 numberWithFloat:v20];
  longValue3 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
  [toCopy writeOAAttribute:@"r" content:v23];

  v24 = MEMORY[0x277CCABB0];
  [rectCopy bottom];
  *&v26 = v25 * 100000.0;
  v27 = [v24 numberWithFloat:v26];
  longValue4 = [v27 longValue];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue4];
  [toCopy writeOAAttribute:@"b" content:v29];
}

+ (int)readRectAlignmentFromXmlNode:(_xmlNode *)node name:(const char *)name
{
  v5 = CXDefaultStringAttribute(node, CXNoNamespace, name, 0);
  if (v5)
  {
    rectAlignmentEnumMap = [self rectAlignmentEnumMap];
    v7 = [rectAlignmentEnumMap valueForString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)writeRectAlignment:(int)alignment to:(id)to
{
  v4 = *&alignment;
  toCopy = to;
  rectAlignmentEnumMap = [self rectAlignmentEnumMap];
  v7 = [rectAlignmentEnumMap stringForValue:v4];

  [toCopy writeOAAttribute:@"algn" content:v7];
}

+ (id)readVector3DFromXmlNode:(_xmlNode *)node
{
  [self readRequiredLengthFromXmlNode:node name:"dx"];
  v6 = v5;
  [self readRequiredLengthFromXmlNode:node name:"dy"];
  v8 = v7;
  [self readRequiredLengthFromXmlNode:node name:"dz"];
  v10 = v9;
  v11 = [OADVector3D alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(OADVector3D *)v11 initWithDx:v12 dy:v13 dz:v14];

  return v15;
}

+ (id)readPoint3DFromXmlNode:(_xmlNode *)node
{
  [self readRequiredLengthFromXmlNode:node name:"x"];
  v6 = v5;
  [self readRequiredLengthFromXmlNode:node name:"y"];
  v8 = v7;
  [self readRequiredLengthFromXmlNode:node name:"z"];
  v10 = v9;
  v11 = [OADPoint3D alloc];
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v10;
  v15 = [(OADPoint3D *)v11 initWithX:v12 y:v13 z:v14];

  return v15;
}

+ (id)readRotation3DFromXmlNode:(_xmlNode *)node
{
  [self readRequiredAngleFromXmlNode:node name:"lat"];
  v6 = v5;
  [self readRequiredAngleFromXmlNode:node name:"lon"];
  v8 = v7;
  [self readRequiredAngleFromXmlNode:node name:"rev"];
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