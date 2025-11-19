@interface NTKBezierPathElement
- (CGPoint)endPoint;
- (CGPoint)pointOnPathForX:(double)a3;
- (CGPoint)startPoint;
- (NTKBezierPathElement)initWithStartPoint:(CGPoint)a3 pathElement:(const CGPathElement *)a4;
- (double)computeLength;
- (unint64_t)numberOfPointsForCGPathElementType:(int)a3;
- (void)dealloc;
@end

@implementation NTKBezierPathElement

- (NTKBezierPathElement)initWithStartPoint:(CGPoint)a3 pathElement:(const CGPathElement *)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = NTKBezierPathElement;
  v7 = [(NTKBezierPathElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    type = a4->type;
    v10 = [(NTKBezierPathElement *)v7 numberOfPointsForCGPathElementType:type];
    v11 = malloc_type_malloc(16 * (v10 + 1), 0xF0FC0AA0uLL);
    v12 = v11;
    *v11 = x;
    v11[1] = y;
    if (v10)
    {
      memcpy(v11 + 2, a4->points, 16 * v10);
    }

    [(NTKBezierPathElement *)v8 setPoints:v12];
    [(NTKBezierPathElement *)v8 setType:type];
    [(NTKBezierPathElement *)v8 setPointCount:v10 + 1];
    [(NTKBezierPathElement *)v8 computeLength];
    [(NTKBezierPathElement *)v8 setLength:?];
    v13 = v8;
  }

  return v8;
}

- (void)dealloc
{
  if ([(NTKBezierPathElement *)self points])
  {
    free([(NTKBezierPathElement *)self points]);
  }

  v3.receiver = self;
  v3.super_class = NTKBezierPathElement;
  [(NTKBezierPathElement *)&v3 dealloc];
}

- (CGPoint)startPoint
{
  v2 = [(NTKBezierPathElement *)self points];
  x = v2->x;
  y = v2->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  v3 = [(NTKBezierPathElement *)self points];
  v4 = &v3[[(NTKBezierPathElement *)self pointCount]];
  x = v4[-1].x;
  y = v4[-1].y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointOnPathForX:(double)a3
{
  if ([(NTKBezierPathElement *)self type]== 3)
  {
    [(NTKBezierPathElement *)self startPoint];
    v6 = v5;
    v8 = v7;
    [(NTKBezierPathElement *)self endPoint];
    v10 = v9;
    v12 = v11;
    v13 = [(NTKBezierPathElement *)self points];
    x = v13[1].x;
    y = v13[1].y;
    v16 = [(NTKBezierPathElement *)self points];
    v18 = NTKComputeCubicBezierYForX(a3, v6, v8, x, y, v16[2].x, v16[2].y, v17, v10, v12);
    v19 = a3;
  }

  else
  {

    [(NTKBezierPathElement *)self endPoint];
  }

  result.y = v18;
  result.x = v19;
  return result;
}

- (unint64_t)numberOfPointsForCGPathElementType:(int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_22DCE87D0[a3];
  }
}

- (double)computeLength
{
  v3 = [(NTKBezierPathElement *)self type];
  if (v3 == 3)
  {
    v13 = [(NTKBezierPathElement *)self points];
    x = v13[1].x;
    y = v13[1].y;
    v16 = [(NTKBezierPathElement *)self points];
    v17 = v16[2].x;
    v18 = v16[2].y;
    [(NTKBezierPathElement *)self startPoint];
    v20 = v19;
    v22 = v21;
    [(NTKBezierPathElement *)self endPoint];
    v24.f64[0] = v25.f64[0];
    v25.f64[0] = v20;
    v26.f64[0] = x;
    v27.f64[0] = v17;

    return NTKComputeCubicBezierLength(v25, v22, v26, y, v27, v18, v24, v23);
  }

  else if (v3 == 1)
  {
    [(NTKBezierPathElement *)self startPoint];
    v5 = v4;
    v7 = v6;
    v8 = [(NTKBezierPathElement *)self endPoint];
    v9.n128_u64[0] = v11.n128_u64[0];
    v10.n128_u64[0] = v12.n128_u64[0];
    v11.n128_u64[0] = v5;
    v12.n128_u64[0] = v7;

    MEMORY[0x2821DE488](v8, v11, v12, v9, v10);
  }

  else
  {
    return 0.0;
  }

  return result;
}

@end