@interface UIGestureRecognizer(HUGeometryAdditions)
- (double)hu_locationInGlobalCoordinateSpace;
@end

@implementation UIGestureRecognizer(HUGeometryAdditions)

- (double)hu_locationInGlobalCoordinateSpace
{
  view = [self view];
  [self locationInView:view];
  v4 = v3;
  v6 = v5;
  view2 = [self view];
  v8 = HUConvertPointToGlobalCoordinateSpace(view2, v4, v6);

  return v8;
}

@end