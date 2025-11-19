@interface CHXUserShapes
+ (CGPoint)readRealPoint:(_xmlNode *)a3;
+ (float)readRealCoordinate:(_xmlNode *)a3;
+ (id)readAbsoluteSizeAnchor:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readDrawable:(_xmlNode *)a3 anchor:(id)a4 drawingState:(id)a5;
+ (id)readRelativeSizeAnchor:(_xmlNode *)a3 drawingState:(id)a4;
+ (void)readFromCharSpaceNode:(_xmlNode *)a3 state:(id)a4;
@end

@implementation CHXUserShapes

+ (float)readRealCoordinate:(_xmlNode *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (CGPoint)readRealPoint:(_xmlNode *)a3
{
  [a1 readRealCoordinate:{OCXFirstChildNamed(a3, "x")}];
  v6 = v5;
  [a1 readRealCoordinate:{OCXFirstChildNamed(a3, "y")}];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (id)readDrawable:(_xmlNode *)a3 anchor:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 OAXChartDrawingNamespace];
  v10 = [OAXDrawable readDrawableFromXmlNode:a3 inNamespace:v9 drawingState:v8];

  if (v10)
  {
    v11 = objc_alloc_init(CHDOfficeArtClient);
    [(CHDOfficeArtClient *)v11 setAnchor:v7];
    [v10 setClientData:v11];
  }

  return v10;
}

+ (id)readRelativeSizeAnchor:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = OCXFirstChild(a3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (v7)
  {
    if (xmlStrEqual(v7->name, "from"))
    {
      v10 = v7;
    }

    else if (xmlStrEqual(v7->name, "to"))
    {
      v9 = v7;
    }

    else
    {
      v8 = v7;
    }

    v7 = OCXNextSibling(v7);
  }

  if (v10 && v9 && v8)
  {
    [a1 readRealPoint:v10];
    v12 = v11;
    v14 = v13;
    [a1 readRealPoint:v9];
    v16 = v15;
    v18 = v17;
    v19 = objc_alloc_init(CHDRelativeSizeAnchor);
    [(CHDRelativeSizeAnchor *)v19 setFrom:v12, v14];
    [(CHDRelativeSizeAnchor *)v19 setTo:v16, v18];
    v7 = [a1 readDrawable:v8 anchor:v19 drawingState:v6];
  }

  return v7;
}

+ (id)readAbsoluteSizeAnchor:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = OCXFirstChild(a3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (v7)
  {
    if (xmlStrEqual(v7->name, "from"))
    {
      v10 = v7;
    }

    else if (xmlStrEqual(v7->name, "ext"))
    {
      v9 = v7;
    }

    else
    {
      v8 = v7;
    }

    v7 = OCXNextSibling(v7);
  }

  if (v10 && v9 && v8)
  {
    [a1 readRealPoint:v10];
    v12 = v11;
    v14 = v13;
    [OAXBaseTypes readSize2DFromXmlNode:v9];
    v16 = v15;
    v18 = v17;
    v19 = objc_alloc_init(CHDAbsoluteSizeAnchor);
    [(CHDAbsoluteSizeAnchor *)v19 setFrom:v12, v14];
    [(CHDAbsoluteSizeAnchor *)v19 setSize:v16, v18];
    v7 = [a1 readDrawable:v8 anchor:v19 drawingState:v6];
  }

  return v7;
}

+ (void)readFromCharSpaceNode:(_xmlNode *)a3 state:(id)a4
{
  v28 = a4;
  v6 = [v28 drawingState];
  v7 = [v6 OAXChartNamespace];
  v8 = OCXFindChild(a3, v7, "userShapes");

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v28 chartPart];
  v10 = [v28 drawingState];
  v11 = [v10 OCXReadRelationshipForNode:v8 packagePart:v9];

  v12 = [v9 package];
  v13 = [v11 targetLocation];
  v14 = [v12 partForLocation:v13];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = OCXGetRootElement([v14 xmlDocument]);
  v16 = v15;
  if (!v15 || !xmlStrEqual(v15->name, "userShapes"))
  {
    v17 = [v9 package];
    v26 = [v11 targetLocation];
    [(CHXDrawingState *)v17 resetPartForLocation:v26];
    goto LABEL_16;
  }

  v17 = [[CHXDrawingState alloc] initWithCHXState:v28];
  [(OAXDrawingState *)v17 setPackagePart:v14];
  v18 = [v28 drawingState];
  v19 = [v18 styleMatrix];
  [(OAXDrawingState *)v17 setStyleMatrix:v19];

  v20 = [v28 drawingState];
  v21 = [v20 targetBlipCollection];
  [(OAXDrawingState *)v17 setTargetBlipCollection:v21];

  for (i = OCXFirstChild(v16); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "relSizeAnchor"))
    {
      v23 = [a1 readRelativeSizeAnchor:i drawingState:v17];
    }

    else
    {
      if (!xmlStrEqual(i->name, "absSizeAnchor"))
      {
        continue;
      }

      v23 = [a1 readAbsoluteSizeAnchor:i drawingState:v17];
    }

    v24 = v23;
    if (v23)
    {
      v25 = [v28 chart];
      [v25 addChild:v24];
    }
  }

  v26 = [v9 package];
  v27 = [v11 targetLocation];
  [v26 resetPartForLocation:v27];

LABEL_16:
LABEL_17:

LABEL_18:
}

@end