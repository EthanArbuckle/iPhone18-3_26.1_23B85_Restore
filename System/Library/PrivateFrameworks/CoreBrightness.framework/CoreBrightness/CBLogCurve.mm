@interface CBLogCurve
+ (id)curveWithBase:(float)base;
- (float)interpolateProgress:(float)progress from:(float)from toEnd:(float)end;
@end

@implementation CBLogCurve

+ (id)curveWithBase:(float)base
{
  v3 = [CBLogCurve alloc];
  *&v4 = base;
  return [(CBLogCurve *)v3 initWithBase:v4];
}

- (float)interpolateProgress:(float)progress from:(float)from toEnd:(float)end
{
  v9 = clamp(progress, 0.0, 1.0);
  v8 = log_base(self->_base, from);
  v5 = log_base(self->_base, end);
  v10 = linear_interpolation(v9, 0.0, v8, 1.0, v5);
  base = self->_base;

  return powf(base, v10);
}

@end