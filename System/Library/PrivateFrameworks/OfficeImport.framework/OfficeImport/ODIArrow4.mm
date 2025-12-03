@interface ODIArrow4
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (id)pointAtIndex:(unsigned int)index points:(id)points;
@end

@implementation ODIArrow4

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  v7 = [identifier isEqualToString:@"arrow4"];
  if (v7)
  {
    diagram = [stateCopy diagram];
    documentPoint = [diagram documentPoint];
    children = [documentPoint children];

    v11 = [children count];
    v12 = [self pointAtIndex:0 points:children];
    v13 = [self pointAtIndex:1 points:children];
    [ODIDrawable sizeOfDiagram:diagram];
    v16 = v15 / v14;
    [stateCopy setLogicalBounds:0 maintainAspectRatio:{0.0, 0.0, 1.0, v16}];
    v17 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.400000006, 0.25];
    LODWORD(v18) = -1028390912;
    v29 = v17;
    v28 = [ODIDrawable addShapeWithBounds:v17 rotation:stateCopy geometry:0.0 state:0.0, (v16 * 0.48), 0.330000013, v18];
    [ODIDrawable mapStyleForPresentationName:@"upArrow" point:v12 shape:v28 state:stateCopy];
    v19 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.400000006, 0.25];
    LODWORD(v20) = -1014562816;
    v21 = [ODIDrawable addShapeWithBounds:v19 rotation:stateCopy geometry:0.100000001 state:(v16 * 0.52), (v16 * 0.48), 0.330000013, v20];
    [ODIDrawable mapStyleForPresentationName:@"downArrow" point:v13 shape:v21 state:stateCopy];
    if (v11)
    {
      v30 = v13;
      v27 = diagram;
      v22 = +[ODIDrawable shapeGeometryForRectangle];
      v23 = [ODIDrawable addShapeWithBounds:v22 rotation:stateCopy geometry:0.340000004 state:0.0, 0.560000002, (v16 * 0.48), 0.0];

      [stateCopy setPresentationName:@"upArrowText" forPointType:2];
      [ODIDrawable mapStyleFromPoint:v12 shape:v23 state:stateCopy];
      [ODIText mapTextFromPoint:v12 toShape:v23 isCentered:0 includeChildren:1 state:stateCopy];

      diagram = v27;
      v13 = v30;
      if (v11 != 1)
      {
        v24 = +[ODIDrawable shapeGeometryForRectangle];
        v25 = [ODIDrawable addShapeWithBounds:v24 rotation:stateCopy geometry:0.439999998 state:(v16 * 0.52), 0.560000002, (v16 * 0.48), 0.0];

        [stateCopy setPresentationName:@"downArrowText" forPointType:2];
        [ODIDrawable mapStyleFromPoint:v30 shape:v25 state:stateCopy];
        [ODIText mapTextFromPoint:v30 toShape:v25 isCentered:0 includeChildren:1 state:stateCopy];

        diagram = v27;
        v13 = v30;
      }
    }
  }

  return v7;
}

+ (id)pointAtIndex:(unsigned int)index points:(id)points
{
  pointsCopy = points;
  if ([pointsCopy count] <= index)
  {
    v6 = objc_alloc_init(ODDNodePoint);
    [(ODDNodePoint *)v6 setType:2];
  }

  else
  {
    v6 = [pointsCopy objectAtIndex:index];
  }

  return v6;
}

@end