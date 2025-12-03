@interface UIDevice(CAMLayoutStyle)
- (uint64_t)cam_initialLayoutStyle;
@end

@implementation UIDevice(CAMLayoutStyle)

- (uint64_t)cam_initialLayoutStyle
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  v7 = CAMInitialLayoutStyle([self userInterfaceIdiom], v3, v4, v5, v6);

  return v7;
}

@end