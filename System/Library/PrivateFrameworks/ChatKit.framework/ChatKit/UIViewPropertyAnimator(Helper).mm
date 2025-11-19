@interface UIViewPropertyAnimator(Helper)
+ (id)ck_viewPropertyAnimatorWithMass:()Helper stiffness:damping:initialVelocity:;
@end

@implementation UIViewPropertyAnimator(Helper)

+ (id)ck_viewPropertyAnimatorWithMass:()Helper stiffness:damping:initialVelocity:
{
  v7 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:a2 stiffness:a3 damping:a4 initialVelocity:{a5, a6}];
  v8 = [[a1 alloc] initWithDuration:v7 timingParameters:0.0];

  return v8;
}

@end