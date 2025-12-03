@interface FCPairNonRetainedSecond
- (void)p_SetSecond:(id)second;
@end

@implementation FCPairNonRetainedSecond

- (void)p_SetSecond:(id)second
{
  secondCopy = second;
  mSecond = self->super.mSecond;
  p_mSecond = &self->super.mSecond;
  if (mSecond != secondCopy)
  {
    v8 = secondCopy;
    objc_storeStrong(p_mSecond, second);
    secondCopy = v8;
  }
}

@end