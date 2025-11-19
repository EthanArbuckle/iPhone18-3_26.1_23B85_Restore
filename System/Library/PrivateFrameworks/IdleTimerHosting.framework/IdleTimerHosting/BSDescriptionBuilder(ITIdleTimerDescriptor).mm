@interface BSDescriptionBuilder(ITIdleTimerDescriptor)
- (void)itidletimerdescriptor_appendTimeInterval:()ITIdleTimerDescriptor withName:;
@end

@implementation BSDescriptionBuilder(ITIdleTimerDescriptor)

- (void)itidletimerdescriptor_appendTimeInterval:()ITIdleTimerDescriptor withName:
{
  v7 = a4;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v6 = [a1 appendTimeInterval:v7 withName:0 decomposeUnits:a2];
  }
}

@end