@interface PDAnimationTarget
- (id)description;
@end

@implementation PDAnimationTarget

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDAnimationTarget;
  v2 = [(PDAnimationTarget *)&v4 description];

  return v2;
}

@end