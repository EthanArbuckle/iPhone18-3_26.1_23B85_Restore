@interface NUAssertionPolicyCrashReport
- (void)notifyAssertion:(id)assertion;
@end

@implementation NUAssertionPolicyCrashReport

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([assertionCopy isFatal])
  {
    v3 = MEMORY[0x1E696AEC0];
    prettyMethodName = [assertionCopy prettyMethodName];
    fileName = [assertionCopy fileName];
    lineNumber = [assertionCopy lineNumber];
    message = [assertionCopy message];
    currentlyExecutingJobName = [assertionCopy currentlyExecutingJobName];
    v9 = [v3 stringWithFormat:@"Assertion failure in %@, %@:%ld\n%@\n%@", prettyMethodName, fileName, lineNumber, message, currentlyExecutingJobName];

    qword_1EBE0C590 = [v9 UTF8String];
  }
}

@end