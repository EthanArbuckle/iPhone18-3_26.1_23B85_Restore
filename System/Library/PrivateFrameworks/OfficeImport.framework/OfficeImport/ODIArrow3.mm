@interface ODIArrow3
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (id)pointAtIndex:(unsigned int)a3 points:(id)a4;
@end

@implementation ODIArrow3

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = [a3 isEqualToString:@"arrow3"];
  if (v7)
  {
    v30 = [v6 diagram];
    v29 = [v30 documentPoint];
    v8 = [v29 children];
    v9 = [v8 count];
    v10 = [a1 pointAtIndex:0 points:v8];
    v31 = [a1 pointAtIndex:1 points:v8];
    [ODIDrawable sizeOfDiagram:v30];
    v13 = v12 / v11;
    [v6 setLogicalBounds:0 maintainAspectRatio:{0.0, 0.0, 1.0, v13}];
    v14 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
    LODWORD(v15) = -1014562816;
    v28 = v14;
    v27 = [ODIDrawable addShapeWithBounds:v14 rotation:v6 geometry:0.119999997 state:(v13 * 0.05), (v13 * 0.41), 0.310000002, v15];
    [ODIDrawable mapStyleForPresentationName:@"downArrow" point:v10 shape:v27 state:v6];
    v16 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
    LODWORD(v17) = -1028390912;
    v18 = [ODIDrawable addShapeWithBounds:v16 rotation:v6 geometry:0.569999993 state:(v13 * 0.54), (v13 * 0.41), 0.310000002, v17];
    [ODIDrawable mapStyleForPresentationName:@"upArrow" point:v31 shape:v18 state:v6];
    if (v9)
    {
      v19 = +[ODIDrawable shapeGeometryForRectangle];
      v20 = [ODIDrawable addShapeWithBounds:v19 rotation:v6 geometry:0.529999971 state:0.0, 0.319999993, (v13 * 0.43), 0.0];

      [v6 setPresentationName:@"downArrowText" forPointType:2];
      [ODIDrawable mapStyleFromPoint:v10 shape:v20 state:v6];
      [ODIText mapTextFromPoint:v10 toShape:v20 isCentered:1 includeChildren:1 state:v6];

      if (v9 != 1)
      {
        v21 = +[ODIDrawable shapeGeometryForRectangle];
        v22 = [ODIDrawable addShapeWithBounds:v21 rotation:v6 geometry:0.150000006 state:(v13 * 0.57), 0.319999993, (v13 * 0.43), 0.0];

        [v6 setPresentationName:@"upArrowText" forPointType:2];
        [ODIDrawable mapStyleFromPoint:v31 shape:v22 state:v6];
        [ODIText mapTextFromPoint:v31 toShape:v22 isCentered:1 includeChildren:1 state:v6];
      }
    }

    v23 = +[ODIDrawable shapeGeometryForRectangle];
    *&v24 = v13 * -4.96;
    v25 = [ODIDrawable addShapeWithBounds:v23 rotation:v6 geometry:0.140000001 state:(v13 * 0.457), 0.72, (v13 * 0.023), v24];

    [ODIDrawable mapStyleForPresentationName:@"divider" point:v29 shape:v25 state:v6];
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