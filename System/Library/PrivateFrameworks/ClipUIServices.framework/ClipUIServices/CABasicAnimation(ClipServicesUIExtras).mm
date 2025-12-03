@interface CABasicAnimation(ClipServicesUIExtras)
+ (id)cps_animationForKeyPath:()ClipServicesUIExtras from:to:beginAfter:duration:keepFinalFrame:;
@end

@implementation CABasicAnimation(ClipServicesUIExtras)

+ (id)cps_animationForKeyPath:()ClipServicesUIExtras from:to:beginAfter:duration:keepFinalFrame:
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [objc_opt_class() animationWithKeyPath:v15];

  [v16 setFromValue:v14];
  [v16 setToValue:v13];

  [v16 setAdditive:0];
  [v16 setRemovedOnCompletion:0];
  v17 = MEMORY[0x277CDA238];
  if (!a8)
  {
    v17 = MEMORY[0x277CDA228];
  }

  [v16 setFillMode:*v17];
  [v16 setBeginTime:CACurrentMediaTime() + self];
  [v16 setDuration:a2];

  return v16;
}

@end