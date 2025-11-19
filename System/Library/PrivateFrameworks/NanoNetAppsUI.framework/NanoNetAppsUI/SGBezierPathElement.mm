@interface SGBezierPathElement
- (CGPoint)endPoint;
- (CGPoint)pointOnPathForX:(double)a3;
- (CGPoint)startPoint;
- (SGBezierPathElement)initWithStartPoint:(CGPoint)a3 pathElement:(const CGPathElement *)a4;
- (double)computeLength;
- (unint64_t)numberOfPointsForCGPathElementType:(int)a3;
- (void)dealloc;
@end

@implementation SGBezierPathElement

- (SGBezierPathElement)initWithStartPoint:(CGPoint)a3 pathElement:(const CGPathElement *)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = SGBezierPathElement;
  v7 = [(SGBezierPathElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    type = a4->type;
    v10 = [(SGBezierPathElement *)v7 numberOfPointsForCGPathElementType:type];
    v11 = malloc_type_malloc(16 * (v10 + 1), 0xAB9643C0uLL);
    v12 = v11;
    *v11 = x;
    v11[1] = y;
    if (v10)
    {
      memcpy(v11 + 2, a4->points, 16 * v10);
    }

    [(SGBezierPathElement *)v8 setPoints:v12];
    [(SGBezierPathElement *)v8 setType:type];
    [(SGBezierPathElement *)v8 setPointCount:v10 + 1];
    [(SGBezierPathElement *)v8 computeLength];
    [(SGBezierPathElement *)v8 setLength:?];
    v13 = v8;
  }

  return v8;
}

- (void)dealloc
{
  if ([(SGBezierPathElement *)self points])
  {
    free([(SGBezierPathElement *)self points]);
  }

  v3.receiver = self;
  v3.super_class = SGBezierPathElement;
  [(SGBezierPathElement *)&v3 dealloc];
}

- (CGPoint)startPoint
{
  v2 = [(SGBezierPathElement *)self points];
  x = v2->x;
  y = v2->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  v3 = [(SGBezierPathElement *)self points];
  v4 = &v3[[(SGBezierPathElement *)self pointCount]];
  x = v4[-1].x;
  y = v4[-1].y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointOnPathForX:(double)a3
{
  if ([(SGBezierPathElement *)self type]== 3)
  {
    [(SGBezierPathElement *)self startPoint];
    v6 = v5;
    v8 = v7;
    [(SGBezierPathElement *)self endPoint];
    v10 = v9;
    v12 = v11;
    v13 = [(SGBezierPathElement *)self points];
    x = v13[1].x;
    y = v13[1].y;
    v16 = [(SGBezierPathElement *)self points];
    v18 = SGComputeCubicBezierYForX(a3, v6, v8, x, y, v16[2].x, v16[2].y, v17, v10, v12);
    v19 = a3;
  }

  else
  {

    [(SGBezierPathElement *)self endPoint];
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
    return qword_25B2FCDB8[a3];
  }
}

- (double)computeLength
{
  v3 = [(SGBezierPathElement *)self type];
  if (v3 == 3)
  {
    v13 = [(SGBezierPathElement *)self points];
    x = v13[1].x;
    y = v13[1].y;
    v16 = [(SGBezierPathElement *)self points];
    v17 = v16[2].x;
    v18 = v16[2].y;
    [(SGBezierPathElement *)self startPoint];
    v20 = v19;
    v22 = v21;
    [(SGBezierPathElement *)self endPoint];
    v24.f64[0] = v25.f64[0];
    v25.f64[0] = v20;
    v26.f64[0] = x;
    v27.f64[0] = v17;

    return SGComputeCubicBezierLength(v25, v22, v26, y, v27, v18, v24, v23);
  }

  else if (v3 == 1)
  {
    [(SGBezierPathElement *)self startPoint];
    v5 = v4;
    v7 = v6;
    v8 = [(SGBezierPathElement *)self endPoint];
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