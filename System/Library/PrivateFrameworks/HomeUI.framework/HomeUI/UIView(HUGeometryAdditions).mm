@interface UIView(HUGeometryAdditions)
- (double)hu_centerInGlobalCoordinateSpace;
- (double)hu_frameInGlobalCoordinateSpace;
@end

@implementation UIView(HUGeometryAdditions)

- (double)hu_centerInGlobalCoordinateSpace
{
  [a1 center];

  return HUConvertPointToGlobalCoordinateSpace(a1, v2, v3);
}

- (double)hu_frameInGlobalCoordinateSpace
{
  [a1 frame];

  return HUConvertRectToGlobalCoordinateSpace(a1, v2, v3, v4, v5);
}

@end