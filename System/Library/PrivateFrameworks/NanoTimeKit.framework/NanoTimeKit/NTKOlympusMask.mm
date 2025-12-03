@interface NTKOlympusMask
+ (CGPoint)convertPoint:(CGPoint)point translantedFromFirstToQuadrantIndex:(unint64_t)index;
+ (CGPoint)convertPoint:(CGPoint)result translantedQuadrantIndex:(unint64_t)index;
+ (CGPoint)convertPointFromCartesianCoordiatesToViewCoordiates:(CGPoint)coordiates centerFromViewCoordinates:(CGPoint)coordinates;
+ (CGPoint)convertPointFromViewCoordinatesToCartesianCoordiates:(CGPoint)coordiates centerFromViewCoordinates:(CGPoint)coordinates;
+ (CGPoint)nextPointFromStartPoint:(CGPoint)result endPoint:(CGPoint)point radius:(double)radius;
+ (CGPoint)pointForAngle:(double)angle radius:(double)radius centerPoint:(CGPoint)point;
+ (CGPoint)roundPoint:(CGPoint)point;
+ (double)convertAngleForFirstQuadrant:(double)result;
+ (double)hourHandAngleWithDate:(id)date;
+ (double)minuteHandAngleWithDate:(id)date;
+ (double)normalizeAngle:(double)result;
+ (id)clippingPathFromCenterPoint:(CGPoint)point startAngle:(double)angle endAngle:(double)endAngle radius:(double)radius;
+ (unint64_t)nextQuadrantIndex:(unint64_t)index;
+ (unint64_t)quadrantForAngle:(double)angle;
+ (unint64_t)quadrantForPoint:(CGPoint)point;
@end

@implementation NTKOlympusMask

+ (double)normalizeAngle:(double)result
{
  if (result > 360.0 && result / 360.0 > 1.0)
  {
    do
    {
      result = result + -360.0;
    }

    while (result / 360.0 > 1.0);
  }

  if (result < 0.0)
  {
    return result + 360.0;
  }

  return result;
}

+ (id)clippingPathFromCenterPoint:(CGPoint)point startAngle:(double)angle endAngle:(double)endAngle radius:(double)radius
{
  v9 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v9 device];

  CLKRoundForDevice();
  v12 = v11;
  CLKRoundForDevice();
  v14 = v13;
  CLKRoundForDevice();
  v16 = v15;
  [self normalizeAngle:angle];
  v18 = v17;
  [self normalizeAngle:endAngle];
  v20 = v19;
  [NTKOlympusMask pointForAngle:v18 radius:v16 centerPoint:v12, v14];
  v22 = v21;
  v59 = v23;
  v60 = v21;
  v24 = v23;
  [NTKOlympusMask pointForAngle:v20 radius:v16 centerPoint:v12, v14];
  v26 = v25;
  v28 = v27;
  [self convertPointFromViewCoordinatesToCartesianCoordiates:v22 centerFromViewCoordinates:{v24, v12, v14}];
  v30 = v29;
  v32 = v31;
  [self convertPointFromViewCoordinatesToCartesianCoordiates:v26 centerFromViewCoordinates:{v28, v12, v14}];
  v34 = v33;
  v36 = v35;
  v37 = [self quadrantForPoint:{v30, v32}];
  v38 = [self quadrantForPoint:{v34, v36}];
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  v40 = v12;
  v61 = v14;
  [self roundPoint:{v12, v14}];
  [bezierPath moveToPoint:?];
  [self roundPoint:{v60, v59}];
  [bezierPath addLineToPoint:?];
  if (v34 != v16)
  {
    v41 = v36 == -v16 || v36 == v16;
    if (!v41 && v34 != -v16)
    {
      v34 = v16;
    }
  }

  while (v30 != v34 || v32 != v36)
  {
    [self convertPoint:v37 translantedQuadrantIndex:{v30, v32}];
    v44 = v43;
    v46 = v45;
    [self convertPoint:v37 translantedQuadrantIndex:{v34, v36}];
    if (v38 == v37)
    {
      v49 = v47;
    }

    else
    {
      v49 = v16;
    }

    if (v38 == v37)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0.0;
    }

    [self nextPointFromStartPoint:v44 endPoint:v46 radius:{v49, v50, v16}];
    v52 = v51;
    v54 = v53;
    [self convertPoint:v37 translantedFromFirstToQuadrantIndex:?];
    v30 = v55;
    v32 = v56;
    if (v52 == v16 && v54 == 0.0)
    {
      v37 = [self nextQuadrantIndex:v37];
    }

    [self convertPointFromCartesianCoordiatesToViewCoordiates:v30 centerFromViewCoordinates:{v32, v40, v61}];
    [self roundPoint:?];
    [bezierPath addLineToPoint:?];
  }

  [self roundPoint:{v40, v61}];
  [bezierPath addLineToPoint:?];
  [bezierPath closePath];

  return bezierPath;
}

+ (CGPoint)roundPoint:(CGPoint)point
{
  v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v3 device];

  CLKRoundForDevice();
  v6 = v5;
  CLKRoundForDevice();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (double)hourHandAngleWithDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar component:32 fromDate:dateCopy] % 12;

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 component:64 fromDate:dateCopy];

  [self angleForHour:v7 minutes:v9];
  return result;
}

+ (double)minuteHandAngleWithDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar component:64 fromDate:dateCopy];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 component:128 fromDate:dateCopy];

  [self angleForMinute:v7 seconds:v9];
  return result;
}

+ (CGPoint)pointForAngle:(double)angle radius:(double)radius centerPoint:(CGPoint)point
{
  v8 = [self quadrantForAngle:?];
  [self convertAngleForFirstQuadrant:angle];
  v10 = v9;
  v11 = 90.0 - v9;
  if (v10 <= 45.0)
  {
    v11 = v10;
  }

  v12 = v11 * 3.14159265 / 180.0;
  v13 = tanf(v12);
  radiusCopy2 = v13 * radius;
  if (v10 > 45.0)
  {
    radiusCopy = radius;
  }

  else
  {
    radiusCopy = v13 * radius;
  }

  if (v10 <= 45.0)
  {
    radiusCopy2 = radius;
  }

  [self convertPoint:v8 translantedFromFirstToQuadrantIndex:{radiusCopy, radiusCopy2}];

  [self convertPointFromCartesianCoordiatesToViewCoordiates:? centerFromViewCoordinates:?];
  result.y = v17;
  result.x = v16;
  return result;
}

+ (CGPoint)convertPointFromViewCoordinatesToCartesianCoordiates:(CGPoint)coordiates centerFromViewCoordinates:(CGPoint)coordinates
{
  v4 = coordiates.x - coordinates.x;
  v5 = coordinates.y - coordiates.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)convertPointFromCartesianCoordiatesToViewCoordiates:(CGPoint)coordiates centerFromViewCoordinates:(CGPoint)coordinates
{
  v4 = coordiates.x + coordinates.x;
  v5 = coordinates.y - coordiates.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)result translantedQuadrantIndex:(unint64_t)index
{
  v4 = -result.x;
  v5 = -result.y;
  if (index == 2)
  {
    x = result.x;
  }

  else
  {
    x = result.y;
  }

  if (index == 2)
  {
    result.x = -result.y;
  }

  if (index == 3)
  {
    result.x = v4;
  }

  else
  {
    v5 = x;
  }

  if (index == 4)
  {
    result.x = result.y;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0.0;
  if (result.x == 0.0)
  {
    result.x = 0.0;
  }

  if (v4 != 0.0)
  {
    v7 = v4;
  }

  result.y = v7;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)point translantedFromFirstToQuadrantIndex:(unint64_t)index
{
  v4 = -point.y;
  if (index == 2)
  {
    y = -point.x;
  }

  else
  {
    y = point.y;
  }

  if (index != 2)
  {
    point.y = point.x;
  }

  if (index == 3)
  {
    y = v4;
    point.y = -point.x;
  }

  if (index == 4)
  {
    x = point.x;
  }

  else
  {
    x = y;
  }

  if (index == 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = point.y;
  }

  v8 = 0.0;
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (x != 0.0)
  {
    v8 = x;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

+ (unint64_t)nextQuadrantIndex:(unint64_t)index
{
  if (index + 1 <= 4)
  {
    return index + 1;
  }

  else
  {
    return 1;
  }
}

+ (CGPoint)nextPointFromStartPoint:(CGPoint)result endPoint:(CGPoint)point radius:(double)radius
{
  if (point.x > radius || (point.x >= 0.0 ? (v5 = point.y <= radius) : (v5 = 0), !v5 || point.y < 0.0))
  {
    point.y = 0.0;
    point.x = radius;
  }

  if (result.y >= radius && result.x < radius)
  {
    if (result.y != point.y || result.x > point.x)
    {
      result.x = radius;
    }

    else if (point.x <= radius)
    {
      result.x = point.x;
    }

    else
    {
      result.x = radius;
    }
  }

  else if (result.x == point.x && result.y >= point.y)
  {
    result.y = fmax(point.y, 0.0);
  }

  else
  {
    result.y = 0.0;
  }

  return result;
}

+ (double)convertAngleForFirstQuadrant:(double)result
{
    ;
  }

  return result;
}

+ (unint64_t)quadrantForAngle:(double)angle
{
  if (angle >= 0.0 && angle <= 90.0)
  {
    return 1;
  }

  if (angle > 90.0 && angle <= 180.0)
  {
    return 2;
  }

  if (angle > 180.0 && angle <= 270.0)
  {
    return 3;
  }

  if (angle > 360.0 || angle <= 270.0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

+ (unint64_t)quadrantForPoint:(CGPoint)point
{
  if (point.x >= 0.0 && point.y < 0.0)
  {
    return 2;
  }

  if (point.x < 0.0 && point.y < 0.0)
  {
    return 3;
  }

  if (point.y >= 0.0 && point.x < 0.0)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

@end