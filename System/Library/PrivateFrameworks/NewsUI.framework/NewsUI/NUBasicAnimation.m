@interface NUBasicAnimation
+ (id)animationWithKeyPath:(id)a3;
@end

@implementation NUBasicAnimation

+ (id)animationWithKeyPath:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NUBasicAnimation;
  v3 = objc_msgSendSuper2(&v5, sel_animationWithKeyPath_, a3);
  [v3 setDelegate:v3];

  return v3;
}

@end