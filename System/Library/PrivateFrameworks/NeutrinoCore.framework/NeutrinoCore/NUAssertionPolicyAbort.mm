@interface NUAssertionPolicyAbort
- (void)notifyAssertion:(id)assertion;
@end

@implementation NUAssertionPolicyAbort

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([assertionCopy isFatal])
  {
    abort();
  }
}

@end