@interface ODICycle5
+ (BOOL)map1NodeWithState:(id)state;
+ (CGRect)mapGSpaceWithState:(id)state;
+ (CGSize)nodeSizeWithState:(id)state;
+ (float)intersectionAngleNextToAngle:(float)angle isAfter:(BOOL)after state:(id)state;
+ (void)addShapeForNode:(id)node relativeBounds:(CGRect)bounds state:(id)state;
+ (void)addShapeForTransition:(id)transition startAngle:(float)angle endAngle:(float)endAngle state:(id)state;
+ (void)mapNode:(id)node index:(unsigned int)index state:(id)state;
+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state;
@end

@implementation ODICycle5

+ (CGSize)nodeSizeWithState:(id)state
{
  v3 = sin(3.14159265 / [self nodeCountWithState:state]);
  *&v3 = (v3 + v3) * 0.6;
  v4 = *&v3 * 0.7;
  v5 = *&v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGRect)mapGSpaceWithState:(id)state
{
  [self boundingBoxWithIsTight:0 state:state];
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

+ (void)addShapeForTransition:(id)transition startAngle:(float)angle endAngle:(float)endAngle state:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  *&v12 = angle;
  [self normalizedAngle:v12];
  v14 = v13;
  *&v15 = endAngle;
  [self normalizedAngle:v15];
  if (v16 >= v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 360.0;
  }

  v18 = MEMORY[0x277CBF348];
  v19 = TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 2.0);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc_init(OITSUBezierPath);
  CGAffineTransformMakeRotation(&v29, v14 * 3.14159265 / 180.0);
  [(OITSUBezierPath *)v26 moveToPoint:vaddq_f64(*&v29.tx, vaddq_f64(*&v29.a, vmulq_f64(*&v29.c, 0)))];
  [(OITSUBezierPath *)v26 appendBezierPathWithArcWithCenter:v17 < v14 radius:*v18 startAngle:v18[1] endAngle:1.0 clockwise:v14, v17];
  v27 = [ODIDrawable shapeGeometryForBezierPath:v26 gSpace:v19, v21, v23, v25];
  v28 = [ODIDrawable addShapeWithBounds:v27 rotation:stateCopy geometry:v19 state:v21, v23, v25, 0.0];
  [self mapStyleForTransition:transitionCopy shape:v28 state:stateCopy];
}

+ (float)intersectionAngleNextToAngle:(float)angle isAfter:(BOOL)after state:(id)state
{
  afterCopy = after;
  v57[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v57[0] = 0;
  *&v9 = angle;
  [self normalizedAngle:v9];
  v11 = v10;
  v50 = afterCopy;
  v51 = stateCopy;
  [self nodeSizeWithState:stateCopy];
  v52 = v13;
  v54 = v12;
  v15 = __sincos_stret(v11 * 3.14159265 / 180.0);
  v14.f64[0] = v15.__cosval;
  v16 = 0;
  v17 = 0;
  v18.f64[0] = v54;
  v18.f64[1] = v52;
  __asm { FMOV            V2.2D, #0.5 }

  v24 = vmulq_f64(v18, _Q2);
  v14.f64[1] = v15.__sinval;
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v14, v24)), vaddq_f64(v14, v24));
  v56 = v25;
  v26 = 1;
  do
  {
    v27 = 0;
    v28 = v26;
    v55 = *(&qword_25D6FBCF8 + v16);
    v53 = v16 ^ 1;
    v29 = v16 ^ 3;
    v30 = 1;
    do
    {
      v31 = v30;
      v32 = v56.f32[2 * *(&qword_25D6FBCF8 + v27) + v55];
      if (fabsf(v32) <= 1.0)
      {
        v33 = 0;
        v34 = sqrtf(1.0 - (v32 * v32));
        v35 = v56.f32[v53];
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = v34 * *(&unk_25D6FBB48 + v33);
          if (v38 > v35 && v38 < v56.f32[v29])
          {
            if (v28)
            {
              v39 = v32;
            }

            else
            {
              v39 = v34 * *(&unk_25D6FBB48 + v33);
            }

            if ((v28 & 1) == 0)
            {
              v38 = v32;
            }

            v40 = (atan2f(v38, v39) * 180.0) / 3.14159265;
            *&v40 = v40;
            [self normalizedAngle:v40];
            *(v57 + v17++) = v25.i32[0];
          }

          v36 = 0;
          v33 = 1;
        }

        while ((v37 & 1) != 0);
      }

      v30 = 0;
      v27 = 1;
    }

    while ((v31 & 1) != 0);
    v26 = 0;
    v16 = 1;
  }

  while ((v28 & 1) != 0);
  v41 = 0.0;
  if (v50)
  {
    v41 = 360.0;
  }

  v42 = v57;
  v43 = 1;
  do
  {
    v44 = v43;
    v45 = *v42 - v11;
    if (v45 < 0.0)
    {
      v45 = v45 + 360.0;
    }

    v46 = v45 >= v41;
    if (!v50)
    {
      v46 = v45 <= v41;
    }

    if (!v46)
    {
      v41 = v45;
    }

    v42 = v57 + 1;
    v43 = 0;
  }

  while ((v44 & 1) != 0);
  v25.f32[0] = v11 + v41;
  [self normalizedAngle:*v25.i64];
  v48 = v47;

  return v48;
}

+ (void)mapTransition:(id)transition index:(unsigned int)index state:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  v9 = [self nodeCountWithState:stateCopy];
  v10 = index * 360.0 / v9 + -90.0;
  *&v10 = v10;
  [self intersectionAngleNextToAngle:1 isAfter:stateCopy state:v10];
  v12 = v11;
  v13 = (index + 1) * 360.0 / v9 + -90.0;
  *&v13 = v13;
  [self intersectionAngleNextToAngle:0 isAfter:stateCopy state:v13];
  if (*&v14 < v12)
  {
    *&v14 = *&v14 + 360.0;
  }

  v16 = (v12 + *&v14) * 0.5;
  *&v15 = ((*&v14 - v12) * 0.7) * 0.5;
  *&v14 = v16 - *&v15;
  *&v15 = v16 + *&v15;
  [self addShapeForTransition:transitionCopy startAngle:stateCopy endAngle:v14 state:v15];
}

+ (BOOL)map1NodeWithState:(id)state
{
  stateCopy = state;
  [stateCopy setLogicalBounds:{0.0, 0.0, 1.0, 0.699999988}];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v8 = [children objectAtIndex:0];

  [self addShapeForNode:v8 relativeBounds:stateCopy state:{0.0, 0.0, 1.0, 0.699999988}];
  return 1;
}

@end