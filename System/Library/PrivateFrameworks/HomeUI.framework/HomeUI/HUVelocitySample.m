@interface HUVelocitySample
+ (id)sampleWithStart:(CGPoint)a3 end:(CGPoint)a4 startTime:(double)a5 endTime:(double)a6;
- (CGPoint)end;
- (CGPoint)start;
- (CGVector)translation;
- (CGVector)velocity;
@end

@implementation HUVelocitySample

+ (id)sampleWithStart:(CGPoint)a3 end:(CGPoint)a4 startTime:(double)a5 endTime:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = objc_opt_new();
  [v12 setStart:{v11, v10}];
  [v12 setEnd:{x, y}];
  [v12 setStartTime:a5];
  [v12 setEndTime:a6];

  return v12;
}

- (CGVector)translation
{
  v2 = vsubq_f64(self->_end, self->_start);
  v3 = v2.f64[1];
  result.dx = v2.f64[0];
  result.dy = v3;
  return result;
}

- (CGVector)velocity
{
  [(HUVelocitySample *)self dt];
  v3 = 0.0;
  v4 = 0.0;
  if (v5 >= 0.00000011920929)
  {
    [(HUVelocitySample *)self translation];
    v7 = v6;
    [(HUVelocitySample *)self dt];
    v3 = v7 / v8;
    [(HUVelocitySample *)self translation];
    v10 = v9;
    [(HUVelocitySample *)self dt];
    v4 = v10 / v11;
  }

  v12 = v3;
  result.dy = v4;
  result.dx = v12;
  return result;
}

- (CGPoint)start
{
  x = self->_start.x;
  y = self->_start.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)end
{
  x = self->_end.x;
  y = self->_end.y;
  result.y = y;
  result.x = x;
  return result;
}

@end