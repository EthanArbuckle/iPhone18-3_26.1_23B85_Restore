@interface HKMinMaxCoordinate
- (BOOL)isVisibleInChartRect:(CGRect)rect;
- (CGPoint)max;
- (CGPoint)min;
- (HKMinMaxCoordinate)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform;
- (HKMinMaxCoordinate)initWithMin:(CGPoint)min max:(CGPoint)max userInfo:(id)info;
- (NSString)description;
- (double)distanceToPoint:(CGPoint)point;
- (double)yAxisDifferenceToPoint:(CGPoint)point;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKMinMaxCoordinate

- (HKMinMaxCoordinate)initWithMin:(CGPoint)min max:(CGPoint)max userInfo:(id)info
{
  y = max.y;
  x = max.x;
  v8 = min.y;
  v9 = min.x;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = HKMinMaxCoordinate;
  v12 = [(HKMinMaxCoordinate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_min.x = v9;
    v12->_min.y = v8;
    v12->_max.x = x;
    v12->_max.y = y;
    objc_storeStrong(&v12->_userInfo, info);
  }

  return v13;
}

- (HKMinMaxCoordinate)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform
{
  axisTransformCopy = axisTransform;
  transformCopy = transform;
  pointCopy = point;
  xValueAsGenericType = [pointCopy xValueAsGenericType];
  [transformCopy coordinateForValue:xValueAsGenericType];
  v13 = v12;

  minYValue = [pointCopy minYValue];
  [axisTransformCopy coordinateForValue:minYValue];
  v16 = v15;

  maxYValue = [pointCopy maxYValue];
  [axisTransformCopy coordinateForValue:maxYValue];
  v19 = v18;

  userInfo = [pointCopy userInfo];

  v21 = [(HKMinMaxCoordinate *)self initWithMin:userInfo max:v13 userInfo:v16, v13, v19];
  return v21;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  x = self->_min.x;
  y = self->_min.y;
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v12 = tx + y * c + transform->a * x;
  v13 = ty + y * d + b * x;
  v14 = self->_max.x;
  v15 = self->_max.y;
  v16 = tx + c * v15 + transform->a * v14;
  v17 = ty + d * v15 + b * v14;
  if (scale)
  {
    v12 = HKUIFloorCGPointToScreenScale(v12, v13);
    v13 = v18;
    v16 = HKUIFloorCGPointToScreenScale(v16, v17);
    v17 = v19;
  }

  v20 = objc_alloc(objc_opt_class());
  userInfo = self->_userInfo;

  return [v20 initWithMin:userInfo max:v12 userInfo:{v13, v16, v17}];
}

- (double)distanceToPoint:(CGPoint)point
{
  [(HKMinMaxCoordinate *)self min];
  UIDistanceBetweenPoints();
  v5 = v4;
  [(HKMinMaxCoordinate *)self max];
  UIDistanceBetweenPoints();
  if (v5 < result)
  {
    return v5;
  }

  return result;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point
{
  y = point.y;
  [(HKMinMaxCoordinate *)self min];
  v6 = v5;
  v7 = v5 - y;
  [(HKMinMaxCoordinate *)self max];
  result = v8 - y;
  if (vabdd_f64(v8, y) >= vabdd_f64(v6, y))
  {
    return v7;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = HKMinMaxCoordinate;
  v4 = [(HKMinMaxCoordinate *)&v9 description];
  v5 = NSStringFromCGPoint(self->_min);
  v6 = NSStringFromCGPoint(self->_max);
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@ { min(%@), max(%@} }"), v4, v5, v6;

  return v7;
}

- (BOOL)isVisibleInChartRect:(CGRect)rect
{
  v4.origin.x = self->_min.x;
  v4.origin.y = self->_min.y;
  v4.size.height = self->_max.y - v4.origin.y;
  v4.size.width = 1.0;
  return CGRectIntersectsRect(v4, rect);
}

- (CGPoint)min
{
  x = self->_min.x;
  y = self->_min.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)max
{
  x = self->_max.x;
  y = self->_max.y;
  result.y = y;
  result.x = x;
  return result;
}

@end