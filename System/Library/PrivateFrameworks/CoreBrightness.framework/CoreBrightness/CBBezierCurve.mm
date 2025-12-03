@interface CBBezierCurve
- (CBBezierCurve)initWithAnchors:(id)anchors;
- (float)interpolateProgress:(float)progress from:(float)from toEnd:(float)end;
@end

@implementation CBBezierCurve

- (CBBezierCurve)initWithAnchors:(id)anchors
{
  selfCopy = self;
  v8 = a2;
  anchorsCopy = anchors;
  v6.receiver = self;
  v6.super_class = CBBezierCurve;
  selfCopy = [(CBBezierCurve *)&v6 init];
  for (i = 0; i < 3; ++i)
  {
    [objc_msgSend(anchorsCopy objectAtIndexedSubscript:{i), "floatValue"}];
    selfCopy->bezierAnchors[i] = v3;
  }

  return selfCopy;
}

- (float)interpolateProgress:(float)progress from:(float)from toEnd:(float)end
{
  v9 = self->bezierAnchors[0];
  v8 = self->bezierAnchors[1];
  v7 = self->bezierAnchors[2];
  v6 = clamp(progress, 0.0, 1.0);
  return from + (clamp(((v6 * (1.0 - v6)) * ((((6.0 * (v6 * (1.0 - v6))) * v8) + ((4.0 * ((1.0 - v6) * (1.0 - v6))) * v9)) + ((4.0 * (v6 * v6)) * v7))) + ((v6 * v6) * (v6 * v6)), 0.0, 1.0) * (end - from));
}

@end