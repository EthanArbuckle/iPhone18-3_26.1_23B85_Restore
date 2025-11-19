@interface CAMediaTimingFunction(HUAnimationAdditions)
+ (id)hu_functionWithAnimationCurve:()HUAnimationAdditions;
@end

@implementation CAMediaTimingFunction(HUAnimationAdditions)

+ (id)hu_functionWithAnimationCurve:()HUAnimationAdditions
{
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CD9EF8] functionWithName:{**(&unk_277DC0C58 + a3), v3}];
  }

  return v5;
}

@end