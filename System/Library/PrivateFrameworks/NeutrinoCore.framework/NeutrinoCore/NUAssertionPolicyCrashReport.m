@interface NUAssertionPolicyCrashReport
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyCrashReport

- (void)notifyAssertion:(id)a3
{
  v10 = a3;
  if ([v10 isFatal])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [v10 prettyMethodName];
    v5 = [v10 fileName];
    v6 = [v10 lineNumber];
    v7 = [v10 message];
    v8 = [v10 currentlyExecutingJobName];
    v9 = [v3 stringWithFormat:@"Assertion failure in %@, %@:%ld\n%@\n%@", v4, v5, v6, v7, v8];

    qword_1EBE0C590 = [v9 UTF8String];
  }
}

@end