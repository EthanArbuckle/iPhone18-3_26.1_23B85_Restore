@interface OITSUPairNonRetainedSecond
- (void)p_SetSecond:(id)second;
@end

@implementation OITSUPairNonRetainedSecond

- (void)p_SetSecond:(id)second
{
  if (self->super.mSecond != second)
  {
    self->super.mSecond = second;
  }
}

@end