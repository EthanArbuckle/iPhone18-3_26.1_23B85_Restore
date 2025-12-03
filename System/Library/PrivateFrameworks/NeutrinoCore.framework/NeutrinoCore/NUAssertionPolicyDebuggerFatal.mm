@interface NUAssertionPolicyDebuggerFatal
- (void)notifyAssertion:(id)assertion;
@end

@implementation NUAssertionPolicyDebuggerFatal

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (+[NUUtilities runningUnderDebugger](NUUtilities, "runningUnderDebugger") && [assertionCopy isFatal])
  {
    raise(2);
  }
}

@end