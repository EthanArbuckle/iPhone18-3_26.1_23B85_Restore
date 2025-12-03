@interface NUBasicAnimation
+ (id)animationWithKeyPath:(id)path;
@end

@implementation NUBasicAnimation

+ (id)animationWithKeyPath:(id)path
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NUBasicAnimation;
  v3 = objc_msgSendSuper2(&v5, sel_animationWithKeyPath_, path);
  [v3 setDelegate:v3];

  return v3;
}

@end