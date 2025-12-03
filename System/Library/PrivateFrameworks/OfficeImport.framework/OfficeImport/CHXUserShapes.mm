@interface CHXUserShapes
+ (CGPoint)readRealPoint:(_xmlNode *)point;
+ (float)readRealCoordinate:(_xmlNode *)coordinate;
+ (id)readAbsoluteSizeAnchor:(_xmlNode *)anchor drawingState:(id)state;
+ (id)readDrawable:(_xmlNode *)drawable anchor:(id)anchor drawingState:(id)state;
+ (id)readRelativeSizeAnchor:(_xmlNode *)anchor drawingState:(id)state;
+ (void)readFromCharSpaceNode:(_xmlNode *)node state:(id)state;
@end

@implementation CHXUserShapes

+ (float)readRealCoordinate:(_xmlNode *)coordinate
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithContentOfXmlNode:coordinate];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (CGPoint)readRealPoint:(_xmlNode *)point
{
  [self readRealCoordinate:{OCXFirstChildNamed(point, "x")}];
  v6 = v5;
  [self readRealCoordinate:{OCXFirstChildNamed(point, "y")}];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (id)readDrawable:(_xmlNode *)drawable anchor:(id)anchor drawingState:(id)state
{
  anchorCopy = anchor;
  stateCopy = state;
  oAXChartDrawingNamespace = [stateCopy OAXChartDrawingNamespace];
  v10 = [OAXDrawable readDrawableFromXmlNode:drawable inNamespace:oAXChartDrawingNamespace drawingState:stateCopy];

  if (v10)
  {
    v11 = objc_alloc_init(CHDOfficeArtClient);
    [(CHDOfficeArtClient *)v11 setAnchor:anchorCopy];
    [v10 setClientData:v11];
  }

  return v10;
}

+ (id)readRelativeSizeAnchor:(_xmlNode *)anchor drawingState:(id)state
{
  stateCopy = state;
  v7 = OCXFirstChild(anchor);
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
    [self readRealPoint:v10];
    v12 = v11;
    v14 = v13;
    [self readRealPoint:v9];
    v16 = v15;
    v18 = v17;
    v19 = objc_alloc_init(CHDRelativeSizeAnchor);
    [(CHDRelativeSizeAnchor *)v19 setFrom:v12, v14];
    [(CHDRelativeSizeAnchor *)v19 setTo:v16, v18];
    v7 = [self readDrawable:v8 anchor:v19 drawingState:stateCopy];
  }

  return v7;
}

+ (id)readAbsoluteSizeAnchor:(_xmlNode *)anchor drawingState:(id)state
{
  stateCopy = state;
  v7 = OCXFirstChild(anchor);
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
    [self readRealPoint:v10];
    v12 = v11;
    v14 = v13;
    [OAXBaseTypes readSize2DFromXmlNode:v9];
    v16 = v15;
    v18 = v17;
    v19 = objc_alloc_init(CHDAbsoluteSizeAnchor);
    [(CHDAbsoluteSizeAnchor *)v19 setFrom:v12, v14];
    [(CHDAbsoluteSizeAnchor *)v19 setSize:v16, v18];
    v7 = [self readDrawable:v8 anchor:v19 drawingState:stateCopy];
  }

  return v7;
}

+ (void)readFromCharSpaceNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  drawingState = [stateCopy drawingState];
  oAXChartNamespace = [drawingState OAXChartNamespace];
  v8 = OCXFindChild(node, oAXChartNamespace, "userShapes");

  if (!v8)
  {
    goto LABEL_18;
  }

  chartPart = [stateCopy chartPart];
  drawingState2 = [stateCopy drawingState];
  v11 = [drawingState2 OCXReadRelationshipForNode:v8 packagePart:chartPart];

  package = [chartPart package];
  targetLocation = [v11 targetLocation];
  v14 = [package partForLocation:targetLocation];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = OCXGetRootElement([v14 xmlDocument]);
  v16 = v15;
  if (!v15 || !xmlStrEqual(v15->name, "userShapes"))
  {
    package2 = [chartPart package];
    targetLocation2 = [v11 targetLocation];
    [(CHXDrawingState *)package2 resetPartForLocation:targetLocation2];
    goto LABEL_16;
  }

  package2 = [[CHXDrawingState alloc] initWithCHXState:stateCopy];
  [(OAXDrawingState *)package2 setPackagePart:v14];
  drawingState3 = [stateCopy drawingState];
  styleMatrix = [drawingState3 styleMatrix];
  [(OAXDrawingState *)package2 setStyleMatrix:styleMatrix];

  drawingState4 = [stateCopy drawingState];
  targetBlipCollection = [drawingState4 targetBlipCollection];
  [(OAXDrawingState *)package2 setTargetBlipCollection:targetBlipCollection];

  for (i = OCXFirstChild(v16); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "relSizeAnchor"))
    {
      v23 = [self readRelativeSizeAnchor:i drawingState:package2];
    }

    else
    {
      if (!xmlStrEqual(i->name, "absSizeAnchor"))
      {
        continue;
      }

      v23 = [self readAbsoluteSizeAnchor:i drawingState:package2];
    }

    v24 = v23;
    if (v23)
    {
      chart = [stateCopy chart];
      [chart addChild:v24];
    }
  }

  targetLocation2 = [chartPart package];
  targetLocation3 = [v11 targetLocation];
  [targetLocation2 resetPartForLocation:targetLocation3];

LABEL_16:
LABEL_17:

LABEL_18:
}

@end