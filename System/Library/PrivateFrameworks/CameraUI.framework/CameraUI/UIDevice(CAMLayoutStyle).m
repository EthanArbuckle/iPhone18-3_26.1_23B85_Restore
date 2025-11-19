@interface UIDevice(CAMLayoutStyle)
- (uint64_t)cam_initialLayoutStyle;
@end

@implementation UIDevice(CAMLayoutStyle)

- (uint64_t)cam_initialLayoutStyle
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v7 = CAMInitialLayoutStyle([a1 userInterfaceIdiom], v3, v4, v5, v6);

  return v7;
}

@end