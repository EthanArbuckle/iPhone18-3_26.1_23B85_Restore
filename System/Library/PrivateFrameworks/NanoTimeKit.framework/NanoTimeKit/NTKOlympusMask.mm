@interface NTKOlympusMask
+ (CGPoint)convertPoint:(CGPoint)a3 translantedFromFirstToQuadrantIndex:(unint64_t)a4;
+ (CGPoint)convertPoint:(CGPoint)result translantedQuadrantIndex:(unint64_t)a4;
+ (CGPoint)convertPointFromCartesianCoordiatesToViewCoordiates:(CGPoint)a3 centerFromViewCoordinates:(CGPoint)a4;
+ (CGPoint)convertPointFromViewCoordinatesToCartesianCoordiates:(CGPoint)a3 centerFromViewCoordinates:(CGPoint)a4;
+ (CGPoint)nextPointFromStartPoint:(CGPoint)result endPoint:(CGPoint)a4 radius:(double)a5;
+ (CGPoint)pointForAngle:(double)a3 radius:(double)a4 centerPoint:(CGPoint)a5;
+ (CGPoint)roundPoint:(CGPoint)a3;
+ (double)convertAngleForFirstQuadrant:(double)result;
+ (double)hourHandAngleWithDate:(id)a3;
+ (double)minuteHandAngleWithDate:(id)a3;
+ (double)normalizeAngle:(double)result;
+ (id)clippingPathFromCenterPoint:(CGPoint)a3 startAngle:(double)a4 endAngle:(double)a5 radius:(double)a6;
+ (unint64_t)nextQuadrantIndex:(unint64_t)a3;
+ (unint64_t)quadrantForAngle:(double)a3;
+ (unint64_t)quadrantForPoint:(CGPoint)a3;
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

+ (id)clippingPathFromCenterPoint:(CGPoint)a3 startAngle:(double)a4 endAngle:(double)a5 radius:(double)a6
{
  v9 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v10 = [v9 device];

  CLKRoundForDevice();
  v12 = v11;
  CLKRoundForDevice();
  v14 = v13;
  CLKRoundForDevice();
  v16 = v15;
  [a1 normalizeAngle:a4];
  v18 = v17;
  [a1 normalizeAngle:a5];
  v20 = v19;
  [NTKOlympusMask pointForAngle:v18 radius:v16 centerPoint:v12, v14];
  v22 = v21;
  v59 = v23;
  v60 = v21;
  v24 = v23;
  [NTKOlympusMask pointForAngle:v20 radius:v16 centerPoint:v12, v14];
  v26 = v25;
  v28 = v27;
  [a1 convertPointFromViewCoordinatesToCartesianCoordiates:v22 centerFromViewCoordinates:{v24, v12, v14}];
  v30 = v29;
  v32 = v31;
  [a1 convertPointFromViewCoordinatesToCartesianCoordiates:v26 centerFromViewCoordinates:{v28, v12, v14}];
  v34 = v33;
  v36 = v35;
  v37 = [a1 quadrantForPoint:{v30, v32}];
  v38 = [a1 quadrantForPoint:{v34, v36}];
  v39 = [MEMORY[0x277D75208] bezierPath];
  v40 = v12;
  v61 = v14;
  [a1 roundPoint:{v12, v14}];
  [v39 moveToPoint:?];
  [a1 roundPoint:{v60, v59}];
  [v39 addLineToPoint:?];
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
    [a1 convertPoint:v37 translantedQuadrantIndex:{v30, v32}];
    v44 = v43;
    v46 = v45;
    [a1 convertPoint:v37 translantedQuadrantIndex:{v34, v36}];
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

    [a1 nextPointFromStartPoint:v44 endPoint:v46 radius:{v49, v50, v16}];
    v52 = v51;
    v54 = v53;
    [a1 convertPoint:v37 translantedFromFirstToQuadrantIndex:?];
    v30 = v55;
    v32 = v56;
    if (v52 == v16 && v54 == 0.0)
    {
      v37 = [a1 nextQuadrantIndex:v37];
    }

    [a1 convertPointFromCartesianCoordiatesToViewCoordiates:v30 centerFromViewCoordinates:{v32, v40, v61}];
    [a1 roundPoint:?];
    [v39 addLineToPoint:?];
  }

  [a1 roundPoint:{v40, v61}];
  [v39 addLineToPoint:?];
  [v39 closePath];

  return v39;
}

+ (CGPoint)roundPoint:(CGPoint)a3
{
  v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v4 = [v3 device];

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

+ (double)hourHandAngleWithDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 component:32 fromDate:v5] % 12;

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 component:64 fromDate:v5];

  [a1 angleForHour:v7 minutes:v9];
  return result;
}

+ (double)minuteHandAngleWithDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 component:64 fromDate:v5];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 component:128 fromDate:v5];

  [a1 angleForMinute:v7 seconds:v9];
  return result;
}

+ (CGPoint)pointForAngle:(double)a3 radius:(double)a4 centerPoint:(CGPoint)a5
{
  v8 = [a1 quadrantForAngle:?];
  [a1 convertAngleForFirstQuadrant:a3];
  v10 = v9;
  v11 = 90.0 - v9;
  if (v10 <= 45.0)
  {
    v11 = v10;
  }

  v12 = v11 * 3.14159265 / 180.0;
  v13 = tanf(v12);
  v14 = v13 * a4;
  if (v10 > 45.0)
  {
    v15 = a4;
  }

  else
  {
    v15 = v13 * a4;
  }

  if (v10 <= 45.0)
  {
    v14 = a4;
  }

  [a1 convertPoint:v8 translantedFromFirstToQuadrantIndex:{v15, v14}];

  [a1 convertPointFromCartesianCoordiatesToViewCoordiates:? centerFromViewCoordinates:?];
  result.y = v17;
  result.x = v16;
  return result;
}

+ (CGPoint)convertPointFromViewCoordinatesToCartesianCoordiates:(CGPoint)a3 centerFromViewCoordinates:(CGPoint)a4
{
  v4 = a3.x - a4.x;
  v5 = a4.y - a3.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)convertPointFromCartesianCoordiatesToViewCoordiates:(CGPoint)a3 centerFromViewCoordinates:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a4.y - a3.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)result translantedQuadrantIndex:(unint64_t)a4
{
  v4 = -result.x;
  v5 = -result.y;
  if (a4 == 2)
  {
    x = result.x;
  }

  else
  {
    x = result.y;
  }

  if (a4 == 2)
  {
    result.x = -result.y;
  }

  if (a4 == 3)
  {
    result.x = v4;
  }

  else
  {
    v5 = x;
  }

  if (a4 == 4)
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

+ (CGPoint)convertPoint:(CGPoint)a3 translantedFromFirstToQuadrantIndex:(unint64_t)a4
{
  v4 = -a3.y;
  if (a4 == 2)
  {
    y = -a3.x;
  }

  else
  {
    y = a3.y;
  }

  if (a4 != 2)
  {
    a3.y = a3.x;
  }

  if (a4 == 3)
  {
    y = v4;
    a3.y = -a3.x;
  }

  if (a4 == 4)
  {
    x = a3.x;
  }

  else
  {
    x = y;
  }

  if (a4 == 4)
  {
    v7 = v4;
  }

  else
  {
    v7 = a3.y;
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

+ (unint64_t)nextQuadrantIndex:(unint64_t)a3
{
  if (a3 + 1 <= 4)
  {
    return a3 + 1;
  }

  else
  {
    return 1;
  }
}

+ (CGPoint)nextPointFromStartPoint:(CGPoint)result endPoint:(CGPoint)a4 radius:(double)a5
{
  if (a4.x > a5 || (a4.x >= 0.0 ? (v5 = a4.y <= a5) : (v5 = 0), !v5 || a4.y < 0.0))
  {
    a4.y = 0.0;
    a4.x = a5;
  }

  if (result.y >= a5 && result.x < a5)
  {
    if (result.y != a4.y || result.x > a4.x)
    {
      result.x = a5;
    }

    else if (a4.x <= a5)
    {
      result.x = a4.x;
    }

    else
    {
      result.x = a5;
    }
  }

  else if (result.x == a4.x && result.y >= a4.y)
  {
    result.y = fmax(a4.y, 0.0);
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

+ (unint64_t)quadrantForAngle:(double)a3
{
  if (a3 >= 0.0 && a3 <= 90.0)
  {
    return 1;
  }

  if (a3 > 90.0 && a3 <= 180.0)
  {
    return 2;
  }

  if (a3 > 180.0 && a3 <= 270.0)
  {
    return 3;
  }

  if (a3 > 360.0 || a3 <= 270.0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

+ (unint64_t)quadrantForPoint:(CGPoint)a3
{
  if (a3.x >= 0.0 && a3.y < 0.0)
  {
    return 2;
  }

  if (a3.x < 0.0 && a3.y < 0.0)
  {
    return 3;
  }

  if (a3.y >= 0.0 && a3.x < 0.0)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

@end