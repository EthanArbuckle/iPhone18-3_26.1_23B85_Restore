@interface NTKSolarPath
- (CGRect)bounds;
- (NTKSolarPath)initWithBounds:(CGRect)bounds solarTimeModel:(id)model verticallyFitsPathToBounds:(BOOL)toBounds usePlaceholderData:(BOOL)data;
- (double)altitudeAtX:(double)x;
- (id)_computeSolarPath;
@end

@implementation NTKSolarPath

- (NTKSolarPath)initWithBounds:(CGRect)bounds solarTimeModel:(id)model verticallyFitsPathToBounds:(BOOL)toBounds usePlaceholderData:(BOOL)data
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = NTKSolarPath;
  v15 = [(NTKSolarPath *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_bounds.origin.x = x;
    v15->_bounds.origin.y = y;
    v15->_bounds.size.width = width;
    v15->_bounds.size.height = height;
    objc_storeStrong(&v15->_solarTimeModel, model);
    v16->_verticallyFitsPathToBounds = toBounds;
    v16->_usePlaceholderData = data;
    _computeSolarPath = [(NTKSolarPath *)v16 _computeSolarPath];
    bezierPath = v16->_bezierPath;
    v16->_bezierPath = _computeSolarPath;
  }

  return v16;
}

- (id)_computeSolarPath
{
  [(NTKSolarTimeModel *)self->_solarTimeModel effectiveSolarDayLength];
  v4 = v3;
  localSolarMidnightDate = [(NTKSolarTimeModel *)self->_solarTimeModel localSolarMidnightDate];
  referenceLocation = [(NTKSolarTimeModel *)self->_solarTimeModel referenceLocation];
  [referenceLocation coordinate];
  v39 = v7;
  [referenceLocation coordinate];
  v38 = v8;
  width = self->_bounds.size.width;
  v10 = self->_bounds.size.height * 0.5;
  v11 = -v10;
  altitude = self->_altitude;
  p_y = &self->_points[0].y;
  v14 = -3;
  v15 = 1.17549435e-38;
  v16 = 3.40282347e38;
  v17 = 29;
  do
  {
    v18 = v14 / 24.0;
    v19 = [localSolarMidnightDate dateByAddingTimeInterval:v4 * v18];
    if (self->_usePlaceholderData)
    {
      v20 = v18 * 6.28318531 + -1.57079633;
      v21 = sinf(v20);
      *p_y = v10 + v11 * v21;
      *altitude = (v21 * 30.0);
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277D0EB38]) initWithLocation:v19 date:0 body:{v39, v38}];
      [v22 altitude];
      *&v23 = v23 * 0.0174532924;
      *p_y = v10 + v11 * sinf(*&v23);
      [v22 altitude];
      *altitude = v24;
    }

    *(p_y - 1) = width * v18;
    v25 = *p_y;
    p_y += 2;
    v26 = v25;
    if (v16 > v25)
    {
      v16 = v26;
    }

    if (v15 < v26)
    {
      v15 = v26;
    }

    ++v14;
    ++altitude;
    --v17;
  }

  while (v17);
  if (self->_verticallyFitsPathToBounds)
  {
    v27 = 0;
    v28 = self->_bounds.size.height / (v15 - v16);
    do
    {
      self->_points[v27].y = v28 * (self->_points[v27].y - v16);
      ++v27;
    }

    while (v27 != 29);
  }

  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath moveToPoint:{self->_points[3].x, self->_points[3].y}];
  v30 = &self->_points[5];
  v31 = 24;
  __asm { FMOV            V0.2D, #6.0 }

  v40 = _Q0;
  do
  {
    [bezierPath addCurveToPoint:v30[-1].f64[0] controlPoint1:v30[-1].f64[1] controlPoint2:{vaddq_f64(v30[-2], vdivq_f64(vsubq_f64(v30[-1], v30[-3]), v40)), vaddq_f64(v30[-1], vdivq_f64(vsubq_f64(v30[-2], *v30), v40))}];
    ++v30;
    --v31;
  }

  while (v31);

  return bezierPath;
}

- (double)altitudeAtX:(double)x
{
  altitude = self->_altitude;
  v4 = &self->_points[1];
  for (i = 28; i; --i)
  {
    x = v4[-1].x;
    v7 = v4->x;
    ++v4;
    v8 = v7;
    ++altitude;
    if (x <= x && v8 >= x)
    {
      CLKInterpolateBetweenFloatsClipped();
      return result;
    }
  }

  return 0.0;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end