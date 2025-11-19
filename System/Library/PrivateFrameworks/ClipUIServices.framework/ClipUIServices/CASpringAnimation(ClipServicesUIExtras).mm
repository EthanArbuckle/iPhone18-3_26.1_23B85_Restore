@interface CASpringAnimation(ClipServicesUIExtras)
+ (id)cps_animationForKeyPath:()ClipServicesUIExtras from:to:beginAfter:duration:mass:stiffness:damping:keepFinalFrame:;
@end

@implementation CASpringAnimation(ClipServicesUIExtras)

+ (id)cps_animationForKeyPath:()ClipServicesUIExtras from:to:beginAfter:duration:mass:stiffness:damping:keepFinalFrame:
{
  v8 = [MEMORY[0x277CD9FA0] cps_animationForKeyPath:? from:? to:? beginAfter:? duration:? keepFinalFrame:?];
  [v8 setMass:a3];
  [v8 setStiffness:a4];
  [v8 setDamping:a5];

  return v8;
}

@end