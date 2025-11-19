@interface _HKBloodPressureMinMaxCoordinate
- (CGPoint)avg;
- (_HKBloodPressureMinMaxCoordinate)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5;
- (_HKBloodPressureMinMaxCoordinate)initWithMin:(CGPoint)a3 max:(CGPoint)a4 avg:(CGPoint)a5 userInfo:(id)a6;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation _HKBloodPressureMinMaxCoordinate

- (_HKBloodPressureMinMaxCoordinate)initWithMin:(CGPoint)a3 max:(CGPoint)a4 avg:(CGPoint)a5 userInfo:(id)a6
{
  y = a5.y;
  x = a5.x;
  v9.receiver = self;
  v9.super_class = _HKBloodPressureMinMaxCoordinate;
  result = [(HKMinMaxCoordinate *)&v9 initWithMin:a6 max:a3.x userInfo:a3.y, a4.x, a4.y];
  if (result)
  {
    result->_avg.x = x;
    result->_avg.y = y;
  }

  return result;
}

- (_HKBloodPressureMinMaxCoordinate)initWithChartPoint:(id)a3 xAxisTransform:(id)a4 yAxisTransform:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _HKBloodPressureMinMaxCoordinate;
  v11 = [(HKMinMaxCoordinate *)&v18 initWithChartPoint:v8 xAxisTransform:v9 yAxisTransform:v10];
  if (v11)
  {
    v12 = [v8 yValueForKey:@"avg"];
    if (v12)
    {
      v13 = [v8 xValueAsGenericType];
      [v9 coordinateForValue:v13];
      v15 = v14;

      [v10 coordinateForValue:v12];
      v11->_avg.x = v15;
      v11->_avg.y = v16;
    }
  }

  return v11;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  v7 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->_avg.y), *&a3->a, self->_avg.x));
  v8 = v7.f64[1];
  if (a4)
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
  v11 = *&a3->c;
  v15[0] = *&a3->a;
  v15[1] = v11;
  v15[2] = *&a3->tx;
  result = [(HKMinMaxCoordinate *)&v16 copyWithTransform:v15 roundToViewScale:v4, *&v13];
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