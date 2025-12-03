@interface HAPCharacteristicValueActiveTransitionContext(Validator)
- (BOOL)isValid;
@end

@implementation HAPCharacteristicValueActiveTransitionContext(Validator)

- (BOOL)isValid
{
  hAPInstanceID = [self HAPInstanceID];
  if (hAPInstanceID)
  {
    timeElapsedSinceStart = [self timeElapsedSinceStart];
    v4 = timeElapsedSinceStart != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end