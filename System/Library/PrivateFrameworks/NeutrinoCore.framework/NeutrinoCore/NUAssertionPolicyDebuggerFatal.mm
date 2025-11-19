@interface NUAssertionPolicyDebuggerFatal
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyDebuggerFatal

- (void)notifyAssertion:(id)a3
{
  v3 = a3;
  if (+[NUUtilities runningUnderDebugger](NUUtilities, "runningUnderDebugger") && [v3 isFatal])
  {
    raise(2);
  }
}

@end