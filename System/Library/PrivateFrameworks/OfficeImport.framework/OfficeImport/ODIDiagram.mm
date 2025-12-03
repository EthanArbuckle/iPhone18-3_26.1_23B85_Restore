@interface ODIDiagram
+ (id)mapDiagram:(id)diagram drawingTheme:(id)theme;
+ (void)mapLayoutTypeId:(id)id state:(id)state;
@end

@implementation ODIDiagram

+ (id)mapDiagram:(id)diagram drawingTheme:(id)theme
{
  diagramCopy = diagram;
  themeCopy = theme;
  v7 = objc_alloc_init(OADGroup);
  -[OADDrawable setHidden:](v7, "setHidden:", [diagramCopy hidden]);
  -[OADDrawable setId:](v7, "setId:", [diagramCopy id]);
  drawableProperties = [diagramCopy drawableProperties];
  altDescription = [drawableProperties altDescription];
  drawableProperties2 = [(OADDrawable *)v7 drawableProperties];
  [drawableProperties2 setAltDescription:altDescription];

  drawableProperties3 = [diagramCopy drawableProperties];
  orientedBounds = [drawableProperties3 orientedBounds];
  drawableProperties4 = [(OADDrawable *)v7 drawableProperties];
  [drawableProperties4 setOrientedBounds:orientedBounds];

  drawableProperties5 = [(OADDrawable *)v7 drawableProperties];
  drawableProperties6 = [diagramCopy drawableProperties];
  [drawableProperties5 setAspectRatioLocked:{objc_msgSend(drawableProperties6, "isAspectRatioLocked")}];

  drawableProperties7 = [diagramCopy drawableProperties];
  clickHyperlink = [drawableProperties7 clickHyperlink];
  drawableProperties8 = [(OADDrawable *)v7 drawableProperties];
  [drawableProperties8 setClickHyperlink:clickHyperlink];

  drawableProperties9 = [diagramCopy drawableProperties];
  hoverHyperlink = [drawableProperties9 hoverHyperlink];
  drawableProperties10 = [(OADDrawable *)v7 drawableProperties];
  [drawableProperties10 setHoverHyperlink:hoverHyperlink];

  drawableProperties11 = [(OADDrawable *)v7 drawableProperties];
  drawableProperties12 = [diagramCopy drawableProperties];
  [drawableProperties11 setWrdInline:{objc_msgSend(drawableProperties12, "isWrdInline")}];

  clientData = [diagramCopy clientData];
  [(OADDrawable *)v7 setClientData:clientData];

  parent = [diagramCopy parent];
  [(OADDrawable *)v7 setParent:parent];

  drawableProperties13 = [diagramCopy drawableProperties];
  orientedBounds2 = [drawableProperties13 orientedBounds];

  v28 = [OADOrientedBounds alloc];
  [orientedBounds2 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [orientedBounds2 rotation];
  v38 = v37;
  flipX = [orientedBounds2 flipX];
  flipY = [orientedBounds2 flipY];
  LODWORD(v41) = v38;
  v42 = [(OADOrientedBounds *)v28 initWithBounds:flipX rotation:flipY flipX:v30 flipY:v32, v34, v36, v41];

  drawableProperties14 = [(OADDrawable *)v7 drawableProperties];
  [drawableProperties14 setOrientedBounds:v42];

  equivalentDrawables = [diagramCopy equivalentDrawables];
  if ([equivalentDrawables count])
  {
    [(OADGroup *)v7 addChildren:equivalentDrawables];
    [(OADOrientedBounds *)v42 bounds];
    [(OADGroup *)v7 setLogicalBounds:TSURectWithSize()];
  }

  else
  {
    v45 = [[ODIState alloc] initWithDiagram:diagramCopy group:v7 drawingTheme:themeCopy];
    documentPoint = [diagramCopy documentPoint];
    children = [documentPoint children];
    v48 = [children count];

    if (v48)
    {
      propertySet = [documentPoint propertySet];
      layoutTypeId = [propertySet layoutTypeId];
      [self mapLayoutTypeId:layoutTypeId state:v45];
    }
  }

  return v7;
}

void __38__ODIDiagram_mapDiagram_drawingTheme___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

+ (void)mapLayoutTypeId:(id)id state:(id)state
{
  idCopy = id;
  stateCopy = state;
  if ([idCopy hasPrefix:@"urn:microsoft.com/office/officeart/2005/8/layout/"])
  {
    v6 = @"urn:microsoft.com/office/officeart/2005/8/layout/";
  }

  else
  {
    if (([idCopy hasPrefix:@"urn:microsoft.com/office/officeart/2008/layout/"] & 1) == 0)
    {
      [ODILinear mapUnknownWithState:stateCopy];
      goto LABEL_29;
    }

    v6 = @"urn:microsoft.com/office/officeart/2008/layout/";
  }

  v7 = [idCopy rangeOfString:@"#"];
  if (v8)
  {
    v9 = [idCopy substringToIndex:v7];

    idCopy = v9;
  }

  v10 = [idCopy substringFromIndex:{-[__CFString length](v6, "length")}];
  if ([v10 isEqualToString:@"AlternatingHexagons"])
  {
    v11 = @"vList2";
  }

  else if ([v10 isEqualToString:@"AlternatingPictureBlocks"])
  {
    v11 = @"vList7";
  }

  else if ([v10 isEqualToString:@"LinedList"])
  {
    v11 = @"vList8";
  }

  else
  {
    if (![v10 isEqualToString:@"AccentedPicture"])
    {
      goto LABEL_17;
    }

    v11 = @"vList9";
  }

  v10 = v11;
LABEL_17:
  if (![ODIBending mapIdentifier:v10 state:stateCopy]&& ![ODILinear mapIdentifier:v10 state:stateCopy]&& ![ODICycle mapIdentifier:v10 state:stateCopy]&& ![ODIVenn mapIdentifier:v10 state:stateCopy]&& ![ODIPyramid mapIdentifier:v10 state:stateCopy]&& ![ODIHierarchy mapIdentifier:v10 state:stateCopy]&& ![ODIArrow mapIdentifier:v10 state:stateCopy]&& ![ODIArrow3 mapIdentifier:v10 state:stateCopy]&& ![ODIArrow4 mapIdentifier:v10 state:stateCopy]&& ![ODIHorizonalList3 mapIdentifier:v10 state:stateCopy])
  {
    [ODILinear mapUnknownWithState:stateCopy];
  }

LABEL_29:
}

@end