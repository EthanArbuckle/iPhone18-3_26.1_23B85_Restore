@interface ODIArrow4
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (id)pointAtIndex:(unsigned int)a3 points:(id)a4;
@end

@implementation ODIArrow4

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = [a3 isEqualToString:@"arrow4"];
  if (v7)
  {
    v8 = [v6 diagram];
    v9 = [v8 documentPoint];
    v10 = [v9 children];

    v11 = [v10 count];
    v12 = [a1 pointAtIndex:0 points:v10];
    v13 = [a1 pointAtIndex:1 points:v10];
    [ODIDrawable sizeOfDiagram:v8];
    v16 = v15 / v14;
    [v6 setLogicalBounds:0 maintainAspectRatio:{0.0, 0.0, 1.0, v16}];
    v17 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.400000006, 0.25];
    LODWORD(v18) = -1028390912;
    v29 = v17;
    v28 = [ODIDrawable addShapeWithBounds:v17 rotation:v6 geometry:0.0 state:0.0, (v16 * 0.48), 0.330000013, v18];
    [ODIDrawable mapStyleForPresentationName:@"upArrow" point:v12 shape:v28 state:v6];
    v19 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.400000006, 0.25];
    LODWORD(v20) = -1014562816;
    v21 = [ODIDrawable addShapeWithBounds:v19 rotation:v6 geometry:0.100000001 state:(v16 * 0.52), (v16 * 0.48), 0.330000013, v20];
    [ODIDrawable mapStyleForPresentationName:@"downArrow" point:v13 shape:v21 state:v6];
    if (v11)
    {
      v30 = v13;
      v27 = v8;
      v22 = +[ODIDrawable shapeGeometryForRectangle];
      v23 = [ODIDrawable addShapeWithBounds:v22 rotation:v6 geometry:0.340000004 state:0.0, 0.560000002, (v16 * 0.48), 0.0];

      [v6 setPresentationName:@"upArrowText" forPointType:2];
      [ODIDrawable mapStyleFromPoint:v12 shape:v23 state:v6];
      [ODIText mapTextFromPoint:v12 toShape:v23 isCentered:0 includeChildren:1 state:v6];

      v8 = v27;
      v13 = v30;
      if (v11 != 1)
      {
        v24 = +[ODIDrawable shapeGeometryForRectangle];
        v25 = [ODIDrawable addShapeWithBounds:v24 rotation:v6 geometry:0.439999998 state:(v16 * 0.52), 0.560000002, (v16 * 0.48), 0.0];

        [v6 setPresentationName:@"downArrowText" forPointType:2];
        [ODIDrawable mapStyleFromPoint:v30 shape:v25 state:v6];
        [ODIText mapTextFromPoint:v30 toShape:v25 isCentered:0 includeChildren:1 state:v6];

        v8 = v27;
        v13 = v30;
      }
    }
  }

  return v7;
}

+ (id)pointAtIndex:(unsigned int)a3 points:(id)a4
{
  v5 = a4;
  if ([v5 count] <= a3)
  {
    v6 = objc_alloc_init(ODDNodePoint);
    [(ODDNodePoint *)v6 setType:2];
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

@end