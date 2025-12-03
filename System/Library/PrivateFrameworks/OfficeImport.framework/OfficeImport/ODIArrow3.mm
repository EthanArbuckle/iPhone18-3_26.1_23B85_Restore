@interface ODIArrow3
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (id)pointAtIndex:(unsigned int)index points:(id)points;
@end

@implementation ODIArrow3

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  stateCopy = state;
  v7 = [identifier isEqualToString:@"arrow3"];
  if (v7)
  {
    diagram = [stateCopy diagram];
    documentPoint = [diagram documentPoint];
    children = [documentPoint children];
    v9 = [children count];
    v10 = [self pointAtIndex:0 points:children];
    v31 = [self pointAtIndex:1 points:children];
    [ODIDrawable sizeOfDiagram:diagram];
    v13 = v12 / v11;
    [stateCopy setLogicalBounds:0 maintainAspectRatio:{0.0, 0.0, 1.0, v13}];
    v14 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
    LODWORD(v15) = -1014562816;
    v28 = v14;
    v27 = [ODIDrawable addShapeWithBounds:v14 rotation:stateCopy geometry:0.119999997 state:(v13 * 0.05), (v13 * 0.41), 0.310000002, v15];
    [ODIDrawable mapStyleForPresentationName:@"downArrow" point:v10 shape:v27 state:stateCopy];
    v16 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.349999994, 0.25];
    LODWORD(v17) = -1028390912;
    v18 = [ODIDrawable addShapeWithBounds:v16 rotation:stateCopy geometry:0.569999993 state:(v13 * 0.54), (v13 * 0.41), 0.310000002, v17];
    [ODIDrawable mapStyleForPresentationName:@"upArrow" point:v31 shape:v18 state:stateCopy];
    if (v9)
    {
      v19 = +[ODIDrawable shapeGeometryForRectangle];
      v20 = [ODIDrawable addShapeWithBounds:v19 rotation:stateCopy geometry:0.529999971 state:0.0, 0.319999993, (v13 * 0.43), 0.0];

      [stateCopy setPresentationName:@"downArrowText" forPointType:2];
      [ODIDrawable mapStyleFromPoint:v10 shape:v20 state:stateCopy];
      [ODIText mapTextFromPoint:v10 toShape:v20 isCentered:1 includeChildren:1 state:stateCopy];

      if (v9 != 1)
      {
        v21 = +[ODIDrawable shapeGeometryForRectangle];
        v22 = [ODIDrawable addShapeWithBounds:v21 rotation:stateCopy geometry:0.150000006 state:(v13 * 0.57), 0.319999993, (v13 * 0.43), 0.0];

        [stateCopy setPresentationName:@"upArrowText" forPointType:2];
        [ODIDrawable mapStyleFromPoint:v31 shape:v22 state:stateCopy];
        [ODIText mapTextFromPoint:v31 toShape:v22 isCentered:1 includeChildren:1 state:stateCopy];
      }
    }

    v23 = +[ODIDrawable shapeGeometryForRectangle];
    *&v24 = v13 * -4.96;
    v25 = [ODIDrawable addShapeWithBounds:v23 rotation:stateCopy geometry:0.140000001 state:(v13 * 0.457), 0.72, (v13 * 0.023), v24];

    [ODIDrawable mapStyleForPresentationName:@"divider" point:documentPoint shape:v25 state:stateCopy];
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