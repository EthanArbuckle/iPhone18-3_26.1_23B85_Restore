@interface OADQuarterEllipseToPathElement
- (OADQuarterEllipseToPathElement)initWithToPoint:(OADAdjustPoint)a3 startsVertical:(BOOL)a4;
@end

@implementation OADQuarterEllipseToPathElement

- (OADQuarterEllipseToPathElement)initWithToPoint:(OADAdjustPoint)a3 startsVertical:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = OADQuarterEllipseToPathElement;
  result = [(OADToPointPathElement *)&v6 initWithToPoint:*&a3.x, *&a3.y];
  if (result)
  {
    *(&result->super.mRelative + 1) = a4;
  }

  return result;
}

@end