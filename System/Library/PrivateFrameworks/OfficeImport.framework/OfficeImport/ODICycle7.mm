@interface ODICycle7
+ (BOOL)map1NodeWithState:(id)a3;
+ (BOOL)map2NodeWithState:(id)a3;
+ (CGRect)mapGSpaceWithState:(id)a3;
+ (CGSize)nodeSizeWithState:(id)a3;
+ (void)addShapeForNode:(id)a3 relativeBounds:(CGRect)a4 state:(id)a5;
+ (void)addShapeForTransition:(id)a3 relativeBounds:(CGRect)a4 rotation:(float)a5 state:(id)a6;
+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5;
+ (void)mapTransition:(id)a3 index:(unsigned int)a4 state:(id)a5;
@end

@implementation ODICycle7

+ (CGSize)nodeSizeWithState:(id)a3
{
  v3 = sin(3.14159265 / [a1 nodeCountWithState:a3]);
  *&v3 = (v3 + v3) * 0.6;
  v4 = *&v3 * 0.5;
  v5 = *&v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGRect)mapGSpaceWithState:(id)a3
{
  [a1 boundingBoxWithIsTight:1 state:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (void)addShapeForNode:(id)a3 relativeBounds:(CGRect)a4 state:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v10 = a5;
  LODWORD(v11) = 1045220557;
  v12 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v11];
  v13 = [ODIDrawable addShapeWithBounds:v12 rotation:v10 geometry:x state:y, width, height, 0.0];
  [ODIDrawable mapStyleAndTextFromPoint:v14 shape:v13 state:v10];
}

+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5
{
  v6 = *&a4;
  v9 = a3;
  v8 = a5;
  [a1 nodeBoundsWithIndex:v6 state:v8];
  [a1 addShapeForNode:v9 relativeBounds:v8 state:?];
}

+ (void)addShapeForTransition:(id)a3 relativeBounds:(CGRect)a4 rotation:(float)a5 state:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v12 = a6;
  v13 = [ODIDrawable shapeGeometryForDoubleArrowWithControlPoint:0.1, 0.15];
  *&v14 = a5;
  v15 = [ODIDrawable addShapeWithBounds:v13 rotation:v12 geometry:x state:y, width, height, v14];
  [ODIDrawable mapStyleAndTextFromPoint:v16 shape:v15 state:v12];
}

+ (void)mapTransition:(id)a3 index:(unsigned int)a4 state:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = [a1 nodeCountWithState:v8];
  v10 = ((2 * a4) | 1) * 3.14159265 / v9 + -1.57079633;
  v11 = __sincos_stret(3.14159265 / v9);
  cosval = v11.__cosval;
  v13 = __sincosf_stret(v10);
  v14 = (v11.__sinval + v11.__sinval) * 0.4;
  [a1 addShapeForTransition:v15 relativeBounds:v8 rotation:TSURectWithCenterAndSize((v13.__cosval * cosval) state:{(v13.__sinval * cosval), v14)}];
}

+ (BOOL)map1NodeWithState:(id)a3
{
  v4 = a3;
  [v4 setLogicalBounds:{0.0, 0.0, 1.0, 0.5}];
  v5 = [v4 diagram];
  v6 = [v5 documentPoint];
  v7 = [v6 children];
  v8 = [v7 objectAtIndex:0];

  [a1 addShapeForNode:v8 relativeBounds:v4 state:{0.0, 0.0, 1.0, 0.5}];
  return 1;
}

+ (BOOL)map2NodeWithState:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBF348];
  [v4 setLogicalBounds:{TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 1.0)}];
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [v4 setPointIndex:v6];
    v9 = [v4 diagram];
    v10 = [v9 documentPoint];
    v11 = [v10 children];
    v12 = [v11 objectAtIndex:v6];

    if (v8)
    {
      v13 = -0.625;
    }

    else
    {
      v13 = 0.625;
    }

    [a1 addShapeForNode:v12 relativeBounds:v4 state:{TSURectWithCenterAndSize(0.0, v13, 1.0)}];
    v14 = TSURectWithCenterAndSize(*v5, v5[1], 0.5625);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v12 siblingTransition];
    if (v8)
    {
      *&v22 = 90.0;
    }

    else
    {
      *&v22 = 270.0;
    }

    [a1 addShapeForTransition:v21 relativeBounds:v4 rotation:v14 state:{v16, v18, v20, v22}];

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);

  return 1;
}

@end