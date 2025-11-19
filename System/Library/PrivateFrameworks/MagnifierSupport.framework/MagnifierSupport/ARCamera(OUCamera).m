@interface ARCamera(OUCamera)
- (double)pose;
@end

@implementation ARCamera(OUCamera)

- (double)pose
{
  [a1 transform];

  return RenderPoseToVisionPose(v1);
}

@end