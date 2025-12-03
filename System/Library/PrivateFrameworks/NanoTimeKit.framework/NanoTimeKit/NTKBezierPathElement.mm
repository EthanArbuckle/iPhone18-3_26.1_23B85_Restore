@interface NTKBezierPathElement
- (CGPoint)endPoint;
- (CGPoint)pointOnPathForX:(double)x;
- (CGPoint)startPoint;
- (NTKBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element;
- (double)computeLength;
- (unint64_t)numberOfPointsForCGPathElementType:(int)type;
- (void)dealloc;
@end

@implementation NTKBezierPathElement

- (NTKBezierPathElement)initWithStartPoint:(CGPoint)point pathElement:(const CGPathElement *)element
{
  y = point.y;
  x = point.x;
  v15.receiver = self;
  v15.super_class = NTKBezierPathElement;
  v7 = [(NTKBezierPathElement *)&v15 init];
  v8 = v7;
  if (v7)
  {
    type = element->type;
    v10 = [(NTKBezierPathElement *)v7 numberOfPointsForCGPathElementType:type];
    v11 = malloc_type_malloc(16 * (v10 + 1), 0xF0FC0AA0uLL);
    v12 = v11;
    *v11 = x;
    v11[1] = y;
    if (v10)
    {
      memcpy(v11 + 2, element->points, 16 * v10);
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
  points = [(NTKBezierPathElement *)self points];
  x = points->x;
  y = points->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  points = [(NTKBezierPathElement *)self points];
  v4 = &points[[(NTKBezierPathElement *)self pointCount]];
  x = v4[-1].x;
  y = v4[-1].y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pointOnPathForX:(double)x
{
  if ([(NTKBezierPathElement *)self type]== 3)
  {
    [(NTKBezierPathElement *)self startPoint];
    v6 = v5;
    v8 = v7;
    [(NTKBezierPathElement *)self endPoint];
    v10 = v9;
    v12 = v11;
    points = [(NTKBezierPathElement *)self points];
    x = points[1].x;
    y = points[1].y;
    points2 = [(NTKBezierPathElement *)self points];
    v18 = NTKComputeCubicBezierYForX(x, v6, v8, x, y, points2[2].x, points2[2].y, v17, v10, v12);
    xCopy = x;
  }

  else
  {

    [(NTKBezierPathElement *)self endPoint];
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
    return qword_22DCE87D0[type];
  }
}

- (double)computeLength
{
  type = [(NTKBezierPathElement *)self type];
  if (type == 3)
  {
    points = [(NTKBezierPathElement *)self points];
    x = points[1].x;
    y = points[1].y;
    points2 = [(NTKBezierPathElement *)self points];
    v17 = points2[2].x;
    v18 = points2[2].y;
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

  else if (type == 1)
  {
    [(NTKBezierPathElement *)self startPoint];
    v5 = v4;
    v7 = v6;
    endPoint = [(NTKBezierPathElement *)self endPoint];
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