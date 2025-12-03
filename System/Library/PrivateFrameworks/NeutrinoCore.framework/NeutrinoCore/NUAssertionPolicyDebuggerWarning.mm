@interface NUAssertionPolicyDebuggerWarning
- (void)notifyAssertion:(id)assertion;
@end

@implementation NUAssertionPolicyDebuggerWarning

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (+[NUUtilities runningUnderDebugger])
  {
    if ([assertionCopy isWarning])
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [standardUserDefaults BOOLForKey:@"__skipWarningAssertions"];

      if ((v4 & 1) == 0)
      {
        raise(2);
      }
    }
  }
}

@end