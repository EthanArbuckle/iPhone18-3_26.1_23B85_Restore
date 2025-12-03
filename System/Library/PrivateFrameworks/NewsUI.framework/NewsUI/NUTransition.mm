@interface NUTransition
+ (id)animation;
@end

@implementation NUTransition

+ (id)animation
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NUTransition;
  v2 = objc_msgSendSuper2(&v4, sel_animation);
  [v2 setDelegate:v2];

  return v2;
}

@end