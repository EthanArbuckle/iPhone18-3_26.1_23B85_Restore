@interface ODICycle7
+ (BOOL)map1NodeWithState:(id)state;
+ (BOOL)map2NodeWithState:(id)state;
+ (CGRect)mapGSpaceWithState:(id)state;
+ (CGSize)nodeSizeWithState:(id)state;
+ (void)addShapeForNode:(id)node relativeBounds:(CGRect)bounds state:(id)state;
+ (void)addShapeForTransition:(id)transition relativeBounds:(CGRect)bounds rotation:(float)rotation state:(id)state;
+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state;
+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state;
@end

@implementation ODICycle7

+ (CGSize)nodeSizeWithState:(id)state
{
  v3 = sin(3.14159265 / [self nodeCountWithState:state]);
  *&v3 = (v3 + v3) * 0.6;
  v4 = *&v3 * 0.5;
  v5 = *&v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
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

+ (void)addShapeForNode:(id)node relativeBounds:(CGRect)bounds state:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nodeCopy = node;
  stateCopy = state;
  LODWORD(v11) = 1045220557;
  v12 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v11];
  v13 = [ODIDrawable addShapeWithBounds:v12 rotation:stateCopy geometry:x state:y, width, height, 0.0];
  [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v13 state:stateCopy];
}

+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state
{
  v6 = *&index;
  nodeCopy = node;
  stateCopy = state;
  [self nodeBoundsWithIndex:v6 state:stateCopy];
  [self addShapeForNode:nodeCopy relativeBounds:stateCopy state:?];
}

+ (void)addShapeForTransition:(id)transition relativeBounds:(CGRect)bounds rotation:(float)rotation state:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  transitionCopy = transition;
  stateCopy = state;
  v13 = [ODIDrawable shapeGeometryForDoubleArrowWithControlPoint:0.1, 0.15];
  *&v14 = rotation;
  v15 = [ODIDrawable addShapeWithBounds:v13 rotation:stateCopy geometry:x state:y, width, height, v14];
  [ODIDrawable mapStyleAndTextFromPoint:transitionCopy shape:v15 state:stateCopy];
}

+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  v9 = [self nodeCountWithState:stateCopy];
  v10 = ((2 * index) | 1) * 3.14159265 / v9 + -1.57079633;
  v11 = __sincos_stret(3.14159265 / v9);
  cosval = v11.__cosval;
  v13 = __sincosf_stret(v10);
  v14 = (v11.__sinval + v11.__sinval) * 0.4;
  [self addShapeForTransition:transitionCopy relativeBounds:stateCopy rotation:TSURectWithCenterAndSize((v13.__cosval * cosval) state:{(v13.__sinval * cosval), v14)}];
}

+ (BOOL)map1NodeWithState:(id)state
{
  stateCopy = state;
  [stateCopy setLogicalBounds:{0.0, 0.0, 1.0, 0.5}];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v8 = [children objectAtIndex:0];

  [self addShapeForNode:v8 relativeBounds:stateCopy state:{0.0, 0.0, 1.0, 0.5}];
  return 1;
}

+ (BOOL)map2NodeWithState:(id)state
{
  stateCopy = state;
  v5 = MEMORY[0x277CBF348];
  [stateCopy setLogicalBounds:{TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 1.0)}];
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [stateCopy setPointIndex:v6];
    diagram = [stateCopy diagram];
    documentPoint = [diagram documentPoint];
    children = [documentPoint children];
    v12 = [children objectAtIndex:v6];

    if (v8)
    {
      v13 = -0.625;
    }

    else
    {
      v13 = 0.625;
    }

    [self addShapeForNode:v12 relativeBounds:stateCopy state:{TSURectWithCenterAndSize(0.0, v13, 1.0)}];
    v14 = TSURectWithCenterAndSize(*v5, v5[1], 0.5625);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    siblingTransition = [v12 siblingTransition];
    if (v8)
    {
      *&v22 = 90.0;
    }

    else
    {
      *&v22 = 270.0;
    }

    [self addShapeForTransition:siblingTransition relativeBounds:stateCopy rotation:v14 state:{v16, v18, v20, v22}];

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);

  return 1;
}

@end