@interface OADQuarterEllipseToPathElement
- (OADQuarterEllipseToPathElement)initWithToPoint:(OADAdjustPoint)point startsVertical:(BOOL)vertical;
@end

@implementation OADQuarterEllipseToPathElement

- (OADQuarterEllipseToPathElement)initWithToPoint:(OADAdjustPoint)point startsVertical:(BOOL)vertical
{
  v6.receiver = self;
  v6.super_class = OADQuarterEllipseToPathElement;
  result = [(OADToPointPathElement *)&v6 initWithToPoint:*&point.x, *&point.y];
  if (result)
  {
    *(&result->super.mRelative + 1) = vertical;
  }

  return result;
}

@end