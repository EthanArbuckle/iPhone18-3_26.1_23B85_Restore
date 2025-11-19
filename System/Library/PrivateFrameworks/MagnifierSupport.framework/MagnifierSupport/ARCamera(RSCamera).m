@interface ARCamera(RSCamera)
- (double)pose;
@end

@implementation ARCamera(RSCamera)

- (double)pose
{
  [a1 transform];

  return RenderPoseToVisionPose(v1);
}

@end