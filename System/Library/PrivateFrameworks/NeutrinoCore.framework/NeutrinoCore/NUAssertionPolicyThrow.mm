@interface NUAssertionPolicyThrow
- (void)notifyAssertion:(id)a3;
@end

@implementation NUAssertionPolicyThrow

- (void)notifyAssertion:(id)a3
{
  v10 = a3;
  if ([v10 isFatal])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = [v10 prettyMethodName];
    v6 = [v10 fileName];
    v7 = [v10 lineNumber];
    v8 = [v10 message];
    v9 = [v10 currentlyExecutingJobName];
    [v3 raise:v4 format:{@"Assertion failure in %@, %@:%ld: %@ %@", v5, v6, v7, v8, v9}];
  }
}

@end