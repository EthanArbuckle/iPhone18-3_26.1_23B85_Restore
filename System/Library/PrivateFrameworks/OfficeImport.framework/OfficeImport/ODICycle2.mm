@interface ODICycle2
+ (BOOL)map1NodeWithState:(id)state;
+ (BOOL)map2NodeWithState:(id)state;
+ (CGRect)mapGSpaceWithState:(id)state;
+ (CGSize)nodeSizeWithState:(id)state;
+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state;
+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state;
@end

@implementation ODICycle2

+ (CGSize)nodeSizeWithState:(id)state
{
  [self nodeRadiusWithState:state];
  v4 = (v3 + v3);
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGRect)mapGSpaceWithState:(id)state
{
  [self boundingBoxWithIsTight:1 state:state];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state
{
  v6 = *&index;
  nodeCopy = node;
  stateCopy = state;
  [self nodeBoundsWithIndex:v6 state:stateCopy];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = +[ODIDrawable shapeGeometryForEllipse];
  v18 = [ODIDrawable addShapeWithBounds:v17 rotation:stateCopy geometry:v10 state:v12, v14, v16, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v18 state:stateCopy];
}

+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  v9 = [self nodeCountWithState:stateCopy];
  [self nodeRadiusWithState:stateCopy];
  v11 = v10;
  LODWORD(self) = (2 * index) | 1;
  v13 = __sincos_stret(3.14159265 / v9);
  cosval = v13.__cosval;
  v12 = self * 3.14159265 / v9 + -1.57079633;
  v15 = __sincosf_stret(v12);
  v16 = -((v11 + v11) - v13.__sinval * 2.0) * 0.55;
  v17 = TSURectWithCenterAndSize((v15.__cosval * cosval), (v15.__sinval * cosval), v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.5, 0.15];
  *&v25 = ((180 * self) / v9);
  v26 = [ODIDrawable addShapeWithBounds:v24 rotation:stateCopy geometry:v17 state:v19, v21, v23, v25];
  [ODIDrawable mapStyleAndTextFromPoint:transitionCopy shape:v26 state:stateCopy];
}

+ (BOOL)map1NodeWithState:(id)state
{
  stateCopy = state;
  [stateCopy setLogicalBounds:{0.0, 0.0, 1.0, 1.0}];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v7 = [children objectAtIndex:0];

  v8 = +[ODIDrawable shapeGeometryForEllipse];
  v9 = [ODIDrawable addShapeWithBounds:v8 rotation:stateCopy geometry:0.0 state:0.0, 1.0, 1.0, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:v7 shape:v9 state:stateCopy];
  return 1;
}

+ (BOOL)map2NodeWithState:(id)state
{
  stateCopy = state;
  [stateCopy setLogicalBounds:{TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 4.80000019)}];
  v4 = 0;
  v5 = 1;
  v33 = 0.9;
  do
  {
    v6 = v5;
    [stateCopy setPointIndex:{v4, *&v33}];
    diagram = [stateCopy diagram];
    documentPoint = [diagram documentPoint];
    children = [documentPoint children];
    v10 = [children objectAtIndex:v4];

    if (v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    v12 = TSURectWithCenterAndSize((v11 * 1.4), 0.0, 2.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = +[ODIDrawable shapeGeometryForEllipse];
    v20 = [ODIDrawable addShapeWithBounds:v19 rotation:stateCopy geometry:v12 state:v14, v16, v18, 0.0];

    [ODIDrawable mapStyleAndTextFromPoint:v10 shape:v20 state:stateCopy];
    v21 = TSURectWithCenterAndSize(0.0, v11 * v33, 1.20000001);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.35, 0.2];
    if (v6)
    {
      *&v29 = 0.0;
    }

    else
    {
      *&v29 = 180.0;
    }

    v30 = [ODIDrawable addShapeWithBounds:v28 rotation:stateCopy geometry:v21 state:v23, v25, v27, v29];
    siblingTransition = [v10 siblingTransition];
    [ODIDrawable mapStyleAndTextFromPoint:siblingTransition shape:v30 state:stateCopy];

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);

  return 1;
}

@end