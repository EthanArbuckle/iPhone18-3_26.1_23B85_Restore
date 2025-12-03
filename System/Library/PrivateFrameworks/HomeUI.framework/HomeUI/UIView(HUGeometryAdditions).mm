@interface UIView(HUGeometryAdditions)
- (double)hu_centerInGlobalCoordinateSpace;
- (double)hu_frameInGlobalCoordinateSpace;
@end

@implementation UIView(HUGeometryAdditions)

- (double)hu_centerInGlobalCoordinateSpace
{
  [self center];

  return HUConvertPointToGlobalCoordinateSpace(self, v2, v3);
}

- (double)hu_frameInGlobalCoordinateSpace
{
  [self frame];

  return HUConvertRectToGlobalCoordinateSpace(self, v2, v3, v4, v5);
}

@end