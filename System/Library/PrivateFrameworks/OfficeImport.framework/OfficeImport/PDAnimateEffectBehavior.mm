@interface PDAnimateEffectBehavior
- (PDAnimateEffectBehavior)init;
@end

@implementation PDAnimateEffectBehavior

- (PDAnimateEffectBehavior)init
{
  v6.receiver = self;
  v6.super_class = PDAnimateEffectBehavior;
  v2 = [(PDAnimateBehavior *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mPropertyMap = v2->mPropertyMap;
    v2->mPropertyMap = v3;
  }

  return v2;
}

@end