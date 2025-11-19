@interface ODICycle2
+ (BOOL)map1NodeWithState:(id)a3;
+ (BOOL)map2NodeWithState:(id)a3;
+ (CGRect)mapGSpaceWithState:(id)a3;
+ (CGSize)nodeSizeWithState:(id)a3;
+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5;
+ (void)mapTransition:(id)a3 index:(unsigned int)a4 state:(id)a5;
@end

@implementation ODICycle2

+ (CGSize)nodeSizeWithState:(id)a3
{
  [a1 nodeRadiusWithState:a3];
  v4 = (v3 + v3);
  v5 = v4;
  result.height = v5;
  result.width = v4;
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

+ (void)mapNode:(id)a3 index:(unsigned int)a4 state:(id)a5
{
  v6 = *&a4;
  v19 = a3;
  v8 = a5;
  [a1 nodeBoundsWithIndex:v6 state:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = +[ODIDrawable shapeGeometryForEllipse];
  v18 = [ODIDrawable addShapeWithBounds:v17 rotation:v8 geometry:v10 state:v12, v14, v16, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:v19 shape:v18 state:v8];
}

+ (void)mapTransition:(id)a3 index:(unsigned int)a4 state:(id)a5
{
  v27 = a3;
  v8 = a5;
  v9 = [a1 nodeCountWithState:v8];
  [a1 nodeRadiusWithState:v8];
  v11 = v10;
  LODWORD(a1) = (2 * a4) | 1;
  v13 = __sincos_stret(3.14159265 / v9);
  cosval = v13.__cosval;
  v12 = a1 * 3.14159265 / v9 + -1.57079633;
  v15 = __sincosf_stret(v12);
  v16 = -((v11 + v11) - v13.__sinval * 2.0) * 0.55;
  v17 = TSURectWithCenterAndSize((v15.__cosval * cosval), (v15.__sinval * cosval), v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [ODIDrawable shapeGeometryForRightArrowWithControlPoint:0.5, 0.15];
  *&v25 = ((180 * a1) / v9);
  v26 = [ODIDrawable addShapeWithBounds:v24 rotation:v8 geometry:v17 state:v19, v21, v23, v25];
  [ODIDrawable mapStyleAndTextFromPoint:v27 shape:v26 state:v8];
}

+ (BOOL)map1NodeWithState:(id)a3
{
  v3 = a3;
  [v3 setLogicalBounds:{0.0, 0.0, 1.0, 1.0}];
  v4 = [v3 diagram];
  v5 = [v4 documentPoint];
  v6 = [v5 children];
  v7 = [v6 objectAtIndex:0];

  v8 = +[ODIDrawable shapeGeometryForEllipse];
  v9 = [ODIDrawable addShapeWithBounds:v8 rotation:v3 geometry:0.0 state:0.0, 1.0, 1.0, 0.0];

  [ODIDrawable mapStyleAndTextFromPoint:v7 shape:v9 state:v3];
  return 1;
}

+ (BOOL)map2NodeWithState:(id)a3
{
  v3 = a3;
  [v3 setLogicalBounds:{TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 4.80000019)}];
  v4 = 0;
  v5 = 1;
  v33 = 0.9;
  do
  {
    v6 = v5;
    [v3 setPointIndex:{v4, *&v33}];
    v7 = [v3 diagram];
    v8 = [v7 documentPoint];
    v9 = [v8 children];
    v10 = [v9 objectAtIndex:v4];

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
    v20 = [ODIDrawable addShapeWithBounds:v19 rotation:v3 geometry:v12 state:v14, v16, v18, 0.0];

    [ODIDrawable mapStyleAndTextFromPoint:v10 shape:v20 state:v3];
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

    v30 = [ODIDrawable addShapeWithBounds:v28 rotation:v3 geometry:v21 state:v23, v25, v27, v29];
    v31 = [v10 siblingTransition];
    [ODIDrawable mapStyleAndTextFromPoint:v31 shape:v30 state:v3];

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);

  return 1;
}

@end