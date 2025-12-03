@interface ARCamera(OUCamera)
- (double)pose;
@end

@implementation ARCamera(OUCamera)

- (double)pose
{
  [self transform];

  return RenderPoseToVisionPose(v1);
}

@end