@interface CLKUISlopedPoint
- (CGPoint)point;
- (CGVector)tangent;
- (CLKUISlopedPoint)init;
- (CLKUISlopedPoint)initWithPoint:(CGPoint)point tangent:(CGVector)tangent;
@end

@implementation CLKUISlopedPoint

- (CGPoint)point
{
  v2 = sub_1E49F9420(self, a2, &OBJC_IVAR___CLKUISlopedPoint_point);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGVector)tangent
{
  v2 = sub_1E49F9420(self, a2, &OBJC_IVAR___CLKUISlopedPoint_tangent);
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CLKUISlopedPoint)initWithPoint:(CGPoint)point tangent:(CGVector)tangent
{
  dy = tangent.dy;
  dx = tangent.dx;
  y = point.y;
  x = point.x;
  ObjectType = swift_getObjectType();
  v10 = (self + OBJC_IVAR___CLKUISlopedPoint_point);
  *v10 = x;
  v10[1] = y;
  v11 = (self + OBJC_IVAR___CLKUISlopedPoint_tangent);
  *v11 = dx;
  v11[1] = dy;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(CLKUISlopedPoint *)&v13 init];
}

- (CLKUISlopedPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end