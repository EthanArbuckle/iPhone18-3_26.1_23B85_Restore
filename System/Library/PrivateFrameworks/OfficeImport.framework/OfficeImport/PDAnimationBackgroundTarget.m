@interface PDAnimationBackgroundTarget
- (PDAnimationBackgroundTarget)init;
@end

@implementation PDAnimationBackgroundTarget

- (PDAnimationBackgroundTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationBackgroundTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

@end