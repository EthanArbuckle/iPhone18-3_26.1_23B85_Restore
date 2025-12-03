@interface _HDAlertSuppressorAssertion
- (void)setKeepaliveTimer:(uint64_t)timer;
@end

@implementation _HDAlertSuppressorAssertion

- (void)setKeepaliveTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 96), a2);
  }
}

@end