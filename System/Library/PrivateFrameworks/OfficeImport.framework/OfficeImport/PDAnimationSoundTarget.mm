@interface PDAnimationSoundTarget
- (PDAnimationSoundTarget)init;
@end

@implementation PDAnimationSoundTarget

- (PDAnimationSoundTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationSoundTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

@end