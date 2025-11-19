@interface _HDAlertSuppressorAssertion
- (void)setKeepaliveTimer:(uint64_t)a1;
@end

@implementation _HDAlertSuppressorAssertion

- (void)setKeepaliveTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

@end