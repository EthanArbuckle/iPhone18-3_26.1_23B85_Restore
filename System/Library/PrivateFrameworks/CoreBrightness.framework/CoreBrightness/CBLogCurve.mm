@interface CBLogCurve
+ (id)curveWithBase:(float)a3;
- (float)interpolateProgress:(float)a3 from:(float)a4 toEnd:(float)a5;
@end

@implementation CBLogCurve

+ (id)curveWithBase:(float)a3
{
  v3 = [CBLogCurve alloc];
  *&v4 = a3;
  return [(CBLogCurve *)v3 initWithBase:v4];
}

- (float)interpolateProgress:(float)a3 from:(float)a4 toEnd:(float)a5
{
  v9 = clamp(a3, 0.0, 1.0);
  v8 = log_base(self->_base, a4);
  v5 = log_base(self->_base, a5);
  v10 = linear_interpolation(v9, 0.0, v8, 1.0, v5);
  base = self->_base;

  return powf(base, v10);
}

@end