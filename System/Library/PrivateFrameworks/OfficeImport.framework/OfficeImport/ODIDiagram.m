@interface ODIDiagram
+ (id)mapDiagram:(id)a3 drawingTheme:(id)a4;
+ (void)mapLayoutTypeId:(id)a3 state:(id)a4;
@end

@implementation ODIDiagram

+ (id)mapDiagram:(id)a3 drawingTheme:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(OADGroup);
  -[OADDrawable setHidden:](v7, "setHidden:", [v5 hidden]);
  -[OADDrawable setId:](v7, "setId:", [v5 id]);
  v8 = [v5 drawableProperties];
  v9 = [v8 altDescription];
  v10 = [(OADDrawable *)v7 drawableProperties];
  [v10 setAltDescription:v9];

  v11 = [v5 drawableProperties];
  v12 = [v11 orientedBounds];
  v13 = [(OADDrawable *)v7 drawableProperties];
  [v13 setOrientedBounds:v12];

  v14 = [(OADDrawable *)v7 drawableProperties];
  v15 = [v5 drawableProperties];
  [v14 setAspectRatioLocked:{objc_msgSend(v15, "isAspectRatioLocked")}];

  v16 = [v5 drawableProperties];
  v17 = [v16 clickHyperlink];
  v18 = [(OADDrawable *)v7 drawableProperties];
  [v18 setClickHyperlink:v17];

  v19 = [v5 drawableProperties];
  v20 = [v19 hoverHyperlink];
  v21 = [(OADDrawable *)v7 drawableProperties];
  [v21 setHoverHyperlink:v20];

  v22 = [(OADDrawable *)v7 drawableProperties];
  v23 = [v5 drawableProperties];
  [v22 setWrdInline:{objc_msgSend(v23, "isWrdInline")}];

  v24 = [v5 clientData];
  [(OADDrawable *)v7 setClientData:v24];

  v25 = [v5 parent];
  [(OADDrawable *)v7 setParent:v25];

  v26 = [v5 drawableProperties];
  v27 = [v26 orientedBounds];

  v28 = [OADOrientedBounds alloc];
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v27 rotation];
  v38 = v37;
  v39 = [v27 flipX];
  v40 = [v27 flipY];
  LODWORD(v41) = v38;
  v42 = [(OADOrientedBounds *)v28 initWithBounds:v39 rotation:v40 flipX:v30 flipY:v32, v34, v36, v41];

  v43 = [(OADDrawable *)v7 drawableProperties];
  [v43 setOrientedBounds:v42];

  v44 = [v5 equivalentDrawables];
  if ([v44 count])
  {
    [(OADGroup *)v7 addChildren:v44];
    [(OADOrientedBounds *)v42 bounds];
    [(OADGroup *)v7 setLogicalBounds:TSURectWithSize()];
  }

  else
  {
    v45 = [[ODIState alloc] initWithDiagram:v5 group:v7 drawingTheme:v6];
    v46 = [v5 documentPoint];
    v47 = [v46 children];
    v48 = [v47 count];

    if (v48)
    {
      v49 = [v46 propertySet];
      v50 = [v49 layoutTypeId];
      [a1 mapLayoutTypeId:v50 state:v45];
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

+ (void)mapLayoutTypeId:(id)a3 state:(id)a4
{
  v12 = a3;
  v5 = a4;
  if ([v12 hasPrefix:@"urn:microsoft.com/office/officeart/2005/8/layout/"])
  {
    v6 = @"urn:microsoft.com/office/officeart/2005/8/layout/";
  }

  else
  {
    if (([v12 hasPrefix:@"urn:microsoft.com/office/officeart/2008/layout/"] & 1) == 0)
    {
      [ODILinear mapUnknownWithState:v5];
      goto LABEL_29;
    }

    v6 = @"urn:microsoft.com/office/officeart/2008/layout/";
  }

  v7 = [v12 rangeOfString:@"#"];
  if (v8)
  {
    v9 = [v12 substringToIndex:v7];

    v12 = v9;
  }

  v10 = [v12 substringFromIndex:{-[__CFString length](v6, "length")}];
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
  if (![ODIBending mapIdentifier:v10 state:v5]&& ![ODILinear mapIdentifier:v10 state:v5]&& ![ODICycle mapIdentifier:v10 state:v5]&& ![ODIVenn mapIdentifier:v10 state:v5]&& ![ODIPyramid mapIdentifier:v10 state:v5]&& ![ODIHierarchy mapIdentifier:v10 state:v5]&& ![ODIArrow mapIdentifier:v10 state:v5]&& ![ODIArrow3 mapIdentifier:v10 state:v5]&& ![ODIArrow4 mapIdentifier:v10 state:v5]&& ![ODIHorizonalList3 mapIdentifier:v10 state:v5])
  {
    [ODILinear mapUnknownWithState:v5];
  }

LABEL_29:
}

@end