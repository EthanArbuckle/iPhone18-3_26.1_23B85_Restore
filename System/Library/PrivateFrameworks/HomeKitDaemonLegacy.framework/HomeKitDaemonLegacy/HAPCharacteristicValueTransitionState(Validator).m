@interface HAPCharacteristicValueTransitionState(Validator)
- (uint64_t)isValid;
@end

@implementation HAPCharacteristicValueTransitionState(Validator)

- (uint64_t)isValid
{
  v2 = [a1 activeTransitionContexts];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 activeTransitionContexts];
  v4 = [v3 na_allObjectsPassTest:&__block_literal_global_157193];

  return v4;
}

@end