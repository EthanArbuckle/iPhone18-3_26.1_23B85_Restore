@interface ARCamera(RSCamera)
- (double)pose;
@end

@implementation ARCamera(RSCamera)

- (double)pose
{
  [self transform];

  return RenderPoseToVisionPose(v1);
}

@end