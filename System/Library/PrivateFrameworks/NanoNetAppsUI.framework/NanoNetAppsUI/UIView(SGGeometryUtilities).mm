@interface UIView(SGGeometryUtilities)
- (uint64_t)SG_setBoundsAndPositionFromFrame:()SGGeometryUtilities;
@end

@implementation UIView(SGGeometryUtilities)

- (uint64_t)SG_setBoundsAndPositionFromFrame:()SGGeometryUtilities
{
  [a1 bounds];
  [a1 setBounds:?];
  v10 = [a1 layer];
  [v10 anchorPoint];
  v12 = v11;
  v14 = v13;

  return [a1 setCenter:{a2 + v12 * a4, a3 + v14 * a5}];
}

@end