@interface HAPCharacteristicValueActiveTransitionContext(Validator)
- (BOOL)isValid;
@end

@implementation HAPCharacteristicValueActiveTransitionContext(Validator)

- (BOOL)isValid
{
  v2 = [a1 HAPInstanceID];
  if (v2)
  {
    v3 = [a1 timeElapsedSinceStart];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end