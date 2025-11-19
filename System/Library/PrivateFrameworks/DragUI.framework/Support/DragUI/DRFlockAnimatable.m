@interface DRFlockAnimatable
+ (id)animationBlock:(id)a3;
@end

@implementation DRFlockAnimatable

+ (id)animationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setAnimationBlock:v3];

  return v4;
}

@end