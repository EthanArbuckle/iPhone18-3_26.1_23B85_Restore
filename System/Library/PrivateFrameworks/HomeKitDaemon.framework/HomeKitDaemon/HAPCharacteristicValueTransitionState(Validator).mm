@interface HAPCharacteristicValueTransitionState(Validator)
- (uint64_t)isValid;
@end

@implementation HAPCharacteristicValueTransitionState(Validator)

- (uint64_t)isValid
{
  activeTransitionContexts = [self activeTransitionContexts];

  if (!activeTransitionContexts)
  {
    return 0;
  }

  activeTransitionContexts2 = [self activeTransitionContexts];
  v4 = [activeTransitionContexts2 na_allObjectsPassTest:&__block_literal_global_234099];

  return v4;
}

@end