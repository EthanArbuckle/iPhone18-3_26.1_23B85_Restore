@interface HKMinMaxCoordinate
- (BOOL)isVisibleInChartRect:(CGRect)a3;
- (CGPoint)max;
- (CGPoint)min;
- (HKMinMaxCoordinate)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5;
- (HKMinMaxCoordinate)initWithMin:(CGPoint)a3 max:(CGPoint)a4 userInfo:(id)a5;
- (NSString)description;
- (double)distanceToPoint:(CGPoint)a3;
- (double)yAxisDifferenceToPoint:(CGPoint)a3;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKMinMaxCoordinate

- (HKMinMaxCoordinate)initWithMin:(CGPoint)a3 max:(CGPoint)a4 userInfo:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = a5;
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
    objc_storeStrong(&v12->_userInfo, a5);
  }

  return v13;
}

- (HKMinMaxCoordinate)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 xValueAsGenericType];
  [v9 coordinateForValue:v11];
  v13 = v12;

  v14 = [v10 minYValue];
  [v8 coordinateForValue:v14];
  v16 = v15;

  v17 = [v10 maxYValue];
  [v8 coordinateForValue:v17];
  v19 = v18;

  v20 = [v10 userInfo];

  v21 = [(HKMinMaxCoordinate *)self initWithMin:v20 max:v13 userInfo:v16, v13, v19];
  return v21;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  x = self->_min.x;
  y = self->_min.y;
  b = a3->b;
  c = a3->c;
  d = a3->d;
  tx = a3->tx;
  ty = a3->ty;
  v12 = tx + y * c + a3->a * x;
  v13 = ty + y * d + b * x;
  v14 = self->_max.x;
  v15 = self->_max.y;
  v16 = tx + c * v15 + a3->a * v14;
  v17 = ty + d * v15 + b * v14;
  if (a4)
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

- (double)distanceToPoint:(CGPoint)a3
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

- (double)yAxisDifferenceToPoint:(CGPoint)a3
{
  y = a3.y;
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

- (BOOL)isVisibleInChartRect:(CGRect)a3
{
  v4.origin.x = self->_min.x;
  v4.origin.y = self->_min.y;
  v4.size.height = self->_max.y - v4.origin.y;
  v4.size.width = 1.0;
  return CGRectIntersectsRect(v4, a3);
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