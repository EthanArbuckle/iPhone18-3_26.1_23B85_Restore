@interface ODIVenn1
+ (CGRect)mapGSpaceWithState:(id)state;
+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state;
@end

@implementation ODIVenn1

+ (CGRect)mapGSpaceWithState:(id)state
{
  stateCopy = state;
  v5 = [self nodeCountWithState:stateCopy];
  v6 = v5;
  v7 = -180.0;
  if (v5 != 2)
  {
    v7 = -90.0;
  }

  v8 = ODIRegularPolygonBounds(v5, 1.0, v7);
  if (v6 < 5)
  {
    v20 = CGRectInset(*&v8, -1.20000005, -1.20000005);
  }

  else
  {
    v20 = CGRectInset(*&v8, -0.300000012, -0.180000007);
  }

  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = [self nodeCountWithState:stateCopy];
  v10 = index + 1;
  if (v9 < 5)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"circ%d", index + 1];
    [stateCopy setPresentationName:v11 forPointType:2];
    v33 = dbl_25D6FBDE0[v9 == 2] + index * (6.28318531 / v9);
    v34 = __sincosf_stret(v33);
    v35 = TSURectWithCenterAndSize(v34.__cosval, v34.__sinval, 2.4000001);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = +[ODIDrawable shapeGeometryForEllipse];
    v22 = [ODIDrawable addShapeWithBounds:v42 rotation:stateCopy geometry:v35 state:v37, v39, v41, 0.0];

    [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v22 state:stateCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"circ%dTx", index + 1];
    [stateCopy setPresentationName:v11 forPointType:2];
    v12 = index * (6.28318531 / v9) + -1.57079633;
    v13 = __sincosf_stret(v12);
    v14 = TSURectWithCenterAndSize(v13.__cosval, v13.__sinval, 0.600000024);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = +[ODIDrawable shapeGeometryForRectangle];
    v22 = [ODIDrawable addShapeWithBounds:v21 rotation:stateCopy geometry:v14 state:v16, v18, v20, 0.0];

    [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v22 state:stateCopy];
    [nodeCopy setText:0];
    v23 = TSURectWithCenterAndSize((v13.__cosval * 0.25), (v13.__sinval * 0.25), 0.699999988);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = +[ODIDrawable shapeGeometryForEllipse];
    v31 = [ODIDrawable addShapeWithBounds:v30 rotation:stateCopy geometry:v23 state:v25, v27, v29, 0.0];

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"circ%d", v10];
    [ODIDrawable mapStyleForPresentationName:v32 point:nodeCopy shape:v31 state:stateCopy];
  }
}

@end