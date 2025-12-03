@interface SGBezierPathElement
- (CGPoint)endPoint;
- (CGPoint)pointOnPathForX:(double)x;
- (CGPoint)startPoint;
- (SGBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element;
- (double)computeLength;
- (unint64_t)numberOfPointsForCGPathElementType:(int)type;
- (void)dealloc;
@end

@implementation SGBezierPathElement

- (SGBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element
{
  y = point.y;
  x = point.x;
  v15.receiver = self;
  v15.super_class = SGBezierPathElement;
  v7 = [(SGBezierPathElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    type = element->type;
    v10 = [(SGBezierPathElement *)v7 numberOfPointsForCGPathElementType:type];
    v11 = malloc_type_malloc(16 * (v10 + 1), 0xAB9643C0uLL);
    v12 = v11;
    *v11 = x;
    v11[1] = y;
    if (v10)
    {
      memcpy(v11 + 2, element->points, 16 * v10);
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
  points = [(SGBezierPathElement *)self points];
  x = points->x;
  y = points->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  points = [(SGBezierPathElement *)self points];
  v4 = &points[[(SGBezierPathElement *)self pointCount]];
  x = v4[-1].x;
  y = v4[-1].y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointOnPathForX:(double)x
{
  if ([(SGBezierPathElement *)self type]== 3)
  {
    [(SGBezierPathElement *)self startPoint];
    v6 = v5;
    v8 = v7;
    [(SGBezierPathElement *)self endPoint];
    v10 = v9;
    v12 = v11;
    points = [(SGBezierPathElement *)self points];
    x = points[1].x;
    y = points[1].y;
    points2 = [(SGBezierPathElement *)self points];
    v18 = SGComputeCubicBezierYForX(x, v6, v8, x, y, points2[2].x, points2[2].y, v17, v10, v12);
    xCopy = x;
  }

  else
  {

    [(SGBezierPathElement *)self endPoint];
  }

  result.y = v18;
  result.x = xCopy;
  return result;
}

- (unint64_t)numberOfPointsForCGPathElementType:(int)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return qword_25B2FCDB8[type];
  }
}

- (double)computeLength
{
  type = [(SGBezierPathElement *)self type];
  if (type == 3)
  {
    points = [(SGBezierPathElement *)self points];
    x = points[1].x;
    y = points[1].y;
    points2 = [(SGBezierPathElement *)self points];
    v17 = points2[2].x;
    v18 = points2[2].y;
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

  else if (type == 1)
  {
    [(SGBezierPathElement *)self startPoint];
    v5 = v4;
    v7 = v6;
    endPoint = [(SGBezierPathElement *)self endPoint];
    v9.n128_u64[0] = v11.n128_u64[0];
    v10.n128_u64[0] = v12.n128_u64[0];
    v11.n128_u64[0] = v5;
    v12.n128_u64[0] = v7;

    MEMORY[0x2821DE488](endPoint, v11, v12, v9, v10);
  }

  else
  {
    return 0.0;
  }

  return result;
}

@end