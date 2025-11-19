@interface CBBezierCurve
- (CBBezierCurve)initWithAnchors:(id)a3;
- (float)interpolateProgress:(float)a3 from:(float)a4 toEnd:(float)a5;
@end

@implementation CBBezierCurve

- (CBBezierCurve)initWithAnchors:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBBezierCurve;
  v9 = [(CBBezierCurve *)&v6 init];
  for (i = 0; i < 3; ++i)
  {
    [objc_msgSend(v7 objectAtIndexedSubscript:{i), "floatValue"}];
    v9->bezierAnchors[i] = v3;
  }

  return v9;
}

- (float)interpolateProgress:(float)a3 from:(float)a4 toEnd:(float)a5
{
  v9 = self->bezierAnchors[0];
  v8 = self->bezierAnchors[1];
  v7 = self->bezierAnchors[2];
  v6 = clamp(a3, 0.0, 1.0);
  return a4 + (clamp(((v6 * (1.0 - v6)) * ((((6.0 * (v6 * (1.0 - v6))) * v8) + ((4.0 * ((1.0 - v6) * (1.0 - v6))) * v9)) + ((4.0 * (v6 * v6)) * v7))) + ((v6 * v6) * (v6 * v6)), 0.0, 1.0) * (a5 - a4));
}

@end