@interface NUAssertionPolicyDebuggerWarning
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyDebuggerWarning

- (void)notifyAssertion:(id)a3
{
  v5 = a3;
  if (+[NUUtilities runningUnderDebugger])
  {
    if ([v5 isWarning])
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [v3 BOOLForKey:@"__skipWarningAssertions"];

      if ((v4 & 1) == 0)
      {
        raise(2);
      }
    }
  }
}

@end