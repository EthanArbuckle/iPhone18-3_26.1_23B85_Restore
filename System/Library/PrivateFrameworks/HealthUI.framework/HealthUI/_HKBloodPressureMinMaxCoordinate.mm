@interface _HKBloodPressureMinMaxCoordinate
- (CGPoint)avg;
- (_HKBloodPressureMinMaxCoordinate)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform;
- (_HKBloodPressureMinMaxCoordinate)initWithMin:(CGPoint)min max:(CGPoint)max avg:(CGPoint)avg userInfo:(id)info;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation _HKBloodPressureMinMaxCoordinate

- (_HKBloodPressureMinMaxCoordinate)initWithMin:(CGPoint)min max:(CGPoint)max avg:(CGPoint)avg userInfo:(id)info
{
  y = avg.y;
  x = avg.x;
  v9.receiver = self;
  v9.super_class = _HKBloodPressureMinMaxCoordinate;
  result = [(HKMinMaxCoordinate *)&v9 initWithMin:info max:min.x userInfo:min.y, max.x, max.y];
  if (result)
  {
    result->_avg.x = x;
    result->_avg.y = y;
  }

  return result;
}

- (_HKBloodPressureMinMaxCoordinate)initWithChartPoint:(id)point xAxisTransform:(id)transform yAxisTransform:(id)axisTransform
{
  pointCopy = point;
  transformCopy = transform;
  axisTransformCopy = axisTransform;
  v18.receiver = self;
  v18.super_class = _HKBloodPressureMinMaxCoordinate;
  v11 = [(HKMinMaxCoordinate *)&v18 initWithChartPoint:pointCopy xAxisTransform:transformCopy yAxisTransform:axisTransformCopy];
  if (v11)
  {
    v12 = [pointCopy yValueForKey:@"avg"];
    if (v12)
    {
      xValueAsGenericType = [pointCopy xValueAsGenericType];
      [transformCopy coordinateForValue:xValueAsGenericType];
      v15 = v14;

      [axisTransformCopy coordinateForValue:v12];
      v11->_avg.x = v15;
      v11->_avg.y = v16;
    }
  }

  return v11;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  v7 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->_avg.y), *&transform->a, self->_avg.x));
  v8 = v7.f64[1];
  if (scale)
  {
    v9.f64[0] = HKUIFloorCGPointToScreenScale(v7.f64[0], v7.f64[1]);
    v13 = v9;
    v8 = v10;
  }

  else
  {
    v13 = v7;
  }

  v16.receiver = self;
  v16.super_class = _HKBloodPressureMinMaxCoordinate;
  v11 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v11;
  v15[2] = *&transform->tx;
  result = [(HKMinMaxCoordinate *)&v16 copyWithTransform:v15 roundToViewScale:scaleCopy, *&v13];
  *(result + 6) = v14;
  *(result + 7) = v8;
  return result;
}

- (CGPoint)avg
{
  x = self->_avg.x;
  y = self->_avg.y;
  result.y = y;
  result.x = x;
  return result;
}

@end