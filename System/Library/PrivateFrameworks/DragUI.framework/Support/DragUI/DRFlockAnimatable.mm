@interface DRFlockAnimatable
+ (id)animationBlock:(id)block;
@end

@implementation DRFlockAnimatable

+ (id)animationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setAnimationBlock:blockCopy];

  return v4;
}

@end